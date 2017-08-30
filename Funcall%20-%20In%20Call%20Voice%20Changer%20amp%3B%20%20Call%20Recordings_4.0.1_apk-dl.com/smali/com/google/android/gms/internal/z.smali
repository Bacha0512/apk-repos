.class public final Lcom/google/android/gms/internal/z;
.super Lcom/google/android/gms/internal/zzcxq;


# instance fields
.field private final zzbJX:Lcom/google/android/gms/internal/aa;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/aa;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcxq;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/z;->zzbJX:Lcom/google/android/gms/internal/aa;

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

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    array-length v0, p2

    if-lez v0, :cond_0

    move v0, v3

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    aget-object v0, p2, v4

    instance-of v0, v0, Lcom/google/android/gms/internal/eb;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    aget-object v0, p2, v4

    check-cast v0, Lcom/google/android/gms/internal/eb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/eb;->value()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    array-length v1, p2

    const/4 v2, 0x2

    if-lt v1, v2, :cond_3

    aget-object v1, p2, v3

    sget-object v2, Lcom/google/android/gms/internal/dv;->zzbLu:Lcom/google/android/gms/internal/dv;

    if-eq v1, v2, :cond_3

    aget-object v1, p2, v3

    instance-of v1, v1, Lcom/google/android/gms/internal/dz;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    aget-object v1, p2, v3

    check-cast v1, Lcom/google/android/gms/internal/dz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/dz;->zzDt()Ljava/util/Map;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/google/android/gms/internal/ea;

    if-nez v2, :cond_1

    move v2, v3

    :goto_2
    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzbo;->zzae(Z)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/dp;

    invoke-static {v2}, Lcom/google/android/gms/internal/ed;->zzm(Lcom/google/android/gms/internal/dp;)Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_3
    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzbo;->zzae(Z)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/dp;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/dp;->zzDl()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v5, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    move v0, v4

    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_2

    :cond_2
    move v2, v4

    goto :goto_3

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/z;->zzbJX:Lcom/google/android/gms/internal/aa;

    invoke-interface {v1, v0, v5}, Lcom/google/android/gms/internal/aa;->zzd(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ed;->zzQ(Ljava/lang/Object;)Lcom/google/android/gms/internal/dp;

    move-result-object v0

    return-object v0
.end method
