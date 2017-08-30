.class public Lcom/ironsource/mediationsdk/BannerManager;
.super Lcom/ironsource/mediationsdk/AbstractAdUnitManager;
.source "BannerManager.java"

# interfaces
.implements Lcom/ironsource/mediationsdk/sdk/BannerApi;
.implements Lcom/ironsource/mediationsdk/sdk/BannerManagerListener;
.implements Lcom/ironsource/mediationsdk/MediationInitializer$OnMediationInitializationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/mediationsdk/BannerManager$LoadFailedRunnable;
    }
.end annotation


# static fields
.field private static final LOAD_FAILED_COOLDOWN_IN_MILLIS:J = 0x3a98L


# instance fields
.field private final TAG:Ljava/lang/String;

.field private isFirstLoad:Z

.field private mDidCallLoad:Z

.field private mDidFinishToInitBanner:Z

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mInitiatedAdapters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ironsource/mediationsdk/AbstractAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private mLastLoadFailTimestamp:J

.field private mLoadFailedAdapters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ironsource/mediationsdk/AbstractAdapter;",
            ">;"
        }
    .end annotation
.end field

.field mLoadFailedRunnable:Lcom/ironsource/mediationsdk/BannerManager$LoadFailedRunnable;

.field private mLoadInProgress:Z

.field private mLoadingAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

.field private mNotInitAdapters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ironsource/mediationsdk/AbstractAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingToLoadBannerLayout:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

.field private mReadyAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/AbstractAdUnitManager;-><init>()V

    .line 36
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/BannerManager;->TAG:Ljava/lang/String;

    .line 40
    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/BannerManager;->mDidCallLoad:Z

    .line 41
    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/BannerManager;->mLoadInProgress:Z

    .line 62
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "IronSourceBannerHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/BannerManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 63
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 64
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/BannerManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/BannerManager;->mHandler:Landroid/os/Handler;

    .line 65
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ironsource/mediationsdk/BannerManager;->mLastLoadFailTimestamp:J

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/BannerManager;->mNotInitAdapters:Ljava/util/ArrayList;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/BannerManager;->mInitiatedAdapters:Ljava/util/ArrayList;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/BannerManager;->mLoadFailedAdapters:Ljava/util/ArrayList;

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/BannerManager;->isFirstLoad:Z

    .line 71
    return-void
.end method

.method static synthetic access$002(Lcom/ironsource/mediationsdk/BannerManager;J)J
    .locals 1
    .param p0, "x0"    # Lcom/ironsource/mediationsdk/BannerManager;
    .param p1, "x1"    # J

    .prologue
    .line 34
    iput-wide p1, p0, Lcom/ironsource/mediationsdk/BannerManager;->mLastLoadFailTimestamp:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/ironsource/mediationsdk/BannerManager;)Lcom/ironsource/mediationsdk/IronSourceBannerLayout;
    .locals 1
    .param p0, "x0"    # Lcom/ironsource/mediationsdk/BannerManager;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerManager;->mPendingToLoadBannerLayout:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/ironsource/mediationsdk/BannerManager;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/ironsource/mediationsdk/BannerManager;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/BannerManager;->resetLoadRound(Z)V

    return-void
.end method

.method private declared-synchronized addInitiatedBannerAdapter(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/ironsource/mediationsdk/AbstractAdapter;

    .prologue
    .line 679
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/BannerManager;->addToInitiated(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 680
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/BannerManager;->removeFromNotInit(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 681
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/BannerManager;->removeFromReady(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 682
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/BannerManager;->removeFromLoadFailed(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 683
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/BannerManager;->removeFromLoading(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 684
    monitor-exit p0

    return-void

    .line 679
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized addLoadFailedBannerAdapter(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/ironsource/mediationsdk/AbstractAdapter;

    .prologue
    .line 703
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/BannerManager;->addToLoadFailed(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 704
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/BannerManager;->removeFromReady(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 705
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/BannerManager;->removeFromInitiated(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 706
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/BannerManager;->removeFromNotInit(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 707
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/BannerManager;->removeFromLoading(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 708
    monitor-exit p0

    return-void

    .line 703
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized addLoadingBannerAdapter(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/ironsource/mediationsdk/AbstractAdapter;

    .prologue
    .line 711
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/BannerManager;->addToLoading(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 712
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/BannerManager;->removeFromReady(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 713
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/BannerManager;->removeFromInitiated(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 714
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/BannerManager;->removeFromNotInit(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 715
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/BannerManager;->removeFromLoadFailed(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 716
    monitor-exit p0

    return-void

    .line 711
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized addNotInitBannerAdapter(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/ironsource/mediationsdk/AbstractAdapter;

    .prologue
    .line 695
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/BannerManager;->addToNotInit(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 696
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/BannerManager;->removeFromReady(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 697
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/BannerManager;->removeFromInitiated(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 698
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/BannerManager;->removeFromLoadFailed(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 699
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/BannerManager;->removeFromLoading(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 700
    monitor-exit p0

    return-void

    .line 695
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized addReadyBannerAdapter(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/ironsource/mediationsdk/AbstractAdapter;

    .prologue
    .line 687
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/BannerManager;->addToReady(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 688
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/BannerManager;->removeFromInitiated(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 689
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/BannerManager;->removeFromNotInit(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 690
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/BannerManager;->removeFromLoadFailed(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 691
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/BannerManager;->removeFromLoading(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 692
    monitor-exit p0

    return-void

    .line 687
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized addToInitiated(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    .locals 5
    .param p1, "adapter"    # Lcom/ironsource/mediationsdk/AbstractAdapter;

    .prologue
    .line 719
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/ironsource/mediationsdk/BannerManager;->mInitiatedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 721
    .local v1, "priorityLocation":I
    iget-object v2, p0, Lcom/ironsource/mediationsdk/BannerManager;->mInitiatedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 722
    iget-object v2, p0, Lcom/ironsource/mediationsdk/BannerManager;->mInitiatedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/AbstractAdapter;

    .line 723
    .local v0, "ia":Lcom/ironsource/mediationsdk/AbstractAdapter;
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getBannerPriority()I

    move-result v3

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getBannerPriority()I

    move-result v4

    if-gt v3, v4, :cond_0

    .line 724
    iget-object v2, p0, Lcom/ironsource/mediationsdk/BannerManager;->mInitiatedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 728
    .end local v0    # "ia":Lcom/ironsource/mediationsdk/AbstractAdapter;
    :cond_1
    iget-object v2, p0, Lcom/ironsource/mediationsdk/BannerManager;->mInitiatedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 730
    :cond_2
    monitor-exit p0

    return-void

    .line 719
    .end local v1    # "priorityLocation":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized addToLoadFailed(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/ironsource/mediationsdk/AbstractAdapter;

    .prologue
    .line 760
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerManager;->mLoadFailedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 761
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerManager;->mLoadFailedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 762
    :cond_0
    monitor-exit p0

    return-void

    .line 760
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized addToLoading(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/ironsource/mediationsdk/AbstractAdapter;

    .prologue
    .line 771
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/ironsource/mediationsdk/BannerManager;->mLoadingAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 772
    monitor-exit p0

    return-void

    .line 771
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized addToNotInit(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/ironsource/mediationsdk/AbstractAdapter;

    .prologue
    .line 749
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerManager;->mNotInitAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 750
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerManager;->mNotInitAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 751
    :cond_0
    monitor-exit p0

    return-void

    .line 749
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized addToReady(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/ironsource/mediationsdk/AbstractAdapter;

    .prologue
    .line 739
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/ironsource/mediationsdk/BannerManager;->mReadyAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 740
    monitor-exit p0

    return-void

    .line 739
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized loadAdapterAndSendEvent(Lcom/ironsource/mediationsdk/AbstractAdapter;Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)V
    .locals 5
    .param p1, "adapter"    # Lcom/ironsource/mediationsdk/AbstractAdapter;
    .param p2, "bannerLayout"    # Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    .prologue
    .line 479
    monitor-enter p0

    :try_start_0
    sget-object v3, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->BANNER:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-static {p1, v3}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getProviderAdditionalData(Lcom/ironsource/mediationsdk/AbstractAdapter;Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 481
    .local v0, "data":Lorg/json/JSONObject;
    if-eqz p2, :cond_0

    :try_start_1
    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->getPlacementName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 482
    const-string v3, "placement"

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->getPlacementName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 486
    :cond_0
    :goto_0
    :try_start_2
    new-instance v2, Lcom/ironsource/eventsmodule/EventData;

    const/16 v3, 0x192

    invoke-direct {v2, v3, v0}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 487
    .local v2, "event":Lcom/ironsource/eventsmodule/EventData;
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    .line 489
    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/AbstractAdapter;->loadBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 490
    monitor-exit p0

    return-void

    .line 483
    .end local v2    # "event":Lcom/ironsource/eventsmodule/EventData;
    :catch_0
    move-exception v1

    .line 484
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 479
    .end local v0    # "data":Lorg/json/JSONObject;
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private declared-synchronized moveAdaptersToInitiated()V
    .locals 7

    .prologue
    .line 416
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/ironsource/mediationsdk/BannerManager;->mReadyAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    if-eqz v2, :cond_0

    .line 417
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerManager;->mReadyAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    .line 418
    .local v0, "adapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    iget-object v2, p0, Lcom/ironsource/mediationsdk/BannerManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NATIVE:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Smart Loading - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " moved to \'Initiated\' list"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 419
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/BannerManager;->addInitiatedBannerAdapter(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 422
    .end local v0    # "adapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    :cond_0
    iget-object v2, p0, Lcom/ironsource/mediationsdk/BannerManager;->mLoadingAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    if-eqz v2, :cond_1

    .line 423
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerManager;->mLoadingAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    .line 424
    .restart local v0    # "adapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    iget-object v2, p0, Lcom/ironsource/mediationsdk/BannerManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NATIVE:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Smart Loading - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " moved to \'Initiated\' list"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 425
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/BannerManager;->addInitiatedBannerAdapter(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 429
    .end local v0    # "adapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    :cond_1
    iget-object v2, p0, Lcom/ironsource/mediationsdk/BannerManager;->mLoadFailedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 430
    iget-object v2, p0, Lcom/ironsource/mediationsdk/BannerManager;->mLoadFailedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 431
    .local v1, "tempLoadFailed":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ironsource/mediationsdk/AbstractAdapter;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/AbstractAdapter;

    .line 432
    .restart local v0    # "adapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    iget-object v3, p0, Lcom/ironsource/mediationsdk/BannerManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NATIVE:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Smart Loading - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " moved to \'Initiated\' list"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 433
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/BannerManager;->addInitiatedBannerAdapter(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 416
    .end local v0    # "adapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    .end local v1    # "tempLoadFailed":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ironsource/mediationsdk/AbstractAdapter;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 436
    :cond_2
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized removeFromInitiated(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/ironsource/mediationsdk/AbstractAdapter;

    .prologue
    .line 733
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerManager;->mInitiatedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 734
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerManager;->mInitiatedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 736
    :cond_0
    monitor-exit p0

    return-void

    .line 733
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized removeFromLoadFailed(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/ironsource/mediationsdk/AbstractAdapter;

    .prologue
    .line 765
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerManager;->mLoadFailedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 766
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerManager;->mLoadFailedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 768
    :cond_0
    monitor-exit p0

    return-void

    .line 765
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized removeFromLoading(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/ironsource/mediationsdk/AbstractAdapter;

    .prologue
    .line 775
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerManager;->mLoadingAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerManager;->mLoadingAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 776
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/BannerManager;->mLoadingAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 778
    :cond_0
    monitor-exit p0

    return-void

    .line 775
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized removeFromNotInit(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/ironsource/mediationsdk/AbstractAdapter;

    .prologue
    .line 754
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerManager;->mNotInitAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 755
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerManager;->mNotInitAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 757
    :cond_0
    monitor-exit p0

    return-void

    .line 754
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized removeFromReady(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/ironsource/mediationsdk/AbstractAdapter;

    .prologue
    .line 743
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerManager;->mReadyAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerManager;->mReadyAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 744
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/BannerManager;->mReadyAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 746
    :cond_0
    monitor-exit p0

    return-void

    .line 743
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized removeScheduledLoadFailedCallback()V
    .locals 2

    .prologue
    .line 396
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerManager;->mLoadFailedRunnable:Lcom/ironsource/mediationsdk/BannerManager$LoadFailedRunnable;

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/BannerManager;->mLoadFailedRunnable:Lcom/ironsource/mediationsdk/BannerManager$LoadFailedRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 399
    :cond_0
    monitor-exit p0

    return-void

    .line 396
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized resetLoadRound(Z)V
    .locals 2
    .param p1, "moveAdaptersToInitiated"    # Z

    .prologue
    .line 402
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 403
    :try_start_0
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/BannerManager;->moveAdaptersToInitiated()V

    .line 406
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/BannerManager;->mLoadInProgress:Z

    .line 407
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/BannerManager;->mDidCallLoad:Z

    .line 408
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/BannerManager;->mPendingToLoadBannerLayout:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    .line 410
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerManager;->mLoadFailedRunnable:Lcom/ironsource/mediationsdk/BannerManager$LoadFailedRunnable;

    if-eqz v0, :cond_1

    .line 411
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/BannerManager;->mLoadFailedRunnable:Lcom/ironsource/mediationsdk/BannerManager$LoadFailedRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 413
    :cond_1
    monitor-exit p0

    return-void

    .line 402
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private sendMediationLevelLoadEvent(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Ljava/lang/String;)V
    .locals 5
    .param p1, "banner"    # Lcom/ironsource/mediationsdk/IronSourceBannerLayout;
    .param p2, "placementName"    # Ljava/lang/String;

    .prologue
    .line 306
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData()Lorg/json/JSONObject;

    move-result-object v1

    .line 308
    .local v1, "data":Lorg/json/JSONObject;
    const/4 v0, 0x0

    .line 309
    .local v0, "bannerSizeData":I
    if-eqz p1, :cond_0

    .line 310
    :try_start_0
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->getSize()Lcom/ironsource/mediationsdk/EBannerSize;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/EBannerSize;->getValue()I

    move-result v0

    .line 312
    :cond_0
    const-string v4, "bannerAdSize"

    invoke-virtual {v1, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 313
    const-string v4, "placement"

    invoke-virtual {v1, v4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    :goto_0
    new-instance v3, Lcom/ironsource/eventsmodule/EventData;

    const/16 v4, 0x192

    invoke-direct {v3, v4, v1}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 319
    .local v3, "event":Lcom/ironsource/eventsmodule/EventData;
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    .line 321
    return-void

    .line 315
    .end local v3    # "event":Lcom/ironsource/eventsmodule/EventData;
    :catch_0
    move-exception v2

    .line 316
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private declared-synchronized sendOrScheduleLoadFailedCallback(Lcom/ironsource/mediationsdk/logger/IronSourceError;Z)V
    .locals 10
    .param p1, "error"    # Lcom/ironsource/mediationsdk/logger/IronSourceError;
    .param p2, "shouldWait"    # Z

    .prologue
    const-wide/16 v8, 0x3a98

    .line 329
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/BannerManager;->removeScheduledLoadFailedCallback()V

    .line 330
    new-instance v6, Lcom/ironsource/mediationsdk/BannerManager$LoadFailedRunnable;

    invoke-direct {v6, p0, p1}, Lcom/ironsource/mediationsdk/BannerManager$LoadFailedRunnable;-><init>(Lcom/ironsource/mediationsdk/BannerManager;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    iput-object v6, p0, Lcom/ironsource/mediationsdk/BannerManager;->mLoadFailedRunnable:Lcom/ironsource/mediationsdk/BannerManager$LoadFailedRunnable;

    .line 332
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 335
    .local v0, "currentTimestamp":J
    if-eqz p2, :cond_1

    const-wide/16 v2, 0x0

    .line 337
    .local v2, "timeFromPreviousLoadFailed":J
    :goto_0
    cmp-long v6, v2, v8

    if-ltz v6, :cond_2

    .line 338
    iget-object v6, p0, Lcom/ironsource/mediationsdk/BannerManager;->mHandler:Landroid/os/Handler;

    if-eqz v6, :cond_0

    .line 339
    iget-object v6, p0, Lcom/ironsource/mediationsdk/BannerManager;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/ironsource/mediationsdk/BannerManager;->mLoadFailedRunnable:Lcom/ironsource/mediationsdk/BannerManager$LoadFailedRunnable;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 345
    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    .line 335
    .end local v2    # "timeFromPreviousLoadFailed":J
    :cond_1
    :try_start_1
    iget-wide v6, p0, Lcom/ironsource/mediationsdk/BannerManager;->mLastLoadFailTimestamp:J

    sub-long v2, v0, v6

    goto :goto_0

    .line 341
    .restart local v2    # "timeFromPreviousLoadFailed":J
    :cond_2
    sub-long v4, v8, v2

    .line 342
    .local v4, "timeToNextLoadFailed":J
    iget-object v6, p0, Lcom/ironsource/mediationsdk/BannerManager;->mHandler:Landroid/os/Handler;

    if-eqz v6, :cond_0

    .line 343
    iget-object v6, p0, Lcom/ironsource/mediationsdk/BannerManager;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/ironsource/mediationsdk/BannerManager;->mLoadFailedRunnable:Lcom/ironsource/mediationsdk/BannerManager$LoadFailedRunnable;

    invoke-virtual {v6, v7, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 329
    .end local v0    # "currentTimestamp":J
    .end local v2    # "timeFromPreviousLoadFailed":J
    .end local v4    # "timeToNextLoadFailed":J
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method private startAdapter(Ljava/lang/String;)Lcom/ironsource/mediationsdk/AbstractAdapter;
    .locals 17
    .param p1, "providerName"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 97
    const/4 v6, 0x0

    .line 178
    :goto_0
    return-object v6

    .line 100
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ironsource/mediationsdk/BannerManager;->mServerResponseWrapper:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v13}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getProviderSettingsHolder()Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->getProviderSettings(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/ProviderSettings;

    move-result-object v8

    .line 101
    .local v8, "providerSettings":Lcom/ironsource/mediationsdk/model/ProviderSettings;
    if-nez v8, :cond_1

    .line 102
    const/4 v6, 0x0

    goto :goto_0

    .line 104
    :cond_1
    invoke-virtual {v8}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getProviderTypeForReflection()Ljava/lang/String;

    move-result-object v7

    .line 106
    .local v7, "providerNameForReflection":Ljava/lang/String;
    const-string v9, ""

    .line 107
    .local v9, "requestUrl":Ljava/lang/String;
    invoke-virtual {v8}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getRewardedVideoSettings()Lorg/json/JSONObject;

    move-result-object v13

    if-eqz v13, :cond_2

    .line 108
    invoke-virtual {v8}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getRewardedVideoSettings()Lorg/json/JSONObject;

    move-result-object v13

    const-string v14, "requestUrl"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 111
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ironsource/mediationsdk/BannerManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v14, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NATIVE:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ironsource/mediationsdk/BannerManager;->TAG:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ":startAdapter("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    invoke-virtual/range {v13 .. v16}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 114
    :try_start_0
    invoke-virtual {v8}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->isMultipleInstances()Z

    move-result v4

    .line 115
    .local v4, "isMultipleInstances":Z
    invoke-virtual {v8}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getSubProviderId()Ljava/lang/String;

    move-result-object v12

    .line 117
    .local v12, "subProviderId":Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 118
    move-object/from16 p1, v7

    .line 120
    :cond_3
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v10

    .line 122
    .local v10, "sso":Lcom/ironsource/mediationsdk/IronSourceObject;
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getExistingAdapter(Ljava/lang/String;)Lcom/ironsource/mediationsdk/AbstractAdapter;

    move-result-object v6

    .line 124
    .local v6, "providerAdapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    if-nez v6, :cond_7

    .line 126
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "com.ironsource.adapters."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "Adapter"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 127
    .local v5, "mAdapterClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v13, "startAdapter"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Class;

    const/4 v15, 0x0

    const-class v16, Ljava/lang/String;

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-class v16, Ljava/lang/String;

    aput-object v16, v14, v15

    invoke-virtual {v5, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    .line 128
    .local v11, "startAdapterMethod":Ljava/lang/reflect/Method;
    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object p1, v13, v14

    const/4 v14, 0x1

    aput-object v9, v13, v14

    invoke-virtual {v11, v5, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "providerAdapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    check-cast v6, Lcom/ironsource/mediationsdk/AbstractAdapter;

    .line 130
    .restart local v6    # "providerAdapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    if-nez v6, :cond_4

    .line 131
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 133
    :cond_4
    invoke-virtual {v10, v6}, Lcom/ironsource/mediationsdk/IronSourceObject;->addToBannerAdaptersList(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 135
    sget-object v13, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->BANNER:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {v6, v13, v12}, Lcom/ironsource/mediationsdk/AbstractAdapter;->setSubProviderId(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Ljava/lang/String;)V

    .line 137
    if-eqz v4, :cond_5

    .line 139
    sget-object v13, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->BANNER:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {v6, v13, v8}, Lcom/ironsource/mediationsdk/AbstractAdapter;->updateAdapterSettings(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Lcom/ironsource/mediationsdk/model/ProviderSettings;)V

    .line 149
    .end local v5    # "mAdapterClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v11    # "startAdapterMethod":Ljava/lang/reflect/Method;
    :cond_5
    invoke-virtual {v8}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getProviderInstanceName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Lcom/ironsource/mediationsdk/AbstractAdapter;->setBannerProviderInstanceName(Ljava/lang/String;)V

    .line 152
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/ironsource/mediationsdk/BannerManager;->setCustomParams(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 153
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ironsource/mediationsdk/BannerManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    invoke-virtual {v6, v13}, Lcom/ironsource/mediationsdk/AbstractAdapter;->setLogListener(Lcom/ironsource/mediationsdk/logger/LogListener;)V

    .line 154
    invoke-virtual {v8}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getBannerPriority()I

    move-result v13

    invoke-virtual {v6, v13}, Lcom/ironsource/mediationsdk/AbstractAdapter;->setBannerPriority(I)V

    .line 155
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ironsource/mediationsdk/BannerManager;->mServerResponseWrapper:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v13}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v13

    invoke-virtual {v13}, Lcom/ironsource/mediationsdk/model/Configurations;->getBannerConfigurations()Lcom/ironsource/mediationsdk/model/BannerConfigurations;

    move-result-object v13

    invoke-virtual {v13}, Lcom/ironsource/mediationsdk/model/BannerConfigurations;->getBannerAdaptersSmartLoadTimeout()J

    move-result-wide v14

    invoke-virtual {v6, v14, v15}, Lcom/ironsource/mediationsdk/AbstractAdapter;->setBannerTimeout(J)V

    .line 156
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ironsource/mediationsdk/BannerManager;->mServerResponseWrapper:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v13}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v13

    invoke-virtual {v13}, Lcom/ironsource/mediationsdk/model/Configurations;->getBannerConfigurations()Lcom/ironsource/mediationsdk/model/BannerConfigurations;

    move-result-object v13

    invoke-virtual {v6, v13}, Lcom/ironsource/mediationsdk/AbstractAdapter;->setBannerConfigurations(Lcom/ironsource/mediationsdk/model/BannerConfigurations;)V

    .line 157
    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->setBannerListener(Lcom/ironsource/mediationsdk/sdk/BannerManagerListener;)V

    .line 159
    invoke-static {}, Lcom/ironsource/mediationsdk/config/ConfigFile;->getConfigFile()Lcom/ironsource/mediationsdk/config/ConfigFile;

    move-result-object v13

    invoke-virtual {v13}, Lcom/ironsource/mediationsdk/config/ConfigFile;->getPluginType()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_6

    .line 160
    invoke-static {}, Lcom/ironsource/mediationsdk/config/ConfigFile;->getConfigFile()Lcom/ironsource/mediationsdk/config/ConfigFile;

    move-result-object v13

    invoke-virtual {v13}, Lcom/ironsource/mediationsdk/config/ConfigFile;->getPluginType()Ljava/lang/String;

    move-result-object v13

    .line 161
    invoke-static {}, Lcom/ironsource/mediationsdk/config/ConfigFile;->getConfigFile()Lcom/ironsource/mediationsdk/config/ConfigFile;

    move-result-object v14

    invoke-virtual {v14}, Lcom/ironsource/mediationsdk/config/ConfigFile;->getPluginFrameworkVersion()Ljava/lang/String;

    move-result-object v14

    .line 160
    invoke-virtual {v6, v13, v14}, Lcom/ironsource/mediationsdk/AbstractAdapter;->setPluginData(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ironsource/mediationsdk/BannerManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v14, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NATIVE:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ironsource/mediationsdk/BannerManager;->TAG:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ":startAdapter(providerAdapter: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v16}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 165
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ironsource/mediationsdk/BannerManager;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ironsource/mediationsdk/BannerManager;->mAppKey:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ironsource/mediationsdk/BannerManager;->mUserId:Ljava/lang/String;

    invoke-virtual {v6, v13, v14, v15}, Lcom/ironsource/mediationsdk/AbstractAdapter;->initBanners(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 166
    .end local v4    # "isMultipleInstances":Z
    .end local v6    # "providerAdapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    .end local v10    # "sso":Lcom/ironsource/mediationsdk/IronSourceObject;
    .end local v12    # "subProviderId":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 167
    .local v2, "e":Ljava/lang/Throwable;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " initialization failed - please verify that required dependencies are in you build path."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, "Banner"

    invoke-static {v13, v14}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v3

    .line 169
    .local v3, "error":Lcom/ironsource/mediationsdk/logger/IronSourceError;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ironsource/mediationsdk/BannerManager;->mServerResponseWrapper:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->decreaseMaxBannerAdapters(Z)I

    .line 171
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ironsource/mediationsdk/BannerManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v14, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ironsource/mediationsdk/BannerManager;->TAG:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ":startAdapter"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 173
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ironsource/mediationsdk/BannerManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v14, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x2

    invoke-virtual/range {v13 .. v16}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 175
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 141
    .end local v2    # "e":Ljava/lang/Throwable;
    .end local v3    # "error":Lcom/ironsource/mediationsdk/logger/IronSourceError;
    .restart local v4    # "isMultipleInstances":Z
    .restart local v6    # "providerAdapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    .restart local v10    # "sso":Lcom/ironsource/mediationsdk/IronSourceObject;
    .restart local v12    # "subProviderId":Ljava/lang/String;
    :cond_7
    if-eqz v4, :cond_5

    .line 142
    :try_start_1
    sget-object v13, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->BANNER:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {v6, v13, v12}, Lcom/ironsource/mediationsdk/AbstractAdapter;->setSubProviderId(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Ljava/lang/String;)V

    .line 144
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/ironsource/mediationsdk/BannerManager;->isAdapterInSmartLoad(Lcom/ironsource/mediationsdk/AbstractAdapter;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v13

    if-eqz v13, :cond_5

    .line 145
    const/4 v6, 0x0

    goto/16 :goto_0
.end method

.method private startNextAdapter()Lcom/ironsource/mediationsdk/AbstractAdapter;
    .locals 2

    .prologue
    .line 86
    const/4 v0, 0x0

    .line 88
    .local v0, "initiatedAdapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    :goto_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/BannerManager;->mServerResponseWrapper:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->hasMoreBannerProvidersToLoad()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 89
    iget-object v1, p0, Lcom/ironsource/mediationsdk/BannerManager;->mServerResponseWrapper:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getNextBannerProvider()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/BannerManager;->startAdapter(Ljava/lang/String;)Lcom/ironsource/mediationsdk/AbstractAdapter;

    move-result-object v0

    goto :goto_0

    .line 92
    :cond_0
    return-object v0
.end method

.method private validatePlacement(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/BannerPlacement;
    .locals 6
    .param p1, "placementName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x3

    .line 782
    iget-object v3, p0, Lcom/ironsource/mediationsdk/BannerManager;->mServerResponseWrapper:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/Configurations;->getBannerConfigurations()Lcom/ironsource/mediationsdk/model/BannerConfigurations;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/ironsource/mediationsdk/model/BannerConfigurations;->getBannerPlacement(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/BannerPlacement;

    move-result-object v2

    .line 783
    .local v2, "placement":Lcom/ironsource/mediationsdk/model/BannerPlacement;
    if-nez v2, :cond_1

    .line 784
    const-string v1, "Placement is not valid, please make sure you are using the right placements, using the default placement."

    .line 786
    .local v1, "noPlacementMessage":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 787
    iget-object v3, p0, Lcom/ironsource/mediationsdk/BannerManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v3, v4, v1, v5}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 790
    :cond_0
    iget-object v3, p0, Lcom/ironsource/mediationsdk/BannerManager;->mServerResponseWrapper:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/Configurations;->getBannerConfigurations()Lcom/ironsource/mediationsdk/model/BannerConfigurations;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/BannerConfigurations;->getDefaultBannerPlacement()Lcom/ironsource/mediationsdk/model/BannerPlacement;

    move-result-object v2

    .line 791
    if-nez v2, :cond_1

    .line 792
    const-string v0, "Default placement was not found, please make sure you are using the right placements."

    .line 793
    .local v0, "noDefaultPlacement":Ljava/lang/String;
    iget-object v3, p0, Lcom/ironsource/mediationsdk/BannerManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v3, v4, v0, v5}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 797
    .end local v0    # "noDefaultPlacement":Ljava/lang/String;
    .end local v1    # "noPlacementMessage":Ljava/lang/String;
    :cond_1
    return-object v2
.end method


# virtual methods
.method public createBanner(Landroid/app/Activity;Lcom/ironsource/mediationsdk/EBannerSize;)Lcom/ironsource/mediationsdk/IronSourceBannerLayout;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "size"    # Lcom/ironsource/mediationsdk/EBannerSize;

    .prologue
    .line 218
    new-instance v0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    invoke-direct {v0, p1, p2, p0}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;-><init>(Landroid/app/Activity;Lcom/ironsource/mediationsdk/EBannerSize;Lcom/ironsource/mediationsdk/sdk/BannerManagerListener;)V

    .line 219
    .local v0, "bannerLayout":Lcom/ironsource/mediationsdk/IronSourceBannerLayout;
    return-object v0
.end method

.method public destroyBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)V
    .locals 6
    .param p1, "banner"    # Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    .prologue
    const/4 v3, 0x0

    .line 440
    if-eqz p1, :cond_0

    .line 441
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->isDestoyed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 442
    iget-object v2, p0, Lcom/ironsource/mediationsdk/BannerManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v4, "Banner is already destroyed and can\'t be used anymore. Please create a new one using IronSource.createBanner API"

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 457
    :cond_0
    :goto_0
    return-void

    .line 448
    :cond_1
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData()Lorg/json/JSONObject;

    move-result-object v0

    .line 449
    .local v0, "data":Lorg/json/JSONObject;
    new-instance v1, Lcom/ironsource/eventsmodule/EventData;

    const/16 v2, 0x196

    invoke-direct {v1, v2, v0}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 450
    .local v1, "event":Lcom/ironsource/eventsmodule/EventData;
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    .line 452
    iput-boolean v3, p0, Lcom/ironsource/mediationsdk/BannerManager;->mLoadInProgress:Z

    .line 453
    iput-boolean v3, p0, Lcom/ironsource/mediationsdk/BannerManager;->mDidCallLoad:Z

    .line 455
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->destroyBanner()V

    goto :goto_0
.end method

.method declared-synchronized dropAdapterFromSmartLoad(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    .locals 0
    .param p1, "adapter"    # Lcom/ironsource/mediationsdk/AbstractAdapter;

    .prologue
    .line 476
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public getPlacementByName(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/BannerPlacement;
    .locals 6
    .param p1, "placementName"    # Ljava/lang/String;

    .prologue
    .line 657
    iget-object v3, p0, Lcom/ironsource/mediationsdk/BannerManager;->mServerResponseWrapper:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/ironsource/mediationsdk/BannerManager;->mServerResponseWrapper:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/ironsource/mediationsdk/BannerManager;->mServerResponseWrapper:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    .line 658
    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/Configurations;->getBannerConfigurations()Lcom/ironsource/mediationsdk/model/BannerConfigurations;

    move-result-object v3

    if-nez v3, :cond_2

    .line 659
    :cond_0
    const/4 v2, 0x0

    .line 675
    :cond_1
    :goto_0
    return-object v2

    .line 661
    :cond_2
    const/4 v2, 0x0

    .line 663
    .local v2, "placement":Lcom/ironsource/mediationsdk/model/BannerPlacement;
    :try_start_0
    iget-object v3, p0, Lcom/ironsource/mediationsdk/BannerManager;->mServerResponseWrapper:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/Configurations;->getBannerConfigurations()Lcom/ironsource/mediationsdk/model/BannerConfigurations;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/ironsource/mediationsdk/model/BannerConfigurations;->getBannerPlacement(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/BannerPlacement;

    move-result-object v2

    .line 664
    if-nez v2, :cond_1

    .line 666
    iget-object v3, p0, Lcom/ironsource/mediationsdk/BannerManager;->mServerResponseWrapper:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/Configurations;->getBannerConfigurations()Lcom/ironsource/mediationsdk/model/BannerConfigurations;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/BannerConfigurations;->getDefaultBannerPlacement()Lcom/ironsource/mediationsdk/model/BannerPlacement;

    move-result-object v2

    .line 667
    if-nez v2, :cond_1

    .line 668
    const-string v1, "Default placement was not found"

    .line 669
    .local v1, "noDefaultPlacement":Ljava/lang/String;
    iget-object v3, p0, Lcom/ironsource/mediationsdk/BannerManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v1, v5}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 672
    .end local v1    # "noDefaultPlacement":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 673
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public initBanners(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "userId"    # Ljava/lang/String;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NATIVE:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ironsource/mediationsdk/BannerManager;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":initBanners(appKey: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", userId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 76
    iput-object p2, p0, Lcom/ironsource/mediationsdk/BannerManager;->mAppKey:Ljava/lang/String;

    .line 77
    iput-object p3, p0, Lcom/ironsource/mediationsdk/BannerManager;->mUserId:Ljava/lang/String;

    .line 78
    iput-object p1, p0, Lcom/ironsource/mediationsdk/BannerManager;->mActivity:Landroid/app/Activity;

    .line 79
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getCurrentServerResponse()Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/BannerManager;->mServerResponseWrapper:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    .line 80
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerManager;->mServerResponseWrapper:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    if-eqz v0, :cond_0

    .line 81
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/BannerManager;->startNextAdapter()Lcom/ironsource/mediationsdk/AbstractAdapter;

    .line 83
    :cond_0
    return-void
.end method

.method declared-synchronized isAdapterInSmartLoad(Lcom/ironsource/mediationsdk/AbstractAdapter;)Z
    .locals 1
    .param p1, "adapter"    # Lcom/ironsource/mediationsdk/AbstractAdapter;

    .prologue
    .line 182
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerManager;->mLoadFailedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerManager;->mInitiatedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerManager;->mNotInitAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method isBackFillAvailable()Z
    .locals 1

    .prologue
    .line 471
    const/4 v0, 0x0

    return v0
.end method

.method public isBannerPlacementCapped(Ljava/lang/String;)Z
    .locals 1
    .param p1, "placementName"    # Ljava/lang/String;

    .prologue
    .line 212
    const/4 v0, 0x0

    return v0
.end method

.method isPremiumAdapter(Ljava/lang/String;)Z
    .locals 1
    .param p1, "providerName"    # Ljava/lang/String;

    .prologue
    .line 466
    const/4 v0, 0x0

    return v0
.end method

.method public loadBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)V
    .locals 0
    .param p1, "banner"    # Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    .prologue
    .line 225
    return-void
.end method

.method public loadBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Ljava/lang/String;)V
    .locals 13
    .param p1, "banner"    # Lcom/ironsource/mediationsdk/IronSourceBannerLayout;
    .param p2, "placementName"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x0

    .line 229
    if-nez p1, :cond_1

    .line 230
    :try_start_0
    iget-object v8, p0, Lcom/ironsource/mediationsdk/BannerManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v9, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v10, "Load Banner can\'t be called on null object"

    const/4 v11, 0x1

    invoke-virtual {v8, v9, v10, v11}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 303
    :cond_0
    :goto_0
    return-void

    .line 234
    :cond_1
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->isDestoyed()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 235
    iget-object v8, p0, Lcom/ironsource/mediationsdk/BannerManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v9, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v10, "Banner is already destroyed and can\'t be used anymore. Please create a new one using IronSource.createBanner API"

    const/4 v11, 0x1

    invoke-virtual {v8, v9, v10, v11}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 299
    :catch_0
    move-exception v3

    .line 300
    .local v3, "e":Ljava/lang/Exception;
    const-string v8, "loadBanner exception"

    invoke-static {v8}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildLoadFailedError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v4

    .line 301
    .local v4, "error":Lcom/ironsource/mediationsdk/logger/IronSourceError;
    invoke-direct {p0, v4, v12}, Lcom/ironsource/mediationsdk/BannerManager;->sendOrScheduleLoadFailedCallback(Lcom/ironsource/mediationsdk/logger/IronSourceError;Z)V

    goto :goto_0

    .line 241
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "error":Lcom/ironsource/mediationsdk/logger/IronSourceError;
    :cond_2
    :try_start_1
    iget-boolean v8, p0, Lcom/ironsource/mediationsdk/BannerManager;->mLoadInProgress:Z

    if-eqz v8, :cond_3

    .line 242
    iget-object v8, p0, Lcom/ironsource/mediationsdk/BannerManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v9, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v10, "Load Banner is already in progress"

    const/4 v11, 0x1

    invoke-virtual {v8, v9, v10, v11}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    goto :goto_0

    .line 246
    :cond_3
    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lcom/ironsource/mediationsdk/BannerManager;->resetLoadRound(Z)V

    .line 247
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/ironsource/mediationsdk/BannerManager;->mDidCallLoad:Z

    .line 248
    iput-object p1, p0, Lcom/ironsource/mediationsdk/BannerManager;->mPendingToLoadBannerLayout:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    .line 249
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/ironsource/mediationsdk/BannerManager;->mLoadInProgress:Z

    .line 250
    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->setPlacementName(Ljava/lang/String;)V

    .line 252
    invoke-static {}, Lcom/ironsource/mediationsdk/MediationInitializer;->getInstance()Lcom/ironsource/mediationsdk/MediationInitializer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/ironsource/mediationsdk/MediationInitializer;->getCurrentInitStatus()Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    move-result-object v2

    .line 254
    .local v2, "currentInitStatus":Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;
    const-string v5, "Load Banner can\'t be called before the Banner ad unit initialization completed successfully"

    .line 255
    .local v5, "loadFailMsg":Ljava/lang/String;
    sget-object v8, Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;->INIT_FAILED:Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    if-eq v2, v8, :cond_4

    sget-object v8, Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;->NOT_INIT:Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    if-ne v2, v8, :cond_5

    .line 256
    :cond_4
    invoke-static {v5}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildLoadFailedError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {p0, v8, v9}, Lcom/ironsource/mediationsdk/BannerManager;->sendOrScheduleLoadFailedCallback(Lcom/ironsource/mediationsdk/logger/IronSourceError;Z)V

    goto :goto_0

    .line 258
    :cond_5
    sget-object v8, Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;->INIT_IN_PROGRESS:Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    if-ne v2, v8, :cond_6

    .line 259
    invoke-static {v5}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildLoadFailedError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v8

    const/4 v9, 0x1

    invoke-direct {p0, v8, v9}, Lcom/ironsource/mediationsdk/BannerManager;->sendOrScheduleLoadFailedCallback(Lcom/ironsource/mediationsdk/logger/IronSourceError;Z)V

    goto :goto_0

    .line 263
    :cond_6
    iget-object v8, p0, Lcom/ironsource/mediationsdk/BannerManager;->mActivity:Landroid/app/Activity;

    invoke-static {v8}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 264
    const-string v8, "Banner"

    invoke-static {v8}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildNoInternetConnectionLoadFailError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {p0, v8, v9}, Lcom/ironsource/mediationsdk/BannerManager;->sendOrScheduleLoadFailedCallback(Lcom/ironsource/mediationsdk/logger/IronSourceError;Z)V

    goto :goto_0

    .line 268
    :cond_7
    iget-object v8, p0, Lcom/ironsource/mediationsdk/BannerManager;->mServerResponseWrapper:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/ironsource/mediationsdk/BannerManager;->mInitiatedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_a

    .line 269
    :cond_8
    iget-object v8, p0, Lcom/ironsource/mediationsdk/BannerManager;->mServerResponseWrapper:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    if-eqz v8, :cond_9

    iget-boolean v8, p0, Lcom/ironsource/mediationsdk/BannerManager;->mDidFinishToInitBanner:Z

    if-eqz v8, :cond_0

    .line 273
    :cond_9
    const-string v8, "no ads to show"

    invoke-static {v8}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildGenericError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {p0, v8, v9}, Lcom/ironsource/mediationsdk/BannerManager;->sendOrScheduleLoadFailedCallback(Lcom/ironsource/mediationsdk/logger/IronSourceError;Z)V

    goto/16 :goto_0

    .line 277
    :cond_a
    iget-object v8, p0, Lcom/ironsource/mediationsdk/BannerManager;->mServerResponseWrapper:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    if-eqz v8, :cond_c

    .line 278
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/ironsource/mediationsdk/BannerManager;->isFirstLoad:Z

    .line 279
    invoke-direct {p0, p2}, Lcom/ironsource/mediationsdk/BannerManager;->validatePlacement(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/BannerPlacement;

    move-result-object v6

    .line 280
    .local v6, "placement":Lcom/ironsource/mediationsdk/model/BannerPlacement;
    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/model/BannerPlacement;->getPlacementName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, p1, v8}, Lcom/ironsource/mediationsdk/BannerManager;->sendMediationLevelLoadEvent(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Ljava/lang/String;)V

    .line 281
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v8

    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/model/BannerPlacement;->getPlacementName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/ironsource/mediationsdk/IronSourceObject;->getBannerCappingStatus(Ljava/lang/String;)Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;

    move-result-object v7

    .line 282
    .local v7, "status":Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v8

    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/model/BannerPlacement;->getPlacementName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v7}, Lcom/ironsource/mediationsdk/IronSourceObject;->getCappingMessage(Ljava/lang/String;Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;)Ljava/lang/String;

    move-result-object v1

    .line 283
    .local v1, "cappedMessage":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_b

    .line 284
    iget-object v8, p0, Lcom/ironsource/mediationsdk/BannerManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v9, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v1, v10}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 285
    const-string v8, "Banner"

    invoke-static {v8, v1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildCappedPerPlacementError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {p0, v8, v9}, Lcom/ironsource/mediationsdk/BannerManager;->sendOrScheduleLoadFailedCallback(Lcom/ironsource/mediationsdk/logger/IronSourceError;Z)V

    goto/16 :goto_0

    .line 291
    :cond_b
    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/model/BannerPlacement;->getPlacementName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->setPlacementName(Ljava/lang/String;)V

    .line 294
    .end local v1    # "cappedMessage":Ljava/lang/String;
    .end local v6    # "placement":Lcom/ironsource/mediationsdk/model/BannerPlacement;
    .end local v7    # "status":Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;
    :cond_c
    iget-object v8, p0, Lcom/ironsource/mediationsdk/BannerManager;->mInitiatedAdapters:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/AbstractAdapter;

    .line 297
    .local v0, "adapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/BannerManager;->addLoadingBannerAdapter(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 298
    invoke-direct {p0, v0, p1}, Lcom/ironsource/mediationsdk/BannerManager;->loadAdapterAndSendEvent(Lcom/ironsource/mediationsdk/AbstractAdapter;Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public onBannerAdClicked(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    .locals 0
    .param p1, "adapter"    # Lcom/ironsource/mediationsdk/AbstractAdapter;

    .prologue
    .line 639
    return-void
.end method

.method public onBannerAdLeftApplication(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    .locals 0
    .param p1, "adapter"    # Lcom/ironsource/mediationsdk/AbstractAdapter;

    .prologue
    .line 654
    return-void
.end method

.method public onBannerAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    .locals 10
    .param p1, "error"    # Lcom/ironsource/mediationsdk/logger/IronSourceError;
    .param p2, "adapter"    # Lcom/ironsource/mediationsdk/AbstractAdapter;

    .prologue
    const/4 v9, 0x0

    .line 594
    const/4 v6, 0x0

    .line 596
    .local v6, "shouldReportFailed":Z
    invoke-direct {p0, p2}, Lcom/ironsource/mediationsdk/BannerManager;->addLoadFailedBannerAdapter(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 598
    iget-object v7, p0, Lcom/ironsource/mediationsdk/BannerManager;->mReadyAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    if-nez v7, :cond_0

    .line 599
    iget-object v7, p0, Lcom/ironsource/mediationsdk/BannerManager;->mInitiatedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_3

    .line 600
    iget-object v7, p0, Lcom/ironsource/mediationsdk/BannerManager;->mInitiatedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ironsource/mediationsdk/AbstractAdapter;

    .line 601
    .local v5, "nextAdapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    invoke-direct {p0, v5}, Lcom/ironsource/mediationsdk/BannerManager;->addLoadingBannerAdapter(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 602
    iget-object v7, p0, Lcom/ironsource/mediationsdk/BannerManager;->mPendingToLoadBannerLayout:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    if-eqz v7, :cond_0

    .line 603
    iget-object v7, p0, Lcom/ironsource/mediationsdk/BannerManager;->mPendingToLoadBannerLayout:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    invoke-direct {p0, v5, v7}, Lcom/ironsource/mediationsdk/BannerManager;->loadAdapterAndSendEvent(Lcom/ironsource/mediationsdk/AbstractAdapter;Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)V

    .line 614
    .end local v5    # "nextAdapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    :cond_0
    :goto_0
    if-eqz v6, :cond_2

    .line 617
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData()Lorg/json/JSONObject;

    move-result-object v1

    .line 619
    .local v1, "data":Lorg/json/JSONObject;
    :try_start_0
    const-string v7, "status"

    const-string v8, "false"

    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 620
    const-string v7, "errorCode"

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result v8

    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 621
    iget-object v7, p0, Lcom/ironsource/mediationsdk/BannerManager;->mPendingToLoadBannerLayout:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/ironsource/mediationsdk/BannerManager;->mPendingToLoadBannerLayout:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    invoke-virtual {v7}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->getSize()Lcom/ironsource/mediationsdk/EBannerSize;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 622
    iget-object v7, p0, Lcom/ironsource/mediationsdk/BannerManager;->mPendingToLoadBannerLayout:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    invoke-virtual {v7}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->getSize()Lcom/ironsource/mediationsdk/EBannerSize;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ironsource/mediationsdk/EBannerSize;->getValue()I

    move-result v0

    .line 623
    .local v0, "bannerSizeData":I
    const-string v7, "bannerAdSize"

    invoke-virtual {v1, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 629
    .end local v0    # "bannerSizeData":I
    :cond_1
    :goto_1
    new-instance v3, Lcom/ironsource/eventsmodule/EventData;

    const/16 v7, 0x197

    invoke-direct {v3, v7, v1}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 630
    .local v3, "event":Lcom/ironsource/eventsmodule/EventData;
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    .line 632
    invoke-direct {p0, p1, v9}, Lcom/ironsource/mediationsdk/BannerManager;->sendOrScheduleLoadFailedCallback(Lcom/ironsource/mediationsdk/logger/IronSourceError;Z)V

    .line 634
    .end local v1    # "data":Lorg/json/JSONObject;
    .end local v3    # "event":Lcom/ironsource/eventsmodule/EventData;
    :cond_2
    return-void

    .line 607
    :cond_3
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/BannerManager;->startNextAdapter()Lcom/ironsource/mediationsdk/AbstractAdapter;

    move-result-object v4

    .line 608
    .local v4, "initiatedAdapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    if-nez v4, :cond_0

    iget-boolean v7, p0, Lcom/ironsource/mediationsdk/BannerManager;->mDidCallLoad:Z

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/ironsource/mediationsdk/BannerManager;->mReadyAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/ironsource/mediationsdk/BannerManager;->mLoadingAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    if-nez v7, :cond_0

    .line 609
    const/4 v6, 0x1

    goto :goto_0

    .line 625
    .end local v4    # "initiatedAdapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    .restart local v1    # "data":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 626
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public onBannerAdLoaded(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    .locals 5
    .param p1, "adapter"    # Lcom/ironsource/mediationsdk/AbstractAdapter;

    .prologue
    const/4 v4, 0x0

    .line 582
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/BannerManager;->mDidCallLoad:Z

    if-eqz v0, :cond_0

    .line 583
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NATIVE:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Smart Loading - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " moved to \'Ready\' list"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 584
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/BannerManager;->addReadyBannerAdapter(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 587
    :cond_0
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/BannerManager;->removeScheduledLoadFailedCallback()V

    .line 588
    iput-boolean v4, p0, Lcom/ironsource/mediationsdk/BannerManager;->mLoadInProgress:Z

    .line 590
    return-void
.end method

.method public onBannerAdScreenDismissed(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    .locals 0
    .param p1, "adapter"    # Lcom/ironsource/mediationsdk/AbstractAdapter;

    .prologue
    .line 649
    return-void
.end method

.method public onBannerAdScreenPresented(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    .locals 0
    .param p1, "adapter"    # Lcom/ironsource/mediationsdk/AbstractAdapter;

    .prologue
    .line 644
    return-void
.end method

.method public onBannerImpression(Lcom/ironsource/mediationsdk/AbstractAdapter;Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)V
    .locals 5
    .param p1, "adapter"    # Lcom/ironsource/mediationsdk/AbstractAdapter;
    .param p2, "banner"    # Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    .prologue
    .line 563
    sget-object v4, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->BANNER:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-static {p1, v4}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getProviderAdditionalData(Lcom/ironsource/mediationsdk/AbstractAdapter;Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)Lorg/json/JSONObject;

    move-result-object v1

    .line 565
    .local v1, "data":Lorg/json/JSONObject;
    const/4 v0, 0x0

    .line 566
    .local v0, "bannerSizeData":I
    if-eqz p2, :cond_0

    .line 567
    :try_start_0
    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->getSize()Lcom/ironsource/mediationsdk/EBannerSize;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/EBannerSize;->getValue()I

    move-result v0

    .line 569
    :cond_0
    const-string v4, "bannerAdSize"

    invoke-virtual {v1, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 574
    :goto_0
    new-instance v3, Lcom/ironsource/eventsmodule/EventData;

    const/16 v4, 0x195

    invoke-direct {v3, v4, v1}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 575
    .local v3, "event":Lcom/ironsource/eventsmodule/EventData;
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    .line 577
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/BannerManager;->moveAdaptersToInitiated()V

    .line 578
    return-void

    .line 570
    .end local v3    # "event":Lcom/ironsource/eventsmodule/EventData;
    :catch_0
    move-exception v2

    .line 571
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public declared-synchronized onBannerInitFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    .locals 5
    .param p1, "error"    # Lcom/ironsource/mediationsdk/logger/IronSourceError;
    .param p2, "adapter"    # Lcom/ironsource/mediationsdk/AbstractAdapter;

    .prologue
    .line 534
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/BannerManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":onBannerInitFailed("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 537
    iget-object v1, p0, Lcom/ironsource/mediationsdk/BannerManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NATIVE:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Smart Loading - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " moved to \'Not Ready\' list"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 539
    invoke-direct {p0, p2}, Lcom/ironsource/mediationsdk/BannerManager;->addNotInitBannerAdapter(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 542
    iget-object v1, p0, Lcom/ironsource/mediationsdk/BannerManager;->mNotInitAdapters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/ironsource/mediationsdk/BannerManager;->mServerResponseWrapper:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getMaxBannerAdapters()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 543
    iget-object v1, p0, Lcom/ironsource/mediationsdk/BannerManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NATIVE:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Smart Loading - initialization failed - no adapters are initiated and no more left to init, error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 545
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    .line 543
    invoke-virtual {v1, v2, v3, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 546
    iget-boolean v1, p0, Lcom/ironsource/mediationsdk/BannerManager;->mDidCallLoad:Z

    if-eqz v1, :cond_0

    .line 547
    const-string v1, "no ads to show"

    invoke-static {v1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildGenericError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/ironsource/mediationsdk/BannerManager;->sendOrScheduleLoadFailedCallback(Lcom/ironsource/mediationsdk/logger/IronSourceError;Z)V

    .line 550
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/BannerManager;->mDidFinishToInitBanner:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 558
    :goto_0
    monitor-exit p0

    return-void

    .line 552
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/BannerManager;->startNextAdapter()Lcom/ironsource/mediationsdk/AbstractAdapter;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 554
    :catch_0
    move-exception v0

    .line 555
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v1, p0, Lcom/ironsource/mediationsdk/BannerManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onBannerInitFailed(error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "provider:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 556
    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 555
    invoke-virtual {v1, v2, v3, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 534
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onBannerInitSuccess(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    .locals 7
    .param p1, "adapter"    # Lcom/ironsource/mediationsdk/AbstractAdapter;

    .prologue
    .line 494
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/ironsource/mediationsdk/BannerManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " :onBannerInitSuccess()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 496
    iget-object v3, p0, Lcom/ironsource/mediationsdk/BannerManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NATIVE:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/ironsource/mediationsdk/BannerManager;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": startAdapter("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") moved to \'Initiated\' list"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 498
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/ironsource/mediationsdk/BannerManager;->mDidFinishToInitBanner:Z

    .line 500
    iget-boolean v3, p0, Lcom/ironsource/mediationsdk/BannerManager;->mDidCallLoad:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/ironsource/mediationsdk/BannerManager;->mReadyAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/ironsource/mediationsdk/BannerManager;->mLoadingAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    if-nez v3, :cond_2

    .line 502
    iget-object v3, p0, Lcom/ironsource/mediationsdk/BannerManager;->mServerResponseWrapper:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/ironsource/mediationsdk/BannerManager;->mPendingToLoadBannerLayout:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/ironsource/mediationsdk/BannerManager;->isFirstLoad:Z

    if-eqz v3, :cond_1

    .line 504
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/ironsource/mediationsdk/BannerManager;->isFirstLoad:Z

    .line 505
    iget-object v3, p0, Lcom/ironsource/mediationsdk/BannerManager;->mPendingToLoadBannerLayout:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->getPlacementName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/ironsource/mediationsdk/BannerManager;->validatePlacement(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/BannerPlacement;

    move-result-object v1

    .line 507
    .local v1, "placement":Lcom/ironsource/mediationsdk/model/BannerPlacement;
    iget-object v3, p0, Lcom/ironsource/mediationsdk/BannerManager;->mPendingToLoadBannerLayout:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/BannerPlacement;->getPlacementName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->setPlacementName(Ljava/lang/String;)V

    .line 510
    iget-object v3, p0, Lcom/ironsource/mediationsdk/BannerManager;->mPendingToLoadBannerLayout:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    iget-object v4, p0, Lcom/ironsource/mediationsdk/BannerManager;->mPendingToLoadBannerLayout:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->getPlacementName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/ironsource/mediationsdk/BannerManager;->sendMediationLevelLoadEvent(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Ljava/lang/String;)V

    .line 512
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v3

    iget-object v4, p0, Lcom/ironsource/mediationsdk/BannerManager;->mPendingToLoadBannerLayout:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->getPlacementName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ironsource/mediationsdk/IronSourceObject;->getBannerCappingStatus(Ljava/lang/String;)Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;

    move-result-object v2

    .line 513
    .local v2, "status":Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v3

    iget-object v4, p0, Lcom/ironsource/mediationsdk/BannerManager;->mPendingToLoadBannerLayout:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->getPlacementName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/ironsource/mediationsdk/IronSourceObject;->getCappingMessage(Ljava/lang/String;Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;)Ljava/lang/String;

    move-result-object v0

    .line 514
    .local v0, "cappedMessage":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 515
    iget-object v3, p0, Lcom/ironsource/mediationsdk/BannerManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v0, v5}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 516
    const-string v3, "Banner"

    invoke-static {v3, v0}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildCappedPerPlacementError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/ironsource/mediationsdk/BannerManager;->sendOrScheduleLoadFailedCallback(Lcom/ironsource/mediationsdk/logger/IronSourceError;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 529
    .end local v0    # "cappedMessage":Ljava/lang/String;
    .end local v1    # "placement":Lcom/ironsource/mediationsdk/model/BannerPlacement;
    .end local v2    # "status":Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 522
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/BannerManager;->addLoadingBannerAdapter(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 523
    iget-object v3, p0, Lcom/ironsource/mediationsdk/BannerManager;->mPendingToLoadBannerLayout:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    if-eqz v3, :cond_0

    .line 524
    iget-object v3, p0, Lcom/ironsource/mediationsdk/BannerManager;->mPendingToLoadBannerLayout:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    invoke-direct {p0, p1, v3}, Lcom/ironsource/mediationsdk/BannerManager;->loadAdapterAndSendEvent(Lcom/ironsource/mediationsdk/AbstractAdapter;Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 494
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 527
    :cond_2
    :try_start_2
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/BannerManager;->addInitiatedBannerAdapter(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public onInitFailed(Ljava/lang/String;)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 355
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/BannerManager;->mDidCallLoad:Z

    if-eqz v0, :cond_0

    .line 356
    const-string v0, "no ads to show"

    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildGenericError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/ironsource/mediationsdk/BannerManager;->sendOrScheduleLoadFailedCallback(Lcom/ironsource/mediationsdk/logger/IronSourceError;Z)V

    .line 358
    :cond_0
    return-void
.end method

.method public onInitSuccess(Ljava/util/List;Z)V
    .locals 0
    .param p2, "revived"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 350
    .local p1, "adUnits":Ljava/util/List;, "Ljava/util/List<Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;>;"
    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 194
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 187
    if-eqz p1, :cond_0

    .line 188
    iput-object p1, p0, Lcom/ironsource/mediationsdk/BannerManager;->mActivity:Landroid/app/Activity;

    .line 190
    :cond_0
    return-void
.end method

.method public setAge(I)V
    .locals 0
    .param p1, "age"    # I

    .prologue
    .line 198
    return-void
.end method

.method public setGender(Ljava/lang/String;)V
    .locals 0
    .param p1, "gender"    # Ljava/lang/String;

    .prologue
    .line 202
    return-void
.end method

.method public setMediationSegment(Ljava/lang/String;)V
    .locals 0
    .param p1, "segment"    # Ljava/lang/String;

    .prologue
    .line 207
    return-void
.end method

.method shouldTrackNetworkState(Landroid/content/Context;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "track"    # Z

    .prologue
    .line 462
    return-void
.end method
