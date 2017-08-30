.class public Lorg/abtollc/service/ABTOSipService;
.super Landroid/app/Service;
.source "ABTOSipService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/abtollc/service/ABTOSipService$ReturnRunnable;,
        Lorg/abtollc/service/ABTOSipService$SipRunnable;,
        Lorg/abtollc/service/ABTOSipService$SameThreadException;,
        Lorg/abtollc/service/ABTOSipService$FinalizeDestroyRunnable;,
        Lorg/abtollc/service/ABTOSipService$DestroyRunnable;,
        Lorg/abtollc/service/ABTOSipService$SyncRestartRunnable;,
        Lorg/abtollc/service/ABTOSipService$RestartRunnable;,
        Lorg/abtollc/service/ABTOSipService$SyncStopRunnable;,
        Lorg/abtollc/service/ABTOSipService$StopRunnable;,
        Lorg/abtollc/service/ABTOSipService$SyncStartRunnable;,
        Lorg/abtollc/service/ABTOSipService$StartRunnable;,
        Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;,
        Lorg/abtollc/service/ABTOSipService$ToCall;,
        Lorg/abtollc/service/ABTOSipService$ServiceHandler;,
        Lorg/abtollc/service/ABTOSipService$ServicePhoneStateReceiver;,
        Lorg/abtollc/service/ABTOSipService$AccountStatusContentObserver;
    }
.end annotation


# static fields
.field public static final ACTION_SET_MESSENGER:Ljava/lang/String; = "org.abtollc.action.SET_MESSENGER"

.field public static final EXTRA_MESSENGER:Ljava/lang/String; = "EXTRA_MESSENGER"

.field public static final SERVICE_START_STICKY:Ljava/lang/String; = "SERVICE_START_STICKY"

.field private static final THIS_FILE:Ljava/lang/String; = "SIP SRV"

.field private static final TOAST_MESSAGE:I

.field private static executorThread:Landroid/os/HandlerThread;

.field private static pjService:Lorg/abtollc/voip/SipService;

.field private static singleton:Lorg/abtollc/service/ABTOSipService;


# instance fields
.field private activitiesForOutgoing:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private autoAcceptCurrent:Z

.field private final binder:Lorg/abtollc/api/ISipService$Stub;

.field private final binderConfiguration:Lorg/abtollc/api/ISipConfiguration$Stub;

.field private deferedUnregisterForOutgoing:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private deviceStateReceiver:Lorg/abtollc/service/receiver/DynamicReceiver4;

.field private hasSomeActiveAccount:Z

.field private holdResources:Z

.field private mExecutor:Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;

.field private mMessengers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/os/Messenger;",
            ">;"
        }
    .end annotation
.end field

.field private phoneConnectivityReceiver:Lorg/abtollc/service/ABTOSipService$ServicePhoneStateReceiver;

.field private prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;

.field private presence:Lorg/abtollc/api/SipManager$PresenceStatus;

.field private serviceHandler:Landroid/os/Handler;

.field private serviceReceiver:Landroid/content/BroadcastReceiver;

.field private sipWakeLock:Lorg/abtollc/service/SipWakeLock;

.field private statusObserver:Lorg/abtollc/service/ABTOSipService$AccountStatusContentObserver;

.field public supportMultipleCalls:Z

.field private telephonyManager:Landroid/telephony/TelephonyManager;

.field private wakeLock:Landroid/os/PowerManager$WakeLock;

.field private wifiLock:Landroid/net/wifi/WifiManager$WifiLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    sput-object v0, Lorg/abtollc/service/ABTOSipService;->singleton:Lorg/abtollc/service/ABTOSipService;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 81
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 90
    iput-boolean v1, p0, Lorg/abtollc/service/ABTOSipService;->autoAcceptCurrent:Z

    .line 91
    iput-boolean v1, p0, Lorg/abtollc/service/ABTOSipService;->supportMultipleCalls:Z

    .line 104
    new-instance v0, Lorg/abtollc/service/ABTOSipService$1;

    invoke-direct {v0, p0}, Lorg/abtollc/service/ABTOSipService$1;-><init>(Lorg/abtollc/service/ABTOSipService;)V

    iput-object v0, p0, Lorg/abtollc/service/ABTOSipService;->binder:Lorg/abtollc/api/ISipService$Stub;

    .line 1001
    new-instance v0, Lorg/abtollc/service/ABTOSipService$2;

    invoke-direct {v0, p0}, Lorg/abtollc/service/ABTOSipService$2;-><init>(Lorg/abtollc/service/ABTOSipService;)V

    iput-object v0, p0, Lorg/abtollc/service/ABTOSipService;->binderConfiguration:Lorg/abtollc/api/ISipConfiguration$Stub;

    .line 1520
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/abtollc/service/ABTOSipService;->statusObserver:Lorg/abtollc/service/ABTOSipService$AccountStatusContentObserver;

    .line 1849
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/abtollc/service/ABTOSipService;->activitiesForOutgoing:Ljava/util/List;

    .line 1850
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/abtollc/service/ABTOSipService;->deferedUnregisterForOutgoing:Ljava/util/List;

    .line 2012
    iput-boolean v1, p0, Lorg/abtollc/service/ABTOSipService;->hasSomeActiveAccount:Z

    .line 2277
    iput-boolean v1, p0, Lorg/abtollc/service/ABTOSipService;->holdResources:Z

    .line 2340
    new-instance v0, Lorg/abtollc/service/ABTOSipService$ServiceHandler;

    invoke-direct {v0, p0}, Lorg/abtollc/service/ABTOSipService$ServiceHandler;-><init>(Lorg/abtollc/service/ABTOSipService;)V

    iput-object v0, p0, Lorg/abtollc/service/ABTOSipService;->serviceHandler:Landroid/os/Handler;

    .line 2700
    sget-object v0, Lorg/abtollc/api/SipManager$PresenceStatus;->ONLINE:Lorg/abtollc/api/SipManager$PresenceStatus;

    iput-object v0, p0, Lorg/abtollc/service/ABTOSipService;->presence:Lorg/abtollc/api/SipManager$PresenceStatus;

    return-void
.end method

.method static synthetic access$000()Lorg/abtollc/voip/SipService;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lorg/abtollc/service/ABTOSipService;->pjService:Lorg/abtollc/voip/SipService;

    return-object v0
.end method

.method static synthetic access$100(Lorg/abtollc/service/ABTOSipService;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/abtollc/service/ABTOSipService;
    .param p1, "x1"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/abtollc/service/ABTOSipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lorg/abtollc/service/ABTOSipService;->unregisterAllAccounts(Z)V

    return-void
.end method

.method static synthetic access$1002(Lorg/abtollc/service/ABTOSipService;Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;)Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;
    .locals 0
    .param p0, "x0"    # Lorg/abtollc/service/ABTOSipService;
    .param p1, "x1"    # Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;

    .prologue
    .line 81
    iput-object p1, p0, Lorg/abtollc/service/ABTOSipService;->mExecutor:Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;

    return-object p1
.end method

.method static synthetic access$1100()Landroid/os/HandlerThread;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lorg/abtollc/service/ABTOSipService;->executorThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic access$1102(Landroid/os/HandlerThread;)Landroid/os/HandlerThread;
    .locals 0
    .param p0, "x0"    # Landroid/os/HandlerThread;

    .prologue
    .line 81
    sput-object p0, Lorg/abtollc/service/ABTOSipService;->executorThread:Landroid/os/HandlerThread;

    return-object p0
.end method

.method static synthetic access$200(Lorg/abtollc/service/ABTOSipService;)V
    .locals 0
    .param p0, "x0"    # Lorg/abtollc/service/ABTOSipService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/abtollc/service/ABTOSipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 81
    invoke-direct {p0}, Lorg/abtollc/service/ABTOSipService;->reAddAllAccounts()V

    return-void
.end method

.method static synthetic access$300(Lorg/abtollc/service/ABTOSipService;)Z
    .locals 1
    .param p0, "x0"    # Lorg/abtollc/service/ABTOSipService;

    .prologue
    .line 81
    invoke-direct {p0}, Lorg/abtollc/service/ABTOSipService;->isValidNetworkConnection()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lorg/abtollc/service/ABTOSipService;)Lorg/abtollc/utils/PreferencesProviderWrapper;
    .locals 1
    .param p0, "x0"    # Lorg/abtollc/service/ABTOSipService;

    .prologue
    .line 81
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;

    return-object v0
.end method

.method static synthetic access$500(Lorg/abtollc/service/ABTOSipService;)Lorg/abtollc/api/SipManager$PresenceStatus;
    .locals 1
    .param p0, "x0"    # Lorg/abtollc/service/ABTOSipService;

    .prologue
    .line 81
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService;->presence:Lorg/abtollc/api/SipManager$PresenceStatus;

    return-object v0
.end method

.method static synthetic access$502(Lorg/abtollc/service/ABTOSipService;Lorg/abtollc/api/SipManager$PresenceStatus;)Lorg/abtollc/api/SipManager$PresenceStatus;
    .locals 0
    .param p0, "x0"    # Lorg/abtollc/service/ABTOSipService;
    .param p1, "x1"    # Lorg/abtollc/api/SipManager$PresenceStatus;

    .prologue
    .line 81
    iput-object p1, p0, Lorg/abtollc/service/ABTOSipService;->presence:Lorg/abtollc/api/SipManager$PresenceStatus;

    return-object p1
.end method

.method static synthetic access$700()Landroid/os/Looper;
    .locals 1

    .prologue
    .line 81
    invoke-static {}, Lorg/abtollc/service/ABTOSipService;->createLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lorg/abtollc/service/ABTOSipService;)Lorg/abtollc/service/SipWakeLock;
    .locals 1
    .param p0, "x0"    # Lorg/abtollc/service/ABTOSipService;

    .prologue
    .line 81
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService;->sipWakeLock:Lorg/abtollc/service/SipWakeLock;

    return-object v0
.end method

.method static synthetic access$900(Lorg/abtollc/service/ABTOSipService;)V
    .locals 0
    .param p0, "x0"    # Lorg/abtollc/service/ABTOSipService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/abtollc/service/ABTOSipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 81
    invoke-direct {p0}, Lorg/abtollc/service/ABTOSipService;->startSipStack()V

    return-void
.end method

.method private declared-synchronized acquireResources()V
    .locals 7

    .prologue
    .line 2284
    monitor-enter p0

    :try_start_0
    iget-boolean v5, p0, Lorg/abtollc/service/ABTOSipService;->holdResources:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_0

    .line 2326
    :goto_0
    monitor-exit p0

    return-void

    .line 2289
    :cond_0
    :try_start_1
    iget-object v5, p0, Lorg/abtollc/service/ABTOSipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;

    const-string v6, "use_partial_wake_lock"

    invoke-virtual {v5, v6}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2290
    const-string v5, "power"

    invoke-virtual {p0, v5}, Lorg/abtollc/service/ABTOSipService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 2291
    .local v2, "pman":Landroid/os/PowerManager;
    iget-object v5, p0, Lorg/abtollc/service/ABTOSipService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v5, :cond_1

    .line 2292
    const/4 v5, 0x1

    const-string v6, "org.abtollc.SipService"

    invoke-virtual {v2, v5, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, p0, Lorg/abtollc/service/ABTOSipService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 2293
    iget-object v5, p0, Lorg/abtollc/service/ABTOSipService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 2296
    :cond_1
    iget-object v5, p0, Lorg/abtollc/service/ABTOSipService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v5

    if-nez v5, :cond_2

    .line 2297
    iget-object v5, p0, Lorg/abtollc/service/ABTOSipService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2302
    .end local v2    # "pman":Landroid/os/PowerManager;
    :cond_2
    const-string v5, "wifi"

    invoke-virtual {p0, v5}, Lorg/abtollc/service/ABTOSipService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    .line 2303
    .local v4, "wman":Landroid/net/wifi/WifiManager;
    iget-object v5, p0, Lorg/abtollc/service/ABTOSipService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-nez v5, :cond_4

    .line 2304
    const/4 v1, 0x1

    .line 2305
    .local v1, "mode":I
    const/16 v5, 0x9

    invoke-static {v5}, Lorg/abtollc/utils/Compatibility;->isCompatible(I)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lorg/abtollc/service/ABTOSipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;

    const-string v6, "lock_wifi_perfs"

    .line 2306
    invoke-virtual {v5, v6}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2307
    const/4 v1, 0x3

    .line 2309
    :cond_3
    const-string v5, "org.abtollc.SipService"

    invoke-virtual {v4, v1, v5}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v5

    iput-object v5, p0, Lorg/abtollc/service/ABTOSipService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 2310
    iget-object v5, p0, Lorg/abtollc/service/ABTOSipService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiManager$WifiLock;->setReferenceCounted(Z)V

    .line 2312
    .end local v1    # "mode":I
    :cond_4
    iget-object v5, p0, Lorg/abtollc/service/ABTOSipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;

    const-string v6, "lock_wifi"

    invoke-virtual {v5, v6}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lorg/abtollc/service/ABTOSipService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v5

    if-nez v5, :cond_6

    .line 2313
    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    .line 2314
    .local v3, "winfo":Landroid/net/wifi/WifiInfo;
    if-eqz v3, :cond_6

    .line 2315
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v5

    invoke-static {v5}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    .line 2318
    .local v0, "dstate":Landroid/net/NetworkInfo$DetailedState;
    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-eq v0, v5, :cond_5

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v0, v5, :cond_6

    .line 2319
    :cond_5
    iget-object v5, p0, Lorg/abtollc/service/ABTOSipService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v5

    if-nez v5, :cond_6

    .line 2320
    iget-object v5, p0, Lorg/abtollc/service/ABTOSipService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 2325
    .end local v0    # "dstate":Landroid/net/NetworkInfo$DetailedState;
    .end local v3    # "winfo":Landroid/net/wifi/WifiInfo;
    :cond_6
    const/4 v5, 0x1

    iput-boolean v5, p0, Lorg/abtollc/service/ABTOSipService;->holdResources:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 2284
    .end local v4    # "wman":Landroid/net/wifi/WifiManager;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method private static createLooper()Landroid/os/Looper;
    .locals 2

    .prologue
    .line 2481
    sget-object v0, Lorg/abtollc/service/ABTOSipService;->executorThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 2482
    const-string v0, "SIP SRV"

    const-string v1, "Creating new handler thread"

    invoke-static {v0, v1}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2483
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SipService.Executor"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/abtollc/service/ABTOSipService;->executorThread:Landroid/os/HandlerThread;

    .line 2484
    sget-object v0, Lorg/abtollc/service/ABTOSipService;->executorThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 2487
    :cond_0
    sget-object v0, Lorg/abtollc/service/ABTOSipService;->executorThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized createService()V
    .locals 4

    .prologue
    .line 1592
    monitor-enter p0

    :try_start_0
    const-string v1, "SIP SRV"

    const-string v2, "Create SIP Service"

    invoke-static {v1, v2}, Lorg/abtollc/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1593
    new-instance v1, Lorg/abtollc/utils/PreferencesProviderWrapper;

    invoke-direct {v1, p0}, Lorg/abtollc/utils/PreferencesProviderWrapper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/abtollc/service/ABTOSipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;

    .line 1594
    iget-object v1, p0, Lorg/abtollc/service/ABTOSipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;

    invoke-virtual {v1}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getLogLevel()I

    move-result v1

    invoke-static {v1}, Lorg/abtollc/utils/Log;->setLogLevel(I)V

    .line 1596
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lorg/abtollc/service/ABTOSipService;->mMessengers:Ljava/util/Set;

    .line 1598
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lorg/abtollc/service/ABTOSipService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lorg/abtollc/service/ABTOSipService;->telephonyManager:Landroid/telephony/TelephonyManager;

    .line 1603
    new-instance v2, Lorg/abtollc/service/SipWakeLock;

    const-string v1, "power"

    invoke-virtual {p0, v1}, Lorg/abtollc/service/ABTOSipService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    invoke-direct {v2, v1}, Lorg/abtollc/service/SipWakeLock;-><init>(Landroid/os/PowerManager;)V

    iput-object v2, p0, Lorg/abtollc/service/ABTOSipService;->sipWakeLock:Lorg/abtollc/service/SipWakeLock;

    .line 1605
    iget-object v1, p0, Lorg/abtollc/service/ABTOSipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;

    const-string v2, "has_already_setup_service"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;Z)Z

    move-result v0

    .line 1607
    .local v0, "hasSetup":Z
    const-string v1, "SIP SRV"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Service has been setup ? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1611
    if-nez v0, :cond_0

    .line 1612
    const-string v1, "SIP SRV"

    const-string v2, "RESET SETTINGS !!!!"

    invoke-static {v1, v2}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1613
    iget-object v1, p0, Lorg/abtollc/service/ABTOSipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;

    invoke-virtual {v1}, Lorg/abtollc/utils/PreferencesProviderWrapper;->resetAllDefaultValues()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1615
    :cond_0
    monitor-exit p0

    return-void

    .line 1592
    .end local v0    # "hasSetup":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public static getSingleton()Lorg/abtollc/service/ABTOSipService;
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lorg/abtollc/service/ABTOSipService;->singleton:Lorg/abtollc/service/ABTOSipService;

    return-object v0
.end method

.method private isValidNetworkConnection()Z
    .locals 3

    .prologue
    .line 2099
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Lorg/abtollc/service/ABTOSipService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 2100
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 2101
    .local v1, "netInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lorg/abtollc/service/ABTOSipService;->isConnectivityValid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2102
    const/4 v2, 0x1

    .line 2104
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private loadStack()Z
    .locals 1

    .prologue
    .line 1892
    sget-object v0, Lorg/abtollc/service/ABTOSipService;->pjService:Lorg/abtollc/voip/SipService;

    if-nez v0, :cond_0

    .line 1893
    new-instance v0, Lorg/abtollc/voip/SipService;

    invoke-direct {v0}, Lorg/abtollc/voip/SipService;-><init>()V

    sput-object v0, Lorg/abtollc/service/ABTOSipService;->pjService:Lorg/abtollc/voip/SipService;

    .line 1895
    :cond_0
    sget-object v0, Lorg/abtollc/service/ABTOSipService;->pjService:Lorg/abtollc/voip/SipService;

    invoke-virtual {v0, p0}, Lorg/abtollc/voip/SipService;->setService(Lorg/abtollc/service/ABTOSipService;)V

    .line 1897
    sget-object v0, Lorg/abtollc/service/ABTOSipService;->pjService:Lorg/abtollc/voip/SipService;

    invoke-virtual {v0}, Lorg/abtollc/voip/SipService;->tryToLoadStack()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1898
    invoke-direct {p0}, Lorg/abtollc/service/ABTOSipService;->registerBroadcasts()V

    .line 1899
    const/4 v0, 0x1

    .line 1901
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private reAddAllAccounts()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/abtollc/service/ABTOSipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 2149
    const-string v0, "SIP SRV"

    const-string v1, "RE REGISTER ALL ACCOUNTS"

    invoke-static {v0, v1}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2150
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/abtollc/service/ABTOSipService;->unregisterAllAccounts(Z)V

    .line 2151
    invoke-virtual {p0}, Lorg/abtollc/service/ABTOSipService;->addAllAccounts()V

    .line 2152
    return-void
.end method

.method private registerBroadcasts()V
    .locals 5

    .prologue
    .line 1668
    iget-object v1, p0, Lorg/abtollc/service/ABTOSipService;->deviceStateReceiver:Lorg/abtollc/service/receiver/DynamicReceiver4;

    if-nez v1, :cond_0

    .line 1669
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1670
    .local v0, "intentfilter":Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1671
    const-string v1, "org.abtollc.service.ACCOUNT_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1672
    const-string v1, "org.abtollc.service.ACTION_SIP_CAN_BE_STOPPED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1673
    const-string v1, "org.abtollc.service.ACTION_SIP_REQUEST_RESTART"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1674
    const-string v1, "vpn.connectivity"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1675
    const/4 v1, 0x5

    invoke-static {v1}, Lorg/abtollc/utils/Compatibility;->isCompatible(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1676
    new-instance v1, Lorg/abtollc/service/receiver/DynamicReceiver5;

    invoke-direct {v1, p0}, Lorg/abtollc/service/receiver/DynamicReceiver5;-><init>(Lorg/abtollc/service/ABTOSipService;)V

    iput-object v1, p0, Lorg/abtollc/service/ABTOSipService;->deviceStateReceiver:Lorg/abtollc/service/receiver/DynamicReceiver4;

    .line 1680
    :goto_0
    const-string v1, "SIP SRV"

    const-string v2, "Listen for Device State"

    invoke-static {v1, v2}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1681
    iget-object v1, p0, Lorg/abtollc/service/ABTOSipService;->deviceStateReceiver:Lorg/abtollc/service/receiver/DynamicReceiver4;

    invoke-virtual {p0, v1, v0}, Lorg/abtollc/service/ABTOSipService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1682
    iget-object v1, p0, Lorg/abtollc/service/ABTOSipService;->deviceStateReceiver:Lorg/abtollc/service/receiver/DynamicReceiver4;

    invoke-virtual {v1}, Lorg/abtollc/service/receiver/DynamicReceiver4;->startMonitoring()V

    .line 1685
    .end local v0    # "intentfilter":Landroid/content/IntentFilter;
    :cond_0
    iget-object v1, p0, Lorg/abtollc/service/ABTOSipService;->phoneConnectivityReceiver:Lorg/abtollc/service/ABTOSipService$ServicePhoneStateReceiver;

    if-nez v1, :cond_1

    .line 1686
    const-string v1, "SIP SRV"

    const-string v2, "Listen for phone state "

    invoke-static {v1, v2}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1687
    new-instance v1, Lorg/abtollc/service/ABTOSipService$ServicePhoneStateReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/abtollc/service/ABTOSipService$ServicePhoneStateReceiver;-><init>(Lorg/abtollc/service/ABTOSipService;Lorg/abtollc/service/ABTOSipService$1;)V

    iput-object v1, p0, Lorg/abtollc/service/ABTOSipService;->phoneConnectivityReceiver:Lorg/abtollc/service/ABTOSipService$ServicePhoneStateReceiver;

    .line 1689
    iget-object v1, p0, Lorg/abtollc/service/ABTOSipService;->telephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lorg/abtollc/service/ABTOSipService;->phoneConnectivityReceiver:Lorg/abtollc/service/ABTOSipService$ServicePhoneStateReceiver;

    const/16 v3, 0x20

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 1698
    :cond_1
    iget-object v1, p0, Lorg/abtollc/service/ABTOSipService;->statusObserver:Lorg/abtollc/service/ABTOSipService$AccountStatusContentObserver;

    if-nez v1, :cond_2

    .line 1699
    new-instance v1, Lorg/abtollc/service/ABTOSipService$AccountStatusContentObserver;

    iget-object v2, p0, Lorg/abtollc/service/ABTOSipService;->serviceHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lorg/abtollc/service/ABTOSipService$AccountStatusContentObserver;-><init>(Lorg/abtollc/service/ABTOSipService;Landroid/os/Handler;)V

    iput-object v1, p0, Lorg/abtollc/service/ABTOSipService;->statusObserver:Lorg/abtollc/service/ABTOSipService$AccountStatusContentObserver;

    .line 1700
    invoke-virtual {p0}, Lorg/abtollc/service/ABTOSipService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lorg/abtollc/api/SipProfile;->ACCOUNT_STATUS_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    iget-object v4, p0, Lorg/abtollc/service/ABTOSipService;->statusObserver:Lorg/abtollc/service/ABTOSipService$AccountStatusContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1703
    :cond_2
    return-void

    .line 1678
    .restart local v0    # "intentfilter":Landroid/content/IntentFilter;
    :cond_3
    new-instance v1, Lorg/abtollc/service/receiver/DynamicReceiver4;

    invoke-direct {v1, p0}, Lorg/abtollc/service/receiver/DynamicReceiver4;-><init>(Lorg/abtollc/service/ABTOSipService;)V

    iput-object v1, p0, Lorg/abtollc/service/ABTOSipService;->deviceStateReceiver:Lorg/abtollc/service/receiver/DynamicReceiver4;

    goto :goto_0
.end method

.method private declared-synchronized releaseResources()V
    .locals 1

    .prologue
    .line 2329
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2330
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2332
    :cond_0
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2333
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 2335
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/abtollc/service/ABTOSipService;->holdResources:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2336
    monitor-exit p0

    return-void

    .line 2329
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setCaptureVideoWindow(Ljava/lang/Object;)V
    .locals 2
    .param p1, "window"    # Ljava/lang/Object;

    .prologue
    .line 2692
    invoke-virtual {p0}, Lorg/abtollc/service/ABTOSipService;->getExecutor()Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;

    move-result-object v0

    new-instance v1, Lorg/abtollc/service/ABTOSipService$4;

    invoke-direct {v1, p0, p1}, Lorg/abtollc/service/ABTOSipService$4;-><init>(Lorg/abtollc/service/ABTOSipService;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 2698
    return-void
.end method

.method private setRenderVideoWindow(ILjava/lang/Object;)V
    .locals 2
    .param p1, "callId"    # I
    .param p2, "window"    # Ljava/lang/Object;

    .prologue
    .line 2683
    invoke-virtual {p0}, Lorg/abtollc/service/ABTOSipService;->getExecutor()Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;

    move-result-object v0

    new-instance v1, Lorg/abtollc/service/ABTOSipService$3;

    invoke-direct {v1, p0, p1, p2}, Lorg/abtollc/service/ABTOSipService$3;-><init>(Lorg/abtollc/service/ABTOSipService;ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 2689
    return-void
.end method

.method public static declared-synchronized setVideoWindow(ILjava/lang/Object;Z)V
    .locals 2
    .param p0, "callId"    # I
    .param p1, "window"    # Ljava/lang/Object;
    .param p2, "local"    # Z

    .prologue
    .line 2673
    const-class v1, Lorg/abtollc/service/ABTOSipService;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/abtollc/service/ABTOSipService;->singleton:Lorg/abtollc/service/ABTOSipService;

    if-eqz v0, :cond_0

    .line 2674
    if-eqz p2, :cond_1

    .line 2675
    sget-object v0, Lorg/abtollc/service/ABTOSipService;->singleton:Lorg/abtollc/service/ABTOSipService;

    invoke-direct {v0, p1}, Lorg/abtollc/service/ABTOSipService;->setCaptureVideoWindow(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2680
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 2677
    :cond_1
    :try_start_1
    sget-object v0, Lorg/abtollc/service/ABTOSipService;->singleton:Lorg/abtollc/service/ABTOSipService;

    invoke-direct {v0, p0, p1}, Lorg/abtollc/service/ABTOSipService;->setRenderVideoWindow(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2673
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private startSipStack()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/abtollc/service/ABTOSipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 1929
    :try_start_0
    new-instance v1, Lorg/abtollc/utils/PreferencesProviderWrapper;

    invoke-direct {v1, p0}, Lorg/abtollc/utils/PreferencesProviderWrapper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/abtollc/service/ABTOSipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;

    .line 1930
    const-string v1, "SIP SRV"

    const-string v2, "Create Preferences"

    invoke-static {v1, v2}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1932
    iget-object v1, p0, Lorg/abtollc/service/ABTOSipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;

    const-string v2, "support_multiple_calls"

    invoke-virtual {v1, v2}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/abtollc/service/ABTOSipService;->supportMultipleCalls:Z

    .line 1933
    const-string v1, "SIP SRV"

    const-string v2, "Cache some prefs"

    invoke-static {v1, v2}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1938
    :goto_0
    const-string v1, "SIP SRV"

    const-string v2, "Start was asked and we should actually start now"

    invoke-static {v1, v2}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1939
    sget-object v1, Lorg/abtollc/service/ABTOSipService;->pjService:Lorg/abtollc/voip/SipService;

    if-eqz v1, :cond_0

    sget-object v1, Lorg/abtollc/service/ABTOSipService;->pjService:Lorg/abtollc/voip/SipService;

    iget-boolean v1, v1, Lorg/abtollc/voip/SipService;->hasSipStack:Z

    if-nez v1, :cond_1

    .line 1940
    :cond_0
    const-string v1, "SIP SRV"

    const-string v2, "Start was asked and pjService in not there"

    invoke-static {v1, v2}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1941
    invoke-direct {p0}, Lorg/abtollc/service/ABTOSipService;->loadStack()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1942
    const-string v1, "SIP SRV"

    const-string v2, "Unable to load SIP stack !! "

    invoke-static {v1, v2}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1955
    :goto_1
    return-void

    .line 1934
    :catch_0
    move-exception v0

    .line 1935
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SIP SRV"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1947
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const-string v1, "SIP SRV"

    const-string v2, "Ask pjservice to start itself"

    invoke-static {v1, v2}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1948
    sget-object v1, Lorg/abtollc/service/ABTOSipService;->pjService:Lorg/abtollc/voip/SipService;

    invoke-virtual {v1, p0}, Lorg/abtollc/voip/SipService;->setService(Lorg/abtollc/service/ABTOSipService;)V

    .line 1950
    sget-object v1, Lorg/abtollc/service/ABTOSipService;->pjService:Lorg/abtollc/voip/SipService;

    invoke-virtual {v1}, Lorg/abtollc/voip/SipService;->sipStart()Z

    goto :goto_1
.end method

.method private unregisterAllAccounts(Z)V
    .locals 9
    .param p1, "cancelNotification"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/abtollc/service/ABTOSipService$SameThreadException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 2122
    invoke-direct {p0}, Lorg/abtollc/service/ABTOSipService;->releaseResources()V

    .line 2124
    const-string v0, "SIP SRV"

    const-string v1, "Remove all accounts"

    invoke-static {v0, v1}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2126
    invoke-virtual {p0}, Lorg/abtollc/service/ABTOSipService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lorg/abtollc/sdk/AbtoApplication;

    invoke-virtual {v0}, Lorg/abtollc/sdk/AbtoApplication;->getContentProvider()Landroid/content/ContentProvider;

    move-result-object v0

    sget-object v1, Lorg/abtollc/api/SipProfile;->ACCOUNT_URI:Landroid/net/Uri;

    sget-object v2, Lorg/abtollc/db/DBProvider;->ACCOUNT_FULL_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2128
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 2130
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2132
    :cond_0
    new-instance v6, Lorg/abtollc/api/SipProfile;

    invoke-direct {v6, v7}, Lorg/abtollc/api/SipProfile;-><init>(Landroid/database/Cursor;)V

    .line 2133
    .local v6, "account":Lorg/abtollc/api/SipProfile;
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v6, v0, v1}, Lorg/abtollc/service/ABTOSipService;->setAccountRegistration(Lorg/abtollc/api/SipProfile;IZ)Z

    .line 2134
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 2138
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2146
    .end local v6    # "account":Lorg/abtollc/api/SipProfile;
    :cond_1
    :goto_0
    return-void

    .line 2135
    :catch_0
    move-exception v8

    .line 2136
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "SIP SRV"

    const-string v1, "Error on looping over sip profiles"

    invoke-static {v0, v1, v8}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2138
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private unregisterBroadcasts()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1709
    iget-object v1, p0, Lorg/abtollc/service/ABTOSipService;->deviceStateReceiver:Lorg/abtollc/service/receiver/DynamicReceiver4;

    if-eqz v1, :cond_0

    .line 1711
    :try_start_0
    const-string v1, "SIP SRV"

    const-string v2, "Stop and unregister device receiver"

    invoke-static {v1, v2}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1712
    iget-object v1, p0, Lorg/abtollc/service/ABTOSipService;->deviceStateReceiver:Lorg/abtollc/service/receiver/DynamicReceiver4;

    invoke-virtual {v1}, Lorg/abtollc/service/receiver/DynamicReceiver4;->stopMonitoring()V

    .line 1713
    iget-object v1, p0, Lorg/abtollc/service/ABTOSipService;->deviceStateReceiver:Lorg/abtollc/service/receiver/DynamicReceiver4;

    invoke-virtual {p0, v1}, Lorg/abtollc/service/ABTOSipService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1714
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/abtollc/service/ABTOSipService;->deviceStateReceiver:Lorg/abtollc/service/receiver/DynamicReceiver4;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1724
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/abtollc/service/ABTOSipService;->phoneConnectivityReceiver:Lorg/abtollc/service/ABTOSipService$ServicePhoneStateReceiver;

    if-eqz v1, :cond_1

    .line 1725
    const-string v1, "SIP SRV"

    const-string v2, "Unregister telephony receiver"

    invoke-static {v1, v2}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1726
    iget-object v1, p0, Lorg/abtollc/service/ABTOSipService;->telephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lorg/abtollc/service/ABTOSipService;->phoneConnectivityReceiver:Lorg/abtollc/service/ABTOSipService$ServicePhoneStateReceiver;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 1727
    iput-object v4, p0, Lorg/abtollc/service/ABTOSipService;->phoneConnectivityReceiver:Lorg/abtollc/service/ABTOSipService$ServicePhoneStateReceiver;

    .line 1729
    :cond_1
    iget-object v1, p0, Lorg/abtollc/service/ABTOSipService;->statusObserver:Lorg/abtollc/service/ABTOSipService$AccountStatusContentObserver;

    if-eqz v1, :cond_2

    .line 1730
    invoke-virtual {p0}, Lorg/abtollc/service/ABTOSipService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lorg/abtollc/service/ABTOSipService;->statusObserver:Lorg/abtollc/service/ABTOSipService$AccountStatusContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1731
    iput-object v4, p0, Lorg/abtollc/service/ABTOSipService;->statusObserver:Lorg/abtollc/service/ABTOSipService$AccountStatusContentObserver;

    .line 1734
    :cond_2
    return-void

    .line 1715
    :catch_0
    move-exception v0

    .line 1721
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "SIP SRV"

    const-string v2, "Has not to unregister telephony receiver"

    invoke-static {v1, v2}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private unregisterServiceBroadcasts()V
    .locals 1

    .prologue
    .line 1657
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService;->serviceReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 1658
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService;->serviceReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lorg/abtollc/service/ABTOSipService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1659
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/abtollc/service/ABTOSipService;->serviceReceiver:Landroid/content/BroadcastReceiver;

    .line 1661
    :cond_0
    return-void
.end method


# virtual methods
.method public addAllAccounts()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/abtollc/service/ABTOSipService$SameThreadException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x6

    .line 2018
    invoke-direct {p0}, Lorg/abtollc/service/ABTOSipService;->isValidNetworkConnection()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2019
    const-string v0, "SIP SRV"

    const-string v1, "We are adding all accounts right now...."

    invoke-static {v0, v1}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2021
    const/4 v12, 0x0

    .line 2022
    .local v12, "hasSomeSuccess":Z
    invoke-virtual {p0}, Lorg/abtollc/service/ABTOSipService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lorg/abtollc/sdk/AbtoApplication;

    invoke-virtual {v0}, Lorg/abtollc/sdk/AbtoApplication;->getContentProvider()Landroid/content/ContentProvider;

    move-result-object v0

    sget-object v1, Lorg/abtollc/api/SipProfile;->ACCOUNT_URI:Landroid/net/Uri;

    sget-object v2, Lorg/abtollc/db/DBProvider;->ACCOUNT_FULL_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2025
    .local v8, "c":Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 2027
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    sget-object v0, Lorg/abtollc/service/ABTOSipService;->pjService:Lorg/abtollc/voip/SipService;

    if-eqz v0, :cond_4

    sget-object v0, Lorg/abtollc/service/ABTOSipService;->pjService:Lorg/abtollc/voip/SipService;

    invoke-virtual {v0}, Lorg/abtollc/voip/SipService;->isCreated()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2028
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2029
    new-instance v6, Lorg/abtollc/jni/pjsua_acc_info;

    invoke-direct {v6}, Lorg/abtollc/jni/pjsua_acc_info;-><init>()V

    .line 2031
    .local v6, "accInfo":Lorg/abtollc/jni/pjsua_acc_info;
    :cond_0
    new-instance v7, Lorg/abtollc/api/SipProfile;

    invoke-direct {v7, v8}, Lorg/abtollc/api/SipProfile;-><init>(Landroid/database/Cursor;)V

    .line 2033
    .local v7, "account":Lorg/abtollc/api/SipProfile;
    sget-object v0, Lorg/abtollc/service/ABTOSipService;->pjService:Lorg/abtollc/voip/SipService;

    invoke-virtual {v0, v7}, Lorg/abtollc/voip/SipService;->addAccount(Lorg/abtollc/api/SipProfile;)I

    move-result v13

    .line 2034
    .local v13, "status":I
    sget v0, Lorg/abtollc/jni/pjsuaConstants;->PJ_SUCCESS:I

    if-ne v13, v0, :cond_3

    .line 2035
    const/4 v12, 0x1

    .line 2055
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 2066
    .end local v6    # "accInfo":Lorg/abtollc/jni/pjsua_acc_info;
    .end local v7    # "account":Lorg/abtollc/api/SipProfile;
    .end local v13    # "status":I
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2070
    :cond_1
    :goto_2
    iput-boolean v12, p0, Lorg/abtollc/service/ABTOSipService;->hasSomeActiveAccount:Z

    .line 2072
    if-eqz v12, :cond_2

    .line 2073
    invoke-direct {p0}, Lorg/abtollc/service/ABTOSipService;->acquireResources()V

    .line 2096
    .end local v8    # "c":Landroid/database/Cursor;
    .end local v12    # "hasSomeSuccess":Z
    :cond_2
    :goto_3
    return-void

    .line 2037
    .restart local v6    # "accInfo":Lorg/abtollc/jni/pjsua_acc_info;
    .restart local v7    # "account":Lorg/abtollc/api/SipProfile;
    .restart local v8    # "c":Landroid/database/Cursor;
    .restart local v12    # "hasSomeSuccess":Z
    .restart local v13    # "status":I
    :cond_3
    :try_start_1
    sget-object v0, Lorg/abtollc/service/ABTOSipService;->pjService:Lorg/abtollc/voip/SipService;

    iget-object v0, v0, Lorg/abtollc/voip/SipService;->accId:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {v0, v6}, Lorg/abtollc/jni/pjsua;->acc_get_info(ILorg/abtollc/jni/pjsua_acc_info;)I

    .line 2039
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2041
    .local v9, "data":Landroid/os/Bundle;
    :try_start_2
    const-string v0, "status_code"

    invoke-virtual {v6}, Lorg/abtollc/jni/pjsua_acc_info;->getStatus()Lorg/abtollc/jni/pjsip_status_code;

    move-result-object v1

    invoke-virtual {v1}, Lorg/abtollc/jni/pjsip_status_code;->swigValue()I

    move-result v1

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2048
    :goto_4
    :try_start_3
    const-string v14, ""

    .line 2050
    .local v14, "statusMsg":Ljava/lang/String;
    invoke-static {v14, v13}, Lorg/abtollc/jni/pjsua;->strerror(Ljava/lang/String;I)V

    .line 2052
    const-string v0, "status_text"

    invoke-virtual {v9, v0, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2053
    const/4 v0, 0x6

    invoke-virtual {p0, v0, v9}, Lorg/abtollc/service/ABTOSipService;->sendMsgToPhone(ILandroid/os/Bundle;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 2063
    .end local v6    # "accInfo":Lorg/abtollc/jni/pjsua_acc_info;
    .end local v7    # "account":Lorg/abtollc/api/SipProfile;
    .end local v9    # "data":Landroid/os/Bundle;
    .end local v13    # "status":I
    .end local v14    # "statusMsg":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 2064
    .local v10, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v0, "SIP SRV"

    const-string v1, "Error on looping over sip profiles"

    invoke-static {v0, v1, v10}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2066
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 2042
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v6    # "accInfo":Lorg/abtollc/jni/pjsua_acc_info;
    .restart local v7    # "account":Lorg/abtollc/api/SipProfile;
    .restart local v9    # "data":Landroid/os/Bundle;
    .restart local v13    # "status":I
    :catch_1
    move-exception v11

    .line 2045
    .local v11, "ex":Ljava/lang/IllegalArgumentException;
    :try_start_5
    const-string v0, "status_code"

    const/16 v1, 0x1f4

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    .line 2066
    .end local v6    # "accInfo":Lorg/abtollc/jni/pjsua_acc_info;
    .end local v7    # "account":Lorg/abtollc/api/SipProfile;
    .end local v9    # "data":Landroid/os/Bundle;
    .end local v11    # "ex":Ljava/lang/IllegalArgumentException;
    .end local v13    # "status":I
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    .line 2057
    :cond_4
    :try_start_6
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 2058
    .restart local v9    # "data":Landroid/os/Bundle;
    const-string v0, "status_code"

    const/16 v1, 0x1f4

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2059
    const-string v13, "Can not find valid account or AbtoPhone not initialized"

    .line 2060
    .local v13, "status":Ljava/lang/String;
    const-string v0, "status_text"

    invoke-virtual {v9, v0, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2061
    const/4 v0, 0x6

    invoke-virtual {p0, v0, v9}, Lorg/abtollc/service/ABTOSipService;->sendMsgToPhone(ILandroid/os/Bundle;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 2091
    .end local v8    # "c":Landroid/database/Cursor;
    .end local v9    # "data":Landroid/os/Bundle;
    .end local v12    # "hasSomeSuccess":Z
    .end local v13    # "status":Ljava/lang/String;
    :cond_5
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 2092
    .restart local v9    # "data":Landroid/os/Bundle;
    const-string v0, "status_code"

    const/16 v1, 0x195

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2093
    const-string v0, "status_text"

    const-string v1, "No valid connection"

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2094
    invoke-virtual {p0, v2, v9}, Lorg/abtollc/service/ABTOSipService;->sendMsgToPhone(ILandroid/os/Bundle;)V

    goto :goto_3
.end method

.method public addBuddy(Ljava/lang/String;)I
    .locals 4
    .param p1, "buddyUri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/abtollc/service/ABTOSipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 2257
    const/4 v0, -0x1

    .line 2258
    .local v0, "retVal":I
    sget-object v1, Lorg/abtollc/service/ABTOSipService;->pjService:Lorg/abtollc/voip/SipService;

    if-eqz v1, :cond_0

    .line 2259
    const-string v1, "SIP SRV"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to add buddy "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2260
    sget-object v1, Lorg/abtollc/service/ABTOSipService;->pjService:Lorg/abtollc/voip/SipService;

    invoke-virtual {v1, p1}, Lorg/abtollc/voip/SipService;->addBuddy(Ljava/lang/String;)I

    move-result v0

    .line 2262
    :cond_0
    return v0
.end method

.method public addMessenger(Landroid/os/Messenger;)V
    .locals 5
    .param p1, "messenger"    # Landroid/os/Messenger;

    .prologue
    .line 1465
    iget-object v3, p0, Lorg/abtollc/service/ABTOSipService;->mMessengers:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1467
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/Messenger;>;"
    :goto_0
    :try_start_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1468
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 1469
    .local v2, "msg":Landroid/os/Message;
    const/4 v3, -0x1

    iput v3, v2, Landroid/os/Message;->what:I

    .line 1470
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Messenger;

    invoke-virtual {v3, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1472
    .end local v2    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 1473
    .local v0, "e":Landroid/os/DeadObjectException;
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 1478
    .end local v0    # "e":Landroid/os/DeadObjectException;
    :cond_0
    :goto_1
    iget-object v3, p0, Lorg/abtollc/service/ABTOSipService;->mMessengers:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1479
    return-void

    .line 1474
    :catch_1
    move-exception v0

    .line 1475
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "SIP SRV"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/abtollc/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public cleanStop()V
    .locals 2

    .prologue
    .line 1628
    invoke-virtual {p0}, Lorg/abtollc/service/ABTOSipService;->getExecutor()Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;

    move-result-object v0

    new-instance v1, Lorg/abtollc/service/ABTOSipService$DestroyRunnable;

    invoke-direct {v1, p0}, Lorg/abtollc/service/ABTOSipService$DestroyRunnable;-><init>(Lorg/abtollc/service/ABTOSipService;)V

    invoke-virtual {v0, v1}, Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 1630
    invoke-direct {p0}, Lorg/abtollc/service/ABTOSipService;->unregisterBroadcasts()V

    .line 1631
    invoke-direct {p0}, Lorg/abtollc/service/ABTOSipService;->unregisterServiceBroadcasts()V

    .line 1632
    invoke-virtual {p0}, Lorg/abtollc/service/ABTOSipService;->getExecutor()Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;

    move-result-object v0

    new-instance v1, Lorg/abtollc/service/ABTOSipService$FinalizeDestroyRunnable;

    invoke-direct {v1, p0}, Lorg/abtollc/service/ABTOSipService$FinalizeDestroyRunnable;-><init>(Lorg/abtollc/service/ABTOSipService;)V

    invoke-virtual {v0, v1}, Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 1633
    return-void
.end method

.method public confAdjustRxLevel(F)V
    .locals 2
    .param p1, "speakVolume"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/abtollc/service/ABTOSipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 2245
    sget-object v0, Lorg/abtollc/service/ABTOSipService;->pjService:Lorg/abtollc/voip/SipService;

    if-eqz v0, :cond_0

    .line 2246
    sget-object v0, Lorg/abtollc/service/ABTOSipService;->pjService:Lorg/abtollc/voip/SipService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lorg/abtollc/voip/SipService;->confAdjustRxLevel(IF)V

    .line 2248
    :cond_0
    return-void
.end method

.method public confAdjustTxLevel(F)V
    .locals 2
    .param p1, "speakVolume"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/abtollc/service/ABTOSipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 2233
    sget-object v0, Lorg/abtollc/service/ABTOSipService;->pjService:Lorg/abtollc/voip/SipService;

    if-eqz v0, :cond_0

    .line 2234
    sget-object v0, Lorg/abtollc/service/ABTOSipService;->pjService:Lorg/abtollc/voip/SipService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lorg/abtollc/voip/SipService;->confAdjustTxLevel(IF)V

    .line 2236
    :cond_0
    return-void
.end method

.method public deferUnregisterForOutgoing(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "activityKey"    # Landroid/content/ComponentName;

    .prologue
    .line 1867
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService;->deferedUnregisterForOutgoing:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1868
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService;->deferedUnregisterForOutgoing:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1870
    :cond_0
    return-void
.end method

.method public getAccount(J)Lorg/abtollc/api/SipProfile;
    .locals 1
    .param p1, "accountId"    # J

    .prologue
    .line 2417
    sget-object v0, Lorg/abtollc/db/DBProvider;->ACCOUNT_FULL_PROJECTION:[Ljava/lang/String;

    invoke-static {p0, p1, p2, v0}, Lorg/abtollc/api/SipProfile;->getProfileFromDbId(Landroid/content/Context;J[Ljava/lang/String;)Lorg/abtollc/api/SipProfile;

    move-result-object v0

    return-object v0
.end method

.method public getExecutor()Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;
    .locals 1

    .prologue
    .line 1539
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService;->mExecutor:Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;

    if-nez v0, :cond_0

    .line 1540
    new-instance v0, Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;

    invoke-direct {v0, p0}, Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;-><init>(Lorg/abtollc/service/ABTOSipService;)V

    iput-object v0, p0, Lorg/abtollc/service/ABTOSipService;->mExecutor:Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;

    .line 1542
    :cond_0
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService;->mExecutor:Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;

    return-object v0
.end method

.method public getGSMCallState()I
    .locals 1

    .prologue
    .line 2371
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    return v0
.end method

.method public getPrefs()Lorg/abtollc/utils/PreferencesProviderWrapper;
    .locals 1

    .prologue
    .line 2221
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;

    return-object v0
.end method

.method public getPresence()Lorg/abtollc/api/SipManager$PresenceStatus;
    .locals 1

    .prologue
    .line 2708
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService;->presence:Lorg/abtollc/api/SipManager$PresenceStatus;

    return-object v0
.end method

.method public getSipProfileState(J)Lorg/abtollc/api/SipProfileState;
    .locals 3
    .param p1, "accountDbId"    # J

    .prologue
    .line 2155
    invoke-virtual {p0, p1, p2}, Lorg/abtollc/service/ABTOSipService;->getAccount(J)Lorg/abtollc/api/SipProfile;

    move-result-object v0

    .line 2156
    .local v0, "acc":Lorg/abtollc/api/SipProfile;
    sget-object v1, Lorg/abtollc/service/ABTOSipService;->pjService:Lorg/abtollc/voip/SipService;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 2157
    sget-object v1, Lorg/abtollc/service/ABTOSipService;->pjService:Lorg/abtollc/voip/SipService;

    invoke-virtual {v1, v0}, Lorg/abtollc/voip/SipService;->getProfileState(Lorg/abtollc/api/SipProfile;)Lorg/abtollc/api/SipProfileState;

    move-result-object v1

    .line 2159
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getUAStateReceiver()Lorg/abtollc/voip/UAStateReceiver;
    .locals 1

    .prologue
    .line 2367
    sget-object v0, Lorg/abtollc/service/ABTOSipService;->pjService:Lorg/abtollc/voip/SipService;

    iget-object v0, v0, Lorg/abtollc/voip/SipService;->userAgentReceiver:Lorg/abtollc/voip/UAStateReceiver;

    return-object v0
.end method

.method public isConnectivityValid()Z
    .locals 2

    .prologue
    .line 1883
    iget-object v1, p0, Lorg/abtollc/service/ABTOSipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;

    invoke-virtual {v1}, Lorg/abtollc/utils/PreferencesProviderWrapper;->isValidConnectionForIncoming()Z

    move-result v0

    .line 1884
    .local v0, "valid":Z
    iget-object v1, p0, Lorg/abtollc/service/ABTOSipService;->activitiesForOutgoing:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1885
    iget-object v1, p0, Lorg/abtollc/service/ABTOSipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;

    invoke-virtual {v1}, Lorg/abtollc/utils/PreferencesProviderWrapper;->isValidConnectionForOutgoing()Z

    move-result v1

    or-int/2addr v0, v1

    .line 1887
    :cond_0
    return v0
.end method

.method public notifyUserOfMessage(I)V
    .locals 3
    .param p1, "resStringId"    # I

    .prologue
    const/4 v2, 0x0

    .line 2009
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService;->serviceHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/abtollc/service/ABTOSipService;->serviceHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2010
    return-void
.end method

.method public notifyUserOfMessage(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1998
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService;->serviceHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/abtollc/service/ABTOSipService;->serviceHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1999
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1906
    const-string v1, "SIP SRV"

    const-string v2, "ABTOSipService start binding"

    invoke-static {v1, v2}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1907
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1908
    .local v0, "serviceName":Ljava/lang/String;
    const-string v1, "SIP SRV"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Action is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1909
    if-eqz v0, :cond_0

    const-string v1, "org.abtollc.service.ABTOSipService"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1910
    :cond_0
    if-eqz v0, :cond_1

    const-string v1, "startSip"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "startSip"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1911
    :cond_1
    const-string v1, "SIP SRV"

    const-string v2, "Start sip on bind"

    invoke-static {v1, v2}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1912
    invoke-virtual {p0}, Lorg/abtollc/service/ABTOSipService;->getExecutor()Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;

    move-result-object v1

    new-instance v2, Lorg/abtollc/service/ABTOSipService$SyncStartRunnable;

    invoke-direct {v2, p0}, Lorg/abtollc/service/ABTOSipService$SyncStartRunnable;-><init>(Lorg/abtollc/service/ABTOSipService;)V

    invoke-virtual {v1, v2}, Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 1914
    :cond_2
    const-string v1, "SIP SRV"

    const-string v2, "Service returned"

    invoke-static {v1, v2}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1915
    iget-object v1, p0, Lorg/abtollc/service/ABTOSipService;->binder:Lorg/abtollc/api/ISipService$Stub;

    .line 1922
    :goto_0
    return-object v1

    .line 1916
    :cond_3
    const-string v1, "org.abtollc.service.SipConfiguration"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1917
    const-string v1, "SIP SRV"

    const-string v2, "Conf returned"

    invoke-static {v1, v2}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1918
    iget-object v1, p0, Lorg/abtollc/service/ABTOSipService;->binderConfiguration:Lorg/abtollc/api/ISipConfiguration$Stub;

    goto :goto_0

    .line 1921
    :cond_4
    const-string v1, "SIP SRV"

    const-string v2, "Default service (SipService) returned"

    invoke-static {v1, v2}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1922
    iget-object v1, p0, Lorg/abtollc/service/ABTOSipService;->binder:Lorg/abtollc/api/ISipService$Stub;

    goto :goto_0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 1585
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 1586
    sput-object p0, Lorg/abtollc/service/ABTOSipService;->singleton:Lorg/abtollc/service/ABTOSipService;

    .line 1587
    invoke-direct {p0}, Lorg/abtollc/service/ABTOSipService;->createService()V

    .line 1589
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 1619
    const-string v0, "SIP SRV"

    const-string v1, "Destroying SIP Service"

    invoke-static {v0, v1}, Lorg/abtollc/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1621
    invoke-direct {p0}, Lorg/abtollc/service/ABTOSipService;->unregisterBroadcasts()V

    .line 1622
    invoke-direct {p0}, Lorg/abtollc/service/ABTOSipService;->unregisterServiceBroadcasts()V

    .line 1623
    invoke-virtual {p0}, Lorg/abtollc/service/ABTOSipService;->getExecutor()Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;

    move-result-object v0

    new-instance v1, Lorg/abtollc/service/ABTOSipService$FinalizeDestroyRunnable;

    invoke-direct {v1, p0}, Lorg/abtollc/service/ABTOSipService$FinalizeDestroyRunnable;-><init>(Lorg/abtollc/service/ABTOSipService;)V

    invoke-virtual {v0, v1}, Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 1624
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 1625
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x2

    .line 1743
    if-eqz p1, :cond_1

    .line 1744
    const-string v5, "outgoing_activity"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    .line 1745
    .local v2, "p":Landroid/os/Parcelable;
    if-eqz v2, :cond_0

    move-object v1, v2

    .line 1746
    check-cast v1, Landroid/content/ComponentName;

    .line 1747
    .local v1, "outActivity":Landroid/content/ComponentName;
    invoke-virtual {p0, v1}, Lorg/abtollc/service/ABTOSipService;->registerForOutgoing(Landroid/content/ComponentName;)V

    .line 1757
    .end local v1    # "outActivity":Landroid/content/ComponentName;
    .end local v2    # "p":Landroid/os/Parcelable;
    :cond_0
    :goto_0
    invoke-direct {p0}, Lorg/abtollc/service/ABTOSipService;->loadStack()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1759
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1760
    .local v0, "eventData":Landroid/os/Bundle;
    const-string v3, "init_state"

    sget-object v5, Lorg/abtollc/sdk/OnInitializeListener$InitializeState;->FAIL:Lorg/abtollc/sdk/OnInitializeListener$InitializeState;

    .line 1761
    invoke-virtual {v5}, Lorg/abtollc/sdk/OnInitializeListener$InitializeState;->getValue()I

    move-result v5

    .line 1760
    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1762
    const-string v3, "message"

    const-string v5, "Problem with loading native libraries"

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1763
    const/16 v3, 0x8

    invoke-virtual {p0, v3, v0}, Lorg/abtollc/service/ABTOSipService;->sendMsgToPhone(ILandroid/os/Bundle;)V

    .line 1801
    .end local v0    # "eventData":Landroid/os/Bundle;
    :goto_1
    return v4

    .line 1750
    :cond_1
    invoke-virtual {p0}, Lorg/abtollc/service/ABTOSipService;->stopSelf()V

    .line 1751
    const-string v5, "SIP SRV"

    const-string v6, "Intent is null"

    invoke-static {v5, v6}, Lorg/abtollc/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1769
    :cond_2
    invoke-virtual {p0}, Lorg/abtollc/service/ABTOSipService;->isConnectivityValid()Z

    move-result v5

    if-nez v5, :cond_3

    .line 1770
    const-string v3, "SIP SRV"

    const-string v5, "Harakiri... we are not needed since no way to use self"

    invoke-static {v3, v5}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1783
    :cond_3
    const-string v5, "SIP SRV"

    const-string v6, "Direct sip start"

    invoke-static {v5, v6}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1801
    if-eqz p1, :cond_4

    const-string v5, "SERVICE_START_STICKY"

    invoke-virtual {p1, v5, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_4

    :goto_2
    move v4, v3

    goto :goto_1

    :cond_4
    move v3, v4

    goto :goto_2
.end method

.method public registerForOutgoing(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "activityKey"    # Landroid/content/ComponentName;

    .prologue
    .line 1853
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService;->activitiesForOutgoing:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1854
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService;->activitiesForOutgoing:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1856
    :cond_0
    return-void
.end method

.method public removeBuddy(Ljava/lang/String;)V
    .locals 1
    .param p1, "buddyUri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/abtollc/service/ABTOSipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 2272
    sget-object v0, Lorg/abtollc/service/ABTOSipService;->pjService:Lorg/abtollc/voip/SipService;

    if-eqz v0, :cond_0

    .line 2273
    sget-object v0, Lorg/abtollc/service/ABTOSipService;->pjService:Lorg/abtollc/voip/SipService;

    invoke-virtual {v0, p1}, Lorg/abtollc/voip/SipService;->removeBuddy(Ljava/lang/String;)V

    .line 2275
    :cond_0
    return-void
.end method

.method public removeMessenger(Landroid/os/Messenger;)V
    .locals 1
    .param p1, "messenger"    # Landroid/os/Messenger;

    .prologue
    .line 1482
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService;->mMessengers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1483
    return-void
.end method

.method public restartSipStack()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/abtollc/service/ABTOSipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 1983
    invoke-virtual {p0}, Lorg/abtollc/service/ABTOSipService;->stopSipStack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1984
    invoke-direct {p0}, Lorg/abtollc/service/ABTOSipService;->startSipStack()V

    .line 1988
    :goto_0
    return-void

    .line 1986
    :cond_0
    const-string v0, "SIP SRV"

    const-string v1, "Can\'t stop ... so do not restart ! "

    invoke-static {v0, v1}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public sendMsgToPhone(ILandroid/os/Bundle;)V
    .locals 7
    .param p1, "type"    # I
    .param p2, "obj"    # Landroid/os/Bundle;

    .prologue
    .line 1487
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 1488
    .local v3, "msg":Landroid/os/Message;
    iput p1, v3, Landroid/os/Message;->what:I

    .line 1489
    invoke-virtual {v3}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 1491
    :try_start_0
    iget-object v4, p0, Lorg/abtollc/service/ABTOSipService;->mMessengers:Ljava/util/Set;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/abtollc/service/ABTOSipService;->mMessengers:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    if-eqz v4, :cond_0

    .line 1492
    iget-object v4, p0, Lorg/abtollc/service/ABTOSipService;->mMessengers:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Messenger;

    .line 1493
    .local v2, "m":Landroid/os/Messenger;
    invoke-static {v3}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 1494
    const-string v5, "SIP SRV"

    const-string v6, "send event"

    invoke-static {v5, v6}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1496
    .end local v2    # "m":Landroid/os/Messenger;
    :catch_0
    move-exception v0

    .line 1497
    .local v0, "e1":Landroid/os/RemoteException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Exception sending message"

    invoke-static {v4, v5, v0}, Lorg/abtollc/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1501
    .end local v0    # "e1":Landroid/os/RemoteException;
    :cond_0
    :goto_1
    return-void

    .line 1498
    :catch_1
    move-exception v1

    .line 1499
    .local v1, "e2":Ljava/lang/RuntimeException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Exception Message.obtain"

    invoke-static {v4, v5, v1}, Lorg/abtollc/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public sendMsgToPhone(ILandroid/os/Message;)V
    .locals 6
    .param p1, "type"    # I
    .param p2, "obj"    # Landroid/os/Message;

    .prologue
    .line 1505
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 1506
    .local v3, "msg":Landroid/os/Message;
    invoke-virtual {v3, p2}, Landroid/os/Message;->copyFrom(Landroid/os/Message;)V

    .line 1507
    iput p1, v3, Landroid/os/Message;->what:I

    .line 1510
    :try_start_0
    iget-object v4, p0, Lorg/abtollc/service/ABTOSipService;->mMessengers:Ljava/util/Set;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/abtollc/service/ABTOSipService;->mMessengers:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    if-eqz v4, :cond_0

    .line 1511
    iget-object v4, p0, Lorg/abtollc/service/ABTOSipService;->mMessengers:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Messenger;

    .line 1512
    .local v2, "m":Landroid/os/Messenger;
    invoke-static {v3}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1513
    .end local v2    # "m":Landroid/os/Messenger;
    :catch_0
    move-exception v0

    .line 1514
    .local v0, "e1":Landroid/os/RemoteException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Exception sending message"

    invoke-static {v4, v5, v0}, Lorg/abtollc/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1518
    .end local v0    # "e1":Landroid/os/RemoteException;
    :cond_0
    :goto_1
    return-void

    .line 1515
    :catch_1
    move-exception v1

    .line 1516
    .local v1, "e2":Ljava/lang/RuntimeException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Exception Message.obtain"

    invoke-static {v4, v5, v1}, Lorg/abtollc/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public setAccountRegistration(Lorg/abtollc/api/SipProfile;IZ)Z
    .locals 2
    .param p1, "account"    # Lorg/abtollc/api/SipProfile;
    .param p2, "renew"    # I
    .param p3, "forceReAdd"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/abtollc/service/ABTOSipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 2109
    const/4 v0, 0x0

    .line 2110
    .local v0, "status":Z
    sget-object v1, Lorg/abtollc/service/ABTOSipService;->pjService:Lorg/abtollc/voip/SipService;

    if-eqz v1, :cond_0

    .line 2111
    sget-object v1, Lorg/abtollc/service/ABTOSipService;->pjService:Lorg/abtollc/voip/SipService;

    invoke-virtual {v1, p1, p2, p3}, Lorg/abtollc/voip/SipService;->setAccountRegistration(Lorg/abtollc/api/SipProfile;IZ)Z

    move-result v0

    .line 2114
    :cond_0
    return v0
.end method

.method public setAutoAnswerNext(Z)V
    .locals 0
    .param p1, "auto_response"    # Z

    .prologue
    .line 2423
    iput-boolean p1, p0, Lorg/abtollc/service/ABTOSipService;->autoAcceptCurrent:Z

    .line 2424
    return-void
.end method

.method public setNoSnd()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/abtollc/service/ABTOSipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 2468
    sget-object v0, Lorg/abtollc/service/ABTOSipService;->pjService:Lorg/abtollc/voip/SipService;

    if-eqz v0, :cond_0

    .line 2469
    sget-object v0, Lorg/abtollc/service/ABTOSipService;->pjService:Lorg/abtollc/voip/SipService;

    invoke-virtual {v0}, Lorg/abtollc/voip/SipService;->setNoSnd()V

    .line 2471
    :cond_0
    return-void
.end method

.method public setSnd()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/abtollc/service/ABTOSipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 2474
    sget-object v0, Lorg/abtollc/service/ABTOSipService;->pjService:Lorg/abtollc/voip/SipService;

    if-eqz v0, :cond_0

    .line 2475
    sget-object v0, Lorg/abtollc/service/ABTOSipService;->pjService:Lorg/abtollc/voip/SipService;

    invoke-virtual {v0}, Lorg/abtollc/voip/SipService;->setSnd()V

    .line 2477
    :cond_0
    return-void
.end method

.method public shouldAutoAnswer(Ljava/lang/String;Lorg/abtollc/api/SipProfile;Landroid/os/Bundle;)I
    .locals 8
    .param p1, "remContact"    # Ljava/lang/String;
    .param p2, "acc"    # Lorg/abtollc/api/SipProfile;
    .param p3, "extraHdr"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x2

    .line 2439
    const-string v4, "SIP SRV"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Search if should I auto answer for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2440
    const/4 v3, 0x0

    .line 2442
    .local v3, "shouldAutoAnswer":I
    iget-boolean v4, p0, Lorg/abtollc/service/ABTOSipService;->autoAcceptCurrent:Z

    if-eqz v4, :cond_1

    .line 2443
    const-string v4, "SIP SRV"

    const-string v5, "I should auto answer this one !!! "

    invoke-static {v4, v5}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2444
    const/4 v4, 0x0

    iput-boolean v4, p0, Lorg/abtollc/service/ABTOSipService;->autoAcceptCurrent:Z

    .line 2445
    const/16 v3, 0xc8

    .line 2463
    .end local v3    # "shouldAutoAnswer":I
    :cond_0
    :goto_0
    return v3

    .line 2448
    .restart local v3    # "shouldAutoAnswer":I
    :cond_1
    if-eqz p2, :cond_2

    .line 2449
    const-string v4, "^(?:\")?([^<\"]*)(?:\")?[ ]*(?:<)?sip(?:s)?:([^@]*@[^>]*)(?:>)?"

    invoke-static {v4, v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 2451
    .local v2, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 2452
    .local v0, "m":Ljava/util/regex/Matcher;
    move-object v1, p1

    .line 2453
    .local v1, "number":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2454
    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    goto :goto_0

    .line 2460
    .end local v0    # "m":Ljava/util/regex/Matcher;
    .end local v1    # "number":Ljava/lang/String;
    .end local v2    # "p":Ljava/util/regex/Pattern;
    :cond_2
    const-string v4, "SIP SRV"

    const-string v5, "Oupps... that come from an unknown account..."

    invoke-static {v4, v5}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stopSipStack()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/abtollc/service/ABTOSipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 1964
    const-string v1, "SIP SRV"

    const-string v2, "Stop sip stack"

    invoke-static {v1, v2}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1965
    const/4 v0, 0x1

    .line 1966
    .local v0, "canStop":Z
    sget-object v1, Lorg/abtollc/service/ABTOSipService;->pjService:Lorg/abtollc/voip/SipService;

    if-eqz v1, :cond_0

    .line 1967
    sget-object v1, Lorg/abtollc/service/ABTOSipService;->pjService:Lorg/abtollc/voip/SipService;

    invoke-virtual {v1}, Lorg/abtollc/voip/SipService;->sipStop()Z

    move-result v1

    and-int/2addr v0, v1

    .line 1972
    :cond_0
    if-eqz v0, :cond_1

    .line 1976
    invoke-direct {p0}, Lorg/abtollc/service/ABTOSipService;->releaseResources()V

    .line 1979
    :cond_1
    return v0
.end method

.method public treatDeferUnregistersForOutgoing()V
    .locals 3

    .prologue
    .line 1873
    iget-object v1, p0, Lorg/abtollc/service/ABTOSipService;->deferedUnregisterForOutgoing:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 1874
    .local v0, "cmp":Landroid/content/ComponentName;
    iget-object v2, p0, Lorg/abtollc/service/ABTOSipService;->activitiesForOutgoing:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1876
    .end local v0    # "cmp":Landroid/content/ComponentName;
    :cond_0
    iget-object v1, p0, Lorg/abtollc/service/ABTOSipService;->deferedUnregisterForOutgoing:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1877
    invoke-virtual {p0}, Lorg/abtollc/service/ABTOSipService;->isConnectivityValid()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1878
    invoke-virtual {p0}, Lorg/abtollc/service/ABTOSipService;->cleanStop()V

    .line 1880
    :cond_1
    return-void
.end method

.method public unregisterForOutgoing(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "activityKey"    # Landroid/content/ComponentName;

    .prologue
    .line 1859
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService;->activitiesForOutgoing:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1861
    invoke-virtual {p0}, Lorg/abtollc/service/ABTOSipService;->isConnectivityValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1862
    invoke-virtual {p0}, Lorg/abtollc/service/ABTOSipService;->cleanStop()V

    .line 1864
    :cond_0
    return-void
.end method

.method public updateRegistrationsState()V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 2163
    const-string v0, "SIP SRV"

    const-string v1, "Update registration state"

    invoke-static {v0, v1}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2164
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2165
    .local v6, "activeProfilesState":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/abtollc/api/SipProfileState;>;"
    invoke-virtual {p0}, Lorg/abtollc/service/ABTOSipService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lorg/abtollc/sdk/AbtoApplication;

    invoke-virtual {v0}, Lorg/abtollc/sdk/AbtoApplication;->getContentProvider()Landroid/content/ContentProvider;

    move-result-object v0

    sget-object v1, Lorg/abtollc/api/SipProfile;->ACCOUNT_STATUS_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2167
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_3

    .line 2169
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 2170
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2172
    :cond_0
    new-instance v9, Lorg/abtollc/api/SipProfileState;

    invoke-direct {v9, v7}, Lorg/abtollc/api/SipProfileState;-><init>(Landroid/database/Cursor;)V

    .line 2173
    .local v9, "ps":Lorg/abtollc/api/SipProfileState;
    invoke-virtual {v9}, Lorg/abtollc/api/SipProfileState;->isValidForCall()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2174
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2176
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 2181
    .end local v9    # "ps":Lorg/abtollc/api/SipProfileState;
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2185
    :cond_3
    :goto_0
    invoke-static {}, Lorg/abtollc/api/SipProfileState;->getComparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v6, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2206
    iget-boolean v0, p0, Lorg/abtollc/service/ABTOSipService;->hasSomeActiveAccount:Z

    if-eqz v0, :cond_4

    .line 2207
    invoke-direct {p0}, Lorg/abtollc/service/ABTOSipService;->acquireResources()V

    .line 2211
    :goto_1
    return-void

    .line 2178
    :catch_0
    move-exception v8

    .line 2179
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "SIP SRV"

    const-string v1, "Error on looping over sip profiles"

    invoke-static {v0, v1, v8}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2181
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .line 2209
    :cond_4
    invoke-direct {p0}, Lorg/abtollc/service/ABTOSipService;->releaseResources()V

    goto :goto_1
.end method
