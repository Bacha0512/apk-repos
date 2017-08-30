.class public final Lcom/google/android/gms/internal/a;
.super Lcom/google/android/gms/internal/zzcxq;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcxq;-><init>()V

    return-void
.end method


# virtual methods
.method protected final varargs zza(Lcom/google/android/gms/internal/zzcwa;[Lcom/google/android/gms/internal/dp;)Lcom/google/android/gms/internal/dp;
    .locals 10
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

    array-length v0, p2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    const/4 v0, 0x0

    aget-object v0, p2, v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcxp;->zzb(Lcom/google/android/gms/internal/dp;)D

    move-result-wide v2

    const/4 v0, 0x1

    aget-object v0, p2, v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcxp;->zzb(Lcom/google/android/gms/internal/dp;)D

    move-result-wide v4

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/dt;

    const-wide/high16 v2, 0x7ff8000000000000L    # NaN

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/dt;-><init>(Ljava/lang/Double;)V

    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v4, v5}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/google/android/gms/internal/dt;

    const-wide/high16 v2, 0x7ff8000000000000L    # NaN

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/dt;-><init>(Ljava/lang/Double;)V

    goto :goto_1

    :cond_3
    const-wide/16 v0, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    int-to-double v0, v0

    const-wide/16 v6, 0x0

    cmpg-double v0, v0, v6

    if-gez v0, :cond_4

    const/4 v0, 0x1

    :goto_2
    const-wide/16 v6, 0x0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    int-to-double v6, v1

    const-wide/16 v8, 0x0

    cmpg-double v1, v6, v8

    if-gez v1, :cond_5

    const/4 v1, 0x1

    :goto_3
    xor-int/2addr v0, v1

    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {v4, v5}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v1

    if-nez v1, :cond_7

    if-eqz v0, :cond_6

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    :goto_4
    new-instance v2, Lcom/google/android/gms/internal/dt;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/dt;-><init>(Ljava/lang/Double;)V

    move-object v0, v2

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    goto :goto_3

    :cond_6
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    goto :goto_4

    :cond_7
    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-static {v4, v5}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v1

    if-eqz v1, :cond_9

    if-eqz v0, :cond_8

    const-wide/high16 v0, -0x8000000000000000L

    :goto_5
    new-instance v2, Lcom/google/android/gms/internal/dt;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/dt;-><init>(Ljava/lang/Double;)V

    move-object v0, v2

    goto :goto_1

    :cond_8
    const-wide/16 v0, 0x0

    goto :goto_5

    :cond_9
    const-wide/16 v6, 0x0

    cmpl-double v1, v2, v6

    if-nez v1, :cond_c

    const-wide/16 v2, 0x0

    cmpl-double v1, v4, v2

    if-nez v1, :cond_a

    new-instance v0, Lcom/google/android/gms/internal/dt;

    const-wide/high16 v2, 0x7ff8000000000000L    # NaN

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/dt;-><init>(Ljava/lang/Double;)V

    goto/16 :goto_1

    :cond_a
    if-eqz v0, :cond_b

    const-wide/high16 v0, -0x8000000000000000L

    :goto_6
    new-instance v2, Lcom/google/android/gms/internal/dt;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/dt;-><init>(Ljava/lang/Double;)V

    move-object v0, v2

    goto/16 :goto_1

    :cond_b
    const-wide/16 v0, 0x0

    goto :goto_6

    :cond_c
    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v1

    if-nez v1, :cond_e

    const-wide/16 v6, 0x0

    cmpl-double v1, v2, v6

    if-eqz v1, :cond_e

    const-wide/16 v6, 0x0

    cmpl-double v1, v4, v6

    if-nez v1, :cond_e

    if-eqz v0, :cond_d

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    :goto_7
    new-instance v2, Lcom/google/android/gms/internal/dt;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/dt;-><init>(Ljava/lang/Double;)V

    move-object v0, v2

    goto/16 :goto_1

    :cond_d
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    goto :goto_7

    :cond_e
    new-instance v0, Lcom/google/android/gms/internal/dt;

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/dt;-><init>(Ljava/lang/Double;)V

    goto/16 :goto_1
.end method
