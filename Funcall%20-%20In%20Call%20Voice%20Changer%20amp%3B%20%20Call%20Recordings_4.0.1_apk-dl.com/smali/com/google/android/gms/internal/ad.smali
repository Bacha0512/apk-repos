.class public final Lcom/google/android/gms/internal/ad;
.super Lcom/google/android/gms/internal/zzcxq;


# instance fields
.field private final zzbIP:Lcom/google/android/gms/internal/zzcvy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzcvy;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcxq;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ad;->zzbIP:Lcom/google/android/gms/internal/zzcvy;

    return-void
.end method


# virtual methods
.method protected final varargs zza(Lcom/google/android/gms/internal/zzcwa;[Lcom/google/android/gms/internal/dp;)Lcom/google/android/gms/internal/dp;
    .locals 3
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

    const/4 v1, 0x0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    array-length v2, p2

    if-nez v2, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ad;->zzbIP:Lcom/google/android/gms/internal/zzcvy;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzcvy;->zzCy()Lcom/google/android/gms/internal/zzcut;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcut;->zzat(Z)V

    sget-object v0, Lcom/google/android/gms/internal/dv;->zzbLu:Lcom/google/android/gms/internal/dv;

    return-object v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
