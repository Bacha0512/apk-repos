.class public final Lcom/google/android/gms/internal/zzcxu;
.super Lcom/google/android/gms/internal/zzcxq;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcxq;-><init>()V

    return-void
.end method


# virtual methods
.method protected final varargs zza(Lcom/google/android/gms/internal/zzcwa;[Lcom/google/android/gms/internal/dp;)Lcom/google/android/gms/internal/dp;
    .locals 13
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

    const/4 v12, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    array-length v0, p2

    if-ne v0, v12, :cond_1

    move v0, v5

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    aget-object v0, p2, v6

    instance-of v0, v0, Lcom/google/android/gms/internal/dw;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    aget-object v0, p2, v5

    instance-of v0, v0, Lcom/google/android/gms/internal/du;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    aget-object v0, p2, v6

    check-cast v0, Lcom/google/android/gms/internal/dw;

    aget-object v1, p2, v5

    check-cast v1, Lcom/google/android/gms/internal/du;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dw;->zzDs()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    move v7, v6

    :goto_1
    if-ge v7, v8, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dw;->zzDs()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v7, v3, :cond_2

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/dw;->zzbH(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/du;->zzDp()Lcom/google/android/gms/internal/zzcxo;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/zzcxo;

    const/4 v4, 0x3

    new-array v9, v4, [Lcom/google/android/gms/internal/dp;

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/dp;

    aput-object v4, v9, v6

    new-instance v4, Lcom/google/android/gms/internal/dt;

    int-to-double v10, v7

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-direct {v4, v10}, Lcom/google/android/gms/internal/dt;-><init>(Ljava/lang/Double;)V

    aput-object v4, v9, v5

    aput-object v0, v9, v12

    invoke-interface {v3, p1, v9}, Lcom/google/android/gms/internal/zzcxo;->zzb(Lcom/google/android/gms/internal/zzcwa;[Lcom/google/android/gms/internal/dp;)Lcom/google/android/gms/internal/dp;

    :cond_0
    add-int/lit8 v3, v7, 0x1

    move v7, v3

    goto :goto_1

    :cond_1
    move v0, v6

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/google/android/gms/internal/dv;->zzbLu:Lcom/google/android/gms/internal/dv;

    return-object v0
.end method
