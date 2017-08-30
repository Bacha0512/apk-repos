.class public final Lcom/google/android/gms/internal/zzczi;
.super Lcom/google/android/gms/internal/zzcxq;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcxq;-><init>()V

    return-void
.end method


# virtual methods
.method protected final varargs zza(Lcom/google/android/gms/internal/zzcwa;[Lcom/google/android/gms/internal/dp;)Lcom/google/android/gms/internal/dp;
    .locals 7
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

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    array-length v5, p2

    move v3, v1

    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v6, p2, v3

    instance-of v0, v6, Lcom/google/android/gms/internal/dv;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/dv;->zzbLu:Lcom/google/android/gms/internal/dv;

    if-eq v6, v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/dv;->zzbLt:Lcom/google/android/gms/internal/dv;

    if-ne v6, v0, :cond_1

    :cond_0
    move v0, v2

    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/dw;

    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/dw;-><init>(Ljava/util/List;)V

    return-object v0
.end method
