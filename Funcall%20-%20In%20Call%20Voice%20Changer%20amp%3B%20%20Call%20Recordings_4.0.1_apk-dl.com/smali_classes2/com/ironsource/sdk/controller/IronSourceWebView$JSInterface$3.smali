.class Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$3;
.super Ljava/lang/Object;
.source "IronSourceWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->adCredited(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

.field final synthetic val$appKey:Ljava/lang/String;

.field final synthetic val$credits:I

.field final synthetic val$demandSourceName:Ljava/lang/String;

.field final synthetic val$mMd5Signature:Z

.field final synthetic val$mTotalCreditsFlag:Z

.field final synthetic val$mlatestCompeltionsTime:Ljava/lang/String;

.field final synthetic val$product:Ljava/lang/String;

.field final synthetic val$totalCredits:I

.field final synthetic val$userId:Ljava/lang/String;

.field final synthetic val$value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;Ljava/lang/String;ILjava/lang/String;ZIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

    .prologue
    .line 1245
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$3;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

    iput-object p2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$3;->val$product:Ljava/lang/String;

    iput p3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$3;->val$credits:I

    iput-object p4, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$3;->val$demandSourceName:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$3;->val$mMd5Signature:Z

    iput p6, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$3;->val$totalCredits:I

    iput-boolean p7, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$3;->val$mTotalCreditsFlag:Z

    iput-object p8, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$3;->val$mlatestCompeltionsTime:Ljava/lang/String;

    iput-object p9, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$3;->val$appKey:Ljava/lang/String;

    iput-object p10, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$3;->val$userId:Ljava/lang/String;

    iput-object p11, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$3;->val$value:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1249
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$3;->val$product:Ljava/lang/String;

    sget-object v2, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v2}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1251
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$3;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

    iget-object v1, v1, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    # getter for: Lcom/ironsource/sdk/controller/IronSourceWebView;->mOnRewardedVideoListener:Lcom/ironsource/sdk/listeners/DSRewardedVideoListener;
    invoke-static {v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$2000(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/listeners/DSRewardedVideoListener;

    move-result-object v1

    iget v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$3;->val$credits:I

    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$3;->val$demandSourceName:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/ironsource/sdk/listeners/DSRewardedVideoListener;->onRVAdCredited(ILjava/lang/String;)V

    .line 1272
    :cond_0
    :goto_0
    return-void

    .line 1253
    :cond_1
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$3;->val$product:Ljava/lang/String;

    sget-object v2, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v2}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1255
    iget-boolean v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$3;->val$mMd5Signature:Z

    if-eqz v1, :cond_0

    .line 1257
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$3;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

    iget-object v1, v1, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    # getter for: Lcom/ironsource/sdk/controller/IronSourceWebView;->mOnOfferWallListener:Lcom/ironsource/sdk/listeners/OnOfferWallListener;
    invoke-static {v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3000(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/listeners/OnOfferWallListener;

    move-result-object v1

    iget v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$3;->val$credits:I

    iget v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$3;->val$totalCredits:I

    iget-boolean v4, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$3;->val$mTotalCreditsFlag:Z

    invoke-interface {v1, v2, v3, v4}, Lcom/ironsource/sdk/listeners/OnOfferWallListener;->onOWAdCredited(IIZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1259
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$3;->val$mlatestCompeltionsTime:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1261
    invoke-static {}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->getSupersonicPrefHelper()Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$3;->val$mlatestCompeltionsTime:Ljava/lang/String;

    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$3;->val$appKey:Ljava/lang/String;

    iget-object v4, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$3;->val$userId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->setLatestCompeltionsTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 1263
    .local v0, "result":Z
    if-eqz v0, :cond_2

    .line 1264
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$3;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

    iget-object v1, v1, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$3;->val$value:Ljava/lang/String;

    const/4 v3, 0x1

    # invokes: Lcom/ironsource/sdk/controller/IronSourceWebView;->responseBack(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3, v5, v5}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1266
    :cond_2
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$3;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

    iget-object v1, v1, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$3;->val$value:Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "Time Stamp could not be stored"

    # invokes: Lcom/ironsource/sdk/controller/IronSourceWebView;->responseBack(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3, v4, v5}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
