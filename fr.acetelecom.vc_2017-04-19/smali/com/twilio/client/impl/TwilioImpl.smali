.class public Lcom/twilio/client/impl/TwilioImpl;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twilio/client/impl/TwilioImpl$State;
    }
.end annotation


# static fields
.field static final EXTRA_DEVICES_INFO:Ljava/lang/String; = "com.twilio.client.impl.Twilio.DEVICES_INFO"

.field private static final TWILIO_CLIENT_SERVICE_NAME:Ljava/lang/String; = "com.twilio.client.TwilioClientService"

.field private static cachedLogLevel:I

.field public static context:Landroid/content/Context;

.field public static enableMetrics:Z

.field private static volatile instance:Lcom/twilio/client/impl/TwilioImpl;

.field private static final logger:Lcom/twilio/client/impl/logging/Logger;

.field private static final requiredPermissions:[Ljava/lang/String;


# instance fields
.field protected callControlManager:Lcom/twilio/client/impl/CallControlManager;

.field protected final devices:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/twilio/client/impl/DeviceImpl;",
            ">;>;"
        }
    .end annotation
.end field

.field protected eventStreamFactory:Lcom/twilio/client/impl/net/EventStreamFactory;

.field protected mediaManager:Lcom/twilio/client/impl/MediaManager;

.field private serviceConn:Landroid/content/ServiceConnection;

.field private final state:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/twilio/client/impl/TwilioImpl$State;",
            ">;"
        }
    .end annotation
.end field

.field private strongDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twilio/client/impl/DeviceImpl;",
            ">;"
        }
    .end annotation
.end field

.field protected twBinder:Lcom/twilio/client/TwilioClientService$TwilioBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const-class v0, Lcom/twilio/client/Twilio;

    invoke-static {v0}, Lcom/twilio/client/impl/logging/Logger;->getLogger(Ljava/lang/Class;)Lcom/twilio/client/impl/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/twilio/client/impl/TwilioImpl;->logger:Lcom/twilio/client/impl/logging/Logger;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.INTERNET"

    aput-object v2, v0, v1

    const-string v1, "android.permission.RECORD_AUDIO"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "android.permission.MODIFY_AUDIO_SETTINGS"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "android.permission.ACCESS_WIFI_STATE"

    aput-object v2, v0, v1

    sput-object v0, Lcom/twilio/client/impl/TwilioImpl;->requiredPermissions:[Ljava/lang/String;

    sput-boolean v3, Lcom/twilio/client/impl/TwilioImpl;->enableMetrics:Z

    const/4 v0, -0x1

    sput v0, Lcom/twilio/client/impl/TwilioImpl;->cachedLogLevel:I

    return-void
.end method

.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/twilio/client/impl/TwilioImpl;->devices:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/twilio/client/impl/TwilioImpl$State;->UNINITIALIZED:Lcom/twilio/client/impl/TwilioImpl$State;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/twilio/client/impl/TwilioImpl;->state:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method static synthetic access$000(Lcom/twilio/client/impl/TwilioImpl;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/TwilioImpl;->state:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic access$100()I
    .locals 1

    sget v0, Lcom/twilio/client/impl/TwilioImpl;->cachedLogLevel:I

    return v0
.end method

.method private checkRuntimePermissions(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "android.permission.RECORD_AUDIO"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/twilio/client/impl/TwilioImpl;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static getInstance()Lcom/twilio/client/impl/TwilioImpl;
    .locals 2

    sget-object v0, Lcom/twilio/client/impl/TwilioImpl;->instance:Lcom/twilio/client/impl/TwilioImpl;

    if-nez v0, :cond_1

    const-class v1, Lcom/twilio/client/impl/TwilioImpl;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/twilio/client/impl/TwilioImpl;->instance:Lcom/twilio/client/impl/TwilioImpl;

    if-nez v0, :cond_0

    new-instance v0, Lcom/twilio/client/impl/TwilioImpl;

    invoke-direct {v0}, Lcom/twilio/client/impl/TwilioImpl;-><init>()V

    sput-object v0, Lcom/twilio/client/impl/TwilioImpl;->instance:Lcom/twilio/client/impl/TwilioImpl;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/twilio/client/impl/TwilioImpl;->instance:Lcom/twilio/client/impl/TwilioImpl;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static setInstance(Lcom/twilio/client/impl/TwilioImpl;)V
    .locals 0

    sput-object p0, Lcom/twilio/client/impl/TwilioImpl;->instance:Lcom/twilio/client/impl/TwilioImpl;

    return-void
.end method

.method private updateServiceState()V
    .locals 9

    sget-object v0, Lcom/twilio/client/impl/TwilioImpl;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twilio/client/impl/TwilioImpl;->twBinder:Lcom/twilio/client/TwilioClientService$TwilioBinder;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v2, Landroid/content/Intent;

    sget-object v0, Lcom/twilio/client/impl/TwilioImpl;->context:Landroid/content/Context;

    const-class v1, Lcom/twilio/client/TwilioClientService;

    invoke-direct {v2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v3, p0, Lcom/twilio/client/impl/TwilioImpl;->devices:Ljava/util/Map;

    monitor-enter v3

    :try_start_0
    iget-object v0, p0, Lcom/twilio/client/impl/TwilioImpl;->devices:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_5

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    iget-object v0, p0, Lcom/twilio/client/impl/TwilioImpl;->devices:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twilio/client/impl/DeviceImpl;

    if-eqz v1, :cond_2

    new-instance v0, Lcom/twilio/client/impl/DeviceStateInfo;

    invoke-virtual {v1}, Lcom/twilio/client/impl/DeviceImpl;->getCapabilityToken()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lcom/twilio/client/impl/DeviceImpl;->getIncomingIntent()Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual {v1}, Lcom/twilio/client/impl/DeviceImpl;->getFeatures()Ljava/util/EnumSet;

    move-result-object v1

    invoke-direct {v0, v7, v8, v1}, Lcom/twilio/client/impl/DeviceStateInfo;-><init>(Ljava/lang/String;Landroid/app/PendingIntent;Ljava/util/EnumSet;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    const-string v0, "com.twilio.client.impl.Twilio.DEVICES_INFO"

    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    :cond_4
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/UUID;

    iget-object v4, p0, Lcom/twilio/client/impl/TwilioImpl;->devices:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/twilio/client/impl/TwilioImpl;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/twilio/client/impl/TwilioImpl$State;->SHUTDOWN:Lcom/twilio/client/impl/TwilioImpl$State;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/twilio/client/impl/TwilioImpl;->context:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0
.end method


# virtual methods
.method public createDevice(Ljava/lang/String;Lcom/twilio/client/DeviceListener;)Lcom/twilio/client/Device;
    .locals 5

    invoke-virtual {p0}, Lcom/twilio/client/impl/TwilioImpl;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/twilio/client/impl/TwilioImpl;->logger:Lcom/twilio/client/impl/logging/Logger;

    const-string v1, "Twilio.createDevice() called without a successful call to Twilio.initialize()"

    invoke-virtual {v0, v1}, Lcom/twilio/client/impl/logging/Logger;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/twilio/client/impl/DeviceImpl;

    invoke-direct {v0, p0, p1, p2}, Lcom/twilio/client/impl/DeviceImpl;-><init>(Lcom/twilio/client/impl/TwilioImpl;Ljava/lang/String;Lcom/twilio/client/DeviceListener;)V

    iget-object v1, p0, Lcom/twilio/client/impl/TwilioImpl;->devices:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/twilio/client/impl/TwilioImpl;->devices:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/twilio/client/impl/DeviceImpl;->getUUID()Ljava/util/UUID;

    move-result-object v3

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/twilio/client/impl/TwilioImpl;->updateServiceState()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method deviceChanged(Lcom/twilio/client/impl/DeviceImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/twilio/client/impl/TwilioImpl;->updateServiceState()V

    return-void
.end method

.method deviceReleased(Lcom/twilio/client/impl/DeviceImpl;)V
    .locals 3

    iget-object v1, p0, Lcom/twilio/client/impl/TwilioImpl;->devices:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/twilio/client/impl/TwilioImpl;->devices:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/twilio/client/impl/DeviceImpl;->getUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/twilio/client/impl/TwilioImpl;->updateServiceState()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method findDeviceByUUID(Ljava/util/UUID;)Lcom/twilio/client/impl/DeviceImpl;
    .locals 2

    iget-object v1, p0, Lcom/twilio/client/impl/TwilioImpl;->devices:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/twilio/client/impl/TwilioImpl;->devices:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twilio/client/impl/DeviceImpl;

    if-eqz v0, :cond_0

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/twilio/client/impl/TwilioImpl;->devices:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    monitor-exit v1

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getCallControlManager()Lcom/twilio/client/impl/CallControlManager;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/TwilioImpl;->callControlManager:Lcom/twilio/client/impl/CallControlManager;

    return-object v0
.end method

.method getEventStreamFactory()Lcom/twilio/client/impl/net/EventStreamFactory;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/TwilioImpl;->eventStreamFactory:Lcom/twilio/client/impl/net/EventStreamFactory;

    return-object v0
.end method

.method getMediaManager()Lcom/twilio/client/impl/MediaManager;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/TwilioImpl;->mediaManager:Lcom/twilio/client/impl/MediaManager;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "1.2.19"

    return-object v0
.end method

.method hasActiveConnections()Z
    .locals 5

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/twilio/client/impl/TwilioImpl;->devices:Ljava/util/Map;

    monitor-enter v3

    :try_start_0
    iget-object v0, p0, Lcom/twilio/client/impl/TwilioImpl;->devices:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twilio/client/impl/DeviceImpl;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/twilio/client/impl/DeviceImpl;->getCurrentActiveConnection()Lcom/twilio/client/impl/InternalConnection;

    move-result-object v0

    if-eqz v0, :cond_2

    add-int/lit8 v0, v1, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_0
    monitor-exit v3

    if-lez v1, :cond_1

    const/4 v0, 0x1

    :goto_2
    return v0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public initialize(Landroid/content/Context;Lcom/twilio/client/Twilio$InitListener;)V
    .locals 10

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/twilio/client/impl/TwilioImpl;->state:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v3, Lcom/twilio/client/impl/TwilioImpl$State;->UNINITIALIZED:Lcom/twilio/client/impl/TwilioImpl$State;

    sget-object v4, Lcom/twilio/client/impl/TwilioImpl$State;->INITIALIZING:Lcom/twilio/client/impl/TwilioImpl$State;

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Twilio.initialize() already called"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v0}, Lcom/twilio/client/Twilio$InitListener;->onError(Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v2, Lcom/twilio/client/impl/TwilioImpl;->cachedLogLevel:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    sget v2, Lcom/twilio/client/impl/TwilioImpl;->cachedLogLevel:I

    invoke-virtual {p0, v2}, Lcom/twilio/client/impl/TwilioImpl;->setLogLevel(I)V

    :cond_2
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1004

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    new-instance v4, Ljava/util/HashMap;

    iget-object v2, v3, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, v3, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v2, v2

    :goto_1
    invoke-direct {v4, v2}, Ljava/util/HashMap;-><init>(I)V

    iget-object v2, v3, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v5, v3, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v6, v5

    move v2, v0

    :goto_2
    if-ge v2, v6, :cond_4

    aget-object v7, v5, v2

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    move v2, v0

    goto :goto_1

    :cond_4
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    sget-object v6, Lcom/twilio/client/impl/TwilioImpl;->requiredPermissions:[Ljava/lang/String;

    array-length v7, v6

    move v2, v0

    :goto_3
    if-ge v2, v7, :cond_6

    aget-object v8, v6, v2

    invoke-interface {v4, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "Your app is missing the following required permissions:"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    invoke-interface {p2, v0}, Lcom/twilio/client/Twilio$InitListener;->onError(Ljava/lang/Exception;)V

    iget-object v0, p0, Lcom/twilio/client/impl/TwilioImpl;->state:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/twilio/client/impl/TwilioImpl$State;->UNINITIALIZED:Lcom/twilio/client/impl/TwilioImpl$State;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_7
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    invoke-direct {p0, p1}, Lcom/twilio/client/impl/TwilioImpl;->checkRuntimePermissions(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_9

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Runtime access to android.permission.RECORD_AUDIO is not enabled. You must request this permission at runtime with targetSDKVersion 23 or higher."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    iget-object v2, v3, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    if-eqz v2, :cond_c

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    array-length v4, v3

    move v2, v0

    :goto_5
    if-ge v2, v4, :cond_c

    aget-object v5, v3, v2

    iget-object v6, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    const-string v7, "com.twilio.client.TwilioClientService"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    iget-boolean v0, v5, Landroid/content/pm/ServiceInfo;->exported:Z

    if-eqz v0, :cond_a

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "TwilioClientService is exported.  You must add android:exported=\"false\" to the <service> declaration in AndroidManifest.xml"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    move v0, v1

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_c
    if-nez v0, :cond_d

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "com.twilio.client.TwilioClientService is not declared in AndroidManifest.xml"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_d
    sput-object p1, Lcom/twilio/client/impl/TwilioImpl;->context:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    sget-object v2, Lcom/twilio/client/impl/TwilioImpl;->context:Landroid/content/Context;

    const-class v3, Lcom/twilio/client/TwilioClientService;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v2, Lcom/twilio/client/impl/TwilioImpl$1;

    invoke-direct {v2, p0, v0, p2}, Lcom/twilio/client/impl/TwilioImpl$1;-><init>(Lcom/twilio/client/impl/TwilioImpl;Landroid/content/Intent;Lcom/twilio/client/Twilio$InitListener;)V

    iput-object v2, p0, Lcom/twilio/client/impl/TwilioImpl;->serviceConn:Landroid/content/ServiceConnection;

    sget-object v2, Lcom/twilio/client/impl/TwilioImpl;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/twilio/client/impl/TwilioImpl;->serviceConn:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v0, v3, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    sput-object v0, Lcom/twilio/client/impl/TwilioImpl;->context:Landroid/content/Context;

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to start TwilioClientService.  Please ensure it is declared in AndroidManifest.xml"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v0}, Lcom/twilio/client/Twilio$InitListener;->onError(Ljava/lang/Exception;)V

    goto/16 :goto_0
.end method

.method public isInitialized()Z
    .locals 2

    iget-object v0, p0, Lcom/twilio/client/impl/TwilioImpl;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/twilio/client/impl/TwilioImpl$State;->INITIALIZED:Lcom/twilio/client/impl/TwilioImpl$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isInitializing()Z
    .locals 2

    iget-object v0, p0, Lcom/twilio/client/impl/TwilioImpl;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/twilio/client/impl/TwilioImpl$State;->INITIALIZING:Lcom/twilio/client/impl/TwilioImpl$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public listDevices()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/twilio/client/Device;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/twilio/client/impl/TwilioImpl;->devices:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/twilio/client/impl/TwilioImpl;->devices:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v0, p0, Lcom/twilio/client/impl/TwilioImpl;->devices:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twilio/client/impl/DeviceImpl;

    if-eqz v0, :cond_0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/twilio/client/impl/TwilioImpl;->strongDevices:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method onNetworkChanged()V
    .locals 3

    iget-object v1, p0, Lcom/twilio/client/impl/TwilioImpl;->devices:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/twilio/client/impl/TwilioImpl;->devices:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twilio/client/impl/DeviceImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/twilio/client/impl/DeviceImpl;->onNetworkChanged()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method reverseInitialize(Landroid/content/Context;Lcom/twilio/client/TwilioClientService$TwilioBinder;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/twilio/client/TwilioClientService$TwilioBinder;",
            "Ljava/util/List",
            "<",
            "Lcom/twilio/client/impl/DeviceStateInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/twilio/client/impl/TwilioImpl;->state:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/twilio/client/impl/TwilioImpl$State;->UNINITIALIZED:Lcom/twilio/client/impl/TwilioImpl$State;

    sget-object v2, Lcom/twilio/client/impl/TwilioImpl$State;->INITIALIZING:Lcom/twilio/client/impl/TwilioImpl$State;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sput-object p1, Lcom/twilio/client/impl/TwilioImpl;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/twilio/client/impl/TwilioImpl;->twBinder:Lcom/twilio/client/TwilioClientService$TwilioBinder;

    invoke-virtual {p2}, Lcom/twilio/client/TwilioClientService$TwilioBinder;->getCallManager()Lcom/twilio/client/impl/CallControlManager;

    move-result-object v0

    iput-object v0, p0, Lcom/twilio/client/impl/TwilioImpl;->callControlManager:Lcom/twilio/client/impl/CallControlManager;

    iget-object v0, p0, Lcom/twilio/client/impl/TwilioImpl;->callControlManager:Lcom/twilio/client/impl/CallControlManager;

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/twilio/client/TwilioClientService$TwilioBinder;->getEventStreamManager()Lcom/twilio/client/impl/net/EventStreamManager;

    move-result-object v0

    iput-object v0, p0, Lcom/twilio/client/impl/TwilioImpl;->eventStreamFactory:Lcom/twilio/client/impl/net/EventStreamFactory;

    invoke-virtual {p2}, Lcom/twilio/client/TwilioClientService$TwilioBinder;->getMediaManager()Lcom/twilio/client/impl/MediaManager;

    move-result-object v0

    iput-object v0, p0, Lcom/twilio/client/impl/TwilioImpl;->mediaManager:Lcom/twilio/client/impl/MediaManager;

    new-instance v0, Lcom/twilio/client/impl/TwilioImpl$2;

    invoke-direct {v0, p0}, Lcom/twilio/client/impl/TwilioImpl$2;-><init>(Lcom/twilio/client/impl/TwilioImpl;)V

    iput-object v0, p0, Lcom/twilio/client/impl/TwilioImpl;->serviceConn:Landroid/content/ServiceConnection;

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twilio/client/TwilioClientService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/twilio/client/impl/TwilioImpl;->serviceConn:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/twilio/client/impl/TwilioImpl;->logger:Lcom/twilio/client/impl/logging/Logger;

    const-string v1, "Failed to re-initialize SDK: could not bind to service"

    invoke-virtual {v0, v1}, Lcom/twilio/client/impl/logging/Logger;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twilio/client/impl/TwilioImpl;->serviceConn:Landroid/content/ServiceConnection;

    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/twilio/client/TwilioClientService;

    invoke-direct {v1, p1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-interface {v0, v1}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twilio/client/impl/TwilioImpl;->serviceConn:Landroid/content/ServiceConnection;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/twilio/client/impl/TwilioImpl;->state:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/twilio/client/impl/TwilioImpl$State;->INITIALIZED:Lcom/twilio/client/impl/TwilioImpl$State;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/twilio/client/impl/TwilioImpl;->devices:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/twilio/client/impl/TwilioImpl;->strongDevices:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twilio/client/impl/DeviceStateInfo;

    new-instance v3, Lcom/twilio/client/impl/DeviceImpl;

    invoke-direct {v3, p0, v0}, Lcom/twilio/client/impl/DeviceImpl;-><init>(Lcom/twilio/client/impl/TwilioImpl;Lcom/twilio/client/impl/DeviceStateInfo;)V

    iget-object v0, p0, Lcom/twilio/client/impl/TwilioImpl;->devices:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/twilio/client/impl/DeviceImpl;->getUUID()Ljava/util/UUID;

    move-result-object v4

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/twilio/client/impl/TwilioImpl;->strongDevices:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p2}, Lcom/twilio/client/TwilioClientService$TwilioBinder;->getError()Ljava/lang/Exception;

    move-result-object v0

    sget-object v1, Lcom/twilio/client/impl/TwilioImpl;->logger:Lcom/twilio/client/impl/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to re-initialize SDK: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/twilio/client/impl/logging/Logger;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twilio/client/impl/TwilioImpl;->state:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/twilio/client/impl/TwilioImpl$State;->UNINITIALIZED:Lcom/twilio/client/impl/TwilioImpl$State;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_4
    const-string v0, "(unknown error)"

    goto :goto_2
.end method

.method public setLogLevel(I)V
    .locals 1

    sput p1, Lcom/twilio/client/impl/TwilioImpl;->cachedLogLevel:I

    invoke-static {p1}, Lcom/twilio/client/impl/logging/Logger;->setLogLevel(I)V

    invoke-virtual {p0}, Lcom/twilio/client/impl/TwilioImpl;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/twilio/client/impl/TwilioImpl;->getCallControlManager()Lcom/twilio/client/impl/CallControlManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/twilio/client/impl/CallControlManager;->setLogLevel(I)V

    :cond_0
    return-void
.end method

.method public setMetrics(Z)V
    .locals 0

    sput-boolean p1, Lcom/twilio/client/impl/TwilioImpl;->enableMetrics:Z

    return-void
.end method

.method public shutdown()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/twilio/client/impl/TwilioImpl;->state:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/twilio/client/impl/TwilioImpl$State;->INITIALIZED:Lcom/twilio/client/impl/TwilioImpl$State;

    sget-object v2, Lcom/twilio/client/impl/TwilioImpl$State;->SHUTDOWN:Lcom/twilio/client/impl/TwilioImpl$State;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/twilio/client/impl/TwilioImpl;->isInitializing()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/twilio/client/impl/TwilioImpl;->logger:Lcom/twilio/client/impl/logging/Logger;

    const-string v1, "Twilio.shutdown() called before Twilio.initialize() has finished"

    invoke-virtual {v0, v1}, Lcom/twilio/client/impl/logging/Logger;->w(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/twilio/client/impl/TwilioImpl;->logger:Lcom/twilio/client/impl/logging/Logger;

    const-string v1, "Twilio.shutdown() called before Twilio.initialize()"

    invoke-virtual {v0, v1}, Lcom/twilio/client/impl/logging/Logger;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/twilio/client/impl/TwilioImpl;->devices:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/twilio/client/impl/TwilioImpl;->devices:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twilio/client/impl/DeviceImpl;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/twilio/client/impl/DeviceImpl;->releaseResources()V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/twilio/client/impl/TwilioImpl;->devices:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-object v4, p0, Lcom/twilio/client/impl/TwilioImpl;->callControlManager:Lcom/twilio/client/impl/CallControlManager;

    iput-object v4, p0, Lcom/twilio/client/impl/TwilioImpl;->eventStreamFactory:Lcom/twilio/client/impl/net/EventStreamFactory;

    iput-object v4, p0, Lcom/twilio/client/impl/TwilioImpl;->mediaManager:Lcom/twilio/client/impl/MediaManager;

    iput-object v4, p0, Lcom/twilio/client/impl/TwilioImpl;->twBinder:Lcom/twilio/client/TwilioClientService$TwilioBinder;

    sget-object v0, Lcom/twilio/client/impl/TwilioImpl;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/twilio/client/impl/TwilioImpl;->serviceConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    sget-object v0, Lcom/twilio/client/impl/TwilioImpl;->context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/twilio/client/impl/TwilioImpl;->context:Landroid/content/Context;

    const-class v3, Lcom/twilio/client/TwilioClientService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    iput-object v4, p0, Lcom/twilio/client/impl/TwilioImpl;->serviceConn:Landroid/content/ServiceConnection;

    sput-object v4, Lcom/twilio/client/impl/TwilioImpl;->context:Landroid/content/Context;

    invoke-static {}, Lcom/twilio/client/impl/net/HttpHelper;->shutdown()V

    sput-object v4, Lcom/twilio/client/impl/TwilioImpl;->instance:Lcom/twilio/client/impl/TwilioImpl;

    iget-object v0, p0, Lcom/twilio/client/impl/TwilioImpl;->state:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/twilio/client/impl/TwilioImpl$State;->UNINITIALIZED:Lcom/twilio/client/impl/TwilioImpl$State;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    const/4 v0, 0x6

    invoke-static {v0}, Lcom/twilio/client/impl/logging/Logger;->setLogLevel(I)V

    goto :goto_0
.end method
