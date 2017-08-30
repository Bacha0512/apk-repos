.class public Lcom/weirdvoice/service/SipService;
.super Landroid/app/Service;
.source "SipService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/weirdvoice/service/SipService$AccountStatusContentObserver;,
        Lcom/weirdvoice/service/SipService$DestroyRunnable;,
        Lcom/weirdvoice/service/SipService$FinalizeDestroyRunnable;,
        Lcom/weirdvoice/service/SipService$RestartRunnable;,
        Lcom/weirdvoice/service/SipService$ReturnRunnable;,
        Lcom/weirdvoice/service/SipService$SameThreadException;,
        Lcom/weirdvoice/service/SipService$ServiceHandler;,
        Lcom/weirdvoice/service/SipService$ServicePhoneStateReceiver;,
        Lcom/weirdvoice/service/SipService$SipRunnable;,
        Lcom/weirdvoice/service/SipService$SipServiceExecutor;,
        Lcom/weirdvoice/service/SipService$StartRunnable;,
        Lcom/weirdvoice/service/SipService$StopRunnable;,
        Lcom/weirdvoice/service/SipService$SyncRestartRunnable;,
        Lcom/weirdvoice/service/SipService$SyncStartRunnable;,
        Lcom/weirdvoice/service/SipService$SyncStopRunnable;,
        Lcom/weirdvoice/service/SipService$ToCall;
    }
.end annotation


# static fields
.field private static final THIS_FILE:Ljava/lang/String; = "SIP SRV"

.field private static final TOAST_MESSAGE:I

.field private static UI_CALL_PACKAGE:Ljava/lang/String;

.field private static executorThread:Landroid/os/HandlerThread;

.field private static pjService:Lcom/weirdvoice/pjsip/PjSipService;

.field private static singleton:Lcom/weirdvoice/service/SipService;


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

.field private final binder:Lcom/weirdvoice/api/ISipService$Stub;

.field private final binderConfiguration:Lcom/weirdvoice/api/ISipConfiguration$Stub;

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

.field private deviceStateReceiver:Lcom/weirdvoice/service/receiver/DynamicReceiver4;

.field private hasSomeActiveAccount:Z

.field private holdResources:Z

.field private mExecutor:Lcom/weirdvoice/service/SipService$SipServiceExecutor;

.field public notificationManager:Lcom/weirdvoice/service/SipNotifications;

.field private phoneConnectivityReceiver:Lcom/weirdvoice/service/SipService$ServicePhoneStateReceiver;

.field private prefsWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;

.field private presence:Lcom/weirdvoice/api/SipManager$PresenceStatus;

.field private serviceHandler:Landroid/os/Handler;

.field private serviceReceiver:Landroid/content/BroadcastReceiver;

.field private sipWakeLock:Lcom/weirdvoice/service/SipWakeLock;

.field private statusObserver:Lcom/weirdvoice/service/SipService$AccountStatusContentObserver;

.field public supportMultipleCalls:Z

.field private telephonyManager:Landroid/telephony/TelephonyManager;

.field private wakeLock:Landroid/os/PowerManager$WakeLock;

.field private wifiLock:Landroid/net/wifi/WifiManager$WifiLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 102
    sput-object v0, Lcom/weirdvoice/service/SipService;->singleton:Lcom/weirdvoice/service/SipService;

    .line 2002
    sput-object v0, Lcom/weirdvoice/service/SipService;->UI_CALL_PACKAGE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 91
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 98
    iput-boolean v1, p0, Lcom/weirdvoice/service/SipService;->autoAcceptCurrent:Z

    .line 99
    iput-boolean v1, p0, Lcom/weirdvoice/service/SipService;->supportMultipleCalls:Z

    .line 106
    new-instance v0, Lcom/weirdvoice/service/SipService$1;

    invoke-direct {v0, p0}, Lcom/weirdvoice/service/SipService$1;-><init>(Lcom/weirdvoice/service/SipService;)V

    iput-object v0, p0, Lcom/weirdvoice/service/SipService;->binder:Lcom/weirdvoice/api/ISipService$Stub;

    .line 892
    new-instance v0, Lcom/weirdvoice/service/SipService$2;

    invoke-direct {v0, p0}, Lcom/weirdvoice/service/SipService$2;-><init>(Lcom/weirdvoice/service/SipService;)V

    iput-object v0, p0, Lcom/weirdvoice/service/SipService;->binderConfiguration:Lcom/weirdvoice/api/ISipConfiguration$Stub;

    .line 948
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/weirdvoice/service/SipService;->statusObserver:Lcom/weirdvoice/service/SipService$AccountStatusContentObserver;

    .line 1232
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/weirdvoice/service/SipService;->activitiesForOutgoing:Ljava/util/List;

    .line 1233
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/weirdvoice/service/SipService;->deferedUnregisterForOutgoing:Ljava/util/List;

    .line 1398
    iput-boolean v1, p0, Lcom/weirdvoice/service/SipService;->hasSomeActiveAccount:Z

    .line 1604
    iput-boolean v1, p0, Lcom/weirdvoice/service/SipService;->holdResources:Z

    .line 1668
    new-instance v0, Lcom/weirdvoice/service/SipService$ServiceHandler;

    invoke-direct {v0, p0}, Lcom/weirdvoice/service/SipService$ServiceHandler;-><init>(Lcom/weirdvoice/service/SipService;)V

    iput-object v0, p0, Lcom/weirdvoice/service/SipService;->serviceHandler:Landroid/os/Handler;

    .line 2063
    sget-object v0, Lcom/weirdvoice/api/SipManager$PresenceStatus;->ONLINE:Lcom/weirdvoice/api/SipManager$PresenceStatus;

    iput-object v0, p0, Lcom/weirdvoice/service/SipService;->presence:Lcom/weirdvoice/api/SipManager$PresenceStatus;

    .line 91
    return-void
.end method

.method static synthetic access$0()Lcom/weirdvoice/pjsip/PjSipService;
    .locals 1

    .prologue
    .line 945
    sget-object v0, Lcom/weirdvoice/service/SipService;->pjService:Lcom/weirdvoice/pjsip/PjSipService;

    return-object v0
.end method

.method static synthetic access$1(Lcom/weirdvoice/service/SipService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/weirdvoice/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 1402
    invoke-direct {p0}, Lcom/weirdvoice/service/SipService;->addAllAccounts()V

    return-void
.end method

.method static synthetic access$10(Lcom/weirdvoice/service/SipService;Lcom/weirdvoice/service/SipService$SipServiceExecutor;)V
    .locals 0

    .prologue
    .line 944
    iput-object p1, p0, Lcom/weirdvoice/service/SipService;->mExecutor:Lcom/weirdvoice/service/SipService$SipServiceExecutor;

    return-void
.end method

.method static synthetic access$2(Lcom/weirdvoice/service/SipService;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/weirdvoice/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 1455
    invoke-direct {p0, p1}, Lcom/weirdvoice/service/SipService;->unregisterAllAccounts(Z)V

    return-void
.end method

.method static synthetic access$3(Lcom/weirdvoice/service/SipService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/weirdvoice/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 1482
    invoke-direct {p0}, Lcom/weirdvoice/service/SipService;->reAddAllAccounts()V

    return-void
.end method

.method static synthetic access$4(Lcom/weirdvoice/service/SipService;)Lcom/weirdvoice/utils/PreferencesProviderWrapper;
    .locals 1

    .prologue
    .line 938
    iget-object v0, p0, Lcom/weirdvoice/service/SipService;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    return-object v0
.end method

.method static synthetic access$5(Lcom/weirdvoice/service/SipService;Lcom/weirdvoice/api/SipManager$PresenceStatus;)V
    .locals 0

    .prologue
    .line 2063
    iput-object p1, p0, Lcom/weirdvoice/service/SipService;->presence:Lcom/weirdvoice/api/SipManager$PresenceStatus;

    return-void
.end method

.method static synthetic access$6(Lcom/weirdvoice/service/SipService;)Lcom/weirdvoice/api/SipManager$PresenceStatus;
    .locals 1

    .prologue
    .line 2063
    iget-object v0, p0, Lcom/weirdvoice/service/SipService;->presence:Lcom/weirdvoice/api/SipManager$PresenceStatus;

    return-object v0
.end method

.method static synthetic access$7()Landroid/os/Looper;
    .locals 1

    .prologue
    .line 1798
    invoke-static {}, Lcom/weirdvoice/service/SipService;->createLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8(Lcom/weirdvoice/service/SipService;)Lcom/weirdvoice/service/SipWakeLock;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/weirdvoice/service/SipService;->sipWakeLock:Lcom/weirdvoice/service/SipWakeLock;

    return-object v0
.end method

.method static synthetic access$9(Lcom/weirdvoice/service/SipService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/weirdvoice/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 1306
    invoke-direct {p0}, Lcom/weirdvoice/service/SipService;->startSipStack()V

    return-void
.end method

.method private declared-synchronized acquireResources()V
    .locals 7

    .prologue
    .line 1610
    monitor-enter p0

    :try_start_0
    iget-boolean v5, p0, Lcom/weirdvoice/service/SipService;->holdResources:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_0

    .line 1651
    :goto_0
    monitor-exit p0

    return-void

    .line 1615
    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/weirdvoice/service/SipService;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    const-string v6, "use_partial_wake_lock"

    invoke-virtual {v5, v6}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1616
    const-string v5, "power"

    invoke-virtual {p0, v5}, Lcom/weirdvoice/service/SipService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 1617
    .local v2, "pman":Landroid/os/PowerManager;
    iget-object v5, p0, Lcom/weirdvoice/service/SipService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v5, :cond_1

    .line 1618
    const/4 v5, 0x1

    const-string v6, "com.weirdvoice.SipService"

    invoke-virtual {v2, v5, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, p0, Lcom/weirdvoice/service/SipService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1619
    iget-object v5, p0, Lcom/weirdvoice/service/SipService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 1622
    :cond_1
    iget-object v5, p0, Lcom/weirdvoice/service/SipService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1623
    iget-object v5, p0, Lcom/weirdvoice/service/SipService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1628
    .end local v2    # "pman":Landroid/os/PowerManager;
    :cond_2
    const-string v5, "wifi"

    invoke-virtual {p0, v5}, Lcom/weirdvoice/service/SipService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    .line 1629
    .local v4, "wman":Landroid/net/wifi/WifiManager;
    iget-object v5, p0, Lcom/weirdvoice/service/SipService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-nez v5, :cond_4

    .line 1630
    const/4 v1, 0x1

    .line 1631
    .local v1, "mode":I
    const/16 v5, 0x9

    invoke-static {v5}, Lcom/weirdvoice/utils/Compatibility;->isCompatible(I)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/weirdvoice/service/SipService;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    const-string v6, "lock_wifi_perfs"

    invoke-virtual {v5, v6}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1632
    const/4 v1, 0x3

    .line 1634
    :cond_3
    const-string v5, "com.weirdvoice.SipService"

    invoke-virtual {v4, v1, v5}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v5

    iput-object v5, p0, Lcom/weirdvoice/service/SipService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 1635
    iget-object v5, p0, Lcom/weirdvoice/service/SipService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiManager$WifiLock;->setReferenceCounted(Z)V

    .line 1637
    .end local v1    # "mode":I
    :cond_4
    iget-object v5, p0, Lcom/weirdvoice/service/SipService;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    const-string v6, "lock_wifi"

    invoke-virtual {v5, v6}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/weirdvoice/service/SipService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v5

    if-nez v5, :cond_6

    .line 1638
    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    .line 1639
    .local v3, "winfo":Landroid/net/wifi/WifiInfo;
    if-eqz v3, :cond_6

    .line 1640
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v5

    invoke-static {v5}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    .line 1643
    .local v0, "dstate":Landroid/net/NetworkInfo$DetailedState;
    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-eq v0, v5, :cond_5

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v0, v5, :cond_6

    .line 1644
    :cond_5
    iget-object v5, p0, Lcom/weirdvoice/service/SipService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v5

    if-nez v5, :cond_6

    .line 1645
    iget-object v5, p0, Lcom/weirdvoice/service/SipService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 1650
    .end local v0    # "dstate":Landroid/net/NetworkInfo$DetailedState;
    .end local v3    # "winfo":Landroid/net/wifi/WifiInfo;
    :cond_6
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/weirdvoice/service/SipService;->holdResources:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 1610
    .end local v4    # "wman":Landroid/net/wifi/WifiManager;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method private addAllAccounts()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/weirdvoice/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 1403
    const-string v0, "SIP SRV"

    const-string v1, "We are adding all accounts right now...."

    invoke-static {v0, v1}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1405
    const/4 v9, 0x0

    .line 1406
    .local v9, "hasSomeSuccess":Z
    invoke-virtual {p0}, Lcom/weirdvoice/service/SipService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/weirdvoice/api/SipProfile;->ACCOUNT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/weirdvoice/db/DBProvider;->ACCOUNT_FULL_PROJECTION:[Ljava/lang/String;

    .line 1407
    const-string v3, "active=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v11, "1"

    aput-object v11, v4, v5

    const/4 v5, 0x0

    .line 1406
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1408
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_3

    .line 1410
    const/4 v10, 0x0

    .line 1411
    .local v10, "index":I
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 1412
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1414
    :cond_0
    new-instance v6, Lcom/weirdvoice/api/SipProfile;

    invoke-direct {v6, v7}, Lcom/weirdvoice/api/SipProfile;-><init>(Landroid/database/Cursor;)V

    .line 1415
    .local v6, "account":Lcom/weirdvoice/api/SipProfile;
    sget-object v0, Lcom/weirdvoice/service/SipService;->pjService:Lcom/weirdvoice/pjsip/PjSipService;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/weirdvoice/service/SipService;->pjService:Lcom/weirdvoice/pjsip/PjSipService;

    invoke-virtual {v0, v6}, Lcom/weirdvoice/pjsip/PjSipService;->addAccount(Lcom/weirdvoice/api/SipProfile;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1416
    const/4 v9, 0x1

    .line 1418
    :cond_1
    add-int/lit8 v10, v10, 0x1

    .line 1419
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0xa

    .line 1413
    if-lt v10, v0, :cond_0

    .line 1424
    .end local v6    # "account":Lcom/weirdvoice/api/SipProfile;
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1428
    .end local v10    # "index":I
    :cond_3
    :goto_0
    iput-boolean v9, p0, Lcom/weirdvoice/service/SipService;->hasSomeActiveAccount:Z

    .line 1430
    if-eqz v9, :cond_5

    .line 1431
    invoke-direct {p0}, Lcom/weirdvoice/service/SipService;->acquireResources()V

    .line 1439
    :cond_4
    :goto_1
    return-void

    .line 1421
    .restart local v10    # "index":I
    :catch_0
    move-exception v8

    .line 1422
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "SIP SRV"

    const-string v1, "Error on looping over sip profiles"

    invoke-static {v0, v1, v8}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1424
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1423
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 1424
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1425
    throw v0

    .line 1434
    .end local v10    # "index":I
    :cond_5
    invoke-direct {p0}, Lcom/weirdvoice/service/SipService;->releaseResources()V

    .line 1435
    iget-object v0, p0, Lcom/weirdvoice/service/SipService;->notificationManager:Lcom/weirdvoice/service/SipNotifications;

    if-eqz v0, :cond_4

    .line 1436
    iget-object v0, p0, Lcom/weirdvoice/service/SipService;->notificationManager:Lcom/weirdvoice/service/SipNotifications;

    invoke-virtual {v0}, Lcom/weirdvoice/service/SipNotifications;->cancelRegisters()V

    goto :goto_1
.end method

.method private applyComponentEnablingState(Z)V
    .locals 6
    .param p1, "active"    # Z

    .prologue
    .line 1062
    const/4 v2, 0x2

    .line 1063
    .local v2, "enableState":I
    if-eqz p1, :cond_0

    iget-object v4, p0, Lcom/weirdvoice/service/SipService;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    const-string v5, "integrate_tel_privileged"

    invoke-virtual {v4, v5}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1066
    const/4 v2, 0x1

    .line 1068
    :cond_0
    invoke-virtual {p0}, Lcom/weirdvoice/service/SipService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1070
    .local v3, "pm":Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/ComponentName;

    const-string v4, "com.weirdvoice.ui.PrivilegedOutgoingCallBroadcaster"

    invoke-direct {v0, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1072
    .local v0, "cmp":Landroid/content/ComponentName;
    :try_start_0
    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v4

    if-eq v4, v2, :cond_1

    .line 1073
    const/4 v4, 0x1

    invoke-virtual {v3, v0, v2, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1079
    :cond_1
    :goto_0
    return-void

    .line 1075
    :catch_0
    move-exception v1

    .line 1076
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "SIP SRV"

    .line 1077
    const-string v5, "Current manifest has no PrivilegedOutgoingCallBroadcaster -- you can ignore this if voluntary"

    .line 1076
    invoke-static {v4, v5, v1}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static buildCallUiIntent(Landroid/content/Context;Lcom/weirdvoice/api/SipCallSession;)Landroid/content/Intent;
    .locals 11
    .param p0, "ctxt"    # Landroid/content/Context;
    .param p1, "callInfo"    # Lcom/weirdvoice/api/SipCallSession;

    .prologue
    .line 2005
    sget-object v8, Lcom/weirdvoice/service/SipService;->UI_CALL_PACKAGE:Ljava/lang/String;

    if-nez v8, :cond_1

    .line 2006
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/weirdvoice/service/SipService;->UI_CALL_PACKAGE:Ljava/lang/String;

    .line 2008
    :try_start_0
    const-string v8, "com.weirdvoice.phone.action.INCALL"

    invoke-static {p0, v8}, Lcom/weirdvoice/utils/ExtraPlugins;->getDynActivityPlugins(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 2009
    .local v1, "callsUis":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/weirdvoice/utils/ExtraPlugins$DynActivityPlugin;>;"
    const-string v8, "call_ui_package"

    sget-object v9, Lcom/weirdvoice/service/SipService;->UI_CALL_PACKAGE:Ljava/lang/String;

    invoke-static {p0, v8, v9}, Lcom/weirdvoice/api/SipConfigManager;->getPreferenceStringValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2010
    .local v6, "preferredPackage":Ljava/lang/String;
    const/4 v5, 0x0

    .line 2011
    .local v5, "packageName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 2012
    .local v3, "foundPref":Z
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_2

    .line 2020
    :goto_0
    if-nez v3, :cond_1

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 2021
    sput-object v5, Lcom/weirdvoice/service/SipService;->UI_CALL_PACKAGE:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2027
    .end local v1    # "callsUis":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/weirdvoice/utils/ExtraPlugins$DynActivityPlugin;>;"
    .end local v3    # "foundPref":Z
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "preferredPackage":Ljava/lang/String;
    :cond_1
    :goto_1
    new-instance v7, Lcom/weirdvoice/api/SipCallSession;

    invoke-direct {v7, p1}, Lcom/weirdvoice/api/SipCallSession;-><init>(Lcom/weirdvoice/api/SipCallSession;)V

    .line 2028
    .local v7, "toSendInfo":Lcom/weirdvoice/api/SipCallSession;
    new-instance v4, Landroid/content/Intent;

    const-string v8, "com.weirdvoice.phone.action.INCALL"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2029
    .local v4, "intent":Landroid/content/Intent;
    const-string v8, "call_info"

    invoke-virtual {v4, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2030
    sget-object v8, Lcom/weirdvoice/service/SipService;->UI_CALL_PACKAGE:Ljava/lang/String;

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2031
    const/high16 v8, 0x30000000

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2032
    return-object v4

    .line 2012
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v7    # "toSendInfo":Lcom/weirdvoice/api/SipCallSession;
    .restart local v1    # "callsUis":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/weirdvoice/utils/ExtraPlugins$DynActivityPlugin;>;"
    .restart local v3    # "foundPref":Z
    .restart local v5    # "packageName":Ljava/lang/String;
    .restart local v6    # "preferredPackage":Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2013
    .local v0, "activity":Ljava/lang/String;
    const-string v9, "/"

    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v5, v9, v10

    .line 2014
    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 2015
    sput-object v5, Lcom/weirdvoice/service/SipService;->UI_CALL_PACKAGE:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2016
    const/4 v3, 0x1

    .line 2017
    goto :goto_0

    .line 2023
    .end local v0    # "activity":Ljava/lang/String;
    .end local v1    # "callsUis":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/weirdvoice/utils/ExtraPlugins$DynActivityPlugin;>;"
    .end local v3    # "foundPref":Z
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "preferredPackage":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 2024
    .local v2, "e":Ljava/lang/Exception;
    const-string v8, "SIP SRV"

    const-string v9, "Error while resolving package"

    invoke-static {v8, v9, v2}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private static createLooper()Landroid/os/Looper;
    .locals 2

    .prologue
    .line 1800
    sget-object v0, Lcom/weirdvoice/service/SipService;->executorThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 1801
    const-string v0, "SIP SRV"

    const-string v1, "Creating new handler thread"

    invoke-static {v0, v1}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1803
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SipService.Executor"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/weirdvoice/service/SipService;->executorThread:Landroid/os/HandlerThread;

    .line 1804
    sget-object v0, Lcom/weirdvoice/service/SipService;->executorThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1807
    :cond_0
    sget-object v0, Lcom/weirdvoice/service/SipService;->executorThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method private loadStack()Z
    .locals 1

    .prologue
    .line 1276
    sget-object v0, Lcom/weirdvoice/service/SipService;->pjService:Lcom/weirdvoice/pjsip/PjSipService;

    if-nez v0, :cond_0

    .line 1277
    new-instance v0, Lcom/weirdvoice/pjsip/PjSipService;

    invoke-direct {v0}, Lcom/weirdvoice/pjsip/PjSipService;-><init>()V

    sput-object v0, Lcom/weirdvoice/service/SipService;->pjService:Lcom/weirdvoice/pjsip/PjSipService;

    .line 1279
    :cond_0
    sget-object v0, Lcom/weirdvoice/service/SipService;->pjService:Lcom/weirdvoice/pjsip/PjSipService;

    invoke-virtual {v0, p0}, Lcom/weirdvoice/pjsip/PjSipService;->setService(Lcom/weirdvoice/service/SipService;)V

    .line 1281
    sget-object v0, Lcom/weirdvoice/service/SipService;->pjService:Lcom/weirdvoice/pjsip/PjSipService;

    invoke-virtual {v0}, Lcom/weirdvoice/pjsip/PjSipService;->tryToLoadStack()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1282
    const/4 v0, 0x1

    .line 1284
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
            Lcom/weirdvoice/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 1483
    const-string v0, "SIP SRV"

    const-string v1, "RE REGISTER ALL ACCOUNTS"

    invoke-static {v0, v1}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1484
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/weirdvoice/service/SipService;->unregisterAllAccounts(Z)V

    .line 1485
    invoke-direct {p0}, Lcom/weirdvoice/service/SipService;->addAllAccounts()V

    .line 1486
    return-void
.end method

.method private registerBroadcasts()V
    .locals 5

    .prologue
    .line 1114
    iget-object v1, p0, Lcom/weirdvoice/service/SipService;->deviceStateReceiver:Lcom/weirdvoice/service/receiver/DynamicReceiver4;

    if-nez v1, :cond_0

    .line 1115
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1116
    .local v0, "intentfilter":Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1117
    const-string v1, "com.weirdvoice.service.ACCOUNT_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1118
    const-string v1, "com.weirdvoice.service.ACCOUNT_DELETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1119
    const-string v1, "com.weirdvoice.service.ACTION_SIP_CAN_BE_STOPPED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1120
    const-string v1, "com.weirdvoice.service.ACTION_SIP_REQUEST_RESTART"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1121
    const-string v1, "vpn.connectivity"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1122
    const/4 v1, 0x5

    invoke-static {v1}, Lcom/weirdvoice/utils/Compatibility;->isCompatible(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1123
    new-instance v1, Lcom/weirdvoice/service/receiver/DynamicReceiver5;

    invoke-direct {v1, p0}, Lcom/weirdvoice/service/receiver/DynamicReceiver5;-><init>(Lcom/weirdvoice/service/SipService;)V

    iput-object v1, p0, Lcom/weirdvoice/service/SipService;->deviceStateReceiver:Lcom/weirdvoice/service/receiver/DynamicReceiver4;

    .line 1127
    :goto_0
    iget-object v1, p0, Lcom/weirdvoice/service/SipService;->deviceStateReceiver:Lcom/weirdvoice/service/receiver/DynamicReceiver4;

    invoke-virtual {p0, v1, v0}, Lcom/weirdvoice/service/SipService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1128
    iget-object v1, p0, Lcom/weirdvoice/service/SipService;->deviceStateReceiver:Lcom/weirdvoice/service/receiver/DynamicReceiver4;

    invoke-virtual {v1}, Lcom/weirdvoice/service/receiver/DynamicReceiver4;->startMonitoring()V

    .line 1131
    .end local v0    # "intentfilter":Landroid/content/IntentFilter;
    :cond_0
    iget-object v1, p0, Lcom/weirdvoice/service/SipService;->phoneConnectivityReceiver:Lcom/weirdvoice/service/SipService$ServicePhoneStateReceiver;

    if-nez v1, :cond_1

    .line 1132
    const-string v1, "SIP SRV"

    const-string v2, "Listen for phone state "

    invoke-static {v1, v2}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1133
    new-instance v1, Lcom/weirdvoice/service/SipService$ServicePhoneStateReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/weirdvoice/service/SipService$ServicePhoneStateReceiver;-><init>(Lcom/weirdvoice/service/SipService;Lcom/weirdvoice/service/SipService$ServicePhoneStateReceiver;)V

    iput-object v1, p0, Lcom/weirdvoice/service/SipService;->phoneConnectivityReceiver:Lcom/weirdvoice/service/SipService$ServicePhoneStateReceiver;

    .line 1135
    iget-object v1, p0, Lcom/weirdvoice/service/SipService;->telephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/weirdvoice/service/SipService;->phoneConnectivityReceiver:Lcom/weirdvoice/service/SipService$ServicePhoneStateReceiver;

    .line 1136
    const/16 v3, 0x20

    .line 1135
    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 1139
    :cond_1
    iget-object v1, p0, Lcom/weirdvoice/service/SipService;->statusObserver:Lcom/weirdvoice/service/SipService$AccountStatusContentObserver;

    if-nez v1, :cond_2

    .line 1140
    new-instance v1, Lcom/weirdvoice/service/SipService$AccountStatusContentObserver;

    iget-object v2, p0, Lcom/weirdvoice/service/SipService;->serviceHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/weirdvoice/service/SipService$AccountStatusContentObserver;-><init>(Lcom/weirdvoice/service/SipService;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/weirdvoice/service/SipService;->statusObserver:Lcom/weirdvoice/service/SipService$AccountStatusContentObserver;

    .line 1141
    invoke-virtual {p0}, Lcom/weirdvoice/service/SipService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/weirdvoice/api/SipProfile;->ACCOUNT_STATUS_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/weirdvoice/service/SipService;->statusObserver:Lcom/weirdvoice/service/SipService$AccountStatusContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1144
    :cond_2
    return-void

    .line 1125
    .restart local v0    # "intentfilter":Landroid/content/IntentFilter;
    :cond_3
    new-instance v1, Lcom/weirdvoice/service/receiver/DynamicReceiver4;

    invoke-direct {v1, p0}, Lcom/weirdvoice/service/receiver/DynamicReceiver4;-><init>(Lcom/weirdvoice/service/SipService;)V

    iput-object v1, p0, Lcom/weirdvoice/service/SipService;->deviceStateReceiver:Lcom/weirdvoice/service/receiver/DynamicReceiver4;

    goto :goto_0
.end method

.method private registerServiceBroadcasts()V
    .locals 2

    .prologue
    .line 1082
    iget-object v1, p0, Lcom/weirdvoice/service/SipService;->serviceReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 1083
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1084
    .local v0, "intentfilter":Landroid/content/IntentFilter;
    const-string v1, "com.weirdvoice.service.ACTION_DEFER_OUTGOING_UNREGISTER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1085
    const-string v1, "com.weirdvoice.service.ACTION_OUTGOING_UNREGISTER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1086
    new-instance v1, Lcom/weirdvoice/service/SipService$3;

    invoke-direct {v1, p0}, Lcom/weirdvoice/service/SipService$3;-><init>(Lcom/weirdvoice/service/SipService;)V

    iput-object v1, p0, Lcom/weirdvoice/service/SipService;->serviceReceiver:Landroid/content/BroadcastReceiver;

    .line 1098
    iget-object v1, p0, Lcom/weirdvoice/service/SipService;->serviceReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/weirdvoice/service/SipService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1100
    .end local v0    # "intentfilter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private declared-synchronized releaseResources()V
    .locals 1

    .prologue
    .line 1654
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/weirdvoice/service/SipService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/weirdvoice/service/SipService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1655
    iget-object v0, p0, Lcom/weirdvoice/service/SipService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1657
    :cond_0
    iget-object v0, p0, Lcom/weirdvoice/service/SipService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/weirdvoice/service/SipService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1658
    iget-object v0, p0, Lcom/weirdvoice/service/SipService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 1660
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/weirdvoice/service/SipService;->holdResources:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1661
    monitor-exit p0

    return-void

    .line 1654
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setCaptureVideoWindow(Landroid/view/SurfaceView;)V
    .locals 2
    .param p1, "window"    # Landroid/view/SurfaceView;

    .prologue
    .line 2055
    invoke-virtual {p0}, Lcom/weirdvoice/service/SipService;->getExecutor()Lcom/weirdvoice/service/SipService$SipServiceExecutor;

    move-result-object v0

    new-instance v1, Lcom/weirdvoice/service/SipService$5;

    invoke-direct {v1, p0, p1}, Lcom/weirdvoice/service/SipService$5;-><init>(Lcom/weirdvoice/service/SipService;Landroid/view/SurfaceView;)V

    invoke-virtual {v0, v1}, Lcom/weirdvoice/service/SipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 2061
    return-void
.end method

.method private setRenderVideoWindow(ILandroid/view/SurfaceView;)V
    .locals 2
    .param p1, "callId"    # I
    .param p2, "window"    # Landroid/view/SurfaceView;

    .prologue
    .line 2047
    invoke-virtual {p0}, Lcom/weirdvoice/service/SipService;->getExecutor()Lcom/weirdvoice/service/SipService$SipServiceExecutor;

    move-result-object v0

    new-instance v1, Lcom/weirdvoice/service/SipService$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/weirdvoice/service/SipService$4;-><init>(Lcom/weirdvoice/service/SipService;ILandroid/view/SurfaceView;)V

    invoke-virtual {v0, v1}, Lcom/weirdvoice/service/SipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 2053
    return-void
.end method

.method public static setVideoWindow(ILandroid/view/SurfaceView;Z)V
    .locals 1
    .param p0, "callId"    # I
    .param p1, "window"    # Landroid/view/SurfaceView;
    .param p2, "local"    # Z

    .prologue
    .line 2037
    sget-object v0, Lcom/weirdvoice/service/SipService;->singleton:Lcom/weirdvoice/service/SipService;

    if-eqz v0, :cond_0

    .line 2038
    if-eqz p2, :cond_1

    .line 2039
    sget-object v0, Lcom/weirdvoice/service/SipService;->singleton:Lcom/weirdvoice/service/SipService;

    invoke-direct {v0, p1}, Lcom/weirdvoice/service/SipService;->setCaptureVideoWindow(Landroid/view/SurfaceView;)V

    .line 2044
    :cond_0
    :goto_0
    return-void

    .line 2041
    :cond_1
    sget-object v0, Lcom/weirdvoice/service/SipService;->singleton:Lcom/weirdvoice/service/SipService;

    invoke-direct {v0, p0, p1}, Lcom/weirdvoice/service/SipService;->setRenderVideoWindow(ILandroid/view/SurfaceView;)V

    goto :goto_0
.end method

.method private startSipStack()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/weirdvoice/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 1308
    iget-object v0, p0, Lcom/weirdvoice/service/SipService;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    const-string v1, "support_multiple_calls"

    invoke-virtual {v0, v1}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/weirdvoice/service/SipService;->supportMultipleCalls:Z

    .line 1310
    invoke-virtual {p0}, Lcom/weirdvoice/service/SipService;->isConnectivityValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1311
    const v0, 0x7f0c01ec

    invoke-virtual {p0, v0}, Lcom/weirdvoice/service/SipService;->notifyUserOfMessage(I)V

    .line 1312
    const-string v0, "SIP SRV"

    const-string v1, "No need to start sip"

    invoke-static {v0, v1}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1337
    :cond_0
    :goto_0
    return-void

    .line 1315
    :cond_1
    const-string v0, "SIP SRV"

    const-string v1, "Start was asked and we should actually start now"

    invoke-static {v0, v1}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1316
    sget-object v0, Lcom/weirdvoice/service/SipService;->pjService:Lcom/weirdvoice/pjsip/PjSipService;

    if-nez v0, :cond_2

    .line 1317
    const-string v0, "SIP SRV"

    const-string v1, "Start was asked and pjService in not there"

    invoke-static {v0, v1}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1318
    invoke-direct {p0}, Lcom/weirdvoice/service/SipService;->loadStack()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1319
    const-string v0, "SIP SRV"

    const-string v1, "Unable to load SIP stack !! "

    invoke-static {v0, v1}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1323
    :cond_2
    const-string v0, "SIP SRV"

    const-string v1, "Ask pjservice to start itself"

    invoke-static {v0, v1}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1327
    sget-object v0, Lcom/weirdvoice/service/SipService;->pjService:Lcom/weirdvoice/pjsip/PjSipService;

    invoke-virtual {v0}, Lcom/weirdvoice/pjsip/PjSipService;->sipStart()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1331
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/weirdvoice/service/SipService;->applyComponentEnablingState(Z)V

    .line 1333
    invoke-direct {p0}, Lcom/weirdvoice/service/SipService;->registerBroadcasts()V

    .line 1334
    const-string v0, "SIP SRV"

    const-string v1, "Add all accounts"

    invoke-static {v0, v1}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1335
    invoke-direct {p0}, Lcom/weirdvoice/service/SipService;->addAllAccounts()V

    goto :goto_0
.end method

.method private unregisterAllAccounts(Z)V
    .locals 9
    .param p1, "cancelNotification"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/weirdvoice/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1457
    invoke-direct {p0}, Lcom/weirdvoice/service/SipService;->releaseResources()V

    .line 1459
    const-string v0, "SIP SRV"

    const-string v1, "Remove all accounts"

    invoke-static {v0, v1}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1461
    invoke-virtual {p0}, Lcom/weirdvoice/service/SipService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/weirdvoice/api/SipProfile;->ACCOUNT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/weirdvoice/db/DBProvider;->ACCOUNT_FULL_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1462
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 1464
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1466
    :cond_0
    new-instance v6, Lcom/weirdvoice/api/SipProfile;

    invoke-direct {v6, v7}, Lcom/weirdvoice/api/SipProfile;-><init>(Landroid/database/Cursor;)V

    .line 1467
    .local v6, "account":Lcom/weirdvoice/api/SipProfile;
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v6, v0, v1}, Lcom/weirdvoice/service/SipService;->setAccountRegistration(Lcom/weirdvoice/api/SipProfile;IZ)Z

    .line 1468
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 1472
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1477
    .end local v6    # "account":Lcom/weirdvoice/api/SipProfile;
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/weirdvoice/service/SipService;->notificationManager:Lcom/weirdvoice/service/SipNotifications;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 1478
    iget-object v0, p0, Lcom/weirdvoice/service/SipService;->notificationManager:Lcom/weirdvoice/service/SipNotifications;

    invoke-virtual {v0}, Lcom/weirdvoice/service/SipNotifications;->cancelRegisters()V

    .line 1480
    :cond_2
    return-void

    .line 1469
    :catch_0
    move-exception v8

    .line 1470
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "SIP SRV"

    const-string v1, "Error on looping over sip profiles"

    invoke-static {v0, v1, v8}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1472
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1471
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 1472
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1473
    throw v0
.end method

.method private unregisterBroadcasts()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1150
    iget-object v1, p0, Lcom/weirdvoice/service/SipService;->deviceStateReceiver:Lcom/weirdvoice/service/receiver/DynamicReceiver4;

    if-eqz v1, :cond_0

    .line 1152
    :try_start_0
    const-string v1, "SIP SRV"

    const-string v2, "Stop and unregister device receiver"

    invoke-static {v1, v2}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1153
    iget-object v1, p0, Lcom/weirdvoice/service/SipService;->deviceStateReceiver:Lcom/weirdvoice/service/receiver/DynamicReceiver4;

    invoke-virtual {v1}, Lcom/weirdvoice/service/receiver/DynamicReceiver4;->stopMonitoring()V

    .line 1154
    iget-object v1, p0, Lcom/weirdvoice/service/SipService;->deviceStateReceiver:Lcom/weirdvoice/service/receiver/DynamicReceiver4;

    invoke-virtual {p0, v1}, Lcom/weirdvoice/service/SipService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1155
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/weirdvoice/service/SipService;->deviceStateReceiver:Lcom/weirdvoice/service/receiver/DynamicReceiver4;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1164
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/weirdvoice/service/SipService;->phoneConnectivityReceiver:Lcom/weirdvoice/service/SipService$ServicePhoneStateReceiver;

    if-eqz v1, :cond_1

    .line 1165
    const-string v1, "SIP SRV"

    const-string v2, "Unregister telephony receiver"

    invoke-static {v1, v2}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1166
    iget-object v1, p0, Lcom/weirdvoice/service/SipService;->telephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/weirdvoice/service/SipService;->phoneConnectivityReceiver:Lcom/weirdvoice/service/SipService$ServicePhoneStateReceiver;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 1167
    iput-object v4, p0, Lcom/weirdvoice/service/SipService;->phoneConnectivityReceiver:Lcom/weirdvoice/service/SipService$ServicePhoneStateReceiver;

    .line 1169
    :cond_1
    iget-object v1, p0, Lcom/weirdvoice/service/SipService;->statusObserver:Lcom/weirdvoice/service/SipService$AccountStatusContentObserver;

    if-eqz v1, :cond_2

    .line 1170
    invoke-virtual {p0}, Lcom/weirdvoice/service/SipService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/weirdvoice/service/SipService;->statusObserver:Lcom/weirdvoice/service/SipService$AccountStatusContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1171
    iput-object v4, p0, Lcom/weirdvoice/service/SipService;->statusObserver:Lcom/weirdvoice/service/SipService$AccountStatusContentObserver;

    .line 1174
    :cond_2
    return-void

    .line 1156
    :catch_0
    move-exception v0

    .line 1161
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "SIP SRV"

    const-string v2, "Has not to unregister telephony receiver"

    invoke-static {v1, v2}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private unregisterServiceBroadcasts()V
    .locals 1

    .prologue
    .line 1103
    iget-object v0, p0, Lcom/weirdvoice/service/SipService;->serviceReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 1104
    iget-object v0, p0, Lcom/weirdvoice/service/SipService;->serviceReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/weirdvoice/service/SipService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/weirdvoice/service/SipService;->serviceReceiver:Landroid/content/BroadcastReceiver;

    .line 1107
    :cond_0
    return-void
.end method


# virtual methods
.method public addBuddy(Ljava/lang/String;)I
    .locals 4
    .param p1, "buddyUri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/weirdvoice/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 1586
    const/4 v0, -0x1

    .line 1587
    .local v0, "retVal":I
    sget-object v1, Lcom/weirdvoice/service/SipService;->pjService:Lcom/weirdvoice/pjsip/PjSipService;

    if-eqz v1, :cond_0

    .line 1588
    const-string v1, "SIP SRV"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Trying to add buddy "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1589
    sget-object v1, Lcom/weirdvoice/service/SipService;->pjService:Lcom/weirdvoice/pjsip/PjSipService;

    invoke-virtual {v1, p1}, Lcom/weirdvoice/pjsip/PjSipService;->addBuddy(Ljava/lang/String;)I

    move-result v0

    .line 1591
    :cond_0
    return v0
.end method

.method public cleanStop()V
    .locals 2

    .prologue
    .line 1058
    invoke-virtual {p0}, Lcom/weirdvoice/service/SipService;->getExecutor()Lcom/weirdvoice/service/SipService$SipServiceExecutor;

    move-result-object v0

    new-instance v1, Lcom/weirdvoice/service/SipService$DestroyRunnable;

    invoke-direct {v1, p0}, Lcom/weirdvoice/service/SipService$DestroyRunnable;-><init>(Lcom/weirdvoice/service/SipService;)V

    invoke-virtual {v0, v1}, Lcom/weirdvoice/service/SipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 1059
    return-void
.end method

.method public confAdjustRxLevel(F)V
    .locals 2
    .param p1, "speakVolume"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/weirdvoice/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 1575
    sget-object v0, Lcom/weirdvoice/service/SipService;->pjService:Lcom/weirdvoice/pjsip/PjSipService;

    if-eqz v0, :cond_0

    .line 1576
    sget-object v0, Lcom/weirdvoice/service/SipService;->pjService:Lcom/weirdvoice/pjsip/PjSipService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/weirdvoice/pjsip/PjSipService;->confAdjustRxLevel(IF)V

    .line 1578
    :cond_0
    return-void
.end method

.method public confAdjustTxLevel(F)V
    .locals 2
    .param p1, "speakVolume"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/weirdvoice/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 1566
    sget-object v0, Lcom/weirdvoice/service/SipService;->pjService:Lcom/weirdvoice/pjsip/PjSipService;

    if-eqz v0, :cond_0

    .line 1567
    sget-object v0, Lcom/weirdvoice/service/SipService;->pjService:Lcom/weirdvoice/pjsip/PjSipService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/weirdvoice/pjsip/PjSipService;->confAdjustTxLevel(IF)V

    .line 1569
    :cond_0
    return-void
.end method

.method public deferUnregisterForOutgoing(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "activityKey"    # Landroid/content/ComponentName;

    .prologue
    .line 1247
    iget-object v0, p0, Lcom/weirdvoice/service/SipService;->deferedUnregisterForOutgoing:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1248
    iget-object v0, p0, Lcom/weirdvoice/service/SipService;->deferedUnregisterForOutgoing:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1250
    :cond_0
    return-void
.end method

.method public getAccount(J)Lcom/weirdvoice/api/SipProfile;
    .locals 1
    .param p1, "accountId"    # J

    .prologue
    .line 1740
    sget-object v0, Lcom/weirdvoice/db/DBProvider;->ACCOUNT_FULL_PROJECTION:[Ljava/lang/String;

    invoke-static {p0, p1, p2, v0}, Lcom/weirdvoice/api/SipProfile;->getProfileFromDbId(Landroid/content/Context;J[Ljava/lang/String;)Lcom/weirdvoice/api/SipProfile;

    move-result-object v0

    return-object v0
.end method

.method public getExecutor()Lcom/weirdvoice/service/SipService$SipServiceExecutor;
    .locals 1

    .prologue
    .line 966
    iget-object v0, p0, Lcom/weirdvoice/service/SipService;->mExecutor:Lcom/weirdvoice/service/SipService$SipServiceExecutor;

    if-nez v0, :cond_0

    .line 967
    new-instance v0, Lcom/weirdvoice/service/SipService$SipServiceExecutor;

    invoke-direct {v0, p0}, Lcom/weirdvoice/service/SipService$SipServiceExecutor;-><init>(Lcom/weirdvoice/service/SipService;)V

    iput-object v0, p0, Lcom/weirdvoice/service/SipService;->mExecutor:Lcom/weirdvoice/service/SipService$SipServiceExecutor;

    .line 969
    :cond_0
    iget-object v0, p0, Lcom/weirdvoice/service/SipService;->mExecutor:Lcom/weirdvoice/service/SipService$SipServiceExecutor;

    return-object v0
.end method

.method public getGSMCallState()I
    .locals 1

    .prologue
    .line 1701
    iget-object v0, p0, Lcom/weirdvoice/service/SipService;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    return v0
.end method

.method public getPrefs()Lcom/weirdvoice/utils/PreferencesProviderWrapper;
    .locals 1

    .prologue
    .line 1557
    iget-object v0, p0, Lcom/weirdvoice/service/SipService;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    return-object v0
.end method

.method public getPresence()Lcom/weirdvoice/api/SipManager$PresenceStatus;
    .locals 1

    .prologue
    .line 2069
    iget-object v0, p0, Lcom/weirdvoice/service/SipService;->presence:Lcom/weirdvoice/api/SipManager$PresenceStatus;

    return-object v0
.end method

.method public getSipProfileState(I)Lcom/weirdvoice/api/SipProfileState;
    .locals 4
    .param p1, "accountDbId"    # I

    .prologue
    .line 1492
    int-to-long v2, p1

    invoke-virtual {p0, v2, v3}, Lcom/weirdvoice/service/SipService;->getAccount(J)Lcom/weirdvoice/api/SipProfile;

    move-result-object v0

    .line 1493
    .local v0, "acc":Lcom/weirdvoice/api/SipProfile;
    sget-object v1, Lcom/weirdvoice/service/SipService;->pjService:Lcom/weirdvoice/pjsip/PjSipService;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 1494
    sget-object v1, Lcom/weirdvoice/service/SipService;->pjService:Lcom/weirdvoice/pjsip/PjSipService;

    invoke-virtual {v1, v0}, Lcom/weirdvoice/pjsip/PjSipService;->getProfileState(Lcom/weirdvoice/api/SipProfile;)Lcom/weirdvoice/api/SipProfileState;

    move-result-object v1

    .line 1496
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getUAStateReceiver()Lcom/weirdvoice/pjsip/UAStateReceiver;
    .locals 1

    .prologue
    .line 1695
    sget-object v0, Lcom/weirdvoice/service/SipService;->pjService:Lcom/weirdvoice/pjsip/PjSipService;

    iget-object v0, v0, Lcom/weirdvoice/pjsip/PjSipService;->userAgentReceiver:Lcom/weirdvoice/pjsip/UAStateReceiver;

    return-object v0
.end method

.method public isConnectivityValid()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1262
    iget-object v1, p0, Lcom/weirdvoice/service/SipService;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    const-string v2, "has_been_quit"

    invoke-virtual {v1, v2, v0}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1269
    :cond_0
    :goto_0
    return v0

    .line 1265
    :cond_1
    iget-object v1, p0, Lcom/weirdvoice/service/SipService;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    invoke-virtual {v1}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->isValidConnectionForIncoming()Z

    move-result v0

    .line 1266
    .local v0, "valid":Z
    iget-object v1, p0, Lcom/weirdvoice/service/SipService;->activitiesForOutgoing:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1267
    iget-object v1, p0, Lcom/weirdvoice/service/SipService;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    invoke-virtual {v1}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->isValidConnectionForOutgoing()Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0
.end method

.method public notifyUserOfMessage(I)V
    .locals 3
    .param p1, "resStringId"    # I

    .prologue
    const/4 v2, 0x0

    .line 1395
    iget-object v0, p0, Lcom/weirdvoice/service/SipService;->serviceHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/weirdvoice/service/SipService;->serviceHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1396
    return-void
.end method

.method public notifyUserOfMessage(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1387
    iget-object v0, p0, Lcom/weirdvoice/service/SipService;->serviceHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/weirdvoice/service/SipService;->serviceHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1388
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1291
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1292
    .local v0, "serviceName":Ljava/lang/String;
    const-string v1, "SIP SRV"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Action is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1293
    if-eqz v0, :cond_0

    const-string v1, "com.weirdvoice.service.SipService"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1294
    :cond_0
    const-string v1, "SIP SRV"

    const-string v2, "Service returned"

    invoke-static {v1, v2}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1295
    iget-object v1, p0, Lcom/weirdvoice/service/SipService;->binder:Lcom/weirdvoice/api/ISipService$Stub;

    .line 1301
    :goto_0
    return-object v1

    .line 1296
    :cond_1
    const-string v1, "com.weirdvoice.service.SipConfiguration"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1297
    const-string v1, "SIP SRV"

    const-string v2, "Conf returned"

    invoke-static {v1, v2}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1298
    iget-object v1, p0, Lcom/weirdvoice/service/SipService;->binderConfiguration:Lcom/weirdvoice/api/ISipConfiguration$Stub;

    goto :goto_0

    .line 1300
    :cond_2
    const-string v1, "SIP SRV"

    const-string v2, "Default service (SipService) returned"

    invoke-static {v1, v2}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1301
    iget-object v1, p0, Lcom/weirdvoice/service/SipService;->binder:Lcom/weirdvoice/api/ISipService$Stub;

    goto :goto_0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 1019
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 1020
    sput-object p0, Lcom/weirdvoice/service/SipService;->singleton:Lcom/weirdvoice/service/SipService;

    .line 1022
    const-string v1, "SIP SRV"

    const-string v2, "Create SIP Service"

    invoke-static {v1, v2}, Lcom/weirdvoice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    new-instance v1, Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    invoke-direct {v1, p0}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/weirdvoice/service/SipService;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    .line 1024
    iget-object v1, p0, Lcom/weirdvoice/service/SipService;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    invoke-virtual {v1}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getLogLevel()I

    move-result v1

    invoke-static {v1}, Lcom/weirdvoice/utils/Log;->setLogLevel(I)V

    .line 1026
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/weirdvoice/service/SipService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/weirdvoice/service/SipService;->telephonyManager:Landroid/telephony/TelephonyManager;

    .line 1028
    new-instance v1, Lcom/weirdvoice/service/SipNotifications;

    invoke-direct {v1, p0}, Lcom/weirdvoice/service/SipNotifications;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/weirdvoice/service/SipService;->notificationManager:Lcom/weirdvoice/service/SipNotifications;

    .line 1029
    iget-object v1, p0, Lcom/weirdvoice/service/SipService;->notificationManager:Lcom/weirdvoice/service/SipNotifications;

    invoke-virtual {v1}, Lcom/weirdvoice/service/SipNotifications;->onServiceCreate()V

    .line 1030
    new-instance v2, Lcom/weirdvoice/service/SipWakeLock;

    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/weirdvoice/service/SipService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    invoke-direct {v2, v1}, Lcom/weirdvoice/service/SipWakeLock;-><init>(Landroid/os/PowerManager;)V

    iput-object v2, p0, Lcom/weirdvoice/service/SipService;->sipWakeLock:Lcom/weirdvoice/service/SipWakeLock;

    .line 1032
    iget-object v1, p0, Lcom/weirdvoice/service/SipService;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    const-string v2, "has_already_setup_service"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;Z)Z

    move-result v0

    .line 1033
    .local v0, "hasSetup":Z
    const-string v1, "SIP SRV"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Service has been setup ? "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1036
    invoke-direct {p0}, Lcom/weirdvoice/service/SipService;->registerServiceBroadcasts()V

    .line 1038
    if-nez v0, :cond_0

    .line 1039
    const-string v1, "SIP SRV"

    const-string v2, "RESET SETTINGS !!!!"

    invoke-static {v1, v2}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1040
    iget-object v1, p0, Lcom/weirdvoice/service/SipService;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    invoke-virtual {v1}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->resetAllDefaultValues()V

    .line 1045
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 1049
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 1050
    const-string v0, "SIP SRV"

    const-string v1, "Destroying SIP Service"

    invoke-static {v0, v1}, Lcom/weirdvoice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1051
    invoke-direct {p0}, Lcom/weirdvoice/service/SipService;->unregisterBroadcasts()V

    .line 1052
    invoke-direct {p0}, Lcom/weirdvoice/service/SipService;->unregisterServiceBroadcasts()V

    .line 1053
    iget-object v0, p0, Lcom/weirdvoice/service/SipService;->notificationManager:Lcom/weirdvoice/service/SipNotifications;

    invoke-virtual {v0}, Lcom/weirdvoice/service/SipNotifications;->onServiceDestroy()V

    .line 1054
    invoke-virtual {p0}, Lcom/weirdvoice/service/SipService;->getExecutor()Lcom/weirdvoice/service/SipService$SipServiceExecutor;

    move-result-object v0

    new-instance v1, Lcom/weirdvoice/service/SipService$FinalizeDestroyRunnable;

    invoke-direct {v1, p0}, Lcom/weirdvoice/service/SipService$FinalizeDestroyRunnable;-><init>(Lcom/weirdvoice/service/SipService;)V

    invoke-virtual {v0, v1}, Lcom/weirdvoice/service/SipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 1055
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 1182
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 1183
    if-eqz p1, :cond_0

    .line 1184
    const-string v2, "outgoing_activity"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .line 1185
    .local v1, "p":Landroid/os/Parcelable;
    if-eqz v1, :cond_0

    move-object v0, v1

    .line 1186
    check-cast v0, Landroid/content/ComponentName;

    .line 1187
    .local v0, "outActivity":Landroid/content/ComponentName;
    invoke-virtual {p0, v0}, Lcom/weirdvoice/service/SipService;->registerForOutgoing(Landroid/content/ComponentName;)V

    .line 1192
    .end local v0    # "outActivity":Landroid/content/ComponentName;
    .end local v1    # "p":Landroid/os/Parcelable;
    :cond_0
    invoke-virtual {p0}, Lcom/weirdvoice/service/SipService;->isConnectivityValid()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1193
    const v2, 0x7f0c01ec

    invoke-virtual {p0, v2}, Lcom/weirdvoice/service/SipService;->notifyUserOfMessage(I)V

    .line 1194
    const-string v2, "SIP SRV"

    const-string v3, "Harakiri... we are not needed since no way to use self"

    invoke-static {v2, v3}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1195
    invoke-virtual {p0}, Lcom/weirdvoice/service/SipService;->cleanStop()V

    .line 1229
    :cond_1
    :goto_0
    return-void

    .line 1201
    :cond_2
    invoke-direct {p0}, Lcom/weirdvoice/service/SipService;->loadStack()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1207
    const-string v2, "SIP SRV"

    const-string v3, "Direct sip start"

    invoke-static {v2, v3}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1208
    invoke-virtual {p0}, Lcom/weirdvoice/service/SipService;->getExecutor()Lcom/weirdvoice/service/SipService$SipServiceExecutor;

    move-result-object v2

    new-instance v3, Lcom/weirdvoice/service/SipService$StartRunnable;

    invoke-direct {v3, p0}, Lcom/weirdvoice/service/SipService$StartRunnable;-><init>(Lcom/weirdvoice/service/SipService;)V

    invoke-virtual {v2, v3}, Lcom/weirdvoice/service/SipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public registerForOutgoing(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "activityKey"    # Landroid/content/ComponentName;

    .prologue
    .line 1235
    iget-object v0, p0, Lcom/weirdvoice/service/SipService;->activitiesForOutgoing:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1236
    iget-object v0, p0, Lcom/weirdvoice/service/SipService;->activitiesForOutgoing:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1238
    :cond_0
    return-void
.end method

.method public removeBuddy(Ljava/lang/String;)V
    .locals 1
    .param p1, "buddyUri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/weirdvoice/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 1599
    sget-object v0, Lcom/weirdvoice/service/SipService;->pjService:Lcom/weirdvoice/pjsip/PjSipService;

    if-eqz v0, :cond_0

    .line 1600
    sget-object v0, Lcom/weirdvoice/service/SipService;->pjService:Lcom/weirdvoice/pjsip/PjSipService;

    invoke-virtual {v0, p1}, Lcom/weirdvoice/pjsip/PjSipService;->removeBuddy(Ljava/lang/String;)V

    .line 1602
    :cond_0
    return-void
.end method

.method public restartSipStack()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/weirdvoice/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 1374
    invoke-virtual {p0}, Lcom/weirdvoice/service/SipService;->stopSipStack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1375
    invoke-direct {p0}, Lcom/weirdvoice/service/SipService;->startSipStack()V

    .line 1379
    :goto_0
    return-void

    .line 1377
    :cond_0
    const-string v0, "SIP SRV"

    const-string v1, "Can\'t stop ... so do not restart ! "

    invoke-static {v0, v1}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setAccountRegistration(Lcom/weirdvoice/api/SipProfile;IZ)Z
    .locals 2
    .param p1, "account"    # Lcom/weirdvoice/api/SipProfile;
    .param p2, "renew"    # I
    .param p3, "forceReAdd"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/weirdvoice/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 1444
    const/4 v0, 0x0

    .line 1445
    .local v0, "status":Z
    sget-object v1, Lcom/weirdvoice/service/SipService;->pjService:Lcom/weirdvoice/pjsip/PjSipService;

    if-eqz v1, :cond_0

    .line 1446
    sget-object v1, Lcom/weirdvoice/service/SipService;->pjService:Lcom/weirdvoice/pjsip/PjSipService;

    invoke-virtual {v1, p1, p2, p3}, Lcom/weirdvoice/pjsip/PjSipService;->setAccountRegistration(Lcom/weirdvoice/api/SipProfile;IZ)Z

    move-result v0

    .line 1449
    :cond_0
    return v0
.end method

.method public setAutoAnswerNext(Z)V
    .locals 0
    .param p1, "auto_response"    # Z

    .prologue
    .line 1747
    iput-boolean p1, p0, Lcom/weirdvoice/service/SipService;->autoAcceptCurrent:Z

    .line 1748
    return-void
.end method

.method public setNoSnd()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/weirdvoice/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 1786
    sget-object v0, Lcom/weirdvoice/service/SipService;->pjService:Lcom/weirdvoice/pjsip/PjSipService;

    if-eqz v0, :cond_0

    .line 1787
    sget-object v0, Lcom/weirdvoice/service/SipService;->pjService:Lcom/weirdvoice/pjsip/PjSipService;

    invoke-virtual {v0}, Lcom/weirdvoice/pjsip/PjSipService;->setNoSnd()V

    .line 1789
    :cond_0
    return-void
.end method

.method public setSnd()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/weirdvoice/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 1792
    sget-object v0, Lcom/weirdvoice/service/SipService;->pjService:Lcom/weirdvoice/pjsip/PjSipService;

    if-eqz v0, :cond_0

    .line 1793
    sget-object v0, Lcom/weirdvoice/service/SipService;->pjService:Lcom/weirdvoice/pjsip/PjSipService;

    invoke-virtual {v0}, Lcom/weirdvoice/pjsip/PjSipService;->setSnd()V

    .line 1795
    :cond_0
    return-void
.end method

.method public shouldAutoAnswer(Ljava/lang/String;Lcom/weirdvoice/api/SipProfile;Landroid/os/Bundle;)I
    .locals 8
    .param p1, "remContact"    # Ljava/lang/String;
    .param p2, "acc"    # Lcom/weirdvoice/api/SipProfile;
    .param p3, "extraHdr"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x2

    .line 1759
    const-string v4, "SIP SRV"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Search if should I auto answer for "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1760
    const/4 v3, 0x0

    .line 1762
    .local v3, "shouldAutoAnswer":I
    iget-boolean v4, p0, Lcom/weirdvoice/service/SipService;->autoAcceptCurrent:Z

    if-eqz v4, :cond_0

    .line 1763
    const-string v4, "SIP SRV"

    const-string v5, "I should auto answer this one !!! "

    invoke-static {v4, v5}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1764
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/weirdvoice/service/SipService;->autoAcceptCurrent:Z

    .line 1765
    const/16 v4, 0xc8

    .line 1781
    :goto_0
    return v4

    .line 1768
    :cond_0
    if-eqz p2, :cond_2

    .line 1769
    const-string v4, "^(?:\")?([^<\"]*)(?:\")?[ ]*(?:<)?sip(?:s)?:([^@]*@[^>]*)(?:>)?"

    invoke-static {v4, v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 1770
    .local v2, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1771
    .local v0, "m":Ljava/util/regex/Matcher;
    move-object v1, p1

    .line 1772
    .local v1, "number":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1773
    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 1775
    :cond_1
    iget-wide v4, p2, Lcom/weirdvoice/api/SipProfile;->id:J

    invoke-static {p0, v4, v5, v1, p3}, Lcom/weirdvoice/models/Filter;->isAutoAnswerNumber(Landroid/content/Context;JLjava/lang/String;Landroid/os/Bundle;)I

    move-result v3

    .end local v0    # "m":Ljava/util/regex/Matcher;
    .end local v1    # "number":Ljava/lang/String;
    .end local v2    # "p":Ljava/util/regex/Pattern;
    :goto_1
    move v4, v3

    .line 1781
    goto :goto_0

    .line 1778
    :cond_2
    const-string v4, "SIP SRV"

    const-string v5, "Oupps... that come from an unknown account..."

    invoke-static {v4, v5}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public stopSipStack()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/weirdvoice/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 1344
    const-string v1, "SIP SRV"

    const-string v2, "Stop sip stack"

    invoke-static {v1, v2}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1345
    const/4 v0, 0x1

    .line 1346
    .local v0, "canStop":Z
    sget-object v1, Lcom/weirdvoice/service/SipService;->pjService:Lcom/weirdvoice/pjsip/PjSipService;

    if-eqz v1, :cond_0

    .line 1347
    sget-object v1, Lcom/weirdvoice/service/SipService;->pjService:Lcom/weirdvoice/pjsip/PjSipService;

    invoke-virtual {v1}, Lcom/weirdvoice/pjsip/PjSipService;->sipStop()Z

    move-result v1

    and-int/2addr v0, v1

    .line 1354
    :cond_0
    if-eqz v0, :cond_2

    .line 1361
    const/16 v1, 0xe

    invoke-static {v1}, Lcom/weirdvoice/utils/Compatibility;->isCompatible(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1362
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/weirdvoice/service/SipService;->applyComponentEnablingState(Z)V

    .line 1365
    :cond_1
    invoke-direct {p0}, Lcom/weirdvoice/service/SipService;->unregisterBroadcasts()V

    .line 1366
    invoke-direct {p0}, Lcom/weirdvoice/service/SipService;->releaseResources()V

    .line 1369
    :cond_2
    return v0
.end method

.method public treatDeferUnregistersForOutgoing()V
    .locals 3

    .prologue
    .line 1252
    iget-object v1, p0, Lcom/weirdvoice/service/SipService;->deferedUnregisterForOutgoing:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1255
    iget-object v1, p0, Lcom/weirdvoice/service/SipService;->deferedUnregisterForOutgoing:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1256
    invoke-virtual {p0}, Lcom/weirdvoice/service/SipService;->isConnectivityValid()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1257
    invoke-virtual {p0}, Lcom/weirdvoice/service/SipService;->cleanStop()V

    .line 1259
    :cond_0
    return-void

    .line 1252
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 1253
    .local v0, "cmp":Landroid/content/ComponentName;
    iget-object v2, p0, Lcom/weirdvoice/service/SipService;->activitiesForOutgoing:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public unregisterForOutgoing(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "activityKey"    # Landroid/content/ComponentName;

    .prologue
    .line 1240
    iget-object v0, p0, Lcom/weirdvoice/service/SipService;->activitiesForOutgoing:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1242
    invoke-virtual {p0}, Lcom/weirdvoice/service/SipService;->isConnectivityValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1243
    invoke-virtual {p0}, Lcom/weirdvoice/service/SipService;->cleanStop()V

    .line 1245
    :cond_0
    return-void
.end method

.method public updateRegistrationsState()V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 1500
    const-string v0, "SIP SRV"

    const-string v1, "Update registration state"

    invoke-static {v0, v1}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1501
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1502
    .local v6, "activeProfilesState":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/weirdvoice/api/SipProfileState;>;"
    invoke-virtual {p0}, Lcom/weirdvoice/service/SipService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/weirdvoice/api/SipProfile;->ACCOUNT_STATUS_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1503
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_3

    .line 1505
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 1506
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1508
    :cond_0
    new-instance v9, Lcom/weirdvoice/api/SipProfileState;

    invoke-direct {v9, v7}, Lcom/weirdvoice/api/SipProfileState;-><init>(Landroid/database/Cursor;)V

    .line 1509
    .local v9, "ps":Lcom/weirdvoice/api/SipProfileState;
    invoke-virtual {v9}, Lcom/weirdvoice/api/SipProfileState;->isValidForCall()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1510
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1512
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 1517
    .end local v9    # "ps":Lcom/weirdvoice/api/SipProfileState;
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1521
    :cond_3
    :goto_0
    invoke-static {}, Lcom/weirdvoice/api/SipProfileState;->getComparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v6, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1526
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 1527
    iget-object v0, p0, Lcom/weirdvoice/service/SipService;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    const-string v1, "icon_in_status_bar"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1531
    iget-object v0, p0, Lcom/weirdvoice/service/SipService;->notificationManager:Lcom/weirdvoice/service/SipNotifications;

    iget-object v1, p0, Lcom/weirdvoice/service/SipService;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    const-string v2, "icon_in_status_bar_nbr"

    invoke-virtual {v1, v2}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v6, v1}, Lcom/weirdvoice/service/SipNotifications;->notifyRegisteredAccounts(Ljava/util/ArrayList;Z)V

    .line 1542
    :goto_1
    iget-boolean v0, p0, Lcom/weirdvoice/service/SipService;->hasSomeActiveAccount:Z

    if-eqz v0, :cond_5

    .line 1543
    invoke-direct {p0}, Lcom/weirdvoice/service/SipService;->acquireResources()V

    .line 1547
    :goto_2
    return-void

    .line 1514
    :catch_0
    move-exception v8

    .line 1515
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "SIP SRV"

    const-string v1, "Error on looping over sip profiles"

    invoke-static {v0, v1, v8}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1517
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1516
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 1517
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1518
    throw v0

    .line 1539
    :cond_4
    iget-object v0, p0, Lcom/weirdvoice/service/SipService;->notificationManager:Lcom/weirdvoice/service/SipNotifications;

    invoke-virtual {v0}, Lcom/weirdvoice/service/SipNotifications;->cancelRegisters()V

    goto :goto_1

    .line 1545
    :cond_5
    invoke-direct {p0}, Lcom/weirdvoice/service/SipService;->releaseResources()V

    goto :goto_2
.end method
