.class public final Lcom/google/android/gms/internal/zzczz;
.super Lcom/google/android/gms/internal/zzcxq;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcxq;-><init>()V

    return-void
.end method


# virtual methods
.method protected final varargs zza(Lcom/google/android/gms/internal/zzcwa;[Lcom/google/android/gms/internal/dp;)Lcom/google/android/gms/internal/dp;
    .locals 4
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

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    array-length v0, p2

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    aget-object v0, p2, v2

    aget-object v2, p2, v1

    instance-of v1, v0, Lcom/google/android/gms/internal/dv;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/dv;->zzbLu:Lcom/google/android/gms/internal/dv;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/dv;->zzbLt:Lcom/google/android/gms/internal/dv;

    if-ne v0, v1, :cond_1

    :cond_0
    instance-of v1, v2, Lcom/google/android/gms/internal/dv;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/google/android/gms/internal/dv;->zzbLu:Lcom/google/android/gms/internal/dv;

    if-eq v2, v1, :cond_3

    sget-object v1, Lcom/google/android/gms/internal/dv;->zzbLt:Lcom/google/android/gms/internal/dv;

    if-eq v2, v1, :cond_3

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal InternalType passed to Add."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    instance-of v1, v0, Lcom/google/android/gms/internal/dz;

    if-nez v1, :cond_4

    instance-of v1, v0, Lcom/google/android/gms/internal/dw;

    if-nez v1, :cond_4

    instance-of v1, v0, Lcom/google/android/gms/internal/du;

    if-eqz v1, :cond_5

    :cond_4
    new-instance v1, Lcom/google/android/gms/internal/eb;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcxp;->zzd(Lcom/google/android/gms/internal/dp;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/eb;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :cond_5
    instance-of v1, v2, Lcom/google/android/gms/internal/dz;

    if-nez v1, :cond_6

    instance-of v1, v2, Lcom/google/android/gms/internal/dw;

    if-nez v1, :cond_6

    instance-of v1, v2, Lcom/google/android/gms/internal/du;

    if-eqz v1, :cond_a

    :cond_6
    new-instance v1, Lcom/google/android/gms/internal/eb;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzcxp;->zzd(Lcom/google/android/gms/internal/dp;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/eb;-><init>(Ljava/lang/String;)V

    :goto_1
    instance-of v2, v0, Lcom/google/android/gms/internal/eb;

    if-nez v2, :cond_7

    instance-of v2, v1, Lcom/google/android/gms/internal/eb;

    if-eqz v2, :cond_9

    :cond_7
    new-instance v2, Lcom/google/android/gms/internal/eb;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcxp;->zzd(Lcom/google/android/gms/internal/dp;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Lcom/google/android/gms/internal/zzcxp;->zzd(Lcom/google/android/gms/internal/dp;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/eb;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    :goto_3
    return-object v0

    :cond_8
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    new-instance v2, Lcom/google/android/gms/internal/dt;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzcxp;->zza(Lcom/google/android/gms/internal/dp;Lcom/google/android/gms/internal/dp;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/dt;-><init>(Ljava/lang/Double;)V

    move-object v0, v2

    goto :goto_3

    :cond_a
    move-object v1, v2

    goto :goto_1
.end method
