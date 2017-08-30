.class Lcom/ironsource/mediationsdk/InterstitialManager;
.super Lcom/ironsource/mediationsdk/AbstractAdUnitManager;
.source "InterstitialManager.java"

# interfaces
.implements Lcom/ironsource/mediationsdk/sdk/InterstitialApi;
.implements Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;
.implements Lcom/ironsource/mediationsdk/MediationInitializer$OnMediationInitializationListener;
.implements Lcom/ironsource/mediationsdk/sdk/RewardedInterstitialManagerListener;
.implements Lcom/ironsource/mediationsdk/sdk/RewardedInterstitialApi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/mediationsdk/InterstitialManager$LoadFailedRunnable;
    }
.end annotation


# static fields
.field private static final LOAD_FAILED_COOLDOWN_IN_MILLIS:J = 0x3a98L


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mAllCapped:Z

.field private mCappedPerSessionAdapters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDidCallLoad:Z

.field private mDidFinishToInitInterstitial:Z

.field private mDidMissHigherPriorityAdapter:Z

.field private mExhaustedAdapters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ironsource/mediationsdk/AbstractAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mInitializationPendingAdapters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ironsource/mediationsdk/AbstractAdapter;",
            ">;"
        }
    .end annotation
.end field

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

.field private mInterstitialListenersWrapper:Lcom/ironsource/mediationsdk/sdk/InterstitialListener;

.field private mLastLoadFailTimestamp:J

.field private mLastPlacementForShowFail:Ljava/lang/String;

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

.field mLoadFailedRunnable:Lcom/ironsource/mediationsdk/InterstitialManager$LoadFailedRunnable;

.field private mLoadInProgress:Z

.field private mLoadingAdapters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ironsource/mediationsdk/AbstractAdapter;",
            ">;"
        }
    .end annotation
.end field

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

.field private mNumberOfAdaptersToLoad:I

.field private mReadyAdapters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ironsource/mediationsdk/AbstractAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private mRewardedInterstitialListenerWrapper:Lcom/ironsource/mediationsdk/sdk/RewardedInterstitialListener;

.field private mSkippedAdapters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 74
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/AbstractAdUnitManager;-><init>()V

    .line 41
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->TAG:Ljava/lang/String;

    .line 59
    const/4 v0, 0x1

    iput v0, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mNumberOfAdaptersToLoad:I

    .line 60
    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mDidCallLoad:Z

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mLastPlacementForShowFail:Ljava/lang/String;

    .line 62
    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mLoadInProgress:Z

    .line 75
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/InterstitialManager;->prepareStateForInit()V

    .line 76
    return-void
.end method

.method static synthetic access$002(Lcom/ironsource/mediationsdk/InterstitialManager;J)J
    .locals 1
    .param p0, "x0"    # Lcom/ironsource/mediationsdk/InterstitialManager;
    .param p1, "x1"    # J

    .prologue
    .line 39
    iput-wide p1, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mLastLoadFailTimestamp:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/ironsource/mediationsdk/InterstitialManager;)Lcom/ironsource/mediationsdk/sdk/InterstitialListener;
    .locals 1
    .param p0, "x0"    # Lcom/ironsource/mediationsdk/InterstitialManager;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mInterstitialListenersWrapper:Lcom/ironsource/mediationsdk/sdk/InterstitialListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/ironsource/mediationsdk/InterstitialManager;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/ironsource/mediationsdk/InterstitialManager;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/InterstitialManager;->resetLoadRound(Z)V

    return-void
.end method

.method private declared-synchronized addCappedPerSessionAdapter(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    .locals 4
    .param p1, "adapter"    # Lcom/ironsource/mediationsdk/AbstractAdapter;

    .prologue
    .line 608
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NATIVE:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Smart Loading - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getInterstitialProviderInstanceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " moved to \'Capped\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 611
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/InterstitialManager;->removeFromInitiated(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 612
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/InterstitialManager;->removeFromExhausted(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 613
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/InterstitialManager;->removeFromLoadFailed(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 614
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/InterstitialManager;->removeFromLoading(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 615
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/InterstitialManager;->removeFromNotInit(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 616
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/InterstitialManager;->removeFromReady(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 617
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/InterstitialManager;->removeFromInitPending(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 619
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mCappedPerSessionAdapters:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getInterstitialProviderInstanceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 620
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mCappedPerSessionAdapters:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getInterstitialProviderInstanceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 621
    :cond_0
    monitor-exit p0

    return-void

    .line 608
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized addExhaustedInterstitialAdapter(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/ironsource/mediationsdk/AbstractAdapter;

    .prologue
    .line 664
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/InterstitialManager;->addToExhausted(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 665
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/InterstitialManager;->removeFromReady(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 666
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/InterstitialManager;->removeFromInitiated(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 667
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/InterstitialManager;->removeFromNotInit(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 668
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/InterstitialManager;->removeFromLoadFailed(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 669
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/InterstitialManager;->removeFromLoading(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 670
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/InterstitialManager;->removeFromInitPending(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 671
    monitor-exit p0

    return-void

    .line 664
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized addInitializationPendingInterstitialAdapter(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/ironsource/mediationsdk/AbstractAdapter;

    .prologue
    .line 624
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/InterstitialManager;->addToInitPending(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 625
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/InterstitialManager;->removeFromInitiated(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 626
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/InterstitialManager;->removeFromNotInit(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 627
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/InterstitialManager;->removeFromReady(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 628
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/InterstitialManager;->removeFromExhausted(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 629
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/InterstitialManager;->removeFromLoadFailed(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 630
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/InterstitialManager;->removeFromLoading(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 631
    monitor-exit p0

    return-void

    .line 624
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized addInitiatedInterstitialAdapter(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/ironsource/mediationsdk/AbstractAdapter;

    .prologue
    .line 634
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/InterstitialManager;->addToInitiated(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 635
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/InterstitialManager;->removeFromNotInit(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 636
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/InterstitialManager;->removeFromReady(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 637
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/InterstitialManager;->removeFromExhausted(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 638
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/InterstitialManager;->removeFromLoadFailed(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 639
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/InterstitialManager;->removeFromLoading(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 640
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/InterstitialManager;->removeFromInitPending(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 641
    monitor-exit p0

    return-void

    .line 634
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized addLoadFailedInterstitialAdapter(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/ironsource/mediationsdk/AbstractAdapter;

    .prologue
    .line 674
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/InterstitialManager;->addToLoadFailed(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 675
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/InterstitialManager;->removeFromReady(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 676
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/InterstitialManager;->removeFromInitiated(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 677
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/InterstitialManager;->removeFromNotInit(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 678
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/InterstitialManager;->removeFromExhausted(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 679
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/InterstitialManager;->removeFromLoading(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 680
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/InterstitialManager;->removeFromInitPending(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 681
    monitor-exit p0

    return-void

    .line 674
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized addLoadingInterstitialAdapter(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/ironsource/mediationsdk/AbstractAdapter;

    .prologue
    .line 684
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/InterstitialManager;->addToLoading(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 685
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/InterstitialManager;->removeFromReady(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 686
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/InterstitialManager;->removeFromInitiated(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 687
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/InterstitialManager;->removeFromNotInit(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 688
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/InterstitialManager;->removeFromExhausted(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 689
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/InterstitialManager;->removeFromLoadFailed(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 690
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/InterstitialManager;->removeFromInitPending(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 691
    monitor-exit p0

    return-void

    .line 684
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized addNotInitInterstitialAdapter(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/ironsource/mediationsdk/AbstractAdapter;

    .prologue
    .line 654
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/InterstitialManager;->addToNotInit(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 655
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/InterstitialManager;->removeFromReady(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 656
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/InterstitialManager;->removeFromInitiated(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 657
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/InterstitialManager;->removeFromExhausted(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 658
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/InterstitialManager;->removeFromLoadFailed(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 659
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/InterstitialManager;->removeFromLoading(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 660
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/InterstitialManager;->removeFromInitPending(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 661
    monitor-exit p0

    return-void

    .line 654
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized addReadyInterstitialAdapter(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/ironsource/mediationsdk/AbstractAdapter;

    .prologue
    .line 644
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/InterstitialManager;->addToReady(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 645
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/InterstitialManager;->removeFromInitiated(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 646
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/InterstitialManager;->removeFromNotInit(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 647
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/InterstitialManager;->removeFromExhausted(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 648
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/InterstitialManager;->removeFromLoadFailed(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 649
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/InterstitialManager;->removeFromLoading(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 650
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/InterstitialManager;->removeFromInitPending(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 651
    monitor-exit p0

    return-void

    .line 644
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized addToExhausted(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/ironsource/mediationsdk/AbstractAdapter;

    .prologue
    .line 756
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mExhaustedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 757
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mExhaustedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 758
    :cond_0
    monitor-exit p0

    return-void

    .line 756
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized addToInitPending(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/ironsource/mediationsdk/AbstractAdapter;

    .prologue
    .line 694
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mInitializationPendingAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 695
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mInitializationPendingAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 696
    :cond_0
    monitor-exit p0

    return-void

    .line 694
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized addToInitiated(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    .locals 5
    .param p1, "adapter"    # Lcom/ironsource/mediationsdk/AbstractAdapter;

    .prologue
    .line 705
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mInitiatedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 707
    .local v1, "priorityLocation":I
    iget-object v2, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mInitiatedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 708
    iget-object v2, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mInitiatedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/AbstractAdapter;

    .line 709
    .local v0, "ia":Lcom/ironsource/mediationsdk/AbstractAdapter;
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getInterstitialPriority()I

    move-result v3

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getInterstitialPriority()I

    move-result v4

    if-gt v3, v4, :cond_0

    .line 710
    iget-object v2, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mInitiatedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 714
    .end local v0    # "ia":Lcom/ironsource/mediationsdk/AbstractAdapter;
    :cond_1
    iget-object v2, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mInitiatedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 716
    :cond_2
    monitor-exit p0

    return-void

    .line 705
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
    .line 767
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mLoadFailedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 768
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mLoadFailedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 769
    :cond_0
    monitor-exit p0

    return-void

    .line 767
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized addToLoading(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/ironsource/mediationsdk/AbstractAdapter;

    .prologue
    .line 778
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mLoadingAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 779
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mLoadingAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 780
    :cond_0
    monitor-exit p0

    return-void

    .line 778
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized addToNotInit(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/ironsource/mediationsdk/AbstractAdapter;

    .prologue
    .line 745
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mNotInitAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 746
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mNotInitAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 747
    :cond_0
    monitor-exit p0

    return-void

    .line 745
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized addToReady(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    .locals 5
    .param p1, "adapter"    # Lcom/ironsource/mediationsdk/AbstractAdapter;

    .prologue
    .line 725
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mReadyAdapters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 727
    .local v1, "priorityLocation":I
    iget-object v2, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mReadyAdapters:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 728
    iget-object v2, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mReadyAdapters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/AbstractAdapter;

    .line 729
    .local v0, "ia":Lcom/ironsource/mediationsdk/AbstractAdapter;
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getInterstitialPriority()I

    move-result v3

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getInterstitialPriority()I

    move-result v4

    if-gt v3, v4, :cond_0

    .line 730
    iget-object v2, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mReadyAdapters:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 734
    .end local v0    # "ia":Lcom/ironsource/mediationsdk/AbstractAdapter;
    :cond_1
    iget-object v2, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mReadyAdapters:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 736
    :cond_2
    monitor-exit p0

    return-void

    .line 725
    .end local v1    # "priorityLocation":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private allAdaptersAreInTheLoop()Z
    .locals 4

    .prologue
    .line 421
    iget-object v2, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mServerResponseWrapper:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getTotalISAdapters()I

    move-result v1

    .line 422
    .local v1, "totalNumOfAdapters":I
    iget-object v2, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mNotInitAdapters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mExhaustedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mInitiatedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mInitializationPendingAdapters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mLoadingAdapters:Ljava/util/ArrayList;

    .line 423
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mLoadFailedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mReadyAdapters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mCappedPerSessionAdapters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mSkippedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v2, v3

    if-ne v2, v1, :cond_0

    const/4 v0, 0x1

    .line 424
    .local v0, "areInTheLoop":Z
    :goto_0
    return v0

    .line 423
    .end local v0    # "areInTheLoop":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private completeAdapterIteration(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    .locals 5
    .param p1, "adapter"    # Lcom/ironsource/mediationsdk/AbstractAdapter;

    .prologue
    .line 442
    :try_start_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":completeIteration"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 444
    iget-object v1, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mCappedPerSessionAdapters:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getInterstitialProviderInstanceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 445
    iget-object v1, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NATIVE:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Smart Loading - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getInterstitialProviderInstanceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " moved to \'Exhausted\' list"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 446
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/InterstitialManager;->addExhaustedInterstitialAdapter(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 449
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/InterstitialManager;->startNextAdapter()Lcom/ironsource/mediationsdk/AbstractAdapter;

    .line 451
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->resetNumberOfInterstitialAdsPlayed()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 456
    :cond_0
    :goto_0
    return-void

    .line 453
    :catch_0
    move-exception v0

    .line 454
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "completeIteration(provider:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private completeAdapterShow(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    .locals 4
    .param p1, "adapter"    # Lcom/ironsource/mediationsdk/AbstractAdapter;

    .prologue
    .line 459
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getNumberOfInterstitialAdsPlayed()I

    move-result v0

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getMaxISAdsPerIteration()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 460
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/InterstitialManager;->completeAdapterIteration(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 461
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/InterstitialManager;->isIterationRoundComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 462
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/InterstitialManager;->completeIterationRound()V

    .line 468
    :cond_0
    :goto_0
    return-void

    .line 465
    :cond_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NATIVE:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Smart Loading - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getInterstitialProviderInstanceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " moved to \'Initiated\' list"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 466
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/InterstitialManager;->addInitiatedInterstitialAdapter(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    goto :goto_0
.end method

.method private completeIterationRound()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 428
    iget-object v2, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v4, "Reset Iteration"

    invoke-virtual {v2, v3, v4, v7}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 430
    iget-object v2, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mExhaustedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 431
    .local v1, "tempExhausted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ironsource/mediationsdk/AbstractAdapter;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/AbstractAdapter;

    .line 432
    .local v0, "exhaustedAdapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    iget-object v3, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getInterstitialProviderInstanceName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "moved to \'Initiated\' list"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v7}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 433
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/InterstitialManager;->addInitiatedInterstitialAdapter(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 434
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->resetNumberOfInterstitialAdsPlayed()V

    goto :goto_0

    .line 437
    .end local v0    # "exhaustedAdapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    :cond_0
    iget-object v2, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v4, "End of Reset Iteration"

    invoke-virtual {v2, v3, v4, v7}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 438
    return-void
.end method

.method private isIterationRoundComplete()Z
    .locals 2

    .prologue
    .line 415
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/InterstitialManager;->allAdaptersAreInTheLoop()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mReadyAdapters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mInitiatedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mLoadingAdapters:Ljava/util/ArrayList;

    .line 416
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mInitializationPendingAdapters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 417
    .local v0, "isComplete":Z
    :goto_0
    return v0

    .line 416
    .end local v0    # "isComplete":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized loadAdapterAndSendEvent(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    .locals 3
    .param p1, "adapter"    # Lcom/ironsource/mediationsdk/AbstractAdapter;

    .prologue
    .line 289
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/ironsource/eventsmodule/EventData;

    const/16 v1, 0x16

    sget-object v2, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-static {p1, v2}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getProviderAdditionalData(Lcom/ironsource/mediationsdk/AbstractAdapter;Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 290
    .local v0, "event":Lcom/ironsource/eventsmodule/EventData;
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    .line 292
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->loadInterstitial()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    monitor-exit p0

    return-void

    .line 289
    .end local v0    # "event":Lcom/ironsource/eventsmodule/EventData;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized moveAdaptersToInitiated()V
    .locals 9

    .prologue
    .line 310
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mReadyAdapters:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 311
    iget-object v4, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mReadyAdapters:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 312
    .local v3, "tempReady":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ironsource/mediationsdk/AbstractAdapter;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/AbstractAdapter;

    .line 313
    .local v0, "adapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    iget-object v5, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v6, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NATIVE:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Smart Loading - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getInterstitialProviderInstanceName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " moved to \'Initiated\' list"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 314
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/InterstitialManager;->addInitiatedInterstitialAdapter(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 310
    .end local v0    # "adapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    .end local v3    # "tempReady":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ironsource/mediationsdk/AbstractAdapter;>;"
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 319
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mLoadingAdapters:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 320
    iget-object v4, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mLoadingAdapters:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 321
    .local v2, "tempLoading":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ironsource/mediationsdk/AbstractAdapter;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/AbstractAdapter;

    .line 322
    .restart local v0    # "adapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    iget-object v5, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v6, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NATIVE:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Smart Loading - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getInterstitialProviderInstanceName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " moved to \'Initiated\' list"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 323
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/InterstitialManager;->addInitiatedInterstitialAdapter(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    goto :goto_1

    .line 328
    .end local v0    # "adapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    .end local v2    # "tempLoading":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ironsource/mediationsdk/AbstractAdapter;>;"
    :cond_1
    iget-object v4, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mLoadFailedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 329
    iget-object v4, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mLoadFailedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 330
    .local v1, "tempLoadFailed":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ironsource/mediationsdk/AbstractAdapter;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/AbstractAdapter;

    .line 331
    .restart local v0    # "adapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    iget-object v5, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v6, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NATIVE:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Smart Loading - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getInterstitialProviderInstanceName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " moved to \'Initiated\' list"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 332
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/InterstitialManager;->addInitiatedInterstitialAdapter(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 335
    .end local v0    # "adapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    .end local v1    # "tempLoadFailed":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ironsource/mediationsdk/AbstractAdapter;>;"
    :cond_2
    monitor-exit p0

    return-void
.end method

.method private prepareStateForInit()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mReadyAdapters:Ljava/util/ArrayList;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mInitializationPendingAdapters:Ljava/util/ArrayList;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mInitiatedAdapters:Ljava/util/ArrayList;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mNotInitAdapters:Ljava/util/ArrayList;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mExhaustedAdapters:Ljava/util/ArrayList;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mLoadFailedAdapters:Ljava/util/ArrayList;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mLoadingAdapters:Ljava/util/ArrayList;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mSkippedAdapters:Ljava/util/ArrayList;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mCappedPerSessionAdapters:Ljava/util/ArrayList;

    .line 91
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "IronSourceInterstitialHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 92
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 93
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mHandler:Landroid/os/Handler;

    .line 94
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mLastLoadFailTimestamp:J

    .line 96
    iput-boolean v2, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mAllCapped:Z

    .line 97
    iput-boolean v2, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mDidMissHigherPriorityAdapter:Z

    .line 98
    return-void
.end method

.method private declared-synchronized removeFromExhausted(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/ironsource/mediationsdk/AbstractAdapter;

    .prologue
    .line 761
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mExhaustedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 762
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mExhaustedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 764
    :cond_0
    monitor-exit p0

    return-void

    .line 761
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized removeFromInitPending(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/ironsource/mediationsdk/AbstractAdapter;

    .prologue
    .line 699
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mInitializationPendingAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 700
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mInitializationPendingAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 702
    :cond_0
    monitor-exit p0

    return-void

    .line 699
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized removeFromInitiated(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/ironsource/mediationsdk/AbstractAdapter;

    .prologue
    .line 719
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mInitiatedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 720
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mInitiatedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 722
    :cond_0
    monitor-exit p0

    return-void

    .line 719
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized removeFromLoadFailed(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/ironsource/mediationsdk/AbstractAdapter;

    .prologue
    .line 772
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mLoadFailedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 773
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mLoadFailedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 775
    :cond_0
    monitor-exit p0

    return-void

    .line 772
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized removeFromLoading(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/ironsource/mediationsdk/AbstractAdapter;

    .prologue
    .line 783
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mLoadingAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 784
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mLoadingAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 786
    :cond_0
    monitor-exit p0

    return-void

    .line 783
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized removeFromNotInit(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/ironsource/mediationsdk/AbstractAdapter;

    .prologue
    .line 750
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mNotInitAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 751
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mNotInitAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 753
    :cond_0
    monitor-exit p0

    return-void

    .line 750
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized removeFromReady(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/ironsource/mediationsdk/AbstractAdapter;

    .prologue
    .line 739
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mReadyAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 740
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mReadyAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 742
    :cond_0
    monitor-exit p0

    return-void

    .line 739
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized removeScheduledLoadFailedCallback()V
    .locals 2

    .prologue
    .line 257
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mLoadFailedRunnable:Lcom/ironsource/mediationsdk/InterstitialManager$LoadFailedRunnable;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mLoadFailedRunnable:Lcom/ironsource/mediationsdk/InterstitialManager$LoadFailedRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    :cond_0
    monitor-exit p0

    return-void

    .line 257
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized resetLoadRound(Z)V
    .locals 2
    .param p1, "moveAdaptersToInitiated"    # Z

    .prologue
    .line 296
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 297
    :try_start_0
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/InterstitialManager;->moveAdaptersToInitiated()V

    .line 300
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mLoadInProgress:Z

    .line 301
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mDidCallLoad:Z

    .line 303
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mLoadFailedRunnable:Lcom/ironsource/mediationsdk/InterstitialManager$LoadFailedRunnable;

    if-eqz v0, :cond_1

    .line 304
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mLoadFailedRunnable:Lcom/ironsource/mediationsdk/InterstitialManager$LoadFailedRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    :cond_1
    monitor-exit p0

    return-void

    .line 296
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized sendOrScheduleLoadFailedCallback(Lcom/ironsource/mediationsdk/logger/IronSourceError;Z)V
    .locals 10
    .param p1, "error"    # Lcom/ironsource/mediationsdk/logger/IronSourceError;
    .param p2, "shouldWait"    # Z

    .prologue
    const-wide/16 v8, 0x3a98

    .line 238
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/InterstitialManager;->removeScheduledLoadFailedCallback()V

    .line 239
    new-instance v6, Lcom/ironsource/mediationsdk/InterstitialManager$LoadFailedRunnable;

    invoke-direct {v6, p0, p1}, Lcom/ironsource/mediationsdk/InterstitialManager$LoadFailedRunnable;-><init>(Lcom/ironsource/mediationsdk/InterstitialManager;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    iput-object v6, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mLoadFailedRunnable:Lcom/ironsource/mediationsdk/InterstitialManager$LoadFailedRunnable;

    .line 241
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 244
    .local v0, "currentTimestamp":J
    if-eqz p2, :cond_1

    const-wide/16 v2, 0x0

    .line 246
    .local v2, "timeFromPreviousLoadFailed":J
    :goto_0
    cmp-long v6, v2, v8

    if-ltz v6, :cond_2

    .line 247
    iget-object v6, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mHandler:Landroid/os/Handler;

    if-eqz v6, :cond_0

    .line 248
    iget-object v6, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mLoadFailedRunnable:Lcom/ironsource/mediationsdk/InterstitialManager$LoadFailedRunnable;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    .line 244
    .end local v2    # "timeFromPreviousLoadFailed":J
    :cond_1
    :try_start_1
    iget-wide v6, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mLastLoadFailTimestamp:J

    sub-long v2, v0, v6

    goto :goto_0

    .line 250
    .restart local v2    # "timeFromPreviousLoadFailed":J
    :cond_2
    sub-long v4, v8, v2

    .line 251
    .local v4, "timeToNextLoadFailed":J
    iget-object v6, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mHandler:Landroid/os/Handler;

    if-eqz v6, :cond_0

    .line 252
    iget-object v6, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mLoadFailedRunnable:Lcom/ironsource/mediationsdk/InterstitialManager$LoadFailedRunnable;

    invoke-virtual {v6, v7, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 238
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
    .line 486
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 487
    const/4 v6, 0x0

    .line 604
    :goto_0
    return-object v6

    .line 490
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ironsource/mediationsdk/InterstitialManager;->mServerResponseWrapper:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v13}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getProviderSettingsHolder()Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->getProviderSettings(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/ProviderSettings;

    move-result-object v8

    .line 491
    .local v8, "providerSettings":Lcom/ironsource/mediationsdk/model/ProviderSettings;
    if-nez v8, :cond_1

    .line 492
    const/4 v6, 0x0

    goto :goto_0

    .line 494
    :cond_1
    const/4 v4, 0x0

    .line 496
    .local v4, "isUpdatedInstance":Z
    invoke-virtual {v8}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getProviderTypeForReflection()Ljava/lang/String;

    move-result-object v7

    .line 498
    .local v7, "providerNameForReflection":Ljava/lang/String;
    const-string v9, ""

    .line 499
    .local v9, "requestUrl":Ljava/lang/String;
    invoke-virtual {v8}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getRewardedVideoSettings()Lorg/json/JSONObject;

    move-result-object v13

    if-eqz v13, :cond_2

    .line 500
    invoke-virtual {v8}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getRewardedVideoSettings()Lorg/json/JSONObject;

    move-result-object v13

    const-string v14, "requestUrl"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 503
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ironsource/mediationsdk/InterstitialManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v14, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NATIVE:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ironsource/mediationsdk/InterstitialManager;->TAG:Ljava/lang/String;

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

    .line 506
    :try_start_0
    invoke-virtual {v8}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->isMultipleInstances()Z

    move-result v3

    .line 507
    .local v3, "isMultipleInstances":Z
    invoke-virtual {v8}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getSubProviderId()Ljava/lang/String;

    move-result-object v12

    .line 509
    .local v12, "subProviderId":Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 510
    move-object/from16 p1, v7

    .line 512
    :cond_3
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v10

    .line 514
    .local v10, "sso":Lcom/ironsource/mediationsdk/IronSourceObject;
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getExistingAdapter(Ljava/lang/String;)Lcom/ironsource/mediationsdk/AbstractAdapter;

    move-result-object v6

    .line 516
    .local v6, "providerAdapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    if-nez v6, :cond_6

    .line 518
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

    .line 519
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

    .line 520
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

    .line 522
    .restart local v6    # "providerAdapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    if-nez v6, :cond_4

    .line 523
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 525
    :cond_4
    invoke-virtual {v6, v3}, Lcom/ironsource/mediationsdk/AbstractAdapter;->setIsMultipleInstances(Z)V

    .line 527
    invoke-virtual {v10, v6}, Lcom/ironsource/mediationsdk/IronSourceObject;->addToISAdaptersList(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 529
    sget-object v13, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {v6, v13, v12}, Lcom/ironsource/mediationsdk/AbstractAdapter;->setSubProviderId(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Ljava/lang/String;)V

    .line 531
    if-eqz v3, :cond_5

    .line 532
    sget-object v13, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {v6, v13, v8}, Lcom/ironsource/mediationsdk/AbstractAdapter;->updateAdapterSettings(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Lcom/ironsource/mediationsdk/model/ProviderSettings;)V

    .line 554
    .end local v5    # "mAdapterClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v11    # "startAdapterMethod":Ljava/lang/reflect/Method;
    :cond_5
    :goto_1
    invoke-virtual {v8}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getProviderInstanceName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Lcom/ironsource/mediationsdk/AbstractAdapter;->setInterstitialProviderInstanceName(Ljava/lang/String;)V

    .line 557
    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getMaxISAdsPerIteration()I

    move-result v13

    const/4 v14, 0x1

    if-ge v13, v14, :cond_a

    .line 558
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 534
    :cond_6
    if-eqz v3, :cond_5

    .line 535
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/ironsource/mediationsdk/InterstitialManager;->isAdapterInSmartLoad(Lcom/ironsource/mediationsdk/AbstractAdapter;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 536
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/ironsource/mediationsdk/InterstitialManager;->mDidMissHigherPriorityAdapter:Z

    .line 538
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ironsource/mediationsdk/InterstitialManager;->mSkippedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v8}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getProviderInstanceName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_7

    .line 539
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ironsource/mediationsdk/InterstitialManager;->mSkippedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v8}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getProviderInstanceName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 541
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ironsource/mediationsdk/InterstitialManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v14, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Skipping "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v8}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getProviderInstanceName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v16}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 542
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 544
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ironsource/mediationsdk/InterstitialManager;->mSkippedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v8}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getProviderInstanceName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 545
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ironsource/mediationsdk/InterstitialManager;->mSkippedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v8}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getProviderInstanceName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 547
    :cond_9
    sget-object v13, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {v6, v13, v8}, Lcom/ironsource/mediationsdk/AbstractAdapter;->updateAdapterSettings(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Lcom/ironsource/mediationsdk/model/ProviderSettings;)V

    .line 548
    sget-object v13, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {v6, v13, v12}, Lcom/ironsource/mediationsdk/AbstractAdapter;->setSubProviderId(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Ljava/lang/String;)V

    .line 550
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 560
    :cond_a
    sget-object v13, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {v6, v13}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getMaxAdsPerSession(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)I

    move-result v13

    const/4 v14, 0x1

    if-ge v13, v14, :cond_b

    .line 561
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 564
    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ironsource/mediationsdk/InterstitialManager;->mServerResponseWrapper:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    sget-object v14, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {v8}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getProviderInstanceName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->dropProviderForCurrentSession(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Ljava/lang/String;)V

    .line 566
    invoke-virtual {v8}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getInterstitialPriority()I

    move-result v13

    invoke-virtual {v6, v13}, Lcom/ironsource/mediationsdk/AbstractAdapter;->setInterstitialPriority(I)V

    .line 569
    if-eqz v4, :cond_c

    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/AbstractAdapter;->didInitInterstitial()Z

    move-result v13

    if-nez v13, :cond_f

    .line 571
    :cond_c
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/ironsource/mediationsdk/InterstitialManager;->setCustomParams(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 572
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ironsource/mediationsdk/InterstitialManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    invoke-virtual {v6, v13}, Lcom/ironsource/mediationsdk/AbstractAdapter;->setLogListener(Lcom/ironsource/mediationsdk/logger/LogListener;)V

    .line 573
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ironsource/mediationsdk/InterstitialManager;->mServerResponseWrapper:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v13}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v13

    invoke-virtual {v13}, Lcom/ironsource/mediationsdk/model/Configurations;->getInterstitialConfigurations()Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;

    move-result-object v13

    invoke-virtual {v13}, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;->getInterstitialAdaptersSmartLoadTimeout()I

    move-result v13

    invoke-virtual {v6, v13}, Lcom/ironsource/mediationsdk/AbstractAdapter;->setInterstitialTimeout(I)V

    .line 575
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ironsource/mediationsdk/InterstitialManager;->mServerResponseWrapper:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v13}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v13

    invoke-virtual {v13}, Lcom/ironsource/mediationsdk/model/Configurations;->getInterstitialConfigurations()Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;

    move-result-object v13

    invoke-virtual {v6, v13}, Lcom/ironsource/mediationsdk/AbstractAdapter;->setInterstitialConfigurations(Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;)V

    .line 576
    invoke-static {}, Lcom/ironsource/mediationsdk/config/ConfigFile;->getConfigFile()Lcom/ironsource/mediationsdk/config/ConfigFile;

    move-result-object v13

    invoke-virtual {v13}, Lcom/ironsource/mediationsdk/config/ConfigFile;->getPluginType()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_d

    .line 577
    invoke-static {}, Lcom/ironsource/mediationsdk/config/ConfigFile;->getConfigFile()Lcom/ironsource/mediationsdk/config/ConfigFile;

    move-result-object v13

    invoke-virtual {v13}, Lcom/ironsource/mediationsdk/config/ConfigFile;->getPluginType()Ljava/lang/String;

    move-result-object v13

    invoke-static {}, Lcom/ironsource/mediationsdk/config/ConfigFile;->getConfigFile()Lcom/ironsource/mediationsdk/config/ConfigFile;

    move-result-object v14

    invoke-virtual {v14}, Lcom/ironsource/mediationsdk/config/ConfigFile;->getPluginFrameworkVersion()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v13, v14}, Lcom/ironsource/mediationsdk/AbstractAdapter;->setPluginData(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    :cond_d
    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->setInterstitialListener(Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;)V

    .line 581
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ironsource/mediationsdk/InterstitialManager;->mRewardedInterstitialListenerWrapper:Lcom/ironsource/mediationsdk/sdk/RewardedInterstitialListener;

    if-eqz v13, :cond_e

    .line 582
    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->setRewardedInterstitialListener(Lcom/ironsource/mediationsdk/sdk/RewardedInterstitialManagerListener;)V

    .line 584
    :cond_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ironsource/mediationsdk/InterstitialManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v14, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NATIVE:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ironsource/mediationsdk/InterstitialManager;->TAG:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ": startAdapter("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getInterstitialProviderInstanceName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ") moved to \'Initialization Pending\' list"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v16}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 585
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/ironsource/mediationsdk/InterstitialManager;->addToInitPending(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 587
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ironsource/mediationsdk/InterstitialManager;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ironsource/mediationsdk/InterstitialManager;->mAppKey:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ironsource/mediationsdk/InterstitialManager;->mUserId:Ljava/lang/String;

    invoke-virtual {v6, v13, v14, v15}, Lcom/ironsource/mediationsdk/AbstractAdapter;->initInterstitial(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    const/4 v13, 0x1

    invoke-virtual {v6, v13}, Lcom/ironsource/mediationsdk/AbstractAdapter;->setDidInitInterstitial(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 594
    .end local v3    # "isMultipleInstances":Z
    .end local v6    # "providerAdapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    .end local v10    # "sso":Lcom/ironsource/mediationsdk/IronSourceObject;
    .end local v12    # "subProviderId":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 595
    .local v1, "e":Ljava/lang/Throwable;
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

    const-string v14, "Interstitial"

    invoke-static {v13, v14}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v2

    .line 596
    .local v2, "error":Lcom/ironsource/mediationsdk/logger/IronSourceError;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ironsource/mediationsdk/InterstitialManager;->mServerResponseWrapper:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->decreaseMaxISAdapters(Z)I

    .line 598
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ironsource/mediationsdk/InterstitialManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v14, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ironsource/mediationsdk/InterstitialManager;->TAG:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ":startAdapter"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 599
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ironsource/mediationsdk/InterstitialManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v14, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x2

    invoke-virtual/range {v13 .. v16}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 601
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 591
    .end local v1    # "e":Ljava/lang/Throwable;
    .end local v2    # "error":Lcom/ironsource/mediationsdk/logger/IronSourceError;
    .restart local v3    # "isMultipleInstances":Z
    .restart local v6    # "providerAdapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    .restart local v10    # "sso":Lcom/ironsource/mediationsdk/IronSourceObject;
    .restart local v12    # "subProviderId":Ljava/lang/String;
    :cond_f
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ironsource/mediationsdk/InterstitialManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v14, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NATIVE:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ironsource/mediationsdk/InterstitialManager;->TAG:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ": startAdapter("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getInterstitialProviderInstanceName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ") moved to \'Initiated\' list"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v16}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 592
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/ironsource/mediationsdk/InterstitialManager;->addInitiatedInterstitialAdapter(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private startNextAdapter()Lcom/ironsource/mediationsdk/AbstractAdapter;
    .locals 4

    .prologue
    .line 471
    iget-object v2, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mServerResponseWrapper:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/Configurations;->getInterstitialConfigurations()Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;->getInterstitialAdaptersSmartLoadAmount()I

    move-result v1

    .line 472
    .local v1, "numOfAdaptersToLoad":I
    const/4 v0, 0x0

    .line 474
    .local v0, "initiatedAdapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    iget-object v2, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mReadyAdapters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mInitiatedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mLoadingAdapters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mInitializationPendingAdapters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v2, v3

    if-lt v2, v1, :cond_0

    iget-boolean v2, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mDidMissHigherPriorityAdapter:Z

    if-eqz v2, :cond_1

    .line 475
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mDidMissHigherPriorityAdapter:Z

    .line 477
    :goto_0
    iget-object v2, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mServerResponseWrapper:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->hasMoreISProvidersToLoad()Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v0, :cond_1

    .line 478
    iget-object v2, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mServerResponseWrapper:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getNextISProvider()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/ironsource/mediationsdk/InterstitialManager;->startAdapter(Ljava/lang/String;)Lcom/ironsource/mediationsdk/AbstractAdapter;

    move-result-object v0

    goto :goto_0

    .line 482
    :cond_1
    return-object v0
.end method


# virtual methods
.method declared-synchronized dropAdapterFromSmartLoad(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    .locals 2
    .param p1, "adapter"    # Lcom/ironsource/mediationsdk/AbstractAdapter;

    .prologue
    .line 115
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/InterstitialManager;->addCappedPerSessionAdapter(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 118
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->isMultipleInstances()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/InterstitialManager;->isIterationRoundComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/InterstitialManager;->completeIterationRound()V

    .line 123
    :cond_0
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/InterstitialManager;->startNextAdapter()Lcom/ironsource/mediationsdk/AbstractAdapter;

    move-result-object v0

    if-nez v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mCappedPerSessionAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mNotInitAdapters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mServerResponseWrapper:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getTotalISAdapters()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mAllCapped:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    :cond_1
    monitor-exit p0

    return-void

    .line 115
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPlacementByName(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/InterstitialPlacement;
    .locals 6
    .param p1, "placementName"    # Ljava/lang/String;

    .prologue
    .line 1025
    iget-object v3, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mServerResponseWrapper:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mServerResponseWrapper:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mServerResponseWrapper:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    .line 1026
    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/Configurations;->getInterstitialConfigurations()Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;

    move-result-object v3

    if-nez v3, :cond_2

    .line 1027
    :cond_0
    const/4 v2, 0x0

    .line 1043
    :cond_1
    :goto_0
    return-object v2

    .line 1029
    :cond_2
    const/4 v2, 0x0

    .line 1031
    .local v2, "placement":Lcom/ironsource/mediationsdk/model/InterstitialPlacement;
    :try_start_0
    iget-object v3, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mServerResponseWrapper:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/Configurations;->getInterstitialConfigurations()Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;->getInterstitialPlacement(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/InterstitialPlacement;

    move-result-object v2

    .line 1032
    if-nez v2, :cond_1

    .line 1034
    iget-object v3, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mServerResponseWrapper:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/Configurations;->getInterstitialConfigurations()Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;->getDefaultInterstitialPlacement()Lcom/ironsource/mediationsdk/model/InterstitialPlacement;

    move-result-object v2

    .line 1035
    if-nez v2, :cond_1

    .line 1036
    const-string v1, "Default placement was not found"

    .line 1037
    .local v1, "noDefaultPlacement":Ljava/lang/String;
    iget-object v3, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v1, v5}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1040
    .end local v1    # "noDefaultPlacement":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1041
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public declared-synchronized initInterstitial(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "userId"    # Ljava/lang/String;

    .prologue
    .line 149
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/InterstitialManager;->removeScheduledLoadFailedCallback()V

    .line 150
    iget-object v3, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NATIVE:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":initInterstitial(appKey: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", userId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 151
    iput-object p2, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mAppKey:Ljava/lang/String;

    .line 152
    iput-object p3, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mUserId:Ljava/lang/String;

    .line 153
    iput-object p1, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mActivity:Landroid/app/Activity;

    .line 154
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/IronSourceObject;->getCurrentServerResponse()Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    move-result-object v3

    iput-object v3, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mServerResponseWrapper:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    .line 155
    iget-object v3, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mServerResponseWrapper:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    if-eqz v3, :cond_0

    .line 156
    iget-object v3, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mServerResponseWrapper:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/Configurations;->getInterstitialConfigurations()Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;->getInterstitialAdaptersSmartLoadAmount()I

    move-result v2

    .line 157
    .local v2, "numOfAdaptersToLoad":I
    iput v2, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mNumberOfAdaptersToLoad:I

    .line 159
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 160
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/InterstitialManager;->startNextAdapter()Lcom/ironsource/mediationsdk/AbstractAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 161
    .local v1, "lastLoadedAdapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    if-nez v1, :cond_1

    .line 165
    .end local v0    # "i":I
    .end local v1    # "lastLoadedAdapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    .end local v2    # "numOfAdaptersToLoad":I
    :cond_0
    monitor-exit p0

    return-void

    .line 159
    .restart local v0    # "i":I
    .restart local v1    # "lastLoadedAdapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    .restart local v2    # "numOfAdaptersToLoad":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 149
    .end local v0    # "i":I
    .end local v1    # "lastLoadedAdapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    .end local v2    # "numOfAdaptersToLoad":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method declared-synchronized isAdapterInSmartLoad(Lcom/ironsource/mediationsdk/AbstractAdapter;)Z
    .locals 1
    .param p1, "adapter"    # Lcom/ironsource/mediationsdk/AbstractAdapter;

    .prologue
    .line 132
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mLoadingAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mExhaustedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mInitiatedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mNotInitAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mReadyAdapters:Ljava/util/ArrayList;

    .line 133
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mLoadFailedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mInitializationPendingAdapters:Ljava/util/ArrayList;

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

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method isBackFillAvailable()Z
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mBackFillAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mBackFillAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->isInterstitialReady()Z

    move-result v0

    .line 111
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInterstitialPlacementCapped(Ljava/lang/String;)Z
    .locals 1
    .param p1, "placementName"    # Ljava/lang/String;

    .prologue
    .line 1021
    const/4 v0, 0x0

    return v0
.end method

.method public isInterstitialReady()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1006
    iget-boolean v2, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mShouldTrackNetworkState:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mActivity:Landroid/app/Activity;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1015
    :cond_0
    :goto_0
    return v1

    .line 1010
    :cond_1
    iget-object v2, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mReadyAdapters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/AbstractAdapter;

    .line 1011
    .local v0, "adapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->isInterstitialReady()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1012
    const/4 v1, 0x1

    goto :goto_0
.end method

.method isPremiumAdapter(Ljava/lang/String;)Z
    .locals 2
    .param p1, "providerName"    # Ljava/lang/String;

    .prologue
    .line 138
    iget-object v1, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mServerResponseWrapper:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getISPremiumProvider()Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, "premiumAdapterName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 140
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 142
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public declared-synchronized loadInterstitial()V
    .locals 12

    .prologue
    .line 170
    monitor-enter p0

    :try_start_0
    iget-boolean v8, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mLoadInProgress:Z

    if-eqz v8, :cond_1

    .line 171
    iget-object v8, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v9, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v10, "Load Interstitial is already in progress"

    const/4 v11, 0x1

    invoke-virtual {v8, v9, v10, v11}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 175
    :cond_1
    const/4 v8, 0x1

    :try_start_1
    invoke-direct {p0, v8}, Lcom/ironsource/mediationsdk/InterstitialManager;->resetLoadRound(Z)V

    .line 176
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mDidCallLoad:Z

    .line 177
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mLoadInProgress:Z

    .line 179
    new-instance v4, Lcom/ironsource/eventsmodule/EventData;

    const/16 v8, 0x16

    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData()Lorg/json/JSONObject;

    move-result-object v9

    invoke-direct {v4, v8, v9}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 180
    .local v4, "event":Lcom/ironsource/eventsmodule/EventData;
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v8

    invoke-virtual {v8, v4}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    .line 182
    invoke-static {}, Lcom/ironsource/mediationsdk/MediationInitializer;->getInstance()Lcom/ironsource/mediationsdk/MediationInitializer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/ironsource/mediationsdk/MediationInitializer;->getCurrentInitStatus()Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    move-result-object v1

    .line 184
    .local v1, "currentInitStatus":Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;
    const-string v6, "Load Interstitial can\'t be called before the Interstitial ad unit initialization completed successfully"

    .line 185
    .local v6, "loadFailMsg":Ljava/lang/String;
    sget-object v8, Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;->INIT_FAILED:Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    if-eq v1, v8, :cond_2

    sget-object v8, Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;->NOT_INIT:Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    if-ne v1, v8, :cond_3

    .line 186
    :cond_2
    invoke-static {v6}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildLoadFailedError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {p0, v8, v9}, Lcom/ironsource/mediationsdk/InterstitialManager;->sendOrScheduleLoadFailedCallback(Lcom/ironsource/mediationsdk/logger/IronSourceError;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 227
    .end local v1    # "currentInitStatus":Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;
    .end local v4    # "event":Lcom/ironsource/eventsmodule/EventData;
    .end local v6    # "loadFailMsg":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 228
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v8, "loadInterstitial exception"

    invoke-static {v8}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildLoadFailedError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v3

    .line 229
    .local v3, "error":Lcom/ironsource/mediationsdk/logger/IronSourceError;
    const/4 v8, 0x0

    invoke-direct {p0, v3, v8}, Lcom/ironsource/mediationsdk/InterstitialManager;->sendOrScheduleLoadFailedCallback(Lcom/ironsource/mediationsdk/logger/IronSourceError;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 170
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "error":Lcom/ironsource/mediationsdk/logger/IronSourceError;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 188
    .restart local v1    # "currentInitStatus":Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;
    .restart local v4    # "event":Lcom/ironsource/eventsmodule/EventData;
    .restart local v6    # "loadFailMsg":Ljava/lang/String;
    :cond_3
    :try_start_3
    sget-object v8, Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;->INIT_IN_PROGRESS:Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    if-ne v1, v8, :cond_4

    .line 189
    invoke-static {v6}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildLoadFailedError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v8

    const/4 v9, 0x1

    invoke-direct {p0, v8, v9}, Lcom/ironsource/mediationsdk/InterstitialManager;->sendOrScheduleLoadFailedCallback(Lcom/ironsource/mediationsdk/logger/IronSourceError;Z)V

    goto :goto_0

    .line 193
    :cond_4
    iget-object v8, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mActivity:Landroid/app/Activity;

    invoke-static {v8}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 194
    const-string v8, "Interstitial"

    invoke-static {v8}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildNoInternetConnectionLoadFailError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {p0, v8, v9}, Lcom/ironsource/mediationsdk/InterstitialManager;->sendOrScheduleLoadFailedCallback(Lcom/ironsource/mediationsdk/logger/IronSourceError;Z)V

    goto :goto_0

    .line 198
    :cond_5
    iget-object v8, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mServerResponseWrapper:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mInitiatedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_9

    .line 199
    :cond_6
    iget-object v8, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mServerResponseWrapper:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    if-eqz v8, :cond_7

    iget-boolean v8, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mDidFinishToInitInterstitial:Z

    if-eqz v8, :cond_0

    .line 203
    :cond_7
    iget-boolean v8, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mAllCapped:Z

    if-eqz v8, :cond_8

    .line 204
    const-string v8, "Interstitial"

    invoke-static {v8}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildCappedPerSessionError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {p0, v8, v9}, Lcom/ironsource/mediationsdk/InterstitialManager;->sendOrScheduleLoadFailedCallback(Lcom/ironsource/mediationsdk/logger/IronSourceError;Z)V

    goto/16 :goto_0

    .line 209
    :cond_8
    const-string v8, "no ads to show"

    invoke-static {v8}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildGenericError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {p0, v8, v9}, Lcom/ironsource/mediationsdk/InterstitialManager;->sendOrScheduleLoadFailedCallback(Lcom/ironsource/mediationsdk/logger/IronSourceError;Z)V

    goto/16 :goto_0

    .line 213
    :cond_9
    iget-object v8, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mInitiatedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 215
    .local v7, "tempInitiatedAdaptersList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ironsource/mediationsdk/AbstractAdapter;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 217
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    iget v8, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mNumberOfAdaptersToLoad:I

    if-ge v5, v8, :cond_a

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v5, v8, :cond_a

    .line 218
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/AbstractAdapter;

    .line 219
    .local v0, "adapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/InterstitialManager;->addLoadingInterstitialAdapter(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 217
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 222
    .end local v0    # "adapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    :cond_a
    const/4 v5, 0x0

    :goto_2
    iget v8, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mNumberOfAdaptersToLoad:I

    if-ge v5, v8, :cond_0

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v5, v8, :cond_0

    .line 223
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/AbstractAdapter;

    .line 224
    .restart local v0    # "adapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/InterstitialManager;->loadAdapterAndSendEvent(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 222
    add-int/lit8 v5, v5, 0x1

    goto :goto_2
.end method

.method public onInitFailed(Ljava/lang/String;)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 1055
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mDidCallLoad:Z

    if-eqz v0, :cond_0

    .line 1056
    const-string v0, "no ads to show"

    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildGenericError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/ironsource/mediationsdk/InterstitialManager;->sendOrScheduleLoadFailedCallback(Lcom/ironsource/mediationsdk/logger/IronSourceError;Z)V

    .line 1058
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
    .line 1050
    .local p1, "adUnits":Ljava/util/List;, "Ljava/util/List<Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;>;"
    return-void
.end method

.method public onInterstitialAdClicked(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    .locals 5
    .param p1, "adapter"    # Lcom/ironsource/mediationsdk/AbstractAdapter;

    .prologue
    .line 968
    iget-object v1, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":onInterstitialAdClicked()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 970
    new-instance v0, Lcom/ironsource/eventsmodule/EventData;

    const/16 v1, 0x1c

    sget-object v2, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-static {p1, v2}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getProviderAdditionalData(Lcom/ironsource/mediationsdk/AbstractAdapter;Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 971
    .local v0, "event":Lcom/ironsource/eventsmodule/EventData;
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    .line 973
    iget-object v1, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mInterstitialListenersWrapper:Lcom/ironsource/mediationsdk/sdk/InterstitialListener;

    invoke-interface {v1}, Lcom/ironsource/mediationsdk/sdk/InterstitialListener;->onInterstitialAdClicked()V

    .line 974
    return-void
.end method

.method public onInterstitialAdClosed(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    .locals 5
    .param p1, "adapter"    # Lcom/ironsource/mediationsdk/AbstractAdapter;

    .prologue
    .line 915
    iget-object v1, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":onInterstitialAdClosed()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 917
    new-instance v0, Lcom/ironsource/eventsmodule/EventData;

    const/16 v1, 0x1a

    sget-object v2, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-static {p1, v2}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getProviderAdditionalData(Lcom/ironsource/mediationsdk/AbstractAdapter;Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 918
    .local v0, "event":Lcom/ironsource/eventsmodule/EventData;
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    .line 920
    iget-object v1, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mInterstitialListenersWrapper:Lcom/ironsource/mediationsdk/sdk/InterstitialListener;

    invoke-interface {v1}, Lcom/ironsource/mediationsdk/sdk/InterstitialListener;->onInterstitialAdClosed()V

    .line 922
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->isMultipleInstances()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 923
    sget-object v1, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {p1, v1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->increaseNumberOfAdsPlayedThisSession(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V

    .line 924
    sget-object v1, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {p1, v1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->canShowAdInCurrentSession(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 926
    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/InterstitialManager;->dropAdapterFromSmartLoad(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 929
    :cond_0
    return-void
.end method

.method public declared-synchronized onInterstitialAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    .locals 10
    .param p1, "error"    # Lcom/ironsource/mediationsdk/logger/IronSourceError;
    .param p2, "adapter"    # Lcom/ironsource/mediationsdk/AbstractAdapter;

    .prologue
    .line 864
    monitor-enter p0

    const/4 v5, 0x0

    .line 866
    .local v5, "shouldReportFailed":Z
    :try_start_0
    iget-object v6, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v7, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":onInterstitialAdLoadFailed("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v6, v7, v8, v9}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 868
    sget-object v6, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-static {p2, v6}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getProviderAdditionalData(Lcom/ironsource/mediationsdk/AbstractAdapter;Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 870
    .local v0, "data":Lorg/json/JSONObject;
    :try_start_1
    const-string v6, "status"

    const-string v7, "false"

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 871
    const-string v6, "errorCode"

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result v7

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 876
    :goto_0
    :try_start_2
    new-instance v2, Lcom/ironsource/eventsmodule/EventData;

    const/16 v6, 0x1b

    invoke-direct {v2, v6, v0}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 877
    .local v2, "event":Lcom/ironsource/eventsmodule/EventData;
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    .line 879
    invoke-direct {p0, p2}, Lcom/ironsource/mediationsdk/InterstitialManager;->addLoadFailedInterstitialAdapter(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 881
    iget-object v6, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mReadyAdapters:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    iget v7, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mNumberOfAdaptersToLoad:I

    if-ge v6, v7, :cond_0

    .line 882
    iget-object v6, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mInitiatedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 883
    iget-object v6, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mInitiatedAdapters:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ironsource/mediationsdk/AbstractAdapter;

    .line 884
    .local v4, "nextAdapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    invoke-direct {p0, v4}, Lcom/ironsource/mediationsdk/InterstitialManager;->addLoadingInterstitialAdapter(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 885
    invoke-direct {p0, v4}, Lcom/ironsource/mediationsdk/InterstitialManager;->loadAdapterAndSendEvent(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 898
    .end local v4    # "nextAdapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    :cond_0
    :goto_1
    if-eqz v5, :cond_1

    .line 899
    const/4 v6, 0x0

    invoke-direct {p0, p1, v6}, Lcom/ironsource/mediationsdk/InterstitialManager;->sendOrScheduleLoadFailedCallback(Lcom/ironsource/mediationsdk/logger/IronSourceError;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 901
    :cond_1
    monitor-exit p0

    return-void

    .line 872
    .end local v2    # "event":Lcom/ironsource/eventsmodule/EventData;
    :catch_0
    move-exception v1

    .line 873
    .local v1, "e":Lorg/json/JSONException;
    :try_start_3
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 864
    .end local v0    # "data":Lorg/json/JSONObject;
    .end local v1    # "e":Lorg/json/JSONException;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 888
    .restart local v0    # "data":Lorg/json/JSONObject;
    .restart local v2    # "event":Lcom/ironsource/eventsmodule/EventData;
    :cond_2
    :try_start_4
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/InterstitialManager;->startNextAdapter()Lcom/ironsource/mediationsdk/AbstractAdapter;

    move-result-object v3

    .line 889
    .local v3, "initiatedAdapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    if-nez v3, :cond_0

    iget-boolean v6, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mDidCallLoad:Z

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mReadyAdapters:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mLoadingAdapters:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_0

    .line 890
    const/4 v5, 0x1

    .line 891
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/InterstitialManager;->isIterationRoundComplete()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 892
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/InterstitialManager;->completeIterationRound()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public onInterstitialAdOpened(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    .locals 5
    .param p1, "adapter"    # Lcom/ironsource/mediationsdk/AbstractAdapter;

    .prologue
    .line 905
    iget-object v1, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":onInterstitialAdOpened()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 907
    new-instance v0, Lcom/ironsource/eventsmodule/EventData;

    const/16 v1, 0x19

    sget-object v2, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-static {p1, v2}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getProviderAdditionalData(Lcom/ironsource/mediationsdk/AbstractAdapter;Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 908
    .local v0, "event":Lcom/ironsource/eventsmodule/EventData;
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    .line 910
    iget-object v1, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mInterstitialListenersWrapper:Lcom/ironsource/mediationsdk/sdk/InterstitialListener;

    invoke-interface {v1}, Lcom/ironsource/mediationsdk/sdk/InterstitialListener;->onInterstitialAdOpened()V

    .line 911
    return-void
.end method

.method public declared-synchronized onInterstitialAdReady(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    .locals 8
    .param p1, "adapter"    # Lcom/ironsource/mediationsdk/AbstractAdapter;

    .prologue
    .line 833
    monitor-enter p0

    const/4 v3, 0x0

    .line 835
    .local v3, "shouldReportReady":Z
    :try_start_0
    iget-object v4, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v5, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":onInterstitialAdReady()"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 837
    sget-object v4, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-static {p1, v4}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getProviderAdditionalData(Lcom/ironsource/mediationsdk/AbstractAdapter;Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 839
    .local v0, "data":Lorg/json/JSONObject;
    :try_start_1
    const-string v4, "status"

    const-string v5, "true"

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 844
    :goto_0
    :try_start_2
    new-instance v2, Lcom/ironsource/eventsmodule/EventData;

    const/16 v4, 0x1b

    invoke-direct {v2, v4, v0}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 845
    .local v2, "event":Lcom/ironsource/eventsmodule/EventData;
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    .line 847
    iget-boolean v4, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mDidCallLoad:Z

    if-eqz v4, :cond_1

    .line 848
    iget-object v4, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mReadyAdapters:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 849
    const/4 v3, 0x1

    .line 851
    :cond_0
    iget-object v4, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v5, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NATIVE:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Smart Loading - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getInterstitialProviderInstanceName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " moved to \'Ready\' list"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 852
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/InterstitialManager;->addReadyInterstitialAdapter(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 855
    :cond_1
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/InterstitialManager;->removeScheduledLoadFailedCallback()V

    .line 856
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mLoadInProgress:Z

    .line 857
    if-eqz v3, :cond_2

    .line 858
    iget-object v4, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mInterstitialListenersWrapper:Lcom/ironsource/mediationsdk/sdk/InterstitialListener;

    invoke-interface {v4}, Lcom/ironsource/mediationsdk/sdk/InterstitialListener;->onInterstitialAdReady()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 860
    :cond_2
    monitor-exit p0

    return-void

    .line 840
    .end local v2    # "event":Lcom/ironsource/eventsmodule/EventData;
    :catch_0
    move-exception v1

    .line 841
    .local v1, "e":Lorg/json/JSONException;
    :try_start_3
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 833
    .end local v0    # "data":Lorg/json/JSONObject;
    .end local v1    # "e":Lorg/json/JSONException;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public onInterstitialAdRewarded(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    .locals 3
    .param p1, "adapter"    # Lcom/ironsource/mediationsdk/AbstractAdapter;

    .prologue
    .line 265
    new-instance v0, Lcom/ironsource/eventsmodule/EventData;

    const/16 v1, 0x122

    sget-object v2, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-static {p1, v2}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getProviderAdditionalData(Lcom/ironsource/mediationsdk/AbstractAdapter;Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 266
    .local v0, "event":Lcom/ironsource/eventsmodule/EventData;
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    .line 268
    iget-object v1, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mRewardedInterstitialListenerWrapper:Lcom/ironsource/mediationsdk/sdk/RewardedInterstitialListener;

    if-eqz v1, :cond_0

    .line 269
    iget-object v1, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mRewardedInterstitialListenerWrapper:Lcom/ironsource/mediationsdk/sdk/RewardedInterstitialListener;

    invoke-interface {v1}, Lcom/ironsource/mediationsdk/sdk/RewardedInterstitialListener;->onInterstitialAdRewarded()V

    .line 270
    :cond_0
    return-void
.end method

.method public onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    .locals 5
    .param p1, "error"    # Lcom/ironsource/mediationsdk/logger/IronSourceError;
    .param p2, "adapter"    # Lcom/ironsource/mediationsdk/AbstractAdapter;

    .prologue
    const/4 v4, 0x1

    .line 954
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":onInterstitialAdShowFailed("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 956
    invoke-direct {p0, p2}, Lcom/ironsource/mediationsdk/InterstitialManager;->completeAdapterShow(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 958
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mReadyAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 959
    iput-boolean v4, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mDidCallLoad:Z

    .line 960
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mLastPlacementForShowFail:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/ironsource/mediationsdk/InterstitialManager;->showInterstitial(Ljava/lang/String;)V

    .line 964
    :goto_0
    return-void

    .line 962
    :cond_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mInterstitialListenersWrapper:Lcom/ironsource/mediationsdk/sdk/InterstitialListener;

    invoke-interface {v0, p1}, Lcom/ironsource/mediationsdk/sdk/InterstitialListener;->onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_0
.end method

.method public onInterstitialAdShowSucceeded(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    .locals 6
    .param p1, "adapter"    # Lcom/ironsource/mediationsdk/AbstractAdapter;

    .prologue
    .line 933
    iget-object v2, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":onInterstitialAdShowSucceeded()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 935
    iget-object v2, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mReadyAdapters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 936
    iget-object v2, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mReadyAdapters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 938
    .local v1, "tempReady":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ironsource/mediationsdk/AbstractAdapter;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/AbstractAdapter;

    .line 939
    .local v0, "a":Lcom/ironsource/mediationsdk/AbstractAdapter;
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/InterstitialManager;->completeAdapterShow(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    goto :goto_0

    .line 941
    .end local v0    # "a":Lcom/ironsource/mediationsdk/AbstractAdapter;
    .end local v1    # "tempReady":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ironsource/mediationsdk/AbstractAdapter;>;"
    :cond_0
    iget-object v2, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mCappedPerSessionAdapters:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getInterstitialProviderInstanceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 942
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/InterstitialManager;->isIterationRoundComplete()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 943
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/InterstitialManager;->completeIterationRound()V

    .line 947
    :cond_1
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/InterstitialManager;->moveAdaptersToInitiated()V

    .line 949
    iget-object v2, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mInterstitialListenersWrapper:Lcom/ironsource/mediationsdk/sdk/InterstitialListener;

    invoke-interface {v2}, Lcom/ironsource/mediationsdk/sdk/InterstitialListener;->onInterstitialAdShowSucceeded()V

    .line 950
    return-void
.end method

.method public declared-synchronized onInterstitialInitFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    .locals 5
    .param p1, "error"    # Lcom/ironsource/mediationsdk/logger/IronSourceError;
    .param p2, "adapter"    # Lcom/ironsource/mediationsdk/AbstractAdapter;

    .prologue
    .line 807
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":onInterstitialInitFailed("

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

    .line 809
    iget-object v1, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NATIVE:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Smart Loading - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getInterstitialProviderInstanceName()Ljava/lang/String;

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

    .line 810
    invoke-direct {p0, p2}, Lcom/ironsource/mediationsdk/InterstitialManager;->addNotInitInterstitialAdapter(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 813
    iget-object v1, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mNotInitAdapters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mServerResponseWrapper:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getTotalISAdapters()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 814
    iget-object v1, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NATIVE:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Smart Loading - initialization failed - no adapters are initiated and no more left to init, error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 816
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    .line 814
    invoke-virtual {v1, v2, v3, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 817
    iget-boolean v1, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mDidCallLoad:Z

    if-eqz v1, :cond_0

    .line 818
    const-string v1, "no ads to show"

    invoke-static {v1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildGenericError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/ironsource/mediationsdk/InterstitialManager;->sendOrScheduleLoadFailedCallback(Lcom/ironsource/mediationsdk/logger/IronSourceError;Z)V

    .line 821
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mDidFinishToInitInterstitial:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 829
    :goto_0
    monitor-exit p0

    return-void

    .line 823
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/InterstitialManager;->startNextAdapter()Lcom/ironsource/mediationsdk/AbstractAdapter;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 825
    :catch_0
    move-exception v0

    .line 826
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v1, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onInterstitialInitFailed(error:"

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

    .line 827
    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 826
    invoke-virtual {v1, v2, v3, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 807
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onInterstitialInitSuccess(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    .locals 4
    .param p1, "adapter"    # Lcom/ironsource/mediationsdk/AbstractAdapter;

    .prologue
    .line 791
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " :onInterstitialInitSuccess()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 793
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NATIVE:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": startAdapter("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getInterstitialProviderInstanceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") moved to \'Initiated\' list"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 794
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/InterstitialManager;->addInitiatedInterstitialAdapter(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 796
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mDidFinishToInitInterstitial:Z

    .line 798
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mDidCallLoad:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mReadyAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mLoadingAdapters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mNumberOfAdaptersToLoad:I

    if-ge v0, v1, :cond_0

    .line 799
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/InterstitialManager;->addLoadingInterstitialAdapter(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 800
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/InterstitialManager;->loadAdapterAndSendEvent(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 802
    :cond_0
    monitor-exit p0

    return-void

    .line 791
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 986
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 979
    if-eqz p1, :cond_0

    .line 980
    iput-object p1, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mActivity:Landroid/app/Activity;

    .line 981
    :cond_0
    return-void
.end method

.method public setAge(I)V
    .locals 0
    .param p1, "age"    # I

    .prologue
    .line 991
    return-void
.end method

.method public setGender(Ljava/lang/String;)V
    .locals 0
    .param p1, "gender"    # Ljava/lang/String;

    .prologue
    .line 996
    return-void
.end method

.method public setInterstitialListener(Lcom/ironsource/mediationsdk/sdk/InterstitialListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/ironsource/mediationsdk/sdk/InterstitialListener;

    .prologue
    .line 406
    iput-object p1, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mInterstitialListenersWrapper:Lcom/ironsource/mediationsdk/sdk/InterstitialListener;

    .line 407
    return-void
.end method

.method public setMediationSegment(Ljava/lang/String;)V
    .locals 0
    .param p1, "segment"    # Ljava/lang/String;

    .prologue
    .line 1001
    return-void
.end method

.method public setRewardedInterstitialListener(Lcom/ironsource/mediationsdk/sdk/RewardedInterstitialListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/ironsource/mediationsdk/sdk/RewardedInterstitialListener;

    .prologue
    .line 411
    iput-object p1, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mRewardedInterstitialListenerWrapper:Lcom/ironsource/mediationsdk/sdk/RewardedInterstitialListener;

    .line 412
    return-void
.end method

.method shouldTrackNetworkState(Landroid/content/Context;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "track"    # Z

    .prologue
    .line 102
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Should Track Network State: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 103
    iput-boolean p2, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mShouldTrackNetworkState:Z

    .line 104
    return-void
.end method

.method public declared-synchronized showInterstitial()V
    .locals 0

    .prologue
    .line 339
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public showInterstitial(Ljava/lang/String;)V
    .locals 10
    .param p1, "placementName"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    .line 344
    iget-boolean v4, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mShouldTrackNetworkState:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mActivity:Landroid/app/Activity;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mActivity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 345
    iget-object v4, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v5, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->TAG:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":showInterstitial fail - no internet connection"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v9}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 346
    iget-object v4, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mInterstitialListenersWrapper:Lcom/ironsource/mediationsdk/sdk/InterstitialListener;

    const-string v5, "Interstitial"

    invoke-static {v5}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildNoInternetConnectionShowFailError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/ironsource/mediationsdk/sdk/InterstitialListener;->onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 402
    :goto_0
    return-void

    .line 351
    :cond_0
    iget-boolean v4, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mDidCallLoad:Z

    if-nez v4, :cond_1

    .line 352
    iget-object v4, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mInterstitialListenersWrapper:Lcom/ironsource/mediationsdk/sdk/InterstitialListener;

    const-string v5, "Interstitial"

    const-string v6, "showInterstitial failed - You need to load interstitial before showing it"

    invoke-static {v5, v6}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildShowFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/ironsource/mediationsdk/sdk/InterstitialListener;->onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_0

    .line 358
    :cond_1
    iget-object v4, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mReadyAdapters:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mReadyAdapters:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_3

    .line 359
    :cond_2
    iget-object v4, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v5, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->TAG:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":No adapters to show"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v9}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 360
    iget-object v4, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mInterstitialListenersWrapper:Lcom/ironsource/mediationsdk/sdk/InterstitialListener;

    const-string v5, "Interstitial"

    const-string v6, "showInterstitial failed - No adapters ready to show"

    invoke-static {v5, v6}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildShowFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/ironsource/mediationsdk/sdk/InterstitialListener;->onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_0

    .line 365
    :cond_3
    iput-object p1, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mLastPlacementForShowFail:Ljava/lang/String;

    .line 367
    iget-object v4, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mReadyAdapters:Ljava/util/ArrayList;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/AbstractAdapter;

    .line 369
    .local v0, "adapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    if-nez v0, :cond_4

    .line 370
    iget-object v4, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v5, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->TAG:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":No adapters to show"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v9}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 371
    iget-object v4, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mInterstitialListenersWrapper:Lcom/ironsource/mediationsdk/sdk/InterstitialListener;

    const-string v5, "Interstitial"

    const-string v6, "showInterstitial failed - No adapters ready to show"

    invoke-static {v5, v6}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildShowFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/ironsource/mediationsdk/sdk/InterstitialListener;->onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_0

    .line 376
    :cond_4
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->increaseNumberOfInterstitialAdsPlayed()V

    .line 377
    iget-object v4, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v5, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 378
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getNumberOfInterstitialAdsPlayed()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getMaxISAdsPerIteration()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ads played"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 377
    invoke-virtual {v4, v5, v6, v8}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 380
    sget-object v4, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-static {v0, v4}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getProviderAdditionalData(Lcom/ironsource/mediationsdk/AbstractAdapter;Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)Lorg/json/JSONObject;

    move-result-object v1

    .line 382
    .local v1, "data":Lorg/json/JSONObject;
    :try_start_0
    const-string v4, "placement"

    invoke-virtual {v1, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 387
    :goto_1
    new-instance v3, Lcom/ironsource/eventsmodule/EventData;

    const/16 v4, 0x17

    invoke-direct {v3, v4, v1}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 388
    .local v3, "event":Lcom/ironsource/eventsmodule/EventData;
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    .line 390
    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->showInterstitial(Ljava/lang/String;)V

    .line 391
    iget-object v4, p0, Lcom/ironsource/mediationsdk/InterstitialManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/InterstitialManager;->getPlacementByName(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/InterstitialPlacement;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/ironsource/mediationsdk/utils/CappingManager;->incrementShowCounter(Landroid/content/Context;Lcom/ironsource/mediationsdk/model/InterstitialPlacement;)V

    .line 393
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->isMultipleInstances()Z

    move-result v4

    if-nez v4, :cond_5

    .line 394
    sget-object v4, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {v0, v4}, Lcom/ironsource/mediationsdk/AbstractAdapter;->increaseNumberOfAdsPlayedThisSession(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V

    .line 395
    sget-object v4, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {v0, v4}, Lcom/ironsource/mediationsdk/AbstractAdapter;->canShowAdInCurrentSession(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 397
    invoke-virtual {p0, v0}, Lcom/ironsource/mediationsdk/InterstitialManager;->dropAdapterFromSmartLoad(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 401
    :cond_5
    invoke-direct {p0, v8}, Lcom/ironsource/mediationsdk/InterstitialManager;->resetLoadRound(Z)V

    goto/16 :goto_0

    .line 383
    .end local v3    # "event":Lcom/ironsource/eventsmodule/EventData;
    :catch_0
    move-exception v2

    .line 384
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method
