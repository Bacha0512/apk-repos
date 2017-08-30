.class public Lcom/weirdvoice/wizards/utils/AccountCreationWebviewHelper8;
.super Lcom/weirdvoice/wizards/utils/AccountCreationWebviewHelper;
.source "AccountCreationWebviewHelper8.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x8
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/weirdvoice/wizards/utils/AccountCreationWebviewHelper8$CustomWebViewClient;
    }
.end annotation


# instance fields
.field private mWvc:Lcom/weirdvoice/wizards/utils/AccountCreationWebviewHelper8$CustomWebViewClient;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/weirdvoice/wizards/utils/AccountCreationWebviewHelper;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/weirdvoice/wizards/utils/AccountCreationWebviewHelper8;->mWvc:Lcom/weirdvoice/wizards/utils/AccountCreationWebviewHelper8$CustomWebViewClient;

    .line 32
    return-void
.end method

.method private initWebViewClientIfNeeded(Landroid/webkit/WebView;)V
    .locals 2
    .param p1, "webView"    # Landroid/webkit/WebView;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/weirdvoice/wizards/utils/AccountCreationWebviewHelper8;->mWvc:Lcom/weirdvoice/wizards/utils/AccountCreationWebviewHelper8$CustomWebViewClient;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Lcom/weirdvoice/wizards/utils/AccountCreationWebviewHelper8$CustomWebViewClient;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/weirdvoice/wizards/utils/AccountCreationWebviewHelper8$CustomWebViewClient;-><init>(Lcom/weirdvoice/wizards/utils/AccountCreationWebviewHelper8;Lcom/weirdvoice/wizards/utils/AccountCreationWebviewHelper8$CustomWebViewClient;)V

    iput-object v0, p0, Lcom/weirdvoice/wizards/utils/AccountCreationWebviewHelper8;->mWvc:Lcom/weirdvoice/wizards/utils/AccountCreationWebviewHelper8$CustomWebViewClient;

    .line 74
    iget-object v0, p0, Lcom/weirdvoice/wizards/utils/AccountCreationWebviewHelper8;->mWvc:Lcom/weirdvoice/wizards/utils/AccountCreationWebviewHelper8$CustomWebViewClient;

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 76
    :cond_0
    return-void
.end method


# virtual methods
.method public setAllowRedirect(Landroid/webkit/WebView;)V
    .locals 2
    .param p1, "webView"    # Landroid/webkit/WebView;

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/weirdvoice/wizards/utils/AccountCreationWebviewHelper8;->initWebViewClientIfNeeded(Landroid/webkit/WebView;)V

    .line 85
    iget-object v0, p0, Lcom/weirdvoice/wizards/utils/AccountCreationWebviewHelper8;->mWvc:Lcom/weirdvoice/wizards/utils/AccountCreationWebviewHelper8$CustomWebViewClient;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/weirdvoice/wizards/utils/AccountCreationWebviewHelper8$CustomWebViewClient;->setBypassUrlChange(Z)V

    .line 86
    return-void
.end method

.method public setSSLNoSecure(Landroid/webkit/WebView;)V
    .locals 2
    .param p1, "webView"    # Landroid/webkit/WebView;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/weirdvoice/wizards/utils/AccountCreationWebviewHelper8;->initWebViewClientIfNeeded(Landroid/webkit/WebView;)V

    .line 80
    iget-object v0, p0, Lcom/weirdvoice/wizards/utils/AccountCreationWebviewHelper8;->mWvc:Lcom/weirdvoice/wizards/utils/AccountCreationWebviewHelper8$CustomWebViewClient;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/weirdvoice/wizards/utils/AccountCreationWebviewHelper8$CustomWebViewClient;->setBypassSSLErrors(Z)V

    .line 81
    return-void
.end method
