.class abstract Lcom/ironsource/mediationsdk/AbstractAdUnitManager;
.super Ljava/lang/Object;
.source "AbstractAdUnitManager.java"


# instance fields
.field final KEY_PLACEMENT:Ljava/lang/String;

.field final KEY_PROVIDER_PRIORITY:Ljava/lang/String;

.field final KEY_REASON:Ljava/lang/String;

.field final KEY_REWARD_AMOUNT:Ljava/lang/String;

.field final KEY_REWARD_NAME:Ljava/lang/String;

.field final KEY_STATUS:Ljava/lang/String;

.field mActivity:Landroid/app/Activity;

.field mAppKey:Ljava/lang/String;

.field protected mBackFillAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

.field protected mBackFillInitStarted:Z

.field protected mCanShowPremium:Z

.field mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

.field mServerResponseWrapper:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

.field mShouldTrackNetworkState:Z

.field mUserId:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, "reason"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/AbstractAdUnitManager;->KEY_REASON:Ljava/lang/String;

    .line 15
    const-string v0, "status"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/AbstractAdUnitManager;->KEY_STATUS:Ljava/lang/String;

    .line 16
    const-string v0, "placement"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/AbstractAdUnitManager;->KEY_PLACEMENT:Ljava/lang/String;

    .line 17
    const-string v0, "rewardName"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/AbstractAdUnitManager;->KEY_REWARD_NAME:Ljava/lang/String;

    .line 18
    const-string v0, "rewardAmount"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/AbstractAdUnitManager;->KEY_REWARD_AMOUNT:Ljava/lang/String;

    .line 19
    const-string v0, "providerPriority"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/AbstractAdUnitManager;->KEY_PROVIDER_PRIORITY:Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/AbstractAdUnitManager;->mShouldTrackNetworkState:Z

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/AbstractAdUnitManager;->mCanShowPremium:Z

    .line 34
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/AbstractAdUnitManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    .line 35
    return-void
.end method


# virtual methods
.method protected declared-synchronized canShowPremium()Z
    .locals 1

    .prologue
    .line 75
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/AbstractAdUnitManager;->mCanShowPremium:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized disablePremiumForCurrentSession()V
    .locals 1

    .prologue
    .line 79
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/AbstractAdUnitManager;->mCanShowPremium:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    monitor-exit p0

    return-void

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method abstract dropAdapterFromSmartLoad(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
.end method

.method protected isBackFillAdapter(Lcom/ironsource/mediationsdk/AbstractAdapter;)Z
    .locals 2
    .param p1, "adapter"    # Lcom/ironsource/mediationsdk/AbstractAdapter;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/ironsource/mediationsdk/AbstractAdUnitManager;->mBackFillAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 69
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/AbstractAdUnitManager;->mBackFillAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 71
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method abstract isBackFillAvailable()Z
.end method

.method abstract isPremiumAdapter(Ljava/lang/String;)Z
.end method

.method protected setCustomParams(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    .locals 8
    .param p1, "providerAdapter"    # Lcom/ironsource/mediationsdk/AbstractAdapter;

    .prologue
    .line 50
    :try_start_0
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/IronSourceObject;->getAge()Ljava/lang/Integer;

    move-result-object v0

    .line 51
    .local v0, "age":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/ironsource/mediationsdk/AbstractAdapter;->setAge(I)V

    .line 54
    :cond_0
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/IronSourceObject;->getGender()Ljava/lang/String;

    move-result-object v2

    .line 55
    .local v2, "gender":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 56
    invoke-virtual {p1, v2}, Lcom/ironsource/mediationsdk/AbstractAdapter;->setGender(Ljava/lang/String;)V

    .line 58
    :cond_1
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/IronSourceObject;->getMediationSegment()Ljava/lang/String;

    move-result-object v3

    .line 59
    .local v3, "segment":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 60
    invoke-virtual {p1, v3}, Lcom/ironsource/mediationsdk/AbstractAdapter;->setMediationSegment(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .end local v0    # "age":Ljava/lang/Integer;
    .end local v2    # "gender":Ljava/lang/String;
    .end local v3    # "segment":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v1

    .line 63
    .local v1, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/ironsource/mediationsdk/AbstractAdUnitManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v5, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":setCustomParams():"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    invoke-virtual {v4, v5, v6, v7}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method abstract shouldTrackNetworkState(Landroid/content/Context;Z)V
.end method
