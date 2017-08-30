.class Lcom/ironsource/sdk/controller/IronSourceWebView$FrameBustWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "IronSourceWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/sdk/controller/IronSourceWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FrameBustWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;


# direct methods
.method private constructor <init>(Lcom/ironsource/sdk/controller/IronSourceWebView;)V
    .locals 0

    .prologue
    .line 659
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$FrameBustWebViewClient;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ironsource/sdk/controller/IronSourceWebView;Lcom/ironsource/sdk/controller/IronSourceWebView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;
    .param p2, "x1"    # Lcom/ironsource/sdk/controller/IronSourceWebView$1;

    .prologue
    .line 659
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView$FrameBustWebViewClient;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView;)V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 663
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$FrameBustWebViewClient;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getCurrentActivityContext()Landroid/content/Context;

    move-result-object v0

    .line 665
    .local v0, "ctx":Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/ironsource/sdk/controller/OpenUrlActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 666
    .local v1, "intent":Landroid/content/Intent;
    sget-object v2, Lcom/ironsource/sdk/controller/IronSourceWebView;->EXTERNAL_URL:Ljava/lang/String;

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 667
    sget-object v2, Lcom/ironsource/sdk/controller/IronSourceWebView;->SECONDARY_WEB_VIEW:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 668
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 670
    const/4 v2, 0x1

    return v2
.end method
