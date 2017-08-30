.class public final Lcom/google/android/gms/internal/zzcxx;
.super Lcom/google/android/gms/internal/zzcxq;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcxq;-><init>()V

    return-void
.end method


# virtual methods
.method protected final varargs zza(Lcom/google/android/gms/internal/zzcwa;[Lcom/google/android/gms/internal/dp;)Lcom/google/android/gms/internal/dp;
    .locals 8
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

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    array-length v0, p2

    if-lez v0, :cond_1

    array-length v0, p2

    if-gt v0, v7, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    aget-object v0, p2, v2

    instance-of v0, v0, Lcom/google/android/gms/internal/dw;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    aget-object v0, p2, v2

    check-cast v0, Lcom/google/android/gms/internal/dw;

    array-length v2, p2

    if-ge v2, v6, :cond_2

    sget-object v1, Lcom/google/android/gms/internal/dv;->zzbLu:Lcom/google/android/gms/internal/dv;

    move-object v3, v1

    :goto_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/dw;->zzDs()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    array-length v5, p2

    if-ne v5, v7, :cond_0

    aget-object v2, p2, v6

    invoke-static {v2}, Lcom/google/android/gms/internal/zzcxp;->zzc(Lcom/google/android/gms/internal/dp;)D

    move-result-wide v6

    double-to-int v2, v6

    if-gez v2, :cond_3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    sub-int v2, v4, v2

    :cond_0
    :goto_2
    const/4 v5, -0x1

    move v4, v2

    :goto_3
    if-ltz v4, :cond_5

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/dw;->zzbH(I)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/dp;

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/zzcxp;->zzd(Lcom/google/android/gms/internal/dp;Lcom/google/android/gms/internal/dp;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v0, v4

    :goto_4
    new-instance v1, Lcom/google/android/gms/internal/dt;

    int-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/dt;-><init>(Ljava/lang/Double;)V

    return-object v1

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    aget-object v1, p2, v1

    move-object v3, v1

    goto :goto_1

    :cond_3
    add-int/lit8 v4, v4, -0x1

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_2

    :cond_4
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    :cond_5
    move v0, v5

    goto :goto_4
.end method
