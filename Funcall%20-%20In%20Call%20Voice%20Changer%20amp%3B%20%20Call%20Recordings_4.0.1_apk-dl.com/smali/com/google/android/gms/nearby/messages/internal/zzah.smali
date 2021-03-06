.class final Lcom/google/android/gms/nearby/messages/internal/zzah;
.super Lcom/google/android/gms/common/internal/zzz;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/zzz",
        "<",
        "Lcom/google/android/gms/nearby/messages/internal/zzs;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzbyi:I

.field private final zzbze:Lcom/google/android/gms/internal/zzcpz;

.field private final zzbzf:Lcom/google/android/gms/nearby/messages/internal/ClientAppContext;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Lcom/google/android/gms/common/internal/zzq;Lcom/google/android/gms/nearby/messages/MessagesOptions;)V
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    const/16 v3, 0x3e

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p5

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/zzz;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/zzq;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    new-instance v0, Lcom/google/android/gms/internal/zzcpz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzcpz;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/zzah;->zzbze:Lcom/google/android/gms/internal/zzcpz;

    invoke-virtual {p5}, Lcom/google/android/gms/common/internal/zzq;->zzrq()Ljava/lang/String;

    move-result-object v1

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_1

    const/4 v5, 0x1

    :goto_0
    if-eqz p6, :cond_4

    new-instance v0, Lcom/google/android/gms/nearby/messages/internal/ClientAppContext;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/nearby/messages/internal/ClientAppContext;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V

    iput-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/zzah;->zzbzf:Lcom/google/android/gms/nearby/messages/internal/ClientAppContext;

    iget v0, p6, Lcom/google/android/gms/nearby/messages/MessagesOptions;->zzbyg:I

    iput v0, p0, Lcom/google/android/gms/nearby/messages/internal/zzah;->zzbyi:I

    :goto_1
    const/4 v0, 0x1

    if-ne v5, v0, :cond_0

    check-cast p1, Landroid/app/Activity;

    const-string v0, "NearbyMessagesClient"

    const-string v1, "Registering ClientLifecycleSafetyNet\'s ActivityLifecycleCallbacks for %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/nearby/messages/internal/zzaj;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v2}, Lcom/google/android/gms/nearby/messages/internal/zzaj;-><init>(Landroid/app/Activity;Lcom/google/android/gms/nearby/messages/internal/zzah;Lcom/google/android/gms/nearby/messages/internal/zzai;)V

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_0
    return-void

    :cond_1
    instance-of v0, p1, Landroid/app/Application;

    if-eqz v0, :cond_2

    const/4 v5, 0x2

    goto :goto_0

    :cond_2
    instance-of v0, p1, Landroid/app/Service;

    if-eqz v0, :cond_3

    const/4 v5, 0x3

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/google/android/gms/nearby/messages/internal/ClientAppContext;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/nearby/messages/internal/ClientAppContext;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V

    iput-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/zzah;->zzbzf:Lcom/google/android/gms/nearby/messages/internal/ClientAppContext;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/nearby/messages/internal/zzah;->zzbyi:I

    goto :goto_1
.end method


# virtual methods
.method public final disconnect()V
    .locals 5

    const/4 v0, 0x2

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/nearby/messages/internal/zzah;->zzbs(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/zzah;->zzbze:Lcom/google/android/gms/internal/zzcpz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcpz;->clear()V

    invoke-super {p0}, Lcom/google/android/gms/common/internal/zzz;->disconnect()V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "NearbyMessagesClient"

    const-string v2, "Failed to emit CLIENT_DISCONNECTED from override of GmsClient#disconnect(): %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method final zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/nearby/messages/MessageListener;)Lcom/google/android/gms/internal/zzbdw;
    .locals 1
    .param p2    # Lcom/google/android/gms/nearby/messages/MessageListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/nearby/messages/MessageListener;",
            ")",
            "Lcom/google/android/gms/internal/zzbdw",
            "<",
            "Lcom/google/android/gms/nearby/messages/MessageListener;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/zzah;->zzbze:Lcom/google/android/gms/internal/zzcpz;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzcpz;->zzb(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/Object;)Lcom/google/android/gms/internal/zzcpn;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzcpn;->zzzX()Lcom/google/android/gms/internal/zzbdw;

    move-result-object v0

    return-object v0
.end method

.method final zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/nearby/messages/StatusCallback;)Lcom/google/android/gms/internal/zzbdw;
    .locals 1
    .param p2    # Lcom/google/android/gms/nearby/messages/StatusCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/nearby/messages/StatusCallback;",
            ")",
            "Lcom/google/android/gms/internal/zzbdw",
            "<",
            "Lcom/google/android/gms/nearby/messages/StatusCallback;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/zzah;->zzbze:Lcom/google/android/gms/internal/zzcpz;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzcpz;->zzb(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/Object;)Lcom/google/android/gms/internal/zzcpn;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzcpn;->zzzX()Lcom/google/android/gms/internal/zzbdw;

    move-result-object v0

    return-object v0
.end method

.method final zza(Lcom/google/android/gms/nearby/messages/MessageListener;)Lcom/google/android/gms/internal/zzbdw;
    .locals 1
    .param p1    # Lcom/google/android/gms/nearby/messages/MessageListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/nearby/messages/MessageListener;",
            ")",
            "Lcom/google/android/gms/internal/zzbdw",
            "<",
            "Lcom/google/android/gms/nearby/messages/MessageListener;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/zzah;->zzbze:Lcom/google/android/gms/internal/zzcpz;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzcpz;->zzE(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzcpn;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/zzcpn;->zzzX()Lcom/google/android/gms/internal/zzbdw;

    move-result-object v0

    goto :goto_0
.end method

.method final zza(Lcom/google/android/gms/nearby/messages/StatusCallback;)Lcom/google/android/gms/internal/zzbdw;
    .locals 1
    .param p1    # Lcom/google/android/gms/nearby/messages/StatusCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/nearby/messages/StatusCallback;",
            ")",
            "Lcom/google/android/gms/internal/zzbdw",
            "<",
            "Lcom/google/android/gms/nearby/messages/StatusCallback;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/zzah;->zzbze:Lcom/google/android/gms/internal/zzcpz;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzcpz;->zzE(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzcpn;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/zzcpn;->zzzX()Lcom/google/android/gms/internal/zzbdw;

    move-result-object v0

    goto :goto_0
.end method

.method final zza(Lcom/google/android/gms/internal/zzbdw;Lcom/google/android/gms/internal/zzbdw;)V
    .locals 4
    .param p2    # Lcom/google/android/gms/internal/zzbdw;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbdw",
            "<",
            "Lcom/google/android/gms/internal/zzbaz",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;>;",
            "Lcom/google/android/gms/internal/zzbdw",
            "<",
            "Lcom/google/android/gms/nearby/messages/MessageListener;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/google/android/gms/nearby/messages/internal/zzbe;

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/zzah;->zzbze:Lcom/google/android/gms/internal/zzcpz;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/zzcpz;->zzh(Lcom/google/android/gms/internal/zzbdw;)Lcom/google/android/gms/internal/zzcpn;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/zzcpq;

    invoke-direct {v2, p1}, Lcom/google/android/gms/internal/zzcpq;-><init>(Lcom/google/android/gms/internal/zzbdw;)V

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/gms/nearby/messages/internal/zzbe;-><init>(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/PendingIntent;)V

    invoke-virtual {p0}, Lcom/google/android/gms/nearby/messages/internal/zzah;->zzrf()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/nearby/messages/internal/zzs;

    invoke-interface {v0, v1}, Lcom/google/android/gms/nearby/messages/internal/zzs;->zza(Lcom/google/android/gms/nearby/messages/internal/zzbe;)V

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/zzah;->zzbze:Lcom/google/android/gms/internal/zzcpz;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/zzcpz;->zzi(Lcom/google/android/gms/internal/zzbdw;)V

    goto :goto_0
.end method

.method final zza(Lcom/google/android/gms/internal/zzbdw;Lcom/google/android/gms/internal/zzbdw;Lcom/google/android/gms/internal/zzbdw;Lcom/google/android/gms/nearby/messages/SubscribeOptions;[B)V
    .locals 9
    .param p3    # Lcom/google/android/gms/internal/zzbdw;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # [B
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbdw",
            "<",
            "Lcom/google/android/gms/internal/zzbaz",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;>;",
            "Lcom/google/android/gms/internal/zzbdw",
            "<",
            "Lcom/google/android/gms/nearby/messages/MessageListener;",
            ">;",
            "Lcom/google/android/gms/internal/zzbdw",
            "<",
            "Lcom/google/android/gms/nearby/messages/SubscribeCallback;",
            ">;",
            "Lcom/google/android/gms/nearby/messages/SubscribeOptions;",
            "[B)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v5, 0x0

    new-instance v0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;

    iget-object v1, p0, Lcom/google/android/gms/nearby/messages/internal/zzah;->zzbze:Lcom/google/android/gms/internal/zzcpz;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/zzcpz;->zzh(Lcom/google/android/gms/internal/zzbdw;)Lcom/google/android/gms/internal/zzcpn;

    move-result-object v1

    invoke-virtual {p4}, Lcom/google/android/gms/nearby/messages/SubscribeOptions;->getStrategy()Lcom/google/android/gms/nearby/messages/Strategy;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/zzcpq;

    invoke-direct {v3, p1}, Lcom/google/android/gms/internal/zzcpq;-><init>(Lcom/google/android/gms/internal/zzbdw;)V

    invoke-virtual {p4}, Lcom/google/android/gms/nearby/messages/SubscribeOptions;->getFilter()Lcom/google/android/gms/nearby/messages/MessageFilter;

    move-result-object v4

    if-nez p3, :cond_0

    move-object v7, v5

    :goto_0
    iget-boolean v8, p4, Lcom/google/android/gms/nearby/messages/SubscribeOptions;->zzbyA:Z

    move-object v6, v5

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;-><init>(Landroid/os/IBinder;Lcom/google/android/gms/nearby/messages/Strategy;Landroid/os/IBinder;Lcom/google/android/gms/nearby/messages/MessageFilter;Landroid/app/PendingIntent;[BLandroid/os/IBinder;Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/nearby/messages/internal/zzah;->zzrf()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/nearby/messages/internal/zzs;

    invoke-interface {v1, v0}, Lcom/google/android/gms/nearby/messages/internal/zzs;->zza(Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;)V

    return-void

    :cond_0
    new-instance v7, Lcom/google/android/gms/internal/zzcpx;

    invoke-direct {v7, p3}, Lcom/google/android/gms/internal/zzcpx;-><init>(Lcom/google/android/gms/internal/zzbdw;)V

    goto :goto_0
.end method

.method final zza(Lcom/google/android/gms/internal/zzbdw;Lcom/google/android/gms/nearby/messages/internal/zzaf;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbdw",
            "<",
            "Lcom/google/android/gms/internal/zzbaz",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;>;",
            "Lcom/google/android/gms/nearby/messages/internal/zzaf;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v1, Lcom/google/android/gms/nearby/messages/internal/zzbc;

    new-instance v0, Lcom/google/android/gms/internal/zzcpq;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzcpq;-><init>(Lcom/google/android/gms/internal/zzbdw;)V

    iget-object v2, p0, Lcom/google/android/gms/nearby/messages/internal/zzah;->zzbzf:Lcom/google/android/gms/nearby/messages/internal/ClientAppContext;

    invoke-direct {v1, p2, v0, v2}, Lcom/google/android/gms/nearby/messages/internal/zzbc;-><init>(Lcom/google/android/gms/nearby/messages/internal/zzaf;Landroid/os/IBinder;Lcom/google/android/gms/nearby/messages/internal/ClientAppContext;)V

    invoke-virtual {p0}, Lcom/google/android/gms/nearby/messages/internal/zzah;->zzrf()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/nearby/messages/internal/zzs;

    invoke-interface {v0, v1}, Lcom/google/android/gms/nearby/messages/internal/zzs;->zza(Lcom/google/android/gms/nearby/messages/internal/zzbc;)V

    return-void
.end method

.method final zzb(Lcom/google/android/gms/internal/zzbdw;Lcom/google/android/gms/internal/zzbdw;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbdw",
            "<",
            "Lcom/google/android/gms/internal/zzbaz",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;>;",
            "Lcom/google/android/gms/internal/zzbdw",
            "<",
            "Lcom/google/android/gms/nearby/messages/StatusCallback;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v1, Lcom/google/android/gms/nearby/messages/internal/zzaz;

    new-instance v0, Lcom/google/android/gms/internal/zzcpq;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzcpq;-><init>(Lcom/google/android/gms/internal/zzbdw;)V

    iget-object v2, p0, Lcom/google/android/gms/nearby/messages/internal/zzah;->zzbze:Lcom/google/android/gms/internal/zzcpz;

    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/zzcpz;->zzh(Lcom/google/android/gms/internal/zzbdw;)Lcom/google/android/gms/internal/zzcpn;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/nearby/messages/internal/zzaz;-><init>(Landroid/os/IBinder;Landroid/os/IBinder;)V

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/google/android/gms/nearby/messages/internal/zzaz;->zzbzu:Z

    invoke-virtual {p0}, Lcom/google/android/gms/nearby/messages/internal/zzah;->zzrf()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/nearby/messages/internal/zzs;

    invoke-interface {v0, v1}, Lcom/google/android/gms/nearby/messages/internal/zzs;->zza(Lcom/google/android/gms/nearby/messages/internal/zzaz;)V

    return-void
.end method

.method final zzbs(I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch p1, :pswitch_data_0

    const-string v0, "NearbyMessagesClient"

    const-string v1, "Received unknown/unforeseen client lifecycle event %d, can\'t do anything with it."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_0
    const-string v0, "ACTIVITY_STOPPED"

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/nearby/messages/internal/zzah;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/google/android/gms/nearby/messages/internal/zzj;

    invoke-direct {v1, p1}, Lcom/google/android/gms/nearby/messages/internal/zzj;-><init>(I)V

    const-string v2, "NearbyMessagesClient"

    const-string v3, "Emitting client lifecycle event %s"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/google/android/gms/nearby/messages/internal/zzah;->zzrf()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/nearby/messages/internal/zzs;

    invoke-interface {v0, v1}, Lcom/google/android/gms/nearby/messages/internal/zzs;->zza(Lcom/google/android/gms/nearby/messages/internal/zzj;)V

    goto :goto_0

    :pswitch_1
    const-string v0, "CLIENT_DISCONNECTED"

    goto :goto_1

    :cond_0
    const-string v1, "NearbyMessagesClient"

    const-string v2, "Failed to emit client lifecycle event %s due to GmsClient being disconnected"

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method final zzc(Lcom/google/android/gms/internal/zzbdw;Lcom/google/android/gms/internal/zzbdw;)V
    .locals 3
    .param p2    # Lcom/google/android/gms/internal/zzbdw;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbdw",
            "<",
            "Lcom/google/android/gms/internal/zzbaz",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;>;",
            "Lcom/google/android/gms/internal/zzbdw",
            "<",
            "Lcom/google/android/gms/nearby/messages/StatusCallback;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/google/android/gms/nearby/messages/internal/zzaz;

    new-instance v0, Lcom/google/android/gms/internal/zzcpq;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzcpq;-><init>(Lcom/google/android/gms/internal/zzbdw;)V

    iget-object v2, p0, Lcom/google/android/gms/nearby/messages/internal/zzah;->zzbze:Lcom/google/android/gms/internal/zzcpz;

    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/zzcpz;->zzh(Lcom/google/android/gms/internal/zzbdw;)Lcom/google/android/gms/internal/zzcpn;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/nearby/messages/internal/zzaz;-><init>(Landroid/os/IBinder;Landroid/os/IBinder;)V

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/google/android/gms/nearby/messages/internal/zzaz;->zzbzu:Z

    invoke-virtual {p0}, Lcom/google/android/gms/nearby/messages/internal/zzah;->zzrf()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/nearby/messages/internal/zzs;

    invoke-interface {v0, v1}, Lcom/google/android/gms/nearby/messages/internal/zzs;->zza(Lcom/google/android/gms/nearby/messages/internal/zzaz;)V

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/zzah;->zzbze:Lcom/google/android/gms/internal/zzcpz;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/zzcpz;->zzi(Lcom/google/android/gms/internal/zzbdw;)V

    goto :goto_0
.end method

.method protected final synthetic zzd(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "com.google.android.gms.nearby.messages.internal.INearbyMessagesService"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/nearby/messages/internal/zzs;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/nearby/messages/internal/zzs;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/nearby/messages/internal/zzt;

    invoke-direct {v0, p1}, Lcom/google/android/gms/nearby/messages/internal/zzt;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method protected final zzdb()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-string v0, "com.google.android.gms.nearby.messages.service.NearbyMessagesService.START"

    return-object v0
.end method

.method protected final zzdc()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-string v0, "com.google.android.gms.nearby.messages.internal.INearbyMessagesService"

    return-object v0
.end method

.method protected final zzmo()Landroid/os/Bundle;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-super {p0}, Lcom/google/android/gms/common/internal/zzz;->zzmo()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "NearbyPermissions"

    iget v2, p0, Lcom/google/android/gms/nearby/messages/internal/zzah;->zzbyi:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "ClientAppContext"

    iget-object v2, p0, Lcom/google/android/gms/nearby/messages/internal/zzah;->zzbzf:Lcom/google/android/gms/nearby/messages/internal/ClientAppContext;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object v0
.end method
