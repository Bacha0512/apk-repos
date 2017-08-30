.class Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$18;
.super Ljava/lang/Object;
.source "IronSourceWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->onGenericFunctionSuccess(Ljava/lang/String;)V
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
    .line 1742
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$18;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1744
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$18;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

    iget-object v0, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    # getter for: Lcom/ironsource/sdk/controller/IronSourceWebView;->mOnGenericFunctionListener:Lcom/ironsource/sdk/listeners/OnGenericFunctionListener;
    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$5500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/listeners/OnGenericFunctionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/sdk/listeners/OnGenericFunctionListener;->onGFSuccess()V

    .line 1745
    return-void
.end method
