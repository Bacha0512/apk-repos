.class Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$1;
.super Ljava/lang/Object;
.source "IronSourceAdsPublisherAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;-><init>(Landroid/app/Activity;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$1;->this$0:Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;

    iput-object p2, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 61
    iget-object v0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$1;->this$0:Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;

    new-instance v1, Lcom/ironsource/sdk/controller/IronSourceWebView;

    # getter for: Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mutableContextWrapper:Landroid/content/MutableContextWrapper;
    invoke-static {}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->access$100()Landroid/content/MutableContextWrapper;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->wvc:Lcom/ironsource/sdk/controller/IronSourceWebView;
    invoke-static {v0, v1}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->access$002(Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/controller/IronSourceWebView;

    .line 62
    iget-object v0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$1;->this$0:Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;

    # getter for: Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->wvc:Lcom/ironsource/sdk/controller/IronSourceWebView;
    invoke-static {v0}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->access$000(Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;)Lcom/ironsource/sdk/controller/IronSourceWebView;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->registerConnectionReceiver(Landroid/content/Context;)V

    .line 63
    iget-object v0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$1;->this$0:Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;

    # getter for: Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->wvc:Lcom/ironsource/sdk/controller/IronSourceWebView;
    invoke-static {v0}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->access$000(Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;)Lcom/ironsource/sdk/controller/IronSourceWebView;

    move-result-object v0

    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->getDebugMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->setDebugMode(I)V

    .line 64
    iget-object v0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$1;->this$0:Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;

    # getter for: Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->wvc:Lcom/ironsource/sdk/controller/IronSourceWebView;
    invoke-static {v0}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->access$000(Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;)Lcom/ironsource/sdk/controller/IronSourceWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->downloadController()V

    .line 65
    return-void
.end method
