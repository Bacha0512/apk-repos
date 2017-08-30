.class final Lcom/google/android/gms/internal/zzbmq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/ResultCallback",
        "<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbmn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 2

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "DriveContentsImpl"

    const-string v1, "Error discarding contents"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzbng;->zzz(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "DriveContentsImpl"

    const-string v1, "Contents discarded"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzbng;->zzx(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
