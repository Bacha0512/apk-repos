.class public final Lcom/google/android/gms/internal/l;
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

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/16 v6, 0x0

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    array-length v0, p2

    if-lez v0, :cond_1

    array-length v0, p2

    if-gt v0, v11, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    aget-object v0, p2, v2

    instance-of v0, v0, Lcom/google/android/gms/internal/eb;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    aget-object v0, p2, v2

    check-cast v0, Lcom/google/android/gms/internal/eb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/eb;->value()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    array-length v3, p2

    if-ge v3, v10, :cond_2

    move-wide v4, v6

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    int-to-double v8, v1

    array-length v1, p2

    if-ne v1, v11, :cond_0

    aget-object v1, p2, v10

    sget-object v3, Lcom/google/android/gms/internal/dv;->zzbLu:Lcom/google/android/gms/internal/dv;

    if-eq v1, v3, :cond_0

    aget-object v1, p2, v10

    invoke-static {v1}, Lcom/google/android/gms/internal/zzcxp;->zzc(Lcom/google/android/gms/internal/dp;)D

    move-result-wide v8

    :cond_0
    cmpg-double v1, v4, v6

    if-gez v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    int-to-double v10, v1

    add-double/2addr v4, v10

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    double-to-int v1, v4

    move v3, v1

    :goto_2
    cmpg-double v1, v8, v6

    if-gez v1, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    int-to-double v4, v1

    add-double/2addr v4, v8

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    double-to-int v1, v4

    :goto_3
    sub-int/2addr v1, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v1, v3

    new-instance v2, Lcom/google/android/gms/internal/eb;

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/eb;-><init>(Ljava/lang/String;)V

    return-object v2

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    aget-object v1, p2, v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzcxp;->zzc(Lcom/google/android/gms/internal/dp;)D

    move-result-wide v4

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    int-to-double v10, v1

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    double-to-int v1, v4

    move v3, v1

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    int-to-double v4, v1

    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    double-to-int v1, v4

    goto :goto_3
.end method
