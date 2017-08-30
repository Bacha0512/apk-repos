.class Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$8;
.super Ljava/lang/Object;
.source "IronSourceWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->onInitInterstitialSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;)V
    .locals 0
    .param p1, "this$1"    # Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

    .prologue
    .line 1493
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$8;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1496
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$8;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

    iget-object v0, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    # getter for: Lcom/ironsource/sdk/controller/IronSourceWebView;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onInterstitialInitSuccess()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1497
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$8;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

    iget-object v0, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    # getter for: Lcom/ironsource/sdk/controller/IronSourceWebView;->mOnInitInterstitialListener:Lcom/ironsource/sdk/listeners/OnInterstitialListener;
    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$2500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/listeners/OnInterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/sdk/listeners/OnInterstitialListener;->onInterstitialInitSuccess()V

    .line 1498
    return-void
.end method
