.class public final Lcom/google/android/gms/internal/y;
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

    if-ne v2, v0, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    new-instance v0, Lcom/google/android/gms/internal/ds;

    aget-object v1, p2, v1

    instance-of v1, v1, Lcom/google/android/gms/internal/dw;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ds;-><init>(Ljava/lang/Boolean;)V

    return-object v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method