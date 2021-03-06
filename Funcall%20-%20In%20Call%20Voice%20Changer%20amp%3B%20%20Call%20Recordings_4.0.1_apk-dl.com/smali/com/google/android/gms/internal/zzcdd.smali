.class public final Lcom/google/android/gms/internal/zzcdd;
.super Ljava/lang/Object;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzaWU:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/internal/zzbdy",
            "<",
            "Lcom/google/android/gms/location/LocationListener;",
            ">;",
            "Lcom/google/android/gms/internal/zzcdh;",
            ">;"
        }
    .end annotation
.end field

.field private final zzbiB:Lcom/google/android/gms/internal/zzcdt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzcdt",
            "<",
            "Lcom/google/android/gms/internal/zzccz;",
            ">;"
        }
    .end annotation
.end field

.field private zzbiM:Landroid/content/ContentProviderClient;

.field private zzbiN:Z

.field private final zzbiO:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/internal/zzbdy",
            "<",
            "Lcom/google/android/gms/location/LocationCallback;",
            ">;",
            "Lcom/google/android/gms/internal/zzcde;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzcdt;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/zzcdt",
            "<",
            "Lcom/google/android/gms/internal/zzccz;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcdd;->zzbiM:Landroid/content/ContentProviderClient;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcdd;->zzbiN:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcdd;->zzaWU:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcdd;->zzbiO:Ljava/util/Map;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcdd;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcdd;->zzbiB:Lcom/google/android/gms/internal/zzcdt;

    return-void
.end method

.method private final zzf(Lcom/google/android/gms/internal/zzbdw;)Lcom/google/android/gms/internal/zzcdh;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbdw",
            "<",
            "Lcom/google/android/gms/location/LocationListener;",
            ">;)",
            "Lcom/google/android/gms/internal/zzcdh;"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcdd;->zzaWU:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcdd;->zzaWU:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbdw;->zzqG()Lcom/google/android/gms/internal/zzbdy;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzcdh;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzcdh;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzcdh;-><init>(Lcom/google/android/gms/internal/zzbdw;)V

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzcdd;->zzaWU:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbdw;->zzqG()Lcom/google/android/gms/internal/zzbdy;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private final zzg(Lcom/google/android/gms/internal/zzbdw;)Lcom/google/android/gms/internal/zzcde;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbdw",
            "<",
            "Lcom/google/android/gms/location/LocationCallback;",
            ">;)",
            "Lcom/google/android/gms/internal/zzcde;"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcdd;->zzbiO:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcdd;->zzbiO:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbdw;->zzqG()Lcom/google/android/gms/internal/zzbdy;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzcde;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzcde;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzcde;-><init>(Lcom/google/android/gms/internal/zzbdw;)V

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzcdd;->zzbiO:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbdw;->zzqG()Lcom/google/android/gms/internal/zzbdy;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final getLastLocation()Landroid/location/Location;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcdd;->zzbiB:Lcom/google/android/gms/internal/zzcdt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzcdt;->zzre()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcdd;->zzbiB:Lcom/google/android/gms/internal/zzcdt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzcdt;->zzrf()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzccz;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcdd;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzccz;->zzdv(Ljava/lang/String;)Landroid/location/Location;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final removeAllListeners()V
    .locals 5

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzcdd;->zzaWU:Ljava/util/Map;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcdd;->zzaWU:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzcdh;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcdd;->zzbiB:Lcom/google/android/gms/internal/zzcdt;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzcdt;->zzrf()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzccz;

    const/4 v4, 0x0

    invoke-static {v0, v4}, Lcom/google/android/gms/internal/zzcdp;->zza(Lcom/google/android/gms/location/zzm;Lcom/google/android/gms/internal/zzccu;)Lcom/google/android/gms/internal/zzcdp;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/zzccz;->zza(Lcom/google/android/gms/internal/zzcdp;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcdd;->zzaWU:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v2, p0, Lcom/google/android/gms/internal/zzcdd;->zzbiO:Ljava/util/Map;

    monitor-enter v2
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcdd;->zzbiO:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzcde;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcdd;->zzbiB:Lcom/google/android/gms/internal/zzcdt;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzcdt;->zzrf()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzccz;

    const/4 v4, 0x0

    invoke-static {v0, v4}, Lcom/google/android/gms/internal/zzcdp;->zza(Lcom/google/android/gms/location/zzj;Lcom/google/android/gms/internal/zzccu;)Lcom/google/android/gms/internal/zzcdp;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/zzccz;->zza(Lcom/google/android/gms/internal/zzcdp;)V

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    :cond_3
    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcdd;->zzbiO:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    return-void
.end method

.method public final zza(Landroid/app/PendingIntent;Lcom/google/android/gms/internal/zzccu;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcdd;->zzbiB:Lcom/google/android/gms/internal/zzcdt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzcdt;->zzre()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcdd;->zzbiB:Lcom/google/android/gms/internal/zzcdt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzcdt;->zzrf()Landroid/os/IInterface;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/google/android/gms/internal/zzccz;

    new-instance v0, Lcom/google/android/gms/internal/zzcdp;

    const/4 v1, 0x2

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/google/android/gms/internal/zzccu;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    :goto_0
    move-object v3, v2

    move-object v4, p1

    move-object v5, v2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzcdp;-><init>(ILcom/google/android/gms/internal/zzcdn;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;Landroid/os/IBinder;)V

    invoke-interface {v7, v0}, Lcom/google/android/gms/internal/zzccz;->zza(Lcom/google/android/gms/internal/zzcdp;)V

    return-void

    :cond_0
    move-object v6, v2

    goto :goto_0
.end method

.method public final zza(Lcom/google/android/gms/internal/zzbdy;Lcom/google/android/gms/internal/zzccu;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbdy",
            "<",
            "Lcom/google/android/gms/location/LocationListener;",
            ">;",
            "Lcom/google/android/gms/internal/zzccu;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcdd;->zzbiB:Lcom/google/android/gms/internal/zzcdt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzcdt;->zzre()V

    const-string v0, "Invalid null listener key"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzbo;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcdd;->zzaWU:Ljava/util/Map;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcdd;->zzaWU:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzcdh;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcdh;->release()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcdd;->zzbiB:Lcom/google/android/gms/internal/zzcdt;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzcdt;->zzrf()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzccz;

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/zzcdp;->zza(Lcom/google/android/gms/location/zzm;Lcom/google/android/gms/internal/zzccu;)Lcom/google/android/gms/internal/zzcdp;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/zzccz;->zza(Lcom/google/android/gms/internal/zzcdp;)V

    :cond_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final zza(Lcom/google/android/gms/internal/zzccu;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcdd;->zzbiB:Lcom/google/android/gms/internal/zzcdt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzcdt;->zzre()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcdd;->zzbiB:Lcom/google/android/gms/internal/zzcdt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzcdt;->zzrf()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzccz;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzccz;->zza(Lcom/google/android/gms/internal/zzccu;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzcdn;Lcom/google/android/gms/internal/zzbdw;Lcom/google/android/gms/internal/zzccu;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzcdn;",
            "Lcom/google/android/gms/internal/zzbdw",
            "<",
            "Lcom/google/android/gms/location/LocationCallback;",
            ">;",
            "Lcom/google/android/gms/internal/zzccu;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcdd;->zzbiB:Lcom/google/android/gms/internal/zzcdt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzcdt;->zzre()V

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzcdd;->zzg(Lcom/google/android/gms/internal/zzbdw;)Lcom/google/android/gms/internal/zzcde;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcdd;->zzbiB:Lcom/google/android/gms/internal/zzcdt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzcdt;->zzrf()Landroid/os/IInterface;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/google/android/gms/internal/zzccz;

    new-instance v0, Lcom/google/android/gms/internal/zzcdp;

    const/4 v1, 0x1

    invoke-interface {v2}, Lcom/google/android/gms/location/zzj;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    if-eqz p3, :cond_0

    invoke-interface {p3}, Lcom/google/android/gms/internal/zzccu;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    :goto_0
    move-object v2, p1

    move-object v4, v3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzcdp;-><init>(ILcom/google/android/gms/internal/zzcdn;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;Landroid/os/IBinder;)V

    invoke-interface {v7, v0}, Lcom/google/android/gms/internal/zzccz;->zza(Lcom/google/android/gms/internal/zzcdp;)V

    return-void

    :cond_0
    move-object v6, v3

    goto :goto_0
.end method

.method public final zza(Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;Lcom/google/android/gms/internal/zzccu;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcdd;->zzbiB:Lcom/google/android/gms/internal/zzcdt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzcdt;->zzre()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcdd;->zzbiB:Lcom/google/android/gms/internal/zzcdt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzcdt;->zzrf()Landroid/os/IInterface;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/google/android/gms/internal/zzccz;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzcdn;->zza(Lcom/google/android/gms/location/LocationRequest;)Lcom/google/android/gms/internal/zzcdn;

    move-result-object v2

    new-instance v0, Lcom/google/android/gms/internal/zzcdp;

    const/4 v1, 0x1

    if-eqz p3, :cond_0

    invoke-interface {p3}, Lcom/google/android/gms/internal/zzccu;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    :goto_0
    move-object v4, p2

    move-object v5, v3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzcdp;-><init>(ILcom/google/android/gms/internal/zzcdn;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;Landroid/os/IBinder;)V

    invoke-interface {v7, v0}, Lcom/google/android/gms/internal/zzccz;->zza(Lcom/google/android/gms/internal/zzcdp;)V

    return-void

    :cond_0
    move-object v6, v3

    goto :goto_0
.end method

.method public final zza(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/internal/zzbdw;Lcom/google/android/gms/internal/zzccu;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/location/LocationRequest;",
            "Lcom/google/android/gms/internal/zzbdw",
            "<",
            "Lcom/google/android/gms/location/LocationListener;",
            ">;",
            "Lcom/google/android/gms/internal/zzccu;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcdd;->zzbiB:Lcom/google/android/gms/internal/zzcdt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzcdt;->zzre()V

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzcdd;->zzf(Lcom/google/android/gms/internal/zzbdw;)Lcom/google/android/gms/internal/zzcdh;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcdd;->zzbiB:Lcom/google/android/gms/internal/zzcdt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzcdt;->zzrf()Landroid/os/IInterface;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/google/android/gms/internal/zzccz;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzcdn;->zza(Lcom/google/android/gms/location/LocationRequest;)Lcom/google/android/gms/internal/zzcdn;

    move-result-object v2

    new-instance v0, Lcom/google/android/gms/internal/zzcdp;

    const/4 v1, 0x1

    invoke-interface {v3}, Lcom/google/android/gms/location/zzm;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    if-eqz p3, :cond_0

    invoke-interface {p3}, Lcom/google/android/gms/internal/zzccu;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    :goto_0
    move-object v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzcdp;-><init>(ILcom/google/android/gms/internal/zzcdn;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;Landroid/os/IBinder;)V

    invoke-interface {v7, v0}, Lcom/google/android/gms/internal/zzccz;->zza(Lcom/google/android/gms/internal/zzcdp;)V

    return-void

    :cond_0
    move-object v6, v4

    goto :goto_0
.end method

.method public final zzai(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcdd;->zzbiB:Lcom/google/android/gms/internal/zzcdt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzcdt;->zzre()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcdd;->zzbiB:Lcom/google/android/gms/internal/zzcdt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzcdt;->zzrf()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzccz;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzccz;->zzai(Z)V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzcdd;->zzbiN:Z

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/zzbdy;Lcom/google/android/gms/internal/zzccu;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbdy",
            "<",
            "Lcom/google/android/gms/location/LocationCallback;",
            ">;",
            "Lcom/google/android/gms/internal/zzccu;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcdd;->zzbiB:Lcom/google/android/gms/internal/zzcdt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzcdt;->zzre()V

    const-string v0, "Invalid null listener key"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzbo;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcdd;->zzbiO:Ljava/util/Map;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcdd;->zzbiO:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzcde;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcde;->release()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcdd;->zzbiB:Lcom/google/android/gms/internal/zzcdt;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzcdt;->zzrf()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzccz;

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/zzcdp;->zza(Lcom/google/android/gms/location/zzj;Lcom/google/android/gms/internal/zzccu;)Lcom/google/android/gms/internal/zzcdp;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/zzccz;->zza(Lcom/google/android/gms/internal/zzcdp;)V

    :cond_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final zzc(Landroid/location/Location;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcdd;->zzbiB:Lcom/google/android/gms/internal/zzcdt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzcdt;->zzre()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcdd;->zzbiB:Lcom/google/android/gms/internal/zzcdt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzcdt;->zzrf()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzccz;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzccz;->zzc(Landroid/location/Location;)V

    return-void
.end method

.method public final zzvQ()Lcom/google/android/gms/location/LocationAvailability;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcdd;->zzbiB:Lcom/google/android/gms/internal/zzcdt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzcdt;->zzre()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcdd;->zzbiB:Lcom/google/android/gms/internal/zzcdt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzcdt;->zzrf()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzccz;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcdd;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzccz;->zzdw(Ljava/lang/String;)Lcom/google/android/gms/location/LocationAvailability;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final zzvR()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcdd;->zzbiN:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzcdd;->zzai(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
