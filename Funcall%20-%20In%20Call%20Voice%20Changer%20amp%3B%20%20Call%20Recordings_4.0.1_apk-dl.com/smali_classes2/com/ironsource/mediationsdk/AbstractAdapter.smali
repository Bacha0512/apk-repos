.class public abstract Lcom/ironsource/mediationsdk/AbstractAdapter;
.super Ljava/lang/Object;
.source "AbstractAdapter.java"

# interfaces
.implements Lcom/ironsource/mediationsdk/sdk/InterstitialAdapterApi;
.implements Lcom/ironsource/mediationsdk/sdk/RewardedVideoAdapterApi;
.implements Lcom/ironsource/mediationsdk/logger/LoggingApi;
.implements Lcom/ironsource/mediationsdk/sdk/RewardedInterstitialAdapterApi;
.implements Lcom/ironsource/mediationsdk/sdk/BaseBannerApi;


# instance fields
.field private mAdUnitToSubProviderIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBannerConfig:Lcom/ironsource/mediationsdk/model/BannerConfigurations;

.field private mBannerInitTimerTask:Ljava/util/TimerTask;

.field private mBannerLoadTimerTask:Ljava/util/TimerTask;

.field protected mBannerManager:Lcom/ironsource/mediationsdk/sdk/BannerManagerListener;

.field private mBannerPriority:I

.field private mBannerProviderInstanceName:Ljava/lang/String;

.field private mBannerTimeout:J

.field protected mCurrentAdNetworkBanner:Landroid/view/View;

.field private mDidInitInterstitial:Z

.field private mDidInitRewardedVideo:Z

.field private mISInitTimerTask:Ljava/util/TimerTask;

.field private mISLoadTimerTask:Ljava/util/TimerTask;

.field private mInterstitialConfig:Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;

.field private mInterstitialPriority:I

.field private mInterstitialProviderInstanceName:Ljava/lang/String;

.field private mInterstitialTimeout:I

.field protected mIronSourceBanner:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

.field private mIsMultipleInstances:Z

.field private mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

.field private mNumberOfBNShownThisSession:I

.field private mNumberOfISPlayedThisIteration:I

.field private mNumberOfISPlayedThisSession:I

.field private mNumberOfRVPlayedThisIteration:I

.field private mNumberOfRVPlayedThisSession:I

.field private mPluginFrameworkVersion:Ljava/lang/String;

.field private mPluginType:Ljava/lang/String;

.field private mProviderName:Ljava/lang/String;

.field private mProviderUrl:Ljava/lang/String;

.field private mRVTimerTask:Ljava/util/TimerTask;

.field protected mRewardedInterstitialManager:Lcom/ironsource/mediationsdk/sdk/RewardedInterstitialManagerListener;

.field protected mRewardedVideoConfig:Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;

.field protected mRewardedVideoHelper:Lcom/ironsource/mediationsdk/utils/RewardedVideoHelper;

.field private mRewardedVideoPriority:I

.field private mRewardedVideoProviderInstanceName:Ljava/lang/String;

.field private mRewardedVideoTimeout:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "providerName"    # Ljava/lang/String;
    .param p2, "providerUrl"    # Ljava/lang/String;

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput v0, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mInterstitialPriority:I

    .line 68
    iput v0, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mRewardedVideoPriority:I

    .line 69
    iput v0, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mBannerPriority:I

    .line 97
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    .line 100
    if-nez p1, :cond_0

    .line 101
    const-string p1, ""

    .line 103
    :cond_0
    if-nez p2, :cond_1

    .line 104
    const-string p2, ""

    .line 106
    :cond_1
    iput-object p1, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mProviderName:Ljava/lang/String;

    .line 107
    iput-object p2, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mProviderUrl:Ljava/lang/String;

    .line 109
    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mIsMultipleInstances:Z

    .line 111
    iput v1, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mNumberOfRVPlayedThisIteration:I

    .line 112
    iput v1, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mNumberOfISPlayedThisIteration:I

    .line 114
    iput v1, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mNumberOfISPlayedThisSession:I

    .line 115
    iput v1, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mNumberOfRVPlayedThisSession:I

    .line 116
    iput v1, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mNumberOfBNShownThisSession:I

    .line 118
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mAdUnitToSubProviderIdMap:Ljava/util/Map;

    .line 120
    new-instance v0, Lcom/ironsource/mediationsdk/utils/RewardedVideoHelper;

    invoke-direct {v0, p0}, Lcom/ironsource/mediationsdk/utils/RewardedVideoHelper;-><init>(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mRewardedVideoHelper:Lcom/ironsource/mediationsdk/utils/RewardedVideoHelper;

    .line 122
    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mDidInitRewardedVideo:Z

    .line 123
    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mDidInitInterstitial:Z

    .line 124
    return-void
.end method


# virtual methods
.method public canShowAdInCurrentSession(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)Z
    .locals 2
    .param p1, "adUnit"    # Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    .prologue
    .line 239
    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getNumberOfAdsPlayedThisSession(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getMaxAdsPerSession(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected cancelBannerInitTimer()V
    .locals 2

    .prologue
    .line 555
    :try_start_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mBannerInitTimerTask:Ljava/util/TimerTask;

    if-eqz v1, :cond_0

    .line 556
    iget-object v1, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mBannerInitTimerTask:Ljava/util/TimerTask;

    invoke-virtual {v1}, Ljava/util/TimerTask;->cancel()Z

    .line 557
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mBannerInitTimerTask:Ljava/util/TimerTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 562
    :cond_0
    :goto_0
    return-void

    .line 559
    :catch_0
    move-exception v0

    .line 560
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected cancelBannerLoadTimer()V
    .locals 2

    .prologue
    .line 496
    :try_start_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mBannerLoadTimerTask:Ljava/util/TimerTask;

    if-eqz v1, :cond_0

    .line 497
    iget-object v1, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mBannerLoadTimerTask:Ljava/util/TimerTask;

    invoke-virtual {v1}, Ljava/util/TimerTask;->cancel()Z

    .line 498
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mBannerLoadTimerTask:Ljava/util/TimerTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 503
    :cond_0
    :goto_0
    return-void

    .line 500
    :catch_0
    move-exception v0

    .line 501
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected cancelISInitTimer()V
    .locals 2

    .prologue
    .line 432
    :try_start_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mISInitTimerTask:Ljava/util/TimerTask;

    if-eqz v1, :cond_0

    .line 433
    iget-object v1, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mISInitTimerTask:Ljava/util/TimerTask;

    invoke-virtual {v1}, Ljava/util/TimerTask;->cancel()Z

    .line 434
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mISInitTimerTask:Ljava/util/TimerTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 439
    :cond_0
    :goto_0
    return-void

    .line 436
    :catch_0
    move-exception v0

    .line 437
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected cancelISLoadTimer()V
    .locals 2

    .prologue
    .line 463
    :try_start_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mISLoadTimerTask:Ljava/util/TimerTask;

    if-eqz v1, :cond_0

    .line 464
    iget-object v1, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mISLoadTimerTask:Ljava/util/TimerTask;

    invoke-virtual {v1}, Ljava/util/TimerTask;->cancel()Z

    .line 465
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mISLoadTimerTask:Ljava/util/TimerTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 470
    :cond_0
    :goto_0
    return-void

    .line 467
    :catch_0
    move-exception v0

    .line 468
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected cancelRVTimer()V
    .locals 2

    .prologue
    .line 524
    :try_start_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mRVTimerTask:Ljava/util/TimerTask;

    if-eqz v1, :cond_0

    .line 525
    iget-object v1, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mRVTimerTask:Ljava/util/TimerTask;

    invoke-virtual {v1}, Ljava/util/TimerTask;->cancel()Z

    .line 526
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mRVTimerTask:Ljava/util/TimerTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 531
    :cond_0
    :goto_0
    return-void

    .line 528
    :catch_0
    move-exception v0

    .line 529
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public createBanner(Landroid/app/Activity;Lcom/ironsource/mediationsdk/EBannerSize;)Lcom/ironsource/mediationsdk/IronSourceBannerLayout;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "size"    # Lcom/ironsource/mediationsdk/EBannerSize;

    .prologue
    .line 606
    const/4 v0, 0x0

    return-object v0
.end method

.method public destroyBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)V
    .locals 0
    .param p1, "banner"    # Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    .prologue
    .line 622
    return-void
.end method

.method public didInitInterstitial()Z
    .locals 1

    .prologue
    .line 641
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mDidInitInterstitial:Z

    return v0
.end method

.method public didInitRewardedVideo()Z
    .locals 1

    .prologue
    .line 637
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mDidInitRewardedVideo:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 401
    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/ironsource/mediationsdk/AbstractAdapter;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 402
    check-cast v0, Lcom/ironsource/mediationsdk/AbstractAdapter;

    .line 403
    .local v0, "otherAdapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 405
    .end local v0    # "otherAdapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getBannerPriority()I
    .locals 1

    .prologue
    .line 292
    iget v0, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mBannerPriority:I

    return v0
.end method

.method public getBannerProviderInstanceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mBannerProviderInstanceName:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract getConfig()Lcom/ironsource/mediationsdk/config/AbstractAdapterConfig;
.end method

.method public abstract getCoreSDKVersion()Ljava/lang/String;
.end method

.method public getCurrentSubProviderId(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)Ljava/lang/String;
    .locals 1
    .param p1, "adUnit"    # Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    .prologue
    .line 158
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mAdUnitToSubProviderIdMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mAdUnitToSubProviderIdMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mAdUnitToSubProviderIdMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 162
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInterstitialPriority()I
    .locals 1

    .prologue
    .line 288
    iget v0, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mInterstitialPriority:I

    return v0
.end method

.method public getInterstitialProviderInstanceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mInterstitialProviderInstanceName:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getMaxAdsPerSession(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)I
.end method

.method public abstract getMaxISAdsPerIteration()I
.end method

.method public abstract getMaxRVAdsPerIteration()I
.end method

.method public getNumberOfAdsPlayedThisSession(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)I
    .locals 3
    .param p1, "adUnit"    # Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    .prologue
    const/4 v0, 0x0

    .line 206
    sget-object v1, Lcom/ironsource/mediationsdk/AbstractAdapter$7;->$SwitchMap$com$ironsource$mediationsdk$IronSource$AD_UNIT:[I

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 217
    :goto_0
    :pswitch_0
    return v0

    .line 208
    :pswitch_1
    iget v0, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mNumberOfRVPlayedThisSession:I

    goto :goto_0

    .line 210
    :pswitch_2
    iget v0, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mNumberOfISPlayedThisSession:I

    goto :goto_0

    .line 215
    :pswitch_3
    iget v0, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mNumberOfBNShownThisSession:I

    goto :goto_0

    .line 206
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public getNumberOfInterstitialAdsPlayed()I
    .locals 1

    .prologue
    .line 244
    iget v0, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mNumberOfISPlayedThisIteration:I

    return v0
.end method

.method public getNumberOfVideosPlayedThisIteration()I
    .locals 1

    .prologue
    .line 256
    iget v0, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mNumberOfRVPlayedThisIteration:I

    return v0
.end method

.method public getPluginFrameworkVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mPluginFrameworkVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getPluginType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mPluginType:Ljava/lang/String;

    return-object v0
.end method

.method public getProviderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mProviderName:Ljava/lang/String;

    return-object v0
.end method

.method public getRewardedVideoPriority()I
    .locals 1

    .prologue
    .line 304
    iget v0, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mRewardedVideoPriority:I

    return v0
.end method

.method public getRewardedVideoProviderInstanceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mRewardedVideoProviderInstanceName:Ljava/lang/String;

    return-object v0
.end method

.method getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mProviderUrl:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getVersion()Ljava/lang/String;
.end method

.method public increaseNumberOfAdsPlayedThisSession(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V
    .locals 2
    .param p1, "adUnit"    # Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    .prologue
    .line 222
    sget-object v0, Lcom/ironsource/mediationsdk/AbstractAdapter$7;->$SwitchMap$com$ironsource$mediationsdk$IronSource$AD_UNIT:[I

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 236
    :goto_0
    :pswitch_0
    return-void

    .line 224
    :pswitch_1
    iget v0, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mNumberOfRVPlayedThisSession:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mNumberOfRVPlayedThisSession:I

    goto :goto_0

    .line 227
    :pswitch_2
    iget v0, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mNumberOfISPlayedThisSession:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mNumberOfISPlayedThisSession:I

    goto :goto_0

    .line 233
    :pswitch_3
    iget v0, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mNumberOfBNShownThisSession:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mNumberOfBNShownThisSession:I

    goto :goto_0

    .line 222
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public increaseNumberOfInterstitialAdsPlayed()V
    .locals 1

    .prologue
    .line 248
    iget v0, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mNumberOfISPlayedThisIteration:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mNumberOfISPlayedThisIteration:I

    .line 249
    return-void
.end method

.method public increaseNumberOfVideosPlayedThisIteration()V
    .locals 1

    .prologue
    .line 260
    iget v0, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mNumberOfRVPlayedThisIteration:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mNumberOfRVPlayedThisIteration:I

    .line 261
    return-void
.end method

.method public initBanners(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "userId"    # Ljava/lang/String;

    .prologue
    .line 601
    return-void
.end method

.method protected isAdaptersDebugEnabled()Z
    .locals 1

    .prologue
    .line 596
    iget-object v0, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->isDebugEnabled()Z

    move-result v0

    return v0
.end method

.method public isMultipleInstances()Z
    .locals 1

    .prologue
    .line 197
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mIsMultipleInstances:Z

    return v0
.end method

.method public loadBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)V
    .locals 0
    .param p1, "banner"    # Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    .prologue
    .line 612
    return-void
.end method

.method public loadBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Ljava/lang/String;)V
    .locals 0
    .param p1, "banner"    # Lcom/ironsource/mediationsdk/IronSourceBannerLayout;
    .param p2, "placementName"    # Ljava/lang/String;

    .prologue
    .line 617
    return-void
.end method

.method protected log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    .locals 1
    .param p1, "tag"    # Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "logLevel"    # I

    .prologue
    .line 337
    iget-object v0, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->onLog(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 338
    return-void
.end method

.method protected removeBannerViews()V
    .locals 2

    .prologue
    .line 569
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 570
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/ironsource/mediationsdk/AbstractAdapter$6;

    invoke-direct {v1, p0}, Lcom/ironsource/mediationsdk/AbstractAdapter$6;-><init>(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 584
    return-void
.end method

.method public resetNumberOfInterstitialAdsPlayed()V
    .locals 1

    .prologue
    .line 252
    const/4 v0, 0x0

    iput v0, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mNumberOfISPlayedThisIteration:I

    .line 253
    return-void
.end method

.method public resetNumberOfVideosPlayedThisIteration()V
    .locals 1

    .prologue
    .line 264
    const/4 v0, 0x0

    iput v0, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mNumberOfRVPlayedThisIteration:I

    .line 265
    return-void
.end method

.method public setBannerConfigurations(Lcom/ironsource/mediationsdk/model/BannerConfigurations;)V
    .locals 0
    .param p1, "bannerConfigurations"    # Lcom/ironsource/mediationsdk/model/BannerConfigurations;

    .prologue
    .line 312
    iput-object p1, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mBannerConfig:Lcom/ironsource/mediationsdk/model/BannerConfigurations;

    .line 313
    return-void
.end method

.method public setBannerListener(Lcom/ironsource/mediationsdk/sdk/BannerManagerListener;)V
    .locals 0
    .param p1, "manager"    # Lcom/ironsource/mediationsdk/sdk/BannerManagerListener;

    .prologue
    .line 626
    return-void
.end method

.method public setBannerPriority(I)V
    .locals 0
    .param p1, "priority"    # I

    .prologue
    .line 284
    iput p1, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mBannerPriority:I

    .line 285
    return-void
.end method

.method public setBannerProviderInstanceName(Ljava/lang/String;)V
    .locals 0
    .param p1, "providerInstanceName"    # Ljava/lang/String;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mBannerProviderInstanceName:Ljava/lang/String;

    .line 180
    return-void
.end method

.method public setBannerTimeout(J)V
    .locals 1
    .param p1, "timeout"    # J

    .prologue
    .line 276
    iput-wide p1, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mBannerTimeout:J

    .line 277
    return-void
.end method

.method public setDidInitInterstitial(Z)V
    .locals 0
    .param p1, "didInit"    # Z

    .prologue
    .line 633
    iput-boolean p1, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mDidInitInterstitial:Z

    .line 634
    return-void
.end method

.method public setDidInitRewardedVideo(Z)V
    .locals 0
    .param p1, "didInit"    # Z

    .prologue
    .line 629
    iput-boolean p1, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mDidInitRewardedVideo:Z

    .line 630
    return-void
.end method

.method public setInterstitialConfigurations(Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;)V
    .locals 0
    .param p1, "interstitialConfigurations"    # Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;

    .prologue
    .line 308
    iput-object p1, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mInterstitialConfig:Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;

    .line 309
    return-void
.end method

.method public setInterstitialPriority(I)V
    .locals 0
    .param p1, "priority"    # I

    .prologue
    .line 280
    iput p1, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mInterstitialPriority:I

    .line 281
    return-void
.end method

.method public setInterstitialProviderInstanceName(Ljava/lang/String;)V
    .locals 0
    .param p1, "providerInstanceName"    # Ljava/lang/String;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mInterstitialProviderInstanceName:Ljava/lang/String;

    .line 177
    return-void
.end method

.method public setInterstitialTimeout(I)V
    .locals 0
    .param p1, "timeout"    # I

    .prologue
    .line 272
    iput p1, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mInterstitialTimeout:I

    .line 273
    return-void
.end method

.method public setIsMultipleInstances(Z)V
    .locals 0
    .param p1, "isMultipleInstances"    # Z

    .prologue
    .line 193
    iput-boolean p1, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mIsMultipleInstances:Z

    .line 194
    return-void
.end method

.method public setLogListener(Lcom/ironsource/mediationsdk/logger/LogListener;)V
    .locals 0
    .param p1, "logListener"    # Lcom/ironsource/mediationsdk/logger/LogListener;

    .prologue
    .line 588
    return-void
.end method

.method setPluginData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "pluginType"    # Ljava/lang/String;
    .param p2, "pluginFrameworkVersion"    # Ljava/lang/String;

    .prologue
    .line 320
    iput-object p1, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mPluginType:Ljava/lang/String;

    .line 321
    iput-object p2, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mPluginFrameworkVersion:Ljava/lang/String;

    .line 322
    return-void
.end method

.method public setRewardedInterstitialListener(Lcom/ironsource/mediationsdk/sdk/RewardedInterstitialManagerListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/ironsource/mediationsdk/sdk/RewardedInterstitialManagerListener;

    .prologue
    .line 592
    iput-object p1, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mRewardedInterstitialManager:Lcom/ironsource/mediationsdk/sdk/RewardedInterstitialManagerListener;

    .line 593
    return-void
.end method

.method public setRewardedVideoConfigurations(Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;)V
    .locals 0
    .param p1, "rewardedVideoConfigurations"    # Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;

    .prologue
    .line 316
    iput-object p1, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mRewardedVideoConfig:Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;

    .line 317
    return-void
.end method

.method public setRewardedVideoPriority(I)V
    .locals 0
    .param p1, "priority"    # I

    .prologue
    .line 300
    iput p1, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mRewardedVideoPriority:I

    .line 301
    return-void
.end method

.method public setRewardedVideoProviderInstanceName(Ljava/lang/String;)V
    .locals 0
    .param p1, "providerInstanceName"    # Ljava/lang/String;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mRewardedVideoProviderInstanceName:Ljava/lang/String;

    .line 174
    return-void
.end method

.method public setRewardedVideoTimeout(I)V
    .locals 0
    .param p1, "timeout"    # I

    .prologue
    .line 296
    iput p1, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mRewardedVideoTimeout:I

    .line 297
    return-void
.end method

.method public setSubProviderId(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Ljava/lang/String;)V
    .locals 1
    .param p1, "adUnit"    # Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;
    .param p2, "subproviderId"    # Ljava/lang/String;

    .prologue
    .line 166
    iget-object v0, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mAdUnitToSubProviderIdMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 170
    :goto_0
    return-void

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mAdUnitToSubProviderIdMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected startBannerInitTimer(Lcom/ironsource/mediationsdk/sdk/BannerManagerListener;)V
    .locals 6
    .param p1, "listener"    # Lcom/ironsource/mediationsdk/sdk/BannerManagerListener;

    .prologue
    .line 535
    :try_start_0
    new-instance v2, Lcom/ironsource/mediationsdk/AbstractAdapter$5;

    invoke-direct {v2, p0, p1}, Lcom/ironsource/mediationsdk/AbstractAdapter$5;-><init>(Lcom/ironsource/mediationsdk/AbstractAdapter;Lcom/ironsource/mediationsdk/sdk/BannerManagerListener;)V

    iput-object v2, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mBannerInitTimerTask:Ljava/util/TimerTask;

    .line 545
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    .line 546
    .local v1, "timer":Ljava/util/Timer;
    iget-object v2, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mBannerInitTimerTask:Ljava/util/TimerTask;

    if-eqz v2, :cond_0

    .line 547
    iget-object v2, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mBannerInitTimerTask:Ljava/util/TimerTask;

    iget-wide v4, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mBannerTimeout:J

    invoke-virtual {v1, v2, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 551
    .end local v1    # "timer":Ljava/util/Timer;
    :cond_0
    :goto_0
    return-void

    .line 548
    :catch_0
    move-exception v0

    .line 549
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected startBannerLoadTimer(Lcom/ironsource/mediationsdk/BannerAdaptersListener;)V
    .locals 6
    .param p1, "listener"    # Lcom/ironsource/mediationsdk/BannerAdaptersListener;

    .prologue
    .line 474
    :try_start_0
    new-instance v2, Lcom/ironsource/mediationsdk/AbstractAdapter$3;

    invoke-direct {v2, p0, p1}, Lcom/ironsource/mediationsdk/AbstractAdapter$3;-><init>(Lcom/ironsource/mediationsdk/AbstractAdapter;Lcom/ironsource/mediationsdk/BannerAdaptersListener;)V

    iput-object v2, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mBannerLoadTimerTask:Ljava/util/TimerTask;

    .line 486
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    .line 487
    .local v1, "timer":Ljava/util/Timer;
    iget-object v2, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mBannerLoadTimerTask:Ljava/util/TimerTask;

    if-eqz v2, :cond_0

    .line 488
    iget-object v2, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mBannerLoadTimerTask:Ljava/util/TimerTask;

    iget-wide v4, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mBannerTimeout:J

    invoke-virtual {v1, v2, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 492
    .end local v1    # "timer":Ljava/util/Timer;
    :cond_0
    :goto_0
    return-void

    .line 489
    :catch_0
    move-exception v0

    .line 490
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected startISInitTimer(Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;)V
    .locals 6
    .param p1, "listener"    # Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;

    .prologue
    .line 415
    :try_start_0
    new-instance v2, Lcom/ironsource/mediationsdk/AbstractAdapter$1;

    invoke-direct {v2, p0, p1}, Lcom/ironsource/mediationsdk/AbstractAdapter$1;-><init>(Lcom/ironsource/mediationsdk/AbstractAdapter;Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;)V

    iput-object v2, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mISInitTimerTask:Ljava/util/TimerTask;

    .line 422
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    .line 423
    .local v1, "timer":Ljava/util/Timer;
    iget-object v2, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mISInitTimerTask:Ljava/util/TimerTask;

    if-eqz v2, :cond_0

    .line 424
    iget-object v2, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mISInitTimerTask:Ljava/util/TimerTask;

    iget v3, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mInterstitialTimeout:I

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v4, v3

    invoke-virtual {v1, v2, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 428
    .end local v1    # "timer":Ljava/util/Timer;
    :cond_0
    :goto_0
    return-void

    .line 425
    :catch_0
    move-exception v0

    .line 426
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected startISLoadTimer(Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;)V
    .locals 6
    .param p1, "listener"    # Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;

    .prologue
    .line 443
    :try_start_0
    new-instance v2, Lcom/ironsource/mediationsdk/AbstractAdapter$2;

    invoke-direct {v2, p0, p1}, Lcom/ironsource/mediationsdk/AbstractAdapter$2;-><init>(Lcom/ironsource/mediationsdk/AbstractAdapter;Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;)V

    iput-object v2, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mISLoadTimerTask:Ljava/util/TimerTask;

    .line 453
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    .line 454
    .local v1, "timer":Ljava/util/Timer;
    iget-object v2, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mISLoadTimerTask:Ljava/util/TimerTask;

    if-eqz v2, :cond_0

    .line 455
    iget-object v2, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mISLoadTimerTask:Ljava/util/TimerTask;

    iget v3, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mInterstitialTimeout:I

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v4, v3

    invoke-virtual {v1, v2, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 459
    .end local v1    # "timer":Ljava/util/Timer;
    :cond_0
    :goto_0
    return-void

    .line 456
    :catch_0
    move-exception v0

    .line 457
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected startRVTimer(Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;)V
    .locals 6
    .param p1, "listener"    # Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;

    .prologue
    .line 507
    :try_start_0
    new-instance v2, Lcom/ironsource/mediationsdk/AbstractAdapter$4;

    invoke-direct {v2, p0, p1}, Lcom/ironsource/mediationsdk/AbstractAdapter$4;-><init>(Lcom/ironsource/mediationsdk/AbstractAdapter;Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;)V

    iput-object v2, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mRVTimerTask:Ljava/util/TimerTask;

    .line 514
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    .line 515
    .local v1, "rvtimer":Ljava/util/Timer;
    iget-object v2, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mRVTimerTask:Ljava/util/TimerTask;

    if-eqz v2, :cond_0

    .line 516
    iget-object v2, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mRVTimerTask:Ljava/util/TimerTask;

    iget v3, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mRewardedVideoTimeout:I

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v4, v3

    invoke-virtual {v1, v2, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 520
    .end local v1    # "rvtimer":Ljava/util/Timer;
    :cond_0
    :goto_0
    return-void

    .line 517
    :catch_0
    move-exception v0

    .line 518
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public updateAdapterSettings(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Lcom/ironsource/mediationsdk/model/ProviderSettings;)V
    .locals 5
    .param p1, "adUnit"    # Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;
    .param p2, "providerSettings"    # Lcom/ironsource/mediationsdk/model/ProviderSettings;

    .prologue
    const/4 v4, 0x0

    .line 127
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getSubProviderId()Ljava/lang/String;

    move-result-object v1

    .line 131
    .local v1, "subProviderId":Ljava/lang/String;
    invoke-virtual {p0, p1, v1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->setSubProviderId(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Ljava/lang/String;)V

    .line 133
    const/4 v0, 0x0

    .line 134
    .local v0, "adUnitSettings":Lorg/json/JSONObject;
    sget-object v2, Lcom/ironsource/mediationsdk/AbstractAdapter$7;->$SwitchMap$com$ironsource$mediationsdk$IronSource$AD_UNIT:[I

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 151
    :goto_1
    if-eqz v0, :cond_0

    .line 152
    const-string v2, "requestUrl"

    iget-object v3, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mProviderUrl:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mProviderUrl:Ljava/lang/String;

    .line 153
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getConfig()Lcom/ironsource/mediationsdk/config/AbstractAdapterConfig;

    move-result-object v2

    iget-object v3, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mProviderName:Ljava/lang/String;

    invoke-virtual {v2, p1, v0, v3}, Lcom/ironsource/mediationsdk/config/AbstractAdapterConfig;->updateAdUnitConfig(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_0

    .line 136
    :pswitch_0
    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getRewardedVideoSettings()Lorg/json/JSONObject;

    move-result-object v0

    .line 137
    iput v4, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mNumberOfRVPlayedThisIteration:I

    .line 138
    iput v4, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mNumberOfRVPlayedThisSession:I

    goto :goto_1

    .line 141
    :pswitch_1
    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getInterstitialSettings()Lorg/json/JSONObject;

    move-result-object v0

    .line 142
    iput v4, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mNumberOfISPlayedThisIteration:I

    .line 143
    iput v4, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mNumberOfISPlayedThisSession:I

    goto :goto_1

    .line 146
    :pswitch_2
    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getBannerSettings()Lorg/json/JSONObject;

    move-result-object v0

    .line 147
    iput v4, p0, Lcom/ironsource/mediationsdk/AbstractAdapter;->mNumberOfBNShownThisSession:I

    goto :goto_1

    .line 134
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected validateBannerConfigBeforeInit(Lcom/ironsource/mediationsdk/config/AbstractAdapterConfig;Lcom/ironsource/mediationsdk/sdk/BannerManagerListener;)Lcom/ironsource/mediationsdk/config/ConfigValidationResult;
    .locals 5
    .param p1, "config"    # Lcom/ironsource/mediationsdk/config/AbstractAdapterConfig;
    .param p2, "manager"    # Lcom/ironsource/mediationsdk/sdk/BannerManagerListener;

    .prologue
    .line 382
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/config/AbstractAdapterConfig;->isBannerConfigValid()Lcom/ironsource/mediationsdk/config/ConfigValidationResult;

    move-result-object v1

    .line 384
    .local v1, "validationResult":Lcom/ironsource/mediationsdk/config/ConfigValidationResult;
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->isValid()Z

    move-result v2

    if-nez v2, :cond_0

    .line 385
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->getIronSourceError()Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    .line 387
    .local v0, "sse":Lcom/ironsource/mediationsdk/logger/IronSourceError;
    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {p0, v2, v3, v4}, Lcom/ironsource/mediationsdk/AbstractAdapter;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 390
    if-eqz p2, :cond_0

    .line 391
    invoke-interface {p2, v0, p0}, Lcom/ironsource/mediationsdk/sdk/BannerManagerListener;->onBannerInitFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 395
    .end local v0    # "sse":Lcom/ironsource/mediationsdk/logger/IronSourceError;
    :cond_0
    return-object v1
.end method

.method protected validateConfigBeforeInitAndCallAvailabilityChangedForInvalid(Lcom/ironsource/mediationsdk/config/AbstractAdapterConfig;Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;)Lcom/ironsource/mediationsdk/config/ConfigValidationResult;
    .locals 5
    .param p1, "config"    # Lcom/ironsource/mediationsdk/config/AbstractAdapterConfig;
    .param p2, "manager"    # Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;

    .prologue
    .line 366
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/config/AbstractAdapterConfig;->isRVConfigValid()Lcom/ironsource/mediationsdk/config/ConfigValidationResult;

    move-result-object v1

    .line 368
    .local v1, "validationResult":Lcom/ironsource/mediationsdk/config/ConfigValidationResult;
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->isValid()Z

    move-result v2

    if-nez v2, :cond_0

    .line 369
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->getIronSourceError()Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    .line 371
    .local v0, "sse":Lcom/ironsource/mediationsdk/logger/IronSourceError;
    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {p0, v2, v3, v4}, Lcom/ironsource/mediationsdk/AbstractAdapter;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 373
    if-eqz p2, :cond_0

    .line 374
    const/4 v2, 0x0

    invoke-interface {p2, v2, p0}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;->onRewardedVideoAvailabilityChanged(ZLcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 378
    .end local v0    # "sse":Lcom/ironsource/mediationsdk/logger/IronSourceError;
    :cond_0
    return-object v1
.end method

.method protected validateConfigBeforeInitAndCallInitFailForInvalid(Lcom/ironsource/mediationsdk/config/AbstractAdapterConfig;Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;)Lcom/ironsource/mediationsdk/config/ConfigValidationResult;
    .locals 5
    .param p1, "config"    # Lcom/ironsource/mediationsdk/config/AbstractAdapterConfig;
    .param p2, "manager"    # Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;

    .prologue
    .line 352
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/config/AbstractAdapterConfig;->isISConfigValid()Lcom/ironsource/mediationsdk/config/ConfigValidationResult;

    move-result-object v1

    .line 354
    .local v1, "validationResult":Lcom/ironsource/mediationsdk/config/ConfigValidationResult;
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->isValid()Z

    move-result v2

    if-nez v2, :cond_0

    .line 355
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->getIronSourceError()Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    .line 356
    .local v0, "sse":Lcom/ironsource/mediationsdk/logger/IronSourceError;
    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {p0, v2, v3, v4}, Lcom/ironsource/mediationsdk/AbstractAdapter;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 358
    if-eqz p2, :cond_0

    .line 359
    invoke-interface {p2, v0, p0}, Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;->onInterstitialInitFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 362
    .end local v0    # "sse":Lcom/ironsource/mediationsdk/logger/IronSourceError;
    :cond_0
    return-object v1
.end method
