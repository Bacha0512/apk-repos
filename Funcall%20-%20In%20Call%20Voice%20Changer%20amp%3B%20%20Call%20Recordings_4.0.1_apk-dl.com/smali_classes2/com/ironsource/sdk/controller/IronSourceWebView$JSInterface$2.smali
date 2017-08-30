.class Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$2;
.super Ljava/lang/Object;
.source "IronSourceWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->adUnitsReady(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

.field final synthetic val$adUnitsReady:Lcom/ironsource/sdk/data/AdUnitsReady;

.field final synthetic val$demandSourceName:Ljava/lang/String;

.field final synthetic val$product:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;Lcom/ironsource/sdk/data/AdUnitsReady;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

    .prologue
    .line 961
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$2;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

    iput-object p2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$2;->val$adUnitsReady:Lcom/ironsource/sdk/data/AdUnitsReady;

    iput-object p3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$2;->val$product:Ljava/lang/String;

    iput-object p4, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$2;->val$demandSourceName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 966
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$2;->val$adUnitsReady:Lcom/ironsource/sdk/data/AdUnitsReady;

    invoke-virtual {v2}, Lcom/ironsource/sdk/data/AdUnitsReady;->getNumOfAdUnits()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 968
    .local v0, "adUnits":I
    if-lez v0, :cond_1

    .line 969
    const/4 v1, 0x1

    .line 975
    .local v1, "fireSuccess":Z
    :goto_0
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$2;->val$product:Ljava/lang/String;

    sget-object v3, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v3}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 977
    if-eqz v1, :cond_2

    .line 979
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$2;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

    iget-object v2, v2, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    # getter for: Lcom/ironsource/sdk/controller/IronSourceWebView;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "onRVInitSuccess()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$2;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

    iget-object v2, v2, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    # getter for: Lcom/ironsource/sdk/controller/IronSourceWebView;->mOnRewardedVideoListener:Lcom/ironsource/sdk/listeners/DSRewardedVideoListener;
    invoke-static {v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$2000(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/listeners/DSRewardedVideoListener;

    move-result-object v2

    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$2;->val$adUnitsReady:Lcom/ironsource/sdk/data/AdUnitsReady;

    iget-object v4, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$2;->val$demandSourceName:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/ironsource/sdk/listeners/DSRewardedVideoListener;->onRVInitSuccess(Lcom/ironsource/sdk/data/AdUnitsReady;Ljava/lang/String;)V

    .line 988
    :cond_0
    :goto_1
    return-void

    .line 971
    .end local v1    # "fireSuccess":Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "fireSuccess":Z
    goto :goto_0

    .line 983
    :cond_2
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$2;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

    iget-object v2, v2, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    # getter for: Lcom/ironsource/sdk/controller/IronSourceWebView;->mOnRewardedVideoListener:Lcom/ironsource/sdk/listeners/DSRewardedVideoListener;
    invoke-static {v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$2000(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/listeners/DSRewardedVideoListener;

    move-result-object v2

    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$2;->val$demandSourceName:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/ironsource/sdk/listeners/DSRewardedVideoListener;->onRVNoMoreOffers(Ljava/lang/String;)V

    goto :goto_1
.end method
