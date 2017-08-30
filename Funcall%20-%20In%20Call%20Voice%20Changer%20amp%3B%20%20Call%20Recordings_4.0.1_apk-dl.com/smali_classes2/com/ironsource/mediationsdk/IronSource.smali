.class public abstract Lcom/ironsource/mediationsdk/IronSource;
.super Ljava/lang/Object;
.source "IronSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createBanner(Landroid/app/Activity;Lcom/ironsource/mediationsdk/EBannerSize;)Lcom/ironsource/mediationsdk/IronSourceBannerLayout;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "size"    # Lcom/ironsource/mediationsdk/EBannerSize;

    .prologue
    .line 373
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/ironsource/mediationsdk/IronSourceObject;->createBanner(Landroid/app/Activity;Lcom/ironsource/mediationsdk/EBannerSize;)Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    move-result-object v0

    return-object v0
.end method

.method public static destroyBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)V
    .locals 1
    .param p0, "banner"    # Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    .prologue
    .line 398
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->destroyBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)V

    .line 399
    return-void
.end method

.method public static getAdvertiserId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 174
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getAdvertiserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInterstitialPlacementInfo(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/InterstitialPlacement;
    .locals 1
    .param p0, "placementName"    # Ljava/lang/String;

    .prologue
    .line 156
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInterstitialPlacementInfo(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/InterstitialPlacement;

    move-result-object v0

    return-object v0
.end method

.method public static getOfferwallCredits()V
    .locals 1

    .prologue
    .line 347
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getOfferwallCredits()V

    .line 348
    return-void
.end method

.method public static getRewardedVideoPlacementInfo(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/Placement;
    .locals 1
    .param p0, "placementName"    # Ljava/lang/String;

    .prologue
    .line 165
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getRewardedVideoPlacementInfo(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/Placement;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "appKey"    # Ljava/lang/String;

    .prologue
    .line 59
    const/4 v0, 0x0

    check-cast v0, [Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-static {p0, p1, v0}, Lcom/ironsource/mediationsdk/IronSource;->init(Landroid/app/Activity;Ljava/lang/String;[Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V

    .line 60
    return-void
.end method

.method public static varargs init(Landroid/app/Activity;Ljava/lang/String;[Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "appKey"    # Ljava/lang/String;
    .param p2, "adUnits"    # [Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    .prologue
    .line 69
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/ironsource/mediationsdk/IronSourceObject;->init(Landroid/app/Activity;Ljava/lang/String;[Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V

    .line 70
    return-void
.end method

.method public static isBannerPlacementCapped(Ljava/lang/String;)Z
    .locals 1
    .param p0, "placementName"    # Ljava/lang/String;

    .prologue
    .line 409
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->isBannerPlacementCapped(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isInterstitialPlacementCapped(Ljava/lang/String;)Z
    .locals 1
    .param p0, "placementName"    # Ljava/lang/String;

    .prologue
    .line 312
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->isInterstitialPlacementCapped(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isInterstitialReady()Z
    .locals 1

    .prologue
    .line 285
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSourceObject;->isInterstitialReady()Z

    move-result v0

    return v0
.end method

.method public static isOfferwallAvailable()Z
    .locals 1

    .prologue
    .line 340
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSourceObject;->isOfferwallAvailable()Z

    move-result v0

    return v0
.end method

.method public static isRewardedVideoAvailable()Z
    .locals 1

    .prologue
    .line 227
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSourceObject;->isRewardedVideoAvailable()Z

    move-result v0

    return v0
.end method

.method public static isRewardedVideoPlacementCapped(Ljava/lang/String;)Z
    .locals 1
    .param p0, "placementName"    # Ljava/lang/String;

    .prologue
    .line 250
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->isRewardedVideoPlacementCapped(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static loadBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)V
    .locals 1
    .param p0, "banner"    # Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    .prologue
    .line 381
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->loadBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)V

    .line 382
    return-void
.end method

.method public static loadBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Ljava/lang/String;)V
    .locals 1
    .param p0, "banner"    # Lcom/ironsource/mediationsdk/IronSourceBannerLayout;
    .param p1, "placementName"    # Ljava/lang/String;

    .prologue
    .line 389
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/ironsource/mediationsdk/IronSourceObject;->loadBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Ljava/lang/String;)V

    .line 390
    return-void
.end method

.method public static loadInterstitial()V
    .locals 1

    .prologue
    .line 261
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSourceObject;->loadInterstitial()V

    .line 262
    return-void
.end method

.method public static onPause(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 85
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->onPause(Landroid/app/Activity;)V

    .line 86
    return-void
.end method

.method public static onResume(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 77
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->onResume(Landroid/app/Activity;)V

    .line 78
    return-void
.end method

.method public static removeInterstitialListener()V
    .locals 1

    .prologue
    .line 140
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSourceObject;->removeInterstitialListener()V

    .line 141
    return-void
.end method

.method public static removeOfferwallListener()V
    .locals 1

    .prologue
    .line 147
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSourceObject;->removeOfferwallListener()V

    .line 148
    return-void
.end method

.method public static removeRewardedVideoListener()V
    .locals 1

    .prologue
    .line 133
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSourceObject;->removeRewardedVideoListener()V

    .line 134
    return-void
.end method

.method public static setAdaptersDebug(Z)V
    .locals 1
    .param p0, "enabled"    # Z

    .prologue
    .line 200
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->setAdaptersDebug(Z)V

    .line 201
    return-void
.end method

.method public static declared-synchronized setAge(I)V
    .locals 2
    .param p0, "age"    # I

    .prologue
    .line 93
    const-class v1, Lcom/ironsource/mediationsdk/IronSource;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->setAge(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    monitor-exit v1

    return-void

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static setDynamicUserId(Ljava/lang/String;)Z
    .locals 1
    .param p0, "dynamicUserId"    # Ljava/lang/String;

    .prologue
    .line 122
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->setDynamicUserId(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static declared-synchronized setGender(Ljava/lang/String;)V
    .locals 2
    .param p0, "gender"    # Ljava/lang/String;

    .prologue
    .line 101
    const-class v1, Lcom/ironsource/mediationsdk/IronSource;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->setGender(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    monitor-exit v1

    return-void

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static setInterstitialListener(Lcom/ironsource/mediationsdk/sdk/InterstitialListener;)V
    .locals 1
    .param p0, "listener"    # Lcom/ironsource/mediationsdk/sdk/InterstitialListener;

    .prologue
    .line 297
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->setInterstitialListener(Lcom/ironsource/mediationsdk/sdk/InterstitialListener;)V

    .line 298
    return-void
.end method

.method public static setLogListener(Lcom/ironsource/mediationsdk/logger/LogListener;)V
    .locals 1
    .param p0, "listener"    # Lcom/ironsource/mediationsdk/logger/LogListener;

    .prologue
    .line 192
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->setLogListener(Lcom/ironsource/mediationsdk/logger/LogListener;)V

    .line 193
    return-void
.end method

.method public static setMediationSegment(Ljava/lang/String;)V
    .locals 1
    .param p0, "segment"    # Ljava/lang/String;

    .prologue
    .line 109
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->setMediationSegment(Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method public static setMediationType(Ljava/lang/String;)V
    .locals 1
    .param p0, "mediationType"    # Ljava/lang/String;

    .prologue
    .line 126
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->setMediationType(Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method public static setOfferwallListener(Lcom/ironsource/mediationsdk/sdk/OfferwallListener;)V
    .locals 1
    .param p0, "listener"    # Lcom/ironsource/mediationsdk/sdk/OfferwallListener;

    .prologue
    .line 359
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->setOfferwallListener(Lcom/ironsource/mediationsdk/sdk/OfferwallListener;)V

    .line 360
    return-void
.end method

.method public static setRewardedInterstitialListener(Lcom/ironsource/mediationsdk/sdk/RewardedInterstitialListener;)V
    .locals 1
    .param p0, "listener"    # Lcom/ironsource/mediationsdk/sdk/RewardedInterstitialListener;

    .prologue
    .line 301
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->setRewardedInterstitialListener(Lcom/ironsource/mediationsdk/sdk/RewardedInterstitialListener;)V

    .line 302
    return-void
.end method

.method public static setRewardedVideoListener(Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;)V
    .locals 1
    .param p0, "listener"    # Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;

    .prologue
    .line 239
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->setRewardedVideoListener(Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;)V

    .line 240
    return-void
.end method

.method public static setSegment(Lcom/ironsource/mediationsdk/IronSourceSegment;)V
    .locals 1
    .param p0, "segment"    # Lcom/ironsource/mediationsdk/IronSourceSegment;

    .prologue
    .line 113
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->setSegment(Lcom/ironsource/mediationsdk/IronSourceSegment;)V

    .line 114
    return-void
.end method

.method public static setSegmentListener(Lcom/ironsource/mediationsdk/sdk/SegmentListener;)V
    .locals 1
    .param p0, "listener"    # Lcom/ironsource/mediationsdk/sdk/SegmentListener;

    .prologue
    .line 413
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->setSegmentListener(Lcom/ironsource/mediationsdk/sdk/SegmentListener;)V

    .line 414
    return-void
.end method

.method public static setUserId(Ljava/lang/String;)V
    .locals 1
    .param p0, "userId"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->setIronSourceUserId(Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public static shouldTrackNetworkState(Landroid/content/Context;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "track"    # Z

    .prologue
    .line 184
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/ironsource/mediationsdk/IronSourceObject;->shouldTrackNetworkState(Landroid/content/Context;Z)V

    .line 185
    return-void
.end method

.method public static showInterstitial()V
    .locals 1

    .prologue
    .line 268
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSourceObject;->showInterstitial()V

    .line 269
    return-void
.end method

.method public static showInterstitial(Ljava/lang/String;)V
    .locals 1
    .param p0, "placementName"    # Ljava/lang/String;

    .prologue
    .line 276
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->showInterstitial(Ljava/lang/String;)V

    .line 277
    return-void
.end method

.method public static showOfferwall()V
    .locals 1

    .prologue
    .line 323
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSourceObject;->showOfferwall()V

    .line 324
    return-void
.end method

.method public static showOfferwall(Ljava/lang/String;)V
    .locals 1
    .param p0, "placementName"    # Ljava/lang/String;

    .prologue
    .line 331
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->showOfferwall(Ljava/lang/String;)V

    .line 332
    return-void
.end method

.method public static showRewardedVideo()V
    .locals 1

    .prologue
    .line 211
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSourceObject;->showRewardedVideo()V

    .line 212
    return-void
.end method

.method public static showRewardedVideo(Ljava/lang/String;)V
    .locals 1
    .param p0, "placementName"    # Ljava/lang/String;

    .prologue
    .line 219
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->showRewardedVideo(Ljava/lang/String;)V

    .line 220
    return-void
.end method
