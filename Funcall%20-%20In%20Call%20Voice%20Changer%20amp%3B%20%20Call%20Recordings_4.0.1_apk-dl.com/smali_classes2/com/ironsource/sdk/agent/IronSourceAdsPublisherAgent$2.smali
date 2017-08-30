.class Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$2;
.super Ljava/lang/Object;
.source "IronSourceAdsPublisherAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->release(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;

    .prologue
    .line 252
    iput-object p1, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$2;->this$0:Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$2;->this$0:Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;

    # getter for: Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->wvc:Lcom/ironsource/sdk/controller/IronSourceWebView;
    invoke-static {v0}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->access$000(Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;)Lcom/ironsource/sdk/controller/IronSourceWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->destroy()V

    .line 256
    iget-object v0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$2;->this$0:Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;

    const/4 v1, 0x0

    # setter for: Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->wvc:Lcom/ironsource/sdk/controller/IronSourceWebView;
    invoke-static {v0, v1}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->access$002(Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/controller/IronSourceWebView;

    .line 257
    return-void
.end method
