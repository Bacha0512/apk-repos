.class Lcom/ironsource/sdk/controller/IronSourceWebView$7;
.super Landroid/content/BroadcastReceiver;
.source "IronSourceWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/sdk/controller/IronSourceWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/IronSourceWebView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;

    .prologue
    .line 3492
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$7;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 3497
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$7;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    # getter for: Lcom/ironsource/sdk/controller/IronSourceWebView;->mControllerState:Lcom/ironsource/sdk/data/SSAEnums$ControllerState;
    invoke-static {v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$1500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/data/SSAEnums$ControllerState;

    move-result-object v1

    sget-object v2, Lcom/ironsource/sdk/data/SSAEnums$ControllerState;->Ready:Lcom/ironsource/sdk/data/SSAEnums$ControllerState;

    if-ne v1, v2, :cond_1

    .line 3498
    const-string v0, "none"

    .line 3499
    .local v0, "networkType":Ljava/lang/String;
    invoke-static {p1}, Lcom/ironsource/environment/ConnectivityService;->isConnectedWifi(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3500
    const-string v0, "wifi"

    .line 3505
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$7;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v1, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->deviceStatusChanged(Ljava/lang/String;)V

    .line 3507
    .end local v0    # "networkType":Ljava/lang/String;
    :cond_1
    return-void

    .line 3501
    .restart local v0    # "networkType":Ljava/lang/String;
    :cond_2
    invoke-static {p1}, Lcom/ironsource/environment/ConnectivityService;->isConnectedMobile(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3502
    const-string v0, "3g"

    goto :goto_0
.end method
