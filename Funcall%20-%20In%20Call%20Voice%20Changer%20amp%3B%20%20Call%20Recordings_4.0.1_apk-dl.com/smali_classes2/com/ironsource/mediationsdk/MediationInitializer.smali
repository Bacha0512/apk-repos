.class Lcom/ironsource/mediationsdk/MediationInitializer;
.super Ljava/lang/Object;
.source "MediationInitializer.java"

# interfaces
.implements Lcom/ironsource/environment/NetworkStateReceiver$NetworkStateReceiverListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/mediationsdk/MediationInitializer$InitRunnable;,
        Lcom/ironsource/mediationsdk/MediationInitializer$OnMediationInitializationListener;,
        Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/ironsource/mediationsdk/MediationInitializer;


# instance fields
.field private final GENERAL_PROPERTIES_APP_KEY:Ljava/lang/String;

.field private final GENERAL_PROPERTIES_USER_ID:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private initRunnable:Lcom/ironsource/mediationsdk/MediationInitializer$InitRunnable;

.field private mActivity:Landroid/app/Activity;

.field private mAppKey:Ljava/lang/String;

.field private mAtomicShouldPerformInit:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mCountDownTimer:Landroid/os/CountDownTimer;

.field private mDidReportInitialAvailability:Z

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mInitStatus:Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

.field private mIsRevived:Z

.field private mListenForInit:Z

.field private mNetworkStateReceiver:Lcom/ironsource/environment/NetworkStateReceiver;

.field private mOnMediationInitializationListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ironsource/mediationsdk/MediationInitializer$OnMediationInitializationListener;",
            ">;"
        }
    .end annotation
.end field

.field private mRetryAvailabilityLimit:I

.field private mRetryCounter:I

.field private mRetryDelay:I

.field private mRetryGrowLimit:I

.field private mRetryLimit:I

.field private mSegmentListener:Lcom/ironsource/mediationsdk/sdk/SegmentListener;

.field private mServerResponseWrapper:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

.field private mUserId:Ljava/lang/String;

.field private mUserIdType:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const-string v0, "userId"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->GENERAL_PROPERTIES_USER_ID:Ljava/lang/String;

    .line 85
    const-string v0, "appKey"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->GENERAL_PROPERTIES_APP_KEY:Ljava/lang/String;

    .line 86
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->TAG:Ljava/lang/String;

    .line 95
    iput-boolean v2, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mDidReportInitialAvailability:Z

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mHandlerThread:Landroid/os/HandlerThread;

    .line 100
    iput-boolean v2, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mListenForInit:Z

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mOnMediationInitializationListeners:Ljava/util/List;

    .line 123
    new-instance v0, Lcom/ironsource/mediationsdk/MediationInitializer$1;

    invoke-direct {v0, p0}, Lcom/ironsource/mediationsdk/MediationInitializer$1;-><init>(Lcom/ironsource/mediationsdk/MediationInitializer;)V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->initRunnable:Lcom/ironsource/mediationsdk/MediationInitializer$InitRunnable;

    .line 69
    sget-object v0, Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;->NOT_INIT:Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    iput-object v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mInitStatus:Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    .line 70
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "IronSourceInitiatorHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mHandlerThread:Landroid/os/HandlerThread;

    .line 71
    iget-object v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 72
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mHandler:Landroid/os/Handler;

    .line 74
    iput v3, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mRetryDelay:I

    .line 75
    iput v2, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mRetryCounter:I

    .line 76
    const/16 v0, 0x3e

    iput v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mRetryLimit:I

    .line 77
    const/16 v0, 0xc

    iput v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mRetryGrowLimit:I

    .line 78
    const/4 v0, 0x5

    iput v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mRetryAvailabilityLimit:I

    .line 80
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mAtomicShouldPerformInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 81
    iput-boolean v2, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mIsRevived:Z

    .line 82
    return-void
.end method

.method static synthetic access$000(Lcom/ironsource/mediationsdk/MediationInitializer;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/ironsource/mediationsdk/MediationInitializer;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mUserId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/ironsource/mediationsdk/MediationInitializer;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/ironsource/mediationsdk/MediationInitializer;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mUserId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/ironsource/mediationsdk/MediationInitializer;Ljava/lang/String;)Lcom/ironsource/mediationsdk/config/ConfigValidationResult;
    .locals 1
    .param p0, "x0"    # Lcom/ironsource/mediationsdk/MediationInitializer;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/MediationInitializer;->validateUserId(Ljava/lang/String;)Lcom/ironsource/mediationsdk/config/ConfigValidationResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/ironsource/mediationsdk/MediationInitializer;)Lcom/ironsource/mediationsdk/sdk/SegmentListener;
    .locals 1
    .param p0, "x0"    # Lcom/ironsource/mediationsdk/MediationInitializer;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mSegmentListener:Lcom/ironsource/mediationsdk/sdk/SegmentListener;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/ironsource/mediationsdk/MediationInitializer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/ironsource/mediationsdk/MediationInitializer;

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mDidReportInitialAvailability:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/ironsource/mediationsdk/MediationInitializer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/ironsource/mediationsdk/MediationInitializer;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mDidReportInitialAvailability:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/ironsource/mediationsdk/MediationInitializer;)I
    .locals 1
    .param p0, "x0"    # Lcom/ironsource/mediationsdk/MediationInitializer;

    .prologue
    .line 33
    iget v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mRetryCounter:I

    return v0
.end method

.method static synthetic access$1208(Lcom/ironsource/mediationsdk/MediationInitializer;)I
    .locals 2
    .param p0, "x0"    # Lcom/ironsource/mediationsdk/MediationInitializer;

    .prologue
    .line 33
    iget v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mRetryCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mRetryCounter:I

    return v0
.end method

.method static synthetic access$1300(Lcom/ironsource/mediationsdk/MediationInitializer;)I
    .locals 1
    .param p0, "x0"    # Lcom/ironsource/mediationsdk/MediationInitializer;

    .prologue
    .line 33
    iget v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mRetryLimit:I

    return v0
.end method

.method static synthetic access$1402(Lcom/ironsource/mediationsdk/MediationInitializer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/ironsource/mediationsdk/MediationInitializer;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mIsRevived:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/ironsource/mediationsdk/MediationInitializer;)I
    .locals 1
    .param p0, "x0"    # Lcom/ironsource/mediationsdk/MediationInitializer;

    .prologue
    .line 33
    iget v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mRetryDelay:I

    return v0
.end method

.method static synthetic access$1502(Lcom/ironsource/mediationsdk/MediationInitializer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/ironsource/mediationsdk/MediationInitializer;
    .param p1, "x1"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mRetryDelay:I

    return p1
.end method

.method static synthetic access$1600(Lcom/ironsource/mediationsdk/MediationInitializer;)I
    .locals 1
    .param p0, "x0"    # Lcom/ironsource/mediationsdk/MediationInitializer;

    .prologue
    .line 33
    iget v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mRetryGrowLimit:I

    return v0
.end method

.method static synthetic access$1700(Lcom/ironsource/mediationsdk/MediationInitializer;)I
    .locals 1
    .param p0, "x0"    # Lcom/ironsource/mediationsdk/MediationInitializer;

    .prologue
    .line 33
    iget v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mRetryAvailabilityLimit:I

    return v0
.end method

.method static synthetic access$1802(Lcom/ironsource/mediationsdk/MediationInitializer;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;
    .locals 0
    .param p0, "x0"    # Lcom/ironsource/mediationsdk/MediationInitializer;
    .param p1, "x1"    # Landroid/os/CountDownTimer;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mCountDownTimer:Landroid/os/CountDownTimer;

    return-object p1
.end method

.method static synthetic access$200(Lcom/ironsource/mediationsdk/MediationInitializer;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/ironsource/mediationsdk/MediationInitializer;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mUserIdType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/ironsource/mediationsdk/MediationInitializer;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/ironsource/mediationsdk/MediationInitializer;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mUserIdType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/ironsource/mediationsdk/MediationInitializer;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/ironsource/mediationsdk/MediationInitializer;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/ironsource/mediationsdk/MediationInitializer;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/ironsource/mediationsdk/MediationInitializer;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mAppKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/ironsource/mediationsdk/MediationInitializer;)Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/ironsource/mediationsdk/MediationInitializer;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mServerResponseWrapper:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    return-object v0
.end method

.method static synthetic access$502(Lcom/ironsource/mediationsdk/MediationInitializer;Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;)Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;
    .locals 0
    .param p0, "x0"    # Lcom/ironsource/mediationsdk/MediationInitializer;
    .param p1, "x1"    # Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mServerResponseWrapper:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    return-object p1
.end method

.method static synthetic access$600(Lcom/ironsource/mediationsdk/MediationInitializer;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/ironsource/mediationsdk/MediationInitializer;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/ironsource/mediationsdk/MediationInitializer;Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;)V
    .locals 0
    .param p0, "x0"    # Lcom/ironsource/mediationsdk/MediationInitializer;
    .param p1, "x1"    # Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/MediationInitializer;->setInitStatus(Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;)V

    return-void
.end method

.method static synthetic access$800(Lcom/ironsource/mediationsdk/MediationInitializer;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/ironsource/mediationsdk/MediationInitializer;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mOnMediationInitializationListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$900(Lcom/ironsource/mediationsdk/MediationInitializer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/ironsource/mediationsdk/MediationInitializer;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/MediationInitializer;->wasInitRevived()Z

    move-result v0

    return v0
.end method

.method public static declared-synchronized getInstance()Lcom/ironsource/mediationsdk/MediationInitializer;
    .locals 2

    .prologue
    .line 61
    const-class v1, Lcom/ironsource/mediationsdk/MediationInitializer;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ironsource/mediationsdk/MediationInitializer;->sInstance:Lcom/ironsource/mediationsdk/MediationInitializer;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lcom/ironsource/mediationsdk/MediationInitializer;

    invoke-direct {v0}, Lcom/ironsource/mediationsdk/MediationInitializer;-><init>()V

    sput-object v0, Lcom/ironsource/mediationsdk/MediationInitializer;->sInstance:Lcom/ironsource/mediationsdk/MediationInitializer;

    .line 64
    :cond_0
    sget-object v0, Lcom/ironsource/mediationsdk/MediationInitializer;->sInstance:Lcom/ironsource/mediationsdk/MediationInitializer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized setInitStatus(Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;)V
    .locals 4
    .param p1, "status"    # Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    .prologue
    .line 118
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setInitStatus(old status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mInitStatus:Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", new status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 120
    iput-object p1, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mInitStatus:Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    monitor-exit p0

    return-void

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private validateLength(Ljava/lang/String;II)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "minLength"    # I
    .param p3, "maxLength"    # I

    .prologue
    const/4 v0, 0x0

    .line 335
    if-nez p1, :cond_1

    .line 338
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, p3, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private validateUserId(Ljava/lang/String;)Lcom/ironsource/mediationsdk/config/ConfigValidationResult;
    .locals 4
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 316
    new-instance v1, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;

    invoke-direct {v1}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;-><init>()V

    .line 318
    .local v1, "result":Lcom/ironsource/mediationsdk/config/ConfigValidationResult;
    if-eqz p1, :cond_1

    .line 319
    const/4 v2, 0x1

    const/16 v3, 0x40

    invoke-direct {p0, p1, v2, v3}, Lcom/ironsource/mediationsdk/MediationInitializer;->validateLength(Ljava/lang/String;II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 320
    const-string v2, "userId"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInvalidCredentialsError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    .line 322
    .local v0, "error":Lcom/ironsource/mediationsdk/logger/IronSourceError;
    invoke-virtual {v1, v0}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 330
    .end local v0    # "error":Lcom/ironsource/mediationsdk/logger/IronSourceError;
    :cond_0
    :goto_0
    return-object v1

    .line 325
    :cond_1
    const-string v2, "userId"

    const-string v3, "it\'s missing"

    invoke-static {v2, p1, v3}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInvalidCredentialsError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    .line 327
    .restart local v0    # "error":Lcom/ironsource/mediationsdk/logger/IronSourceError;
    invoke-virtual {v1, v0}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_0
.end method

.method private wasInitRevived()Z
    .locals 1

    .prologue
    .line 288
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mIsRevived:Z

    return v0
.end method


# virtual methods
.method public addMediationInitializationListener(Lcom/ironsource/mediationsdk/MediationInitializer$OnMediationInitializationListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/ironsource/mediationsdk/MediationInitializer$OnMediationInitializationListener;

    .prologue
    .line 296
    if-nez p1, :cond_0

    .line 300
    :goto_0
    return-void

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mOnMediationInitializationListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public declared-synchronized getCurrentInitStatus()Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;
    .locals 1

    .prologue
    .line 292
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mInitStatus:Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public varargs declared-synchronized init(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "userId"    # Ljava/lang/String;
    .param p4, "adUnits"    # [Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    .prologue
    .line 225
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mAtomicShouldPerformInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mAtomicShouldPerformInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 226
    sget-object v1, Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;->INIT_IN_PROGRESS:Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/MediationInitializer;->setInitStatus(Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;)V

    .line 227
    iput-object p1, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mActivity:Landroid/app/Activity;

    .line 228
    iput-object p3, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mUserId:Ljava/lang/String;

    .line 229
    iput-object p2, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mAppKey:Ljava/lang/String;

    .line 233
    invoke-static {p1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 235
    iget-object v1, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->initRunnable:Lcom/ironsource/mediationsdk/MediationInitializer$InitRunnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    :goto_0
    monitor-exit p0

    return-void

    .line 237
    :cond_0
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mListenForInit:Z

    .line 238
    iget-object v1, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mNetworkStateReceiver:Lcom/ironsource/environment/NetworkStateReceiver;

    if-nez v1, :cond_1

    .line 239
    new-instance v1, Lcom/ironsource/environment/NetworkStateReceiver;

    invoke-direct {v1, p1, p0}, Lcom/ironsource/environment/NetworkStateReceiver;-><init>(Landroid/content/Context;Lcom/ironsource/environment/NetworkStateReceiver$NetworkStateReceiverListener;)V

    iput-object v1, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mNetworkStateReceiver:Lcom/ironsource/environment/NetworkStateReceiver;

    .line 241
    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mNetworkStateReceiver:Lcom/ironsource/environment/NetworkStateReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 243
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/ironsource/mediationsdk/MediationInitializer$2;

    invoke-direct {v2, p0}, Lcom/ironsource/mediationsdk/MediationInitializer$2;-><init>(Lcom/ironsource/mediationsdk/MediationInitializer;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 270
    :catch_0
    move-exception v0

    .line 271
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 225
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 267
    :cond_2
    :try_start_3
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v1

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": Multiple calls to init are not allowed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v1, v2, v3, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public onNetworkAvailabilityChanged(Z)V
    .locals 2
    .param p1, "connected"    # Z

    .prologue
    .line 277
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mListenForInit:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 278
    iget-object v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mCountDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mCountDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 281
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mListenForInit:Z

    .line 282
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mIsRevived:Z

    .line 283
    iget-object v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->initRunnable:Lcom/ironsource/mediationsdk/MediationInitializer$InitRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 285
    :cond_1
    return-void
.end method

.method public removeMediationInitializationListener(Lcom/ironsource/mediationsdk/MediationInitializer$OnMediationInitializationListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/ironsource/mediationsdk/MediationInitializer$OnMediationInitializationListener;

    .prologue
    .line 303
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mOnMediationInitializationListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 306
    :cond_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mOnMediationInitializationListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method setSegmentListener(Lcom/ironsource/mediationsdk/sdk/SegmentListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/ironsource/mediationsdk/sdk/SegmentListener;

    .prologue
    .line 310
    iput-object p1, p0, Lcom/ironsource/mediationsdk/MediationInitializer;->mSegmentListener:Lcom/ironsource/mediationsdk/sdk/SegmentListener;

    .line 311
    return-void
.end method
