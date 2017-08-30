.class Lcom/ironsource/sdk/controller/IronSourceWebView$4;
.super Ljava/lang/Object;
.source "IronSourceWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/IronSourceWebView;->triggerOnControllerInitProductFail(Ljava/lang/String;Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

.field final synthetic val$demandSourceName:Ljava/lang/String;

.field final synthetic val$message:Ljava/lang/String;

.field final synthetic val$type:Lcom/ironsource/sdk/data/SSAEnums$ProductType;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/IronSourceWebView;Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;

    .prologue
    .line 2661
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$4;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    iput-object p2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$4;->val$type:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    iput-object p3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$4;->val$message:Ljava/lang/String;

    iput-object p4, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$4;->val$demandSourceName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2663
    sget-object v0, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$4;->val$type:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    if-ne v0, v1, :cond_1

    .line 2665
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$4;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    # getter for: Lcom/ironsource/sdk/controller/IronSourceWebView;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRVInitFail(message:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$4;->val$message:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2666
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$4;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    # getter for: Lcom/ironsource/sdk/controller/IronSourceWebView;->mOnRewardedVideoListener:Lcom/ironsource/sdk/listeners/DSRewardedVideoListener;
    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$2000(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/listeners/DSRewardedVideoListener;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$4;->val$message:Ljava/lang/String;

    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$4;->val$demandSourceName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/ironsource/sdk/listeners/DSRewardedVideoListener;->onRVInitFail(Ljava/lang/String;Ljava/lang/String;)V

    .line 2684
    :cond_0
    :goto_0
    return-void

    .line 2668
    :cond_1
    sget-object v0, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$4;->val$type:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    if-ne v0, v1, :cond_2

    .line 2670
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$4;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    # getter for: Lcom/ironsource/sdk/controller/IronSourceWebView;->mSavedState:Lcom/ironsource/sdk/data/AdUnitsState;
    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3400(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/data/AdUnitsState;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/ironsource/sdk/data/AdUnitsState;->setInterstitialInitSuccess(Z)V

    .line 2673
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$4;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    # getter for: Lcom/ironsource/sdk/controller/IronSourceWebView;->mSavedState:Lcom/ironsource/sdk/data/AdUnitsState;
    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3400(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/data/AdUnitsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/sdk/data/AdUnitsState;->reportInitInterstitial()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2674
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$4;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    # getter for: Lcom/ironsource/sdk/controller/IronSourceWebView;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInterstitialInitFail(message:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$4;->val$message:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2675
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$4;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    # getter for: Lcom/ironsource/sdk/controller/IronSourceWebView;->mOnInitInterstitialListener:Lcom/ironsource/sdk/listeners/OnInterstitialListener;
    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$2500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/listeners/OnInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$4;->val$message:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/ironsource/sdk/listeners/OnInterstitialListener;->onInterstitialInitFailed(Ljava/lang/String;)V

    .line 2676
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$4;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    # getter for: Lcom/ironsource/sdk/controller/IronSourceWebView;->mSavedState:Lcom/ironsource/sdk/data/AdUnitsState;
    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3400(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/data/AdUnitsState;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/ironsource/sdk/data/AdUnitsState;->setReportInitInterstitial(Z)V

    goto :goto_0

    .line 2679
    :cond_2
    sget-object v0, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$4;->val$type:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    if-ne v0, v1, :cond_3

    .line 2680
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$4;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    # getter for: Lcom/ironsource/sdk/controller/IronSourceWebView;->mOnOfferWallListener:Lcom/ironsource/sdk/listeners/OnOfferWallListener;
    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3000(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/listeners/OnOfferWallListener;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$4;->val$message:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/ironsource/sdk/listeners/OnOfferWallListener;->onOfferwallInitFail(Ljava/lang/String;)V

    goto :goto_0

    .line 2681
    :cond_3
    sget-object v0, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWallCredits:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$4;->val$type:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    if-ne v0, v1, :cond_0

    .line 2682
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$4;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    # getter for: Lcom/ironsource/sdk/controller/IronSourceWebView;->mOnOfferWallListener:Lcom/ironsource/sdk/listeners/OnOfferWallListener;
    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3000(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/listeners/OnOfferWallListener;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$4;->val$message:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/ironsource/sdk/listeners/OnOfferWallListener;->onGetOWCreditsFailed(Ljava/lang/String;)V

    goto :goto_0
.end method
