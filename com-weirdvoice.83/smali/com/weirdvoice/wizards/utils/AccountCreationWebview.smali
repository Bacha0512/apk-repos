.class public Lcom/weirdvoice/wizards/utils/AccountCreationWebview;
.super Ljava/lang/Object;
.source "AccountCreationWebview.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/weirdvoice/wizards/utils/AccountCreationWebview$HideWebviewRunnable;,
        Lcom/weirdvoice/wizards/utils/AccountCreationWebview$JSInterface;,
        Lcom/weirdvoice/wizards/utils/AccountCreationWebview$OnAccountCreationDoneListener;
    }
.end annotation


# instance fields
.field private creationListener:Lcom/weirdvoice/wizards/utils/AccountCreationWebview$OnAccountCreationDoneListener;

.field private loadingProgressBar:Landroid/widget/ProgressBar;

.field private final parent:Lcom/weirdvoice/wizards/BasePrefsWizard;

.field private settingsContainer:Landroid/view/ViewGroup;

.field private validationBar:Landroid/view/ViewGroup;

.field private webCreationPage:Ljava/lang/String;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Lcom/weirdvoice/wizards/BasePrefsWizard;Ljava/lang/String;Lcom/weirdvoice/wizards/utils/AccountCreationWebview$OnAccountCreationDoneListener;)V
    .locals 6
    .param p1, "aParent"    # Lcom/weirdvoice/wizards/BasePrefsWizard;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "l"    # Lcom/weirdvoice/wizards/utils/AccountCreationWebview$OnAccountCreationDoneListener;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/weirdvoice/wizards/utils/AccountCreationWebview;->parent:Lcom/weirdvoice/wizards/BasePrefsWizard;

    .line 54
    iput-object p3, p0, Lcom/weirdvoice/wizards/utils/AccountCreationWebview;->creationListener:Lcom/weirdvoice/wizards/utils/AccountCreationWebview$OnAccountCreationDoneListener;

    .line 55
    iput-object p2, p0, Lcom/weirdvoice/wizards/utils/AccountCreationWebview;->webCreationPage:Ljava/lang/String;

    .line 57
    iget-object v2, p0, Lcom/weirdvoice/wizards/utils/AccountCreationWebview;->parent:Lcom/weirdvoice/wizards/BasePrefsWizard;

    const v3, 0x7f0b015a

    invoke-virtual {v2, v3}, Lcom/weirdvoice/wizards/BasePrefsWizard;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/weirdvoice/wizards/utils/AccountCreationWebview;->settingsContainer:Landroid/view/ViewGroup;

    .line 58
    iget-object v2, p0, Lcom/weirdvoice/wizards/utils/AccountCreationWebview;->parent:Lcom/weirdvoice/wizards/BasePrefsWizard;

    const v3, 0x7f0b013d

    invoke-virtual {v2, v3}, Lcom/weirdvoice/wizards/BasePrefsWizard;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/weirdvoice/wizards/utils/AccountCreationWebview;->validationBar:Landroid/view/ViewGroup;

    .line 60
    iget-object v2, p0, Lcom/weirdvoice/wizards/utils/AccountCreationWebview;->settingsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 62
    .local v0, "globalContainer":Landroid/view/ViewGroup;
    iget-object v2, p0, Lcom/weirdvoice/wizards/utils/AccountCreationWebview;->parent:Lcom/weirdvoice/wizards/BasePrefsWizard;

    invoke-virtual {v2}, Lcom/weirdvoice/wizards/BasePrefsWizard;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030068

    invoke-virtual {v2, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 64
    const v2, 0x7f0b00c5

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    iput-object v2, p0, Lcom/weirdvoice/wizards/utils/AccountCreationWebview;->webView:Landroid/webkit/WebView;

    .line 65
    const v2, 0x7f0b0159

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/weirdvoice/wizards/utils/AccountCreationWebview;->loadingProgressBar:Landroid/widget/ProgressBar;

    .line 67
    iget-object v2, p0, Lcom/weirdvoice/wizards/utils/AccountCreationWebview;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 68
    .local v1, "webSettings":Landroid/webkit/WebSettings;
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 69
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 70
    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 71
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 72
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 73
    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setNeedInitialFocus(Z)V

    .line 74
    iget-object v2, p0, Lcom/weirdvoice/wizards/utils/AccountCreationWebview;->webView:Landroid/webkit/WebView;

    new-instance v3, Lcom/weirdvoice/wizards/utils/AccountCreationWebview$JSInterface;

    invoke-direct {v3, p0}, Lcom/weirdvoice/wizards/utils/AccountCreationWebview$JSInterface;-><init>(Lcom/weirdvoice/wizards/utils/AccountCreationWebview;)V

    const-string v4, "CSipSimpleWizard"

    invoke-virtual {v2, v3, v4}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    iget-object v2, p0, Lcom/weirdvoice/wizards/utils/AccountCreationWebview;->webView:Landroid/webkit/WebView;

    new-instance v3, Lcom/weirdvoice/wizards/utils/AccountCreationWebview$1;

    invoke-direct {v3, p0}, Lcom/weirdvoice/wizards/utils/AccountCreationWebview$1;-><init>(Lcom/weirdvoice/wizards/utils/AccountCreationWebview;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 87
    return-void
.end method

.method static synthetic access$0(Lcom/weirdvoice/wizards/utils/AccountCreationWebview;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/weirdvoice/wizards/utils/AccountCreationWebview;->webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/weirdvoice/wizards/utils/AccountCreationWebview;)Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/weirdvoice/wizards/utils/AccountCreationWebview;->settingsContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$2(Lcom/weirdvoice/wizards/utils/AccountCreationWebview;)Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/weirdvoice/wizards/utils/AccountCreationWebview;->validationBar:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$3(Lcom/weirdvoice/wizards/utils/AccountCreationWebview;)Lcom/weirdvoice/wizards/BasePrefsWizard;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/weirdvoice/wizards/utils/AccountCreationWebview;->parent:Lcom/weirdvoice/wizards/BasePrefsWizard;

    return-object v0
.end method

.method static synthetic access$4(Lcom/weirdvoice/wizards/utils/AccountCreationWebview;)Lcom/weirdvoice/wizards/utils/AccountCreationWebview$OnAccountCreationDoneListener;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/weirdvoice/wizards/utils/AccountCreationWebview;->creationListener:Lcom/weirdvoice/wizards/utils/AccountCreationWebview$OnAccountCreationDoneListener;

    return-object v0
.end method

.method static synthetic access$5(Lcom/weirdvoice/wizards/utils/AccountCreationWebview;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/weirdvoice/wizards/utils/AccountCreationWebview;->loadingProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method


# virtual methods
.method public setAllowRedirects()V
    .locals 2

    .prologue
    .line 101
    invoke-static {}, Lcom/weirdvoice/wizards/utils/AccountCreationWebviewHelper;->getInstance()Lcom/weirdvoice/wizards/utils/AccountCreationWebviewHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/weirdvoice/wizards/utils/AccountCreationWebview;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Lcom/weirdvoice/wizards/utils/AccountCreationWebviewHelper;->setAllowRedirect(Landroid/webkit/WebView;)V

    .line 102
    return-void
.end method

.method public setUntrustedCertificate()V
    .locals 2

    .prologue
    .line 94
    invoke-static {}, Lcom/weirdvoice/wizards/utils/AccountCreationWebviewHelper;->getInstance()Lcom/weirdvoice/wizards/utils/AccountCreationWebviewHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/weirdvoice/wizards/utils/AccountCreationWebview;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Lcom/weirdvoice/wizards/utils/AccountCreationWebviewHelper;->setSSLNoSecure(Landroid/webkit/WebView;)V

    .line 95
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 166
    iget-object v0, p0, Lcom/weirdvoice/wizards/utils/AccountCreationWebview;->settingsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 167
    iget-object v0, p0, Lcom/weirdvoice/wizards/utils/AccountCreationWebview;->validationBar:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 168
    iget-object v0, p0, Lcom/weirdvoice/wizards/utils/AccountCreationWebview;->webView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 169
    iget-object v0, p0, Lcom/weirdvoice/wizards/utils/AccountCreationWebview;->webView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/weirdvoice/wizards/utils/AccountCreationWebview;->webCreationPage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/weirdvoice/wizards/utils/AccountCreationWebview;->webView:Landroid/webkit/WebView;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->requestFocus(I)Z

    .line 171
    return-void
.end method
