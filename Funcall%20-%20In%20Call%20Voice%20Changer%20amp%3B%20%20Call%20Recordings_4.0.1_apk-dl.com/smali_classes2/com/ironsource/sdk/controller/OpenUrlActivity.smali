.class public Lcom/ironsource/sdk/controller/OpenUrlActivity;
.super Landroid/app/Activity;
.source "OpenUrlActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/sdk/controller/OpenUrlActivity$Client;
    }
.end annotation


# static fields
.field private static final PROGRESS_BAR_VIEW_ID:I

.field private static final TAG:Ljava/lang/String; = "OpenUrlActivity"

.field private static final WEB_VIEW_VIEW_ID:I


# instance fields
.field private final decorViewSettings:Ljava/lang/Runnable;

.field isSecondaryWebview:Z

.field private mIsImmersive:Z

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mUiThreadHandler:Landroid/os/Handler;

.field private mUrl:Ljava/lang/String;

.field private mWebViewController:Lcom/ironsource/sdk/controller/IronSourceWebView;

.field private mainLayout:Landroid/widget/RelativeLayout;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->generateViewId()I

    move-result v0

    sput v0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->WEB_VIEW_VIEW_ID:I

    .line 38
    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->generateViewId()I

    move-result v0

    sput v0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->PROGRESS_BAR_VIEW_ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->webView:Landroid/webkit/WebView;

    .line 54
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->mUiThreadHandler:Landroid/os/Handler;

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->mIsImmersive:Z

    .line 301
    new-instance v0, Lcom/ironsource/sdk/controller/OpenUrlActivity$2;

    invoke-direct {v0, p0}, Lcom/ironsource/sdk/controller/OpenUrlActivity$2;-><init>(Lcom/ironsource/sdk/controller/OpenUrlActivity;)V

    iput-object v0, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->decorViewSettings:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/ironsource/sdk/controller/OpenUrlActivity;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/OpenUrlActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->decorViewSettings:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/ironsource/sdk/controller/OpenUrlActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/OpenUrlActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->mUiThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/ironsource/sdk/controller/OpenUrlActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/OpenUrlActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$400(Lcom/ironsource/sdk/controller/OpenUrlActivity;)Lcom/ironsource/sdk/controller/IronSourceWebView;
    .locals 1
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/OpenUrlActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->mWebViewController:Lcom/ironsource/sdk/controller/IronSourceWebView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/ironsource/sdk/controller/OpenUrlActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/OpenUrlActivity;

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->mIsImmersive:Z

    return v0
.end method

.method private createProgressBarForWebView()V
    .locals 5

    .prologue
    const/4 v4, -0x2

    .line 143
    iget-object v1, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->mProgressBar:Landroid/widget/ProgressBar;

    if-nez v1, :cond_0

    .line 144
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_2

    .line 145
    new-instance v1, Landroid/widget/ProgressBar;

    new-instance v2, Landroid/view/ContextThemeWrapper;

    const v3, 0x1030073

    invoke-direct {v2, p0, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v1, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 149
    :goto_0
    iget-object v1, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->mProgressBar:Landroid/widget/ProgressBar;

    sget v2, Lcom/ironsource/sdk/controller/OpenUrlActivity;->PROGRESS_BAR_VIEW_ID:I

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setId(I)V

    .line 153
    :cond_0
    sget v1, Lcom/ironsource/sdk/controller/OpenUrlActivity;->PROGRESS_BAR_VIEW_ID:I

    invoke-virtual {p0, v1}, Lcom/ironsource/sdk/controller/OpenUrlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    .line 154
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 157
    .local v0, "progressBarLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 159
    iget-object v1, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    iget-object v1, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 163
    iget-object v1, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->mainLayout:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 165
    .end local v0    # "progressBarLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    return-void

    .line 147
    :cond_2
    new-instance v1, Landroid/widget/ProgressBar;

    invoke-direct {v1, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->mProgressBar:Landroid/widget/ProgressBar;

    goto :goto_0
.end method

.method private createWebView()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 113
    iget-object v1, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->webView:Landroid/webkit/WebView;

    if-nez v1, :cond_0

    .line 114
    new-instance v1, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/OpenUrlActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->webView:Landroid/webkit/WebView;

    .line 115
    iget-object v1, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->webView:Landroid/webkit/WebView;

    sget v2, Lcom/ironsource/sdk/controller/OpenUrlActivity;->WEB_VIEW_VIEW_ID:I

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setId(I)V

    .line 117
    iget-object v1, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 118
    iget-object v1, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->webView:Landroid/webkit/WebView;

    new-instance v2, Lcom/ironsource/sdk/controller/OpenUrlActivity$Client;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/ironsource/sdk/controller/OpenUrlActivity$Client;-><init>(Lcom/ironsource/sdk/controller/OpenUrlActivity;Lcom/ironsource/sdk/controller/OpenUrlActivity$1;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 120
    iget-object v1, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->mUrl:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/ironsource/sdk/controller/OpenUrlActivity;->loadUrl(Ljava/lang/String;)V

    .line 124
    :cond_0
    sget v1, Lcom/ironsource/sdk/controller/OpenUrlActivity;->WEB_VIEW_VIEW_ID:I

    invoke-virtual {p0, v1}, Lcom/ironsource/sdk/controller/OpenUrlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    .line 126
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 129
    .local v0, "webViewLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->mainLayout:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    .end local v0    # "webViewLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/OpenUrlActivity;->createProgressBarForWebView()V

    .line 136
    iget-object v1, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->mWebViewController:Lcom/ironsource/sdk/controller/IronSourceWebView;

    if-eqz v1, :cond_2

    .line 137
    iget-object v1, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->mWebViewController:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v2, "secondary"

    invoke-virtual {v1, v5, v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->viewableChange(ZLjava/lang/String;)V

    .line 139
    :cond_2
    return-void
.end method

.method private destroyWebView()V
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 193
    :cond_0
    return-void
.end method

.method private disableTouch()V
    .locals 2

    .prologue
    .line 268
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/OpenUrlActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 269
    return-void
.end method

.method private hideActivityTitle()V
    .locals 1

    .prologue
    .line 259
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/controller/OpenUrlActivity;->requestWindowFeature(I)Z

    .line 260
    return-void
.end method

.method private hideActivtiyStatusBar()V
    .locals 2

    .prologue
    const/16 v1, 0x400

    .line 263
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/OpenUrlActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 265
    return-void
.end method

.method private removeWebViewFromLayout()V
    .locals 4

    .prologue
    .line 169
    iget-object v1, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->mWebViewController:Lcom/ironsource/sdk/controller/IronSourceWebView;

    if-eqz v1, :cond_1

    .line 170
    iget-object v1, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->mWebViewController:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v2, 0x0

    const-string v3, "secondary"

    invoke-virtual {v1, v2, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->viewableChange(ZLjava/lang/String;)V

    .line 172
    iget-object v1, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->mainLayout:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_1

    .line 174
    iget-object v1, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 176
    .local v0, "parent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_1

    .line 177
    sget v1, Lcom/ironsource/sdk/controller/OpenUrlActivity;->WEB_VIEW_VIEW_ID:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 178
    iget-object v1, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 181
    :cond_0
    sget v1, Lcom/ironsource/sdk/controller/OpenUrlActivity;->PROGRESS_BAR_VIEW_ID:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 182
    iget-object v1, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 187
    .end local v0    # "parent":Landroid/view/ViewGroup;
    :cond_1
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 291
    iget-boolean v0, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->isSecondaryWebview:Z

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->mWebViewController:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v1, "secondaryClose"

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->engageEnd(Ljava/lang/String;)V

    .line 295
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 296
    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 203
    iget-object v1, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->stopLoading()V

    .line 204
    iget-object v1, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->clearHistory()V

    .line 207
    :try_start_0
    iget-object v1, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    :goto_0
    return-void

    .line 208
    :catch_0
    move-exception v0

    .line 209
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "OpenUrlActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OpenUrlActivity:: loadUrl: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ironsource/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    new-instance v1, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;

    invoke-direct {v1}, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://www.supersonicads.com/mobile/sdk5/log?method="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 279
    :goto_0
    return-void

    .line 277
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, -0x1

    .line 63
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    const-string v3, "OpenUrlActivity"

    const-string v4, "onCreate()"

    invoke-static {v3, v4}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-static {p0}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getInstance(Landroid/app/Activity;)Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;

    move-result-object v2

    .line 68
    .local v2, "ssaPubAgt":Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;
    invoke-virtual {v2}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getWebViewController()Lcom/ironsource/sdk/controller/IronSourceWebView;

    move-result-object v3

    iput-object v3, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->mWebViewController:Lcom/ironsource/sdk/controller/IronSourceWebView;

    .line 71
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/OpenUrlActivity;->hideActivityTitle()V

    .line 74
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/OpenUrlActivity;->hideActivtiyStatusBar()V

    .line 77
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/OpenUrlActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 80
    .local v0, "bundle":Landroid/os/Bundle;
    sget-object v3, Lcom/ironsource/sdk/controller/IronSourceWebView;->EXTERNAL_URL:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->mUrl:Ljava/lang/String;

    .line 81
    sget-object v3, Lcom/ironsource/sdk/controller/IronSourceWebView;->SECONDARY_WEB_VIEW:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->isSecondaryWebview:Z

    .line 83
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/OpenUrlActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 84
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "immersive"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->mIsImmersive:Z

    .line 86
    iget-boolean v3, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->mIsImmersive:Z

    if-eqz v3, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/OpenUrlActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/ironsource/sdk/controller/OpenUrlActivity$1;

    invoke-direct {v4, p0}, Lcom/ironsource/sdk/controller/OpenUrlActivity$1;-><init>(Lcom/ironsource/sdk/controller/OpenUrlActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 96
    iget-object v3, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->decorViewSettings:Ljava/lang/Runnable;

    invoke-virtual {p0, v3}, Lcom/ironsource/sdk/controller/OpenUrlActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 100
    :cond_0
    new-instance v3, Landroid/widget/RelativeLayout;

    invoke-direct {v3, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->mainLayout:Landroid/widget/RelativeLayout;

    .line 101
    iget-object v3, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->mainLayout:Landroid/widget/RelativeLayout;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v3, v4}, Lcom/ironsource/sdk/controller/OpenUrlActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 283
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 284
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/OpenUrlActivity;->destroyWebView()V

    .line 285
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 317
    iget-boolean v0, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->mIsImmersive:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x19

    if-eq p1, v0, :cond_0

    const/16 v0, 0x18

    if-ne p1, v0, :cond_1

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->mUiThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->decorViewSettings:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 320
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 197
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 198
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/OpenUrlActivity;->removeWebViewFromLayout()V

    .line 199
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 106
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 107
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/OpenUrlActivity;->createWebView()V

    .line 108
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    .prologue
    .line 309
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 311
    iget-boolean v0, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->mIsImmersive:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 312
    iget-object v0, p0, Lcom/ironsource/sdk/controller/OpenUrlActivity;->decorViewSettings:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/controller/OpenUrlActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 314
    :cond_0
    return-void
.end method
