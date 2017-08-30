.class Lcom/ironsource/mediationsdk/AbstractAdapter$2;
.super Ljava/util/TimerTask;
.source "AbstractAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/mediationsdk/AbstractAdapter;->startISLoadTimer(Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/mediationsdk/AbstractAdapter;

.field final synthetic val$listener:Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/AbstractAdapter;Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ironsource/mediationsdk/AbstractAdapter;

    .prologue
    .line 443
    iput-object p1, p0, Lcom/ironsource/mediationsdk/AbstractAdapter$2;->this$0:Lcom/ironsource/mediationsdk/AbstractAdapter;

    iput-object p2, p0, Lcom/ironsource/mediationsdk/AbstractAdapter$2;->val$listener:Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 446
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Interstitial Load Fail, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ironsource/mediationsdk/AbstractAdapter$2;->this$0:Lcom/ironsource/mediationsdk/AbstractAdapter;

    .line 447
    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Timeout"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 448
    .local v1, "errorString":Ljava/lang/String;
    invoke-static {v1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildLoadFailedError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    .line 449
    .local v0, "error":Lcom/ironsource/mediationsdk/logger/IronSourceError;
    iget-object v2, p0, Lcom/ironsource/mediationsdk/AbstractAdapter$2;->val$listener:Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;

    iget-object v3, p0, Lcom/ironsource/mediationsdk/AbstractAdapter$2;->this$0:Lcom/ironsource/mediationsdk/AbstractAdapter;

    invoke-interface {v2, v0, v3}, Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;->onInterstitialAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 450
    return-void
.end method
