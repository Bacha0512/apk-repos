.class public final Lcom/google/android/gms/internal/zzczo;
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

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    array-length v0, p2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    aget-object v1, p2, v3

    aget-object v4, p2, v2

    instance-of v0, v1, Lcom/google/android/gms/internal/eb;

    if-nez v0, :cond_0

    invoke-static {v1}, Lcom/google/android/gms/internal/ed;->zzl(Lcom/google/android/gms/internal/dp;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    move v0, v2

    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    invoke-static {v1}, Lcom/google/android/gms/internal/ed;->zzm(Lcom/google/android/gms/internal/dp;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v2

    :goto_2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    invoke-static {v4}, Lcom/google/android/gms/internal/ed;->zzm(Lcom/google/android/gms/internal/dp;)Z

    move-result v0

    if-nez v0, :cond_5

    :goto_3
    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    invoke-static {v4}, Lcom/google/android/gms/internal/zzcxp;->zzd(Lcom/google/android/gms/internal/dp;)Ljava/lang/String;

    move-result-object v2

    instance-of v0, v1, Lcom/google/android/gms/internal/dw;

    if-eqz v0, :cond_8

    move-object v0, v1

    check-cast v0, Lcom/google/android/gms/internal/dw;

    const-string v3, "length"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    new-instance v1, Lcom/google/android/gms/internal/dt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dw;->zzDs()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/dt;-><init>(Ljava/lang/Double;)V

    move-object v0, v1

    :cond_1
    :goto_4
    return-object v0

    :cond_2
    move v0, v3

    goto :goto_0

    :cond_3
    move v0, v3

    goto :goto_1

    :cond_4
    move v0, v3

    goto :goto_2

    :cond_5
    move v2, v3

    goto :goto_3

    :cond_6
    invoke-static {v4}, Lcom/google/android/gms/internal/zzcxp;->zzb(Lcom/google/android/gms/internal/dp;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    cmpl-double v3, v4, v6

    if-nez v3, :cond_7

    double-to-int v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    double-to-int v3, v4

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/dw;->zzbG(I)Lcom/google/android/gms/internal/dp;

    move-result-object v0

    sget-object v3, Lcom/google/android/gms/internal/dv;->zzbLu:Lcom/google/android/gms/internal/dv;

    if-ne v0, v3, :cond_1

    :cond_7
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/dp;->zzfZ(Ljava/lang/String;)Lcom/google/android/gms/internal/dp;

    move-result-object v0

    goto :goto_4

    :cond_8
    instance-of v0, v1, Lcom/google/android/gms/internal/eb;

    if-eqz v0, :cond_7

    check-cast v1, Lcom/google/android/gms/internal/eb;

    const-string v0, "length"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v2, Lcom/google/android/gms/internal/dt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/eb;->value()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/dt;-><init>(Ljava/lang/Double;)V

    move-object v0, v2

    goto :goto_4

    :cond_9
    invoke-static {v4}, Lcom/google/android/gms/internal/zzcxp;->zzb(Lcom/google/android/gms/internal/dp;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    cmpl-double v0, v4, v6

    if-nez v0, :cond_a

    double-to-int v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    double-to-int v0, v4

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/eb;->zzbI(I)Lcom/google/android/gms/internal/dp;

    move-result-object v0

    goto :goto_4

    :cond_a
    sget-object v0, Lcom/google/android/gms/internal/dv;->zzbLu:Lcom/google/android/gms/internal/dv;

    goto :goto_4
.end method
