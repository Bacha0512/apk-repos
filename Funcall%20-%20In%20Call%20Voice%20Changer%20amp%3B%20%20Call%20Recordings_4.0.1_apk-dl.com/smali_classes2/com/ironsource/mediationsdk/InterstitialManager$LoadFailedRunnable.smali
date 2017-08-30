.class Lcom/ironsource/mediationsdk/InterstitialManager$LoadFailedRunnable;
.super Ljava/lang/Object;
.source "InterstitialManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/mediationsdk/InterstitialManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadFailedRunnable"
.end annotation


# instance fields
.field error:Lcom/ironsource/mediationsdk/logger/IronSourceError;

.field final synthetic this$0:Lcom/ironsource/mediationsdk/InterstitialManager;


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/InterstitialManager;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 0
    .param p2, "error"    # Lcom/ironsource/mediationsdk/logger/IronSourceError;

    .prologue
    .line 275
    iput-object p1, p0, Lcom/ironsource/mediationsdk/InterstitialManager$LoadFailedRunnable;->this$0:Lcom/ironsource/mediationsdk/InterstitialManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 276
    iput-object p2, p0, Lcom/ironsource/mediationsdk/InterstitialManager$LoadFailedRunnable;->error:Lcom/ironsource/mediationsdk/logger/IronSourceError;

    .line 277
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 281
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialManager$LoadFailedRunnable;->this$0:Lcom/ironsource/mediationsdk/InterstitialManager;

    iget-object v0, v0, Lcom/ironsource/mediationsdk/InterstitialManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Load Interstitial failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ironsource/mediationsdk/InterstitialManager$LoadFailedRunnable;->error:Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 282
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialManager$LoadFailedRunnable;->this$0:Lcom/ironsource/mediationsdk/InterstitialManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    # setter for: Lcom/ironsource/mediationsdk/InterstitialManager;->mLastLoadFailTimestamp:J
    invoke-static {v0, v2, v3}, Lcom/ironsource/mediationsdk/InterstitialManager;->access$002(Lcom/ironsource/mediationsdk/InterstitialManager;J)J

    .line 283
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialManager$LoadFailedRunnable;->this$0:Lcom/ironsource/mediationsdk/InterstitialManager;

    # getter for: Lcom/ironsource/mediationsdk/InterstitialManager;->mInterstitialListenersWrapper:Lcom/ironsource/mediationsdk/sdk/InterstitialListener;
    invoke-static {v0}, Lcom/ironsource/mediationsdk/InterstitialManager;->access$100(Lcom/ironsource/mediationsdk/InterstitialManager;)Lcom/ironsource/mediationsdk/sdk/InterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/InterstitialManager$LoadFailedRunnable;->error:Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-interface {v0, v1}, Lcom/ironsource/mediationsdk/sdk/InterstitialListener;->onInterstitialAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 284
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialManager$LoadFailedRunnable;->this$0:Lcom/ironsource/mediationsdk/InterstitialManager;

    # invokes: Lcom/ironsource/mediationsdk/InterstitialManager;->resetLoadRound(Z)V
    invoke-static {v0, v4}, Lcom/ironsource/mediationsdk/InterstitialManager;->access$200(Lcom/ironsource/mediationsdk/InterstitialManager;Z)V

    .line 285
    return-void
.end method
