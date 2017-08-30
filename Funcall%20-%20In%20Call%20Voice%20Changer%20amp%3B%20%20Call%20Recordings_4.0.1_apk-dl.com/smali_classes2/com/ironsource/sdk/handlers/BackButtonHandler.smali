.class public Lcom/ironsource/sdk/handlers/BackButtonHandler;
.super Ljava/lang/Object;
.source "BackButtonHandler.java"


# static fields
.field public static mInstance:Lcom/ironsource/sdk/handlers/BackButtonHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/ironsource/sdk/handlers/BackButtonHandler;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/ironsource/sdk/handlers/BackButtonHandler;->mInstance:Lcom/ironsource/sdk/handlers/BackButtonHandler;

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Lcom/ironsource/sdk/handlers/BackButtonHandler;

    invoke-direct {v0}, Lcom/ironsource/sdk/handlers/BackButtonHandler;-><init>()V

    .line 19
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/ironsource/sdk/handlers/BackButtonHandler;->mInstance:Lcom/ironsource/sdk/handlers/BackButtonHandler;

    goto :goto_0
.end method


# virtual methods
.method public handleBackButton(Landroid/app/Activity;)Z
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v3, 0x0

    .line 27
    invoke-static {}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->getSupersonicPrefHelper()Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->getBackButtonState()Lcom/ironsource/sdk/data/SSAEnums$BackButtonState;

    move-result-object v1

    .line 29
    .local v1, "state":Lcom/ironsource/sdk/data/SSAEnums$BackButtonState;
    sget-object v4, Lcom/ironsource/sdk/handlers/BackButtonHandler$1;->$SwitchMap$com$ironsource$sdk$data$SSAEnums$BackButtonState:[I

    invoke-virtual {v1}, Lcom/ironsource/sdk/data/SSAEnums$BackButtonState;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 46
    :goto_0
    :pswitch_0
    return v3

    .line 37
    :pswitch_1
    invoke-static {p1}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getInstance(Landroid/app/Activity;)Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;

    move-result-object v0

    .line 38
    .local v0, "ssaPubAgt":Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;
    invoke-virtual {v0}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getWebViewController()Lcom/ironsource/sdk/controller/IronSourceWebView;

    move-result-object v2

    .line 39
    .local v2, "webViewController":Lcom/ironsource/sdk/controller/IronSourceWebView;
    if-eqz v2, :cond_0

    .line 41
    const-string v3, "back"

    invoke-virtual {v2, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->nativeNavigationPressed(Ljava/lang/String;)V

    .line 43
    :cond_0
    const/4 v3, 0x1

    goto :goto_0

    .line 29
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
