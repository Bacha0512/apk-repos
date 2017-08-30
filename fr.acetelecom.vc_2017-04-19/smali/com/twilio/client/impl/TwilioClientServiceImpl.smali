.class public Lcom/twilio/client/impl/TwilioClientServiceImpl;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twilio/client/impl/TwilioClientServiceImpl$ConnectivityReceiver;
    }
.end annotation


# static fields
.field private static final logger:Lcom/twilio/client/impl/logging/Logger;


# instance fields
.field private callManager:Lcom/twilio/client/impl/CallControlManager;

.field private callManagerError:Ljava/lang/Exception;

.field private connectivityReceiver:Lcom/twilio/client/impl/TwilioClientServiceImpl$ConnectivityReceiver;

.field private context:Landroid/content/Context;

.field private eventStreamManager:Lcom/twilio/client/impl/net/EventStreamManager;

.field private mediaManager:Lcom/twilio/client/impl/MediaManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/twilio/client/TwilioClientService;

    invoke-static {v0}, Lcom/twilio/client/impl/logging/Logger;->getLogger(Ljava/lang/Class;)Lcom/twilio/client/impl/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/twilio/client/impl/TwilioClientServiceImpl;->logger:Lcom/twilio/client/impl/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/twilio/client/impl/TwilioClientServiceImpl;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/TwilioClientServiceImpl;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()Lcom/twilio/client/impl/logging/Logger;
    .locals 1

    sget-object v0, Lcom/twilio/client/impl/TwilioClientServiceImpl;->logger:Lcom/twilio/client/impl/logging/Logger;

    return-object v0
.end method

.method static synthetic access$200(Lcom/twilio/client/impl/TwilioClientServiceImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/twilio/client/impl/TwilioClientServiceImpl;->needsReconnect()V

    return-void
.end method

.method private needsReconnect()V
    .locals 2

    sget-object v0, Lcom/twilio/client/impl/TwilioClientServiceImpl;->logger:Lcom/twilio/client/impl/logging/Logger;

    const-string v1, "Network change; doing reconnect"

    invoke-virtual {v0, v1}, Lcom/twilio/client/impl/logging/Logger;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twilio/client/impl/TwilioClientServiceImpl;->callManager:Lcom/twilio/client/impl/CallControlManager;

    invoke-virtual {v0}, Lcom/twilio/client/impl/CallControlManager;->onNetworkChanged()V

    iget-object v0, p0, Lcom/twilio/client/impl/TwilioClientServiceImpl;->eventStreamManager:Lcom/twilio/client/impl/net/EventStreamManager;

    invoke-virtual {v0}, Lcom/twilio/client/impl/net/EventStreamManager;->reconnectAll()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/twilio/client/impl/TwilioClientServiceImpl;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/twilio/client/impl/TwilioClientServiceImpl;->connectivityReceiver:Lcom/twilio/client/impl/TwilioClientServiceImpl$ConnectivityReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v2, p0, Lcom/twilio/client/impl/TwilioClientServiceImpl;->connectivityReceiver:Lcom/twilio/client/impl/TwilioClientServiceImpl$ConnectivityReceiver;

    invoke-static {}, Lcom/twilio/client/impl/net/EventStreamManager;->destroy()V

    iput-object v2, p0, Lcom/twilio/client/impl/TwilioClientServiceImpl;->eventStreamManager:Lcom/twilio/client/impl/net/EventStreamManager;

    invoke-static {}, Lcom/twilio/client/impl/MediaManager;->destroy()V

    iput-object v2, p0, Lcom/twilio/client/impl/TwilioClientServiceImpl;->mediaManager:Lcom/twilio/client/impl/MediaManager;

    invoke-static {}, Lcom/twilio/client/impl/CallControlManager;->destroy()V

    iput-object v2, p0, Lcom/twilio/client/impl/TwilioClientServiceImpl;->callManager:Lcom/twilio/client/impl/CallControlManager;

    iput-object v2, p0, Lcom/twilio/client/impl/TwilioClientServiceImpl;->callManagerError:Ljava/lang/Exception;

    iput-object v2, p0, Lcom/twilio/client/impl/TwilioClientServiceImpl;->context:Landroid/content/Context;

    return-void
.end method

.method public getCallManager()Lcom/twilio/client/impl/CallControlManager;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/TwilioClientServiceImpl;->callManager:Lcom/twilio/client/impl/CallControlManager;

    return-object v0
.end method

.method public getCallManagerError()Ljava/lang/Exception;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/TwilioClientServiceImpl;->callManagerError:Ljava/lang/Exception;

    return-object v0
.end method

.method public getEventStreamManager()Lcom/twilio/client/impl/net/EventStreamManager;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/TwilioClientServiceImpl;->eventStreamManager:Lcom/twilio/client/impl/net/EventStreamManager;

    return-object v0
.end method

.method public getMediaManager()Lcom/twilio/client/impl/MediaManager;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/TwilioClientServiceImpl;->mediaManager:Lcom/twilio/client/impl/MediaManager;

    return-object v0
.end method

.method public initialize(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/twilio/client/impl/TwilioClientServiceImpl;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Service initialize() double-called"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lcom/twilio/client/impl/TwilioClientServiceImpl;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/twilio/client/impl/TwilioClientServiceImpl;->context:Landroid/content/Context;

    const-string v1, "client"

    invoke-static {v0, v1}, Lcom/twilio/client/impl/ReLinker;->loadLibrary(Landroid/content/Context;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/twilio/client/impl/CallControlManager;->getInstance()Lcom/twilio/client/impl/CallControlManager;

    move-result-object v0

    iput-object v0, p0, Lcom/twilio/client/impl/TwilioClientServiceImpl;->callManager:Lcom/twilio/client/impl/CallControlManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Lcom/twilio/client/impl/net/EventStreamManager;->getInstance()Lcom/twilio/client/impl/net/EventStreamManager;

    move-result-object v0

    iput-object v0, p0, Lcom/twilio/client/impl/TwilioClientServiceImpl;->eventStreamManager:Lcom/twilio/client/impl/net/EventStreamManager;

    invoke-static {p1}, Lcom/twilio/client/impl/MediaManager;->initialize(Landroid/content/Context;)Lcom/twilio/client/impl/MediaManager;

    move-result-object v0

    iput-object v0, p0, Lcom/twilio/client/impl/TwilioClientServiceImpl;->mediaManager:Lcom/twilio/client/impl/MediaManager;

    new-instance v0, Lcom/twilio/client/impl/TwilioClientServiceImpl$ConnectivityReceiver;

    invoke-direct {v0, p0}, Lcom/twilio/client/impl/TwilioClientServiceImpl$ConnectivityReceiver;-><init>(Lcom/twilio/client/impl/TwilioClientServiceImpl;)V

    iput-object v0, p0, Lcom/twilio/client/impl/TwilioClientServiceImpl;->connectivityReceiver:Lcom/twilio/client/impl/TwilioClientServiceImpl$ConnectivityReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/twilio/client/impl/TwilioClientServiceImpl;->connectivityReceiver:Lcom/twilio/client/impl/TwilioClientServiceImpl$ConnectivityReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    :catch_0
    move-exception v0

    iput-object v0, p0, Lcom/twilio/client/impl/TwilioClientServiceImpl;->callManagerError:Ljava/lang/Exception;

    goto :goto_0
.end method

.method public restoreState(Landroid/content/Intent;Lcom/twilio/client/TwilioClientService$TwilioBinder;)V
    .locals 7

    invoke-static {}, Lcom/twilio/client/impl/TwilioImpl;->getInstance()Lcom/twilio/client/impl/TwilioImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twilio/client/impl/TwilioImpl;->isInitializing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Lcom/twilio/client/impl/TwilioImpl;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/twilio/client/impl/TwilioClientServiceImpl;->logger:Lcom/twilio/client/impl/logging/Logger;

    const-string v2, "attempting to restore device state"

    invoke-virtual {v0, v2}, Lcom/twilio/client/impl/logging/Logger;->i(Ljava/lang/String;)V

    const-string v0, "com.twilio.client.impl.Twilio.DEVICES_INFO"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/twilio/client/impl/TwilioClientServiceImpl;->logger:Lcom/twilio/client/impl/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "got "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " parcelable stuffs"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/twilio/client/impl/logging/Logger;->d(Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    sget-object v4, Lcom/twilio/client/impl/TwilioClientServiceImpl;->logger:Lcom/twilio/client/impl/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parcelable is a "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/twilio/client/impl/logging/Logger;->d(Ljava/lang/String;)V

    instance-of v4, v0, Lcom/twilio/client/impl/DeviceStateInfo;

    if-eqz v4, :cond_2

    check-cast v0, Lcom/twilio/client/impl/DeviceStateInfo;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/twilio/client/impl/TwilioClientServiceImpl;->logger:Lcom/twilio/client/impl/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "got list of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " devices"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/twilio/client/impl/logging/Logger;->i(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/twilio/client/impl/TwilioClientServiceImpl;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v1, v0, p2, v2}, Lcom/twilio/client/impl/TwilioImpl;->reverseInitialize(Landroid/content/Context;Lcom/twilio/client/TwilioClientService$TwilioBinder;Ljava/util/List;)V

    goto/16 :goto_0
.end method
