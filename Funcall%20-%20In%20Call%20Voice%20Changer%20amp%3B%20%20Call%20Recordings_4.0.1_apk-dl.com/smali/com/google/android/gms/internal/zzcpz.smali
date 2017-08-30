.class public final Lcom/google/android/gms/internal/zzcpz;
.super Ljava/lang/Object;


# instance fields
.field private final zzbzJ:Landroid/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/google/android/gms/internal/zzcpn;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/support/v4/util/SimpleArrayMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/support/v4/util/SimpleArrayMap;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcpz;->zzbzJ:Landroid/support/v4/util/SimpleArrayMap;

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/zzcpn;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzcpn;->zzzX()Lcom/google/android/gms/internal/zzbdw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbdw;->zzoc()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final declared-synchronized zzj(Lcom/google/android/gms/internal/zzbdw;)Ljava/lang/Object;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/zzbdw",
            "<TC;>;)TC;"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcpz;->zzbzJ:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/SimpleArrayMap;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcpz;->zzbzJ:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, v2}, Landroid/support/v4/util/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcpz;->zzbzJ:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzcpn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzcpn;->zzzX()Lcom/google/android/gms/internal/zzbdw;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    :goto_1
    monitor-exit p0

    return-object v0

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcpz;->zzbzJ:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/SimpleArrayMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzE(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzcpn;
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(TC;)",
            "Lcom/google/android/gms/internal/zzcpn",
            "<TC;>;"
        }
    .end annotation

    const/4 v1, 0x0

    monitor-enter p0

    if-nez p1, :cond_1

    move-object v0, v1

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcpz;->zzbzJ:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzcpn;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcpz;->zza(Lcom/google/android/gms/internal/zzcpn;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcpz;->zzbzJ:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzb(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/Object;)Lcom/google/android/gms/internal/zzcpn;
    .locals 4
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "TC;)",
            "Lcom/google/android/gms/internal/zzcpn",
            "<TC;>;"
        }
    .end annotation

    monitor-enter p0

    if-nez p2, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcpz;->zzbzJ:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, p2}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzcpn;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcpz;->zza(Lcom/google/android/gms/internal/zzcpn;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1, p2}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzp(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzbdw;

    move-result-object v1

    instance-of v0, p2, Lcom/google/android/gms/nearby/messages/StatusCallback;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/zzcpv;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzcpv;-><init>(Lcom/google/android/gms/internal/zzbdw;)V

    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcpz;->zzbzJ:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v1, p2, v0}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_1
    instance-of v0, p2, Lcom/google/android/gms/nearby/messages/MessageListener;

    if-eqz v0, :cond_3

    new-instance v0, Lcom/google/android/gms/internal/zzcpo;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzcpo;-><init>(Lcom/google/android/gms/internal/zzbdw;)V

    goto :goto_1

    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unknown callback of type "

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public final declared-synchronized zzh(Lcom/google/android/gms/internal/zzbdw;)Lcom/google/android/gms/internal/zzcpn;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/zzbdw",
            "<TC;>;)",
            "Lcom/google/android/gms/internal/zzcpn",
            "<TC;>;"
        }
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzcpz;->zzj(Lcom/google/android/gms/internal/zzbdw;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzcpz;->zzE(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzcpn;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzi(Lcom/google/android/gms/internal/zzbdw;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/zzbdw",
            "<TC;>;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbdw;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcpz;->zzbzJ:Landroid/support/v4/util/SimpleArrayMap;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzcpz;->zzj(Lcom/google/android/gms/internal/zzbdw;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/util/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
