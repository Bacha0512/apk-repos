.class Lcom/weirdvoice/wizards/utils/AccountCreationWebviewHelper8$CustomWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "AccountCreationWebviewHelper8.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/weirdvoice/wizards/utils/AccountCreationWebviewHelper8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomWebViewClient"
.end annotation


# instance fields
.field private bypassSSLErrors:Z

.field private bypassUrlChange:Z

.field final synthetic this$0:Lcom/weirdvoice/wizards/utils/AccountCreationWebviewHelper8;


# direct methods
.method private constructor <init>(Lcom/weirdvoice/wizards/utils/AccountCreationWebviewHelper8;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    iput-object p1, p0, Lcom/weirdvoice/wizards/utils/AccountCreationWebviewHelper8$CustomWebViewClient;->this$0:Lcom/weirdvoice/wizards/utils/AccountCreationWebviewHelper8;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 35
    iput-boolean v0, p0, Lcom/weirdvoice/wizards/utils/AccountCreationWebviewHelper8$CustomWebViewClient;->bypassSSLErrors:Z

    .line 36
    iput-boolean v0, p0, Lcom/weirdvoice/wizards/utils/AccountCreationWebviewHelper8$CustomWebViewClient;->bypassUrlChange:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/weirdvoice/wizards/utils/AccountCreationWebviewHelper8;Lcom/weirdvoice/wizards/utils/AccountCreationWebviewHelper8$CustomWebViewClient;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/weirdvoice/wizards/utils/AccountCreationWebviewHelper8$CustomWebViewClient;-><init>(Lcom/weirdvoice/wizards/utils/AccountCreationWebviewHelper8;)V

    return-void
.end method


# virtual methods
.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/SslErrorHandler;
    .param p3, "error"    # Landroid/net/http/SslError;

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/weirdvoice/wizards/utils/AccountCreationWebviewHelper8$CustomWebViewClient;->bypassSSLErrors:Z

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 43
    :cond_0
    return-void
.end method

.method public setBypassSSLErrors(Z)V
    .locals 0
    .param p1, "bypassSSLErrors"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/weirdvoice/wizards/utils/AccountCreationWebviewHelper8$CustomWebViewClient;->bypassSSLErrors:Z

    .line 66
    return-void
.end method

.method public setBypassUrlChange(Z)V
    .locals 0
    .param p1, "bypassUrlChange"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/weirdvoice/wizards/utils/AccountCreationWebviewHelper8$CustomWebViewClient;->bypassUrlChange:Z

    .line 59
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/weirdvoice/wizards/utils/AccountCreationWebviewHelper8$CustomWebViewClient;->bypassUrlChange:Z

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 49
    const/4 v0, 0x0

    .line 51
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
