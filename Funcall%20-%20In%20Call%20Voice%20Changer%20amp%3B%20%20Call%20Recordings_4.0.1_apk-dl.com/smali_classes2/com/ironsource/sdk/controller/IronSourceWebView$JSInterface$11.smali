.class Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$11;
.super Ljava/lang/Object;
.source "IronSourceWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->adClicked(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

.field final synthetic val$demandSourceName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

    .prologue
    .line 1569
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$11;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

    iput-object p2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$11;->val$demandSourceName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1571
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$11;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

    iget-object v0, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    # getter for: Lcom/ironsource/sdk/controller/IronSourceWebView;->mOnRewardedVideoListener:Lcom/ironsource/sdk/listeners/DSRewardedVideoListener;
    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$2000(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/listeners/DSRewardedVideoListener;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$11;->val$demandSourceName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/ironsource/sdk/listeners/DSRewardedVideoListener;->onRVAdClicked(Ljava/lang/String;)V

    .line 1572
    return-void
.end method
