.class Lcom/ironsource/mediationsdk/BannerManager$LoadFailedRunnable;
.super Ljava/lang/Object;
.source "BannerManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/mediationsdk/BannerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadFailedRunnable"
.end annotation


# instance fields
.field error:Lcom/ironsource/mediationsdk/logger/IronSourceError;

.field final synthetic this$0:Lcom/ironsource/mediationsdk/BannerManager;


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/BannerManager;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 0
    .param p2, "error"    # Lcom/ironsource/mediationsdk/logger/IronSourceError;

    .prologue
    .line 363
    iput-object p1, p0, Lcom/ironsource/mediationsdk/BannerManager$LoadFailedRunnable;->this$0:Lcom/ironsource/mediationsdk/BannerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 364
    iput-object p2, p0, Lcom/ironsource/mediationsdk/BannerManager$LoadFailedRunnable;->error:Lcom/ironsource/mediationsdk/logger/IronSourceError;

    .line 365
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 369
    iget-object v4, p0, Lcom/ironsource/mediationsdk/BannerManager$LoadFailedRunnable;->this$0:Lcom/ironsource/mediationsdk/BannerManager;

    iget-object v4, v4, Lcom/ironsource/mediationsdk/BannerManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v5, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Load Banner failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/ironsource/mediationsdk/BannerManager$LoadFailedRunnable;->error:Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-virtual {v7}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v8}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 370
    iget-object v4, p0, Lcom/ironsource/mediationsdk/BannerManager$LoadFailedRunnable;->this$0:Lcom/ironsource/mediationsdk/BannerManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    # setter for: Lcom/ironsource/mediationsdk/BannerManager;->mLastLoadFailTimestamp:J
    invoke-static {v4, v6, v7}, Lcom/ironsource/mediationsdk/BannerManager;->access$002(Lcom/ironsource/mediationsdk/BannerManager;J)J

    .line 371
    iget-object v4, p0, Lcom/ironsource/mediationsdk/BannerManager$LoadFailedRunnable;->this$0:Lcom/ironsource/mediationsdk/BannerManager;

    # getter for: Lcom/ironsource/mediationsdk/BannerManager;->mPendingToLoadBannerLayout:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;
    invoke-static {v4}, Lcom/ironsource/mediationsdk/BannerManager;->access$100(Lcom/ironsource/mediationsdk/BannerManager;)Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/ironsource/mediationsdk/BannerManager$LoadFailedRunnable;->this$0:Lcom/ironsource/mediationsdk/BannerManager;

    # getter for: Lcom/ironsource/mediationsdk/BannerManager;->mPendingToLoadBannerLayout:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;
    invoke-static {v4}, Lcom/ironsource/mediationsdk/BannerManager;->access$100(Lcom/ironsource/mediationsdk/BannerManager;)Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->getBannerListener()Lcom/ironsource/mediationsdk/sdk/BannerListener;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 372
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v4

    sget-object v5, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onBannerAdLoadFailed(), error: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/ironsource/mediationsdk/BannerManager$LoadFailedRunnable;->error:Lcom/ironsource/mediationsdk/logger/IronSourceError;

    .line 373
    invoke-virtual {v7}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 372
    invoke-virtual {v4, v5, v6, v8}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 376
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData()Lorg/json/JSONObject;

    move-result-object v1

    .line 378
    .local v1, "data":Lorg/json/JSONObject;
    :try_start_0
    iget-object v4, p0, Lcom/ironsource/mediationsdk/BannerManager$LoadFailedRunnable;->this$0:Lcom/ironsource/mediationsdk/BannerManager;

    # getter for: Lcom/ironsource/mediationsdk/BannerManager;->mPendingToLoadBannerLayout:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;
    invoke-static {v4}, Lcom/ironsource/mediationsdk/BannerManager;->access$100(Lcom/ironsource/mediationsdk/BannerManager;)Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->getSize()Lcom/ironsource/mediationsdk/EBannerSize;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/EBannerSize;->getValue()I

    move-result v0

    .line 379
    .local v0, "bannerSizeData":I
    const-string v4, "status"

    const-string v5, "false"

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 380
    const-string v4, "errorCode"

    iget-object v5, p0, Lcom/ironsource/mediationsdk/BannerManager$LoadFailedRunnable;->error:Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 381
    const-string v4, "bannerAdSize"

    invoke-virtual {v1, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 386
    .end local v0    # "bannerSizeData":I
    :goto_0
    new-instance v3, Lcom/ironsource/eventsmodule/EventData;

    const/16 v4, 0x197

    invoke-direct {v3, v4, v1}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 387
    .local v3, "event":Lcom/ironsource/eventsmodule/EventData;
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    .line 389
    iget-object v4, p0, Lcom/ironsource/mediationsdk/BannerManager$LoadFailedRunnable;->this$0:Lcom/ironsource/mediationsdk/BannerManager;

    # getter for: Lcom/ironsource/mediationsdk/BannerManager;->mPendingToLoadBannerLayout:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;
    invoke-static {v4}, Lcom/ironsource/mediationsdk/BannerManager;->access$100(Lcom/ironsource/mediationsdk/BannerManager;)Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->getBannerListener()Lcom/ironsource/mediationsdk/sdk/BannerListener;

    move-result-object v4

    iget-object v5, p0, Lcom/ironsource/mediationsdk/BannerManager$LoadFailedRunnable;->error:Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-interface {v4, v5}, Lcom/ironsource/mediationsdk/sdk/BannerListener;->onBannerAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 391
    .end local v1    # "data":Lorg/json/JSONObject;
    .end local v3    # "event":Lcom/ironsource/eventsmodule/EventData;
    :cond_0
    iget-object v4, p0, Lcom/ironsource/mediationsdk/BannerManager$LoadFailedRunnable;->this$0:Lcom/ironsource/mediationsdk/BannerManager;

    # invokes: Lcom/ironsource/mediationsdk/BannerManager;->resetLoadRound(Z)V
    invoke-static {v4, v8}, Lcom/ironsource/mediationsdk/BannerManager;->access$200(Lcom/ironsource/mediationsdk/BannerManager;Z)V

    .line 392
    return-void

    .line 382
    .restart local v1    # "data":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 383
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
