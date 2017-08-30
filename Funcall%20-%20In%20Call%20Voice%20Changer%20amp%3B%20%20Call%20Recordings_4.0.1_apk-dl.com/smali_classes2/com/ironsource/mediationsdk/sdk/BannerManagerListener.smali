.class public interface abstract Lcom/ironsource/mediationsdk/sdk/BannerManagerListener;
.super Ljava/lang/Object;
.source "BannerManagerListener.java"

# interfaces
.implements Lcom/ironsource/mediationsdk/BannerAdaptersListener;


# virtual methods
.method public abstract onBannerImpression(Lcom/ironsource/mediationsdk/AbstractAdapter;Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)V
.end method

.method public abstract onBannerInitFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/AbstractAdapter;)V
.end method

.method public abstract onBannerInitSuccess(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
.end method
