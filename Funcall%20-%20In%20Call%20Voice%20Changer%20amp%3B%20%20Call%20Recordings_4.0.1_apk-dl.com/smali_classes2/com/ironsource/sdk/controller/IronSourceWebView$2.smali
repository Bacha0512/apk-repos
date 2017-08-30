.class Lcom/ironsource/sdk/controller/IronSourceWebView$2;
.super Landroid/os/CountDownTimer;
.source "IronSourceWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/IronSourceWebView;->load(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

.field final synthetic val$loadAttemp:I


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/IronSourceWebView;JJI)V
    .locals 0
    .param p1, "this$0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;
    .param p2, "x0"    # J
    .param p4, "x1"    # J

    .prologue
    .line 2339
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$2;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    iput p6, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$2;->val$loadAttemp:I

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 2348
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$2;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    # getter for: Lcom/ironsource/sdk/controller/IronSourceWebView;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Loading Controller Timer Finish"

    invoke-static {v2, v3}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2350
    iget v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$2;->val$loadAttemp:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_5

    .line 2352
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$2;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    # getter for: Lcom/ironsource/sdk/controller/IronSourceWebView;->mGlobalControllerTimer:Landroid/os/CountDownTimer;
    invoke-static {v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$1600(Lcom/ironsource/sdk/controller/IronSourceWebView;)Landroid/os/CountDownTimer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/CountDownTimer;->cancel()V

    .line 2356
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$2;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getCurrentActivityContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-static {v2}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getInstance(Landroid/app/Activity;)Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getDemandSources()Ljava/util/Collection;

    move-result-object v1

    .line 2357
    .local v1, "demandSources":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/ironsource/sdk/data/DemandSource;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/sdk/data/DemandSource;

    .line 2358
    .local v0, "demandSource":Lcom/ironsource/sdk/data/DemandSource;
    invoke-virtual {v0}, Lcom/ironsource/sdk/data/DemandSource;->getDemandSourceInitState()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 2359
    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$2;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    sget-object v4, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v0}, Lcom/ironsource/sdk/data/DemandSource;->getDemandSourceName()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/ironsource/sdk/controller/IronSourceWebView;->sendProductErrorMessage(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)V
    invoke-static {v3, v4, v5}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3500(Lcom/ironsource/sdk/controller/IronSourceWebView;Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)V

    goto :goto_0

    .line 2363
    .end local v0    # "demandSource":Lcom/ironsource/sdk/data/DemandSource;
    :cond_1
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$2;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    # getter for: Lcom/ironsource/sdk/controller/IronSourceWebView;->mISmiss:Z
    invoke-static {v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$2100(Lcom/ironsource/sdk/controller/IronSourceWebView;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2364
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$2;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    sget-object v3, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    # invokes: Lcom/ironsource/sdk/controller/IronSourceWebView;->sendProductErrorMessage(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)V
    invoke-static {v2, v3, v6}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3500(Lcom/ironsource/sdk/controller/IronSourceWebView;Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)V

    .line 2367
    :cond_2
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$2;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    # getter for: Lcom/ironsource/sdk/controller/IronSourceWebView;->mOWmiss:Z
    invoke-static {v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$2600(Lcom/ironsource/sdk/controller/IronSourceWebView;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2368
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$2;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    sget-object v3, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    # invokes: Lcom/ironsource/sdk/controller/IronSourceWebView;->sendProductErrorMessage(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)V
    invoke-static {v2, v3, v6}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3500(Lcom/ironsource/sdk/controller/IronSourceWebView;Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)V

    .line 2371
    :cond_3
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$2;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    # getter for: Lcom/ironsource/sdk/controller/IronSourceWebView;->mOWCreditsMiss:Z
    invoke-static {v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3100(Lcom/ironsource/sdk/controller/IronSourceWebView;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2372
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$2;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    sget-object v3, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWallCredits:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    # invokes: Lcom/ironsource/sdk/controller/IronSourceWebView;->sendProductErrorMessage(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)V
    invoke-static {v2, v3, v6}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3500(Lcom/ironsource/sdk/controller/IronSourceWebView;Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)V

    .line 2380
    .end local v1    # "demandSources":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/ironsource/sdk/data/DemandSource;>;"
    :cond_4
    :goto_1
    return-void

    .line 2378
    :cond_5
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$2;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->load(I)V

    goto :goto_1
.end method

.method public onTick(J)V
    .locals 3
    .param p1, "millisUntilFinished"    # J

    .prologue
    .line 2343
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$2;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    # getter for: Lcom/ironsource/sdk/controller/IronSourceWebView;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading Controller Timer Tick "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2344
    return-void
.end method
