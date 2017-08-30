.class public interface abstract Lcom/ironsource/mediationsdk/sdk/IronSourceInterface;
.super Ljava/lang/Object;
.source "IronSourceInterface.java"

# interfaces
.implements Lcom/ironsource/mediationsdk/sdk/RewardedVideoApi;
.implements Lcom/ironsource/mediationsdk/sdk/InterstitialApi;
.implements Lcom/ironsource/mediationsdk/sdk/OfferwallApi;
.implements Lcom/ironsource/mediationsdk/logger/LoggingApi;
.implements Lcom/ironsource/mediationsdk/sdk/RewardedInterstitialApi;
.implements Lcom/ironsource/mediationsdk/sdk/BannerApi;


# virtual methods
.method public abstract getAdvertiserId(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract getInterstitialPlacementInfo(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/InterstitialPlacement;
.end method

.method public abstract getRewardedVideoPlacementInfo(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/Placement;
.end method

.method public abstract removeInterstitialListener()V
.end method

.method public abstract removeOfferwallListener()V
.end method

.method public abstract removeRewardedVideoListener()V
.end method

.method public abstract setAdaptersDebug(Z)V
.end method

.method public abstract setDynamicUserId(Ljava/lang/String;)Z
.end method

.method public abstract setMediationType(Ljava/lang/String;)V
.end method

.method public abstract shouldTrackNetworkState(Landroid/content/Context;Z)V
.end method
