.class public final Lcom/google/android/gms/internal/c;
.super Lcom/google/android/gms/internal/zzcxq;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcxq;-><init>()V

    return-void
.end method


# virtual methods
.method protected final varargs zza(Lcom/google/android/gms/internal/zzcwa;[Lcom/google/android/gms/internal/dp;)Lcom/google/android/gms/internal/dp;
    .locals 12
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

    const-wide/high16 v10, 0x7ff8000000000000L    # NaN

    const/4 v2, 0x0

    const/4 v1, 0x1

    const-wide/16 v8, 0x0

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    array-length v0, p2

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    aget-object v0, p2, v2

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcxp;->zzb(Lcom/google/android/gms/internal/dp;)D

    move-result-wide v4

    aget-object v0, p2, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcxp;->zzb(Lcom/google/android/gms/internal/dp;)D

    move-result-wide v6

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/dt;

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/dt;-><init>(Ljava/lang/Double;)V

    :goto_1
    return-object v0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    invoke-static {v4, v5}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_3

    cmpl-double v0, v6, v8

    if-eqz v0, :cond_4

    :cond_3
    cmpl-double v0, v4, v8

    if-nez v0, :cond_5

    invoke-static {v6, v7}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    new-instance v0, Lcom/google/android/gms/internal/dt;

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/dt;-><init>(Ljava/lang/Double;)V

    goto :goto_1

    :cond_5
    invoke-static {v4, v5}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {v6, v7}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_6
    invoke-static {v4, v5, v8, v9}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    int-to-double v4, v0

    cmpg-double v0, v4, v8

    if-gez v0, :cond_7

    move v0, v1

    :goto_2
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    int-to-double v4, v3

    cmpg-double v3, v4, v8

    if-gez v3, :cond_8

    :goto_3
    xor-int/2addr v0, v1

    if-eqz v0, :cond_9

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    :goto_4
    new-instance v2, Lcom/google/android/gms/internal/dt;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/dt;-><init>(Ljava/lang/Double;)V

    move-object v0, v2

    goto :goto_1

    :cond_7
    move v0, v2

    goto :goto_2

    :cond_8
    move v1, v2

    goto :goto_3

    :cond_9
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    goto :goto_4

    :cond_a
    new-instance v0, Lcom/google/android/gms/internal/dt;

    mul-double v2, v4, v6

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/dt;-><init>(Ljava/lang/Double;)V

    goto :goto_1
.end method
