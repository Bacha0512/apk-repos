.class Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$17;
.super Ljava/lang/Object;
.source "IronSourceWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->onShowInterstitialFail(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

    .prologue
    .line 1716
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$17;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

    iput-object p2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$17;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1718
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$17;->val$message:Ljava/lang/String;

    .line 1719
    .local v0, "toSend":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1720
    const-string v0, "We\'re sorry, some error occurred. we will investigate it"

    .line 1722
    :cond_0
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$17;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

    iget-object v1, v1, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    # getter for: Lcom/ironsource/sdk/controller/IronSourceWebView;->mOnInitInterstitialListener:Lcom/ironsource/sdk/listeners/OnInterstitialListener;
    invoke-static {v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$2500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/listeners/OnInterstitialListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/ironsource/sdk/listeners/OnInterstitialListener;->onInterstitialShowFailed(Ljava/lang/String;)V

    .line 1723
    return-void
.end method
