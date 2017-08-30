.class public Lorg/abtollc/sdk/AbtoPhone;
.super Ljava/lang/Object;
.source "AbtoPhone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/abtollc/sdk/AbtoPhone$ShutdownReceiver;,
        Lorg/abtollc/sdk/AbtoPhone$CallLogReceiver;,
        Lorg/abtollc/sdk/AbtoPhone$AbtoPhoneExecutor;,
        Lorg/abtollc/sdk/AbtoPhone$PlayFileWay;,
        Lorg/abtollc/sdk/AbtoPhone$Rotation;
    }
.end annotation


# static fields
.field public static final ACCOUNT_ID:Ljava/lang/String; = "acc_id"

.field public static final ACTION_CALL_LOG_ADDED:Ljava/lang/String; = "org.abtollc.calllog.ACTION_CALL_LOG_ADDED"

.field public static final ACTION_REFRESH_CAPTURE:Ljava/lang/String; = "org.abtollc.action.ACTION_REFRESH_CAPTURE"

.field public static final ACTION_SHUT_DOWN:Ljava/lang/String; = "org.abtollc.action.ACTION_SHUT_DOWN"

.field public static final CALL_ID:Ljava/lang/String; = "call_id"

.field public static final CALL_LOG_ID:Ljava/lang/String; = "call_log_id"

.field public static final CODE:Ljava/lang/String; = "code"

.field public static final CONFIRMED:I = 0x1

.field public static final DESTINATION_PATTERN:Ljava/lang/String; = "^(?:\")?([^<\"]*)(?:\")?[ ]*(?:<)?(sip(?:s)?|tel):([^@]+)@([^>]+)(?:>)?$"

.field public static final DISCONNECTED:I = 0x2

.field public static final DTMF_TONE:Ljava/lang/String; = "tone_digit"

.field public static final EXPIRES:Ljava/lang/String; = "status_text"

.field public static final HOLD_STATUS:Ljava/lang/String; = "is_held"

.field public static final INCOMING:I = 0x0

.field public static final INVALID_CALL_ID:I = -0x1

.field public static final MESSAGE:Ljava/lang/String; = "message"

.field public static final NETWORK_CONNECTED:Ljava/lang/String; = "is_connected"

.field public static final NETWORK_TYPE:Ljava/lang/String; = "network_type"

.field public static final ON_BUDDY_STATE:I = 0x10

.field public static final ON_CALL_ERROR:I = 0xd

.field public static final ON_CALL_TRANSFER_STATUS:I = 0x12

.field public static final ON_DTMF_RECEIVED:I = 0xe

.field public static final ON_INITIALIZE:I = 0x8

.field public static final ON_MEDIA_STATE:I = 0x3

.field public static final ON_NETWORK_EVENT:I = 0xa

.field public static final ON_PAGER:I = 0x7

.field public static final ON_PAGER_STATUS:I = 0x11

.field public static final ON_PLAY_FINISHED:I = 0xb

.field public static final ON_REGISTERED:I = 0x4

.field public static final ON_REGISTRATION_FAILED:I = 0x6

.field public static final ON_REMOTE_ALLERTING:I = 0xc

.field public static final ON_SIP_RESTARTED:I = 0x9

.field public static final ON_UNREGISTERED:I = 0x5

.field public static final ON_ZRTP_SHOW_SAS:I = 0x13

.field public static final REMOTE_CONTACT:Ljava/lang/String; = "remote_contact"

.field public static final SET_CALL_ID:I = 0xf

.field public static final STATUS_CODE:Ljava/lang/String; = "status_code"

.field public static final STATUS_TEXT:Ljava/lang/String; = "status_text"

.field private static final THIS_FILE:Ljava/lang/String; = "AbtoPhone"

.field public static final ZRTP_SAS:Ljava/lang/String; = "zrtp_sas"

.field private static final d:Z

.field private static executorThread:Landroid/os/HandlerThread;

.field private static mContext:Landroid/content/Context;


# instance fields
.field private callHoldStatus:Landroid/util/SparseBooleanArray;

.field private callId:I

.field private capturer:Landroid/view/SurfaceView;

.field private capturerParent:Landroid/view/ViewGroup;

.field private demoRunnable:Ljava/lang/Runnable;

.field private demoTask:Landroid/os/Handler;

.field private isHold:Z

.field private isLocalHangUp:Z

.field private isLocalHold:Z

.field private isRecording:Z

.field private isVideoMute:Z

.field private mBound:Z

.field private mCallConnectedListener:Lorg/abtollc/sdk/OnCallConnectedListener;

.field private mCallDisconnectedListener:Lorg/abtollc/sdk/OnCallDisconnectedListener;

.field private mCallErrorListener:Lorg/abtollc/sdk/OnCallErrorListener;

.field private mCallLogAddedListener:Lorg/abtollc/sdk/OnCallLogAddedListener;

.field private mCallTransferListener:Lorg/abtollc/sdk/OnCallTransferListener;

.field private mCfg:Lorg/abtollc/sdk/AbtoPhoneCfg;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mExecutor:Lorg/abtollc/sdk/AbtoPhone$AbtoPhoneExecutor;

.field private mHandler:Landroid/os/Handler;

.field private mInMessageListener:Lorg/abtollc/sdk/OnTextMessageListener;

.field private mIncomingCallListener:Lorg/abtollc/sdk/OnIncomingCallListener;

.field private mInitializeListener:Lorg/abtollc/sdk/OnInitializeListener;

.field private final mMessenger:Landroid/os/Messenger;

.field private mNetworkEventListener:Lorg/abtollc/sdk/OnNetworkEventListener;

.field private mOnCallHeldListener:Lorg/abtollc/sdk/OnCallHeldListener;

.field private mPlayFinishedListener:Lorg/abtollc/sdk/OnPlayFinishedListener;

.field private mPresenceListener:Lorg/abtollc/sdk/OnPresenceListener;

.field private mRegistrationListener:Lorg/abtollc/sdk/OnRegistrationListener;

.field private mRemoteAlertingListener:Lorg/abtollc/sdk/OnRemoteAlertingListener;

.field private mService:Lorg/abtollc/api/ISipService;

.field private mTextMessageStatusListener:Lorg/abtollc/sdk/OnTextMessageStatusListener;

.field private mToneReceivedListener:Lorg/abtollc/sdk/OnToneReceivedListener;

.field private mZrtpEventHandler:Lorg/abtollc/sdk/ZRTPEventHandler;

.field private registrationSent:Z

.field private renderer:Landroid/view/SurfaceView;

.field private rendererParent:Landroid/view/ViewGroup;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 576
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    iput-object v0, p0, Lorg/abtollc/sdk/AbtoPhone;->mService:Lorg/abtollc/api/ISipService;

    .line 181
    iput-object v0, p0, Lorg/abtollc/sdk/AbtoPhone;->mInitializeListener:Lorg/abtollc/sdk/OnInitializeListener;

    .line 182
    iput-object v0, p0, Lorg/abtollc/sdk/AbtoPhone;->mIncomingCallListener:Lorg/abtollc/sdk/OnIncomingCallListener;

    .line 183
    iput-object v0, p0, Lorg/abtollc/sdk/AbtoPhone;->mCallConnectedListener:Lorg/abtollc/sdk/OnCallConnectedListener;

    .line 184
    iput-object v0, p0, Lorg/abtollc/sdk/AbtoPhone;->mCallDisconnectedListener:Lorg/abtollc/sdk/OnCallDisconnectedListener;

    .line 185
    iput-object v0, p0, Lorg/abtollc/sdk/AbtoPhone;->mOnCallHeldListener:Lorg/abtollc/sdk/OnCallHeldListener;

    .line 186
    iput-object v0, p0, Lorg/abtollc/sdk/AbtoPhone;->mRegistrationListener:Lorg/abtollc/sdk/OnRegistrationListener;

    .line 187
    iput-object v0, p0, Lorg/abtollc/sdk/AbtoPhone;->mInMessageListener:Lorg/abtollc/sdk/OnTextMessageListener;

    .line 188
    iput-object v0, p0, Lorg/abtollc/sdk/AbtoPhone;->mTextMessageStatusListener:Lorg/abtollc/sdk/OnTextMessageStatusListener;

    .line 189
    iput-object v0, p0, Lorg/abtollc/sdk/AbtoPhone;->mNetworkEventListener:Lorg/abtollc/sdk/OnNetworkEventListener;

    .line 190
    iput-object v0, p0, Lorg/abtollc/sdk/AbtoPhone;->mPlayFinishedListener:Lorg/abtollc/sdk/OnPlayFinishedListener;

    .line 191
    iput-object v0, p0, Lorg/abtollc/sdk/AbtoPhone;->mRemoteAlertingListener:Lorg/abtollc/sdk/OnRemoteAlertingListener;

    .line 192
    iput-object v0, p0, Lorg/abtollc/sdk/AbtoPhone;->mCallErrorListener:Lorg/abtollc/sdk/OnCallErrorListener;

    .line 193
    iput-object v0, p0, Lorg/abtollc/sdk/AbtoPhone;->mToneReceivedListener:Lorg/abtollc/sdk/OnToneReceivedListener;

    .line 194
    iput-object v0, p0, Lorg/abtollc/sdk/AbtoPhone;->mCallLogAddedListener:Lorg/abtollc/sdk/OnCallLogAddedListener;

    .line 195
    iput-object v0, p0, Lorg/abtollc/sdk/AbtoPhone;->mPresenceListener:Lorg/abtollc/sdk/OnPresenceListener;

    .line 196
    iput-object v0, p0, Lorg/abtollc/sdk/AbtoPhone;->mCallTransferListener:Lorg/abtollc/sdk/OnCallTransferListener;

    .line 197
    iput-object v0, p0, Lorg/abtollc/sdk/AbtoPhone;->mZrtpEventHandler:Lorg/abtollc/sdk/ZRTPEventHandler;

    .line 200
    iput-object v0, p0, Lorg/abtollc/sdk/AbtoPhone;->mCfg:Lorg/abtollc/sdk/AbtoPhoneCfg;

    .line 201
    iput-boolean v1, p0, Lorg/abtollc/sdk/AbtoPhone;->isLocalHold:Z

    .line 202
    iput-boolean v1, p0, Lorg/abtollc/sdk/AbtoPhone;->isHold:Z

    .line 203
    iput-boolean v1, p0, Lorg/abtollc/sdk/AbtoPhone;->isRecording:Z

    .line 204
    iput-boolean v1, p0, Lorg/abtollc/sdk/AbtoPhone;->isLocalHangUp:Z

    .line 205
    iput-boolean v1, p0, Lorg/abtollc/sdk/AbtoPhone;->mBound:Z

    .line 207
    const/4 v0, -0x1

    iput v0, p0, Lorg/abtollc/sdk/AbtoPhone;->callId:I

    .line 215
    iput-boolean v1, p0, Lorg/abtollc/sdk/AbtoPhone;->isVideoMute:Z

    .line 217
    iput-boolean v1, p0, Lorg/abtollc/sdk/AbtoPhone;->registrationSent:Z

    .line 219
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lorg/abtollc/sdk/AbtoPhone;->callHoldStatus:Landroid/util/SparseBooleanArray;

    .line 221
    new-instance v0, Lorg/abtollc/sdk/AbtoPhone$1;

    invoke-direct {v0, p0}, Lorg/abtollc/sdk/AbtoPhone$1;-><init>(Lorg/abtollc/sdk/AbtoPhone;)V

    iput-object v0, p0, Lorg/abtollc/sdk/AbtoPhone;->mConnection:Landroid/content/ServiceConnection;

    .line 266
    new-instance v0, Lorg/abtollc/sdk/AbtoPhone$2;

    invoke-direct {v0, p0}, Lorg/abtollc/sdk/AbtoPhone$2;-><init>(Lorg/abtollc/sdk/AbtoPhone;)V

    iput-object v0, p0, Lorg/abtollc/sdk/AbtoPhone;->mHandler:Landroid/os/Handler;

    .line 570
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lorg/abtollc/sdk/AbtoPhone;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lorg/abtollc/sdk/AbtoPhone;->mMessenger:Landroid/os/Messenger;

    .line 866
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/abtollc/sdk/AbtoPhone;->demoTask:Landroid/os/Handler;

    .line 868
    new-instance v0, Lorg/abtollc/sdk/AbtoPhone$3;

    invoke-direct {v0, p0}, Lorg/abtollc/sdk/AbtoPhone$3;-><init>(Lorg/abtollc/sdk/AbtoPhone;)V

    iput-object v0, p0, Lorg/abtollc/sdk/AbtoPhone;->demoRunnable:Ljava/lang/Runnable;

    .line 577
    sput-object p1, Lorg/abtollc/sdk/AbtoPhone;->mContext:Landroid/content/Context;

    .line 578
    new-instance v0, Lorg/abtollc/sdk/AbtoPhoneCfg;

    invoke-direct {v0, p1}, Lorg/abtollc/sdk/AbtoPhoneCfg;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/abtollc/sdk/AbtoPhone;->mCfg:Lorg/abtollc/sdk/AbtoPhoneCfg;

    .line 596
    return-void
.end method

.method static synthetic access$000(Lorg/abtollc/sdk/AbtoPhone;)Lorg/abtollc/api/ISipService;
    .locals 1
    .param p0, "x0"    # Lorg/abtollc/sdk/AbtoPhone;

    .prologue
    .line 62
    iget-object v0, p0, Lorg/abtollc/sdk/AbtoPhone;->mService:Lorg/abtollc/api/ISipService;

    return-object v0
.end method

.method static synthetic access$002(Lorg/abtollc/sdk/AbtoPhone;Lorg/abtollc/api/ISipService;)Lorg/abtollc/api/ISipService;
    .locals 0
    .param p0, "x0"    # Lorg/abtollc/sdk/AbtoPhone;
    .param p1, "x1"    # Lorg/abtollc/api/ISipService;

    .prologue
    .line 62
    iput-object p1, p0, Lorg/abtollc/sdk/AbtoPhone;->mService:Lorg/abtollc/api/ISipService;

    return-object p1
.end method

.method static synthetic access$100(Lorg/abtollc/sdk/AbtoPhone;)V
    .locals 0
    .param p0, "x0"    # Lorg/abtollc/sdk/AbtoPhone;

    .prologue
    .line 62
    invoke-direct {p0}, Lorg/abtollc/sdk/AbtoPhone;->setServiceMessenger()V

    return-void
.end method

.method static synthetic access$1002(Lorg/abtollc/sdk/AbtoPhone;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/abtollc/sdk/AbtoPhone;
    .param p1, "x1"    # Z

    .prologue
    .line 62
    iput-boolean p1, p0, Lorg/abtollc/sdk/AbtoPhone;->isLocalHold:Z

    return p1
.end method

.method static synthetic access$1100(Lorg/abtollc/sdk/AbtoPhone;)Z
    .locals 1
    .param p0, "x0"    # Lorg/abtollc/sdk/AbtoPhone;

    .prologue
    .line 62
    iget-boolean v0, p0, Lorg/abtollc/sdk/AbtoPhone;->isHold:Z

    return v0
.end method

.method static synthetic access$1102(Lorg/abtollc/sdk/AbtoPhone;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/abtollc/sdk/AbtoPhone;
    .param p1, "x1"    # Z

    .prologue
    .line 62
    iput-boolean p1, p0, Lorg/abtollc/sdk/AbtoPhone;->isHold:Z

    return p1
.end method

.method static synthetic access$1200(Lorg/abtollc/sdk/AbtoPhone;)Landroid/view/SurfaceView;
    .locals 1
    .param p0, "x0"    # Lorg/abtollc/sdk/AbtoPhone;

    .prologue
    .line 62
    iget-object v0, p0, Lorg/abtollc/sdk/AbtoPhone;->capturer:Landroid/view/SurfaceView;

    return-object v0
.end method

.method static synthetic access$1300(Lorg/abtollc/sdk/AbtoPhone;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lorg/abtollc/sdk/AbtoPhone;

    .prologue
    .line 62
    iget-object v0, p0, Lorg/abtollc/sdk/AbtoPhone;->capturerParent:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1400(Lorg/abtollc/sdk/AbtoPhone;)Lorg/abtollc/sdk/OnCallHeldListener;
    .locals 1
    .param p0, "x0"    # Lorg/abtollc/sdk/AbtoPhone;

    .prologue
    .line 62
    iget-object v0, p0, Lorg/abtollc/sdk/AbtoPhone;->mOnCallHeldListener:Lorg/abtollc/sdk/OnCallHeldListener;

    return-object v0
.end method

.method static synthetic access$1502(Lorg/abtollc/sdk/AbtoPhone;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/abtollc/sdk/AbtoPhone;
    .param p1, "x1"    # Z

    .prologue
    .line 62
    iput-boolean p1, p0, Lorg/abtollc/sdk/AbtoPhone;->registrationSent:Z

    return p1
.end method

.method static synthetic access$1600(Lorg/abtollc/sdk/AbtoPhone;)Lorg/abtollc/sdk/OnRegistrationListener;
    .locals 1
    .param p0, "x0"    # Lorg/abtollc/sdk/AbtoPhone;

    .prologue
    .line 62
    iget-object v0, p0, Lorg/abtollc/sdk/AbtoPhone;->mRegistrationListener:Lorg/abtollc/sdk/OnRegistrationListener;

    return-object v0
.end method

.method static synthetic access$1700(Lorg/abtollc/sdk/AbtoPhone;)Lorg/abtollc/sdk/OnTextMessageListener;
    .locals 1
    .param p0, "x0"    # Lorg/abtollc/sdk/AbtoPhone;

    .prologue
    .line 62
    iget-object v0, p0, Lorg/abtollc/sdk/AbtoPhone;->mInMessageListener:Lorg/abtollc/sdk/OnTextMessageListener;

    return-object v0
.end method

.method static synthetic access$1800(Lorg/abtollc/sdk/AbtoPhone;)Lorg/abtollc/sdk/OnInitializeListener;
    .locals 1
    .param p0, "x0"    # Lorg/abtollc/sdk/AbtoPhone;

    .prologue
    .line 62
    iget-object v0, p0, Lorg/abtollc/sdk/AbtoPhone;->mInitializeListener:Lorg/abtollc/sdk/OnInitializeListener;

    return-object v0
.end method

.method static synthetic access$1900(Lorg/abtollc/sdk/AbtoPhone;)Lorg/abtollc/sdk/OnNetworkEventListener;
    .locals 1
    .param p0, "x0"    # Lorg/abtollc/sdk/AbtoPhone;

    .prologue
    .line 62
    iget-object v0, p0, Lorg/abtollc/sdk/AbtoPhone;->mNetworkEventListener:Lorg/abtollc/sdk/OnNetworkEventListener;

    return-object v0
.end method

.method static synthetic access$200(Lorg/abtollc/sdk/AbtoPhone;)Landroid/os/Messenger;
    .locals 1
    .param p0, "x0"    # Lorg/abtollc/sdk/AbtoPhone;

    .prologue
    .line 62
    iget-object v0, p0, Lorg/abtollc/sdk/AbtoPhone;->mMessenger:Landroid/os/Messenger;

    return-object v0
.end method

.method static synthetic access$2000(Lorg/abtollc/sdk/AbtoPhone;)Lorg/abtollc/sdk/OnPlayFinishedListener;
    .locals 1
    .param p0, "x0"    # Lorg/abtollc/sdk/AbtoPhone;

    .prologue
    .line 62
    iget-object v0, p0, Lorg/abtollc/sdk/AbtoPhone;->mPlayFinishedListener:Lorg/abtollc/sdk/OnPlayFinishedListener;

    return-object v0
.end method

.method static synthetic access$2100(Lorg/abtollc/sdk/AbtoPhone;)Lorg/abtollc/sdk/OnRemoteAlertingListener;
    .locals 1
    .param p0, "x0"    # Lorg/abtollc/sdk/AbtoPhone;

    .prologue
    .line 62
    iget-object v0, p0, Lorg/abtollc/sdk/AbtoPhone;->mRemoteAlertingListener:Lorg/abtollc/sdk/OnRemoteAlertingListener;

    return-object v0
.end method

.method static synthetic access$2200(Lorg/abtollc/sdk/AbtoPhone;)Lorg/abtollc/sdk/OnCallErrorListener;
    .locals 1
    .param p0, "x0"    # Lorg/abtollc/sdk/AbtoPhone;

    .prologue
    .line 62
    iget-object v0, p0, Lorg/abtollc/sdk/AbtoPhone;->mCallErrorListener:Lorg/abtollc/sdk/OnCallErrorListener;

    return-object v0
.end method

.method static synthetic access$2300(Lorg/abtollc/sdk/AbtoPhone;)Lorg/abtollc/sdk/OnToneReceivedListener;
    .locals 1
    .param p0, "x0"    # Lorg/abtollc/sdk/AbtoPhone;

    .prologue
    .line 62
    iget-object v0, p0, Lorg/abtollc/sdk/AbtoPhone;->mToneReceivedListener:Lorg/abtollc/sdk/OnToneReceivedListener;

    return-object v0
.end method

.method static synthetic access$2400(Lorg/abtollc/sdk/AbtoPhone;)Lorg/abtollc/sdk/OnPresenceListener;
    .locals 1
    .param p0, "x0"    # Lorg/abtollc/sdk/AbtoPhone;

    .prologue
    .line 62
    iget-object v0, p0, Lorg/abtollc/sdk/AbtoPhone;->mPresenceListener:Lorg/abtollc/sdk/OnPresenceListener;

    return-object v0
.end method

.method static synthetic access$2500(Lorg/abtollc/sdk/AbtoPhone;)Lorg/abtollc/sdk/OnTextMessageStatusListener;
    .locals 1
    .param p0, "x0"    # Lorg/abtollc/sdk/AbtoPhone;

    .prologue
    .line 62
    iget-object v0, p0, Lorg/abtollc/sdk/AbtoPhone;->mTextMessageStatusListener:Lorg/abtollc/sdk/OnTextMessageStatusListener;

    return-object v0
.end method

.method static synthetic access$2600(Lorg/abtollc/sdk/AbtoPhone;)Lorg/abtollc/sdk/OnCallTransferListener;
    .locals 1
    .param p0, "x0"    # Lorg/abtollc/sdk/AbtoPhone;

    .prologue
    .line 62
    iget-object v0, p0, Lorg/abtollc/sdk/AbtoPhone;->mCallTransferListener:Lorg/abtollc/sdk/OnCallTransferListener;

    return-object v0
.end method

.method static synthetic access$2700(Lorg/abtollc/sdk/AbtoPhone;)Lorg/abtollc/sdk/ZRTPEventHandler;
    .locals 1
    .param p0, "x0"    # Lorg/abtollc/sdk/AbtoPhone;

    .prologue
    .line 62
    iget-object v0, p0, Lorg/abtollc/sdk/AbtoPhone;->mZrtpEventHandler:Lorg/abtollc/sdk/ZRTPEventHandler;

    return-object v0
.end method

.method static synthetic access$2800()Landroid/os/Looper;
    .locals 1

    .prologue
    .line 62
    invoke-static {}, Lorg/abtollc/sdk/AbtoPhone;->createLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2900(Lorg/abtollc/sdk/AbtoPhone;)Lorg/abtollc/sdk/OnCallLogAddedListener;
    .locals 1
    .param p0, "x0"    # Lorg/abtollc/sdk/AbtoPhone;

    .prologue
    .line 62
    iget-object v0, p0, Lorg/abtollc/sdk/AbtoPhone;->mCallLogAddedListener:Lorg/abtollc/sdk/OnCallLogAddedListener;

    return-object v0
.end method

.method static synthetic access$300(Lorg/abtollc/sdk/AbtoPhone;)Lorg/abtollc/sdk/OnIncomingCallListener;
    .locals 1
    .param p0, "x0"    # Lorg/abtollc/sdk/AbtoPhone;

    .prologue
    .line 62
    iget-object v0, p0, Lorg/abtollc/sdk/AbtoPhone;->mIncomingCallListener:Lorg/abtollc/sdk/OnIncomingCallListener;

    return-object v0
.end method

.method static synthetic access$3000(Lorg/abtollc/sdk/AbtoPhone;)Z
    .locals 1
    .param p0, "x0"    # Lorg/abtollc/sdk/AbtoPhone;

    .prologue
    .line 62
    invoke-direct {p0}, Lorg/abtollc/sdk/AbtoPhone;->isNetworkOnline()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lorg/abtollc/sdk/AbtoPhone;)Lorg/abtollc/sdk/OnCallConnectedListener;
    .locals 1
    .param p0, "x0"    # Lorg/abtollc/sdk/AbtoPhone;

    .prologue
    .line 62
    iget-object v0, p0, Lorg/abtollc/sdk/AbtoPhone;->mCallConnectedListener:Lorg/abtollc/sdk/OnCallConnectedListener;

    return-object v0
.end method

.method static synthetic access$500(Lorg/abtollc/sdk/AbtoPhone;)Lorg/abtollc/sdk/OnCallDisconnectedListener;
    .locals 1
    .param p0, "x0"    # Lorg/abtollc/sdk/AbtoPhone;

    .prologue
    .line 62
    iget-object v0, p0, Lorg/abtollc/sdk/AbtoPhone;->mCallDisconnectedListener:Lorg/abtollc/sdk/OnCallDisconnectedListener;

    return-object v0
.end method

.method static synthetic access$600(Lorg/abtollc/sdk/AbtoPhone;)I
    .locals 1
    .param p0, "x0"    # Lorg/abtollc/sdk/AbtoPhone;

    .prologue
    .line 62
    iget v0, p0, Lorg/abtollc/sdk/AbtoPhone;->callId:I

    return v0
.end method

.method static synthetic access$602(Lorg/abtollc/sdk/AbtoPhone;I)I
    .locals 0
    .param p0, "x0"    # Lorg/abtollc/sdk/AbtoPhone;
    .param p1, "x1"    # I

    .prologue
    .line 62
    iput p1, p0, Lorg/abtollc/sdk/AbtoPhone;->callId:I

    return p1
.end method

.method static synthetic access$700(Lorg/abtollc/sdk/AbtoPhone;)Z
    .locals 1
    .param p0, "x0"    # Lorg/abtollc/sdk/AbtoPhone;

    .prologue
    .line 62
    iget-boolean v0, p0, Lorg/abtollc/sdk/AbtoPhone;->isLocalHangUp:Z

    return v0
.end method

.method static synthetic access$702(Lorg/abtollc/sdk/AbtoPhone;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/abtollc/sdk/AbtoPhone;
    .param p1, "x1"    # Z

    .prologue
    .line 62
    iput-boolean p1, p0, Lorg/abtollc/sdk/AbtoPhone;->isLocalHangUp:Z

    return p1
.end method

.method static synthetic access$800()Landroid/content/Context;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lorg/abtollc/sdk/AbtoPhone;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lorg/abtollc/sdk/AbtoPhone;)Landroid/util/SparseBooleanArray;
    .locals 1
    .param p0, "x0"    # Lorg/abtollc/sdk/AbtoPhone;

    .prologue
    .line 62
    iget-object v0, p0, Lorg/abtollc/sdk/AbtoPhone;->callHoldStatus:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method private bindToService(ZZ)V
    .locals 4
    .param p1, "startSip"    # Z
    .param p2, "startSticky"    # Z

    .prologue
    .line 627
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lorg/abtollc/sdk/AbtoPhone;->mContext:Landroid/content/Context;

    const-class v2, Lorg/abtollc/service/ABTOSipService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 628
    .local v0, "sipServiceIntent":Landroid/content/Intent;
    const-string v1, "startSip"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 629
    const-string v1, "SERVICE_START_STICKY"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 630
    const-string v1, "org.abtollc.service.ABTOSipService"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 631
    sget-object v1, Lorg/abtollc/sdk/AbtoPhone;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/abtollc/sdk/AbtoPhone;->mConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 632
    return-void
.end method

.method private static createLooper()Landroid/os/Looper;
    .locals 2

    .prologue
    .line 1933
    sget-object v0, Lorg/abtollc/sdk/AbtoPhone;->executorThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 1934
    const-string v0, "AbtoPhone"

    const-string v1, "Creating new handler thread"

    invoke-static {v0, v1}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1935
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SipService.Executor"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/abtollc/sdk/AbtoPhone;->executorThread:Landroid/os/HandlerThread;

    .line 1936
    sget-object v0, Lorg/abtollc/sdk/AbtoPhone;->executorThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1939
    :cond_0
    sget-object v0, Lorg/abtollc/sdk/AbtoPhone;->executorThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 573
    sget-object v0, Lorg/abtollc/sdk/AbtoPhone;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static init(Landroid/content/Context;)Lorg/abtollc/sdk/AbtoPhone;
    .locals 6
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 603
    invoke-static {p0}, Lorg/abtollc/utils/Log;->init(Landroid/content/Context;)V

    .line 605
    new-instance v0, Lorg/abtollc/sdk/AbtoPhone;

    invoke-direct {v0, p0}, Lorg/abtollc/sdk/AbtoPhone;-><init>(Landroid/content/Context;)V

    .line 610
    .local v0, "abtoPhone":Lorg/abtollc/sdk/AbtoPhone;
    new-instance v1, Lorg/abtollc/sdk/AbtoPhone$CallLogReceiver;

    invoke-direct {v1, v0}, Lorg/abtollc/sdk/AbtoPhone$CallLogReceiver;-><init>(Lorg/abtollc/sdk/AbtoPhone;)V

    .line 612
    .local v1, "callLogReceiver":Lorg/abtollc/sdk/AbtoPhone$CallLogReceiver;
    new-instance v2, Landroid/content/IntentFilter;

    const-string v5, "org.abtollc.calllog.ACTION_CALL_LOG_ADDED"

    invoke-direct {v2, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 614
    .local v2, "receiverFilter":Landroid/content/IntentFilter;
    sget-object v5, Lorg/abtollc/sdk/AbtoPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 616
    new-instance v3, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v3, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 617
    .local v3, "shutdownFilter":Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.QUICKBOOT_POWEROFF"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 619
    new-instance v4, Lorg/abtollc/sdk/AbtoPhone$ShutdownReceiver;

    invoke-direct {v4, v0}, Lorg/abtollc/sdk/AbtoPhone$ShutdownReceiver;-><init>(Lorg/abtollc/sdk/AbtoPhone;)V

    .line 621
    .local v4, "shutdownReceiver":Lorg/abtollc/sdk/AbtoPhone$ShutdownReceiver;
    sget-object v5, Lorg/abtollc/sdk/AbtoPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 623
    return-object v0
.end method

.method private isCreated()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 885
    :try_start_0
    const-string v3, "AbtoPhone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Service "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lorg/abtollc/sdk/AbtoPhone;->mService:Lorg/abtollc/api/ISipService;

    if-eqz v2, :cond_1

    const-string v2, "not"

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " null"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    iget-object v2, p0, Lorg/abtollc/sdk/AbtoPhone;->mService:Lorg/abtollc/api/ISipService;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/abtollc/sdk/AbtoPhone;->mService:Lorg/abtollc/api/ISipService;

    invoke-interface {v2}, Lorg/abtollc/api/ISipService;->isCreated()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 892
    :cond_0
    :goto_1
    return v1

    .line 885
    :cond_1
    const-string v2, "is"
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 887
    :catch_0
    move-exception v0

    .line 889
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method private isNetworkOnline()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 1051
    const/4 v3, 0x0

    .line 1053
    .local v3, "status":Z
    :try_start_0
    sget-object v5, Lorg/abtollc/sdk/AbtoPhone;->mContext:Landroid/content/Context;

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1054
    .local v0, "cm":Landroid/net/ConnectivityManager;
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 1055
    .local v2, "netInfo":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5

    sget-object v6, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v5, v6, :cond_1

    .line 1056
    const/4 v3, 0x1

    :cond_0
    :goto_0
    move v4, v3

    .line 1066
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    .end local v2    # "netInfo":Landroid/net/NetworkInfo;
    :goto_1
    return v4

    .line 1058
    .restart local v0    # "cm":Landroid/net/ConnectivityManager;
    .restart local v2    # "netInfo":Landroid/net/NetworkInfo;
    :cond_1
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 1059
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v5, v4, :cond_0

    .line 1060
    const/4 v3, 0x1

    goto :goto_0

    .line 1062
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    .end local v2    # "netInfo":Landroid/net/NetworkInfo;
    :catch_0
    move-exception v1

    .line 1063
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private setServiceMessenger()V
    .locals 4

    .prologue
    .line 635
    iget-object v2, p0, Lorg/abtollc/sdk/AbtoPhone;->mService:Lorg/abtollc/api/ISipService;

    if-eqz v2, :cond_0

    .line 636
    new-instance v1, Landroid/content/Intent;

    const-string v2, "org.abtollc.action.SET_MESSENGER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 637
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "EXTRA_MESSENGER"

    iget-object v3, p0, Lorg/abtollc/sdk/AbtoPhone;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 640
    :try_start_0
    iget-object v2, p0, Lorg/abtollc/sdk/AbtoPhone;->mService:Lorg/abtollc/api/ISipService;

    invoke-interface {v2, v1}, Lorg/abtollc/api/ISipService;->addMessenger(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 645
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 641
    .restart local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 642
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public addBuddy(Ljava/lang/String;)V
    .locals 3
    .param p1, "contactUri"    # Ljava/lang/String;

    .prologue
    .line 1238
    iget-object v1, p0, Lorg/abtollc/sdk/AbtoPhone;->mService:Lorg/abtollc/api/ISipService;

    if-eqz v1, :cond_0

    .line 1240
    :try_start_0
    iget-object v1, p0, Lorg/abtollc/sdk/AbtoPhone;->mService:Lorg/abtollc/api/ISipService;

    invoke-interface {v1, p1}, Lorg/abtollc/api/ISipService;->addBuddy(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1245
    :cond_0
    :goto_0
    return-void

    .line 1241
    :catch_0
    move-exception v0

    .line 1242
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AbtoPhone"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public answerCall(IZ)V
    .locals 3
    .param p1, "status"    # I
    .param p2, "withVideo"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 982
    iget-object v0, p0, Lorg/abtollc/sdk/AbtoPhone;->mService:Lorg/abtollc/api/ISipService;

    if-nez v0, :cond_0

    .line 985
    :goto_0
    return-void

    .line 984
    :cond_0
    iget-object v1, p0, Lorg/abtollc/sdk/AbtoPhone;->mService:Lorg/abtollc/api/ISipService;

    invoke-virtual {p0}, Lorg/abtollc/sdk/AbtoPhone;->getActiveCallId()I

    move-result v2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lorg/abtollc/sdk/AbtoPhone;->getConfig()Lorg/abtollc/sdk/AbtoPhoneCfg;

    move-result-object v0

    invoke-virtual {v0}, Lorg/abtollc/sdk/AbtoPhoneCfg;->isVideoCallEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-interface {v1, v2, p1, v0}, Lorg/abtollc/api/ISipService;->answer(IIZ)I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public callXfer(Ljava/lang/String;)V
    .locals 6
    .param p1, "callee"    # Ljava/lang/String;

    .prologue
    .line 1019
    iget-object v3, p0, Lorg/abtollc/sdk/AbtoPhone;->mService:Lorg/abtollc/api/ISipService;

    if-eqz v3, :cond_3

    .line 1022
    :try_start_0
    invoke-static {p1}, Lorg/abtollc/api/SipUri;->parseSipContact(Ljava/lang/String;)Lorg/abtollc/api/SipUri$ParsedSipContactInfos;

    move-result-object v2

    .line 1023
    .local v2, "remoteCallee":Lorg/abtollc/api/SipUri$ParsedSipContactInfos;
    invoke-virtual {p0}, Lorg/abtollc/sdk/AbtoPhone;->getConfig()Lorg/abtollc/sdk/AbtoPhoneCfg;

    move-result-object v3

    invoke-virtual {p0}, Lorg/abtollc/sdk/AbtoPhone;->getCurrentAccountId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lorg/abtollc/sdk/AbtoPhoneCfg;->getAccount(J)Lorg/abtollc/api/SipProfile;

    move-result-object v0

    .line 1026
    .local v0, "account":Lorg/abtollc/api/SipProfile;
    iget-object v3, v2, Lorg/abtollc/api/SipUri$ParsedSipContactInfos;->scheme:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1027
    iget-object v3, v0, Lorg/abtollc/api/SipProfile;->reg_uri:Ljava/lang/String;

    invoke-static {v3}, Lorg/abtollc/api/SipUri;->parseSipUri(Ljava/lang/String;)Lorg/abtollc/api/SipUri$ParsedSipUriInfos;

    move-result-object v3

    iget-object v3, v3, Lorg/abtollc/api/SipUri$ParsedSipUriInfos;->scheme:Ljava/lang/String;

    iput-object v3, v2, Lorg/abtollc/api/SipUri$ParsedSipContactInfos;->scheme:Ljava/lang/String;

    .line 1029
    :cond_0
    iget-object v3, v2, Lorg/abtollc/api/SipUri$ParsedSipContactInfos;->domain:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1030
    invoke-virtual {v0}, Lorg/abtollc/api/SipProfile;->getSipDomain()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lorg/abtollc/api/SipUri$ParsedSipContactInfos;->domain:Ljava/lang/String;

    .line 1032
    :cond_1
    iget-object v3, v2, Lorg/abtollc/api/SipUri$ParsedSipContactInfos;->transport:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v0, Lorg/abtollc/api/SipProfile;->transport:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v4, Lorg/abtollc/sdk/AbtoPhoneCfg$SignalingTransportType;->UDP:Lorg/abtollc/sdk/AbtoPhoneCfg$SignalingTransportType;

    invoke-virtual {v4}, Lorg/abtollc/sdk/AbtoPhoneCfg$SignalingTransportType;->getValue()I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 1033
    iget-object v3, v0, Lorg/abtollc/api/SipProfile;->transport:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lorg/abtollc/sdk/AbtoPhoneCfg$SignalingTransportType;->getTypeByValue(I)Lorg/abtollc/sdk/AbtoPhoneCfg$SignalingTransportType;

    move-result-object v3

    invoke-virtual {v3}, Lorg/abtollc/sdk/AbtoPhoneCfg$SignalingTransportType;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lorg/abtollc/api/SipUri$ParsedSipContactInfos;->transport:Ljava/lang/String;

    .line 1035
    :cond_2
    const-string v3, "AbtoPhone"

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lorg/abtollc/api/SipUri$ParsedSipContactInfos;->toString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1036
    iget-object v3, p0, Lorg/abtollc/sdk/AbtoPhone;->mService:Lorg/abtollc/api/ISipService;

    invoke-virtual {p0}, Lorg/abtollc/sdk/AbtoPhone;->getActiveCallId()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lorg/abtollc/api/SipUri$ParsedSipContactInfos;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lorg/abtollc/api/ISipService;->xfer(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1041
    .end local v0    # "account":Lorg/abtollc/api/SipProfile;
    .end local v2    # "remoteCallee":Lorg/abtollc/api/SipUri$ParsedSipContactInfos;
    :cond_3
    :goto_0
    return-void

    .line 1037
    :catch_0
    move-exception v1

    .line 1038
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "AbtoPhone"

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public destroy()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1320
    iget-object v0, p0, Lorg/abtollc/sdk/AbtoPhone;->mService:Lorg/abtollc/api/ISipService;

    if-eqz v0, :cond_0

    .line 1321
    iget-object v0, p0, Lorg/abtollc/sdk/AbtoPhone;->mService:Lorg/abtollc/api/ISipService;

    invoke-interface {v0}, Lorg/abtollc/api/ISipService;->forceStopService()V

    .line 1323
    :cond_0
    iget-boolean v0, p0, Lorg/abtollc/sdk/AbtoPhone;->mBound:Z

    if-eqz v0, :cond_1

    .line 1324
    sget-object v0, Lorg/abtollc/sdk/AbtoPhone;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/abtollc/sdk/AbtoPhone;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1325
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/abtollc/sdk/AbtoPhone;->mBound:Z

    .line 1328
    :cond_1
    iget-object v0, p0, Lorg/abtollc/sdk/AbtoPhone;->mCfg:Lorg/abtollc/sdk/AbtoPhoneCfg;

    invoke-virtual {v0}, Lorg/abtollc/sdk/AbtoPhoneCfg;->onDestroy()V

    .line 1329
    return-void
.end method

.method public getActiveCallId()I
    .locals 7

    .prologue
    .line 1336
    iget-object v3, p0, Lorg/abtollc/sdk/AbtoPhone;->mService:Lorg/abtollc/api/ISipService;

    if-nez v3, :cond_0

    .line 1337
    const/4 v3, -0x1

    .line 1353
    :goto_0
    return v3

    .line 1340
    :cond_0
    :try_start_0
    iget-object v3, p0, Lorg/abtollc/sdk/AbtoPhone;->mService:Lorg/abtollc/api/ISipService;

    invoke-interface {v3}, Lorg/abtollc/api/ISipService;->getCalls()[Lorg/abtollc/api/SipCallSession;

    move-result-object v0

    .line 1341
    .local v0, "calls":[Lorg/abtollc/api/SipCallSession;
    array-length v4, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v2, v0, v3

    .line 1342
    .local v2, "existCall":Lorg/abtollc/api/SipCallSession;
    invoke-virtual {v2}, Lorg/abtollc/api/SipCallSession;->isAfterEnded()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v2}, Lorg/abtollc/api/SipCallSession;->getCallId()I

    move-result v5

    iget v6, p0, Lorg/abtollc/sdk/AbtoPhone;->callId:I

    if-ne v5, v6, :cond_1

    .line 1343
    iget v3, p0, Lorg/abtollc/sdk/AbtoPhone;->callId:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1341
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1347
    .end local v0    # "calls":[Lorg/abtollc/api/SipCallSession;
    .end local v2    # "existCall":Lorg/abtollc/api/SipCallSession;
    :catch_0
    move-exception v1

    .line 1348
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1353
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2
    iget v3, p0, Lorg/abtollc/sdk/AbtoPhone;->callId:I

    goto :goto_0
.end method

.method public getActiveCallIdInProgress()I
    .locals 8

    .prologue
    const/4 v3, -0x1

    .line 1358
    iget-object v4, p0, Lorg/abtollc/sdk/AbtoPhone;->mService:Lorg/abtollc/api/ISipService;

    if-nez v4, :cond_1

    .line 1375
    :cond_0
    :goto_0
    return v3

    .line 1362
    :cond_1
    :try_start_0
    iget-object v4, p0, Lorg/abtollc/sdk/AbtoPhone;->mService:Lorg/abtollc/api/ISipService;

    invoke-interface {v4}, Lorg/abtollc/api/ISipService;->getCalls()[Lorg/abtollc/api/SipCallSession;

    move-result-object v0

    .line 1363
    .local v0, "calls":[Lorg/abtollc/api/SipCallSession;
    array-length v5, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_0

    aget-object v2, v0, v4

    .line 1364
    .local v2, "existCall":Lorg/abtollc/api/SipCallSession;
    invoke-virtual {v2}, Lorg/abtollc/api/SipCallSession;->isOngoing()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v2}, Lorg/abtollc/api/SipCallSession;->getCallId()I

    move-result v6

    iget v7, p0, Lorg/abtollc/sdk/AbtoPhone;->callId:I

    if-ne v6, v7, :cond_2

    .line 1365
    iget v3, p0, Lorg/abtollc/sdk/AbtoPhone;->callId:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1363
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1369
    .end local v0    # "calls":[Lorg/abtollc/api/SipCallSession;
    .end local v2    # "existCall":Lorg/abtollc/api/SipCallSession;
    :catch_0
    move-exception v1

    .line 1370
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getAfterEndedCallId()I
    .locals 8

    .prologue
    const/4 v3, -0x1

    .line 1426
    iget-object v4, p0, Lorg/abtollc/sdk/AbtoPhone;->mService:Lorg/abtollc/api/ISipService;

    if-nez v4, :cond_1

    .line 1440
    :cond_0
    :goto_0
    return v3

    .line 1430
    :cond_1
    :try_start_0
    iget-object v4, p0, Lorg/abtollc/sdk/AbtoPhone;->mService:Lorg/abtollc/api/ISipService;

    invoke-interface {v4}, Lorg/abtollc/api/ISipService;->getCalls()[Lorg/abtollc/api/SipCallSession;

    move-result-object v0

    .line 1431
    .local v0, "calls":[Lorg/abtollc/api/SipCallSession;
    array-length v5, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_0

    aget-object v2, v0, v4

    .line 1432
    .local v2, "existCall":Lorg/abtollc/api/SipCallSession;
    invoke-virtual {v2}, Lorg/abtollc/api/SipCallSession;->isAfterEnded()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v2}, Lorg/abtollc/api/SipCallSession;->getCallId()I

    move-result v6

    iget v7, p0, Lorg/abtollc/sdk/AbtoPhone;->callId:I

    if-ne v6, v7, :cond_2

    .line 1433
    iget v3, p0, Lorg/abtollc/sdk/AbtoPhone;->callId:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1431
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1436
    .end local v0    # "calls":[Lorg/abtollc/api/SipCallSession;
    .end local v2    # "existCall":Lorg/abtollc/api/SipCallSession;
    :catch_0
    move-exception v1

    .line 1437
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getAllMessages(Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .param p1, "num"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/abtollc/api/SipMessage;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 1495
    new-instance v9, Ljava/util/LinkedList;

    invoke-direct {v9}, Ljava/util/LinkedList;-><init>()V

    .line 1499
    .local v9, "messages":Ljava/util/List;, "Ljava/util/List<Lorg/abtollc/api/SipMessage;>;"
    const-string v3, "sender LIKE ? OR full_sender LIKE ? OR contact LIKE ?"

    .line 1501
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    aput-object p1, v4, v5

    const/4 v0, 0x2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 1503
    .local v4, "selectionArgs":[Ljava/lang/String;
    sget-object v0, Lorg/abtollc/sdk/AbtoPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lorg/abtollc/sdk/AbtoApplication;

    invoke-virtual {v0}, Lorg/abtollc/sdk/AbtoApplication;->getContentProvider()Landroid/content/ContentProvider;

    move-result-object v0

    sget-object v1, Lorg/abtollc/api/SipMessage;->MESSAGE_URI:Landroid/net/Uri;

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1505
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 1508
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 1509
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1511
    :cond_0
    new-instance v8, Lorg/abtollc/api/SipMessage;

    invoke-direct {v8, v6}, Lorg/abtollc/api/SipMessage;-><init>(Landroid/database/Cursor;)V

    .line 1512
    .local v8, "m":Lorg/abtollc/api/SipMessage;
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1513
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 1518
    .end local v8    # "m":Lorg/abtollc/api/SipMessage;
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1522
    :cond_2
    :goto_0
    return-object v9

    .line 1515
    :catch_0
    move-exception v7

    .line 1516
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "Login Screen"

    const-string v1, "Error on getting messages"

    invoke-static {v0, v1, v7}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1518
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public getAllMessages(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .param p1, "from"    # Ljava/lang/String;
    .param p2, "to"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/abtollc/api/SipMessage;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 1533
    new-instance v9, Ljava/util/LinkedList;

    invoke-direct {v9}, Ljava/util/LinkedList;-><init>()V

    .line 1538
    .local v9, "messages":Ljava/util/List;, "Ljava/util/List<Lorg/abtollc/api/SipMessage;>;"
    const-string v3, "( (sender LIKE ? OR full_sender LIKE ?) AND contact LIKE ? )"

    .line 1540
    .local v3, "selection":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1541
    const/4 v0, 0x6

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    aput-object p1, v4, v5

    const/4 v0, 0x2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p2, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x3

    aput-object p2, v4, v0

    const/4 v0, 0x4

    aput-object p2, v4, v0

    const/4 v0, 0x5

    .line 1542
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 1544
    .local v4, "selectionArgs":[Ljava/lang/String;
    sget-object v0, Lorg/abtollc/sdk/AbtoPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lorg/abtollc/sdk/AbtoApplication;

    invoke-virtual {v0}, Lorg/abtollc/sdk/AbtoApplication;->getContentProvider()Landroid/content/ContentProvider;

    move-result-object v0

    sget-object v1, Lorg/abtollc/api/SipMessage;->MESSAGE_URI:Landroid/net/Uri;

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1546
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 1548
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 1549
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1551
    :cond_0
    new-instance v8, Lorg/abtollc/api/SipMessage;

    invoke-direct {v8, v6}, Lorg/abtollc/api/SipMessage;-><init>(Landroid/database/Cursor;)V

    .line 1552
    .local v8, "m":Lorg/abtollc/api/SipMessage;
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1553
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 1558
    .end local v8    # "m":Lorg/abtollc/api/SipMessage;
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1562
    :cond_2
    :goto_0
    return-object v9

    .line 1555
    :catch_0
    move-exception v7

    .line 1556
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "Login Screen"

    const-string v1, "Error on getting messages"

    invoke-static {v0, v1, v7}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1558
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public getBeforeConfirmedCallId()I
    .locals 8

    .prologue
    const/4 v3, -0x1

    .line 1380
    iget-object v4, p0, Lorg/abtollc/sdk/AbtoPhone;->mService:Lorg/abtollc/api/ISipService;

    if-nez v4, :cond_1

    .line 1393
    :cond_0
    :goto_0
    return v3

    .line 1384
    :cond_1
    :try_start_0
    iget-object v4, p0, Lorg/abtollc/sdk/AbtoPhone;->mService:Lorg/abtollc/api/ISipService;

    invoke-interface {v4}, Lorg/abtollc/api/ISipService;->getCalls()[Lorg/abtollc/api/SipCallSession;

    move-result-object v0

    .line 1385
    .local v0, "calls":[Lorg/abtollc/api/SipCallSession;
    array-length v5, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_0

    aget-object v2, v0, v4

    .line 1386
    .local v2, "existCall":Lorg/abtollc/api/SipCallSession;
    invoke-virtual {v2}, Lorg/abtollc/api/SipCallSession;->isBeforeConfirmed()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v2}, Lorg/abtollc/api/SipCallSession;->getCallId()I

    move-result v6

    iget v7, p0, Lorg/abtollc/sdk/AbtoPhone;->callId:I

    if-ne v6, v7, :cond_2

    .line 1387
    iget v3, p0, Lorg/abtollc/sdk/AbtoPhone;->callId:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1385
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1390
    .end local v0    # "calls":[Lorg/abtollc/api/SipCallSession;
    .end local v2    # "existCall":Lorg/abtollc/api/SipCallSession;
    :catch_0
    move-exception v1

    .line 1391
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getCallLog(I)Ljava/util/List;
    .locals 14
    .param p1, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lorg/abtollc/utils/CallLog;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1622
    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    .line 1623
    .local v8, "calls":Ljava/util/List;, "Ljava/util/List<Lorg/abtollc/utils/CallLog;>;"
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 1625
    .local v12, "values":Landroid/content/ContentValues;
    invoke-virtual {p0}, Lorg/abtollc/sdk/AbtoPhone;->getCurrentAccountId()J

    move-result-wide v0

    const-wide/16 v4, -0x1

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    .line 1652
    :cond_0
    :goto_0
    return-object v8

    .line 1629
    :cond_1
    sget-object v0, Lorg/abtollc/sdk/AbtoPhone;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lorg/abtollc/sdk/AbtoPhone;->getCurrentAccountId()J

    move-result-wide v4

    sget-object v1, Lorg/abtollc/db/DBProvider;->ACCOUNT_FULL_PROJECTION:[Ljava/lang/String;

    invoke-static {v0, v4, v5, v1}, Lorg/abtollc/api/SipProfile;->getProfileFromDbId(Landroid/content/Context;J[Ljava/lang/String;)Lorg/abtollc/api/SipProfile;

    move-result-object v6

    .line 1632
    .local v6, "acc":Lorg/abtollc/api/SipProfile;
    sget-object v0, Lorg/abtollc/sdk/AbtoPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lorg/abtollc/sdk/AbtoApplication;

    invoke-virtual {v0}, Lorg/abtollc/sdk/AbtoApplication;->getContentProvider()Landroid/content/ContentProvider;

    move-result-object v0

    sget-object v1, Lorg/abtollc/api/SipManager;->CALLLOG_URI:Landroid/net/Uri;

    const-string v3, "account_id LIKE ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v13, v6, Lorg/abtollc/api/SipProfile;->acc_id:Ljava/lang/String;

    aput-object v13, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1634
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 1636
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 1637
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1638
    const/4 v9, 0x0

    .line 1640
    .local v9, "count":I
    :cond_2
    invoke-static {v7, v12}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 1641
    new-instance v11, Lorg/abtollc/utils/CallLog;

    invoke-direct {v11, v12}, Lorg/abtollc/utils/CallLog;-><init>(Landroid/content/ContentValues;)V

    .line 1642
    .local v11, "s":Lorg/abtollc/utils/CallLog;
    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1643
    add-int/lit8 v9, v9, 0x1

    .line 1644
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_3

    if-lez p1, :cond_2

    if-le v9, p1, :cond_2

    .line 1649
    .end local v9    # "count":I
    .end local v11    # "s":Lorg/abtollc/utils/CallLog;
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1646
    :catch_0
    move-exception v10

    .line 1647
    .local v10, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "getCallLog"

    const-string v1, "Error on getting recent calls"

    invoke-static {v0, v1, v10}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1649
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public getCallLogById(J)Lorg/abtollc/utils/CallLog;
    .locals 11
    .param p1, "logId"    # J

    .prologue
    const/4 v2, 0x0

    .line 1656
    sget-object v0, Lorg/abtollc/sdk/AbtoPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lorg/abtollc/sdk/AbtoApplication;

    invoke-virtual {v0}, Lorg/abtollc/sdk/AbtoApplication;->getContentProvider()Landroid/content/ContentProvider;

    move-result-object v0

    sget-object v1, Lorg/abtollc/api/SipManager;->CALLLOG_ID_URI_BASE:Landroid/net/Uri;

    .line 1657
    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 1656
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1660
    .local v6, "c":Landroid/database/Cursor;
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 1662
    .local v10, "values":Landroid/content/ContentValues;
    const/4 v8, 0x0

    .line 1665
    .local v8, "log":Lorg/abtollc/utils/CallLog;
    if-eqz v6, :cond_1

    .line 1667
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1668
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1669
    invoke-static {v6, v10}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 1670
    new-instance v9, Lorg/abtollc/utils/CallLog;

    invoke-direct {v9, v10}, Lorg/abtollc/utils/CallLog;-><init>(Landroid/content/ContentValues;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v8    # "log":Lorg/abtollc/utils/CallLog;
    .local v9, "log":Lorg/abtollc/utils/CallLog;
    move-object v8, v9

    .line 1675
    .end local v9    # "log":Lorg/abtollc/utils/CallLog;
    .restart local v8    # "log":Lorg/abtollc/utils/CallLog;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1679
    :cond_1
    :goto_0
    return-object v8

    .line 1672
    :catch_0
    move-exception v7

    .line 1673
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "AbtoPhone"

    const-string v1, "Something went wrong while retrieving the call log"

    invoke-static {v0, v1, v7}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1675
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public getConfig()Lorg/abtollc/sdk/AbtoPhoneCfg;
    .locals 1

    .prologue
    .line 651
    iget-object v0, p0, Lorg/abtollc/sdk/AbtoPhone;->mCfg:Lorg/abtollc/sdk/AbtoPhoneCfg;

    return-object v0
.end method

.method public getCurrentAccountId()J
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 1447
    sget-object v0, Lorg/abtollc/sdk/AbtoPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lorg/abtollc/sdk/AbtoApplication;

    invoke-virtual {v0}, Lorg/abtollc/sdk/AbtoApplication;->getContentProvider()Landroid/content/ContentProvider;

    move-result-object v0

    sget-object v1, Lorg/abtollc/api/SipProfile;->ACCOUNT_URI:Landroid/net/Uri;

    sget-object v2, Lorg/abtollc/db/DBProvider;->ACCOUNT_FULL_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1450
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 1452
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1453
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1454
    new-instance v0, Lorg/abtollc/api/SipProfile;

    invoke-direct {v0, v6}, Lorg/abtollc/api/SipProfile;-><init>(Landroid/database/Cursor;)V

    iget-wide v0, v0, Lorg/abtollc/api/SipProfile;->id:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1459
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1463
    :goto_0
    return-wide v0

    .line 1459
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1463
    :cond_1
    :goto_1
    const-wide/16 v0, -0x1

    goto :goto_0

    .line 1456
    :catch_0
    move-exception v7

    .line 1457
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "Login Screen"

    const-string v1, "Error on looping over sip profiles"

    invoke-static {v0, v1, v7}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1459
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public getExecutor()Lorg/abtollc/sdk/AbtoPhone$AbtoPhoneExecutor;
    .locals 1

    .prologue
    .line 1925
    iget-object v0, p0, Lorg/abtollc/sdk/AbtoPhone;->mExecutor:Lorg/abtollc/sdk/AbtoPhone$AbtoPhoneExecutor;

    if-nez v0, :cond_0

    .line 1926
    new-instance v0, Lorg/abtollc/sdk/AbtoPhone$AbtoPhoneExecutor;

    invoke-direct {v0}, Lorg/abtollc/sdk/AbtoPhone$AbtoPhoneExecutor;-><init>()V

    iput-object v0, p0, Lorg/abtollc/sdk/AbtoPhone;->mExecutor:Lorg/abtollc/sdk/AbtoPhone$AbtoPhoneExecutor;

    .line 1928
    :cond_0
    iget-object v0, p0, Lorg/abtollc/sdk/AbtoPhone;->mExecutor:Lorg/abtollc/sdk/AbtoPhone$AbtoPhoneExecutor;

    return-object v0
.end method

.method public getMessage(J)Lorg/abtollc/api/SipMessage;
    .locals 9
    .param p1, "messageId"    # J

    .prologue
    const/4 v2, 0x0

    .line 1468
    sget-object v0, Lorg/abtollc/sdk/AbtoPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lorg/abtollc/sdk/AbtoApplication;

    invoke-virtual {v0}, Lorg/abtollc/sdk/AbtoApplication;->getContentProvider()Landroid/content/ContentProvider;

    move-result-object v0

    sget-object v1, Lorg/abtollc/api/SipMessage;->MESSAGE_ID_URI_BASE:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1469
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 1471
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 1472
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1473
    new-instance v0, Lorg/abtollc/api/SipMessage;

    invoke-direct {v0, v6}, Lorg/abtollc/api/SipMessage;-><init>(Landroid/database/Cursor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1478
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v2, v0

    .line 1481
    :cond_0
    :goto_0
    return-object v2

    .line 1478
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1475
    :catch_0
    move-exception v7

    .line 1476
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "Login Screen"

    const-string v1, "Error on looping over sip profiles"

    invoke-static {v0, v1, v7}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1478
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public getMicrophoneLevel()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1789
    iget-object v3, p0, Lorg/abtollc/sdk/AbtoPhone;->mService:Lorg/abtollc/api/ISipService;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lorg/abtollc/api/ISipService;->confGetRxTxLevel(I)J

    move-result-wide v0

    .line 1792
    .local v0, "rxtxLevel":J
    const-wide/16 v4, 0xff

    and-long/2addr v4, v0

    long-to-int v2, v4

    .line 1794
    .local v2, "tx_level":I
    return v2
.end method

.method public getSpeakerLevel()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1798
    iget-object v1, p0, Lorg/abtollc/sdk/AbtoPhone;->mService:Lorg/abtollc/api/ISipService;

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Lorg/abtollc/api/ISipService;->confGetRxTxLevel(I)J

    move-result-wide v2

    .line 1801
    .local v2, "rxtxLevel":J
    const/16 v1, 0x8

    shr-long v4, v2, v1

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    long-to-int v0, v4

    .line 1803
    .local v0, "rx_level":I
    return v0
.end method

.method public getUnreadedMessages(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p1, "to"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/abtollc/api/SipMessage;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 1571
    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    .line 1572
    .local v8, "messages":Ljava/util/List;, "Ljava/util/List<Lorg/abtollc/api/SipMessage;>;"
    const-string v0, "^(?:\")?([^<\"]*)(?:\")?[ ]*(?:<)?(sip(?:s)?|tel):([^@]+)@([^>]+)(?:>)?$"

    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1573
    const-string v3, "contact LIKE ? AND read=0"

    .line 1574
    .local v3, "selection":Ljava/lang/String;
    new-array v4, v5, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 1576
    .local v4, "selectionArgs":[Ljava/lang/String;
    sget-object v0, Lorg/abtollc/sdk/AbtoPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lorg/abtollc/sdk/AbtoApplication;

    invoke-virtual {v0}, Lorg/abtollc/sdk/AbtoApplication;->getContentProvider()Landroid/content/ContentProvider;

    move-result-object v0

    sget-object v1, Lorg/abtollc/api/SipMessage;->MESSAGE_URI:Landroid/net/Uri;

    move-object v5, v2

    .line 1577
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1578
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 1581
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 1582
    const-string v0, "AbtoPhone.getUnreadMessages"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " unread messages"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1583
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1585
    :cond_0
    new-instance v0, Lorg/abtollc/api/SipMessage;

    invoke-direct {v0, v6}, Lorg/abtollc/api/SipMessage;-><init>(Landroid/database/Cursor;)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1586
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 1591
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1595
    .end local v3    # "selection":Ljava/lang/String;
    .end local v4    # "selectionArgs":[Ljava/lang/String;
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_2
    :goto_0
    return-object v8

    .line 1588
    .restart local v3    # "selection":Ljava/lang/String;
    .restart local v4    # "selectionArgs":[Ljava/lang/String;
    .restart local v6    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 1589
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "AbtoPhone"

    const-string v1, "Error on getting messages"

    invoke-static {v0, v1, v7}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1591
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public hangUp()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 919
    iget-object v0, p0, Lorg/abtollc/sdk/AbtoPhone;->mService:Lorg/abtollc/api/ISipService;

    if-nez v0, :cond_1

    .line 953
    :cond_0
    :goto_0
    return-void

    .line 941
    :cond_1
    invoke-virtual {p0}, Lorg/abtollc/sdk/AbtoPhone;->getActiveCallId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 942
    invoke-virtual {p0}, Lorg/abtollc/sdk/AbtoPhone;->stopRecording()V

    .line 943
    invoke-virtual {p0}, Lorg/abtollc/sdk/AbtoPhone;->stopPlayback()V

    .line 944
    invoke-virtual {p0, v2}, Lorg/abtollc/sdk/AbtoPhone;->setSpeakerphoneOn(Z)V

    .line 945
    invoke-virtual {p0, v2}, Lorg/abtollc/sdk/AbtoPhone;->setMicrophoneMute(Z)V

    .line 946
    iget-object v0, p0, Lorg/abtollc/sdk/AbtoPhone;->mService:Lorg/abtollc/api/ISipService;

    invoke-virtual {p0}, Lorg/abtollc/sdk/AbtoPhone;->getActiveCallId()I

    move-result v1

    invoke-interface {v0, v1, v2}, Lorg/abtollc/api/ISipService;->hangup(II)I

    .line 947
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/abtollc/sdk/AbtoPhone;->isLocalHangUp:Z

    goto :goto_0
.end method

.method public holdRetriveCall()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1002
    iget-object v4, p0, Lorg/abtollc/sdk/AbtoPhone;->mService:Lorg/abtollc/api/ISipService;

    if-eqz v4, :cond_0

    .line 1004
    invoke-virtual {p0}, Lorg/abtollc/sdk/AbtoPhone;->getActiveCallId()I

    move-result v0

    .line 1005
    .local v0, "callId":I
    iget-object v4, p0, Lorg/abtollc/sdk/AbtoPhone;->callHoldStatus:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v0, v3}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v4

    if-nez v4, :cond_1

    move v1, v2

    .line 1006
    .local v1, "hold":Z
    :goto_0
    iget-object v4, p0, Lorg/abtollc/sdk/AbtoPhone;->callHoldStatus:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1007
    if-eqz v1, :cond_2

    .line 1009
    iget-object v2, p0, Lorg/abtollc/sdk/AbtoPhone;->mService:Lorg/abtollc/api/ISipService;

    invoke-interface {v2, v0}, Lorg/abtollc/api/ISipService;->hold(I)I

    .line 1016
    .end local v0    # "callId":I
    .end local v1    # "hold":Z
    :cond_0
    :goto_1
    return-void

    .restart local v0    # "callId":I
    :cond_1
    move v1, v3

    .line 1005
    goto :goto_0

    .line 1011
    .restart local v1    # "hold":Z
    :cond_2
    iget-object v4, p0, Lorg/abtollc/sdk/AbtoPhone;->mService:Lorg/abtollc/api/ISipService;

    invoke-interface {v4, v0, v2}, Lorg/abtollc/api/ISipService;->reinvite(IZ)I

    .line 1012
    iput-boolean v3, p0, Lorg/abtollc/sdk/AbtoPhone;->isLocalHold:Z

    goto :goto_1
.end method

.method public initialize()V
    .locals 1

    .prologue
    .line 807
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/abtollc/sdk/AbtoPhone;->initialize(Z)V

    .line 808
    return-void
.end method

.method public initialize(Z)V
    .locals 5
    .param p1, "sticky"    # Z

    .prologue
    const/4 v4, 0x1

    .line 815
    const-string v2, "AbtoPhone"

    const-string v3, "Start init"

    invoke-static {v2, v3}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    iget-object v2, p0, Lorg/abtollc/sdk/AbtoPhone;->mService:Lorg/abtollc/api/ISipService;

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/abtollc/sdk/AbtoPhone;->mConnection:Landroid/content/ServiceConnection;

    if-nez v2, :cond_1

    .line 820
    :cond_0
    invoke-virtual {p0}, Lorg/abtollc/sdk/AbtoPhone;->restartSip()V

    .line 827
    :cond_1
    new-instance v0, Landroid/content/Intent;

    sget-object v2, Lorg/abtollc/sdk/AbtoPhone;->mContext:Landroid/content/Context;

    const-class v3, Lorg/abtollc/service/ABTOSipService;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 828
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "startSip"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 829
    const-string v2, "SERVICE_START_STICKY"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 830
    const-string v2, "org.abtollc.service.ABTOSipService"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 832
    sget-object v2, Lorg/abtollc/sdk/AbtoPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 833
    sget-object v2, Lorg/abtollc/sdk/AbtoPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 834
    sget-object v2, Lorg/abtollc/sdk/AbtoPhone;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lorg/abtollc/sdk/AbtoPhone;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    iput-boolean v2, p0, Lorg/abtollc/sdk/AbtoPhone;->mBound:Z

    .line 842
    new-instance v1, Lorg/abtollc/utils/PreferencesWrapper;

    sget-object v2, Lorg/abtollc/sdk/AbtoPhone;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lorg/abtollc/utils/PreferencesWrapper;-><init>(Landroid/content/Context;)V

    .line 844
    .local v1, "prefs":Lorg/abtollc/utils/PreferencesWrapper;
    const-string v2, "has_been_quit"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/abtollc/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 846
    return-void
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 803
    invoke-direct {p0}, Lorg/abtollc/sdk/AbtoPhone;->isCreated()Z

    move-result v0

    return v0
.end method

.method public isBluetoothConnected()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 967
    iget-object v0, p0, Lorg/abtollc/sdk/AbtoPhone;->mService:Lorg/abtollc/api/ISipService;

    if-eqz v0, :cond_0

    .line 968
    iget-object v0, p0, Lorg/abtollc/sdk/AbtoPhone;->mService:Lorg/abtollc/api/ISipService;

    invoke-interface {v0}, Lorg/abtollc/api/ISipService;->getCurrentMediaState()Lorg/abtollc/api/MediaState;

    move-result-object v0

    iget-boolean v0, v0, Lorg/abtollc/api/MediaState;->isBluetoothScoOn:Z

    .line 971
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIncomingCall(I)Z
    .locals 7
    .param p1, "callId"    # I

    .prologue
    const/4 v3, 0x0

    .line 1398
    :try_start_0
    iget-object v4, p0, Lorg/abtollc/sdk/AbtoPhone;->mService:Lorg/abtollc/api/ISipService;

    invoke-interface {v4}, Lorg/abtollc/api/ISipService;->getCalls()[Lorg/abtollc/api/SipCallSession;

    move-result-object v0

    .line 1399
    .local v0, "calls":[Lorg/abtollc/api/SipCallSession;
    array-length v5, v0

    move v4, v3

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v2, v0, v4

    .line 1400
    .local v2, "existCall":Lorg/abtollc/api/SipCallSession;
    invoke-virtual {v2}, Lorg/abtollc/api/SipCallSession;->getCallId()I

    move-result v6

    if-ne v6, p1, :cond_1

    .line 1401
    invoke-virtual {v2}, Lorg/abtollc/api/SipCallSession;->isIncoming()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 1407
    .end local v0    # "calls":[Lorg/abtollc/api/SipCallSession;
    .end local v2    # "existCall":Lorg/abtollc/api/SipCallSession;
    :cond_0
    :goto_1
    return v3

    .line 1399
    .restart local v0    # "calls":[Lorg/abtollc/api/SipCallSession;
    .restart local v2    # "existCall":Lorg/abtollc/api/SipCallSession;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1404
    .end local v0    # "calls":[Lorg/abtollc/api/SipCallSession;
    .end local v2    # "existCall":Lorg/abtollc/api/SipCallSession;
    :catch_0
    move-exception v1

    .line 1405
    .local v1, "e":Landroid/os/RemoteException;
    const-string v4, "AbtoPhone"

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public isVideoCall()Z
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 1864
    :try_start_0
    iget-object v4, p0, Lorg/abtollc/sdk/AbtoPhone;->mCfg:Lorg/abtollc/sdk/AbtoPhoneCfg;

    invoke-virtual {v4}, Lorg/abtollc/sdk/AbtoPhoneCfg;->isVideoCallEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1865
    iget-object v4, p0, Lorg/abtollc/sdk/AbtoPhone;->mService:Lorg/abtollc/api/ISipService;

    invoke-interface {v4}, Lorg/abtollc/api/ISipService;->getCalls()[Lorg/abtollc/api/SipCallSession;

    move-result-object v0

    .line 1866
    .local v0, "calls":[Lorg/abtollc/api/SipCallSession;
    if-eqz v0, :cond_1

    array-length v4, v0

    if-eqz v4, :cond_1

    .line 1867
    array-length v5, v0

    move v4, v3

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v2, v0, v4

    .line 1868
    .local v2, "session":Lorg/abtollc/api/SipCallSession;
    invoke-virtual {v2}, Lorg/abtollc/api/SipCallSession;->getCallId()I

    move-result v6

    invoke-virtual {p0}, Lorg/abtollc/sdk/AbtoPhone;->getActiveCallId()I

    move-result v7

    if-eq v6, v7, :cond_0

    invoke-virtual {v2}, Lorg/abtollc/api/SipCallSession;->getCallId()I

    move-result v6

    invoke-virtual {p0}, Lorg/abtollc/sdk/AbtoPhone;->getBeforeConfirmedCallId()I

    move-result v7

    if-ne v6, v7, :cond_2

    .line 1869
    :cond_0
    invoke-virtual {v2}, Lorg/abtollc/api/SipCallSession;->mediaHasVideo()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 1879
    .end local v0    # "calls":[Lorg/abtollc/api/SipCallSession;
    .end local v2    # "session":Lorg/abtollc/api/SipCallSession;
    :cond_1
    :goto_1
    return v3

    .line 1867
    .restart local v0    # "calls":[Lorg/abtollc/api/SipCallSession;
    .restart local v2    # "session":Lorg/abtollc/api/SipCallSession;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1874
    .end local v0    # "calls":[Lorg/abtollc/api/SipCallSession;
    .end local v2    # "session":Lorg/abtollc/api/SipCallSession;
    :catch_0
    move-exception v1

    .line 1875
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public muteLocalVideo(Z)V
    .locals 1
    .param p1, "mute"    # Z

    .prologue
    .line 1828
    iput-boolean p1, p0, Lorg/abtollc/sdk/AbtoPhone;->isVideoMute:Z

    .line 1830
    if-eqz p1, :cond_0

    sget-object v0, Lorg/abtollc/jni/pjsua_call_vid_strm_op;->PJSUA_CALL_VID_STRM_STOP_TRANSMIT:Lorg/abtollc/jni/pjsua_call_vid_strm_op;

    .line 1835
    .local v0, "op":Lorg/abtollc/jni/pjsua_call_vid_strm_op;
    :goto_0
    return-void

    .line 1830
    .end local v0    # "op":Lorg/abtollc/jni/pjsua_call_vid_strm_op;
    :cond_0
    sget-object v0, Lorg/abtollc/jni/pjsua_call_vid_strm_op;->PJSUA_CALL_VID_STRM_START_TRANSMIT:Lorg/abtollc/jni/pjsua_call_vid_strm_op;

    goto :goto_0
.end method

.method public playFile(Ljava/lang/String;Lorg/abtollc/sdk/AbtoPhone$PlayFileWay;)V
    .locals 3
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "way"    # Lorg/abtollc/sdk/AbtoPhone$PlayFileWay;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1078
    iget-object v0, p0, Lorg/abtollc/sdk/AbtoPhone;->mService:Lorg/abtollc/api/ISipService;

    if-eqz v0, :cond_0

    .line 1079
    iget-object v0, p0, Lorg/abtollc/sdk/AbtoPhone;->mService:Lorg/abtollc/api/ISipService;

    invoke-virtual {p0}, Lorg/abtollc/sdk/AbtoPhone;->getActiveCallId()I

    move-result v1

    invoke-virtual {p2}, Lorg/abtollc/sdk/AbtoPhone$PlayFileWay;->getValue()I

    move-result v2

    invoke-interface {v0, p1, v1, v2}, Lorg/abtollc/api/ISipService;->playWaveFile(Ljava/lang/String;II)V

    .line 1081
    :cond_0
    return-void
.end method

.method public readCallMediaQuality(IZ)Lorg/abtollc/api/AbtoPhoneMediaQuality;
    .locals 1
    .param p1, "callId"    # I
    .param p2, "isVideo"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1823
    iget-object v0, p0, Lorg/abtollc/sdk/AbtoPhone;->mService:Lorg/abtollc/api/ISipService;

    invoke-interface {v0, p1, p2}, Lorg/abtollc/api/ISipService;->readCallMediaQuality(IZ)Lorg/abtollc/api/AbtoPhoneMediaQuality;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized refreshVideoView()V
    .locals 3

    .prologue
    .line 1886
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/abtollc/sdk/AbtoPhone;->getConfig()Lorg/abtollc/sdk/AbtoPhoneCfg;

    move-result-object v0

    invoke-virtual {v0}, Lorg/abtollc/sdk/AbtoPhoneCfg;->isVideoCallEnabled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 1898
    :goto_0
    monitor-exit p0

    return-void

    .line 1893
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/abtollc/sdk/AbtoPhone;->getActiveCallId()I

    move-result v0

    iget-object v1, p0, Lorg/abtollc/sdk/AbtoPhone;->renderer:Landroid/view/SurfaceView;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/abtollc/service/ABTOSipService;->setVideoWindow(ILjava/lang/Object;Z)V

    .line 1894
    const/4 v0, -0x1

    iget-object v1, p0, Lorg/abtollc/sdk/AbtoPhone;->capturer:Landroid/view/SurfaceView;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lorg/abtollc/service/ABTOSipService;->setVideoWindow(ILjava/lang/Object;Z)V

    .line 1896
    iget-object v0, p0, Lorg/abtollc/sdk/AbtoPhone;->capturerParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1897
    iget-object v0, p0, Lorg/abtollc/sdk/AbtoPhone;->capturerParent:Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/abtollc/sdk/AbtoPhone;->capturer:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1886
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public register()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1230
    iget-object v0, p0, Lorg/abtollc/sdk/AbtoPhone;->mService:Lorg/abtollc/api/ISipService;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/abtollc/sdk/AbtoPhone;->registrationSent:Z

    if-nez v0, :cond_0

    .line 1231
    iget-object v0, p0, Lorg/abtollc/sdk/AbtoPhone;->mService:Lorg/abtollc/api/ISipService;

    invoke-interface {v0}, Lorg/abtollc/api/ISipService;->addAllAccounts()V

    .line 1232
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/abtollc/sdk/AbtoPhone;->registrationSent:Z

    .line 1234
    :cond_0
    return-void
.end method

.method public reinvite()V
    .locals 4

    .prologue
    .line 1412
    :try_start_0
    iget-object v1, p0, Lorg/abtollc/sdk/AbtoPhone;->mService:Lorg/abtollc/api/ISipService;

    invoke-virtual {p0}, Lorg/abtollc/sdk/AbtoPhone;->getActiveCallId()I

    move-result v2

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lorg/abtollc/api/ISipService;->reinvite(IZ)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1417
    :goto_0
    return-void

    .line 1413
    :catch_0
    move-exception v0

    .line 1415
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public rejectCall()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 993
    iget-object v0, p0, Lorg/abtollc/sdk/AbtoPhone;->mService:Lorg/abtollc/api/ISipService;

    invoke-virtual {p0}, Lorg/abtollc/sdk/AbtoPhone;->getActiveCallId()I

    move-result v1

    const/16 v2, 0x1e6

    invoke-interface {v0, v1, v2}, Lorg/abtollc/api/ISipService;->hangup(II)I

    .line 994
    return-void
.end method

.method public removeAllCallLogs()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1690
    sget-object v0, Lorg/abtollc/sdk/AbtoPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lorg/abtollc/sdk/AbtoApplication;

    .line 1691
    invoke-virtual {v0}, Lorg/abtollc/sdk/AbtoApplication;->getContentProvider()Landroid/content/ContentProvider;

    move-result-object v0

    sget-object v1, Lorg/abtollc/api/SipManager;->CALLLOG_URI:Landroid/net/Uri;

    .line 1692
    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1693
    return-void
.end method

.method public removeBuddy(Ljava/lang/String;)V
    .locals 3
    .param p1, "contactUri"    # Ljava/lang/String;

    .prologue
    .line 1248
    iget-object v1, p0, Lorg/abtollc/sdk/AbtoPhone;->mService:Lorg/abtollc/api/ISipService;

    if-eqz v1, :cond_0

    .line 1250
    :try_start_0
    iget-object v1, p0, Lorg/abtollc/sdk/AbtoPhone;->mService:Lorg/abtollc/api/ISipService;

    invoke-interface {v1, p1}, Lorg/abtollc/api/ISipService;->removeBuddy(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1255
    :cond_0
    :goto_0
    return-void

    .line 1251
    :catch_0
    move-exception v0

    .line 1252
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AbtoPhone"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public removeCallLog(J)V
    .locals 3
    .param p1, "id"    # J

    .prologue
    const/4 v2, 0x0

    .line 1683
    sget-object v0, Lorg/abtollc/sdk/AbtoPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lorg/abtollc/sdk/AbtoApplication;

    .line 1684
    invoke-virtual {v0}, Lorg/abtollc/sdk/AbtoApplication;->getContentProvider()Landroid/content/ContentProvider;

    move-result-object v0

    sget-object v1, Lorg/abtollc/api/SipManager;->CALLLOG_ID_URI_BASE:Landroid/net/Uri;

    .line 1685
    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1687
    return-void
.end method

.method public removeMessage(J)V
    .locals 3
    .param p1, "messageId"    # J

    .prologue
    const/4 v2, 0x0

    .line 1485
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 1486
    sget-object v0, Lorg/abtollc/sdk/AbtoPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lorg/abtollc/sdk/AbtoApplication;

    invoke-virtual {v0}, Lorg/abtollc/sdk/AbtoApplication;->getContentProvider()Landroid/content/ContentProvider;

    move-result-object v0

    sget-object v1, Lorg/abtollc/api/SipMessage;->MESSAGE_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1487
    :cond_0
    return-void
.end method

.method public restartSip()V
    .locals 2

    .prologue
    .line 1307
    :try_start_0
    iget-object v1, p0, Lorg/abtollc/sdk/AbtoPhone;->mService:Lorg/abtollc/api/ISipService;

    invoke-interface {v1}, Lorg/abtollc/api/ISipService;->sipStop()V

    .line 1308
    iget-object v1, p0, Lorg/abtollc/sdk/AbtoPhone;->mService:Lorg/abtollc/api/ISipService;

    invoke-interface {v1}, Lorg/abtollc/api/ISipService;->sipStart()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1312
    :goto_0
    return-void

    .line 1309
    :catch_0
    move-exception v0

    .line 1310
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public rotateCapturer(Lorg/abtollc/sdk/AbtoPhone$Rotation;)V
    .locals 2
    .param p1, "degree"    # Lorg/abtollc/sdk/AbtoPhone$Rotation;

    .prologue
    .line 1771
    invoke-virtual {p0}, Lorg/abtollc/sdk/AbtoPhone;->getActiveCallId()I

    move-result v0

    invoke-virtual {p1}, Lorg/abtollc/sdk/AbtoPhone$Rotation;->getValue()I

    move-result v1

    invoke-static {v0, v1}, Lorg/abtollc/jni/pjsua;->vid_set_capturer_rotation(II)I

    .line 1772
    return-void
.end method

.method public rotatePreview(Lorg/abtollc/sdk/AbtoPhone$Rotation;)V
    .locals 2
    .param p1, "degree"    # Lorg/abtollc/sdk/AbtoPhone$Rotation;

    .prologue
    .line 1741
    invoke-virtual {p0}, Lorg/abtollc/sdk/AbtoPhone;->getActiveCallId()I

    move-result v0

    invoke-virtual {p1}, Lorg/abtollc/sdk/AbtoPhone$Rotation;->getValue()I

    move-result v1

    invoke-static {v0, v1}, Lorg/abtollc/jni/pjsua;->vid_set_preview_rotation(II)I

    .line 1755
    return-void
.end method

.method public sendTextMessage(JLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "accountId"    # J
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "toNumber"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1135
    iget-object v0, p0, Lorg/abtollc/sdk/AbtoPhone;->mService:Lorg/abtollc/api/ISipService;

    if-eqz v0, :cond_0

    .line 1136
    iget-object v0, p0, Lorg/abtollc/sdk/AbtoPhone;->mService:Lorg/abtollc/api/ISipService;

    invoke-interface {v0, p3, p4, p1, p2}, Lorg/abtollc/api/ISipService;->sendMessage(Ljava/lang/String;Ljava/lang/String;J)V

    .line 1138
    :cond_0
    return-void
.end method

.method public sendTone(C)V
    .locals 1
    .param p1, "tone"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1161
    sparse-switch p1, :sswitch_data_0

    .line 1219
    :goto_0
    return-void

    .line 1163
    :sswitch_0
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lorg/abtollc/sdk/AbtoPhone;->sendTone(I)V

    goto :goto_0

    .line 1166
    :sswitch_1
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/abtollc/sdk/AbtoPhone;->sendTone(I)V

    goto :goto_0

    .line 1169
    :sswitch_2
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lorg/abtollc/sdk/AbtoPhone;->sendTone(I)V

    goto :goto_0

    .line 1172
    :sswitch_3
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lorg/abtollc/sdk/AbtoPhone;->sendTone(I)V

    goto :goto_0

    .line 1175
    :sswitch_4
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lorg/abtollc/sdk/AbtoPhone;->sendTone(I)V

    goto :goto_0

    .line 1178
    :sswitch_5
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lorg/abtollc/sdk/AbtoPhone;->sendTone(I)V

    goto :goto_0

    .line 1181
    :sswitch_6
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lorg/abtollc/sdk/AbtoPhone;->sendTone(I)V

    goto :goto_0

    .line 1184
    :sswitch_7
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lorg/abtollc/sdk/AbtoPhone;->sendTone(I)V

    goto :goto_0

    .line 1187
    :sswitch_8
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lorg/abtollc/sdk/AbtoPhone;->sendTone(I)V

    goto :goto_0

    .line 1190
    :sswitch_9
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lorg/abtollc/sdk/AbtoPhone;->sendTone(I)V

    goto :goto_0

    .line 1193
    :sswitch_a
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lorg/abtollc/sdk/AbtoPhone;->sendTone(I)V

    goto :goto_0

    .line 1196
    :sswitch_b
    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Lorg/abtollc/sdk/AbtoPhone;->sendTone(I)V

    goto :goto_0

    .line 1200
    :sswitch_c
    const/16 v0, 0x1d

    invoke-virtual {p0, v0}, Lorg/abtollc/sdk/AbtoPhone;->sendTone(I)V

    goto :goto_0

    .line 1204
    :sswitch_d
    const/16 v0, 0x1e

    invoke-virtual {p0, v0}, Lorg/abtollc/sdk/AbtoPhone;->sendTone(I)V

    goto :goto_0

    .line 1208
    :sswitch_e
    const/16 v0, 0x1f

    invoke-virtual {p0, v0}, Lorg/abtollc/sdk/AbtoPhone;->sendTone(I)V

    goto :goto_0

    .line 1212
    :sswitch_f
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lorg/abtollc/sdk/AbtoPhone;->sendTone(I)V

    goto :goto_0

    .line 1216
    :sswitch_10
    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Lorg/abtollc/sdk/AbtoPhone;->sendTone(I)V

    goto :goto_0

    .line 1161
    nop

    :sswitch_data_0
    .sparse-switch
        0x23 -> :sswitch_b
        0x2a -> :sswitch_a
        0x30 -> :sswitch_0
        0x31 -> :sswitch_1
        0x32 -> :sswitch_2
        0x33 -> :sswitch_3
        0x34 -> :sswitch_4
        0x35 -> :sswitch_5
        0x36 -> :sswitch_6
        0x37 -> :sswitch_7
        0x38 -> :sswitch_8
        0x39 -> :sswitch_9
        0x41 -> :sswitch_c
        0x42 -> :sswitch_d
        0x43 -> :sswitch_e
        0x44 -> :sswitch_f
        0x46 -> :sswitch_10
        0x61 -> :sswitch_c
        0x62 -> :sswitch_d
        0x63 -> :sswitch_e
        0x64 -> :sswitch_f
        0x66 -> :sswitch_10
    .end sparse-switch
.end method

.method public sendTone(I)V
    .locals 2
    .param p1, "keyCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1149
    iget-object v0, p0, Lorg/abtollc/sdk/AbtoPhone;->mService:Lorg/abtollc/api/ISipService;

    if-eqz v0, :cond_0

    .line 1150
    iget-object v0, p0, Lorg/abtollc/sdk/AbtoPhone;->mService:Lorg/abtollc/api/ISipService;

    invoke-virtual {p0}, Lorg/abtollc/sdk/AbtoPhone;->getActiveCallId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lorg/abtollc/api/ISipService;->sendDtmf(II)I

    .line 1152
    :cond_0
    return-void
.end method

.method public setBluetoothOn(Z)V
    .locals 1
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 961
    iget-object v0, p0, Lorg/abtollc/sdk/AbtoPhone;->mService:Lorg/abtollc/api/ISipService;

    if-eqz v0, :cond_0

    .line 962
    iget-object v0, p0, Lorg/abtollc/sdk/AbtoPhone;->mService:Lorg/abtollc/api/ISipService;

    invoke-interface {v0, p1}, Lorg/abtollc/api/ISipService;->setBluetoothOn(Z)V

    .line 964
    :cond_0
    return-void
.end method

.method public setCallConnectedListener(Lorg/abtollc/sdk/OnCallConnectedListener;)V
    .locals 0
    .param p1, "mCallConnectedListener"    # Lorg/abtollc/sdk/OnCallConnectedListener;

    .prologue
    .line 691
    iput-object p1, p0, Lorg/abtollc/sdk/AbtoPhone;->mCallConnectedListener:Lorg/abtollc/sdk/OnCallConnectedListener;

    .line 692
    return-void
.end method

.method public setCallDisconnectedListener(Lorg/abtollc/sdk/OnCallDisconnectedListener;)V
    .locals 0
    .param p1, "mCallDisconnectedListener"    # Lorg/abtollc/sdk/OnCallDisconnectedListener;

    .prologue
    .line 700
    iput-object p1, p0, Lorg/abtollc/sdk/AbtoPhone;->mCallDisconnectedListener:Lorg/abtollc/sdk/OnCallDisconnectedListener;

    .line 701
    return-void
.end method

.method public setCallErrorListener(Lorg/abtollc/sdk/OnCallErrorListener;)V
    .locals 0
    .param p1, "mCallErrorListener"    # Lorg/abtollc/sdk/OnCallErrorListener;

    .prologue
    .line 757
    iput-object p1, p0, Lorg/abtollc/sdk/AbtoPhone;->mCallErrorListener:Lorg/abtollc/sdk/OnCallErrorListener;

    .line 758
    return-void
.end method

.method public setCallLogAddedListener(Lorg/abtollc/sdk/OnCallLogAddedListener;)V
    .locals 0
    .param p1, "mCallLogAddedListener"    # Lorg/abtollc/sdk/OnCallLogAddedListener;

    .prologue
    .line 788
    iput-object p1, p0, Lorg/abtollc/sdk/AbtoPhone;->mCallLogAddedListener:Lorg/abtollc/sdk/OnCallLogAddedListener;

    .line 789
    return-void
.end method

.method public setCallTransferListener(Lorg/abtollc/sdk/OnCallTransferListener;)V
    .locals 0
    .param p1, "callTransferListener"    # Lorg/abtollc/sdk/OnCallTransferListener;

    .prologue
    .line 792
    iput-object p1, p0, Lorg/abtollc/sdk/AbtoPhone;->mCallTransferListener:Lorg/abtollc/sdk/OnCallTransferListener;

    .line 793
    return-void
.end method

.method public setInMessageListener(Lorg/abtollc/sdk/OnTextMessageListener;)V
    .locals 0
    .param p1, "mInMessageListener"    # Lorg/abtollc/sdk/OnTextMessageListener;

    .prologue
    .line 722
    iput-object p1, p0, Lorg/abtollc/sdk/AbtoPhone;->mInMessageListener:Lorg/abtollc/sdk/OnTextMessageListener;

    .line 723
    return-void
.end method

.method public setIncomingCallListener(Lorg/abtollc/sdk/OnIncomingCallListener;)V
    .locals 0
    .param p1, "mIncomingCallListener"    # Lorg/abtollc/sdk/OnIncomingCallListener;

    .prologue
    .line 682
    iput-object p1, p0, Lorg/abtollc/sdk/AbtoPhone;->mIncomingCallListener:Lorg/abtollc/sdk/OnIncomingCallListener;

    .line 683
    return-void
.end method

.method public setInitializeListener(Lorg/abtollc/sdk/OnInitializeListener;)V
    .locals 0
    .param p1, "mInitializeListener"    # Lorg/abtollc/sdk/OnInitializeListener;

    .prologue
    .line 661
    iput-object p1, p0, Lorg/abtollc/sdk/AbtoPhone;->mInitializeListener:Lorg/abtollc/sdk/OnInitializeListener;

    .line 662
    return-void
.end method

.method public setMessageRead(Lorg/abtollc/api/SipMessage;Z)V
    .locals 10
    .param p1, "message"    # Lorg/abtollc/api/SipMessage;
    .param p2, "read"    # Z

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1604
    if-eqz p1, :cond_0

    .line 1605
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1606
    .local v1, "vals":Landroid/content/ContentValues;
    const-string v6, "read"

    if-eqz p2, :cond_1

    move v3, v4

    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1607
    const-string v3, "%1$s=? AND %2$s=? AND %3$s=?"

    new-array v6, v9, [Ljava/lang/Object;

    const-string v7, "full_sender"

    aput-object v7, v6, v5

    const-string v7, "receiver"

    aput-object v7, v6, v4

    const-string v7, "date"

    aput-object v7, v6, v8

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1609
    .local v2, "where":Ljava/lang/String;
    new-array v0, v9, [Ljava/lang/String;

    invoke-virtual {p1}, Lorg/abtollc/api/SipMessage;->getFullFrom()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v5

    invoke-virtual {p1}, Lorg/abtollc/api/SipMessage;->getTo()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/abtollc/api/SipMessage;->getDate()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v8

    .line 1610
    .local v0, "selectionArgs":[Ljava/lang/String;
    sget-object v3, Lorg/abtollc/sdk/AbtoPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lorg/abtollc/sdk/AbtoApplication;

    invoke-virtual {v3}, Lorg/abtollc/sdk/AbtoApplication;->getContentProvider()Landroid/content/ContentProvider;

    move-result-object v3

    sget-object v4, Lorg/abtollc/api/SipMessage;->MESSAGE_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v1, v2, v0}, Landroid/content/ContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1612
    .end local v0    # "selectionArgs":[Ljava/lang/String;
    .end local v1    # "vals":Landroid/content/ContentValues;
    .end local v2    # "where":Ljava/lang/String;
    :cond_0
    return-void

    .restart local v1    # "vals":Landroid/content/ContentValues;
    :cond_1
    move v3, v5

    .line 1606
    goto :goto_0
.end method

.method public setMicrophoneLevel(F)V
    .locals 3
    .param p1, "level"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1782
    iget-object v1, p0, Lorg/abtollc/sdk/AbtoPhone;->mService:Lorg/abtollc/api/ISipService;

    const/4 v2, 0x0

    invoke-interface {v1, v2, p1}, Lorg/abtollc/api/ISipService;->confAdjustRxLevel(IF)V

    .line 1784
    invoke-virtual {p0}, Lorg/abtollc/sdk/AbtoPhone;->isBluetoothConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "snd_bt_mic_level"

    .line 1785
    .local v0, "key":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lorg/abtollc/sdk/AbtoPhone;->mCfg:Lorg/abtollc/sdk/AbtoPhoneCfg;

    invoke-virtual {v1}, Lorg/abtollc/sdk/AbtoPhoneCfg;->getConfigService()Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lorg/abtollc/utils/PreferencesProviderWrapper;->setPreferenceFloatValue(Ljava/lang/String;F)V

    .line 1786
    return-void

    .line 1784
    .end local v0    # "key":Ljava/lang/String;
    :cond_0
    const-string v0, "snd_mic_level"

    goto :goto_0
.end method

.method public setMicrophoneMute(Z)V
    .locals 1
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1296
    iget-object v0, p0, Lorg/abtollc/sdk/AbtoPhone;->mService:Lorg/abtollc/api/ISipService;

    if-eqz v0, :cond_0

    .line 1297
    iget-object v0, p0, Lorg/abtollc/sdk/AbtoPhone;->mService:Lorg/abtollc/api/ISipService;

    invoke-interface {v0, p1}, Lorg/abtollc/api/ISipService;->setMicrophoneMute(Z)V

    .line 1299
    :cond_0
    return-void
.end method

.method public setNetworkEventListener(Lorg/abtollc/sdk/OnNetworkEventListener;)V
    .locals 0
    .param p1, "mNetworkEventListener"    # Lorg/abtollc/sdk/OnNetworkEventListener;

    .prologue
    .line 736
    iput-object p1, p0, Lorg/abtollc/sdk/AbtoPhone;->mNetworkEventListener:Lorg/abtollc/sdk/OnNetworkEventListener;

    .line 737
    return-void
.end method

.method public setOnCallHeldListener(Lorg/abtollc/sdk/OnCallHeldListener;)V
    .locals 0
    .param p1, "mOnCallHeldListener"    # Lorg/abtollc/sdk/OnCallHeldListener;

    .prologue
    .line 710
    iput-object p1, p0, Lorg/abtollc/sdk/AbtoPhone;->mOnCallHeldListener:Lorg/abtollc/sdk/OnCallHeldListener;

    .line 711
    return-void
.end method

.method public setPlayFinishedListener(Lorg/abtollc/sdk/OnPlayFinishedListener;)V
    .locals 0
    .param p1, "mPlayFinishedListener"    # Lorg/abtollc/sdk/OnPlayFinishedListener;

    .prologue
    .line 746
    iput-object p1, p0, Lorg/abtollc/sdk/AbtoPhone;->mPlayFinishedListener:Lorg/abtollc/sdk/OnPlayFinishedListener;

    .line 747
    return-void
.end method

.method public setPresence(JLorg/abtollc/api/SipManager$PresenceStatus;Ljava/lang/String;)V
    .locals 3
    .param p1, "accId"    # J
    .param p3, "status"    # Lorg/abtollc/api/SipManager$PresenceStatus;
    .param p4, "statusText"    # Ljava/lang/String;

    .prologue
    .line 1258
    iget-object v1, p0, Lorg/abtollc/sdk/AbtoPhone;->mService:Lorg/abtollc/api/ISipService;

    if-eqz v1, :cond_0

    .line 1260
    :try_start_0
    iget-object v1, p0, Lorg/abtollc/sdk/AbtoPhone;->mService:Lorg/abtollc/api/ISipService;

    invoke-virtual {p3}, Lorg/abtollc/api/SipManager$PresenceStatus;->ordinal()I

    move-result v2

    invoke-interface {v1, v2, p4, p1, p2}, Lorg/abtollc/api/ISipService;->setPresence(ILjava/lang/String;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1265
    :cond_0
    :goto_0
    return-void

    .line 1261
    :catch_0
    move-exception v0

    .line 1262
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AbtoPhone"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setPresenceListener(Lorg/abtollc/sdk/OnPresenceListener;)V
    .locals 0
    .param p1, "presenceListener"    # Lorg/abtollc/sdk/OnPresenceListener;

    .prologue
    .line 771
    iput-object p1, p0, Lorg/abtollc/sdk/AbtoPhone;->mPresenceListener:Lorg/abtollc/sdk/OnPresenceListener;

    .line 772
    return-void
.end method

.method public setRegistrationStateListener(Lorg/abtollc/sdk/OnRegistrationListener;)V
    .locals 0
    .param p1, "registrationStateListener"    # Lorg/abtollc/sdk/OnRegistrationListener;

    .prologue
    .line 672
    iput-object p1, p0, Lorg/abtollc/sdk/AbtoPhone;->mRegistrationListener:Lorg/abtollc/sdk/OnRegistrationListener;

    .line 673
    return-void
.end method

.method public setRemoteAlertingListener(Lorg/abtollc/sdk/OnRemoteAlertingListener;)V
    .locals 0
    .param p1, "mRemoteAlertingListener"    # Lorg/abtollc/sdk/OnRemoteAlertingListener;

    .prologue
    .line 767
    iput-object p1, p0, Lorg/abtollc/sdk/AbtoPhone;->mRemoteAlertingListener:Lorg/abtollc/sdk/OnRemoteAlertingListener;

    .line 768
    return-void
.end method

.method public setSendingVideo(Z)V
    .locals 4
    .param p1, "send"    # Z

    .prologue
    .line 1844
    invoke-virtual {p0}, Lorg/abtollc/sdk/AbtoPhone;->getConfig()Lorg/abtollc/sdk/AbtoPhoneCfg;

    move-result-object v2

    invoke-virtual {v2}, Lorg/abtollc/sdk/AbtoPhoneCfg;->isVideoCallEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1855
    :goto_0
    return-void

    .line 1847
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1848
    .local v1, "options":Landroid/os/Bundle;
    const-string v2, "opt_call_video"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1851
    :try_start_0
    iget-object v2, p0, Lorg/abtollc/sdk/AbtoPhone;->mService:Lorg/abtollc/api/ISipService;

    invoke-virtual {p0}, Lorg/abtollc/sdk/AbtoPhone;->getActiveCallId()I

    move-result v3

    invoke-interface {v2, v3, v1}, Lorg/abtollc/api/ISipService;->updateCallOptions(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1852
    :catch_0
    move-exception v0

    .line 1853
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setSpeakerLevel(F)V
    .locals 3
    .param p1, "level"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1775
    iget-object v1, p0, Lorg/abtollc/sdk/AbtoPhone;->mService:Lorg/abtollc/api/ISipService;

    const/4 v2, 0x0

    invoke-interface {v1, v2, p1}, Lorg/abtollc/api/ISipService;->confAdjustTxLevel(IF)V

    .line 1777
    invoke-virtual {p0}, Lorg/abtollc/sdk/AbtoPhone;->isBluetoothConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "snd_bt_speaker_level"

    .line 1778
    .local v0, "key":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lorg/abtollc/sdk/AbtoPhone;->mCfg:Lorg/abtollc/sdk/AbtoPhoneCfg;

    invoke-virtual {v1}, Lorg/abtollc/sdk/AbtoPhoneCfg;->getConfigService()Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lorg/abtollc/utils/PreferencesProviderWrapper;->setPreferenceFloatValue(Ljava/lang/String;F)V

    .line 1779
    return-void

    .line 1777
    .end local v0    # "key":Ljava/lang/String;
    :cond_0
    const-string v0, "snd_speaker_level"

    goto :goto_0
.end method

.method public setSpeakerphoneOn(Z)V
    .locals 1
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1285
    iget-object v0, p0, Lorg/abtollc/sdk/AbtoPhone;->mService:Lorg/abtollc/api/ISipService;

    if-eqz v0, :cond_0

    .line 1286
    iget-object v0, p0, Lorg/abtollc/sdk/AbtoPhone;->mService:Lorg/abtollc/api/ISipService;

    invoke-interface {v0, p1}, Lorg/abtollc/api/ISipService;->setSpeakerphoneOn(Z)V

    .line 1288
    :cond_0
    return-void
.end method

.method public setTextMessageStatusListener(Lorg/abtollc/sdk/OnTextMessageStatusListener;)V
    .locals 0
    .param p1, "onTextMessageStatusListener"    # Lorg/abtollc/sdk/OnTextMessageStatusListener;

    .prologue
    .line 726
    iput-object p1, p0, Lorg/abtollc/sdk/AbtoPhone;->mTextMessageStatusListener:Lorg/abtollc/sdk/OnTextMessageStatusListener;

    .line 727
    return-void
.end method

.method public setToneReceivedListener(Lorg/abtollc/sdk/OnToneReceivedListener;)V
    .locals 0
    .param p1, "mToneReceivedListener"    # Lorg/abtollc/sdk/OnToneReceivedListener;

    .prologue
    .line 781
    iput-object p1, p0, Lorg/abtollc/sdk/AbtoPhone;->mToneReceivedListener:Lorg/abtollc/sdk/OnToneReceivedListener;

    .line 782
    return-void
.end method

.method public setVideoWindows(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V
    .locals 6
    .param p1, "capturer"    # Landroid/view/ViewGroup;
    .param p2, "renderer"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x1

    .line 1703
    invoke-virtual {p0}, Lorg/abtollc/sdk/AbtoPhone;->getConfig()Lorg/abtollc/sdk/AbtoPhoneCfg;

    move-result-object v0

    invoke-virtual {v0}, Lorg/abtollc/sdk/AbtoPhoneCfg;->isVideoCallEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1733
    :goto_0
    return-void

    .line 1706
    :cond_0
    iput-object p1, p0, Lorg/abtollc/sdk/AbtoPhone;->capturerParent:Landroid/view/ViewGroup;

    .line 1707
    iput-object p2, p0, Lorg/abtollc/sdk/AbtoPhone;->rendererParent:Landroid/view/ViewGroup;

    .line 1709
    iget-object v0, p0, Lorg/abtollc/sdk/AbtoPhone;->rendererParent:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 1710
    sget-object v0, Lorg/abtollc/sdk/AbtoPhone;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lorg/webrtc/videoengine/ViERenderer;->CreateRenderer(Landroid/content/Context;Z)Landroid/view/SurfaceView;

    move-result-object v0

    iput-object v0, p0, Lorg/abtollc/sdk/AbtoPhone;->renderer:Landroid/view/SurfaceView;

    .line 1712
    iget-object v0, p0, Lorg/abtollc/sdk/AbtoPhone;->renderer:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 1714
    iget-object v0, p0, Lorg/abtollc/sdk/AbtoPhone;->rendererParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1715
    iget-object v0, p0, Lorg/abtollc/sdk/AbtoPhone;->rendererParent:Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/abtollc/sdk/AbtoPhone;->renderer:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1717
    invoke-virtual {p0}, Lorg/abtollc/sdk/AbtoPhone;->getActiveCallId()I

    move-result v0

    iget-object v1, p0, Lorg/abtollc/sdk/AbtoPhone;->renderer:Landroid/view/SurfaceView;

    invoke-static {v0, v1, v4}, Lorg/abtollc/service/ABTOSipService;->setVideoWindow(ILjava/lang/Object;Z)V

    .line 1723
    :goto_1
    iget-object v0, p0, Lorg/abtollc/sdk/AbtoPhone;->capturerParent:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 1724
    sget-object v0, Lorg/abtollc/sdk/AbtoPhone;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/webrtc/videoengine/ViERenderer;->CreateLocalRenderer(Landroid/content/Context;)Landroid/view/SurfaceView;

    move-result-object v0

    iput-object v0, p0, Lorg/abtollc/sdk/AbtoPhone;->capturer:Landroid/view/SurfaceView;

    .line 1726
    iget-object v0, p0, Lorg/abtollc/sdk/AbtoPhone;->capturerParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1727
    iget-object v0, p0, Lorg/abtollc/sdk/AbtoPhone;->capturerParent:Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/abtollc/sdk/AbtoPhone;->capturer:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1729
    iget-object v0, p0, Lorg/abtollc/sdk/AbtoPhone;->capturer:Landroid/view/SurfaceView;

    invoke-static {v3, v0, v2}, Lorg/abtollc/service/ABTOSipService;->setVideoWindow(ILjava/lang/Object;Z)V

    goto :goto_0

    .line 1720
    :cond_1
    invoke-virtual {p0}, Lorg/abtollc/sdk/AbtoPhone;->getActiveCallId()I

    move-result v0

    invoke-static {v0, v5, v4}, Lorg/abtollc/service/ABTOSipService;->setVideoWindow(ILjava/lang/Object;Z)V

    goto :goto_1

    .line 1731
    :cond_2
    invoke-static {v3, v5, v2}, Lorg/abtollc/service/ABTOSipService;->setVideoWindow(ILjava/lang/Object;Z)V

    goto :goto_0
.end method

.method public setZrtpEventHandler(Lorg/abtollc/sdk/ZRTPEventHandler;)V
    .locals 0
    .param p1, "zrtpEventHandler"    # Lorg/abtollc/sdk/ZRTPEventHandler;

    .prologue
    .line 796
    iput-object p1, p0, Lorg/abtollc/sdk/AbtoPhone;->mZrtpEventHandler:Lorg/abtollc/sdk/ZRTPEventHandler;

    .line 797
    return-void
.end method

.method public startCall(Ljava/lang/String;J)V
    .locals 2
    .param p1, "destination"    # Ljava/lang/String;
    .param p2, "accountId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 860
    iget-object v0, p0, Lorg/abtollc/sdk/AbtoPhone;->mService:Lorg/abtollc/api/ISipService;

    if-nez v0, :cond_0

    .line 864
    :goto_0
    return-void

    .line 863
    :cond_0
    iget-object v0, p0, Lorg/abtollc/sdk/AbtoPhone;->mService:Lorg/abtollc/api/ISipService;

    invoke-interface {v0, p1, p2, p3}, Lorg/abtollc/api/ISipService;->makeCall(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method public startRecording(Ljava/lang/String;)V
    .locals 2
    .param p1, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1098
    iget-object v0, p0, Lorg/abtollc/sdk/AbtoPhone;->mService:Lorg/abtollc/api/ISipService;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/abtollc/sdk/AbtoPhone;->isRecording:Z

    if-nez v0, :cond_0

    .line 1099
    iget-object v0, p0, Lorg/abtollc/sdk/AbtoPhone;->mService:Lorg/abtollc/api/ISipService;

    invoke-virtual {p0}, Lorg/abtollc/sdk/AbtoPhone;->getActiveCallId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lorg/abtollc/api/ISipService;->startRecording(ILjava/lang/String;)V

    .line 1100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/abtollc/sdk/AbtoPhone;->isRecording:Z

    .line 1102
    :cond_0
    return-void
.end method

.method startTransport()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 599
    iget-object v0, p0, Lorg/abtollc/sdk/AbtoPhone;->mService:Lorg/abtollc/api/ISipService;

    invoke-interface {v0}, Lorg/abtollc/api/ISipService;->createTransports()V

    .line 600
    return-void
.end method

.method public startVideoCall(Ljava/lang/String;J)V
    .locals 4
    .param p1, "destination"    # Ljava/lang/String;
    .param p2, "accId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 904
    iget-object v1, p0, Lorg/abtollc/sdk/AbtoPhone;->mService:Lorg/abtollc/api/ISipService;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/abtollc/sdk/AbtoPhone;->getConfig()Lorg/abtollc/sdk/AbtoPhoneCfg;

    move-result-object v1

    invoke-virtual {v1}, Lorg/abtollc/sdk/AbtoPhoneCfg;->isVideoCallEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 910
    :cond_0
    :goto_0
    return-void

    .line 907
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 908
    .local v0, "options":Landroid/os/Bundle;
    const-string v1, "opt_call_video"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 909
    iget-object v1, p0, Lorg/abtollc/sdk/AbtoPhone;->mService:Lorg/abtollc/api/ISipService;

    invoke-interface {v1, p1, p2, p3, v0}, Lorg/abtollc/api/ISipService;->makeCallWithOptions(Ljava/lang/String;JLandroid/os/Bundle;)V

    goto :goto_0
.end method

.method public stopPlayback()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1087
    iget-object v0, p0, Lorg/abtollc/sdk/AbtoPhone;->mService:Lorg/abtollc/api/ISipService;

    if-eqz v0, :cond_0

    .line 1088
    iget-object v0, p0, Lorg/abtollc/sdk/AbtoPhone;->mService:Lorg/abtollc/api/ISipService;

    invoke-virtual {p0}, Lorg/abtollc/sdk/AbtoPhone;->getActiveCallId()I

    move-result v1

    invoke-interface {v0, v1}, Lorg/abtollc/api/ISipService;->stopWaveFile(I)V

    .line 1090
    :cond_0
    return-void
.end method

.method public stopRecording()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1110
    iget-object v0, p0, Lorg/abtollc/sdk/AbtoPhone;->mService:Lorg/abtollc/api/ISipService;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/abtollc/sdk/AbtoPhone;->isRecording:Z

    if-eqz v0, :cond_0

    .line 1111
    iget-object v0, p0, Lorg/abtollc/sdk/AbtoPhone;->mService:Lorg/abtollc/api/ISipService;

    invoke-virtual {p0}, Lorg/abtollc/sdk/AbtoPhone;->getActiveCallId()I

    move-result v1

    invoke-interface {v0, v1}, Lorg/abtollc/api/ISipService;->stopRecording(I)V

    .line 1112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/abtollc/sdk/AbtoPhone;->isRecording:Z

    .line 1114
    :cond_0
    return-void
.end method

.method public unregister()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1273
    iget-object v0, p0, Lorg/abtollc/sdk/AbtoPhone;->mService:Lorg/abtollc/api/ISipService;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/abtollc/sdk/AbtoPhone;->registrationSent:Z

    if-nez v0, :cond_0

    .line 1274
    iget-object v0, p0, Lorg/abtollc/sdk/AbtoPhone;->mService:Lorg/abtollc/api/ISipService;

    invoke-interface {v0}, Lorg/abtollc/api/ISipService;->removeAllAccounts()V

    .line 1275
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/abtollc/sdk/AbtoPhone;->registrationSent:Z

    .line 1277
    :cond_0
    return-void
.end method
