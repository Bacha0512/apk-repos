.class Lcom/ironsource/mediationsdk/RewardedVideoManager;
.super Lcom/ironsource/mediationsdk/AbstractAdUnitManager;
.source "RewardedVideoManager.java"

# interfaces
.implements Lcom/ironsource/mediationsdk/sdk/RewardedVideoApi;
.implements Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;
.implements Lcom/ironsource/environment/NetworkStateReceiver$NetworkStateReceiverListener;


# instance fields
.field private final KTO_ALGORITHM:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private mAllCapped:Z

.field private mAvailableAdapters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ironsource/mediationsdk/AbstractAdapter;",
            ">;"
        }
    .end annotation
.end field

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

.field private mIsAdAvailable:Z

.field private mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;

.field private mNetworkStateReceiver:Lcom/ironsource/environment/NetworkStateReceiver;

.field private mNotAvailableAdapters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ironsource/mediationsdk/AbstractAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private mNotifiedAll:Z

.field private mPauseSmartLoadDueToNetworkUnavailability:Z

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
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/AbstractAdUnitManager;-><init>()V

    .line 33
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->TAG:Ljava/lang/String;

    .line 34
    const-string v0, "KTO"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->KTO_ALGORITHM:Ljava/lang/String;

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mPauseSmartLoadDueToNetworkUnavailability:Z

    .line 57
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->prepareStateForInit()V

    .line 58
    return-void
.end method

.method private declared-synchronized addCappedPerSessionAdapter(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    .locals 4
    .param p1, "adapter"    # Lcom/ironsource/mediationsdk/AbstractAdapter;

    .prologue
    .line 781
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NATIVE:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Smart Loading - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getRewardedVideoProviderInstanceName()Ljava/lang/String;

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

    .line 784
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->removeFromAvailable(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 785
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->removeFromExhausted(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 786
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->removeFromInitiated(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 787
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->removeFromUnavailable(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 789
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mCappedPerSessionAdapters:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getRewardedVideoProviderInstanceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 790
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mCappedPerSessionAdapters:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getRewardedVideoProviderInstanceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 791
    :cond_0
    monitor-exit p0

    return-void

    .line 781
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized addExhaustedRewardedVideoAdapter(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/ironsource/mediationsdk/AbstractAdapter;

    .prologue
    .line 871
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->addToExhausted(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 872
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->removeFromAvailable(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 873
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->removeFromInitiated(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 874
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->removeFromUnavailable(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 875
    monitor-exit p0

    return-void

    .line 871
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized addInitiatedRewardedVideoAdapter(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/ironsource/mediationsdk/AbstractAdapter;

    .prologue
    .line 857
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->addToInitiated(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 858
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->removeFromUnavailable(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 859
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->removeFromAvailable(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 860
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->removeFromExhausted(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 861
    monitor-exit p0

    return-void

    .line 857
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized addToAvailable(Lcom/ironsource/mediationsdk/AbstractAdapter;Z)V
    .locals 6
    .param p1, "adapter"    # Lcom/ironsource/mediationsdk/AbstractAdapter;
    .param p2, "forceOrder"    # Z

    .prologue
    .line 794
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mServerResponseWrapper:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->getRewardedVideoAdapterAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 795
    .local v0, "adapterAlgorithm":Ljava/lang/String;
    iget-object v3, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mAvailableAdapters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 797
    .local v1, "priorityLocation":I
    iget-object v3, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mAvailableAdapters:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 798
    const-string v3, "KTO"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz p2, :cond_2

    .line 799
    :cond_0
    iget-object v3, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mAvailableAdapters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/mediationsdk/AbstractAdapter;

    .line 800
    .local v2, "rwa":Lcom/ironsource/mediationsdk/AbstractAdapter;
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getRewardedVideoPriority()I

    move-result v4

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getRewardedVideoPriority()I

    move-result v5

    if-gt v4, v5, :cond_1

    .line 801
    iget-object v3, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mAvailableAdapters:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 806
    .end local v2    # "rwa":Lcom/ironsource/mediationsdk/AbstractAdapter;
    :cond_2
    iget-object v3, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mAvailableAdapters:Ljava/util/ArrayList;

    invoke-virtual {v3, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 808
    :cond_3
    monitor-exit p0

    return-void

    .line 794
    .end local v0    # "adapterAlgorithm":Ljava/lang/String;
    .end local v1    # "priorityLocation":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private declared-synchronized addToExhausted(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/ironsource/mediationsdk/AbstractAdapter;

    .prologue
    .line 839
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mExhaustedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 840
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mExhaustedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 841
    :cond_0
    monitor-exit p0

    return-void

    .line 839
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized addToInitiated(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/ironsource/mediationsdk/AbstractAdapter;

    .prologue
    .line 828
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mInitiatedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 829
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mInitiatedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 830
    :cond_0
    monitor-exit p0

    return-void

    .line 828
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized addToNotAvailable(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/ironsource/mediationsdk/AbstractAdapter;

    .prologue
    .line 817
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mNotAvailableAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 818
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mNotAvailableAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 819
    :cond_0
    monitor-exit p0

    return-void

    .line 817
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized addUnavailableRewardedVideoAdapter(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/ironsource/mediationsdk/AbstractAdapter;

    .prologue
    .line 864
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->addToNotAvailable(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 865
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->removeFromAvailable(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 866
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->removeFromInitiated(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 867
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->removeFromExhausted(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 868
    monitor-exit p0

    return-void

    .line 864
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized completeAdapterIteration(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    .locals 5
    .param p1, "adapter"    # Lcom/ironsource/mediationsdk/AbstractAdapter;

    .prologue
    .line 710
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

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

    .line 713
    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mCappedPerSessionAdapters:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getRewardedVideoProviderInstanceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 714
    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NATIVE:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Smart Loading - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getRewardedVideoProviderInstanceName()Ljava/lang/String;

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

    .line 715
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->addExhaustedRewardedVideoAdapter(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 718
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->loadNextAdapter()Lcom/ironsource/mediationsdk/AbstractAdapter;

    .line 720
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->resetNumberOfVideosPlayedThisIteration()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 726
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 723
    :catch_0
    move-exception v0

    .line 724
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_1
    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

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
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 710
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized completeIterationRound()V
    .locals 8

    .prologue
    .line 733
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->isIterationRoundComplete()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 734
    iget-object v3, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v5, "Reset Iteration"

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 736
    const/4 v1, 0x0

    .line 737
    .local v1, "isAvailable":Z
    iget-object v3, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mExhaustedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 739
    .local v2, "tempExhausted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ironsource/mediationsdk/AbstractAdapter;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/AbstractAdapter;

    .line 740
    .local v0, "exhaustedAdapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->isRewardedVideoAvailable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 741
    iget-object v4, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v5, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getRewardedVideoProviderInstanceName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "moved to \'Available\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 742
    const/4 v4, 0x1

    invoke-virtual {p0, v0, v4}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->addAvailableRewardedVideoAdapter(Lcom/ironsource/mediationsdk/AbstractAdapter;Z)V

    .line 743
    const/4 v1, 0x1

    goto :goto_0

    .line 745
    :cond_0
    iget-object v4, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v5, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getRewardedVideoProviderInstanceName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "moved to \'Not Available\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 746
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->addUnavailableRewardedVideoAdapter(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 733
    .end local v0    # "exhaustedAdapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    .end local v1    # "isAvailable":Z
    .end local v2    # "tempExhausted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ironsource/mediationsdk/AbstractAdapter;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 750
    .restart local v1    # "isAvailable":Z
    .restart local v2    # "tempExhausted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ironsource/mediationsdk/AbstractAdapter;>;"
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v5, "End of Reset Iteration"

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 752
    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->shouldNotifyAvailabilityChanged(Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 753
    iget-object v3, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;

    iget-boolean v4, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mIsAdAvailable:Z

    invoke-interface {v3, v4}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;->onRewardedVideoAvailabilityChanged(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 756
    .end local v1    # "isAvailable":Z
    .end local v2    # "tempExhausted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ironsource/mediationsdk/AbstractAdapter;>;"
    :cond_2
    monitor-exit p0

    return-void
.end method

.method private createAndSendShowCheckAvailabilityEvent(Lcom/ironsource/mediationsdk/AbstractAdapter;Ljava/lang/String;Z)V
    .locals 5
    .param p1, "adapter"    # Lcom/ironsource/mediationsdk/AbstractAdapter;
    .param p2, "placementName"    # Ljava/lang/String;
    .param p3, "status"    # Z

    .prologue
    .line 475
    sget-object v3, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-static {p1, v3}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getProviderAdditionalData(Lcom/ironsource/mediationsdk/AbstractAdapter;Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)Lorg/json/JSONObject;

    move-result-object v0

    .line 477
    .local v0, "data":Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "placement"

    invoke-virtual {v0, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 478
    const-string v4, "status"

    if-eqz p3, :cond_0

    const-string v3, "true"

    :goto_0
    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 479
    const-string v3, "providerPriority"

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getRewardedVideoPriority()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 484
    :goto_1
    new-instance v2, Lcom/ironsource/eventsmodule/EventData;

    const/16 v3, 0x13

    invoke-direct {v2, v3, v0}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 485
    .local v2, "event":Lcom/ironsource/eventsmodule/EventData;
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    .line 486
    return-void

    .line 478
    .end local v2    # "event":Lcom/ironsource/eventsmodule/EventData;
    :cond_0
    :try_start_1
    const-string v3, "false"
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 480
    :catch_0
    move-exception v1

    .line 481
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method private isExhausted(Ljava/lang/String;)Z
    .locals 3
    .param p1, "providerName"    # Ljava/lang/String;

    .prologue
    .line 140
    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mExhaustedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/AbstractAdapter;

    .line 141
    .local v0, "exAdapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 142
    const/4 v1, 0x1

    .line 144
    .end local v0    # "exAdapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private declared-synchronized isIterationRoundComplete()Z
    .locals 1

    .prologue
    .line 729
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mInitiatedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mAvailableAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mExhaustedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private loadNextAdapter()Lcom/ironsource/mediationsdk/AbstractAdapter;
    .locals 4

    .prologue
    .line 526
    iget-object v2, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mServerResponseWrapper:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->getRewardedVideoAdaptersSmartLoadAmount()I

    move-result v1

    .line 527
    .local v1, "numOfAdaptersToLoad":I
    const/4 v0, 0x0

    .line 529
    .local v0, "initiatedAdapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    iget-object v2, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mAvailableAdapters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mInitiatedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v2, v3

    if-lt v2, v1, :cond_0

    iget-boolean v2, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mDidMissHigherPriorityAdapter:Z

    if-eqz v2, :cond_1

    .line 530
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mDidMissHigherPriorityAdapter:Z

    .line 532
    :goto_0
    iget-object v2, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mServerResponseWrapper:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->hasMoreRVProvidersToLoad()Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v0, :cond_1

    .line 533
    iget-object v2, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mServerResponseWrapper:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getNextRVProvider()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->startAdapter(Ljava/lang/String;)Lcom/ironsource/mediationsdk/AbstractAdapter;

    move-result-object v0

    goto :goto_0

    .line 537
    :cond_1
    return-object v0
.end method

.method private declared-synchronized moveAdapterToUnavailableAndLoadNext(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    .locals 4
    .param p1, "adapter"    # Lcom/ironsource/mediationsdk/AbstractAdapter;

    .prologue
    .line 1127
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->addUnavailableRewardedVideoAdapter(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 1128
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NATIVE:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Smart Loading - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getRewardedVideoProviderInstanceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " moved to \'Unavailable\' list"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1129
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->loadNextAdapter()Lcom/ironsource/mediationsdk/AbstractAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1130
    monitor-exit p0

    return-void

    .line 1127
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized notifyAvailabilityChange()V
    .locals 3

    .prologue
    .line 686
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mBackFillAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mBackFillInitStarted:Z

    if-nez v1, :cond_2

    .line 688
    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mServerResponseWrapper:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getRVBackFillProvider()Ljava/lang/String;

    move-result-object v0

    .line 689
    .local v0, "backFillAdapterName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 690
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mBackFillInitStarted:Z

    .line 691
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->startAdapter(Ljava/lang/String;Z)Lcom/ironsource/mediationsdk/AbstractAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mBackFillAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    .line 694
    :cond_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mBackFillAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    if-nez v1, :cond_1

    .line 695
    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;

    iget-boolean v2, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mIsAdAvailable:Z

    invoke-interface {v1, v2}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;->onRewardedVideoAvailabilityChanged(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 706
    .end local v0    # "backFillAdapterName":Ljava/lang/String;
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 697
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->isBackFillAvailable()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 699
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->shouldNotifyAvailabilityChanged(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 700
    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;

    iget-boolean v2, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mIsAdAvailable:Z

    invoke-interface {v1, v2}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;->onRewardedVideoAvailabilityChanged(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 686
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 704
    :cond_3
    :try_start_2
    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;

    iget-boolean v2, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mIsAdAvailable:Z

    invoke-interface {v1, v2}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;->onRewardedVideoAvailabilityChanged(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized notifyIsAdAvailableForStatistics()V
    .locals 21

    .prologue
    .line 937
    monitor-enter p0

    const/4 v13, 0x0

    .line 938
    .local v13, "mediationStatus":Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mAvailableAdapters:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mAvailableAdapters:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-lez v18, :cond_0

    .line 939
    const/4 v13, 0x1

    .line 942
    :cond_0
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData()Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 944
    .local v7, "data":Lorg/json/JSONObject;
    :try_start_1
    const-string v18, "status"

    invoke-static {v13}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 949
    :goto_0
    :try_start_2
    new-instance v9, Lcom/ironsource/eventsmodule/EventData;

    const/16 v18, 0x3

    move/from16 v0, v18

    invoke-direct {v9, v0, v7}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 950
    .local v9, "event":Lcom/ironsource/eventsmodule/EventData;
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    .line 953
    new-instance v17, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mAvailableAdapters:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-direct/range {v17 .. v18}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 955
    .local v17, "tempAvailableAdapter":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ironsource/mediationsdk/AbstractAdapter;>;"
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_1

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/mediationsdk/AbstractAdapter;

    .line 957
    .local v2, "availableAdapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    sget-object v19, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-object/from16 v0, v19

    invoke-static {v2, v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getProviderAdditionalData(Lcom/ironsource/mediationsdk/AbstractAdapter;Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)Lorg/json/JSONObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    .line 959
    .local v3, "availableData":Lorg/json/JSONObject;
    :try_start_3
    const-string v19, "status"

    const-string v20, "true"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 964
    :goto_2
    :try_start_4
    new-instance v4, Lcom/ironsource/eventsmodule/EventData;

    const/16 v19, 0x3

    move/from16 v0, v19

    invoke-direct {v4, v0, v3}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 965
    .local v4, "availableEvent":Lcom/ironsource/eventsmodule/EventData;
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 937
    .end local v2    # "availableAdapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    .end local v3    # "availableData":Lorg/json/JSONObject;
    .end local v4    # "availableEvent":Lcom/ironsource/eventsmodule/EventData;
    .end local v7    # "data":Lorg/json/JSONObject;
    .end local v9    # "event":Lcom/ironsource/eventsmodule/EventData;
    .end local v17    # "tempAvailableAdapter":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ironsource/mediationsdk/AbstractAdapter;>;"
    :catchall_0
    move-exception v18

    monitor-exit p0

    throw v18

    .line 945
    .restart local v7    # "data":Lorg/json/JSONObject;
    :catch_0
    move-exception v8

    .line 946
    .local v8, "e":Lorg/json/JSONException;
    :try_start_5
    invoke-virtual {v8}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 960
    .end local v8    # "e":Lorg/json/JSONException;
    .restart local v2    # "availableAdapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    .restart local v3    # "availableData":Lorg/json/JSONObject;
    .restart local v9    # "event":Lcom/ironsource/eventsmodule/EventData;
    .restart local v17    # "tempAvailableAdapter":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ironsource/mediationsdk/AbstractAdapter;>;"
    :catch_1
    move-exception v8

    .line 961
    .restart local v8    # "e":Lorg/json/JSONException;
    invoke-virtual {v8}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 969
    .end local v2    # "availableAdapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    .end local v3    # "availableData":Lorg/json/JSONObject;
    .end local v8    # "e":Lorg/json/JSONException;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mNotAvailableAdapters:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_2
    :goto_3
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_4

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/ironsource/mediationsdk/AbstractAdapter;

    .line 971
    .local v16, "notavailableAdapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    invoke-virtual/range {v16 .. v16}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->isPremiumAdapter(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->canShowPremium()Z

    move-result v19

    if-eqz v19, :cond_2

    .line 976
    :cond_3
    sget-object v19, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getProviderAdditionalData(Lcom/ironsource/mediationsdk/AbstractAdapter;Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)Lorg/json/JSONObject;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v14

    .line 978
    .local v14, "notAvailableData":Lorg/json/JSONObject;
    :try_start_6
    const-string v19, "status"

    const-string v20, "false"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 983
    :goto_4
    :try_start_7
    new-instance v15, Lcom/ironsource/eventsmodule/EventData;

    const/16 v19, 0x3

    move/from16 v0, v19

    invoke-direct {v15, v0, v14}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 984
    .local v15, "notAvailableEvent":Lcom/ironsource/eventsmodule/EventData;
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    goto :goto_3

    .line 979
    .end local v15    # "notAvailableEvent":Lcom/ironsource/eventsmodule/EventData;
    :catch_2
    move-exception v8

    .line 980
    .restart local v8    # "e":Lorg/json/JSONException;
    invoke-virtual {v8}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_4

    .line 987
    .end local v8    # "e":Lorg/json/JSONException;
    .end local v14    # "notAvailableData":Lorg/json/JSONObject;
    .end local v16    # "notavailableAdapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mInitiatedAdapters:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_5
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_5

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/ironsource/mediationsdk/AbstractAdapter;

    .line 989
    .local v10, "initiatedAdapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    sget-object v19, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-object/from16 v0, v19

    invoke-static {v10, v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getProviderAdditionalData(Lcom/ironsource/mediationsdk/AbstractAdapter;Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)Lorg/json/JSONObject;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v11

    .line 991
    .local v11, "initiatedData":Lorg/json/JSONObject;
    :try_start_8
    const-string v19, "status"

    const-string v20, "false"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 996
    :goto_6
    :try_start_9
    new-instance v12, Lcom/ironsource/eventsmodule/EventData;

    const/16 v19, 0x3

    move/from16 v0, v19

    invoke-direct {v12, v0, v11}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 997
    .local v12, "initiatedEvent":Lcom/ironsource/eventsmodule/EventData;
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    goto :goto_5

    .line 992
    .end local v12    # "initiatedEvent":Lcom/ironsource/eventsmodule/EventData;
    :catch_3
    move-exception v8

    .line 993
    .restart local v8    # "e":Lorg/json/JSONException;
    invoke-virtual {v8}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_6

    .line 1000
    .end local v8    # "e":Lorg/json/JSONException;
    .end local v10    # "initiatedAdapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    .end local v11    # "initiatedData":Lorg/json/JSONObject;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mBackFillAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    move-object/from16 v18, v0

    if-eqz v18, :cond_6

    .line 1001
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mBackFillAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    move-object/from16 v18, v0

    sget-object v19, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-static/range {v18 .. v19}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getProviderAdditionalData(Lcom/ironsource/mediationsdk/AbstractAdapter;Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)Lorg/json/JSONObject;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result-object v5

    .line 1003
    .local v5, "backFillData":Lorg/json/JSONObject;
    :try_start_a
    const-string v19, "status"

    invoke-virtual/range {p0 .. p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->isBackFillAvailable()Z

    move-result v18

    if-eqz v18, :cond_7

    const-string v18, "true"

    :goto_7
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 1008
    :goto_8
    :try_start_b
    new-instance v6, Lcom/ironsource/eventsmodule/EventData;

    const/16 v18, 0x3

    move/from16 v0, v18

    invoke-direct {v6, v0, v5}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 1009
    .local v6, "backFillEvent":Lcom/ironsource/eventsmodule/EventData;
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 1011
    .end local v5    # "backFillData":Lorg/json/JSONObject;
    .end local v6    # "backFillEvent":Lcom/ironsource/eventsmodule/EventData;
    :cond_6
    monitor-exit p0

    return-void

    .line 1003
    .restart local v5    # "backFillData":Lorg/json/JSONObject;
    :cond_7
    :try_start_c
    const-string v18, "false"
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_7

    .line 1004
    :catch_4
    move-exception v8

    .line 1005
    .restart local v8    # "e":Lorg/json/JSONException;
    :try_start_d
    invoke-virtual {v8}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_8
.end method

.method private prepareStateForInit()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mIsAdAvailable:Z

    .line 62
    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mAllCapped:Z

    .line 63
    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mDidMissHigherPriorityAdapter:Z

    .line 64
    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mNotifiedAll:Z

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mAvailableAdapters:Ljava/util/ArrayList;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mInitiatedAdapters:Ljava/util/ArrayList;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mNotAvailableAdapters:Ljava/util/ArrayList;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mExhaustedAdapters:Ljava/util/ArrayList;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSkippedAdapters:Ljava/util/ArrayList;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mCappedPerSessionAdapters:Ljava/util/ArrayList;

    .line 74
    return-void
.end method

.method private declared-synchronized removeFromAvailable(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/ironsource/mediationsdk/AbstractAdapter;

    .prologue
    .line 811
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mAvailableAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 812
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mAvailableAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 814
    :cond_0
    monitor-exit p0

    return-void

    .line 811
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized removeFromExhausted(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/ironsource/mediationsdk/AbstractAdapter;

    .prologue
    .line 844
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mExhaustedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 845
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mExhaustedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 847
    :cond_0
    monitor-exit p0

    return-void

    .line 844
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized removeFromInitiated(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/ironsource/mediationsdk/AbstractAdapter;

    .prologue
    .line 833
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mInitiatedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 834
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mInitiatedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 836
    :cond_0
    monitor-exit p0

    return-void

    .line 833
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized removeFromUnavailable(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/ironsource/mediationsdk/AbstractAdapter;

    .prologue
    .line 822
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mNotAvailableAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 823
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mNotAvailableAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 825
    :cond_0
    monitor-exit p0

    return-void

    .line 822
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private reportFalseImpression(Lcom/ironsource/mediationsdk/AbstractAdapter;I)V
    .locals 4
    .param p1, "adapter"    # Lcom/ironsource/mediationsdk/AbstractAdapter;
    .param p2, "placementId"    # I

    .prologue
    .line 131
    iget-object v2, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mServerResponseWrapper:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getProviderSettingsHolder()Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getRewardedVideoProviderInstanceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->getProviderSettings(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/ProviderSettings;

    move-result-object v0

    .line 133
    .local v0, "providerSettings":Lcom/ironsource/mediationsdk/model/ProviderSettings;
    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getRewardedVideoSettings()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "requestUrl"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 135
    .local v1, "requestUrl":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, p2}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->reportImpression(Ljava/lang/String;ZI)V

    .line 137
    .end local v1    # "requestUrl":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private reportFalseImpressionsOnHigherPriority(II)V
    .locals 3
    .param p1, "priority"    # I
    .param p2, "placementId"    # I

    .prologue
    .line 106
    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mAvailableAdapters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/AbstractAdapter;

    .line 107
    .local v0, "adapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getRewardedVideoPriority()I

    move-result v2

    if-ge v2, p1, :cond_0

    .line 108
    invoke-direct {p0, v0, p2}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->reportFalseImpression(Lcom/ironsource/mediationsdk/AbstractAdapter;I)V

    goto :goto_0

    .line 112
    .end local v0    # "adapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    :cond_1
    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mNotAvailableAdapters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/AbstractAdapter;

    .line 113
    .restart local v0    # "adapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->isPremiumAdapter(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->canShowPremium()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 118
    :cond_3
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getRewardedVideoPriority()I

    move-result v2

    if-ge v2, p1, :cond_2

    .line 119
    invoke-direct {p0, v0, p2}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->reportFalseImpression(Lcom/ironsource/mediationsdk/AbstractAdapter;I)V

    goto :goto_1

    .line 123
    .end local v0    # "adapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    :cond_4
    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mInitiatedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/AbstractAdapter;

    .line 124
    .restart local v0    # "adapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getRewardedVideoPriority()I

    move-result v2

    if-ge v2, p1, :cond_5

    .line 125
    invoke-direct {p0, v0, p2}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->reportFalseImpression(Lcom/ironsource/mediationsdk/AbstractAdapter;I)V

    goto :goto_2

    .line 128
    .end local v0    # "adapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    :cond_6
    return-void
.end method

.method private declared-synchronized reportImpression(Ljava/lang/String;ZI)V
    .locals 6
    .param p1, "adapterUrl"    # Ljava/lang/String;
    .param p2, "hit"    # Z
    .param p3, "placementId"    # I

    .prologue
    .line 84
    monitor-enter p0

    :try_start_0
    const-string v1, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    .local v1, "url":Ljava/lang/String;
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 90
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&sdkVersion="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getSDKVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 92
    invoke-static {v1, p2, p3}, Lcom/ironsource/mediationsdk/server/Server;->callAsyncRequestURL(Ljava/lang/String;ZI)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    :goto_0
    monitor-exit p0

    return-void

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_2
    iget-object v2, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NETWORK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reportImpression:(providerURL:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "hit:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 84
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "url":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized reportShowFail(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 1
    .param p1, "error"    # Lcom/ironsource/mediationsdk/logger/IronSourceError;

    .prologue
    .line 167
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;

    invoke-interface {v0, p1}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;->onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    monitor-exit p0

    return-void

    .line 167
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private sendShowCheckAvailabilityEvents(Ljava/lang/String;)V
    .locals 3
    .param p1, "placementName"    # Ljava/lang/String;

    .prologue
    .line 456
    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mAvailableAdapters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/AbstractAdapter;

    .line 457
    .local v0, "adapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    const/4 v2, 0x1

    invoke-direct {p0, v0, p1, v2}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->createAndSendShowCheckAvailabilityEvent(Lcom/ironsource/mediationsdk/AbstractAdapter;Ljava/lang/String;Z)V

    goto :goto_0

    .line 461
    .end local v0    # "adapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    :cond_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mNotAvailableAdapters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/AbstractAdapter;

    .line 462
    .restart local v0    # "adapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->isPremiumAdapter(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->canShowPremium()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 466
    :cond_2
    const/4 v2, 0x0

    invoke-direct {p0, v0, p1, v2}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->createAndSendShowCheckAvailabilityEvent(Lcom/ironsource/mediationsdk/AbstractAdapter;Ljava/lang/String;Z)V

    goto :goto_1

    .line 469
    .end local v0    # "adapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    :cond_3
    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mBackFillAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    if-eqz v1, :cond_4

    .line 470
    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mBackFillAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->isBackFillAvailable()Z

    move-result v2

    invoke-direct {p0, v1, p1, v2}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->createAndSendShowCheckAvailabilityEvent(Lcom/ironsource/mediationsdk/AbstractAdapter;Ljava/lang/String;Z)V

    .line 472
    :cond_4
    return-void
.end method

.method private declared-synchronized shouldNotifyAvailabilityChanged(Z)Z
    .locals 3
    .param p1, "adapterAvailability"    # Z

    .prologue
    .line 759
    monitor-enter p0

    const/4 v0, 0x0

    .line 761
    .local v0, "shouldNotify":Z
    :try_start_0
    iget-boolean v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mIsAdAvailable:Z

    if-nez v1, :cond_2

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mAvailableAdapters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_0

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->isBackFillAvailable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 762
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mIsAdAvailable:Z

    .line 763
    const/4 v0, 0x1

    .line 764
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mNotifiedAll:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 777
    :cond_1
    :goto_0
    monitor-exit p0

    return v0

    .line 765
    :cond_2
    :try_start_1
    iget-boolean v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mIsAdAvailable:Z

    if-eqz v1, :cond_3

    if-nez p1, :cond_3

    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mAvailableAdapters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_3

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->isBackFillAvailable()Z

    move-result v1

    if-nez v1, :cond_3

    .line 767
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mIsAdAvailable:Z

    .line 768
    const/4 v0, 0x1

    goto :goto_0

    .line 771
    :cond_3
    if-nez p1, :cond_1

    iget-boolean v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mNotifiedAll:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mServerResponseWrapper:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getMaxRVAdapters()I

    move-result v1

    iget-object v2, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSkippedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v1, v2

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mAvailableAdapters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_1

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->isBackFillAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 772
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mIsAdAvailable:Z

    .line 773
    const/4 v0, 0x1

    .line 774
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mNotifiedAll:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 759
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private shouldNotifyNetworkAvailabilityChanged(Z)Z
    .locals 2
    .param p1, "networkState"    # Z

    .prologue
    .line 1041
    const/4 v0, 0x0

    .line 1043
    .local v0, "shouldNotify":Z
    iget-boolean v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mIsAdAvailable:Z

    if-nez v1, :cond_1

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mAvailableAdapters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 1044
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mIsAdAvailable:Z

    .line 1045
    const/4 v0, 0x1

    .line 1051
    :cond_0
    :goto_0
    return v0

    .line 1046
    :cond_1
    iget-boolean v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mIsAdAvailable:Z

    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    .line 1047
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mIsAdAvailable:Z

    .line 1048
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private declared-synchronized showRVAdapter(Ljava/lang/String;Lcom/ironsource/mediationsdk/AbstractAdapter;)Z
    .locals 9
    .param p1, "placementName"    # Ljava/lang/String;
    .param p2, "adapter"    # Lcom/ironsource/mediationsdk/AbstractAdapter;

    .prologue
    const/4 v5, 0x1

    .line 412
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-nez v6, :cond_0

    if-nez p2, :cond_2

    .line 413
    :cond_0
    const/4 v5, 0x0

    .line 451
    :cond_1
    :goto_0
    monitor-exit p0

    return v5

    .line 416
    :cond_2
    :try_start_1
    iget-object v6, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->getPlacementByName(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/Placement;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/ironsource/mediationsdk/utils/CappingManager;->incrementShowCounter(Landroid/content/Context;Lcom/ironsource/mediationsdk/model/Placement;)V

    .line 419
    iget-object v6, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mServerResponseWrapper:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->getRewardedVideoEventsConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationEvents;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->isUltraEventsEnabled()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 421
    iget-object v6, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mServerResponseWrapper:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->getRewardedVideoPlacement(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/Placement;

    move-result-object v3

    .line 424
    .local v3, "placement":Lcom/ironsource/mediationsdk/model/Placement;
    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getUrl()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/Placement;->getPlacementId()I

    move-result v8

    invoke-direct {p0, v6, v7, v8}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->reportImpression(Ljava/lang/String;ZI)V

    .line 427
    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getRewardedVideoPriority()I

    move-result v4

    .line 428
    .local v4, "priority":I
    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/Placement;->getPlacementId()I

    move-result v6

    invoke-direct {p0, v4, v6}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->reportFalseImpressionsOnHigherPriority(II)V

    .line 431
    .end local v3    # "placement":Lcom/ironsource/mediationsdk/model/Placement;
    .end local v4    # "priority":I
    :cond_3
    sget-object v6, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-static {p2, v6}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getProviderAdditionalData(Lcom/ironsource/mediationsdk/AbstractAdapter;Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 433
    .local v0, "data":Lorg/json/JSONObject;
    :try_start_2
    const-string v6, "placement"

    invoke-virtual {v0, v6, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 438
    :goto_1
    :try_start_3
    new-instance v2, Lcom/ironsource/eventsmodule/EventData;

    const/4 v6, 0x2

    invoke-direct {v2, v6, v0}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 439
    .local v2, "event":Lcom/ironsource/eventsmodule/EventData;
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    .line 441
    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->showRewardedVideo(Ljava/lang/String;)V

    .line 443
    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/AbstractAdapter;->isMultipleInstances()Z

    move-result v6

    if-nez v6, :cond_1

    .line 444
    sget-object v6, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {p2, v6}, Lcom/ironsource/mediationsdk/AbstractAdapter;->increaseNumberOfAdsPlayedThisSession(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V

    .line 445
    sget-object v6, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {p2, v6}, Lcom/ironsource/mediationsdk/AbstractAdapter;->canShowAdInCurrentSession(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 447
    invoke-virtual {p0, p2}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->dropAdapterFromSmartLoad(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 412
    .end local v0    # "data":Lorg/json/JSONObject;
    .end local v2    # "event":Lcom/ironsource/eventsmodule/EventData;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 434
    .restart local v0    # "data":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 435
    .local v1, "e":Lorg/json/JSONException;
    :try_start_4
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method private declared-synchronized startAdapter(Ljava/lang/String;)Lcom/ironsource/mediationsdk/AbstractAdapter;
    .locals 1
    .param p1, "providerName"    # Ljava/lang/String;

    .prologue
    .line 177
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->startAdapter(Ljava/lang/String;Z)Lcom/ironsource/mediationsdk/AbstractAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized startAdapter(Ljava/lang/String;Z)Lcom/ironsource/mediationsdk/AbstractAdapter;
    .locals 21
    .param p1, "providerName"    # Ljava/lang/String;
    .param p2, "regularAdapter"    # Z

    .prologue
    .line 188
    monitor-enter p0

    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v17

    if-eqz v17, :cond_1

    .line 189
    const/4 v9, 0x0

    .line 333
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v9

    .line 192
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mServerResponseWrapper:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getProviderSettingsHolder()Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->getProviderSettings(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/ProviderSettings;

    move-result-object v12

    .line 193
    .local v12, "providerSettings":Lcom/ironsource/mediationsdk/model/ProviderSettings;
    if-nez v12, :cond_2

    .line 194
    const/4 v9, 0x0

    goto :goto_0

    .line 196
    :cond_2
    const/4 v7, 0x0

    .line 198
    .local v7, "isUpdatedInstance":Z
    invoke-virtual {v12}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getProviderTypeForReflection()Ljava/lang/String;

    move-result-object v11

    .line 199
    .local v11, "providerNameForReflection":Ljava/lang/String;
    invoke-virtual {v12}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getRewardedVideoSettings()Lorg/json/JSONObject;

    move-result-object v17

    const-string v18, "requestUrl"

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 201
    .local v13, "requestUrl":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-object/from16 v17, v0

    sget-object v18, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NATIVE:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->TAG:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ":startAdapter("

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ")"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1

    invoke-virtual/range {v17 .. v20}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 203
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->isEmpty()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v17

    if-eqz v17, :cond_3

    .line 204
    const/4 v9, 0x0

    goto :goto_0

    .line 207
    :cond_3
    :try_start_2
    invoke-virtual {v12}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->isMultipleInstances()Z

    move-result v6

    .line 208
    .local v6, "isMultipleInstances":Z
    invoke-virtual {v12}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getSubProviderId()Ljava/lang/String;

    move-result-object v16

    .line 210
    .local v16, "subProviderId":Ljava/lang/String;
    if-eqz v6, :cond_4

    .line 211
    move-object/from16 p1, v11

    .line 213
    :cond_4
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v14

    .line 215
    .local v14, "sso":Lcom/ironsource/mediationsdk/IronSourceObject;
    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getExistingAdapter(Ljava/lang/String;)Lcom/ironsource/mediationsdk/AbstractAdapter;

    move-result-object v9

    .line 217
    .local v9, "providerAdapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    if-nez v9, :cond_7

    .line 219
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "com.ironsource.adapters."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "Adapter"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 220
    .local v8, "mAdapterClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v17, "startAdapter"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-class v20, Ljava/lang/String;

    aput-object v20, v18, v19

    const/16 v19, 0x1

    const-class v20, Ljava/lang/String;

    aput-object v20, v18, v19

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v15

    .line 221
    .local v15, "startAdapterMethod":Ljava/lang/reflect/Method;
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object p1, v17, v18

    const/16 v18, 0x1

    aput-object v13, v17, v18

    move-object/from16 v0, v17

    invoke-virtual {v15, v8, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "providerAdapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    check-cast v9, Lcom/ironsource/mediationsdk/AbstractAdapter;

    .line 223
    .restart local v9    # "providerAdapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    if-nez v9, :cond_5

    .line 224
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 226
    :cond_5
    invoke-virtual {v9, v6}, Lcom/ironsource/mediationsdk/AbstractAdapter;->setIsMultipleInstances(Z)V

    .line 228
    invoke-virtual {v14, v9}, Lcom/ironsource/mediationsdk/IronSourceObject;->addToRVAdaptersList(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 230
    sget-object v17, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v9, v0, v1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->setSubProviderId(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Ljava/lang/String;)V

    .line 232
    if-eqz v6, :cond_6

    .line 233
    sget-object v17, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-object/from16 v0, v17

    invoke-virtual {v9, v0, v12}, Lcom/ironsource/mediationsdk/AbstractAdapter;->updateAdapterSettings(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Lcom/ironsource/mediationsdk/model/ProviderSettings;)V

    .line 260
    .end local v8    # "mAdapterClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v15    # "startAdapterMethod":Ljava/lang/reflect/Method;
    :cond_6
    :goto_1
    invoke-virtual {v12}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getProviderInstanceName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->setRewardedVideoProviderInstanceName(Ljava/lang/String;)V

    .line 263
    invoke-virtual {v9}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getMaxRVAdsPerIteration()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_c

    .line 264
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 235
    :cond_7
    if-eqz v6, :cond_6

    .line 236
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->isAdapterInSmartLoad(Lcom/ironsource/mediationsdk/AbstractAdapter;)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 237
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mDidMissHigherPriorityAdapter:Z

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSkippedAdapters:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual {v12}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getProviderInstanceName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_8

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSkippedAdapters:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual {v12}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getProviderInstanceName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    :cond_8
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->shouldNotifyAvailabilityChanged(Z)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 244
    invoke-direct/range {p0 .. p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->notifyAvailabilityChange()V

    .line 247
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-object/from16 v17, v0

    sget-object v18, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Skipping "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v12}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getProviderInstanceName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v17 .. v20}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 248
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 250
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSkippedAdapters:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual {v12}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getProviderInstanceName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSkippedAdapters:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual {v12}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getProviderInstanceName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 253
    :cond_b
    sget-object v17, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-object/from16 v0, v17

    invoke-virtual {v9, v0, v12}, Lcom/ironsource/mediationsdk/AbstractAdapter;->updateAdapterSettings(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Lcom/ironsource/mediationsdk/model/ProviderSettings;)V

    .line 254
    sget-object v17, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v9, v0, v1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->setSubProviderId(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Ljava/lang/String;)V

    .line 256
    const/4 v7, 0x1

    goto/16 :goto_1

    .line 266
    :cond_c
    sget-object v17, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getMaxAdsPerSession(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_d

    .line 267
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 270
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mServerResponseWrapper:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    move-object/from16 v17, v0

    sget-object v18, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {v12}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getProviderInstanceName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->dropProviderForCurrentSession(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Ljava/lang/String;)V

    .line 272
    if-eqz p2, :cond_e

    .line 273
    invoke-virtual {v12}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getRewardedVideoPriority()I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->setRewardedVideoPriority(I)V

    .line 276
    :cond_e
    invoke-virtual {v14}, Lcom/ironsource/mediationsdk/IronSourceObject;->getIronSourceAppKey()Ljava/lang/String;

    move-result-object v3

    .line 279
    .local v3, "appKey":Ljava/lang/String;
    if-eqz v7, :cond_f

    invoke-virtual {v9}, Lcom/ironsource/mediationsdk/AbstractAdapter;->didInitRewardedVideo()Z

    move-result v17

    if-nez v17, :cond_13

    .line 281
    :cond_f
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->setCustomParams(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->setLogListener(Lcom/ironsource/mediationsdk/logger/LogListener;)V

    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mServerResponseWrapper:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/ironsource/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->getRewardedVideoAdaptersSmartLoadTimeout()I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->setRewardedVideoTimeout(I)V

    .line 285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mServerResponseWrapper:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/ironsource/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->setRewardedVideoConfigurations(Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;)V

    .line 286
    invoke-static {}, Lcom/ironsource/mediationsdk/config/ConfigFile;->getConfigFile()Lcom/ironsource/mediationsdk/config/ConfigFile;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/ironsource/mediationsdk/config/ConfigFile;->getPluginType()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_10

    .line 287
    invoke-static {}, Lcom/ironsource/mediationsdk/config/ConfigFile;->getConfigFile()Lcom/ironsource/mediationsdk/config/ConfigFile;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/ironsource/mediationsdk/config/ConfigFile;->getPluginType()Ljava/lang/String;

    move-result-object v17

    invoke-static {}, Lcom/ironsource/mediationsdk/config/ConfigFile;->getConfigFile()Lcom/ironsource/mediationsdk/config/ConfigFile;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/ironsource/mediationsdk/config/ConfigFile;->getPluginFrameworkVersion()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->setPluginData(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    :cond_10
    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->setRewardedVideoListener(Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;)V

    .line 290
    if-eqz p2, :cond_11

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-object/from16 v17, v0

    sget-object v18, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NATIVE:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->TAG:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ": startAdapter("

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v9}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getRewardedVideoProviderInstanceName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ") moved to \'Initiated\' list"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v17 .. v20}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 292
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->addInitiatedRewardedVideoAdapter(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 295
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mActivity:Landroid/app/Activity;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mUserId:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v3, v1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->initRewardedVideo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->setDidInitRewardedVideo(Z)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 313
    .end local v3    # "appKey":Ljava/lang/String;
    .end local v6    # "isMultipleInstances":Z
    .end local v9    # "providerAdapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    .end local v14    # "sso":Lcom/ironsource/mediationsdk/IronSourceObject;
    .end local v16    # "subProviderId":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 314
    .local v4, "e":Ljava/lang/Throwable;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-object/from16 v17, v0

    sget-object v18, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->TAG:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ":startAdapter("

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ")"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 316
    if-eqz p2, :cond_12

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mServerResponseWrapper:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->decreaseMaxRVAdapters(Z)I

    .line 319
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->shouldNotifyAvailabilityChanged(Z)Z

    move-result v17

    if-eqz v17, :cond_12

    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mIsAdAvailable:Z

    move/from16 v18, v0

    invoke-interface/range {v17 .. v18}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;->onRewardedVideoAvailabilityChanged(Z)V

    .line 324
    :cond_12
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " initialization failed - please verify that required dependencies are in you build path."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const-string v18, "Rewarded Video"

    invoke-static/range {v17 .. v18}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v5

    .line 328
    .local v5, "error":Lcom/ironsource/mediationsdk/logger/IronSourceError;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-object/from16 v17, v0

    sget-object v18, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x2

    invoke-virtual/range {v17 .. v20}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 330
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 300
    .end local v4    # "e":Ljava/lang/Throwable;
    .end local v5    # "error":Lcom/ironsource/mediationsdk/logger/IronSourceError;
    .restart local v3    # "appKey":Ljava/lang/String;
    .restart local v6    # "isMultipleInstances":Z
    .restart local v9    # "providerAdapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    .restart local v14    # "sso":Lcom/ironsource/mediationsdk/IronSourceObject;
    .restart local v16    # "subProviderId":Ljava/lang/String;
    :cond_13
    :try_start_4
    invoke-virtual {v9}, Lcom/ironsource/mediationsdk/AbstractAdapter;->isRewardedVideoAvailable()Z

    move-result v10

    .line 302
    .local v10, "providerAvailability":Z
    if-eqz v10, :cond_14

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-object/from16 v17, v0

    sget-object v18, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NATIVE:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->TAG:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ": startAdapter("

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v9}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getRewardedVideoProviderInstanceName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ") moved to \'Available\' list"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v17 .. v20}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 304
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v9, v1}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->addAvailableRewardedVideoAdapter(Lcom/ironsource/mediationsdk/AbstractAdapter;Z)V

    .line 310
    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->shouldNotifyAvailabilityChanged(Z)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mIsAdAvailable:Z

    move/from16 v18, v0

    invoke-interface/range {v17 .. v18}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;->onRewardedVideoAvailabilityChanged(Z)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 188
    .end local v3    # "appKey":Ljava/lang/String;
    .end local v6    # "isMultipleInstances":Z
    .end local v7    # "isUpdatedInstance":Z
    .end local v9    # "providerAdapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    .end local v10    # "providerAvailability":Z
    .end local v11    # "providerNameForReflection":Ljava/lang/String;
    .end local v12    # "providerSettings":Lcom/ironsource/mediationsdk/model/ProviderSettings;
    .end local v13    # "requestUrl":Ljava/lang/String;
    .end local v14    # "sso":Lcom/ironsource/mediationsdk/IronSourceObject;
    .end local v16    # "subProviderId":Ljava/lang/String;
    :catchall_0
    move-exception v17

    monitor-exit p0

    throw v17

    .line 306
    .restart local v3    # "appKey":Ljava/lang/String;
    .restart local v6    # "isMultipleInstances":Z
    .restart local v7    # "isUpdatedInstance":Z
    .restart local v9    # "providerAdapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    .restart local v10    # "providerAvailability":Z
    .restart local v11    # "providerNameForReflection":Ljava/lang/String;
    .restart local v12    # "providerSettings":Lcom/ironsource/mediationsdk/model/ProviderSettings;
    .restart local v13    # "requestUrl":Ljava/lang/String;
    .restart local v14    # "sso":Lcom/ironsource/mediationsdk/IronSourceObject;
    .restart local v16    # "subProviderId":Ljava/lang/String;
    :cond_14
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-object/from16 v17, v0

    sget-object v18, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NATIVE:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->TAG:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ": startAdapter("

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v9}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getRewardedVideoProviderInstanceName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ") moved to \'Not Available\' list"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v17 .. v20}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 307
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->addUnavailableRewardedVideoAdapter(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2
.end method


# virtual methods
.method public declared-synchronized addAvailableRewardedVideoAdapter(Lcom/ironsource/mediationsdk/AbstractAdapter;Z)V
    .locals 1
    .param p1, "adapter"    # Lcom/ironsource/mediationsdk/AbstractAdapter;
    .param p2, "forceOrder"    # Z

    .prologue
    .line 850
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->addToAvailable(Lcom/ironsource/mediationsdk/AbstractAdapter;Z)V

    .line 851
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->removeFromInitiated(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 852
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->removeFromUnavailable(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 853
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->removeFromExhausted(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 854
    monitor-exit p0

    return-void

    .line 850
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized disablePremiumForCurrentSession()V
    .locals 6

    .prologue
    .line 1101
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lcom/ironsource/mediationsdk/AbstractAdUnitManager;->disablePremiumForCurrentSession()V

    .line 1104
    new-instance v2, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mAvailableAdapters:Ljava/util/ArrayList;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1105
    .local v2, "tempAvailableAdapter":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ironsource/mediationsdk/AbstractAdapter;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/AbstractAdapter;

    .line 1106
    .local v0, "adapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v1

    .line 1107
    .local v1, "providerName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->isPremiumAdapter(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1108
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->moveAdapterToUnavailableAndLoadNext(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1124
    .end local v0    # "adapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    .end local v1    # "providerName":Ljava/lang/String;
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 1115
    :cond_2
    :try_start_1
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mExhaustedAdapters:Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1116
    .local v3, "tempExhaustedAdapter":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ironsource/mediationsdk/AbstractAdapter;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/AbstractAdapter;

    .line 1117
    .restart local v0    # "adapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v1

    .line 1118
    .restart local v1    # "providerName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->isPremiumAdapter(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1119
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->moveAdapterToUnavailableAndLoadNext(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1101
    .end local v0    # "adapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    .end local v1    # "providerName":Ljava/lang/String;
    .end local v2    # "tempAvailableAdapter":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ironsource/mediationsdk/AbstractAdapter;>;"
    .end local v3    # "tempExhaustedAdapter":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ironsource/mediationsdk/AbstractAdapter;>;"
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method declared-synchronized dropAdapterFromSmartLoad(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    .locals 7
    .param p1, "adapter"    # Lcom/ironsource/mediationsdk/AbstractAdapter;

    .prologue
    .line 551
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->addCappedPerSessionAdapter(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 554
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->isMultipleInstances()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 555
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->isIterationRoundComplete()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 556
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->completeIterationRound()V

    .line 559
    :cond_0
    sget-object v5, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-static {p1, v5}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getProviderAdditionalData(Lcom/ironsource/mediationsdk/AbstractAdapter;Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 561
    .local v0, "data":Lorg/json/JSONObject;
    :try_start_1
    const-string v5, "status"

    const-string v6, "false"

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 562
    const-string v5, "reason"

    const/4 v6, 0x2

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 567
    :goto_0
    :try_start_2
    new-instance v2, Lcom/ironsource/eventsmodule/EventData;

    const/4 v5, 0x7

    invoke-direct {v2, v5, v0}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 568
    .local v2, "event":Lcom/ironsource/eventsmodule/EventData;
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    .line 571
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->loadNextAdapter()Lcom/ironsource/mediationsdk/AbstractAdapter;

    move-result-object v5

    if-nez v5, :cond_2

    .line 572
    iget-object v5, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mCappedPerSessionAdapters:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    iget-object v6, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mNotAvailableAdapters:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mSkippedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mServerResponseWrapper:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getTotalRVAdapters()I

    move-result v6

    if-ne v5, v6, :cond_2

    .line 574
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mAllCapped:Z

    .line 577
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->shouldNotifyAvailabilityChanged(Z)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 578
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->notifyAvailabilityChange()V

    .line 581
    :cond_1
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData()Lorg/json/JSONObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    .line 583
    .local v3, "mediationData":Lorg/json/JSONObject;
    :try_start_3
    const-string v5, "status"

    const-string v6, "false"

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 584
    const-string v5, "reason"

    const/4 v6, 0x2

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 589
    :goto_1
    :try_start_4
    new-instance v4, Lcom/ironsource/eventsmodule/EventData;

    const/4 v5, 0x7

    invoke-direct {v4, v5, v3}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 590
    .local v4, "mediationEvent":Lcom/ironsource/eventsmodule/EventData;
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 593
    .end local v3    # "mediationData":Lorg/json/JSONObject;
    .end local v4    # "mediationEvent":Lcom/ironsource/eventsmodule/EventData;
    :cond_2
    monitor-exit p0

    return-void

    .line 563
    .end local v2    # "event":Lcom/ironsource/eventsmodule/EventData;
    :catch_0
    move-exception v1

    .line 564
    .local v1, "e":Lorg/json/JSONException;
    :try_start_5
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 551
    .end local v0    # "data":Lorg/json/JSONObject;
    .end local v1    # "e":Lorg/json/JSONException;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 585
    .restart local v0    # "data":Lorg/json/JSONObject;
    .restart local v2    # "event":Lcom/ironsource/eventsmodule/EventData;
    .restart local v3    # "mediationData":Lorg/json/JSONObject;
    :catch_1
    move-exception v1

    .line 586
    .restart local v1    # "e":Lorg/json/JSONException;
    :try_start_6
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1
.end method

.method public getPlacementByName(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/Placement;
    .locals 6
    .param p1, "placementName"    # Ljava/lang/String;

    .prologue
    .line 1061
    iget-object v3, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mServerResponseWrapper:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mServerResponseWrapper:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mServerResponseWrapper:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    .line 1062
    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v3

    if-nez v3, :cond_2

    .line 1063
    :cond_0
    const/4 v2, 0x0

    .line 1079
    :cond_1
    :goto_0
    return-object v2

    .line 1065
    :cond_2
    const/4 v2, 0x0

    .line 1067
    .local v2, "placement":Lcom/ironsource/mediationsdk/model/Placement;
    :try_start_0
    iget-object v3, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mServerResponseWrapper:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->getRewardedVideoPlacement(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/Placement;

    move-result-object v2

    .line 1068
    if-nez v2, :cond_1

    .line 1070
    iget-object v3, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mServerResponseWrapper:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->getDefaultRewardedVideoPlacement()Lcom/ironsource/mediationsdk/model/Placement;

    move-result-object v2

    .line 1071
    if-nez v2, :cond_1

    .line 1072
    const-string v1, "Default placement was not found"

    .line 1073
    .local v1, "noDefaultPlacement":Ljava/lang/String;
    iget-object v3, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v1, v5}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1076
    .end local v1    # "noDefaultPlacement":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1077
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public declared-synchronized initRewardedVideo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "userId"    # Ljava/lang/String;

    .prologue
    .line 150
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NATIVE:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":initRewardedVideo(appKey: "

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
    iput-object p2, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mAppKey:Ljava/lang/String;

    .line 152
    iput-object p3, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mUserId:Ljava/lang/String;

    .line 153
    iput-object p1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mActivity:Landroid/app/Activity;

    .line 154
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/IronSourceObject;->getCurrentServerResponse()Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    move-result-object v3

    iput-object v3, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mServerResponseWrapper:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    .line 155
    iget-object v3, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mServerResponseWrapper:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    if-eqz v3, :cond_0

    .line 156
    iget-object v3, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mServerResponseWrapper:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->getRewardedVideoAdaptersSmartLoadAmount()I

    move-result v2

    .line 158
    .local v2, "numOfAdaptersToLoad":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 159
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->loadNextAdapter()Lcom/ironsource/mediationsdk/AbstractAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 160
    .local v1, "lastLoadedAdapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    if-nez v1, :cond_1

    .line 164
    .end local v0    # "i":I
    .end local v1    # "lastLoadedAdapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    .end local v2    # "numOfAdaptersToLoad":I
    :cond_0
    monitor-exit p0

    return-void

    .line 158
    .restart local v0    # "i":I
    .restart local v1    # "lastLoadedAdapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    .restart local v2    # "numOfAdaptersToLoad":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 150
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
    .line 596
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mAvailableAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mExhaustedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mInitiatedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mNotAvailableAdapters:Ljava/util/ArrayList;

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

.method protected declared-synchronized isBackFillAvailable()Z
    .locals 1

    .prologue
    .line 1084
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mBackFillAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    if-eqz v0, :cond_0

    .line 1085
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mBackFillAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->isRewardedVideoAvailable()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 1087
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1084
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method isPremiumAdapter(Ljava/lang/String;)Z
    .locals 2
    .param p1, "providerName"    # Ljava/lang/String;

    .prologue
    .line 1092
    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mServerResponseWrapper:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getRVPremiumProvider()Ljava/lang/String;

    move-result-object v0

    .line 1093
    .local v0, "premiumAdapterName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1094
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1096
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public declared-synchronized isRewardedVideoAvailable()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 490
    monitor-enter p0

    :try_start_0
    iget-boolean v3, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mPauseSmartLoadDueToNetworkUnavailability:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    .line 501
    :cond_0
    :goto_0
    monitor-exit p0

    return v2

    .line 493
    :cond_1
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mAvailableAdapters:Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 494
    .local v1, "tepmAvailableAdaptersList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ironsource/mediationsdk/AbstractAdapter;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/AbstractAdapter;

    .line 495
    .local v0, "adapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->isRewardedVideoAvailable()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 496
    const/4 v2, 0x1

    goto :goto_0

    .line 498
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->onRewardedVideoAvailabilityChanged(ZLcom/ironsource/mediationsdk/AbstractAdapter;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 490
    .end local v0    # "adapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    .end local v1    # "tepmAvailableAdaptersList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ironsource/mediationsdk/AbstractAdapter;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public isRewardedVideoPlacementCapped(Ljava/lang/String;)Z
    .locals 1
    .param p1, "placementName"    # Ljava/lang/String;

    .prologue
    .line 1057
    const/4 v0, 0x0

    return v0
.end method

.method public onNetworkAvailabilityChanged(Z)V
    .locals 5
    .param p1, "connected"    # Z

    .prologue
    const/4 v0, 0x0

    .line 1030
    iget-boolean v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mShouldTrackNetworkState:Z

    if-eqz v1, :cond_1

    .line 1031
    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Network Availability Changed To: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1033
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->shouldNotifyNetworkAvailabilityChanged(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1034
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mPauseSmartLoadDueToNetworkUnavailability:Z

    .line 1035
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;

    invoke-interface {v0, p1}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;->onRewardedVideoAvailabilityChanged(Z)V

    .line 1038
    :cond_1
    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 345
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 338
    if-eqz p1, :cond_0

    .line 339
    iput-object p1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mActivity:Landroid/app/Activity;

    .line 340
    :cond_0
    return-void
.end method

.method public onRewardedVideoAdClosed(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    .locals 5
    .param p1, "adapter"    # Lcom/ironsource/mediationsdk/AbstractAdapter;

    .prologue
    .line 601
    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":onRewardedVideoAdClosed()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 603
    new-instance v0, Lcom/ironsource/eventsmodule/EventData;

    const/4 v1, 0x6

    sget-object v2, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-static {p1, v2}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getProviderAdditionalData(Lcom/ironsource/mediationsdk/AbstractAdapter;Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 604
    .local v0, "event":Lcom/ironsource/eventsmodule/EventData;
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    .line 607
    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;

    invoke-interface {v1}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;->onRewardedVideoAdClosed()V

    .line 608
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->notifyIsAdAvailableForStatistics()V

    .line 610
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->isMultipleInstances()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 611
    sget-object v1, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {p1, v1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->increaseNumberOfAdsPlayedThisSession(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V

    .line 612
    sget-object v1, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {p1, v1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->canShowAdInCurrentSession(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 614
    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->dropAdapterFromSmartLoad(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 617
    :cond_0
    return-void
.end method

.method public onRewardedVideoAdEnded(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    .locals 5
    .param p1, "adapter"    # Lcom/ironsource/mediationsdk/AbstractAdapter;

    .prologue
    .line 889
    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":onRewardedVideoAdEnded()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 891
    new-instance v0, Lcom/ironsource/eventsmodule/EventData;

    const/16 v1, 0x9

    sget-object v2, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-static {p1, v2}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getProviderAdditionalData(Lcom/ironsource/mediationsdk/AbstractAdapter;Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 892
    .local v0, "event":Lcom/ironsource/eventsmodule/EventData;
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    .line 894
    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;

    invoke-interface {v1}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;->onRewardedVideoAdEnded()V

    .line 895
    return-void
.end method

.method public onRewardedVideoAdOpened(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    .locals 5
    .param p1, "adapter"    # Lcom/ironsource/mediationsdk/AbstractAdapter;

    .prologue
    .line 542
    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":onRewardedVideoAdOpened()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 544
    new-instance v0, Lcom/ironsource/eventsmodule/EventData;

    const/4 v1, 0x5

    sget-object v2, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-static {p1, v2}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getProviderAdditionalData(Lcom/ironsource/mediationsdk/AbstractAdapter;Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 545
    .local v0, "event":Lcom/ironsource/eventsmodule/EventData;
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    .line 547
    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;

    invoke-interface {v1}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;->onRewardedVideoAdOpened()V

    .line 548
    return-void
.end method

.method public onRewardedVideoAdRewarded(Lcom/ironsource/mediationsdk/model/Placement;Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    .locals 9
    .param p1, "placement"    # Lcom/ironsource/mediationsdk/model/Placement;
    .param p2, "adapter"    # Lcom/ironsource/mediationsdk/AbstractAdapter;

    .prologue
    .line 899
    iget-object v5, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v6, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":onRewardedVideoAdRewarded("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v5, v6, v7, v8}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 901
    if-nez p1, :cond_0

    .line 902
    iget-object v5, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mServerResponseWrapper:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->getDefaultRewardedVideoPlacement()Lcom/ironsource/mediationsdk/model/Placement;

    move-result-object p1

    .line 905
    :cond_0
    sget-object v5, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-static {p2, v5}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getProviderAdditionalData(Lcom/ironsource/mediationsdk/AbstractAdapter;Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)Lorg/json/JSONObject;

    move-result-object v0

    .line 907
    .local v0, "data":Lorg/json/JSONObject;
    :try_start_0
    const-string v5, "placement"

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/Placement;->getPlacementName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 908
    const-string v5, "rewardName"

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/Placement;->getRewardName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 909
    const-string v5, "rewardAmount"

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/Placement;->getRewardAmount()I

    move-result v6

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 914
    :goto_0
    new-instance v2, Lcom/ironsource/eventsmodule/EventData;

    const/16 v5, 0xa

    invoke-direct {v2, v5, v0}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 916
    .local v2, "event":Lcom/ironsource/eventsmodule/EventData;
    iget-object v5, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mAppKey:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 917
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/ironsource/eventsmodule/EventData;->getTimeStamp()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mAppKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 918
    .local v3, "strToTransId":Ljava/lang/String;
    invoke-static {v3}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getTransId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 920
    .local v4, "transId":Ljava/lang/String;
    const-string v5, "transId"

    invoke-virtual {v2, v5, v4}, Lcom/ironsource/eventsmodule/EventData;->addToAdditionalData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 922
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/IronSourceObject;->getDynamicUserId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 923
    const-string v5, "dynamicUserId"

    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/IronSourceObject;->getDynamicUserId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/ironsource/eventsmodule/EventData;->addToAdditionalData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 926
    .end local v3    # "strToTransId":Ljava/lang/String;
    .end local v4    # "transId":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    .line 928
    iget-object v5, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;

    invoke-interface {v5, p1}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;->onRewardedVideoAdRewarded(Lcom/ironsource/mediationsdk/model/Placement;)V

    .line 929
    return-void

    .line 910
    .end local v2    # "event":Lcom/ironsource/eventsmodule/EventData;
    :catch_0
    move-exception v1

    .line 911
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    .locals 4
    .param p1, "error"    # Lcom/ironsource/mediationsdk/logger/IronSourceError;
    .param p2, "adapter"    # Lcom/ironsource/mediationsdk/AbstractAdapter;

    .prologue
    .line 511
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":onRewardedVideoAdShowFailed("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 514
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;

    invoke-interface {v0, p1}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;->onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 516
    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/AbstractAdapter;->isMultipleInstances()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 517
    sget-object v0, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {p2, v0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->increaseNumberOfAdsPlayedThisSession(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V

    .line 518
    sget-object v0, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {p2, v0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->canShowAdInCurrentSession(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 520
    invoke-virtual {p0, p2}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->dropAdapterFromSmartLoad(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 523
    :cond_0
    return-void
.end method

.method public onRewardedVideoAdStarted(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    .locals 5
    .param p1, "adapter"    # Lcom/ironsource/mediationsdk/AbstractAdapter;

    .prologue
    .line 879
    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":onRewardedVideoAdStarted()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 881
    new-instance v0, Lcom/ironsource/eventsmodule/EventData;

    const/16 v1, 0x8

    sget-object v2, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-static {p1, v2}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getProviderAdditionalData(Lcom/ironsource/mediationsdk/AbstractAdapter;Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 882
    .local v0, "event":Lcom/ironsource/eventsmodule/EventData;
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    .line 884
    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;

    invoke-interface {v1}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;->onRewardedVideoAdStarted()V

    .line 885
    return-void
.end method

.method public declared-synchronized onRewardedVideoAvailabilityChanged(ZLcom/ironsource/mediationsdk/AbstractAdapter;)V
    .locals 7
    .param p1, "available"    # Z
    .param p2, "adapter"    # Lcom/ironsource/mediationsdk/AbstractAdapter;

    .prologue
    .line 621
    monitor-enter p0

    :try_start_0
    iget-boolean v3, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mPauseSmartLoadDueToNetworkUnavailability:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    .line 623
    :try_start_1
    sget-object v3, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-static {p2, v3}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getProviderAdditionalData(Lcom/ironsource/mediationsdk/AbstractAdapter;Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 625
    .local v0, "data":Lorg/json/JSONObject;
    :try_start_2
    const-string v3, "status"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 630
    :goto_0
    :try_start_3
    new-instance v2, Lcom/ironsource/eventsmodule/EventData;

    const/4 v3, 0x7

    invoke-direct {v2, v3, v0}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 631
    .local v2, "event":Lcom/ironsource/eventsmodule/EventData;
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    .line 633
    iget-object v3, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":onRewardedVideoAvailabilityChanged(available:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 634
    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->isPremiumAdapter(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 635
    iget-object v3, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is a Premium adapter, canShowPremium: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->canShowPremium()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 638
    :cond_0
    invoke-virtual {p0, p2}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->isBackFillAdapter(Lcom/ironsource/mediationsdk/AbstractAdapter;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 639
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->shouldNotifyAvailabilityChanged(Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 640
    iget-object v3, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;

    iget-boolean v4, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mIsAdAvailable:Z

    invoke-interface {v3, v4}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;->onRewardedVideoAvailabilityChanged(Z)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 683
    .end local v0    # "data":Lorg/json/JSONObject;
    .end local v2    # "event":Lcom/ironsource/eventsmodule/EventData;
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    .line 626
    .restart local v0    # "data":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 627
    .local v1, "e":Lorg/json/JSONException;
    :try_start_4
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 678
    .end local v0    # "data":Lorg/json/JSONObject;
    .end local v1    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v1

    .line 679
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_5
    iget-object v3, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onRewardedVideoAvailabilityChanged(available:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "provider:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 680
    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 679
    invoke-virtual {v3, v4, v5, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 621
    .end local v1    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 646
    .restart local v0    # "data":Lorg/json/JSONObject;
    .restart local v2    # "event":Lcom/ironsource/eventsmodule/EventData;
    :cond_2
    :try_start_6
    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->isPremiumAdapter(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->canShowPremium()Z

    move-result v3

    if-nez v3, :cond_3

    .line 647
    invoke-direct {p0, p2}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->addUnavailableRewardedVideoAdapter(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 648
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->shouldNotifyAvailabilityChanged(Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 649
    iget-object v3, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;

    iget-boolean v4, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mIsAdAvailable:Z

    invoke-interface {v3, v4}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;->onRewardedVideoAvailabilityChanged(Z)V

    goto :goto_1

    .line 654
    :cond_3
    iget-object v3, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mExhaustedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mCappedPerSessionAdapters:Ljava/util/ArrayList;

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getRewardedVideoProviderInstanceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 655
    if-eqz p1, :cond_4

    .line 657
    iget-object v3, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NATIVE:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Smart Loading - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getRewardedVideoProviderInstanceName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " moved to \'Available\' list"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 658
    const/4 v3, 0x0

    invoke-virtual {p0, p2, v3}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->addAvailableRewardedVideoAdapter(Lcom/ironsource/mediationsdk/AbstractAdapter;Z)V

    .line 660
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->shouldNotifyAvailabilityChanged(Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 661
    iget-object v3, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;

    iget-boolean v4, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mIsAdAvailable:Z

    invoke-interface {v3, v4}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;->onRewardedVideoAvailabilityChanged(Z)V

    goto/16 :goto_1

    .line 666
    :cond_4
    iget-object v3, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NATIVE:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Smart Loading - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getRewardedVideoProviderInstanceName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " moved to \'Not Available\' list"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 667
    invoke-direct {p0, p2}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->addUnavailableRewardedVideoAdapter(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 669
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->shouldNotifyAvailabilityChanged(Z)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 670
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->notifyAvailabilityChange()V

    .line 674
    :cond_5
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->loadNextAdapter()Lcom/ironsource/mediationsdk/AbstractAdapter;

    .line 675
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->completeIterationRound()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1
.end method

.method public setAge(I)V
    .locals 0
    .param p1, "age"    # I

    .prologue
    .line 350
    return-void
.end method

.method public setGender(Ljava/lang/String;)V
    .locals 0
    .param p1, "gender"    # Ljava/lang/String;

    .prologue
    .line 355
    return-void
.end method

.method public setMediationSegment(Ljava/lang/String;)V
    .locals 0
    .param p1, "segment"    # Ljava/lang/String;

    .prologue
    .line 360
    return-void
.end method

.method public setRewardedVideoListener(Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;

    .prologue
    .line 506
    iput-object p1, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;

    .line 507
    return-void
.end method

.method shouldTrackNetworkState(Landroid/content/Context;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "track"    # Z

    .prologue
    .line 1014
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->TAG:Ljava/lang/String;

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

    .line 1016
    iput-boolean p2, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mShouldTrackNetworkState:Z

    .line 1018
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mShouldTrackNetworkState:Z

    if-eqz v0, :cond_2

    .line 1019
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mNetworkStateReceiver:Lcom/ironsource/environment/NetworkStateReceiver;

    if-nez v0, :cond_0

    .line 1020
    new-instance v0, Lcom/ironsource/environment/NetworkStateReceiver;

    invoke-direct {v0, p1, p0}, Lcom/ironsource/environment/NetworkStateReceiver;-><init>(Landroid/content/Context;Lcom/ironsource/environment/NetworkStateReceiver$NetworkStateReceiverListener;)V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mNetworkStateReceiver:Lcom/ironsource/environment/NetworkStateReceiver;

    .line 1021
    :cond_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mNetworkStateReceiver:Lcom/ironsource/environment/NetworkStateReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1026
    :cond_1
    :goto_0
    return-void

    .line 1023
    :cond_2
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mNetworkStateReceiver:Lcom/ironsource/environment/NetworkStateReceiver;

    if-eqz v0, :cond_1

    .line 1024
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mNetworkStateReceiver:Lcom/ironsource/environment/NetworkStateReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method public showRewardedVideo()V
    .locals 0

    .prologue
    .line 365
    return-void
.end method

.method public declared-synchronized showRewardedVideo(Ljava/lang/String;)V
    .locals 8
    .param p1, "placementName"    # Ljava/lang/String;

    .prologue
    .line 370
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 371
    const-string v3, "Rewarded Video"

    invoke-static {v3}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildNoInternetConnectionShowFailError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->reportShowFail(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 409
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 375
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->sendShowCheckAvailabilityEvents(Ljava/lang/String;)V

    .line 377
    iget-object v3, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mAvailableAdapters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_5

    .line 378
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mAvailableAdapters:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 379
    .local v2, "tempAvailableAdapter":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ironsource/mediationsdk/AbstractAdapter;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/AbstractAdapter;

    .line 380
    .local v0, "adapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->isRewardedVideoAvailable()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 381
    invoke-direct {p0, p1, v0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->showRVAdapter(Ljava/lang/String;Lcom/ironsource/mediationsdk/AbstractAdapter;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 382
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->isPremiumAdapter(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 384
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->disablePremiumForCurrentSession()V

    .line 386
    :cond_2
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->increaseNumberOfVideosPlayedThisIteration()V

    .line 387
    iget-object v3, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 388
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getNumberOfVideosPlayedThisIteration()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getMaxRVAdsPerIteration()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " videos played"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 387
    invoke-virtual {v3, v4, v5, v6}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 390
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getNumberOfVideosPlayedThisIteration()I

    move-result v3

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getMaxRVAdsPerIteration()I

    move-result v4

    if-ne v3, v4, :cond_3

    .line 391
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->completeAdapterIteration(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 393
    :cond_3
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->completeIterationRound()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 370
    .end local v0    # "adapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    .end local v2    # "tempAvailableAdapter":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ironsource/mediationsdk/AbstractAdapter;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 398
    .restart local v0    # "adapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    .restart local v2    # "tempAvailableAdapter":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ironsource/mediationsdk/AbstractAdapter;>;"
    :cond_4
    const/4 v4, 0x0

    :try_start_2
    invoke-virtual {p0, v4, v0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->onRewardedVideoAvailabilityChanged(ZLcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 399
    new-instance v1, Ljava/lang/Exception;

    const-string v4, "FailedToShowVideoException"

    invoke-direct {v1, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 400
    .local v1, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v5, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Failed to show video"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 403
    .end local v0    # "adapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "tempAvailableAdapter":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ironsource/mediationsdk/AbstractAdapter;>;"
    :cond_5
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->isBackFillAvailable()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 404
    iget-object v3, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mBackFillAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    invoke-direct {p0, p1, v3}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->showRVAdapter(Ljava/lang/String;Lcom/ironsource/mediationsdk/AbstractAdapter;)Z

    goto/16 :goto_0

    .line 406
    :cond_6
    iget-boolean v3, p0, Lcom/ironsource/mediationsdk/RewardedVideoManager;->mAllCapped:Z

    if-eqz v3, :cond_0

    .line 407
    const-string v3, "Rewarded Video"

    invoke-static {v3}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildCappedPerSessionError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->reportShowFail(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method
