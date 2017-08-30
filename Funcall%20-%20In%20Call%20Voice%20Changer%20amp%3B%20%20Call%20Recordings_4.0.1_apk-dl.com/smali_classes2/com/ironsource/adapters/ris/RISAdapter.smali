.class public Lcom/ironsource/adapters/ris/RISAdapter;
.super Lcom/ironsource/mediationsdk/AbstractAdapter;
.source "RISAdapter.java"

# interfaces
.implements Lcom/ironsource/sdk/listeners/OnRewardedVideoListener;


# instance fields
.field private hasAdAvailable:Z

.field private mAdapterConfig:Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;

.field private mDidReportInitStatus:Z

.field private mInterstitialManager:Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;

.field private mSSAPublisher:Lcom/ironsource/sdk/SSAPublisher;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "providerName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/ironsource/mediationsdk/AbstractAdapter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    iput-boolean v1, p0, Lcom/ironsource/adapters/ris/RISAdapter;->hasAdAvailable:Z

    .line 33
    iput-boolean v1, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mDidReportInitStatus:Z

    .line 58
    new-instance v0, Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;

    invoke-direct {v0, p1}, Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mAdapterConfig:Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;

    .line 59
    iget-object v0, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mAdapterConfig:Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;

    invoke-virtual {v0}, Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;->getRVDynamicControllerUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->setControllerUrl(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Lcom/ironsource/adapters/ris/RISAdapter;->isAdaptersDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    invoke-static {v1}, Lcom/ironsource/sdk/utils/SDKUtils;->setDebugMode(I)V

    .line 65
    :goto_0
    iget-object v0, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mAdapterConfig:Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;

    invoke-virtual {v0}, Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;->getRVControllerConfig()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->setControllerConfig(Ljava/lang/String;)V

    .line 66
    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mAdapterConfig:Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;

    invoke-virtual {v0}, Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;->getRVDebugMode()I

    move-result v0

    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->setDebugMode(I)V

    goto :goto_0
.end method

.method static synthetic access$002(Lcom/ironsource/adapters/ris/RISAdapter;Lcom/ironsource/sdk/SSAPublisher;)Lcom/ironsource/sdk/SSAPublisher;
    .locals 0
    .param p0, "x0"    # Lcom/ironsource/adapters/ris/RISAdapter;
    .param p1, "x1"    # Lcom/ironsource/sdk/SSAPublisher;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mSSAPublisher:Lcom/ironsource/sdk/SSAPublisher;

    return-object p1
.end method

.method public static startAdapter(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/adapters/ris/RISAdapter;
    .locals 1
    .param p0, "providerName"    # Ljava/lang/String;
    .param p1, "providerUrl"    # Ljava/lang/String;

    .prologue
    .line 36
    new-instance v0, Lcom/ironsource/adapters/ris/RISAdapter;

    invoke-direct {v0, p0}, Lcom/ironsource/adapters/ris/RISAdapter;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method protected getConfig()Lcom/ironsource/mediationsdk/config/AbstractAdapterConfig;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mAdapterConfig:Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;

    return-object v0
.end method

.method public getCoreSDKVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->getSDKVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxAdsPerSession(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)I
    .locals 3
    .param p1, "adUnit"    # Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    .prologue
    const/4 v0, 0x0

    .line 41
    sget-object v1, Lcom/ironsource/adapters/ris/RISAdapter$2;->$SwitchMap$com$ironsource$mediationsdk$IronSource$AD_UNIT:[I

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 52
    :goto_0
    :pswitch_0
    return v0

    .line 43
    :pswitch_1
    iget-object v0, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mAdapterConfig:Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;

    invoke-virtual {v0}, Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;->getMaxRewardedVideosPerSession()I

    move-result v0

    goto :goto_0

    .line 45
    :pswitch_2
    iget-object v0, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mAdapterConfig:Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;

    invoke-virtual {v0}, Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;->getMaxInterstitialsPerSession()I

    move-result v0

    goto :goto_0

    .line 50
    :pswitch_3
    iget-object v0, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mAdapterConfig:Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;

    invoke-virtual {v0}, Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;->getMaxBannersPerSession()I

    move-result v0

    goto :goto_0

    .line 41
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public getMaxISAdsPerIteration()I
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mAdapterConfig:Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;

    invoke-virtual {v0}, Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;->getMaxISAdsPerIteration()I

    move-result v0

    return v0
.end method

.method public getMaxRVAdsPerIteration()I
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getSDKVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initInterstitial(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "userId"    # Ljava/lang/String;

    .prologue
    .line 95
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/ris/RISAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":initInterstitial(userId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/ironsource/adapters/ris/RISAdapter;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 96
    new-instance v0, Lcom/ironsource/adapters/ris/RISAdapter$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/ironsource/adapters/ris/RISAdapter$1;-><init>(Lcom/ironsource/adapters/ris/RISAdapter;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 105
    return-void
.end method

.method public initRewardedVideo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "userId"    # Ljava/lang/String;

    .prologue
    .line 148
    return-void
.end method

.method public isInterstitialReady()Z
    .locals 1

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/ironsource/adapters/ris/RISAdapter;->hasAdAvailable:Z

    return v0
.end method

.method public isRewardedVideoAvailable()Z
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x0

    return v0
.end method

.method public loadInterstitial()V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mInterstitialManager:Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;

    if-eqz v0, :cond_0

    .line 110
    iget-boolean v0, p0, Lcom/ironsource/adapters/ris/RISAdapter;->hasAdAvailable:Z

    if-eqz v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mInterstitialManager:Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;

    invoke-interface {v0, p0}, Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;->onInterstitialAdReady(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mInterstitialManager:Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;

    const-string v1, "No ad available"

    invoke-static {v1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildLoadFailedError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;->onInterstitialAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    goto :goto_0
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mSSAPublisher:Lcom/ironsource/sdk/SSAPublisher;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mSSAPublisher:Lcom/ironsource/sdk/SSAPublisher;

    invoke-interface {v0, p1}, Lcom/ironsource/sdk/SSAPublisher;->onPause(Landroid/app/Activity;)V

    .line 180
    :cond_0
    return-void
.end method

.method public onRVAdClicked()V
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mInterstitialManager:Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mInterstitialManager:Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;

    invoke-interface {v0, p0}, Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;->onInterstitialAdClicked(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 272
    :cond_0
    return-void
.end method

.method public onRVAdClosed()V
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mInterstitialManager:Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mInterstitialManager:Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;

    invoke-interface {v0, p0}, Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;->onInterstitialAdClosed(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 250
    :cond_0
    return-void
.end method

.method public onRVAdCredited(I)V
    .locals 1
    .param p1, "credits"    # I

    .prologue
    .line 240
    iget-object v0, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mRewardedInterstitialManager:Lcom/ironsource/mediationsdk/sdk/RewardedInterstitialManagerListener;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mRewardedInterstitialManager:Lcom/ironsource/mediationsdk/sdk/RewardedInterstitialManagerListener;

    invoke-interface {v0, p0}, Lcom/ironsource/mediationsdk/sdk/RewardedInterstitialManagerListener;->onInterstitialAdRewarded(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 243
    :cond_0
    return-void
.end method

.method public onRVAdOpened()V
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mInterstitialManager:Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mInterstitialManager:Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;

    invoke-interface {v0, p0}, Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;->onInterstitialAdShowSucceeded(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 256
    iget-object v0, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mInterstitialManager:Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;

    invoke-interface {v0, p0}, Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;->onInterstitialAdOpened(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 258
    :cond_0
    return-void
.end method

.method public onRVInitFail(Ljava/lang/String;)V
    .locals 3
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 219
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ironsource/adapters/ris/RISAdapter;->hasAdAvailable:Z

    .line 220
    iget-object v0, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mInterstitialManager:Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mDidReportInitStatus:Z

    if-nez v0, :cond_0

    .line 221
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mDidReportInitStatus:Z

    .line 222
    iget-object v0, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mInterstitialManager:Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adapter initialization failure - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ironsource/adapters/ris/RISAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Interstitial"

    invoke-static {v1, v2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;->onInterstitialInitFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 225
    :cond_0
    return-void
.end method

.method public onRVInitSuccess(Lcom/ironsource/sdk/data/AdUnitsReady;)V
    .locals 6
    .param p1, "adUnitsReady"    # Lcom/ironsource/sdk/data/AdUnitsReady;

    .prologue
    const/4 v3, 0x1

    .line 201
    const/4 v1, 0x0

    .line 203
    .local v1, "numOfAdUnits":I
    :try_start_0
    invoke-virtual {p1}, Lcom/ironsource/sdk/data/AdUnitsReady;->getNumOfAdUnits()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 208
    :goto_0
    if-lez v1, :cond_1

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/ironsource/adapters/ris/RISAdapter;->hasAdAvailable:Z

    .line 210
    iget-object v2, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mInterstitialManager:Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mDidReportInitStatus:Z

    if-nez v2, :cond_0

    .line 211
    iput-boolean v3, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mDidReportInitStatus:Z

    .line 212
    iget-object v2, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mInterstitialManager:Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;

    invoke-interface {v2, p0}, Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;->onInterstitialInitSuccess(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 215
    :cond_0
    return-void

    .line 204
    :catch_0
    move-exception v0

    .line 205
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v2

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NATIVE:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v5, "onRVInitSuccess:parseInt()"

    invoke-virtual {v2, v4, v5, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 208
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public onRVNoMoreOffers()V
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mInterstitialManager:Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mDidReportInitStatus:Z

    if-nez v0, :cond_0

    .line 231
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mDidReportInitStatus:Z

    .line 232
    iget-object v0, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mInterstitialManager:Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;

    invoke-interface {v0, p0}, Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;->onInterstitialInitSuccess(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 236
    :cond_0
    return-void
.end method

.method public onRVShowFail(Ljava/lang/String;)V
    .locals 4
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 262
    iget-object v0, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mInterstitialManager:Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mInterstitialManager:Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;

    new-instance v1, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v2, 0x1fd

    const-string v3, "Show Failed"

    invoke-direct {v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, p0}, Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;->onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 265
    :cond_0
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mSSAPublisher:Lcom/ironsource/sdk/SSAPublisher;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mSSAPublisher:Lcom/ironsource/sdk/SSAPublisher;

    invoke-interface {v0, p1}, Lcom/ironsource/sdk/SSAPublisher;->onResume(Landroid/app/Activity;)V

    .line 174
    :cond_0
    return-void
.end method

.method public setAge(I)V
    .locals 1
    .param p1, "age"    # I

    .prologue
    .line 184
    iget-object v0, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mAdapterConfig:Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;

    invoke-virtual {v0, p1}, Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;->setUserAgeGroup(I)V

    .line 185
    return-void
.end method

.method public setGender(Ljava/lang/String;)V
    .locals 1
    .param p1, "gender"    # Ljava/lang/String;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mAdapterConfig:Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;

    invoke-virtual {v0, p1}, Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;->setUserGender(Ljava/lang/String;)V

    .line 191
    return-void
.end method

.method public setInterstitialListener(Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;)V
    .locals 0
    .param p1, "manager"    # Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mInterstitialManager:Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;

    .line 168
    return-void
.end method

.method public setMediationSegment(Ljava/lang/String;)V
    .locals 1
    .param p1, "segment"    # Ljava/lang/String;

    .prologue
    .line 195
    iget-object v0, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mAdapterConfig:Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;

    invoke-virtual {v0, p1}, Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;->setMediationSegment(Ljava/lang/String;)V

    .line 196
    return-void
.end method

.method public setRewardedVideoListener(Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;)V
    .locals 0
    .param p1, "manager"    # Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;

    .prologue
    .line 143
    return-void
.end method

.method public showInterstitial()V
    .locals 0

    .prologue
    .line 121
    return-void
.end method

.method public showInterstitial(Ljava/lang/String;)V
    .locals 4
    .param p1, "placementName"    # Ljava/lang/String;

    .prologue
    .line 125
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/ris/RISAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":showRewardedVideo(placement:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/ironsource/adapters/ris/RISAdapter;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 126
    iget-object v0, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mSSAPublisher:Lcom/ironsource/sdk/SSAPublisher;

    if-eqz v0, :cond_1

    .line 127
    iget-object v0, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mSSAPublisher:Lcom/ironsource/sdk/SSAPublisher;

    invoke-virtual {p0}, Lcom/ironsource/adapters/ris/RISAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ironsource/sdk/SSAPublisher;->showRewardedVideo(Ljava/lang/String;)V

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mInterstitialManager:Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mInterstitialManager:Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;

    new-instance v1, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v2, 0x1fd

    const-string v3, "Please call init before calling showRewardedVideo"

    invoke-direct {v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, p0}, Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;->onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    goto :goto_0
.end method

.method public showRewardedVideo()V
    .locals 0

    .prologue
    .line 153
    return-void
.end method

.method public showRewardedVideo(Ljava/lang/String;)V
    .locals 0
    .param p1, "placementName"    # Ljava/lang/String;

    .prologue
    .line 163
    return-void
.end method
