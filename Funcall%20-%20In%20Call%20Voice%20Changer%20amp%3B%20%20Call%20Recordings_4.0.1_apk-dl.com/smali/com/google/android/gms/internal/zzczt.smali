.class public final Lcom/google/android/gms/internal/zzczt;
.super Lcom/google/android/gms/internal/zzcxq;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcxq;-><init>()V

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

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    array-length v2, p2

    if-gt v2, v0, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    array-length v0, p2

    if-gtz v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/dv;->zzbLu:Lcom/google/android/gms/internal/dv;

    :goto_1
    new-instance v1, Lcom/google/android/gms/internal/dv;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/dv;-><init>(Lcom/google/android/gms/internal/dp;)V

    return-object v1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    aget-object v0, p2, v1

    goto :goto_1
.end method
