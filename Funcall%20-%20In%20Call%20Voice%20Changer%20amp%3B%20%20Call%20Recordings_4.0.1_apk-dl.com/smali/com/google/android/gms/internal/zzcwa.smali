.class public final Lcom/google/android/gms/internal/zzcwa;
.super Ljava/lang/Object;


# instance fields
.field private zzbIR:Lcom/google/android/gms/internal/zzcwa;

.field private zzbIS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/dp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzcwa;-><init>(Lcom/google/android/gms/internal/zzcwa;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/zzcwa;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/internal/zzcwa;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcwa;->zzbIS:Ljava/util/Map;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcwa;->zzbIR:Lcom/google/android/gms/internal/zzcwa;

    return-void
.end method


# virtual methods
.method public final has(Ljava/lang/String;)Z
    .locals 1

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcwa;->zzbIS:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcwa;->zzbIS:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcwa;->zzbIR:Lcom/google/android/gms/internal/zzcwa;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/google/android/gms/internal/zzcwa;->zzbIR:Lcom/google/android/gms/internal/zzcwa;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final remove(Ljava/lang/String;)V
    .locals 1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzcwa;->has(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzae(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcwa;->zzbIS:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcwa;->zzbIS:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcwa;->zzbIS:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/zzcwa;->zzbIR:Lcom/google/android/gms/internal/zzcwa;

    goto :goto_0
.end method

.method public final zzCz()Lcom/google/android/gms/internal/zzcwa;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzcwa;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzcwa;-><init>(Lcom/google/android/gms/internal/zzcwa;)V

    return-object v0
.end method

.method public final zza(Ljava/lang/String;Lcom/google/android/gms/internal/dp;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/dp",
            "<*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcwa;->zzbIS:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcwa;->zzbIS:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcwa;->zzbIS:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final zzb(Ljava/lang/String;Lcom/google/android/gms/internal/dp;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/dp",
            "<*>;)V"
        }
    .end annotation

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcwa;->zzbIS:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcwa;->zzbIS:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcwa;->zzbIS:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcwa;->zzbIR:Lcom/google/android/gms/internal/zzcwa;

    if-nez v0, :cond_2

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Trying to modify a non existent symbol: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/google/android/gms/internal/zzcwa;->zzbIR:Lcom/google/android/gms/internal/zzcwa;

    goto :goto_0
.end method

.method public final zzfK(Ljava/lang/String;)Lcom/google/android/gms/internal/dp;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/dp",
            "<*>;"
        }
    .end annotation

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcwa;->zzbIS:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcwa;->zzbIS:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcwa;->zzbIS:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/dp;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcwa;->zzbIR:Lcom/google/android/gms/internal/zzcwa;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/google/android/gms/internal/zzcwa;->zzbIR:Lcom/google/android/gms/internal/zzcwa;

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Trying to get a non existent symbol: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method
