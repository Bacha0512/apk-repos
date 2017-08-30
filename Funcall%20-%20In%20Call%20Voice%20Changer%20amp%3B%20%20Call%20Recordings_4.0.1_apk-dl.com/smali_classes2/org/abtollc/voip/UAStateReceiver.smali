.class public Lorg/abtollc/voip/UAStateReceiver;
.super Lorg/abtollc/jni/Callback;
.source "UAStateReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/abtollc/voip/UAStateReceiver$WorkerHandler;
    }
.end annotation


# static fields
.field static final LAUNCH_TRIGGER_DELAY:J = 0x7d0L

.field private static final ON_CALL_STATE:I = 0x15

.field private static final ON_MEDIA_STATE:I = 0x1f

.field private static final ON_PAGER:I = 0x33

.field private static final ON_REGISTRATION_STATE:I = 0x29

.field private static final THIS_FILE:Ljava/lang/String; = "SIP UA Receiver"


# instance fields
.field private callsList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/abtollc/api/SipCallSession;",
            ">;"
        }
    .end annotation
.end field

.field private eventLock:Landroid/os/PowerManager$WakeLock;

.field eventLockCount:I

.field private handlerThread:Landroid/os/HandlerThread;

.field private lastLaunchCallHandler:J

.field private msgHandler:Lorg/abtollc/voip/UAStateReceiver$WorkerHandler;

.field private ongoingCallLock:Landroid/os/PowerManager$WakeLock;

.field private pendingCleanup:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private pjService:Lorg/abtollc/voip/SipService;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 66
    invoke-direct {p0}, Lorg/abtollc/jni/Callback;-><init>()V

    .line 76
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/abtollc/voip/UAStateReceiver;->lastLaunchCallHandler:J

    .line 79
    const/4 v0, 0x0

    iput v0, p0, Lorg/abtollc/voip/UAStateReceiver;->eventLockCount:I

    .line 501
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/abtollc/voip/UAStateReceiver;->pendingCleanup:Ljava/util/List;

    .line 843
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/abtollc/voip/UAStateReceiver;->callsList:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$000(Lorg/abtollc/voip/UAStateReceiver;)Lorg/abtollc/voip/SipService;
    .locals 1
    .param p0, "x0"    # Lorg/abtollc/voip/UAStateReceiver;

    .prologue
    .line 66
    iget-object v0, p0, Lorg/abtollc/voip/UAStateReceiver;->pjService:Lorg/abtollc/voip/SipService;

    return-object v0
.end method

.method static synthetic access$100(Lorg/abtollc/voip/UAStateReceiver;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/abtollc/voip/UAStateReceiver;

    .prologue
    .line 66
    iget-object v0, p0, Lorg/abtollc/voip/UAStateReceiver;->pendingCleanup:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lorg/abtollc/voip/UAStateReceiver;)V
    .locals 0
    .param p0, "x0"    # Lorg/abtollc/voip/UAStateReceiver;

    .prologue
    .line 66
    invoke-direct {p0}, Lorg/abtollc/voip/UAStateReceiver;->lockCpu()V

    return-void
.end method

.method static synthetic access$300(Lorg/abtollc/voip/UAStateReceiver;Lorg/abtollc/api/SipCallSession;)V
    .locals 0
    .param p0, "x0"    # Lorg/abtollc/voip/UAStateReceiver;
    .param p1, "x1"    # Lorg/abtollc/api/SipCallSession;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lorg/abtollc/voip/UAStateReceiver;->launchCallHandler(Lorg/abtollc/api/SipCallSession;)V

    return-void
.end method

.method static synthetic access$400(Lorg/abtollc/voip/UAStateReceiver;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lorg/abtollc/voip/UAStateReceiver;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lorg/abtollc/voip/UAStateReceiver;->broadCastAndroidCallState(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lorg/abtollc/voip/UAStateReceiver;Lorg/abtollc/api/SipCallSession;)V
    .locals 0
    .param p0, "x0"    # Lorg/abtollc/voip/UAStateReceiver;
    .param p1, "x1"    # Lorg/abtollc/api/SipCallSession;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lorg/abtollc/voip/UAStateReceiver;->onBroadcastCallState(Lorg/abtollc/api/SipCallSession;)V

    return-void
.end method

.method static synthetic access$600(Lorg/abtollc/voip/UAStateReceiver;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/abtollc/voip/UAStateReceiver;

    .prologue
    .line 66
    iget-object v0, p0, Lorg/abtollc/voip/UAStateReceiver;->callsList:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$700(Lorg/abtollc/voip/UAStateReceiver;)V
    .locals 0
    .param p0, "x0"    # Lorg/abtollc/voip/UAStateReceiver;

    .prologue
    .line 66
    invoke-direct {p0}, Lorg/abtollc/voip/UAStateReceiver;->unlockCpu()V

    return-void
.end method

.method private broadCastAndroidCallState(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "state"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 1227
    const/16 v1, 0x13

    invoke-static {v1}, Lorg/abtollc/utils/Compatibility;->isCompatible(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1229
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1230
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1231
    if-eqz p2, :cond_0

    .line 1232
    const-string v1, "incoming_number"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1234
    :cond_0
    iget-object v1, p0, Lorg/abtollc/voip/UAStateReceiver;->pjService:Lorg/abtollc/voip/SipService;

    iget-object v1, v1, Lorg/abtollc/voip/SipService;->service:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v1}, Lorg/abtollc/service/ABTOSipService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1235
    iget-object v1, p0, Lorg/abtollc/voip/UAStateReceiver;->pjService:Lorg/abtollc/voip/SipService;

    iget-object v1, v1, Lorg/abtollc/voip/SipService;->service:Lorg/abtollc/service/ABTOSipService;

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v1, v0, v2}, Lorg/abtollc/service/ABTOSipService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1237
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method private fillRDataHeader(Ljava/lang/String;Lorg/abtollc/jni/SWIGTYPE_p_pjsip_rx_data;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "hdrName"    # Ljava/lang/String;
    .param p2, "rdata"    # Lorg/abtollc/jni/SWIGTYPE_p_pjsip_rx_data;
    .param p3, "out"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/abtollc/service/ABTOSipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 1392
    invoke-static {p1}, Lorg/abtollc/jni/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/abtollc/jni/pj_str_t;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/abtollc/jni/pjsua;->get_rx_data_header(Lorg/abtollc/jni/pj_str_t;Lorg/abtollc/jni/SWIGTYPE_p_pjsip_rx_data;)Lorg/abtollc/jni/pj_str_t;

    move-result-object v1

    invoke-static {v1}, Lorg/abtollc/voip/SipService;->pjStrToString(Lorg/abtollc/jni/pj_str_t;)Ljava/lang/String;

    move-result-object v0

    .line 1393
    .local v0, "valueHdr":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1394
    invoke-virtual {p3, p1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1396
    :cond_0
    return-void
.end method

.method private getContactName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "fullContact"    # Ljava/lang/String;

    .prologue
    .line 370
    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v1, v2, 0x1

    .line 371
    .local v1, "start":I
    const-string v2, "@"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 372
    .local v0, "end":I
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getRecordFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "remoteContact"    # Ljava/lang/String;

    .prologue
    .line 641
    iget-object v3, p0, Lorg/abtollc/voip/UAStateReceiver;->pjService:Lorg/abtollc/voip/SipService;

    iget-object v3, v3, Lorg/abtollc/voip/SipService;->service:Lorg/abtollc/service/ABTOSipService;

    invoke-static {v3}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getRecordsFolder(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 642
    .local v1, "dir":Ljava/io/File;
    if-eqz v1, :cond_0

    .line 643
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 644
    .local v0, "d":Ljava/util/Date;
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 645
    invoke-direct {p0, p1}, Lorg/abtollc/voip/UAStateReceiver;->sanitizeForFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "MM-dd-yy_kkmmss"

    .line 646
    invoke-static {v4, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".wav"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 647
    .local v2, "file":Ljava/io/File;
    const-string v3, "SIP UA Receiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Out dir "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 650
    .end local v0    # "d":Ljava/util/Date;
    .end local v2    # "file":Ljava/io/File;
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private declared-synchronized launchCallHandler(Lorg/abtollc/api/SipCallSession;)V
    .locals 6
    .param p1, "currentCallInfo2"    # Lorg/abtollc/api/SipCallSession;

    .prologue
    .line 1251
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1256
    .local v0, "currentElapsedTime":J
    iget-wide v2, p0, Lorg/abtollc/voip/UAStateReceiver;->lastLaunchCallHandler:J

    const-wide/16 v4, 0x7d0

    add-long/2addr v2, v4

    cmp-long v2, v2, v0

    if-gez v2, :cond_0

    .line 1266
    const-string v2, "SIP UA Receiver"

    const-string v3, "launchCallHandler"

    invoke-static {v2, v3}, Lorg/abtollc/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1270
    :goto_0
    monitor-exit p0

    return-void

    .line 1268
    :cond_0
    :try_start_1
    const-string v2, "SIP UA Receiver"

    const-string v3, "Ignore extra launch handler"

    invoke-static {v2, v3}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1251
    .end local v0    # "currentElapsedTime":J
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private lockCpu()V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lorg/abtollc/voip/UAStateReceiver;->eventLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 83
    const-string v0, "SIP UA Receiver"

    const-string v1, "< LOCK CPU"

    invoke-static {v0, v1}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lorg/abtollc/voip/UAStateReceiver;->eventLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 85
    iget v0, p0, Lorg/abtollc/voip/UAStateReceiver;->eventLockCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/abtollc/voip/UAStateReceiver;->eventLockCount:I

    .line 87
    :cond_0
    return-void
.end method

.method private onBroadcastCallState(Lorg/abtollc/api/SipCallSession;)V
    .locals 3
    .param p1, "callInfo"    # Lorg/abtollc/api/SipCallSession;

    .prologue
    .line 1212
    new-instance v0, Landroid/content/Intent;

    const-string v1, "org.abtollc.service.CALL_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1213
    .local v0, "callStateChangedIntent":Landroid/content/Intent;
    const-string v1, "call_info"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1214
    iget-object v1, p0, Lorg/abtollc/voip/UAStateReceiver;->pjService:Lorg/abtollc/voip/SipService;

    iget-object v1, v1, Lorg/abtollc/voip/SipService;->service:Lorg/abtollc/service/ABTOSipService;

    const-string v2, "android.permission.USE_SIP"

    invoke-virtual {v1, v0, v2}, Lorg/abtollc/service/ABTOSipService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1217
    return-void
.end method

.method private sanitizeForFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "remoteContact"    # Ljava/lang/String;

    .prologue
    .line 654
    move-object v0, p1

    .line 655
    .local v0, "fileName":Ljava/lang/String;
    const-string v1, "[\\.\\\\<>:; \"\'\\*]"

    const-string v2, "_"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 656
    return-object v0
.end method

.method private sendPendingDtmf(I)V
    .locals 2
    .param p1, "callId"    # I

    .prologue
    .line 1383
    iget-object v0, p0, Lorg/abtollc/voip/UAStateReceiver;->pjService:Lorg/abtollc/voip/SipService;

    iget-object v0, v0, Lorg/abtollc/voip/SipService;->service:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v0}, Lorg/abtollc/service/ABTOSipService;->getExecutor()Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;

    move-result-object v0

    new-instance v1, Lorg/abtollc/voip/UAStateReceiver$4;

    invoke-direct {v1, p0, p1}, Lorg/abtollc/voip/UAStateReceiver$4;-><init>(Lorg/abtollc/voip/UAStateReceiver;I)V

    invoke-virtual {v0, v1}, Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 1389
    return-void
.end method

.method private unlockCpu()V
    .locals 3

    .prologue
    .line 90
    iget-object v0, p0, Lorg/abtollc/voip/UAStateReceiver;->eventLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/abtollc/voip/UAStateReceiver;->eventLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lorg/abtollc/voip/UAStateReceiver;->eventLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 92
    iget v0, p0, Lorg/abtollc/voip/UAStateReceiver;->eventLockCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/abtollc/voip/UAStateReceiver;->eventLockCount:I

    .line 93
    const-string v0, "SIP UA Receiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "> UNLOCK CPU "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/abtollc/voip/UAStateReceiver;->eventLockCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :cond_0
    return-void
.end method

.method private updateCallInfoFromStack(Ljava/lang/Integer;Lorg/abtollc/jni/pjsip_event;)Lorg/abtollc/api/SipCallSession;
    .locals 3
    .param p1, "callId"    # Ljava/lang/Integer;
    .param p2, "e"    # Lorg/abtollc/jni/pjsip_event;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/abtollc/service/ABTOSipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 848
    const-string v1, "SIP UA Receiver"

    const-string v2, "Get call info for update"

    invoke-static {v1, v2}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 849
    iget-object v2, p0, Lorg/abtollc/voip/UAStateReceiver;->callsList:Ljava/util/HashMap;

    monitor-enter v2

    .line 850
    :try_start_0
    iget-object v1, p0, Lorg/abtollc/voip/UAStateReceiver;->callsList:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/abtollc/api/SipCallSession;

    .line 851
    .local v0, "callInfo":Lorg/abtollc/api/SipCallSession;
    if-nez v0, :cond_0

    .line 852
    new-instance v0, Lorg/abtollc/api/SipCallSession;

    .end local v0    # "callInfo":Lorg/abtollc/api/SipCallSession;
    invoke-direct {v0}, Lorg/abtollc/api/SipCallSession;-><init>()V

    .line 853
    .restart local v0    # "callInfo":Lorg/abtollc/api/SipCallSession;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/abtollc/api/SipCallSession;->setCallId(I)V

    .line 855
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 856
    const-string v1, "SIP UA Receiver"

    const-string v2, "Launch update"

    invoke-static {v1, v2}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    iget-object v1, p0, Lorg/abtollc/voip/UAStateReceiver;->pjService:Lorg/abtollc/voip/SipService;

    invoke-static {v0, p2, v1}, Lorg/abtollc/voip/SipCalls;->updateSessionFromPj(Lorg/abtollc/api/SipCallSession;Lorg/abtollc/jni/pjsip_event;Lorg/abtollc/voip/SipService;)V

    .line 860
    iget-object v1, p0, Lorg/abtollc/voip/UAStateReceiver;->pjService:Lorg/abtollc/voip/SipService;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/abtollc/voip/SipService;->isRecording(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/abtollc/api/SipCallSession;->setIsRecording(Z)V

    .line 861
    iget-object v1, p0, Lorg/abtollc/voip/UAStateReceiver;->pjService:Lorg/abtollc/voip/SipService;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/abtollc/voip/SipService;->canRecord(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/abtollc/api/SipCallSession;->setCanRecord(Z)V

    .line 862
    iget-object v2, p0, Lorg/abtollc/voip/UAStateReceiver;->callsList:Ljava/util/HashMap;

    monitor-enter v2

    .line 864
    :try_start_1
    iget-object v1, p0, Lorg/abtollc/voip/UAStateReceiver;->callsList:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 865
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 866
    return-object v0

    .line 855
    .end local v0    # "callInfo":Lorg/abtollc/api/SipCallSession;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 865
    .restart local v0    # "callInfo":Lorg/abtollc/api/SipCallSession;
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method


# virtual methods
.method public getActiveCallInProgress()Lorg/abtollc/api/SipCallSession;
    .locals 4

    .prologue
    .line 1281
    iget-object v2, p0, Lorg/abtollc/voip/UAStateReceiver;->callsList:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1282
    .local v1, "i":Ljava/lang/Integer;
    invoke-virtual {p0, v1}, Lorg/abtollc/voip/UAStateReceiver;->getCallInfo(Ljava/lang/Integer;)Lorg/abtollc/api/SipCallSession;

    move-result-object v0

    .line 1283
    .local v0, "callInfo":Lorg/abtollc/api/SipCallSession;
    invoke-virtual {v0}, Lorg/abtollc/api/SipCallSession;->isActive()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1287
    .end local v0    # "callInfo":Lorg/abtollc/api/SipCallSession;
    .end local v1    # "i":Ljava/lang/Integer;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getActiveCallOngoing()Lorg/abtollc/api/SipCallSession;
    .locals 4

    .prologue
    .line 1298
    iget-object v2, p0, Lorg/abtollc/voip/UAStateReceiver;->callsList:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1299
    .local v1, "i":Ljava/lang/Integer;
    invoke-virtual {p0, v1}, Lorg/abtollc/voip/UAStateReceiver;->getCallInfo(Ljava/lang/Integer;)Lorg/abtollc/api/SipCallSession;

    move-result-object v0

    .line 1300
    .local v0, "callInfo":Lorg/abtollc/api/SipCallSession;
    invoke-virtual {v0}, Lorg/abtollc/api/SipCallSession;->isActive()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lorg/abtollc/api/SipCallSession;->isOngoing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1304
    .end local v0    # "callInfo":Lorg/abtollc/api/SipCallSession;
    .end local v1    # "i":Ljava/lang/Integer;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCallInfo(Ljava/lang/Integer;)Lorg/abtollc/api/SipCallSession;
    .locals 3
    .param p1, "callId"    # Ljava/lang/Integer;

    .prologue
    .line 877
    iget-object v2, p0, Lorg/abtollc/voip/UAStateReceiver;->callsList:Ljava/util/HashMap;

    monitor-enter v2

    .line 878
    :try_start_0
    iget-object v1, p0, Lorg/abtollc/voip/UAStateReceiver;->callsList:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/abtollc/api/SipCallSession;

    .line 879
    .local v0, "callInfo":Lorg/abtollc/api/SipCallSession;
    monitor-exit v2

    .line 880
    return-object v0

    .line 879
    .end local v0    # "callInfo":Lorg/abtollc/api/SipCallSession;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCalls()[Lorg/abtollc/api/SipCallSession;
    .locals 5

    .prologue
    .line 889
    iget-object v3, p0, Lorg/abtollc/voip/UAStateReceiver;->callsList:Ljava/util/HashMap;

    if-eqz v3, :cond_0

    .line 891
    iget-object v3, p0, Lorg/abtollc/voip/UAStateReceiver;->callsList:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    new-array v0, v3, [Lorg/abtollc/api/SipCallSession;

    .line 892
    .local v0, "callsInfos":[Lorg/abtollc/api/SipCallSession;
    const/4 v2, 0x0

    .line 893
    .local v2, "i":I
    iget-object v3, p0, Lorg/abtollc/voip/UAStateReceiver;->callsList:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 894
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/abtollc/api/SipCallSession;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/abtollc/api/SipCallSession;

    aput-object v3, v0, v2

    .line 895
    add-int/lit8 v2, v2, 0x1

    .line 896
    goto :goto_0

    .line 899
    .end local v0    # "callsInfos":[Lorg/abtollc/api/SipCallSession;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/abtollc/api/SipCallSession;>;"
    .end local v2    # "i":I
    :cond_0
    const/4 v3, 0x0

    new-array v0, v3, [Lorg/abtollc/api/SipCallSession;

    :cond_1
    return-object v0
.end method

.method public handleHeadsetButton()Z
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v2, 0x1

    .line 1313
    invoke-virtual {p0}, Lorg/abtollc/voip/UAStateReceiver;->getActiveCallInProgress()Lorg/abtollc/api/SipCallSession;

    move-result-object v0

    .line 1314
    .local v0, "callInfo":Lorg/abtollc/api/SipCallSession;
    if-eqz v0, :cond_4

    .line 1319
    invoke-virtual {v0}, Lorg/abtollc/api/SipCallSession;->getCallState()I

    move-result v1

    .line 1320
    .local v1, "state":I
    invoke-virtual {v0}, Lorg/abtollc/api/SipCallSession;->isIncoming()Z

    move-result v3

    if-eqz v3, :cond_2

    if-eq v1, v4, :cond_0

    if-ne v1, v5, :cond_2

    .line 1323
    :cond_0
    iget-object v3, p0, Lorg/abtollc/voip/UAStateReceiver;->pjService:Lorg/abtollc/voip/SipService;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/abtollc/voip/UAStateReceiver;->pjService:Lorg/abtollc/voip/SipService;

    iget-object v3, v3, Lorg/abtollc/voip/SipService;->service:Lorg/abtollc/service/ABTOSipService;

    if-eqz v3, :cond_1

    .line 1324
    iget-object v3, p0, Lorg/abtollc/voip/UAStateReceiver;->pjService:Lorg/abtollc/voip/SipService;

    iget-object v3, v3, Lorg/abtollc/voip/SipService;->service:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v3}, Lorg/abtollc/service/ABTOSipService;->getExecutor()Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;

    move-result-object v3

    new-instance v4, Lorg/abtollc/voip/UAStateReceiver$2;

    invoke-direct {v4, p0, v0}, Lorg/abtollc/voip/UAStateReceiver$2;-><init>(Lorg/abtollc/voip/UAStateReceiver;Lorg/abtollc/api/SipCallSession;)V

    invoke-virtual {v3, v4}, Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 1362
    .end local v1    # "state":I
    :cond_1
    :goto_0
    return v2

    .line 1333
    .restart local v1    # "state":I
    :cond_2
    if-eq v1, v4, :cond_3

    if-eq v1, v5, :cond_3

    if-eq v1, v2, :cond_3

    const/4 v3, 0x5

    if-eq v1, v3, :cond_3

    const/4 v3, 0x4

    if-ne v1, v3, :cond_4

    .line 1344
    :cond_3
    iget-object v3, p0, Lorg/abtollc/voip/UAStateReceiver;->pjService:Lorg/abtollc/voip/SipService;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/abtollc/voip/UAStateReceiver;->pjService:Lorg/abtollc/voip/SipService;

    iget-object v3, v3, Lorg/abtollc/voip/SipService;->service:Lorg/abtollc/service/ABTOSipService;

    if-eqz v3, :cond_1

    .line 1345
    iget-object v3, p0, Lorg/abtollc/voip/UAStateReceiver;->pjService:Lorg/abtollc/voip/SipService;

    iget-object v3, v3, Lorg/abtollc/voip/SipService;->service:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v3}, Lorg/abtollc/service/ABTOSipService;->getExecutor()Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;

    move-result-object v3

    new-instance v4, Lorg/abtollc/voip/UAStateReceiver$3;

    invoke-direct {v4, p0, v0}, Lorg/abtollc/voip/UAStateReceiver$3;-><init>(Lorg/abtollc/voip/UAStateReceiver;Lorg/abtollc/api/SipCallSession;)V

    invoke-virtual {v3, v4}, Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1362
    .end local v1    # "state":I
    :cond_4
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public initService(Lorg/abtollc/voip/SipService;)V
    .locals 4
    .param p1, "srv"    # Lorg/abtollc/voip/SipService;

    .prologue
    const/4 v3, 0x1

    .line 1160
    iput-object p1, p0, Lorg/abtollc/voip/UAStateReceiver;->pjService:Lorg/abtollc/voip/SipService;

    .line 1164
    iget-object v1, p0, Lorg/abtollc/voip/UAStateReceiver;->handlerThread:Landroid/os/HandlerThread;

    if-nez v1, :cond_0

    .line 1165
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "UAStateAsyncWorker"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/abtollc/voip/UAStateReceiver;->handlerThread:Landroid/os/HandlerThread;

    .line 1166
    iget-object v1, p0, Lorg/abtollc/voip/UAStateReceiver;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 1168
    :cond_0
    iget-object v1, p0, Lorg/abtollc/voip/UAStateReceiver;->msgHandler:Lorg/abtollc/voip/UAStateReceiver$WorkerHandler;

    if-nez v1, :cond_1

    .line 1169
    new-instance v1, Lorg/abtollc/voip/UAStateReceiver$WorkerHandler;

    iget-object v2, p0, Lorg/abtollc/voip/UAStateReceiver;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/abtollc/voip/UAStateReceiver$WorkerHandler;-><init>(Lorg/abtollc/voip/UAStateReceiver;Landroid/os/Looper;)V

    iput-object v1, p0, Lorg/abtollc/voip/UAStateReceiver;->msgHandler:Lorg/abtollc/voip/UAStateReceiver$WorkerHandler;

    .line 1172
    :cond_1
    iget-object v1, p0, Lorg/abtollc/voip/UAStateReceiver;->eventLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_2

    .line 1173
    iget-object v1, p0, Lorg/abtollc/voip/UAStateReceiver;->pjService:Lorg/abtollc/voip/SipService;

    iget-object v1, v1, Lorg/abtollc/voip/SipService;->service:Lorg/abtollc/service/ABTOSipService;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Lorg/abtollc/service/ABTOSipService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1174
    .local v0, "pman":Landroid/os/PowerManager;
    const-string v1, "org.abtollc.inEventLock"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lorg/abtollc/voip/UAStateReceiver;->eventLock:Landroid/os/PowerManager$WakeLock;

    .line 1175
    iget-object v1, p0, Lorg/abtollc/voip/UAStateReceiver;->eventLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 1178
    .end local v0    # "pman":Landroid/os/PowerManager;
    :cond_2
    iget-object v1, p0, Lorg/abtollc/voip/UAStateReceiver;->ongoingCallLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_3

    .line 1179
    iget-object v1, p0, Lorg/abtollc/voip/UAStateReceiver;->pjService:Lorg/abtollc/voip/SipService;

    iget-object v1, v1, Lorg/abtollc/voip/SipService;->service:Lorg/abtollc/service/ABTOSipService;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Lorg/abtollc/service/ABTOSipService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1180
    .restart local v0    # "pman":Landroid/os/PowerManager;
    const-string v1, "org.abtollc.incomingCallLock"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lorg/abtollc/voip/UAStateReceiver;->ongoingCallLock:Landroid/os/PowerManager$WakeLock;

    .line 1181
    iget-object v1, p0, Lorg/abtollc/voip/UAStateReceiver;->ongoingCallLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 1183
    .end local v0    # "pman":Landroid/os/PowerManager;
    :cond_3
    return-void
.end method

.method public on_buddy_state(I)V
    .locals 9
    .param p1, "buddyId"    # I

    .prologue
    .line 314
    invoke-direct {p0}, Lorg/abtollc/voip/UAStateReceiver;->lockCpu()V

    .line 316
    new-instance v0, Lorg/abtollc/jni/pjsua_buddy_info;

    invoke-direct {v0}, Lorg/abtollc/jni/pjsua_buddy_info;-><init>()V

    .line 317
    .local v0, "binfo":Lorg/abtollc/jni/pjsua_buddy_info;
    invoke-static {p1, v0}, Lorg/abtollc/jni/pjsua;->buddy_get_info(ILorg/abtollc/jni/pjsua_buddy_info;)I

    .line 319
    const-string v6, "SIP UA Receiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "On buddy "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " state "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lorg/abtollc/jni/pjsua_buddy_info;->getMonitor_pres()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " state "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lorg/abtollc/jni/pjsua_buddy_info;->getStatus_text()Lorg/abtollc/jni/pj_str_t;

    move-result-object v8

    invoke-static {v8}, Lorg/abtollc/voip/SipService;->pjStrToString(Lorg/abtollc/jni/pj_str_t;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    sget-object v4, Lorg/abtollc/api/SipManager$PresenceStatus;->UNKNOWN:Lorg/abtollc/api/SipManager$PresenceStatus;

    .line 322
    .local v4, "presStatus":Lorg/abtollc/api/SipManager$PresenceStatus;
    invoke-virtual {v0}, Lorg/abtollc/jni/pjsua_buddy_info;->getStatus_text()Lorg/abtollc/jni/pj_str_t;

    move-result-object v6

    invoke-static {v6}, Lorg/abtollc/voip/SipService;->pjStrToString(Lorg/abtollc/jni/pj_str_t;)Ljava/lang/String;

    move-result-object v5

    .line 323
    .local v5, "presStatusTxt":Ljava/lang/String;
    const-string v6, "Online"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "Offline"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_0
    const/4 v2, 0x1

    .line 324
    .local v2, "isDefaultTxt":Z
    :goto_0
    sget-object v6, Lorg/abtollc/voip/UAStateReceiver$5;->$SwitchMap$org$abtollc$jni$pjsua_buddy_status:[I

    invoke-virtual {v0}, Lorg/abtollc/jni/pjsua_buddy_info;->getStatus()Lorg/abtollc/jni/pjsua_buddy_status;

    move-result-object v7

    invoke-virtual {v7}, Lorg/abtollc/jni/pjsua_buddy_status;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 333
    sget-object v4, Lorg/abtollc/api/SipManager$PresenceStatus;->UNKNOWN:Lorg/abtollc/api/SipManager$PresenceStatus;

    .line 337
    :goto_1
    sget-object v6, Lorg/abtollc/voip/UAStateReceiver$5;->$SwitchMap$org$abtollc$jni$pjrpid_activity:[I

    invoke-virtual {v0}, Lorg/abtollc/jni/pjsua_buddy_info;->getRpid()Lorg/abtollc/jni/pjrpid_element;

    move-result-object v7

    invoke-virtual {v7}, Lorg/abtollc/jni/pjrpid_element;->getActivity()Lorg/abtollc/jni/pjrpid_activity;

    move-result-object v7

    invoke-virtual {v7}, Lorg/abtollc/jni/pjrpid_activity;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_1

    .line 354
    :cond_1
    :goto_2
    const-string v6, "SIP UA Receiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Presence is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " with status text "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lorg/abtollc/jni/pjsua_buddy_info;->getStatus_text()Lorg/abtollc/jni/pj_str_t;

    move-result-object v8

    invoke-static {v8}, Lorg/abtollc/voip/SipService;->pjStrToString(Lorg/abtollc/jni/pj_str_t;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    invoke-virtual {v0}, Lorg/abtollc/jni/pjsua_buddy_info;->getStatus_text()Lorg/abtollc/jni/pj_str_t;

    move-result-object v6

    invoke-static {v6}, Lorg/abtollc/voip/SipService;->pjStrToString(Lorg/abtollc/jni/pj_str_t;)Ljava/lang/String;

    move-result-object v3

    .line 358
    .local v3, "note":Ljava/lang/String;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 359
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v6, "remote_contact"

    invoke-virtual {v0}, Lorg/abtollc/jni/pjsua_buddy_info;->getUri()Lorg/abtollc/jni/pj_str_t;

    move-result-object v7

    invoke-static {v7}, Lorg/abtollc/voip/SipService;->pjStrToString(Lorg/abtollc/jni/pj_str_t;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    const-string v6, "status_code"

    invoke-virtual {v4}, Lorg/abtollc/api/SipManager$PresenceStatus;->ordinal()I

    move-result v7

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 361
    const-string v6, "status_text"

    invoke-virtual {v1, v6, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    iget-object v6, p0, Lorg/abtollc/voip/UAStateReceiver;->pjService:Lorg/abtollc/voip/SipService;

    iget-object v6, v6, Lorg/abtollc/voip/SipService;->service:Lorg/abtollc/service/ABTOSipService;

    const/16 v7, 0x10

    invoke-virtual {v6, v7, v1}, Lorg/abtollc/service/ABTOSipService;->sendMsgToPhone(ILandroid/os/Bundle;)V

    .line 366
    invoke-direct {p0}, Lorg/abtollc/voip/UAStateReceiver;->unlockCpu()V

    .line 367
    return-void

    .line 323
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "isDefaultTxt":Z
    .end local v3    # "note":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 326
    .restart local v2    # "isDefaultTxt":Z
    :pswitch_0
    sget-object v4, Lorg/abtollc/api/SipManager$PresenceStatus;->ONLINE:Lorg/abtollc/api/SipManager$PresenceStatus;

    .line 327
    goto :goto_1

    .line 329
    :pswitch_1
    sget-object v4, Lorg/abtollc/api/SipManager$PresenceStatus;->OFFLINE:Lorg/abtollc/api/SipManager$PresenceStatus;

    .line 330
    goto :goto_1

    .line 339
    :pswitch_2
    sget-object v4, Lorg/abtollc/api/SipManager$PresenceStatus;->AWAY:Lorg/abtollc/api/SipManager$PresenceStatus;

    .line 340
    if-eqz v2, :cond_1

    .line 341
    const-string v5, ""

    goto :goto_2

    .line 345
    :pswitch_3
    sget-object v4, Lorg/abtollc/api/SipManager$PresenceStatus;->BUSY:Lorg/abtollc/api/SipManager$PresenceStatus;

    .line 346
    if-eqz v2, :cond_1

    .line 347
    const-string v5, ""

    goto :goto_2

    .line 324
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 337
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public on_call_media_state(I)V
    .locals 6
    .param p1, "callId"    # I

    .prologue
    .line 578
    invoke-static {p1}, Lorg/abtollc/jni/pjsua;->css_on_call_media_state(I)V

    .line 579
    invoke-direct {p0}, Lorg/abtollc/voip/UAStateReceiver;->lockCpu()V

    .line 581
    iget-object v3, p0, Lorg/abtollc/voip/UAStateReceiver;->pjService:Lorg/abtollc/voip/SipService;

    iget-object v3, v3, Lorg/abtollc/voip/SipService;->mediaManager:Lorg/abtollc/service/MediaManager;

    if-eqz v3, :cond_0

    .line 588
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lorg/abtollc/voip/UAStateReceiver;->updateCallInfoFromStack(Ljava/lang/Integer;Lorg/abtollc/jni/pjsip_event;)Lorg/abtollc/api/SipCallSession;

    move-result-object v1

    .line 593
    .local v1, "callInfo":Lorg/abtollc/api/SipCallSession;
    invoke-virtual {v1}, Lorg/abtollc/api/SipCallSession;->getMediaStatus()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    .line 594
    invoke-virtual {v1}, Lorg/abtollc/api/SipCallSession;->getMediaStatus()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    .line 595
    :cond_1
    invoke-virtual {v1}, Lorg/abtollc/api/SipCallSession;->getConfPort()I

    move-result v0

    .line 596
    .local v0, "callConfSlot":I
    const/4 v3, 0x0

    invoke-static {v0, v3}, Lorg/abtollc/jni/pjsua;->conf_connect(II)I

    .line 597
    const/4 v3, 0x0

    invoke-static {v3, v0}, Lorg/abtollc/jni/pjsua;->conf_connect(II)I

    .line 600
    iget-object v3, p0, Lorg/abtollc/voip/UAStateReceiver;->pjService:Lorg/abtollc/voip/SipService;

    iget-object v3, v3, Lorg/abtollc/voip/SipService;->mediaManager:Lorg/abtollc/service/MediaManager;

    if-eqz v3, :cond_2

    .line 601
    iget-object v3, p0, Lorg/abtollc/voip/UAStateReceiver;->pjService:Lorg/abtollc/voip/SipService;

    iget-object v3, v3, Lorg/abtollc/voip/SipService;->mediaManager:Lorg/abtollc/service/MediaManager;

    invoke-virtual {v3}, Lorg/abtollc/service/MediaManager;->setSoftwareVolume()V

    .line 610
    :cond_2
    iget-object v3, p0, Lorg/abtollc/voip/UAStateReceiver;->pjService:Lorg/abtollc/voip/SipService;

    invoke-virtual {v3, p1}, Lorg/abtollc/voip/SipService;->canRecord(I)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/abtollc/voip/UAStateReceiver;->pjService:Lorg/abtollc/voip/SipService;

    iget-object v3, v3, Lorg/abtollc/voip/SipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;

    const-string v4, "auto_record_calls"

    .line 613
    invoke-virtual {v3, v4}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 615
    invoke-virtual {v1}, Lorg/abtollc/api/SipCallSession;->getRemoteContact()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/abtollc/voip/UAStateReceiver;->getRecordFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 616
    .local v2, "filename":Ljava/lang/String;
    iget-object v3, p0, Lorg/abtollc/voip/UAStateReceiver;->pjService:Lorg/abtollc/voip/SipService;

    invoke-virtual {v3, p1, v2}, Lorg/abtollc/voip/SipService;->startRecording(ILjava/lang/String;)V

    .line 621
    .end local v0    # "callConfSlot":I
    .end local v2    # "filename":Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lorg/abtollc/voip/UAStateReceiver;->msgHandler:Lorg/abtollc/voip/UAStateReceiver$WorkerHandler;

    iget-object v4, p0, Lorg/abtollc/voip/UAStateReceiver;->msgHandler:Lorg/abtollc/voip/UAStateReceiver$WorkerHandler;

    const/16 v5, 0x1f

    invoke-virtual {v4, v5, v1}, Lorg/abtollc/voip/UAStateReceiver$WorkerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/abtollc/voip/UAStateReceiver$WorkerHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Lorg/abtollc/service/ABTOSipService$SameThreadException; {:try_start_0 .. :try_end_0} :catch_0

    .line 626
    .end local v1    # "callInfo":Lorg/abtollc/api/SipCallSession;
    :goto_0
    invoke-direct {p0}, Lorg/abtollc/voip/UAStateReceiver;->unlockCpu()V

    .line 627
    return-void

    .line 622
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public on_call_redirected(ILorg/abtollc/jni/pj_str_t;)Lorg/abtollc/jni/pjsip_redirect_op;
    .locals 3
    .param p1, "call_id"    # I
    .param p2, "target"    # Lorg/abtollc/jni/pj_str_t;

    .prologue
    .line 815
    const-string v0, "SIP UA Receiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ask for redirection, not yet implemented, for now allow all "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lorg/abtollc/voip/SipService;->pjStrToString(Lorg/abtollc/jni/pj_str_t;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/abtollc/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    sget-object v0, Lorg/abtollc/jni/pjsip_redirect_op;->PJSIP_REDIRECT_ACCEPT:Lorg/abtollc/jni/pjsip_redirect_op;

    return-object v0
.end method

.method public on_call_state(ILorg/abtollc/jni/pjsip_event;)V
    .locals 12
    .param p1, "callId"    # I
    .param p2, "e"    # Lorg/abtollc/jni/pjsip_event;

    .prologue
    .line 240
    iget-object v9, p0, Lorg/abtollc/voip/UAStateReceiver;->pjService:Lorg/abtollc/voip/SipService;

    iget-object v9, v9, Lorg/abtollc/voip/SipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;

    const-string v10, "use_native_ringback_tone"

    invoke-virtual {v9, v10}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceIntegerValue(Ljava/lang/String;)I

    move-result v8

    .line 241
    .local v8, "useNativeRingback":I
    invoke-static {p1, p2, v8}, Lorg/abtollc/jni/pjsua;->css_on_call_state(ILorg/abtollc/jni/pjsip_event;I)V

    .line 243
    invoke-direct {p0}, Lorg/abtollc/voip/UAStateReceiver;->lockCpu()V

    .line 245
    const-string v9, "SIP UA Receiver"

    const-string v10, "Call state <<"

    invoke-static {v9, v10}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    :try_start_0
    invoke-static {p2}, Lorg/abtollc/jni/pjsua;->get_event_status_code(Lorg/abtollc/jni/pjsip_event;)I

    move-result v7

    .line 250
    .local v7, "statusCode":I
    iget-object v9, p0, Lorg/abtollc/voip/UAStateReceiver;->callsList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/abtollc/api/SipCallSession;

    .line 251
    .local v0, "call":Lorg/abtollc/api/SipCallSession;
    const/4 v6, 0x1

    .line 253
    .local v6, "newCall":Z
    if-eqz v0, :cond_0

    .line 254
    invoke-virtual {v0}, Lorg/abtollc/api/SipCallSession;->isAfterEnded()Z

    move-result v6

    .line 257
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {p0, v9, p2}, Lorg/abtollc/voip/UAStateReceiver;->updateCallInfoFromStack(Ljava/lang/Integer;Lorg/abtollc/jni/pjsip_event;)Lorg/abtollc/api/SipCallSession;

    move-result-object v1

    .line 258
    .local v1, "callInfo":Lorg/abtollc/api/SipCallSession;
    invoke-virtual {v1}, Lorg/abtollc/api/SipCallSession;->getCallState()I

    move-result v2

    .line 260
    .local v2, "callState":I
    const/4 v9, 0x6

    if-ne v2, v9, :cond_a

    .line 262
    iget-object v9, p0, Lorg/abtollc/voip/UAStateReceiver;->callsList:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/abtollc/api/SipCallSession;

    .line 263
    .local v4, "existCall":Lorg/abtollc/api/SipCallSession;
    if-eqz v0, :cond_2

    invoke-virtual {v4}, Lorg/abtollc/api/SipCallSession;->getCallId()I

    move-result v10

    invoke-virtual {v0}, Lorg/abtollc/api/SipCallSession;->getCallId()I

    move-result v11

    if-eq v10, v11, :cond_1

    invoke-virtual {v4}, Lorg/abtollc/api/SipCallSession;->isBeforeConfirmed()Z

    move-result v10

    if-nez v10, :cond_2

    invoke-virtual {v4}, Lorg/abtollc/api/SipCallSession;->isActive()Z
    :try_end_0
    .catch Lorg/abtollc/service/ABTOSipService$SameThreadException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    if-eqz v10, :cond_1

    .line 307
    :cond_2
    invoke-direct {p0}, Lorg/abtollc/voip/UAStateReceiver;->unlockCpu()V

    .line 310
    .end local v0    # "call":Lorg/abtollc/api/SipCallSession;
    .end local v1    # "callInfo":Lorg/abtollc/api/SipCallSession;
    .end local v2    # "callState":I
    .end local v4    # "existCall":Lorg/abtollc/api/SipCallSession;
    .end local v6    # "newCall":Z
    .end local v7    # "statusCode":I
    :goto_0
    return-void

    .line 268
    .restart local v0    # "call":Lorg/abtollc/api/SipCallSession;
    .restart local v1    # "callInfo":Lorg/abtollc/api/SipCallSession;
    .restart local v2    # "callState":I
    .restart local v6    # "newCall":Z
    .restart local v7    # "statusCode":I
    :cond_3
    if-nez v6, :cond_6

    .line 270
    :try_start_1
    iget-object v9, p0, Lorg/abtollc/voip/UAStateReceiver;->pjService:Lorg/abtollc/voip/SipService;

    iget-object v9, v9, Lorg/abtollc/voip/SipService;->mediaManager:Lorg/abtollc/service/MediaManager;

    if-eqz v9, :cond_4

    .line 271
    iget-object v9, p0, Lorg/abtollc/voip/UAStateReceiver;->pjService:Lorg/abtollc/voip/SipService;

    iget-object v9, v9, Lorg/abtollc/voip/SipService;->mediaManager:Lorg/abtollc/service/MediaManager;

    invoke-virtual {v9}, Lorg/abtollc/service/MediaManager;->stopRingAndUnfocus()V

    .line 272
    iget-object v9, p0, Lorg/abtollc/voip/UAStateReceiver;->pjService:Lorg/abtollc/voip/SipService;

    iget-object v9, v9, Lorg/abtollc/voip/SipService;->mediaManager:Lorg/abtollc/service/MediaManager;

    invoke-virtual {v9}, Lorg/abtollc/service/MediaManager;->resetSettings()V

    .line 274
    :cond_4
    iget-object v9, p0, Lorg/abtollc/voip/UAStateReceiver;->ongoingCallLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v9, :cond_5

    iget-object v9, p0, Lorg/abtollc/voip/UAStateReceiver;->ongoingCallLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 275
    iget-object v9, p0, Lorg/abtollc/voip/UAStateReceiver;->ongoingCallLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 278
    :cond_5
    iget-object v9, p0, Lorg/abtollc/voip/UAStateReceiver;->pjService:Lorg/abtollc/voip/SipService;

    invoke-virtual {v9, p1}, Lorg/abtollc/voip/SipService;->stopDialtoneGenerator(I)V

    .line 279
    iget-object v9, p0, Lorg/abtollc/voip/UAStateReceiver;->pjService:Lorg/abtollc/voip/SipService;

    invoke-virtual {v9, p1}, Lorg/abtollc/voip/SipService;->stopRecording(I)V

    .line 280
    iget-object v9, p0, Lorg/abtollc/voip/UAStateReceiver;->pjService:Lorg/abtollc/voip/SipService;

    invoke-virtual {v9, p1}, Lorg/abtollc/voip/SipService;->stopPlaying(I)V

    .line 288
    :cond_6
    :goto_1
    iget-object v9, p0, Lorg/abtollc/voip/UAStateReceiver;->pjService:Lorg/abtollc/voip/SipService;

    iget-object v9, v9, Lorg/abtollc/voip/SipService;->mediaManager:Lorg/abtollc/service/MediaManager;

    if-eqz v9, :cond_7

    .line 289
    iget-object v9, p0, Lorg/abtollc/voip/UAStateReceiver;->pjService:Lorg/abtollc/voip/SipService;

    iget-object v9, v9, Lorg/abtollc/voip/SipService;->mediaManager:Lorg/abtollc/service/MediaManager;

    invoke-virtual {v9}, Lorg/abtollc/service/MediaManager;->stopRing()V

    .line 292
    :cond_7
    const/16 v9, 0x64

    if-eq v7, v9, :cond_8

    const/16 v9, 0xb4

    if-eq v7, v9, :cond_8

    const/16 v9, 0xb7

    if-ne v7, v9, :cond_9

    .line 293
    :cond_8
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 294
    .local v3, "data":Landroid/os/Bundle;
    const-string v9, "acc_id"

    iget-object v10, p0, Lorg/abtollc/voip/UAStateReceiver;->pjService:Lorg/abtollc/voip/SipService;

    iget-object v10, v10, Lorg/abtollc/voip/SipService;->service:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v1}, Lorg/abtollc/api/SipCallSession;->getAccId()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lorg/abtollc/api/SipProfile;->getProfileIdFromDbSipUri(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v10

    invoke-virtual {v3, v9, v10, v11}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 295
    const-string v9, "status_code"

    invoke-virtual {v3, v9, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 296
    iget-object v9, p0, Lorg/abtollc/voip/UAStateReceiver;->pjService:Lorg/abtollc/voip/SipService;

    iget-object v9, v9, Lorg/abtollc/voip/SipService;->service:Lorg/abtollc/service/ABTOSipService;

    const/16 v10, 0xc

    invoke-virtual {v9, v10, v3}, Lorg/abtollc/service/ABTOSipService;->sendMsgToPhone(ILandroid/os/Bundle;)V

    .line 299
    .end local v3    # "data":Landroid/os/Bundle;
    :cond_9
    iget-object v9, p0, Lorg/abtollc/voip/UAStateReceiver;->msgHandler:Lorg/abtollc/voip/UAStateReceiver$WorkerHandler;

    const/16 v10, 0x15

    invoke-virtual {v9, v10, v1}, Lorg/abtollc/voip/UAStateReceiver$WorkerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 300
    .local v5, "msg":Landroid/os/Message;
    if-eqz v6, :cond_b

    const/4 v9, 0x1

    :goto_2
    iput v9, v5, Landroid/os/Message;->arg1:I

    .line 301
    iget-object v9, p0, Lorg/abtollc/voip/UAStateReceiver;->msgHandler:Lorg/abtollc/voip/UAStateReceiver$WorkerHandler;

    invoke-virtual {v9, v5}, Lorg/abtollc/voip/UAStateReceiver$WorkerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 302
    const-string v9, "SIP UA Receiver"

    const-string v10, "Call state >>"

    invoke-static {v9, v10}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/abtollc/service/ABTOSipService$SameThreadException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 307
    invoke-direct {p0}, Lorg/abtollc/voip/UAStateReceiver;->unlockCpu()V

    goto/16 :goto_0

    .line 283
    .end local v5    # "msg":Landroid/os/Message;
    :cond_a
    :try_start_2
    iget-object v9, p0, Lorg/abtollc/voip/UAStateReceiver;->ongoingCallLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v9, :cond_6

    iget-object v9, p0, Lorg/abtollc/voip/UAStateReceiver;->ongoingCallLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v9

    if-nez v9, :cond_6

    .line 284
    iget-object v9, p0, Lorg/abtollc/voip/UAStateReceiver;->ongoingCallLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_2
    .catch Lorg/abtollc/service/ABTOSipService$SameThreadException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 303
    .end local v0    # "call":Lorg/abtollc/api/SipCallSession;
    .end local v1    # "callInfo":Lorg/abtollc/api/SipCallSession;
    .end local v2    # "callState":I
    .end local v6    # "newCall":Z
    .end local v7    # "statusCode":I
    :catch_0
    move-exception v9

    .line 307
    invoke-direct {p0}, Lorg/abtollc/voip/UAStateReceiver;->unlockCpu()V

    goto/16 :goto_0

    .line 300
    .restart local v0    # "call":Lorg/abtollc/api/SipCallSession;
    .restart local v1    # "callInfo":Lorg/abtollc/api/SipCallSession;
    .restart local v2    # "callState":I
    .restart local v5    # "msg":Landroid/os/Message;
    .restart local v6    # "newCall":Z
    .restart local v7    # "statusCode":I
    :cond_b
    const/4 v9, 0x0

    goto :goto_2

    .line 307
    .end local v0    # "call":Lorg/abtollc/api/SipCallSession;
    .end local v1    # "callInfo":Lorg/abtollc/api/SipCallSession;
    .end local v2    # "callState":I
    .end local v5    # "msg":Landroid/os/Message;
    .end local v6    # "newCall":Z
    .end local v7    # "statusCode":I
    :catchall_0
    move-exception v9

    invoke-direct {p0}, Lorg/abtollc/voip/UAStateReceiver;->unlockCpu()V

    throw v9
.end method

.method public on_call_transfer_status(IILorg/abtollc/jni/pj_str_t;ILorg/abtollc/jni/SWIGTYPE_p_int;)V
    .locals 4
    .param p1, "call_id"    # I
    .param p2, "st_code"    # I
    .param p3, "st_text"    # Lorg/abtollc/jni/pj_str_t;
    .param p4, "final_"    # I
    .param p5, "p_cont"    # Lorg/abtollc/jni/SWIGTYPE_p_int;

    .prologue
    .line 801
    invoke-static {p3}, Lorg/abtollc/voip/SipService;->pjStrToString(Lorg/abtollc/jni/pj_str_t;)Ljava/lang/String;

    move-result-object v1

    .line 803
    .local v1, "statusText":Ljava/lang/String;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 804
    .local v0, "data":Landroid/os/Bundle;
    const-string v2, "call_id"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 805
    const-string v2, "status_code"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 806
    const-string v2, "status_text"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    iget-object v2, p0, Lorg/abtollc/voip/UAStateReceiver;->pjService:Lorg/abtollc/voip/SipService;

    iget-object v2, v2, Lorg/abtollc/voip/SipService;->service:Lorg/abtollc/service/ABTOSipService;

    const/16 v3, 0x12

    invoke-virtual {v2, v3, v0}, Lorg/abtollc/service/ABTOSipService;->sendMsgToPhone(ILandroid/os/Bundle;)V

    .line 810
    invoke-super/range {p0 .. p5}, Lorg/abtollc/jni/Callback;->on_call_transfer_status(IILorg/abtollc/jni/pj_str_t;ILorg/abtollc/jni/SWIGTYPE_p_int;)V

    .line 811
    return-void
.end method

.method public on_dtmf_digit(II)V
    .locals 3
    .param p1, "call_id"    # I
    .param p2, "digit"    # I

    .prologue
    .line 635
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 636
    .local v0, "data":Landroid/os/Bundle;
    const-string v1, "tone_digit"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 637
    iget-object v1, p0, Lorg/abtollc/voip/UAStateReceiver;->pjService:Lorg/abtollc/voip/SipService;

    iget-object v1, v1, Lorg/abtollc/voip/SipService;->service:Lorg/abtollc/service/ABTOSipService;

    const/16 v2, 0xe

    invoke-virtual {v1, v2, v0}, Lorg/abtollc/service/ABTOSipService;->sendMsgToPhone(ILandroid/os/Bundle;)V

    .line 638
    return-void
.end method

.method public on_incoming_call(IILorg/abtollc/jni/SWIGTYPE_p_pjsip_rx_data;)V
    .locals 16
    .param p1, "accId"    # I
    .param p2, "callId"    # I
    .param p3, "rdata"    # Lorg/abtollc/jni/SWIGTYPE_p_pjsip_rx_data;

    .prologue
    .line 137
    invoke-direct/range {p0 .. p0}, Lorg/abtollc/voip/UAStateReceiver;->lockCpu()V

    .line 140
    const/4 v9, 0x0

    .line 141
    .local v9, "hasOngoingSipCall":Z
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/abtollc/voip/UAStateReceiver;->pjService:Lorg/abtollc/voip/SipService;

    if-eqz v12, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/abtollc/voip/UAStateReceiver;->pjService:Lorg/abtollc/voip/SipService;

    iget-object v12, v12, Lorg/abtollc/voip/SipService;->service:Lorg/abtollc/service/ABTOSipService;

    if-eqz v12, :cond_2

    .line 142
    invoke-virtual/range {p0 .. p0}, Lorg/abtollc/voip/UAStateReceiver;->getCalls()[Lorg/abtollc/api/SipCallSession;

    move-result-object v5

    .line 143
    .local v5, "calls":[Lorg/abtollc/api/SipCallSession;
    if-eqz v5, :cond_2

    .line 144
    array-length v13, v5

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v13, :cond_2

    aget-object v7, v5, v12

    .line 145
    .local v7, "existingCall":Lorg/abtollc/api/SipCallSession;
    invoke-virtual {v7}, Lorg/abtollc/api/SipCallSession;->isAfterEnded()Z

    move-result v14

    if-nez v14, :cond_1

    invoke-virtual {v7}, Lorg/abtollc/api/SipCallSession;->getCallId()I

    move-result v14

    move/from16 v0, p2

    if-eq v14, v0, :cond_1

    .line 146
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/abtollc/voip/UAStateReceiver;->pjService:Lorg/abtollc/voip/SipService;

    iget-object v14, v14, Lorg/abtollc/voip/SipService;->service:Lorg/abtollc/service/ABTOSipService;

    iget-boolean v14, v14, Lorg/abtollc/service/ABTOSipService;->supportMultipleCalls:Z

    if-nez v14, :cond_0

    .line 147
    const-string v12, "SIP UA Receiver"

    const-string v13, "Settings to not support two call at the same time !!!"

    invoke-static {v12, v13}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-wide/16 v12, 0x1e6

    const/4 v14, 0x0

    const/4 v15, 0x0

    move/from16 v0, p2

    invoke-static {v0, v12, v13, v14, v15}, Lorg/abtollc/jni/pjsua;->call_hangup(IJLorg/abtollc/jni/pj_str_t;Lorg/abtollc/jni/pjsua_msg_data;)I

    .line 167
    invoke-direct/range {p0 .. p0}, Lorg/abtollc/voip/UAStateReceiver;->unlockCpu()V

    .line 234
    .end local v5    # "calls":[Lorg/abtollc/api/SipCallSession;
    .end local v7    # "existingCall":Lorg/abtollc/api/SipCallSession;
    :goto_1
    return-void

    .line 170
    .restart local v5    # "calls":[Lorg/abtollc/api/SipCallSession;
    .restart local v7    # "existingCall":Lorg/abtollc/api/SipCallSession;
    :cond_0
    const/4 v9, 0x1

    .line 144
    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 177
    .end local v5    # "calls":[Lorg/abtollc/api/SipCallSession;
    .end local v7    # "existingCall":Lorg/abtollc/api/SipCallSession;
    :cond_2
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 178
    .local v3, "bundle":Landroid/os/Bundle;
    const-string v12, "call_id"

    move/from16 v0, p2

    invoke-virtual {v3, v12, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 179
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/abtollc/voip/UAStateReceiver;->pjService:Lorg/abtollc/voip/SipService;

    iget-object v12, v12, Lorg/abtollc/voip/SipService;->service:Lorg/abtollc/service/ABTOSipService;

    const/16 v13, 0xf

    invoke-virtual {v12, v13, v3}, Lorg/abtollc/service/ABTOSipService;->sendMsgToPhone(ILandroid/os/Bundle;)V

    .line 182
    :try_start_0
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lorg/abtollc/voip/UAStateReceiver;->updateCallInfoFromStack(Ljava/lang/Integer;Lorg/abtollc/jni/pjsip_event;)Lorg/abtollc/api/SipCallSession;

    move-result-object v4

    .line 183
    .local v4, "callInfo":Lorg/abtollc/api/SipCallSession;
    const-string v12, "SIP UA Receiver"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Incoming call << for account "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/abtollc/voip/UAStateReceiver;->ongoingCallLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v12}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v12

    if-nez v12, :cond_3

    .line 187
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/abtollc/voip/UAStateReceiver;->ongoingCallLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v12}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 190
    :cond_3
    invoke-virtual {v4}, Lorg/abtollc/api/SipCallSession;->getRemoteContact()Ljava/lang/String;

    move-result-object v10

    .line 191
    .local v10, "remContact":Ljava/lang/String;
    const/4 v12, 0x1

    invoke-virtual {v4, v12}, Lorg/abtollc/api/SipCallSession;->setIncoming(Z)V

    .line 196
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/abtollc/voip/UAStateReceiver;->pjService:Lorg/abtollc/voip/SipService;

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Lorg/abtollc/voip/SipService;->getAccountForPjsipId(I)Lorg/abtollc/api/SipProfile;

    move-result-object v2

    .line 197
    .local v2, "acc":Lorg/abtollc/api/SipProfile;
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 198
    .local v8, "extraHdr":Landroid/os/Bundle;
    const-string v12, "Call-Info"

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v12, v1, v8}, Lorg/abtollc/voip/UAStateReceiver;->fillRDataHeader(Ljava/lang/String;Lorg/abtollc/jni/SWIGTYPE_p_pjsip_rx_data;Landroid/os/Bundle;)V

    .line 199
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/abtollc/voip/UAStateReceiver;->pjService:Lorg/abtollc/voip/SipService;

    iget-object v12, v12, Lorg/abtollc/voip/SipService;->service:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v12, v10, v2, v8}, Lorg/abtollc/service/ABTOSipService;->shouldAutoAnswer(Ljava/lang/String;Lorg/abtollc/api/SipProfile;Landroid/os/Bundle;)I

    move-result v11

    .line 200
    .local v11, "shouldAutoAnswer":I
    const-string v12, "SIP UA Receiver"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Should I anto answer ? "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const/16 v12, 0xc8

    if-lt v11, v12, :cond_5

    .line 203
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/abtollc/voip/UAStateReceiver;->pjService:Lorg/abtollc/voip/SipService;

    invoke-virtual {v4}, Lorg/abtollc/api/SipCallSession;->mediaHasVideo()Z

    move-result v13

    move/from16 v0, p2

    invoke-virtual {v12, v0, v11, v13}, Lorg/abtollc/voip/SipService;->callAnswer(IIZ)I

    .line 218
    :goto_2
    const/16 v12, 0x12c

    if-ge v11, v12, :cond_4

    .line 220
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/abtollc/voip/UAStateReceiver;->launchCallHandler(Lorg/abtollc/api/SipCallSession;)V

    .line 221
    const-string v12, "SIP UA Receiver"

    const-string v13, "Incoming call >>"

    invoke-static {v12, v13}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 223
    .local v6, "data":Landroid/os/Bundle;
    const-string v12, "acc_id"

    move/from16 v0, p1

    int-to-long v14, v0

    invoke-virtual {v6, v12, v14, v15}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 224
    const-string v12, "call_id"

    move/from16 v0, p2

    int-to-long v14, v0

    invoke-virtual {v6, v12, v14, v15}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 225
    const-string v12, "remote_contact"

    invoke-virtual {v4}, Lorg/abtollc/api/SipCallSession;->getRemoteContact()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v12, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/abtollc/voip/UAStateReceiver;->pjService:Lorg/abtollc/voip/SipService;

    iget-object v12, v12, Lorg/abtollc/voip/SipService;->service:Lorg/abtollc/service/ABTOSipService;

    const/4 v13, 0x0

    invoke-virtual {v12, v13, v6}, Lorg/abtollc/service/ABTOSipService;->sendMsgToPhone(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Lorg/abtollc/service/ABTOSipService$SameThreadException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    .end local v6    # "data":Landroid/os/Bundle;
    :cond_4
    invoke-direct/range {p0 .. p0}, Lorg/abtollc/voip/UAStateReceiver;->unlockCpu()V

    goto/16 :goto_1

    .line 206
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/abtollc/voip/UAStateReceiver;->pjService:Lorg/abtollc/voip/SipService;

    const/16 v13, 0xb4

    invoke-virtual {v4}, Lorg/abtollc/api/SipCallSession;->mediaHasVideo()Z

    move-result v14

    move/from16 v0, p2

    invoke-virtual {v12, v0, v13, v14}, Lorg/abtollc/voip/SipService;->callAnswer(IIZ)I

    .line 208
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/abtollc/voip/UAStateReceiver;->pjService:Lorg/abtollc/voip/SipService;

    iget-object v12, v12, Lorg/abtollc/voip/SipService;->mediaManager:Lorg/abtollc/service/MediaManager;

    if-eqz v12, :cond_6

    .line 209
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/abtollc/voip/UAStateReceiver;->pjService:Lorg/abtollc/voip/SipService;

    iget-object v12, v12, Lorg/abtollc/voip/SipService;->service:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v12}, Lorg/abtollc/service/ABTOSipService;->getGSMCallState()I

    move-result v12

    if-nez v12, :cond_7

    if-nez v9, :cond_7

    .line 211
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/abtollc/voip/UAStateReceiver;->pjService:Lorg/abtollc/voip/SipService;

    iget-object v12, v12, Lorg/abtollc/voip/SipService;->mediaManager:Lorg/abtollc/service/MediaManager;

    invoke-virtual {v12, v10}, Lorg/abtollc/service/MediaManager;->startRing(Ljava/lang/String;)V

    .line 216
    :cond_6
    :goto_3
    const-string v12, "RINGING"

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v10}, Lorg/abtollc/voip/UAStateReceiver;->broadCastAndroidCallState(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/abtollc/service/ABTOSipService$SameThreadException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 228
    .end local v2    # "acc":Lorg/abtollc/api/SipProfile;
    .end local v4    # "callInfo":Lorg/abtollc/api/SipCallSession;
    .end local v8    # "extraHdr":Landroid/os/Bundle;
    .end local v10    # "remContact":Ljava/lang/String;
    .end local v11    # "shouldAutoAnswer":I
    :catch_0
    move-exception v12

    .line 231
    invoke-direct/range {p0 .. p0}, Lorg/abtollc/voip/UAStateReceiver;->unlockCpu()V

    goto/16 :goto_1

    .line 213
    .restart local v2    # "acc":Lorg/abtollc/api/SipProfile;
    .restart local v4    # "callInfo":Lorg/abtollc/api/SipCallSession;
    .restart local v8    # "extraHdr":Landroid/os/Bundle;
    .restart local v10    # "remContact":Ljava/lang/String;
    .restart local v11    # "shouldAutoAnswer":I
    :cond_7
    :try_start_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/abtollc/voip/UAStateReceiver;->pjService:Lorg/abtollc/voip/SipService;

    iget-object v12, v12, Lorg/abtollc/voip/SipService;->mediaManager:Lorg/abtollc/service/MediaManager;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lorg/abtollc/service/MediaManager;->playInCallTone(I)V
    :try_end_2
    .catch Lorg/abtollc/service/ABTOSipService$SameThreadException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 231
    .end local v2    # "acc":Lorg/abtollc/api/SipProfile;
    .end local v4    # "callInfo":Lorg/abtollc/api/SipCallSession;
    .end local v8    # "extraHdr":Landroid/os/Bundle;
    .end local v10    # "remContact":Ljava/lang/String;
    .end local v11    # "shouldAutoAnswer":I
    :catchall_0
    move-exception v12

    invoke-direct/range {p0 .. p0}, Lorg/abtollc/voip/UAStateReceiver;->unlockCpu()V

    throw v12
.end method

.method public on_log(ILjava/lang/String;I)V
    .locals 1
    .param p1, "level"    # I
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "len"    # I

    .prologue
    .line 108
    packed-switch p1, :pswitch_data_0

    .line 127
    :goto_0
    return-void

    .line 110
    :pswitch_0
    const-string v0, "native"

    invoke-static {v0, p2}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 113
    :pswitch_1
    const-string v0, "native"

    invoke-static {v0, p2}, Lorg/abtollc/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 116
    :pswitch_2
    const-string v0, "native"

    invoke-static {v0, p2}, Lorg/abtollc/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 119
    :pswitch_3
    const-string v0, "native"

    invoke-static {v0, p2}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 122
    :pswitch_4
    const-string v0, "native"

    invoke-static {v0, p2}, Lorg/abtollc/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 108
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public on_mwi_info(ILorg/abtollc/jni/pj_str_t;Lorg/abtollc/jni/pj_str_t;)V
    .locals 17
    .param p1, "acc_id"    # I
    .param p2, "mime_type"    # Lorg/abtollc/jni/pj_str_t;
    .param p3, "body"    # Lorg/abtollc/jni/pj_str_t;

    .prologue
    .line 662
    invoke-direct/range {p0 .. p0}, Lorg/abtollc/voip/UAStateReceiver;->lockCpu()V

    .line 665
    invoke-static/range {p3 .. p3}, Lorg/abtollc/voip/SipService;->pjStrToString(Lorg/abtollc/jni/pj_str_t;)Ljava/lang/String;

    move-result-object v10

    .line 668
    .local v10, "msg":Ljava/lang/String;
    const/4 v4, 0x0

    .line 669
    .local v4, "hasMessage":Z
    const/4 v11, 0x0

    .line 672
    .local v11, "numberOfMessages":I
    const-string v12, "\\r?\\n"

    invoke-virtual {v10, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 676
    .local v6, "lines":[Ljava/lang/String;
    const-string v12, ".*Messages-Waiting[ \t]?:[ \t]?(yes|no).*"

    const/4 v13, 0x2

    invoke-static {v12, v13}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v9

    .line 678
    .local v9, "messWaitingPattern":Ljava/util/regex/Pattern;
    const-string v12, ".*Voice-Message[ \t]?:[ \t]?([0-9]*)/[0-9]*.*"

    const/4 v13, 0x2

    invoke-static {v12, v13}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v8

    .line 681
    .local v8, "messVoiceNbrPattern":Ljava/util/regex/Pattern;
    array-length v13, v6

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v13, :cond_2

    aget-object v5, v6, v12

    .line 683
    .local v5, "line":Ljava/lang/String;
    invoke-virtual {v9, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 684
    .local v7, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 685
    const-string v14, "SIP UA Receiver"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Matches : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lorg/abtollc/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    const-string v14, "yes"

    const/4 v15, 0x1

    invoke-virtual {v7, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 687
    const-string v14, "SIP UA Receiver"

    const-string v15, "Hey there is messages !!! "

    invoke-static {v14, v15}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    const/4 v4, 0x1

    .line 681
    :cond_0
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 701
    :cond_1
    invoke-virtual {v8, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 702
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 704
    const/4 v14, 0x1

    :try_start_0
    invoke-virtual {v7, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    .line 708
    :goto_2
    const-string v14, "SIP UA Receiver"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Nbr : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 705
    :catch_0
    move-exception v3

    .line 706
    .local v3, "e":Ljava/lang/NumberFormatException;
    const-string v14, "SIP UA Receiver"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Not well formated number "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lorg/abtollc/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 713
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    .end local v5    # "line":Ljava/lang/String;
    .end local v7    # "m":Ljava/util/regex/Matcher;
    :cond_2
    if-eqz v4, :cond_4

    if-lez v11, :cond_4

    .line 714
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/abtollc/voip/UAStateReceiver;->pjService:Lorg/abtollc/voip/SipService;

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Lorg/abtollc/voip/SipService;->getAccountForPjsipId(I)Lorg/abtollc/api/SipProfile;

    move-result-object v2

    .line 715
    .local v2, "acc":Lorg/abtollc/api/SipProfile;
    if-eqz v2, :cond_3

    .line 716
    const-string v12, "SIP UA Receiver"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " -> Has found account "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v2}, Lorg/abtollc/api/SipProfile;->getDefaultDomain()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-wide v14, v2, Lorg/abtollc/api/SipProfile;->id:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " >> "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v2}, Lorg/abtollc/api/SipProfile;->getProfileName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    :cond_3
    const-string v12, "SIP UA Receiver"

    const-string v13, "We can show the voice messages notification"

    invoke-static {v12, v13}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    .end local v2    # "acc":Lorg/abtollc/api/SipProfile;
    :cond_4
    invoke-direct/range {p0 .. p0}, Lorg/abtollc/voip/UAStateReceiver;->unlockCpu()V

    .line 723
    return-void
.end method

.method public on_nat_detect(Lorg/abtollc/jni/pj_stun_nat_detect_result;)V
    .locals 3
    .param p1, "res"    # Lorg/abtollc/jni/pj_stun_nat_detect_result;

    .prologue
    .line 822
    const-string v0, "SIP UA Receiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NAT TYPE DETECTED !!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/abtollc/jni/pj_stun_nat_detect_result;->getNat_type_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " et "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/abtollc/jni/pj_stun_nat_detect_result;->getStatus()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    return-void
.end method

.method public on_pager(ILorg/abtollc/jni/pj_str_t;Lorg/abtollc/jni/pj_str_t;Lorg/abtollc/jni/pj_str_t;Lorg/abtollc/jni/pj_str_t;Lorg/abtollc/jni/pj_str_t;)V
    .locals 15
    .param p1, "callId"    # I
    .param p2, "from"    # Lorg/abtollc/jni/pj_str_t;
    .param p3, "to"    # Lorg/abtollc/jni/pj_str_t;
    .param p4, "contact"    # Lorg/abtollc/jni/pj_str_t;
    .param p5, "mime_type"    # Lorg/abtollc/jni/pj_str_t;
    .param p6, "body"    # Lorg/abtollc/jni/pj_str_t;

    .prologue
    .line 377
    invoke-direct {p0}, Lorg/abtollc/voip/UAStateReceiver;->lockCpu()V

    .line 379
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 380
    .local v6, "date":J
    invoke-static/range {p2 .. p2}, Lorg/abtollc/voip/SipService;->pjStrToString(Lorg/abtollc/jni/pj_str_t;)Ljava/lang/String;

    move-result-object v9

    .line 381
    .local v9, "fromStr":Ljava/lang/String;
    const-string v1, "<"

    invoke-virtual {v9, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v9, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 382
    invoke-static {v9}, Lorg/abtollc/api/SipUri;->getCanonicalSipContact(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 384
    .local v10, "canonicFromStr":Ljava/lang/String;
    invoke-static/range {p3 .. p3}, Lorg/abtollc/voip/SipService;->pjStrToString(Lorg/abtollc/jni/pj_str_t;)Ljava/lang/String;

    move-result-object v14

    .line 385
    .local v14, "toStr":Ljava/lang/String;
    invoke-static/range {p6 .. p6}, Lorg/abtollc/voip/SipService;->pjStrToString(Lorg/abtollc/jni/pj_str_t;)Ljava/lang/String;

    move-result-object v4

    .line 386
    .local v4, "bodyStr":Ljava/lang/String;
    invoke-static/range {p5 .. p5}, Lorg/abtollc/voip/SipService;->pjStrToString(Lorg/abtollc/jni/pj_str_t;)Ljava/lang/String;

    move-result-object v5

    .line 388
    .local v5, "mimeStr":Ljava/lang/String;
    new-instance v0, Lorg/abtollc/api/SipMessage;

    invoke-direct {p0, v10}, Lorg/abtollc/voip/UAStateReceiver;->getContactName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v14}, Lorg/abtollc/voip/UAStateReceiver;->getContactName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v14, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x1

    invoke-direct/range {v0 .. v9}, Lorg/abtollc/api/SipMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;)V

    .line 392
    .local v0, "msg":Lorg/abtollc/api/SipMessage;
    iget-object v1, p0, Lorg/abtollc/voip/UAStateReceiver;->pjService:Lorg/abtollc/voip/SipService;

    iget-object v1, v1, Lorg/abtollc/voip/SipService;->service:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v1}, Lorg/abtollc/service/ABTOSipService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lorg/abtollc/sdk/AbtoApplication;

    invoke-virtual {v1}, Lorg/abtollc/sdk/AbtoApplication;->getContentProvider()Landroid/content/ContentProvider;

    move-result-object v11

    .line 393
    .local v11, "cr":Landroid/content/ContentProvider;
    sget-object v1, Lorg/abtollc/api/SipMessage;->MESSAGE_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Lorg/abtollc/api/SipMessage;->getContentValues()Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 396
    new-instance v13, Landroid/content/Intent;

    const-string v1, "org.abtollc.service.MESSAGE_RECEIVED"

    invoke-direct {v13, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 398
    .local v13, "intent":Landroid/content/Intent;
    const-string v1, "sender"

    invoke-virtual {v13, v1, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 399
    const-string v1, "body"

    invoke-virtual {v0}, Lorg/abtollc/api/SipMessage;->getBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 400
    iget-object v1, p0, Lorg/abtollc/voip/UAStateReceiver;->pjService:Lorg/abtollc/voip/SipService;

    iget-object v1, v1, Lorg/abtollc/voip/SipService;->service:Lorg/abtollc/service/ABTOSipService;

    const-string v2, "android.permission.USE_SIP"

    invoke-virtual {v1, v13, v2}, Lorg/abtollc/service/ABTOSipService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 403
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 404
    .local v12, "data":Landroid/os/Bundle;
    const-string v1, "acc_id"

    invoke-virtual {v12, v1, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    const-string v1, "remote_contact"

    invoke-virtual {v12, v1, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    const-string v1, "message"

    invoke-virtual {v0}, Lorg/abtollc/api/SipMessage;->getBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    iget-object v1, p0, Lorg/abtollc/voip/UAStateReceiver;->pjService:Lorg/abtollc/voip/SipService;

    iget-object v1, v1, Lorg/abtollc/voip/SipService;->service:Lorg/abtollc/service/ABTOSipService;

    const/4 v2, 0x7

    invoke-virtual {v1, v2, v12}, Lorg/abtollc/service/ABTOSipService;->sendMsgToPhone(ILandroid/os/Bundle;)V

    .line 413
    invoke-direct {p0}, Lorg/abtollc/voip/UAStateReceiver;->unlockCpu()V

    .line 414
    return-void
.end method

.method public on_pager_status(ILorg/abtollc/jni/pj_str_t;Lorg/abtollc/jni/pj_str_t;Lorg/abtollc/jni/pjsip_status_code;Lorg/abtollc/jni/pj_str_t;)V
    .locals 19
    .param p1, "callId"    # I
    .param p2, "to"    # Lorg/abtollc/jni/pj_str_t;
    .param p3, "body"    # Lorg/abtollc/jni/pj_str_t;
    .param p4, "status"    # Lorg/abtollc/jni/pjsip_status_code;
    .param p5, "reason"    # Lorg/abtollc/jni/pj_str_t;

    .prologue
    .line 418
    invoke-direct/range {p0 .. p0}, Lorg/abtollc/voip/UAStateReceiver;->lockCpu()V

    .line 420
    sget-object v3, Lorg/abtollc/jni/pjsip_status_code;->PJSIP_SC_OK:Lorg/abtollc/jni/pjsip_status_code;

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Lorg/abtollc/jni/pjsip_status_code;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lorg/abtollc/jni/pjsip_status_code;->PJSIP_SC_ACCEPTED:Lorg/abtollc/jni/pjsip_status_code;

    .line 421
    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Lorg/abtollc/jni/pjsip_status_code;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_0
    const/4 v13, 0x2

    .line 422
    .local v13, "messageType":I
    :goto_0
    invoke-static/range {p2 .. p2}, Lorg/abtollc/voip/SipService;->pjStrToString(Lorg/abtollc/jni/pj_str_t;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/abtollc/api/SipUri;->getCanonicalSipContact(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 423
    .local v18, "toStr":Ljava/lang/String;
    invoke-static/range {p5 .. p5}, Lorg/abtollc/voip/SipService;->pjStrToString(Lorg/abtollc/jni/pj_str_t;)Ljava/lang/String;

    move-result-object v16

    .line 424
    .local v16, "reasonStr":Ljava/lang/String;
    invoke-static/range {p3 .. p3}, Lorg/abtollc/voip/SipService;->pjStrToString(Lorg/abtollc/jni/pj_str_t;)Ljava/lang/String;

    move-result-object v9

    .line 425
    .local v9, "bodyStr":Ljava/lang/String;
    invoke-virtual/range {p4 .. p4}, Lorg/abtollc/jni/pjsip_status_code;->swigValue()I

    move-result v17

    .line 426
    .local v17, "statusInt":I
    const-string v3, "SIP UA Receiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SipMessage in on pager status "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p4 .. p4}, Lorg/abtollc/jni/pjsip_status_code;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/abtollc/voip/UAStateReceiver;->pjService:Lorg/abtollc/voip/SipService;

    iget-object v3, v3, Lorg/abtollc/voip/SipService;->service:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v3}, Lorg/abtollc/service/ABTOSipService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lorg/abtollc/sdk/AbtoApplication;

    invoke-virtual {v3}, Lorg/abtollc/sdk/AbtoApplication;->getContentProvider()Landroid/content/ContentProvider;

    move-result-object v2

    .line 430
    .local v2, "cr":Landroid/content/ContentProvider;
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 431
    .local v8, "args":Landroid/content/ContentValues;
    const-string v3, "type"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v8, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 432
    const-string v3, "status"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v8, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 433
    const/16 v3, 0xc8

    move/from16 v0, v17

    if-eq v0, v3, :cond_1

    const/16 v3, 0xca

    move/from16 v0, v17

    if-eq v0, v3, :cond_1

    .line 435
    const-string v3, "body"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " // "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    :cond_1
    sget-object v3, Lorg/abtollc/api/SipMessage;->MESSAGE_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "id"

    aput-object v6, v4, v5

    const-string v5, "contact=? AND body=? AND type=6"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v18, v6, v7

    const/4 v7, 0x1

    aput-object v9, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 452
    .local v10, "curs":Landroid/database/Cursor;
    const-wide/16 v14, -0x1

    .line 453
    .local v14, "messageId":J
    if-eqz v10, :cond_4

    .line 455
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_3

    .line 456
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 458
    :cond_2
    const-string v3, "id"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 459
    sget-object v3, Lorg/abtollc/api/SipMessage;->MESSAGE_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v8, v4, v5}, Landroid/content/ContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 460
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_2

    .line 463
    :cond_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 488
    :cond_4
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 489
    .local v11, "eventData":Landroid/os/Bundle;
    const-string v3, "message"

    invoke-virtual {v11, v3, v14, v15}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 490
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/abtollc/voip/UAStateReceiver;->pjService:Lorg/abtollc/voip/SipService;

    iget-object v3, v3, Lorg/abtollc/voip/SipService;->service:Lorg/abtollc/service/ABTOSipService;

    const/16 v4, 0x11

    invoke-virtual {v3, v4, v11}, Lorg/abtollc/service/ABTOSipService;->sendMsgToPhone(ILandroid/os/Bundle;)V

    .line 494
    new-instance v12, Landroid/content/Intent;

    const-string v3, "org.abtollc.service.MESSAGE_RECEIVED"

    invoke-direct {v12, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 495
    .local v12, "intent":Landroid/content/Intent;
    const-string v3, "sender"

    move-object/from16 v0, v18

    invoke-virtual {v12, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 496
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/abtollc/voip/UAStateReceiver;->pjService:Lorg/abtollc/voip/SipService;

    iget-object v3, v3, Lorg/abtollc/voip/SipService;->service:Lorg/abtollc/service/ABTOSipService;

    const-string v4, "android.permission.USE_SIP"

    invoke-virtual {v3, v12, v4}, Lorg/abtollc/service/ABTOSipService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 497
    invoke-direct/range {p0 .. p0}, Lorg/abtollc/voip/UAStateReceiver;->unlockCpu()V

    .line 498
    return-void

    .line 421
    .end local v2    # "cr":Landroid/content/ContentProvider;
    .end local v8    # "args":Landroid/content/ContentValues;
    .end local v9    # "bodyStr":Ljava/lang/String;
    .end local v10    # "curs":Landroid/database/Cursor;
    .end local v11    # "eventData":Landroid/os/Bundle;
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v13    # "messageType":I
    .end local v14    # "messageId":J
    .end local v16    # "reasonStr":Ljava/lang/String;
    .end local v17    # "statusInt":I
    .end local v18    # "toStr":Ljava/lang/String;
    :cond_5
    const/4 v13, 0x5

    goto/16 :goto_0

    .line 463
    .restart local v2    # "cr":Landroid/content/ContentProvider;
    .restart local v8    # "args":Landroid/content/ContentValues;
    .restart local v9    # "bodyStr":Ljava/lang/String;
    .restart local v10    # "curs":Landroid/database/Cursor;
    .restart local v13    # "messageType":I
    .restart local v14    # "messageId":J
    .restart local v16    # "reasonStr":Ljava/lang/String;
    .restart local v17    # "statusInt":I
    .restart local v18    # "toStr":Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v3
.end method

.method public on_reg_state(I)V
    .locals 3
    .param p1, "accountId"    # I

    .prologue
    .line 505
    const-string v0, "SIP UA Receiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New reg state for : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    invoke-direct {p0}, Lorg/abtollc/voip/UAStateReceiver;->lockCpu()V

    .line 507
    iget-object v0, p0, Lorg/abtollc/voip/UAStateReceiver;->pjService:Lorg/abtollc/voip/SipService;

    iget-object v0, v0, Lorg/abtollc/voip/SipService;->service:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v0}, Lorg/abtollc/service/ABTOSipService;->getExecutor()Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;

    move-result-object v0

    new-instance v1, Lorg/abtollc/voip/UAStateReceiver$1;

    invoke-direct {v1, p0, p1}, Lorg/abtollc/voip/UAStateReceiver$1;-><init>(Lorg/abtollc/voip/UAStateReceiver;I)V

    invoke-virtual {v0, v1}, Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 572
    invoke-direct {p0}, Lorg/abtollc/voip/UAStateReceiver;->unlockCpu()V

    .line 573
    return-void
.end method

.method public on_set_micro_source()I
    .locals 2

    .prologue
    .line 827
    iget-object v0, p0, Lorg/abtollc/voip/UAStateReceiver;->pjService:Lorg/abtollc/voip/SipService;

    iget-object v0, v0, Lorg/abtollc/voip/SipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;

    const-string v1, "micro_source"

    invoke-virtual {v0, v1}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceIntegerValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public on_validate_audio_clock_rate(I)I
    .locals 1
    .param p1, "clockRate"    # I

    .prologue
    .line 760
    iget-object v0, p0, Lorg/abtollc/voip/UAStateReceiver;->pjService:Lorg/abtollc/voip/SipService;

    if-eqz v0, :cond_0

    .line 761
    iget-object v0, p0, Lorg/abtollc/voip/UAStateReceiver;->pjService:Lorg/abtollc/voip/SipService;

    invoke-virtual {v0, p1}, Lorg/abtollc/voip/SipService;->validateAudioClockRate(I)I

    move-result v0

    .line 763
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public on_wav_player_eof(I)I
    .locals 4
    .param p1, "playerId"    # I

    .prologue
    .line 786
    iget-object v1, p0, Lorg/abtollc/voip/UAStateReceiver;->pjService:Lorg/abtollc/voip/SipService;

    iget-object v1, v1, Lorg/abtollc/voip/SipService;->service:Lorg/abtollc/service/ABTOSipService;

    const/16 v2, 0xb

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v1, v2, v3}, Lorg/abtollc/service/ABTOSipService;->sendMsgToPhone(ILandroid/os/Bundle;)V

    .line 788
    :try_start_0
    iget-object v1, p0, Lorg/abtollc/voip/UAStateReceiver;->pjService:Lorg/abtollc/voip/SipService;

    invoke-virtual {v1, p1}, Lorg/abtollc/voip/SipService;->stopPlaying(I)V
    :try_end_0
    .catch Lorg/abtollc/service/ABTOSipService$SameThreadException; {:try_start_0 .. :try_end_0} :catch_0

    .line 794
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 789
    :catch_0
    move-exception v0

    .line 791
    .local v0, "e":Lorg/abtollc/service/ABTOSipService$SameThreadException;
    invoke-virtual {v0}, Lorg/abtollc/service/ABTOSipService$SameThreadException;->printStackTrace()V

    goto :goto_0
.end method

.method public stopService()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1188
    iget-object v0, p0, Lorg/abtollc/voip/UAStateReceiver;->handlerThread:Landroid/os/HandlerThread;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/abtollc/utils/Threading;->stopHandlerThread(Landroid/os/HandlerThread;Z)V

    .line 1189
    iput-object v2, p0, Lorg/abtollc/voip/UAStateReceiver;->handlerThread:Landroid/os/HandlerThread;

    .line 1190
    iput-object v2, p0, Lorg/abtollc/voip/UAStateReceiver;->msgHandler:Lorg/abtollc/voip/UAStateReceiver$WorkerHandler;

    .line 1193
    iget-object v0, p0, Lorg/abtollc/voip/UAStateReceiver;->eventLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 1194
    :goto_0
    iget-object v0, p0, Lorg/abtollc/voip/UAStateReceiver;->eventLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1195
    iget-object v0, p0, Lorg/abtollc/voip/UAStateReceiver;->eventLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 1198
    :cond_0
    return-void
.end method

.method public timer_cancel(II)I
    .locals 1
    .param p1, "entry"    # I
    .param p2, "entryId"    # I

    .prologue
    .line 837
    invoke-static {p1, p2}, Lorg/abtollc/utils/TimerWrapper;->cancel(II)I

    move-result v0

    return v0
.end method

.method public timer_schedule(III)I
    .locals 1
    .param p1, "entry"    # I
    .param p2, "entryId"    # I
    .param p3, "time"    # I

    .prologue
    .line 832
    invoke-static {p1, p2, p3}, Lorg/abtollc/utils/TimerWrapper;->schedule(III)I

    move-result v0

    return v0
.end method

.method public updateCallMediaState(I)V
    .locals 4
    .param p1, "callId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/abtollc/service/ABTOSipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 1398
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lorg/abtollc/voip/UAStateReceiver;->updateCallInfoFromStack(Ljava/lang/Integer;Lorg/abtollc/jni/pjsip_event;)Lorg/abtollc/api/SipCallSession;

    move-result-object v0

    .line 1399
    .local v0, "callInfo":Lorg/abtollc/api/SipCallSession;
    iget-object v1, p0, Lorg/abtollc/voip/UAStateReceiver;->msgHandler:Lorg/abtollc/voip/UAStateReceiver$WorkerHandler;

    iget-object v2, p0, Lorg/abtollc/voip/UAStateReceiver;->msgHandler:Lorg/abtollc/voip/UAStateReceiver$WorkerHandler;

    const/16 v3, 0x1f

    invoke-virtual {v2, v3, v0}, Lorg/abtollc/voip/UAStateReceiver$WorkerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/abtollc/voip/UAStateReceiver$WorkerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1400
    return-void
.end method

.method public updateRecordingStatus(IZZ)V
    .locals 4
    .param p1, "callId"    # I
    .param p2, "canRecord"    # Z
    .param p3, "isRecording"    # Z

    .prologue
    .line 1372
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/abtollc/voip/UAStateReceiver;->getCallInfo(Ljava/lang/Integer;)Lorg/abtollc/api/SipCallSession;

    move-result-object v0

    .line 1373
    .local v0, "callInfo":Lorg/abtollc/api/SipCallSession;
    invoke-virtual {v0, p2}, Lorg/abtollc/api/SipCallSession;->setCanRecord(Z)V

    .line 1374
    invoke-virtual {v0, p3}, Lorg/abtollc/api/SipCallSession;->setIsRecording(Z)V

    .line 1375
    iget-object v2, p0, Lorg/abtollc/voip/UAStateReceiver;->callsList:Ljava/util/HashMap;

    monitor-enter v2

    .line 1377
    :try_start_0
    iget-object v1, p0, Lorg/abtollc/voip/UAStateReceiver;->callsList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1378
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1379
    invoke-direct {p0, v0}, Lorg/abtollc/voip/UAStateReceiver;->onBroadcastCallState(Lorg/abtollc/api/SipCallSession;)V

    .line 1380
    return-void

    .line 1378
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
