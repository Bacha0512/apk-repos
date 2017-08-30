.class public final Lcom/google/android/gms/internal/av;
.super Lcom/google/android/gms/internal/zzcxq;


# instance fields
.field private final zzbKf:Lcom/google/android/gms/internal/zzcvy;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzcvy;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcxq;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/av;->zzbKf:Lcom/google/android/gms/internal/zzcvy;

    return-void
.end method


# virtual methods
.method protected final varargs zza(Lcom/google/android/gms/internal/zzcwa;[Lcom/google/android/gms/internal/dp;)Lcom/google/android/gms/internal/dp;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzcwa;",
            "[",
            "Lcom/google/android/gms/internal/dp",
            "<*>;)",
            "Lcom/google/android/gms/internal/dp",
            "<*>;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    array-length v1, p2

    if-nez v1, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/av;->zzbKf:Lcom/google/android/gms/internal/zzcvy;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzcvy;->zzCy()Lcom/google/android/gms/internal/zzcut;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcut;->zzCl()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ed;->zzQ(Ljava/lang/Object;)Lcom/google/android/gms/internal/dp;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
