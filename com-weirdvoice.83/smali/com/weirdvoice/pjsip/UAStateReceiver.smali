.class public Lcom/weirdvoice/pjsip/UAStateReceiver;
.super Lorg/pjsip/pjsua/Callback;
.source "UAStateReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/weirdvoice/pjsip/UAStateReceiver$WorkerHandler;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$org$pjsip$pjsua$pjrpid_activity:[I = null

.field private static synthetic $SWITCH_TABLE$org$pjsip$pjsua$pjsua_buddy_status:[I = null

.field private static final ACTION_PHONE_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.PHONE_STATE"

.field static final LAUNCH_TRIGGER_DELAY:J = 0x7d0L

.field private static final ON_CALL_STATE:I = 0x2

.field private static final ON_MEDIA_STATE:I = 0x3

.field private static final THIS_FILE:Ljava/lang/String; = "SIP UA Receiver"


# instance fields
.field private callsList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/weirdvoice/service/impl/SipCallSessionImpl;",
            ">;"
        }
    .end annotation
.end field

.field private eventLock:Landroid/os/PowerManager$WakeLock;

.field private eventLockCount:I

.field private handlerThread:Landroid/os/HandlerThread;

.field private lastLaunchCallHandler:J

.field private mAutoRecordCalls:Z

.field private mIntegrateWithCallLogs:Z

.field private mMicroSource:I

.field private mPlayWaittone:Z

.field private mPreferedHeadsetAction:I

.field private msgHandler:Lcom/weirdvoice/pjsip/UAStateReceiver$WorkerHandler;

.field private notificationManager:Lcom/weirdvoice/service/SipNotifications;

.field private ongoingCallLock:Landroid/os/PowerManager$WakeLock;

.field private pjService:Lcom/weirdvoice/pjsip/PjSipService;


# direct methods
.method static synthetic $SWITCH_TABLE$org$pjsip$pjsua$pjrpid_activity()[I
    .locals 3

    .prologue
    .line 82
    sget-object v0, Lcom/weirdvoice/pjsip/UAStateReceiver;->$SWITCH_TABLE$org$pjsip$pjsua$pjrpid_activity:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lorg/pjsip/pjsua/pjrpid_activity;->values()[Lorg/pjsip/pjsua/pjrpid_activity;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lorg/pjsip/pjsua/pjrpid_activity;->PJRPID_ACTIVITY_AWAY:Lorg/pjsip/pjsua/pjrpid_activity;

    invoke-virtual {v1}, Lorg/pjsip/pjsua/pjrpid_activity;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lorg/pjsip/pjsua/pjrpid_activity;->PJRPID_ACTIVITY_BUSY:Lorg/pjsip/pjsua/pjrpid_activity;

    invoke-virtual {v1}, Lorg/pjsip/pjsua/pjrpid_activity;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lorg/pjsip/pjsua/pjrpid_activity;->PJRPID_ACTIVITY_UNKNOWN:Lorg/pjsip/pjsua/pjrpid_activity;

    invoke-virtual {v1}, Lorg/pjsip/pjsua/pjrpid_activity;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/weirdvoice/pjsip/UAStateReceiver;->$SWITCH_TABLE$org$pjsip$pjsua$pjrpid_activity:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method static synthetic $SWITCH_TABLE$org$pjsip$pjsua$pjsua_buddy_status()[I
    .locals 3

    .prologue
    .line 82
    sget-object v0, Lcom/weirdvoice/pjsip/UAStateReceiver;->$SWITCH_TABLE$org$pjsip$pjsua$pjsua_buddy_status:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lorg/pjsip/pjsua/pjsua_buddy_status;->values()[Lorg/pjsip/pjsua/pjsua_buddy_status;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lorg/pjsip/pjsua/pjsua_buddy_status;->PJSUA_BUDDY_STATUS_OFFLINE:Lorg/pjsip/pjsua/pjsua_buddy_status;

    invoke-virtual {v1}, Lorg/pjsip/pjsua/pjsua_buddy_status;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lorg/pjsip/pjsua/pjsua_buddy_status;->PJSUA_BUDDY_STATUS_ONLINE:Lorg/pjsip/pjsua/pjsua_buddy_status;

    invoke-virtual {v1}, Lorg/pjsip/pjsua/pjsua_buddy_status;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lorg/pjsip/pjsua/pjsua_buddy_status;->PJSUA_BUDDY_STATUS_UNKNOWN:Lorg/pjsip/pjsua/pjsua_buddy_status;

    invoke-virtual {v1}, Lorg/pjsip/pjsua/pjsua_buddy_status;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/weirdvoice/pjsip/UAStateReceiver;->$SWITCH_TABLE$org$pjsip$pjsua$pjsua_buddy_status:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 82
    invoke-direct {p0}, Lorg/pjsip/pjsua/Callback;-><init>()V

    .line 92
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->lastLaunchCallHandler:J

    .line 94
    const/4 v0, 0x0

    iput v0, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->eventLockCount:I

    .line 632
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->callsList:Landroid/util/SparseArray;

    .line 82
    return-void
.end method

.method static synthetic access$0(Lcom/weirdvoice/pjsip/UAStateReceiver;)V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/weirdvoice/pjsip/UAStateReceiver;->lockCpu()V

    return-void
.end method

.method static synthetic access$1(Lcom/weirdvoice/pjsip/UAStateReceiver;)Lcom/weirdvoice/service/SipNotifications;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->notificationManager:Lcom/weirdvoice/service/SipNotifications;

    return-object v0
.end method

.method static synthetic access$12(Lcom/weirdvoice/pjsip/UAStateReceiver;)I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->mPreferedHeadsetAction:I

    return v0
.end method

.method static synthetic access$2(Lcom/weirdvoice/pjsip/UAStateReceiver;Lcom/weirdvoice/api/SipCallSession;)V
    .locals 0

    .prologue
    .line 992
    invoke-direct {p0, p1}, Lcom/weirdvoice/pjsip/UAStateReceiver;->launchCallHandler(Lcom/weirdvoice/api/SipCallSession;)V

    return-void
.end method

.method static synthetic access$3(Lcom/weirdvoice/pjsip/UAStateReceiver;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 967
    invoke-direct {p0, p1, p2}, Lcom/weirdvoice/pjsip/UAStateReceiver;->broadCastAndroidCallState(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4(Lcom/weirdvoice/pjsip/UAStateReceiver;)Lcom/weirdvoice/pjsip/PjSipService;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->pjService:Lcom/weirdvoice/pjsip/PjSipService;

    return-object v0
.end method

.method static synthetic access$5(Lcom/weirdvoice/pjsip/UAStateReceiver;I)V
    .locals 0

    .prologue
    .line 1138
    invoke-direct {p0, p1}, Lcom/weirdvoice/pjsip/UAStateReceiver;->sendPendingDtmf(I)V

    return-void
.end method

.method static synthetic access$6(Lcom/weirdvoice/pjsip/UAStateReceiver;)Z
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->mIntegrateWithCallLogs:Z

    return v0
.end method

.method static synthetic access$7(Lcom/weirdvoice/pjsip/UAStateReceiver;Lcom/weirdvoice/api/SipCallSession;)V
    .locals 0

    .prologue
    .line 951
    invoke-direct {p0, p1}, Lcom/weirdvoice/pjsip/UAStateReceiver;->onBroadcastCallState(Lcom/weirdvoice/api/SipCallSession;)V

    return-void
.end method

.method static synthetic access$8(Lcom/weirdvoice/pjsip/UAStateReceiver;)Landroid/util/SparseArray;
    .locals 1

    .prologue
    .line 632
    iget-object v0, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->callsList:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$9(Lcom/weirdvoice/pjsip/UAStateReceiver;)V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/weirdvoice/pjsip/UAStateReceiver;->unlockCpu()V

    return-void
.end method

.method private broadCastAndroidCallState(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "state"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 969
    const/16 v1, 0x13

    invoke-static {v1}, Lcom/weirdvoice/utils/Compatibility;->isCompatible(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 971
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 972
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 973
    if-eqz p2, :cond_0

    .line 974
    const-string v1, "incoming_number"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 976
    :cond_0
    iget-object v1, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->pjService:Lcom/weirdvoice/pjsip/PjSipService;

    iget-object v1, v1, Lcom/weirdvoice/pjsip/PjSipService;->service:Lcom/weirdvoice/service/SipService;

    const v2, 0x7f0c01e8

    invoke-virtual {v1, v2}, Lcom/weirdvoice/service/SipService;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 977
    iget-object v1, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->pjService:Lcom/weirdvoice/pjsip/PjSipService;

    iget-object v1, v1, Lcom/weirdvoice/pjsip/PjSipService;->service:Lcom/weirdvoice/service/SipService;

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v1, v0, v2}, Lcom/weirdvoice/service/SipService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 979
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method private fillRDataHeader(Ljava/lang/String;Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_rx_data;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "hdrName"    # Ljava/lang/String;
    .param p2, "rdata"    # Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_rx_data;
    .param p3, "out"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/weirdvoice/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 1150
    invoke-static {p1}, Lorg/pjsip/pjsua/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v1

    .line 1149
    invoke-static {v1, p2}, Lorg/pjsip/pjsua/pjsua;->get_rx_data_header(Lorg/pjsip/pjsua/pj_str_t;Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_rx_data;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v1

    invoke-static {v1}, Lcom/weirdvoice/pjsip/PjSipService;->pjStrToString(Lorg/pjsip/pjsua/pj_str_t;)Ljava/lang/String;

    move-result-object v0

    .line 1151
    .local v0, "valueHdr":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1152
    invoke-virtual {p3, p1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1154
    :cond_0
    return-void
.end method

.method private declared-synchronized launchCallHandler(Lcom/weirdvoice/api/SipCallSession;)V
    .locals 8
    .param p1, "currentCallInfo2"    # Lcom/weirdvoice/api/SipCallSession;

    .prologue
    .line 993
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 998
    .local v2, "currentElapsedTime":J
    iget-wide v4, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->lastLaunchCallHandler:J

    const-wide/16 v6, 0x7d0

    add-long/2addr v4, v6

    cmp-long v4, v4, v2

    if-gez v4, :cond_0

    .line 999
    iget-object v4, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->pjService:Lcom/weirdvoice/pjsip/PjSipService;

    iget-object v1, v4, Lcom/weirdvoice/pjsip/PjSipService;->service:Lcom/weirdvoice/service/SipService;

    .line 1002
    .local v1, "ctxt":Landroid/content/Context;
    invoke-static {v1, p1}, Lcom/weirdvoice/service/SipService;->buildCallUiIntent(Landroid/content/Context;Lcom/weirdvoice/api/SipCallSession;)Landroid/content/Intent;

    move-result-object v0

    .line 1004
    .local v0, "callHandlerIntent":Landroid/content/Intent;
    const-string v4, "SIP UA Receiver"

    const-string v5, "Anounce call activity"

    invoke-static {v4, v5}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1005
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1006
    iput-wide v2, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->lastLaunchCallHandler:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1010
    .end local v0    # "callHandlerIntent":Landroid/content/Intent;
    .end local v1    # "ctxt":Landroid/content/Context;
    :goto_0
    monitor-exit p0

    return-void

    .line 1008
    :cond_0
    :try_start_1
    const-string v4, "SIP UA Receiver"

    const-string v5, "Ignore extra launch handler"

    invoke-static {v4, v5}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 993
    .end local v2    # "currentElapsedTime":J
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private lockCpu()V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->eventLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 103
    const-string v0, "SIP UA Receiver"

    const-string v1, "< LOCK CPU"

    invoke-static {v0, v1}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->eventLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 105
    iget v0, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->eventLockCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->eventLockCount:I

    .line 107
    :cond_0
    return-void
.end method

.method private onBroadcastCallState(Lcom/weirdvoice/api/SipCallSession;)V
    .locals 4
    .param p1, "callInfo"    # Lcom/weirdvoice/api/SipCallSession;

    .prologue
    .line 952
    new-instance v1, Lcom/weirdvoice/api/SipCallSession;

    invoke-direct {v1, p1}, Lcom/weirdvoice/api/SipCallSession;-><init>(Lcom/weirdvoice/api/SipCallSession;)V

    .line 953
    .local v1, "publicCallInfo":Lcom/weirdvoice/api/SipCallSession;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.weirdvoice.service.CALL_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 954
    .local v0, "callStateChangedIntent":Landroid/content/Intent;
    const-string v2, "call_info"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 955
    iget-object v2, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->pjService:Lcom/weirdvoice/pjsip/PjSipService;

    iget-object v2, v2, Lcom/weirdvoice/pjsip/PjSipService;->service:Lcom/weirdvoice/service/SipService;

    const-string v3, "android.permission.USE_SIP"

    invoke-virtual {v2, v0, v3}, Lcom/weirdvoice/service/SipService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 957
    return-void
.end method

.method private sendPendingDtmf(I)V
    .locals 2
    .param p1, "callId"    # I

    .prologue
    .line 1139
    iget-object v0, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->pjService:Lcom/weirdvoice/pjsip/PjSipService;

    iget-object v0, v0, Lcom/weirdvoice/pjsip/PjSipService;->service:Lcom/weirdvoice/service/SipService;

    invoke-virtual {v0}, Lcom/weirdvoice/service/SipService;->getExecutor()Lcom/weirdvoice/service/SipService$SipServiceExecutor;

    move-result-object v0

    new-instance v1, Lcom/weirdvoice/pjsip/UAStateReceiver$4;

    invoke-direct {v1, p0, p1}, Lcom/weirdvoice/pjsip/UAStateReceiver$4;-><init>(Lcom/weirdvoice/pjsip/UAStateReceiver;I)V

    invoke-virtual {v0, v1}, Lcom/weirdvoice/service/SipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 1145
    return-void
.end method

.method private unlockCpu()V
    .locals 3

    .prologue
    .line 110
    iget-object v0, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->eventLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->eventLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->eventLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 112
    iget v0, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->eventLockCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->eventLockCount:I

    .line 113
    const-string v0, "SIP UA Receiver"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "> UNLOCK CPU "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->eventLockCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :cond_0
    return-void
.end method

.method private updateCallInfoFromStack(Ljava/lang/Integer;Lorg/pjsip/pjsua/pjsip_event;)Lcom/weirdvoice/service/impl/SipCallSessionImpl;
    .locals 4
    .param p1, "callId"    # Ljava/lang/Integer;
    .param p2, "e"    # Lorg/pjsip/pjsua/pjsip_event;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/weirdvoice/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 647
    const-string v1, "SIP UA Receiver"

    const-string v2, "Updating call infos from the stack"

    invoke-static {v1, v2}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    iget-object v2, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->callsList:Landroid/util/SparseArray;

    monitor-enter v2

    .line 649
    :try_start_0
    iget-object v1, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->callsList:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/weirdvoice/service/impl/SipCallSessionImpl;

    .line 650
    .local v0, "callInfo":Lcom/weirdvoice/service/impl/SipCallSessionImpl;
    if-nez v0, :cond_0

    .line 651
    new-instance v0, Lcom/weirdvoice/service/impl/SipCallSessionImpl;

    .end local v0    # "callInfo":Lcom/weirdvoice/service/impl/SipCallSessionImpl;
    invoke-direct {v0}, Lcom/weirdvoice/service/impl/SipCallSessionImpl;-><init>()V

    .line 652
    .restart local v0    # "callInfo":Lcom/weirdvoice/service/impl/SipCallSessionImpl;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/weirdvoice/service/impl/SipCallSessionImpl;->setCallId(I)V

    .line 648
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 656
    iget-object v1, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->pjService:Lcom/weirdvoice/pjsip/PjSipService;

    iget-object v1, v1, Lcom/weirdvoice/pjsip/PjSipService;->service:Lcom/weirdvoice/service/SipService;

    invoke-static {v0, p2, v1}, Lcom/weirdvoice/pjsip/PjSipCalls;->updateSessionFromPj(Lcom/weirdvoice/service/impl/SipCallSessionImpl;Lorg/pjsip/pjsua/pjsip_event;Landroid/content/Context;)V

    .line 658
    iget-object v1, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->pjService:Lcom/weirdvoice/pjsip/PjSipService;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/weirdvoice/pjsip/PjSipService;->isRecording(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/weirdvoice/service/impl/SipCallSessionImpl;->setIsRecording(Z)V

    .line 659
    iget-object v1, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->pjService:Lcom/weirdvoice/pjsip/PjSipService;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/weirdvoice/pjsip/PjSipService;->canRecord(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/weirdvoice/service/impl/SipCallSessionImpl;->setCanRecord(Z)V

    .line 660
    iget-object v2, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->callsList:Landroid/util/SparseArray;

    monitor-enter v2

    .line 662
    :try_start_1
    iget-object v1, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->callsList:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 660
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 664
    return-object v0

    .line 648
    .end local v0    # "callInfo":Lcom/weirdvoice/service/impl/SipCallSessionImpl;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 660
    .restart local v0    # "callInfo":Lcom/weirdvoice/service/impl/SipCallSessionImpl;
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method


# virtual methods
.method public getActiveCallInProgress()Lcom/weirdvoice/api/SipCallSession;
    .locals 4

    .prologue
    .line 1019
    iget-object v3, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->callsList:Landroid/util/SparseArray;

    monitor-enter v3

    .line 1020
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->callsList:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 1019
    monitor-exit v3

    .line 1027
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 1021
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/weirdvoice/pjsip/UAStateReceiver;->getCallInfo(Ljava/lang/Integer;)Lcom/weirdvoice/service/impl/SipCallSessionImpl;

    move-result-object v0

    .line 1022
    .local v0, "callInfo":Lcom/weirdvoice/api/SipCallSession;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/weirdvoice/api/SipCallSession;->isActive()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1023
    monitor-exit v3

    goto :goto_1

    .line 1019
    .end local v0    # "callInfo":Lcom/weirdvoice/api/SipCallSession;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1020
    .restart local v0    # "callInfo":Lcom/weirdvoice/api/SipCallSession;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getActiveCallOngoing()Lcom/weirdvoice/api/SipCallSession;
    .locals 4

    .prologue
    .line 1037
    iget-object v3, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->callsList:Landroid/util/SparseArray;

    monitor-enter v3

    .line 1038
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->callsList:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 1037
    monitor-exit v3

    .line 1045
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 1039
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/weirdvoice/pjsip/UAStateReceiver;->getCallInfo(Ljava/lang/Integer;)Lcom/weirdvoice/service/impl/SipCallSessionImpl;

    move-result-object v0

    .line 1040
    .local v0, "callInfo":Lcom/weirdvoice/api/SipCallSession;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/weirdvoice/api/SipCallSession;->isActive()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/weirdvoice/api/SipCallSession;->isOngoing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1041
    monitor-exit v3

    goto :goto_1

    .line 1037
    .end local v0    # "callInfo":Lcom/weirdvoice/api/SipCallSession;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1038
    .restart local v0    # "callInfo":Lcom/weirdvoice/api/SipCallSession;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getCallInfo(Ljava/lang/Integer;)Lcom/weirdvoice/service/impl/SipCallSessionImpl;
    .locals 5
    .param p1, "callId"    # Ljava/lang/Integer;

    .prologue
    .line 675
    iget-object v2, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->callsList:Landroid/util/SparseArray;

    monitor-enter v2

    .line 676
    :try_start_0
    iget-object v1, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->callsList:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/weirdvoice/service/impl/SipCallSessionImpl;

    .line 675
    .local v0, "callInfo":Lcom/weirdvoice/service/impl/SipCallSessionImpl;
    monitor-exit v2

    .line 678
    return-object v0

    .line 675
    .end local v0    # "callInfo":Lcom/weirdvoice/service/impl/SipCallSessionImpl;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCalls()[Lcom/weirdvoice/service/impl/SipCallSessionImpl;
    .locals 5

    .prologue
    .line 687
    iget-object v3, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->callsList:Landroid/util/SparseArray;

    if-eqz v3, :cond_2

    .line 688
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 690
    .local v1, "calls":Ljava/util/List;, "Ljava/util/List<Lcom/weirdvoice/service/impl/SipCallSessionImpl;>;"
    iget-object v4, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->callsList:Landroid/util/SparseArray;

    monitor-enter v4

    .line 691
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->callsList:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 690
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 698
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lcom/weirdvoice/service/impl/SipCallSessionImpl;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/weirdvoice/service/impl/SipCallSessionImpl;

    .line 700
    .end local v1    # "calls":Ljava/util/List;, "Ljava/util/List<Lcom/weirdvoice/service/impl/SipCallSessionImpl;>;"
    .end local v2    # "i":I
    :goto_1
    return-object v3

    .line 692
    .restart local v1    # "calls":Ljava/util/List;, "Ljava/util/List<Lcom/weirdvoice/service/impl/SipCallSessionImpl;>;"
    .restart local v2    # "i":I
    :cond_0
    :try_start_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/weirdvoice/pjsip/UAStateReceiver;->getCallInfo(Ljava/lang/Integer;)Lcom/weirdvoice/service/impl/SipCallSessionImpl;

    move-result-object v0

    .line 693
    .local v0, "callInfo":Lcom/weirdvoice/service/impl/SipCallSessionImpl;
    if-eqz v0, :cond_1

    .line 694
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 691
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 690
    .end local v0    # "callInfo":Lcom/weirdvoice/service/impl/SipCallSessionImpl;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 700
    .end local v1    # "calls":Ljava/util/List;, "Ljava/util/List<Lcom/weirdvoice/service/impl/SipCallSessionImpl;>;"
    .end local v2    # "i":I
    :cond_2
    const/4 v3, 0x0

    new-array v3, v3, [Lcom/weirdvoice/service/impl/SipCallSessionImpl;

    goto :goto_1
.end method

.method public getRingingCall()Lcom/weirdvoice/api/SipCallSession;
    .locals 4

    .prologue
    .line 1050
    iget-object v3, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->callsList:Landroid/util/SparseArray;

    monitor-enter v3

    .line 1051
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->callsList:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 1050
    monitor-exit v3

    .line 1058
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 1052
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/weirdvoice/pjsip/UAStateReceiver;->getCallInfo(Ljava/lang/Integer;)Lcom/weirdvoice/service/impl/SipCallSessionImpl;

    move-result-object v0

    .line 1053
    .local v0, "callInfo":Lcom/weirdvoice/api/SipCallSession;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/weirdvoice/api/SipCallSession;->isActive()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/weirdvoice/api/SipCallSession;->isBeforeConfirmed()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/weirdvoice/api/SipCallSession;->isIncoming()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1054
    monitor-exit v3

    goto :goto_1

    .line 1050
    .end local v0    # "callInfo":Lcom/weirdvoice/api/SipCallSession;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1051
    .restart local v0    # "callInfo":Lcom/weirdvoice/api/SipCallSession;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public handleHeadsetButton()Z
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v2, 0x1

    .line 1067
    invoke-virtual {p0}, Lcom/weirdvoice/pjsip/UAStateReceiver;->getActiveCallInProgress()Lcom/weirdvoice/api/SipCallSession;

    move-result-object v0

    .line 1068
    .local v0, "callInfo":Lcom/weirdvoice/api/SipCallSession;
    if-eqz v0, :cond_4

    .line 1073
    invoke-virtual {v0}, Lcom/weirdvoice/api/SipCallSession;->getCallState()I

    move-result v1

    .line 1074
    .local v1, "state":I
    invoke-virtual {v0}, Lcom/weirdvoice/api/SipCallSession;->isIncoming()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1075
    if-eq v1, v4, :cond_0

    .line 1076
    if-ne v1, v5, :cond_2

    .line 1077
    :cond_0
    iget-object v3, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->pjService:Lcom/weirdvoice/pjsip/PjSipService;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->pjService:Lcom/weirdvoice/pjsip/PjSipService;

    iget-object v3, v3, Lcom/weirdvoice/pjsip/PjSipService;->service:Lcom/weirdvoice/service/SipService;

    if-eqz v3, :cond_1

    .line 1078
    iget-object v3, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->pjService:Lcom/weirdvoice/pjsip/PjSipService;

    iget-object v3, v3, Lcom/weirdvoice/pjsip/PjSipService;->service:Lcom/weirdvoice/service/SipService;

    invoke-virtual {v3}, Lcom/weirdvoice/service/SipService;->getExecutor()Lcom/weirdvoice/service/SipService$SipServiceExecutor;

    move-result-object v3

    new-instance v4, Lcom/weirdvoice/pjsip/UAStateReceiver$2;

    invoke-direct {v4, p0, v0}, Lcom/weirdvoice/pjsip/UAStateReceiver$2;-><init>(Lcom/weirdvoice/pjsip/UAStateReceiver;Lcom/weirdvoice/api/SipCallSession;)V

    invoke-virtual {v3, v4}, Lcom/weirdvoice/service/SipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 1117
    .end local v1    # "state":I
    :cond_1
    :goto_0
    return v2

    .line 1088
    .restart local v1    # "state":I
    :cond_2
    if-eq v1, v4, :cond_3

    .line 1089
    if-eq v1, v5, :cond_3

    .line 1090
    if-eq v1, v2, :cond_3

    .line 1091
    const/4 v3, 0x5

    if-eq v1, v3, :cond_3

    .line 1092
    const/4 v3, 0x4

    if-ne v1, v3, :cond_4

    .line 1099
    :cond_3
    iget-object v3, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->pjService:Lcom/weirdvoice/pjsip/PjSipService;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->pjService:Lcom/weirdvoice/pjsip/PjSipService;

    iget-object v3, v3, Lcom/weirdvoice/pjsip/PjSipService;->service:Lcom/weirdvoice/service/SipService;

    if-eqz v3, :cond_1

    .line 1100
    iget-object v3, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->pjService:Lcom/weirdvoice/pjsip/PjSipService;

    iget-object v3, v3, Lcom/weirdvoice/pjsip/PjSipService;->service:Lcom/weirdvoice/service/SipService;

    invoke-virtual {v3}, Lcom/weirdvoice/service/SipService;->getExecutor()Lcom/weirdvoice/service/SipService$SipServiceExecutor;

    move-result-object v3

    new-instance v4, Lcom/weirdvoice/pjsip/UAStateReceiver$3;

    invoke-direct {v4, p0, v0}, Lcom/weirdvoice/pjsip/UAStateReceiver$3;-><init>(Lcom/weirdvoice/pjsip/UAStateReceiver;Lcom/weirdvoice/api/SipCallSession;)V

    invoke-virtual {v3, v4}, Lcom/weirdvoice/service/SipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1117
    .end local v1    # "state":I
    :cond_4
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public initService(Lcom/weirdvoice/pjsip/PjSipService;)V
    .locals 4
    .param p1, "srv"    # Lcom/weirdvoice/pjsip/PjSipService;

    .prologue
    const/4 v3, 0x1

    .line 879
    iput-object p1, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->pjService:Lcom/weirdvoice/pjsip/PjSipService;

    .line 880
    iget-object v1, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->pjService:Lcom/weirdvoice/pjsip/PjSipService;

    iget-object v1, v1, Lcom/weirdvoice/pjsip/PjSipService;->service:Lcom/weirdvoice/service/SipService;

    iget-object v1, v1, Lcom/weirdvoice/service/SipService;->notificationManager:Lcom/weirdvoice/service/SipNotifications;

    iput-object v1, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->notificationManager:Lcom/weirdvoice/service/SipNotifications;

    .line 882
    iget-object v1, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->handlerThread:Landroid/os/HandlerThread;

    if-nez v1, :cond_0

    .line 883
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "UAStateAsyncWorker"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->handlerThread:Landroid/os/HandlerThread;

    .line 884
    iget-object v1, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 886
    :cond_0
    iget-object v1, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->msgHandler:Lcom/weirdvoice/pjsip/UAStateReceiver$WorkerHandler;

    if-nez v1, :cond_1

    .line 887
    new-instance v1, Lcom/weirdvoice/pjsip/UAStateReceiver$WorkerHandler;

    iget-object v2, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/weirdvoice/pjsip/UAStateReceiver$WorkerHandler;-><init>(Landroid/os/Looper;Lcom/weirdvoice/pjsip/UAStateReceiver;)V

    iput-object v1, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->msgHandler:Lcom/weirdvoice/pjsip/UAStateReceiver$WorkerHandler;

    .line 890
    :cond_1
    iget-object v1, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->eventLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_2

    .line 891
    iget-object v1, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->pjService:Lcom/weirdvoice/pjsip/PjSipService;

    iget-object v1, v1, Lcom/weirdvoice/pjsip/PjSipService;->service:Lcom/weirdvoice/service/SipService;

    .line 892
    const-string v2, "power"

    invoke-virtual {v1, v2}, Lcom/weirdvoice/service/SipService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 891
    check-cast v0, Landroid/os/PowerManager;

    .line 894
    .local v0, "pman":Landroid/os/PowerManager;
    const-string v1, "com.weirdvoice.inEventLock"

    .line 893
    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->eventLock:Landroid/os/PowerManager$WakeLock;

    .line 895
    iget-object v1, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->eventLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 898
    .end local v0    # "pman":Landroid/os/PowerManager;
    :cond_2
    iget-object v1, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->ongoingCallLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_3

    .line 899
    iget-object v1, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->pjService:Lcom/weirdvoice/pjsip/PjSipService;

    iget-object v1, v1, Lcom/weirdvoice/pjsip/PjSipService;->service:Lcom/weirdvoice/service/SipService;

    .line 900
    const-string v2, "power"

    invoke-virtual {v1, v2}, Lcom/weirdvoice/service/SipService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 899
    check-cast v0, Landroid/os/PowerManager;

    .line 902
    .restart local v0    # "pman":Landroid/os/PowerManager;
    const-string v1, "com.weirdvoice.ongoingCallLock"

    .line 901
    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->ongoingCallLock:Landroid/os/PowerManager$WakeLock;

    .line 903
    iget-object v1, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->ongoingCallLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 905
    .end local v0    # "pman":Landroid/os/PowerManager;
    :cond_3
    return-void
.end method

.method public on_buddy_state(I)V
    .locals 7
    .param p1, "buddyId"    # I

    .prologue
    .line 263
    invoke-direct {p0}, Lcom/weirdvoice/pjsip/UAStateReceiver;->lockCpu()V

    .line 265
    new-instance v0, Lorg/pjsip/pjsua/pjsua_buddy_info;

    invoke-direct {v0}, Lorg/pjsip/pjsua/pjsua_buddy_info;-><init>()V

    .line 266
    .local v0, "binfo":Lorg/pjsip/pjsua/pjsua_buddy_info;
    invoke-static {p1, v0}, Lorg/pjsip/pjsua/pjsua;->buddy_get_info(ILorg/pjsip/pjsua/pjsua_buddy_info;)I

    .line 268
    const-string v4, "SIP UA Receiver"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "On buddy "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " state "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lorg/pjsip/pjsua/pjsua_buddy_info;->getMonitor_pres()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " state "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 269
    invoke-virtual {v0}, Lorg/pjsip/pjsua/pjsua_buddy_info;->getStatus_text()Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v6

    invoke-static {v6}, Lcom/weirdvoice/pjsip/PjSipService;->pjStrToString(Lorg/pjsip/pjsua/pj_str_t;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 268
    invoke-static {v4, v5}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    sget-object v2, Lcom/weirdvoice/api/SipManager$PresenceStatus;->UNKNOWN:Lcom/weirdvoice/api/SipManager$PresenceStatus;

    .line 272
    .local v2, "presStatus":Lcom/weirdvoice/api/SipManager$PresenceStatus;
    invoke-virtual {v0}, Lorg/pjsip/pjsua/pjsua_buddy_info;->getStatus_text()Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v4

    invoke-static {v4}, Lcom/weirdvoice/pjsip/PjSipService;->pjStrToString(Lorg/pjsip/pjsua/pj_str_t;)Ljava/lang/String;

    move-result-object v3

    .line 273
    .local v3, "presStatusTxt":Ljava/lang/String;
    const-string v4, "Online"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 274
    const-string v4, "Offline"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 273
    const/4 v1, 0x0

    .line 275
    .local v1, "isDefaultTxt":Z
    :goto_0
    invoke-static {}, Lcom/weirdvoice/pjsip/UAStateReceiver;->$SWITCH_TABLE$org$pjsip$pjsua$pjsua_buddy_status()[I

    move-result-object v4

    invoke-virtual {v0}, Lorg/pjsip/pjsua/pjsua_buddy_info;->getStatus()Lorg/pjsip/pjsua/pjsua_buddy_status;

    move-result-object v5

    invoke-virtual {v5}, Lorg/pjsip/pjsua/pjsua_buddy_status;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 284
    sget-object v2, Lcom/weirdvoice/api/SipManager$PresenceStatus;->UNKNOWN:Lcom/weirdvoice/api/SipManager$PresenceStatus;

    .line 285
    :goto_1
    invoke-static {}, Lcom/weirdvoice/pjsip/UAStateReceiver;->$SWITCH_TABLE$org$pjsip$pjsua$pjrpid_activity()[I

    move-result-object v4

    .line 288
    invoke-virtual {v0}, Lorg/pjsip/pjsua/pjsua_buddy_info;->getRpid()Lorg/pjsip/pjsua/pjrpid_element;

    move-result-object v5

    invoke-virtual {v5}, Lorg/pjsip/pjsua/pjrpid_element;->getActivity()Lorg/pjsip/pjsua/pjrpid_activity;

    move-result-object v5

    invoke-virtual {v5}, Lorg/pjsip/pjsua/pjrpid_activity;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_1

    .line 307
    :cond_0
    :goto_2
    invoke-direct {p0}, Lcom/weirdvoice/pjsip/UAStateReceiver;->unlockCpu()V

    .line 308
    return-void

    .line 273
    .end local v1    # "isDefaultTxt":Z
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 277
    .restart local v1    # "isDefaultTxt":Z
    :pswitch_0
    sget-object v2, Lcom/weirdvoice/api/SipManager$PresenceStatus;->ONLINE:Lcom/weirdvoice/api/SipManager$PresenceStatus;

    .line 278
    goto :goto_1

    .line 280
    :pswitch_1
    sget-object v2, Lcom/weirdvoice/api/SipManager$PresenceStatus;->OFFLINE:Lcom/weirdvoice/api/SipManager$PresenceStatus;

    .line 281
    goto :goto_1

    .line 290
    :pswitch_2
    sget-object v2, Lcom/weirdvoice/api/SipManager$PresenceStatus;->AWAY:Lcom/weirdvoice/api/SipManager$PresenceStatus;

    .line 291
    if-eqz v1, :cond_0

    .line 292
    const-string v3, ""

    .line 294
    goto :goto_2

    .line 296
    :pswitch_3
    sget-object v2, Lcom/weirdvoice/api/SipManager$PresenceStatus;->BUSY:Lcom/weirdvoice/api/SipManager$PresenceStatus;

    .line 297
    if-eqz v1, :cond_0

    .line 298
    const-string v3, ""

    .line 300
    goto :goto_2

    .line 275
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 288
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public on_call_media_state(I)V
    .locals 13
    .param p1, "callId"    # I

    .prologue
    .line 401
    invoke-static {p1}, Lorg/pjsip/pjsua/pjsua;->css_on_call_media_state(I)V

    .line 403
    invoke-direct {p0}, Lcom/weirdvoice/pjsip/UAStateReceiver;->lockCpu()V

    .line 404
    iget-object v10, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->pjService:Lcom/weirdvoice/pjsip/PjSipService;

    iget-object v10, v10, Lcom/weirdvoice/pjsip/PjSipService;->mediaManager:Lcom/weirdvoice/service/MediaManager;

    if-eqz v10, :cond_0

    .line 407
    iget-object v10, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->pjService:Lcom/weirdvoice/pjsip/PjSipService;

    iget-object v10, v10, Lcom/weirdvoice/pjsip/PjSipService;->mediaManager:Lcom/weirdvoice/service/MediaManager;

    invoke-virtual {v10}, Lcom/weirdvoice/service/MediaManager;->stopRing()V

    .line 411
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    invoke-direct {p0, v10, v11}, Lcom/weirdvoice/pjsip/UAStateReceiver;->updateCallInfoFromStack(Ljava/lang/Integer;Lorg/pjsip/pjsua/pjsip_event;)Lcom/weirdvoice/service/impl/SipCallSessionImpl;

    move-result-object v1

    .line 417
    .local v1, "callInfo":Lcom/weirdvoice/api/SipCallSession;
    const/4 v3, 0x0

    .line 418
    .local v3, "connectToOtherCalls":Z
    invoke-virtual {v1}, Lcom/weirdvoice/api/SipCallSession;->getConfPort()I

    move-result v0

    .line 419
    .local v0, "callConfSlot":I
    invoke-virtual {v1}, Lcom/weirdvoice/api/SipCallSession;->getMediaStatus()I

    move-result v6

    .line 420
    .local v6, "mediaStatus":I
    const/4 v10, 0x1

    if-eq v6, v10, :cond_1

    .line 421
    const/4 v10, 0x3

    if-ne v6, v10, :cond_3

    .line 423
    :cond_1
    const/4 v3, 0x1

    .line 424
    const/4 v10, 0x0

    invoke-static {v0, v10}, Lorg/pjsip/pjsua/pjsua;->conf_connect(II)I

    .line 425
    const/4 v10, 0x0

    invoke-static {v10, v0}, Lorg/pjsip/pjsua/pjsua;->conf_connect(II)I

    .line 428
    iget-object v10, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->pjService:Lcom/weirdvoice/pjsip/PjSipService;

    iget-object v10, v10, Lcom/weirdvoice/pjsip/PjSipService;->mediaManager:Lcom/weirdvoice/service/MediaManager;

    if-eqz v10, :cond_2

    .line 429
    iget-object v10, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->pjService:Lcom/weirdvoice/pjsip/PjSipService;

    iget-object v10, v10, Lcom/weirdvoice/pjsip/PjSipService;->mediaManager:Lcom/weirdvoice/service/MediaManager;

    invoke-virtual {v10}, Lcom/weirdvoice/service/MediaManager;->setSoftwareVolume()V

    .line 433
    :cond_2
    iget-boolean v10, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->mAutoRecordCalls:Z

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->pjService:Lcom/weirdvoice/pjsip/PjSipService;

    invoke-virtual {v10, p1}, Lcom/weirdvoice/pjsip/PjSipService;->canRecord(I)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 434
    iget-object v10, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->pjService:Lcom/weirdvoice/pjsip/PjSipService;

    invoke-virtual {v10, p1}, Lcom/weirdvoice/pjsip/PjSipService;->isRecording(I)Z

    move-result v10

    if-nez v10, :cond_3

    .line 435
    iget-object v10, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->pjService:Lcom/weirdvoice/pjsip/PjSipService;

    .line 436
    const/4 v11, 0x3

    invoke-virtual {v10, p1, v11}, Lcom/weirdvoice/pjsip/PjSipService;->startRecording(II)V

    .line 442
    :cond_3
    const/4 v4, 0x0

    .line 443
    .local v4, "hasOtherCall":Z
    iget-object v11, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->callsList:Landroid/util/SparseArray;

    monitor-enter v11
    :try_end_0
    .catch Lcom/weirdvoice/service/SipService$SameThreadException; {:try_start_0 .. :try_end_0} :catch_0

    .line 444
    :try_start_1
    iget-object v10, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->callsList:Landroid/util/SparseArray;

    if-eqz v10, :cond_4

    .line 445
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget-object v10, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->callsList:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v10

    if-lt v5, v10, :cond_6

    .line 443
    .end local v5    # "i":I
    :cond_4
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 468
    :try_start_2
    iget-boolean v10, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->mPlayWaittone:Z

    if-eqz v10, :cond_5

    .line 469
    const/4 v10, 0x3

    if-ne v6, v10, :cond_b

    if-nez v4, :cond_b

    .line 470
    iget-object v10, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->pjService:Lcom/weirdvoice/pjsip/PjSipService;

    invoke-virtual {v10, p1}, Lcom/weirdvoice/pjsip/PjSipService;->startWaittoneGenerator(I)V

    .line 476
    :cond_5
    :goto_1
    iget-object v10, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->msgHandler:Lcom/weirdvoice/pjsip/UAStateReceiver$WorkerHandler;

    iget-object v11, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->msgHandler:Lcom/weirdvoice/pjsip/UAStateReceiver$WorkerHandler;

    const/4 v12, 0x3

    invoke-virtual {v11, v12, v1}, Lcom/weirdvoice/pjsip/UAStateReceiver$WorkerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/weirdvoice/pjsip/UAStateReceiver$WorkerHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_2
    .catch Lcom/weirdvoice/service/SipService$SameThreadException; {:try_start_2 .. :try_end_2} :catch_0

    .line 481
    .end local v0    # "callConfSlot":I
    .end local v1    # "callInfo":Lcom/weirdvoice/api/SipCallSession;
    .end local v3    # "connectToOtherCalls":Z
    .end local v4    # "hasOtherCall":Z
    .end local v6    # "mediaStatus":I
    :goto_2
    invoke-direct {p0}, Lcom/weirdvoice/pjsip/UAStateReceiver;->unlockCpu()V

    .line 482
    return-void

    .line 446
    .restart local v0    # "callConfSlot":I
    .restart local v1    # "callInfo":Lcom/weirdvoice/api/SipCallSession;
    .restart local v3    # "connectToOtherCalls":Z
    .restart local v4    # "hasOtherCall":Z
    .restart local v5    # "i":I
    .restart local v6    # "mediaStatus":I
    :cond_6
    :try_start_3
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/weirdvoice/pjsip/UAStateReceiver;->getCallInfo(Ljava/lang/Integer;)Lcom/weirdvoice/service/impl/SipCallSessionImpl;

    move-result-object v8

    .line 447
    .local v8, "otherCallInfo":Lcom/weirdvoice/service/impl/SipCallSessionImpl;
    if-eqz v8, :cond_8

    if-eq v8, v1, :cond_8

    .line 448
    invoke-virtual {v8}, Lcom/weirdvoice/service/impl/SipCallSessionImpl;->getMediaStatus()I

    move-result v9

    .line 449
    .local v9, "otherMediaStatus":I
    invoke-virtual {v8}, Lcom/weirdvoice/service/impl/SipCallSessionImpl;->isActive()Z

    move-result v10

    if-eqz v10, :cond_8

    if-eqz v9, :cond_8

    .line 450
    const/4 v4, 0x1

    .line 451
    if-eqz v3, :cond_9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_7

    .line 452
    const/4 v10, 0x3

    if-ne v9, v10, :cond_9

    .line 451
    :cond_7
    const/4 v2, 0x1

    .line 453
    .local v2, "connect":Z
    :goto_3
    invoke-virtual {v8}, Lcom/weirdvoice/service/impl/SipCallSessionImpl;->getConfPort()I

    move-result v7

    .line 454
    .local v7, "otherCallConfSlot":I
    if-eqz v2, :cond_a

    .line 455
    invoke-static {v0, v7}, Lorg/pjsip/pjsua/pjsua;->conf_connect(II)I

    .line 456
    invoke-static {v7, v0}, Lorg/pjsip/pjsua/pjsua;->conf_connect(II)I

    .line 445
    .end local v2    # "connect":Z
    .end local v7    # "otherCallConfSlot":I
    .end local v9    # "otherMediaStatus":I
    :cond_8
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 451
    .restart local v9    # "otherMediaStatus":I
    :cond_9
    const/4 v2, 0x0

    goto :goto_3

    .line 458
    .restart local v2    # "connect":Z
    .restart local v7    # "otherCallConfSlot":I
    :cond_a
    invoke-static {v0, v7}, Lorg/pjsip/pjsua/pjsua;->conf_disconnect(II)I

    .line 459
    invoke-static {v7, v0}, Lorg/pjsip/pjsua/pjsua;->conf_disconnect(II)I

    goto :goto_4

    .line 443
    .end local v2    # "connect":Z
    .end local v5    # "i":I
    .end local v7    # "otherCallConfSlot":I
    .end local v8    # "otherCallInfo":Lcom/weirdvoice/service/impl/SipCallSessionImpl;
    .end local v9    # "otherMediaStatus":I
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v10

    .line 477
    .end local v0    # "callConfSlot":I
    .end local v1    # "callInfo":Lcom/weirdvoice/api/SipCallSession;
    .end local v3    # "connectToOtherCalls":Z
    .end local v4    # "hasOtherCall":Z
    .end local v6    # "mediaStatus":I
    :catch_0
    move-exception v10

    goto :goto_2

    .line 472
    .restart local v0    # "callConfSlot":I
    .restart local v1    # "callInfo":Lcom/weirdvoice/api/SipCallSession;
    .restart local v3    # "connectToOtherCalls":Z
    .restart local v4    # "hasOtherCall":Z
    .restart local v6    # "mediaStatus":I
    :cond_b
    iget-object v10, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->pjService:Lcom/weirdvoice/pjsip/PjSipService;

    invoke-virtual {v10, p1}, Lcom/weirdvoice/pjsip/PjSipService;->stopWaittoneGenerator(I)V
    :try_end_4
    .catch Lcom/weirdvoice/service/SipService$SameThreadException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1
.end method

.method public on_call_redirected(ILorg/pjsip/pjsua/pj_str_t;)Lorg/pjsip/pjsua/pjsip_redirect_op;
    .locals 3
    .param p1, "call_id"    # I
    .param p2, "target"    # Lorg/pjsip/pjsua/pj_str_t;

    .prologue
    .line 597
    const-string v0, "SIP UA Receiver"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ask for redirection, not yet implemented, for now allow all "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 598
    invoke-static {p2}, Lcom/weirdvoice/pjsip/PjSipService;->pjStrToString(Lorg/pjsip/pjsua/pj_str_t;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 597
    invoke-static {v0, v1}, Lcom/weirdvoice/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    sget-object v0, Lorg/pjsip/pjsua/pjsip_redirect_op;->PJSIP_REDIRECT_ACCEPT:Lorg/pjsip/pjsua/pjsip_redirect_op;

    return-object v0
.end method

.method public on_call_state(ILorg/pjsip/pjsua/pjsip_event;)V
    .locals 5
    .param p1, "callId"    # I
    .param p2, "e"    # Lorg/pjsip/pjsua/pjsip_event;

    .prologue
    .line 202
    invoke-static {p1, p2}, Lorg/pjsip/pjsua/pjsua;->css_on_call_state(ILorg/pjsip/pjsua/pjsip_event;)V

    .line 203
    invoke-direct {p0}, Lcom/weirdvoice/pjsip/UAStateReceiver;->lockCpu()V

    .line 205
    const-string v2, "SIP UA Receiver"

    const-string v3, "Call state <<"

    invoke-static {v2, v3}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/weirdvoice/pjsip/UAStateReceiver;->updateCallInfoFromStack(Ljava/lang/Integer;Lorg/pjsip/pjsua/pjsip_event;)Lcom/weirdvoice/service/impl/SipCallSessionImpl;

    move-result-object v0

    .line 210
    .local v0, "callInfo":Lcom/weirdvoice/api/SipCallSession;
    invoke-virtual {v0}, Lcom/weirdvoice/api/SipCallSession;->getCallState()I

    move-result v1

    .line 213
    .local v1, "callState":I
    const/4 v2, 0x6

    if-ne v1, v2, :cond_3

    .line 214
    iget-object v2, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->pjService:Lcom/weirdvoice/pjsip/PjSipService;

    iget-object v2, v2, Lcom/weirdvoice/pjsip/PjSipService;->mediaManager:Lcom/weirdvoice/service/MediaManager;

    if-eqz v2, :cond_0

    .line 215
    invoke-virtual {p0}, Lcom/weirdvoice/pjsip/UAStateReceiver;->getRingingCall()Lcom/weirdvoice/api/SipCallSession;

    move-result-object v2

    if-nez v2, :cond_0

    .line 216
    iget-object v2, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->pjService:Lcom/weirdvoice/pjsip/PjSipService;

    iget-object v2, v2, Lcom/weirdvoice/pjsip/PjSipService;->mediaManager:Lcom/weirdvoice/service/MediaManager;

    invoke-virtual {v2}, Lcom/weirdvoice/service/MediaManager;->stopRingAndUnfocus()V

    .line 217
    iget-object v2, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->pjService:Lcom/weirdvoice/pjsip/PjSipService;

    iget-object v2, v2, Lcom/weirdvoice/pjsip/PjSipService;->mediaManager:Lcom/weirdvoice/service/MediaManager;

    invoke-virtual {v2}, Lcom/weirdvoice/service/MediaManager;->resetSettings()V

    .line 220
    :cond_0
    iget-object v2, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->ongoingCallLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->ongoingCallLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 221
    iget-object v2, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->ongoingCallLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 224
    :cond_1
    iget-object v2, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->pjService:Lcom/weirdvoice/pjsip/PjSipService;

    invoke-virtual {v2, p1}, Lcom/weirdvoice/pjsip/PjSipService;->stopDialtoneGenerator(I)V

    .line 225
    iget-object v2, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->pjService:Lcom/weirdvoice/pjsip/PjSipService;

    invoke-virtual {v2, p1}, Lcom/weirdvoice/pjsip/PjSipService;->stopRecording(I)V

    .line 226
    iget-object v2, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->pjService:Lcom/weirdvoice/pjsip/PjSipService;

    invoke-virtual {v2, p1}, Lcom/weirdvoice/pjsip/PjSipService;->stopPlaying(I)V

    .line 227
    iget-object v2, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->pjService:Lcom/weirdvoice/pjsip/PjSipService;

    invoke-virtual {v2, p1}, Lcom/weirdvoice/pjsip/PjSipService;->stopWaittoneGenerator(I)V

    .line 234
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->msgHandler:Lcom/weirdvoice/pjsip/UAStateReceiver$WorkerHandler;

    iget-object v3, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->msgHandler:Lcom/weirdvoice/pjsip/UAStateReceiver$WorkerHandler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v0}, Lcom/weirdvoice/pjsip/UAStateReceiver$WorkerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/weirdvoice/pjsip/UAStateReceiver$WorkerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 235
    const-string v2, "SIP UA Receiver"

    const-string v3, "Call state >>"

    invoke-static {v2, v3}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/weirdvoice/service/SipService$SameThreadException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    invoke-direct {p0}, Lcom/weirdvoice/pjsip/UAStateReceiver;->unlockCpu()V

    .line 243
    .end local v0    # "callInfo":Lcom/weirdvoice/api/SipCallSession;
    .end local v1    # "callState":I
    :goto_1
    return-void

    .line 229
    .restart local v0    # "callInfo":Lcom/weirdvoice/api/SipCallSession;
    .restart local v1    # "callState":I
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->ongoingCallLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->ongoingCallLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-nez v2, :cond_2

    .line 230
    iget-object v2, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->ongoingCallLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_1
    .catch Lcom/weirdvoice/service/SipService$SameThreadException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 236
    .end local v0    # "callInfo":Lcom/weirdvoice/api/SipCallSession;
    .end local v1    # "callState":I
    :catch_0
    move-exception v2

    .line 240
    invoke-direct {p0}, Lcom/weirdvoice/pjsip/UAStateReceiver;->unlockCpu()V

    goto :goto_1

    .line 238
    :catchall_0
    move-exception v2

    .line 240
    invoke-direct {p0}, Lcom/weirdvoice/pjsip/UAStateReceiver;->unlockCpu()V

    .line 241
    throw v2
.end method

.method public on_call_transfer_status(IILorg/pjsip/pjsua/pj_str_t;ILorg/pjsip/pjsua/SWIGTYPE_p_int;)V
    .locals 3
    .param p1, "callId"    # I
    .param p2, "st_code"    # I
    .param p3, "st_text"    # Lorg/pjsip/pjsua/pj_str_t;
    .param p4, "final_"    # I
    .param p5, "p_cont"    # Lorg/pjsip/pjsua/SWIGTYPE_p_int;

    .prologue
    const/4 v2, 0x0

    .line 563
    invoke-direct {p0}, Lcom/weirdvoice/pjsip/UAStateReceiver;->lockCpu()V

    .line 564
    div-int/lit8 v0, p2, 0x64

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 565
    const-wide/16 v0, 0x0

    invoke-static {p1, v0, v1, v2, v2}, Lorg/pjsip/pjsua/pjsua;->call_hangup(IJLorg/pjsip/pjsua/pj_str_t;Lorg/pjsip/pjsua/pjsua_msg_data;)I

    .line 567
    :cond_0
    invoke-direct {p0}, Lcom/weirdvoice/pjsip/UAStateReceiver;->unlockCpu()V

    .line 568
    return-void
.end method

.method public on_call_tsx_state(ILorg/pjsip/pjsua/SWIGTYPE_p_pjsip_transaction;Lorg/pjsip/pjsua/pjsip_event;)V
    .locals 2
    .param p1, "call_id"    # I
    .param p2, "tsx"    # Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_transaction;
    .param p3, "e"    # Lorg/pjsip/pjsua/pjsip_event;

    .prologue
    .line 247
    invoke-direct {p0}, Lcom/weirdvoice/pjsip/UAStateReceiver;->lockCpu()V

    .line 249
    const-string v0, "SIP UA Receiver"

    const-string v1, "Call TSX state <<"

    invoke-static {v0, v1}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/weirdvoice/pjsip/UAStateReceiver;->updateCallInfoFromStack(Ljava/lang/Integer;Lorg/pjsip/pjsua/pjsip_event;)Lcom/weirdvoice/service/impl/SipCallSessionImpl;

    .line 252
    const-string v0, "SIP UA Receiver"

    const-string v1, "Call TSX state >>"

    invoke-static {v0, v1}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/weirdvoice/service/SipService$SameThreadException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    invoke-direct {p0}, Lcom/weirdvoice/pjsip/UAStateReceiver;->unlockCpu()V

    .line 259
    :goto_0
    return-void

    .line 253
    :catch_0
    move-exception v0

    .line 257
    invoke-direct {p0}, Lcom/weirdvoice/pjsip/UAStateReceiver;->unlockCpu()V

    goto :goto_0

    .line 255
    :catchall_0
    move-exception v0

    .line 257
    invoke-direct {p0}, Lcom/weirdvoice/pjsip/UAStateReceiver;->unlockCpu()V

    .line 258
    throw v0
.end method

.method public on_incoming_call(IILorg/pjsip/pjsua/SWIGTYPE_p_pjsip_rx_data;)V
    .locals 12
    .param p1, "accId"    # I
    .param p2, "callId"    # I
    .param p3, "rdata"    # Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_rx_data;

    .prologue
    const/4 v11, 0x0

    .line 123
    invoke-direct {p0}, Lcom/weirdvoice/pjsip/UAStateReceiver;->lockCpu()V

    .line 126
    const/4 v5, 0x0

    .line 127
    .local v5, "hasOngoingSipCall":Z
    iget-object v8, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->pjService:Lcom/weirdvoice/pjsip/PjSipService;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->pjService:Lcom/weirdvoice/pjsip/PjSipService;

    iget-object v8, v8, Lcom/weirdvoice/pjsip/PjSipService;->service:Lcom/weirdvoice/service/SipService;

    if-eqz v8, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/weirdvoice/pjsip/UAStateReceiver;->getCalls()[Lcom/weirdvoice/service/impl/SipCallSessionImpl;

    move-result-object v2

    .line 129
    .local v2, "calls":[Lcom/weirdvoice/service/impl/SipCallSessionImpl;
    if-eqz v2, :cond_0

    .line 130
    array-length v9, v2

    const/4 v8, 0x0

    :goto_0
    if-lt v8, v9, :cond_3

    .line 150
    .end local v2    # "calls":[Lcom/weirdvoice/service/impl/SipCallSessionImpl;
    :cond_0
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {p0, v8, v9}, Lcom/weirdvoice/pjsip/UAStateReceiver;->updateCallInfoFromStack(Ljava/lang/Integer;Lorg/pjsip/pjsua/pjsip_event;)Lcom/weirdvoice/service/impl/SipCallSessionImpl;

    move-result-object v1

    .line 151
    .local v1, "callInfo":Lcom/weirdvoice/service/impl/SipCallSessionImpl;
    const-string v8, "SIP UA Receiver"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Incoming call << for account "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object v8, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->ongoingCallLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v8

    if-nez v8, :cond_1

    .line 155
    iget-object v8, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->ongoingCallLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 158
    :cond_1
    invoke-virtual {v1}, Lcom/weirdvoice/service/impl/SipCallSessionImpl;->getRemoteContact()Ljava/lang/String;

    move-result-object v6

    .line 159
    .local v6, "remContact":Ljava/lang/String;
    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Lcom/weirdvoice/service/impl/SipCallSessionImpl;->setIncoming(Z)V

    .line 160
    iget-object v8, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->notificationManager:Lcom/weirdvoice/service/SipNotifications;

    invoke-virtual {v8, v1}, Lcom/weirdvoice/service/SipNotifications;->showNotificationForCall(Lcom/weirdvoice/api/SipCallSession;)V

    .line 163
    iget-object v8, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->pjService:Lcom/weirdvoice/pjsip/PjSipService;

    invoke-virtual {v8, p1}, Lcom/weirdvoice/pjsip/PjSipService;->getAccountForPjsipId(I)Lcom/weirdvoice/api/SipProfile;

    move-result-object v0

    .line 164
    .local v0, "acc":Lcom/weirdvoice/api/SipProfile;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 165
    .local v4, "extraHdr":Landroid/os/Bundle;
    const-string v8, "Call-Info"

    invoke-direct {p0, v8, p3, v4}, Lcom/weirdvoice/pjsip/UAStateReceiver;->fillRDataHeader(Ljava/lang/String;Lorg/pjsip/pjsua/SWIGTYPE_p_pjsip_rx_data;Landroid/os/Bundle;)V

    .line 166
    iget-object v8, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->pjService:Lcom/weirdvoice/pjsip/PjSipService;

    iget-object v8, v8, Lcom/weirdvoice/pjsip/PjSipService;->service:Lcom/weirdvoice/service/SipService;

    invoke-virtual {v8, v6, v0, v4}, Lcom/weirdvoice/service/SipService;->shouldAutoAnswer(Ljava/lang/String;Lcom/weirdvoice/api/SipProfile;Landroid/os/Bundle;)I

    move-result v7

    .line 168
    .local v7, "shouldAutoAnswer":I
    const-string v8, "SIP UA Receiver"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Should I anto answer ? "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const/16 v8, 0xc8

    if-lt v7, v8, :cond_6

    .line 172
    iget-object v8, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->pjService:Lcom/weirdvoice/pjsip/PjSipService;

    invoke-virtual {v8, p2, v7}, Lcom/weirdvoice/pjsip/PjSipService;->callAnswer(II)I

    .line 187
    :goto_1
    const/16 v8, 0x12c

    if-ge v7, v8, :cond_2

    .line 189
    invoke-direct {p0, v1}, Lcom/weirdvoice/pjsip/UAStateReceiver;->launchCallHandler(Lcom/weirdvoice/api/SipCallSession;)V

    .line 190
    const-string v8, "SIP UA Receiver"

    const-string v9, "Incoming call >>"

    invoke-static {v8, v9}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/weirdvoice/service/SipService$SameThreadException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    :cond_2
    invoke-direct {p0}, Lcom/weirdvoice/pjsip/UAStateReceiver;->unlockCpu()V

    .line 198
    .end local v0    # "acc":Lcom/weirdvoice/api/SipProfile;
    .end local v1    # "callInfo":Lcom/weirdvoice/service/impl/SipCallSessionImpl;
    .end local v4    # "extraHdr":Landroid/os/Bundle;
    .end local v6    # "remContact":Ljava/lang/String;
    .end local v7    # "shouldAutoAnswer":I
    :goto_2
    return-void

    .line 130
    .restart local v2    # "calls":[Lcom/weirdvoice/service/impl/SipCallSessionImpl;
    :cond_3
    aget-object v3, v2, v8

    .line 131
    .local v3, "existingCall":Lcom/weirdvoice/service/impl/SipCallSessionImpl;
    invoke-virtual {v3}, Lcom/weirdvoice/service/impl/SipCallSessionImpl;->isAfterEnded()Z

    move-result v10

    if-nez v10, :cond_5

    invoke-virtual {v3}, Lcom/weirdvoice/service/impl/SipCallSessionImpl;->getCallId()I

    move-result v10

    if-eq v10, p2, :cond_5

    .line 132
    iget-object v10, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->pjService:Lcom/weirdvoice/pjsip/PjSipService;

    iget-object v10, v10, Lcom/weirdvoice/pjsip/PjSipService;->service:Lcom/weirdvoice/service/SipService;

    iget-boolean v10, v10, Lcom/weirdvoice/service/SipService;->supportMultipleCalls:Z

    if-nez v10, :cond_4

    .line 133
    const-string v8, "SIP UA Receiver"

    .line 134
    const-string v9, "Settings to not support two call at the same time !!!"

    .line 133
    invoke-static {v8, v9}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-wide/16 v8, 0x1e6

    invoke-static {p2, v8, v9, v11, v11}, Lorg/pjsip/pjsua/pjsua;->call_hangup(IJLorg/pjsip/pjsua/pj_str_t;Lorg/pjsip/pjsua/pjsua_msg_data;)I

    .line 139
    invoke-direct {p0}, Lcom/weirdvoice/pjsip/UAStateReceiver;->unlockCpu()V

    goto :goto_2

    .line 142
    :cond_4
    const/4 v5, 0x1

    .line 130
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 175
    .end local v2    # "calls":[Lcom/weirdvoice/service/impl/SipCallSessionImpl;
    .end local v3    # "existingCall":Lcom/weirdvoice/service/impl/SipCallSessionImpl;
    .restart local v0    # "acc":Lcom/weirdvoice/api/SipProfile;
    .restart local v1    # "callInfo":Lcom/weirdvoice/service/impl/SipCallSessionImpl;
    .restart local v4    # "extraHdr":Landroid/os/Bundle;
    .restart local v6    # "remContact":Ljava/lang/String;
    .restart local v7    # "shouldAutoAnswer":I
    :cond_6
    :try_start_1
    iget-object v8, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->pjService:Lcom/weirdvoice/pjsip/PjSipService;

    const/16 v9, 0xb4

    invoke-virtual {v8, p2, v9}, Lcom/weirdvoice/pjsip/PjSipService;->callAnswer(II)I

    .line 177
    iget-object v8, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->pjService:Lcom/weirdvoice/pjsip/PjSipService;

    iget-object v8, v8, Lcom/weirdvoice/pjsip/PjSipService;->mediaManager:Lcom/weirdvoice/service/MediaManager;

    if-eqz v8, :cond_7

    .line 178
    iget-object v8, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->pjService:Lcom/weirdvoice/pjsip/PjSipService;

    iget-object v8, v8, Lcom/weirdvoice/pjsip/PjSipService;->service:Lcom/weirdvoice/service/SipService;

    invoke-virtual {v8}, Lcom/weirdvoice/service/SipService;->getGSMCallState()I

    move-result v8

    if-nez v8, :cond_8

    .line 179
    if-nez v5, :cond_8

    .line 180
    iget-object v8, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->pjService:Lcom/weirdvoice/pjsip/PjSipService;

    iget-object v8, v8, Lcom/weirdvoice/pjsip/PjSipService;->mediaManager:Lcom/weirdvoice/service/MediaManager;

    invoke-virtual {v8, v6}, Lcom/weirdvoice/service/MediaManager;->startRing(Ljava/lang/String;)V

    .line 185
    :cond_7
    :goto_3
    const-string v8, "RINGING"

    invoke-direct {p0, v8, v6}, Lcom/weirdvoice/pjsip/UAStateReceiver;->broadCastAndroidCallState(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/weirdvoice/service/SipService$SameThreadException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 192
    .end local v0    # "acc":Lcom/weirdvoice/api/SipProfile;
    .end local v1    # "callInfo":Lcom/weirdvoice/service/impl/SipCallSessionImpl;
    .end local v4    # "extraHdr":Landroid/os/Bundle;
    .end local v6    # "remContact":Ljava/lang/String;
    .end local v7    # "shouldAutoAnswer":I
    :catch_0
    move-exception v8

    .line 195
    invoke-direct {p0}, Lcom/weirdvoice/pjsip/UAStateReceiver;->unlockCpu()V

    goto :goto_2

    .line 182
    .restart local v0    # "acc":Lcom/weirdvoice/api/SipProfile;
    .restart local v1    # "callInfo":Lcom/weirdvoice/service/impl/SipCallSessionImpl;
    .restart local v4    # "extraHdr":Landroid/os/Bundle;
    .restart local v6    # "remContact":Ljava/lang/String;
    .restart local v7    # "shouldAutoAnswer":I
    :cond_8
    :try_start_2
    iget-object v8, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->pjService:Lcom/weirdvoice/pjsip/PjSipService;

    iget-object v8, v8, Lcom/weirdvoice/pjsip/PjSipService;->mediaManager:Lcom/weirdvoice/service/MediaManager;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/weirdvoice/service/MediaManager;->playInCallTone(I)V
    :try_end_2
    .catch Lcom/weirdvoice/service/SipService$SameThreadException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 194
    .end local v0    # "acc":Lcom/weirdvoice/api/SipProfile;
    .end local v1    # "callInfo":Lcom/weirdvoice/service/impl/SipCallSessionImpl;
    .end local v4    # "extraHdr":Landroid/os/Bundle;
    .end local v6    # "remContact":Ljava/lang/String;
    .end local v7    # "shouldAutoAnswer":I
    :catchall_0
    move-exception v8

    .line 195
    invoke-direct {p0}, Lcom/weirdvoice/pjsip/UAStateReceiver;->unlockCpu()V

    .line 196
    throw v8
.end method

.method public on_mwi_info(ILorg/pjsip/pjsua/pj_str_t;Lorg/pjsip/pjsua/pj_str_t;)V
    .locals 19
    .param p1, "acc_id"    # I
    .param p2, "mime_type"    # Lorg/pjsip/pjsua/pj_str_t;
    .param p3, "body"    # Lorg/pjsip/pjsua/pj_str_t;

    .prologue
    .line 486
    invoke-direct/range {p0 .. p0}, Lcom/weirdvoice/pjsip/UAStateReceiver;->lockCpu()V

    .line 489
    invoke-static/range {p3 .. p3}, Lcom/weirdvoice/pjsip/PjSipService;->pjStrToString(Lorg/pjsip/pjsua/pj_str_t;)Ljava/lang/String;

    move-result-object v12

    .line 493
    .local v12, "msg":Ljava/lang/String;
    const/4 v4, 0x0

    .line 494
    .local v4, "hasMessage":Z
    const/4 v5, 0x0

    .line 495
    .local v5, "hasSomeNumberOfMessage":Z
    const/4 v13, 0x0

    .line 498
    .local v13, "numberOfMessages":I
    const-string v14, "\\r?\\n"

    invoke-virtual {v12, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 502
    .local v7, "lines":[Ljava/lang/String;
    const-string v14, ".*Messages-Waiting[ \t]?:[ \t]?(yes|no).*"

    .line 503
    const/4 v15, 0x2

    .line 502
    invoke-static {v14, v15}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v11

    .line 508
    .local v11, "messWaitingPattern":Ljava/util/regex/Pattern;
    const-string v14, ".*Voice-Message[ \t]?:[ \t]?([0-9]*)/[0-9]*.*"

    const/4 v15, 0x2

    .line 507
    invoke-static {v14, v15}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v10

    .line 510
    .local v10, "messVoiceNbrPattern":Ljava/util/regex/Pattern;
    const-string v14, ".*Fax-Message[ \t]?:[ \t]?([0-9]*)/[0-9]*.*"

    const/4 v15, 0x2

    .line 509
    invoke-static {v14, v15}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v9

    .line 512
    .local v9, "messFaxNbrPattern":Ljava/util/regex/Pattern;
    array-length v15, v7

    const/4 v14, 0x0

    :goto_0
    if-lt v14, v15, :cond_3

    .line 545
    if-eqz v4, :cond_2

    if-gtz v13, :cond_0

    if-nez v5, :cond_2

    .line 546
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/weirdvoice/pjsip/UAStateReceiver;->pjService:Lcom/weirdvoice/pjsip/PjSipService;

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/weirdvoice/pjsip/PjSipService;->getAccountForPjsipId(I)Lcom/weirdvoice/api/SipProfile;

    move-result-object v2

    .line 547
    .local v2, "acc":Lcom/weirdvoice/api/SipProfile;
    if-eqz v2, :cond_1

    .line 548
    const-string v14, "SIP UA Receiver"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v16, " -> Has found account "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v2}, Lcom/weirdvoice/api/SipProfile;->getDefaultDomain()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 549
    iget-wide v0, v2, Lcom/weirdvoice/api/SipProfile;->id:J

    move-wide/from16 v16, v0

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " >> "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v2}, Lcom/weirdvoice/api/SipProfile;->getProfileName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 548
    invoke-static {v14, v15}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    :cond_1
    const-string v14, "SIP UA Receiver"

    const-string v15, "We can show the voice messages notification"

    invoke-static {v14, v15}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/weirdvoice/pjsip/UAStateReceiver;->notificationManager:Lcom/weirdvoice/service/SipNotifications;

    invoke-virtual {v14, v2, v13}, Lcom/weirdvoice/service/SipNotifications;->showNotificationForVoiceMail(Lcom/weirdvoice/api/SipProfile;I)V

    .line 554
    .end local v2    # "acc":Lcom/weirdvoice/api/SipProfile;
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/weirdvoice/pjsip/UAStateReceiver;->unlockCpu()V

    .line 555
    return-void

    .line 512
    :cond_3
    aget-object v6, v7, v14

    .line 514
    .local v6, "line":Ljava/lang/String;
    invoke-virtual {v11, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 515
    .local v8, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v16

    if-eqz v16, :cond_5

    .line 516
    const-string v16, "SIP UA Receiver"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "Matches : "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/weirdvoice/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    const-string v16, "yes"

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 518
    const-string v16, "SIP UA Receiver"

    const-string v17, "Hey there is messages !!! "

    invoke-static/range {v16 .. v17}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    const/4 v4, 0x1

    .line 512
    :cond_4
    :goto_1
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    .line 529
    :cond_5
    invoke-virtual {v10, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 530
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v16

    if-eqz v16, :cond_6

    .line 532
    const/16 v16, 0x1

    :try_start_0
    move/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    .line 533
    const/4 v5, 0x1

    .line 537
    :goto_2
    const-string v16, "SIP UA Receiver"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "Nbr : "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 534
    :catch_0
    move-exception v3

    .line 535
    .local v3, "e":Ljava/lang/NumberFormatException;
    const-string v16, "SIP UA Receiver"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "Not well formated number "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/weirdvoice/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 540
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :cond_6
    invoke-virtual {v9, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/regex/Matcher;->matches()Z

    move-result v16

    if-eqz v16, :cond_4

    .line 541
    const/4 v5, 0x1

    goto :goto_1
.end method

.method public on_nat_detect(Lorg/pjsip/pjsua/pj_stun_nat_detect_result;)V
    .locals 3
    .param p1, "res"    # Lorg/pjsip/pjsua/pj_stun_nat_detect_result;

    .prologue
    .line 604
    const-string v0, "SIP UA Receiver"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NAT TYPE DETECTED !!!"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/pjsip/pjsua/pj_stun_nat_detect_result;->getNat_type_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    iget-object v0, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->pjService:Lcom/weirdvoice/pjsip/PjSipService;

    if-eqz v0, :cond_0

    .line 606
    iget-object v0, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->pjService:Lcom/weirdvoice/pjsip/PjSipService;

    invoke-virtual {p1}, Lorg/pjsip/pjsua/pj_stun_nat_detect_result;->getNat_type_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/pjsip/pjsua/pj_stun_nat_detect_result;->getStatus()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/weirdvoice/pjsip/PjSipService;->setDetectedNatType(Ljava/lang/String;I)V

    .line 608
    :cond_0
    return-void
.end method

.method public on_pager(ILorg/pjsip/pjsua/pj_str_t;Lorg/pjsip/pjsua/pj_str_t;Lorg/pjsip/pjsua/pj_str_t;Lorg/pjsip/pjsua/pj_str_t;Lorg/pjsip/pjsua/pj_str_t;)V
    .locals 14
    .param p1, "callId"    # I
    .param p2, "from"    # Lorg/pjsip/pjsua/pj_str_t;
    .param p3, "to"    # Lorg/pjsip/pjsua/pj_str_t;
    .param p4, "contact"    # Lorg/pjsip/pjsua/pj_str_t;
    .param p5, "mime_type"    # Lorg/pjsip/pjsua/pj_str_t;
    .param p6, "body"    # Lorg/pjsip/pjsua/pj_str_t;

    .prologue
    .line 313
    invoke-direct {p0}, Lcom/weirdvoice/pjsip/UAStateReceiver;->lockCpu()V

    .line 315
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 316
    .local v6, "date":J
    invoke-static/range {p2 .. p2}, Lcom/weirdvoice/pjsip/PjSipService;->pjStrToString(Lorg/pjsip/pjsua/pj_str_t;)Ljava/lang/String;

    move-result-object v9

    .line 317
    .local v9, "fromStr":Ljava/lang/String;
    invoke-static {v9}, Lcom/weirdvoice/api/SipUri;->getCanonicalSipContact(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 318
    .local v1, "canonicFromStr":Ljava/lang/String;
    invoke-static/range {p4 .. p4}, Lcom/weirdvoice/pjsip/PjSipService;->pjStrToString(Lorg/pjsip/pjsua/pj_str_t;)Ljava/lang/String;

    move-result-object v3

    .line 319
    .local v3, "contactStr":Ljava/lang/String;
    invoke-static/range {p3 .. p3}, Lcom/weirdvoice/pjsip/PjSipService;->pjStrToString(Lorg/pjsip/pjsua/pj_str_t;)Ljava/lang/String;

    move-result-object v2

    .line 320
    .local v2, "toStr":Ljava/lang/String;
    invoke-static/range {p6 .. p6}, Lcom/weirdvoice/pjsip/PjSipService;->pjStrToString(Lorg/pjsip/pjsua/pj_str_t;)Ljava/lang/String;

    move-result-object v4

    .line 321
    .local v4, "bodyStr":Ljava/lang/String;
    invoke-static/range {p5 .. p5}, Lcom/weirdvoice/pjsip/PjSipService;->pjStrToString(Lorg/pjsip/pjsua/pj_str_t;)Ljava/lang/String;

    move-result-object v5

    .line 324
    .local v5, "mimeStr":Ljava/lang/String;
    const-string v8, "/"

    invoke-virtual {v9, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    .line 325
    .local v12, "slashIndex":I
    const/4 v8, -0x1

    if-eq v12, v8, :cond_0

    .line 326
    const/4 v8, 0x0

    invoke-virtual {v9, v8, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 329
    :cond_0
    new-instance v0, Lcom/weirdvoice/api/SipMessage;

    .line 330
    const/4 v8, 0x1

    .line 329
    invoke-direct/range {v0 .. v9}, Lcom/weirdvoice/api/SipMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;)V

    .line 333
    .local v0, "msg":Lcom/weirdvoice/api/SipMessage;
    iget-object v8, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->pjService:Lcom/weirdvoice/pjsip/PjSipService;

    iget-object v8, v8, Lcom/weirdvoice/pjsip/PjSipService;->service:Lcom/weirdvoice/service/SipService;

    invoke-virtual {v8}, Lcom/weirdvoice/service/SipService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 334
    .local v10, "cr":Landroid/content/ContentResolver;
    sget-object v8, Lcom/weirdvoice/api/SipMessage;->MESSAGE_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Lcom/weirdvoice/api/SipMessage;->getContentValues()Landroid/content/ContentValues;

    move-result-object v13

    invoke-virtual {v10, v8, v13}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 337
    new-instance v11, Landroid/content/Intent;

    const-string v8, "com.weirdvoice.service.MESSAGE_RECEIVED"

    invoke-direct {v11, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 339
    .local v11, "intent":Landroid/content/Intent;
    const-string v8, "sender"

    invoke-virtual {v0}, Lcom/weirdvoice/api/SipMessage;->getFrom()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v8, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 340
    const-string v8, "body"

    invoke-virtual {v0}, Lcom/weirdvoice/api/SipMessage;->getBody()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v8, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 341
    iget-object v8, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->pjService:Lcom/weirdvoice/pjsip/PjSipService;

    iget-object v8, v8, Lcom/weirdvoice/pjsip/PjSipService;->service:Lcom/weirdvoice/service/SipService;

    const-string v13, "android.permission.USE_SIP"

    invoke-virtual {v8, v11, v13}, Lcom/weirdvoice/service/SipService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 344
    iget-object v8, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->notificationManager:Lcom/weirdvoice/service/SipNotifications;

    invoke-virtual {v8, v0}, Lcom/weirdvoice/service/SipNotifications;->showNotificationForMessage(Lcom/weirdvoice/api/SipMessage;)V

    .line 345
    invoke-direct {p0}, Lcom/weirdvoice/pjsip/UAStateReceiver;->unlockCpu()V

    .line 346
    return-void
.end method

.method public on_pager_status(ILorg/pjsip/pjsua/pj_str_t;Lorg/pjsip/pjsua/pj_str_t;Lorg/pjsip/pjsua/pjsip_status_code;Lorg/pjsip/pjsua/pj_str_t;)V
    .locals 13
    .param p1, "callId"    # I
    .param p2, "to"    # Lorg/pjsip/pjsua/pj_str_t;
    .param p3, "body"    # Lorg/pjsip/pjsua/pj_str_t;
    .param p4, "status"    # Lorg/pjsip/pjsua/pjsip_status_code;
    .param p5, "reason"    # Lorg/pjsip/pjsua/pj_str_t;

    .prologue
    .line 351
    invoke-direct {p0}, Lcom/weirdvoice/pjsip/UAStateReceiver;->lockCpu()V

    .line 353
    sget-object v9, Lorg/pjsip/pjsua/pjsip_status_code;->PJSIP_SC_OK:Lorg/pjsip/pjsua/pjsip_status_code;

    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Lorg/pjsip/pjsua/pjsip_status_code;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 354
    sget-object v9, Lorg/pjsip/pjsua/pjsip_status_code;->PJSIP_SC_ACCEPTED:Lorg/pjsip/pjsua/pjsip_status_code;

    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Lorg/pjsip/pjsua/pjsip_status_code;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    :cond_0
    const/4 v5, 0x2

    .line 356
    .local v5, "messageType":I
    :goto_0
    invoke-static {p2}, Lcom/weirdvoice/pjsip/PjSipService;->pjStrToString(Lorg/pjsip/pjsua/pj_str_t;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/weirdvoice/api/SipUri;->getCanonicalSipContact(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 357
    .local v8, "toStr":Ljava/lang/String;
    invoke-static/range {p5 .. p5}, Lcom/weirdvoice/pjsip/PjSipService;->pjStrToString(Lorg/pjsip/pjsua/pj_str_t;)Ljava/lang/String;

    move-result-object v6

    .line 358
    .local v6, "reasonStr":Ljava/lang/String;
    invoke-static/range {p3 .. p3}, Lcom/weirdvoice/pjsip/PjSipService;->pjStrToString(Lorg/pjsip/pjsua/pj_str_t;)Ljava/lang/String;

    move-result-object v2

    .line 359
    .local v2, "bodyStr":Ljava/lang/String;
    invoke-virtual/range {p4 .. p4}, Lorg/pjsip/pjsua/pjsip_status_code;->swigValue()I

    move-result v7

    .line 360
    .local v7, "statusInt":I
    const-string v9, "SIP UA Receiver"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "SipMessage in on pager status "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p4 .. p4}, Lorg/pjsip/pjsua/pjsip_status_code;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " / "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    iget-object v9, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->pjService:Lcom/weirdvoice/pjsip/PjSipService;

    iget-object v9, v9, Lcom/weirdvoice/pjsip/PjSipService;->service:Lcom/weirdvoice/service/SipService;

    invoke-virtual {v9}, Lcom/weirdvoice/service/SipService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 364
    .local v3, "cr":Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 365
    .local v1, "args":Landroid/content/ContentValues;
    const-string v9, "type"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 366
    const-string v9, "status"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 367
    const/16 v9, 0xc8

    if-eq v7, v9, :cond_1

    .line 368
    const/16 v9, 0xca

    if-eq v7, v9, :cond_1

    .line 369
    const-string v9, "body"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, " // "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    :cond_1
    sget-object v9, Lcom/weirdvoice/api/SipMessage;->MESSAGE_URI:Landroid/net/Uri;

    .line 372
    const-string v10, "receiver=? AND body=? AND type=6"

    .line 375
    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    .line 376
    aput-object v8, v11, v12

    const/4 v12, 0x1

    aput-object v2, v11, v12

    .line 371
    invoke-virtual {v3, v9, v1, v10, v11}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 380
    new-instance v4, Landroid/content/Intent;

    const-string v9, "com.weirdvoice.service.MESSAGE_RECEIVED"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 381
    .local v4, "intent":Landroid/content/Intent;
    const-string v9, "sender"

    invoke-virtual {v4, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 382
    iget-object v9, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->pjService:Lcom/weirdvoice/pjsip/PjSipService;

    iget-object v9, v9, Lcom/weirdvoice/pjsip/PjSipService;->service:Lcom/weirdvoice/service/SipService;

    const-string v10, "android.permission.USE_SIP"

    invoke-virtual {v9, v4, v10}, Lcom/weirdvoice/service/SipService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 383
    invoke-direct {p0}, Lcom/weirdvoice/pjsip/UAStateReceiver;->unlockCpu()V

    .line 384
    return-void

    .line 355
    .end local v1    # "args":Landroid/content/ContentValues;
    .end local v2    # "bodyStr":Ljava/lang/String;
    .end local v3    # "cr":Landroid/content/ContentResolver;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "messageType":I
    .end local v6    # "reasonStr":Ljava/lang/String;
    .end local v7    # "statusInt":I
    .end local v8    # "toStr":Ljava/lang/String;
    :cond_2
    const/4 v5, 0x5

    goto/16 :goto_0
.end method

.method public on_reg_state(I)V
    .locals 2
    .param p1, "accountId"    # I

    .prologue
    .line 388
    invoke-direct {p0}, Lcom/weirdvoice/pjsip/UAStateReceiver;->lockCpu()V

    .line 389
    iget-object v0, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->pjService:Lcom/weirdvoice/pjsip/PjSipService;

    iget-object v0, v0, Lcom/weirdvoice/pjsip/PjSipService;->service:Lcom/weirdvoice/service/SipService;

    invoke-virtual {v0}, Lcom/weirdvoice/service/SipService;->getExecutor()Lcom/weirdvoice/service/SipService$SipServiceExecutor;

    move-result-object v0

    new-instance v1, Lcom/weirdvoice/pjsip/UAStateReceiver$1;

    invoke-direct {v1, p0, p1}, Lcom/weirdvoice/pjsip/UAStateReceiver$1;-><init>(Lcom/weirdvoice/pjsip/UAStateReceiver;I)V

    invoke-virtual {v0, v1}, Lcom/weirdvoice/service/SipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 396
    invoke-direct {p0}, Lcom/weirdvoice/pjsip/UAStateReceiver;->unlockCpu()V

    .line 397
    return-void
.end method

.method public on_set_micro_source()I
    .locals 1

    .prologue
    .line 612
    iget v0, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->mMicroSource:I

    return v0
.end method

.method public on_setup_audio(I)V
    .locals 1
    .param p1, "beforeInit"    # I

    .prologue
    .line 583
    iget-object v0, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->pjService:Lcom/weirdvoice/pjsip/PjSipService;

    if-eqz v0, :cond_0

    .line 584
    iget-object v0, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->pjService:Lcom/weirdvoice/pjsip/PjSipService;

    invoke-virtual {v0, p1}, Lcom/weirdvoice/pjsip/PjSipService;->setAudioInCall(I)V

    .line 586
    :cond_0
    return-void
.end method

.method public on_teardown_audio()V
    .locals 1

    .prologue
    .line 590
    iget-object v0, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->pjService:Lcom/weirdvoice/pjsip/PjSipService;

    if-eqz v0, :cond_0

    .line 591
    iget-object v0, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->pjService:Lcom/weirdvoice/pjsip/PjSipService;

    invoke-virtual {v0}, Lcom/weirdvoice/pjsip/PjSipService;->unsetAudioInCall()V

    .line 593
    :cond_0
    return-void
.end method

.method public on_validate_audio_clock_rate(I)I
    .locals 1
    .param p1, "clockRate"    # I

    .prologue
    .line 575
    iget-object v0, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->pjService:Lcom/weirdvoice/pjsip/PjSipService;

    if-eqz v0, :cond_0

    .line 576
    iget-object v0, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->pjService:Lcom/weirdvoice/pjsip/PjSipService;

    invoke-virtual {v0, p1}, Lcom/weirdvoice/pjsip/PjSipService;->validateAudioClockRate(I)I

    move-result v0

    .line 578
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public reconfigure(Landroid/content/Context;)V
    .locals 3
    .param p1, "ctxt"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 927
    .line 928
    const-string v0, "integrate_with_native_calllogs"

    .line 927
    invoke-static {p1, v0}, Lcom/weirdvoice/api/SipConfigManager;->getPreferenceBooleanValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->mIntegrateWithCallLogs:Z

    .line 930
    const-string v0, "headset_action"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 929
    invoke-static {p1, v0, v1}, Lcom/weirdvoice/api/SipConfigManager;->getPreferenceIntegerValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->mPreferedHeadsetAction:I

    .line 932
    const-string v0, "auto_record_calls"

    .line 931
    invoke-static {p1, v0}, Lcom/weirdvoice/api/SipConfigManager;->getPreferenceBooleanValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->mAutoRecordCalls:Z

    .line 934
    const-string v0, "micro_source"

    .line 933
    invoke-static {p1, v0}, Lcom/weirdvoice/api/SipConfigManager;->getPreferenceIntegerValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->mMicroSource:I

    .line 936
    const-string v0, "play_waittone_on_hold"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 935
    invoke-static {p1, v0, v1}, Lcom/weirdvoice/api/SipConfigManager;->getPreferenceBooleanValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->mPlayWaittone:Z

    .line 937
    return-void
.end method

.method public stopService()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 909
    iget-object v0, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->handlerThread:Landroid/os/HandlerThread;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/weirdvoice/utils/Threading;->stopHandlerThread(Landroid/os/HandlerThread;Z)V

    .line 910
    iput-object v2, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->handlerThread:Landroid/os/HandlerThread;

    .line 911
    iput-object v2, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->msgHandler:Lcom/weirdvoice/pjsip/UAStateReceiver$WorkerHandler;

    .line 914
    iget-object v0, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->eventLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 915
    :goto_0
    iget-object v0, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->eventLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_2

    .line 919
    :cond_0
    iget-object v0, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->ongoingCallLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    .line 920
    iget-object v0, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->ongoingCallLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 921
    iget-object v0, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->ongoingCallLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 924
    :cond_1
    return-void

    .line 916
    :cond_2
    iget-object v0, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->eventLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0
.end method

.method public timer_cancel(II)I
    .locals 1
    .param p1, "entry"    # I
    .param p2, "entryId"    # I

    .prologue
    .line 622
    invoke-static {p1, p2}, Lcom/weirdvoice/utils/TimerWrapper;->cancel(II)I

    move-result v0

    return v0
.end method

.method public timer_schedule(III)I
    .locals 1
    .param p1, "entry"    # I
    .param p2, "entryId"    # I
    .param p3, "time"    # I

    .prologue
    .line 617
    invoke-static {p1, p2, p3}, Lcom/weirdvoice/utils/TimerWrapper;->schedule(III)I

    move-result v0

    return v0
.end method

.method public updateCallMediaState(I)V
    .locals 4
    .param p1, "callId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/weirdvoice/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 1157
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/weirdvoice/pjsip/UAStateReceiver;->updateCallInfoFromStack(Ljava/lang/Integer;Lorg/pjsip/pjsua/pjsip_event;)Lcom/weirdvoice/service/impl/SipCallSessionImpl;

    move-result-object v0

    .line 1158
    .local v0, "callInfo":Lcom/weirdvoice/api/SipCallSession;
    iget-object v1, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->msgHandler:Lcom/weirdvoice/pjsip/UAStateReceiver$WorkerHandler;

    iget-object v2, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->msgHandler:Lcom/weirdvoice/pjsip/UAStateReceiver$WorkerHandler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v0}, Lcom/weirdvoice/pjsip/UAStateReceiver$WorkerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/weirdvoice/pjsip/UAStateReceiver$WorkerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1159
    return-void
.end method

.method public updateRecordingStatus(IZZ)V
    .locals 3
    .param p1, "callId"    # I
    .param p2, "canRecord"    # Z
    .param p3, "isRecording"    # Z

    .prologue
    .line 1128
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/weirdvoice/pjsip/UAStateReceiver;->getCallInfo(Ljava/lang/Integer;)Lcom/weirdvoice/service/impl/SipCallSessionImpl;

    move-result-object v0

    .line 1129
    .local v0, "callInfo":Lcom/weirdvoice/service/impl/SipCallSessionImpl;
    invoke-virtual {v0, p2}, Lcom/weirdvoice/service/impl/SipCallSessionImpl;->setCanRecord(Z)V

    .line 1130
    invoke-virtual {v0, p3}, Lcom/weirdvoice/service/impl/SipCallSessionImpl;->setIsRecording(Z)V

    .line 1131
    iget-object v2, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->callsList:Landroid/util/SparseArray;

    monitor-enter v2

    .line 1133
    :try_start_0
    iget-object v1, p0, Lcom/weirdvoice/pjsip/UAStateReceiver;->callsList:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1131
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1135
    invoke-direct {p0, v0}, Lcom/weirdvoice/pjsip/UAStateReceiver;->onBroadcastCallState(Lcom/weirdvoice/api/SipCallSession;)V

    .line 1136
    return-void

    .line 1131
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
