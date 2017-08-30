.class public Lfr/acetelecom/vc/WebViewActivity;
.super Landroid/support/v7/app/AppCompatActivity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/acetelecom/vc/WebViewActivity$a;
    }
.end annotation


# instance fields
.field a:Lfr/acetelecom/vc/WebViewActivity$a;

.field b:Landroid/webkit/WebView;

.field public c:Landroid/app/ProgressDialog;

.field d:Landroid/app/AlertDialog;

.field e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lfr/acetelecom/vc/WebViewActivity;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lfr/acetelecom/vc/WebViewActivity;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0}, Lfr/acetelecom/vc/WebViewActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, -0x2

    const/4 v4, 0x1

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "VC"

    const-string v1, "webview********************** onCreate *****************************"

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lfr/acetelecom/vc/WebViewActivity;->requestWindowFeature(I)Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lfr/acetelecom/vc/WebViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    const v1, 0x7f0d0015

    invoke-static {p0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    :cond_0
    const v0, 0x7f030059

    invoke-virtual {p0, v0}, Lfr/acetelecom/vc/WebViewActivity;->setContentView(I)V

    const v0, 0x7f0e0145

    invoke-virtual {p0, v0}, Lfr/acetelecom/vc/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lfr/acetelecom/vc/WebViewActivity;->b:Landroid/webkit/WebView;

    iget-object v0, p0, Lfr/acetelecom/vc/WebViewActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    new-instance v0, Lfr/acetelecom/vc/WebViewActivity$a;

    invoke-direct {v0, p0, v6}, Lfr/acetelecom/vc/WebViewActivity$a;-><init>(Lfr/acetelecom/vc/WebViewActivity;Lfr/acetelecom/vc/WebViewActivity$1;)V

    iput-object v0, p0, Lfr/acetelecom/vc/WebViewActivity;->a:Lfr/acetelecom/vc/WebViewActivity$a;

    iget-object v0, p0, Lfr/acetelecom/vc/WebViewActivity;->b:Landroid/webkit/WebView;

    iget-object v1, p0, Lfr/acetelecom/vc/WebViewActivity;->a:Lfr/acetelecom/vc/WebViewActivity$a;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    invoke-virtual {p0}, Lfr/acetelecom/vc/WebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "fr.acetelecom.vc.MESSAGEURL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "VC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "webView.loadUrl : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lfr/acetelecom/vc/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lfr/acetelecom/vc/WebViewActivity;->c:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lfr/acetelecom/vc/WebViewActivity;->c:Landroid/app/ProgressDialog;

    const v2, 0x7f070081

    invoke-virtual {p0, v2}, Lfr/acetelecom/vc/WebViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lfr/acetelecom/vc/WebViewActivity;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v1, p0, Lfr/acetelecom/vc/WebViewActivity;->c:Landroid/app/ProgressDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v1, p0, Lfr/acetelecom/vc/WebViewActivity;->c:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lfr/acetelecom/vc/WebViewActivity;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lfr/acetelecom/vc/WebViewActivity;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v5, v5}, Landroid/view/Window;->setLayout(II)V

    :cond_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lfr/acetelecom/vc/WebViewActivity;->d:Landroid/app/AlertDialog;

    iput-object v6, p0, Lfr/acetelecom/vc/WebViewActivity;->e:Ljava/lang/String;

    iget-object v1, p0, Lfr/acetelecom/vc/WebViewActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    const-string v0, "VC"

    const-string v1, "webview********************** onDestroy *****************************"

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lfr/acetelecom/vc/WebViewActivity;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfr/acetelecom/vc/WebViewActivity;->e:Ljava/lang/String;

    const-string v1, "/videos/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfr/acetelecom/vc/WebViewActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lfr/acetelecom/vc/WebViewActivity;->b:Landroid/webkit/WebView;

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    const-string v0, "VC"

    const-string v1, "webview********************** onPause *****************************"

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    iget-object v0, p0, Lfr/acetelecom/vc/WebViewActivity;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfr/acetelecom/vc/WebViewActivity;->e:Ljava/lang/String;

    const-string v1, "/videos/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfr/acetelecom/vc/WebViewActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    iget-object v0, p0, Lfr/acetelecom/vc/WebViewActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->pauseTimers()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    const-string v0, "VC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "webview********************** onResume *****************************"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lfr/acetelecom/vc/WebViewActivity;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lfr/acetelecom/vc/WebViewActivity;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfr/acetelecom/vc/WebViewActivity;->e:Ljava/lang/String;

    const-string v1, "/videos/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfr/acetelecom/vc/WebViewActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    iget-object v0, p0, Lfr/acetelecom/vc/WebViewActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->resumeTimers()V

    invoke-virtual {p0}, Lfr/acetelecom/vc/WebViewActivity;->finish()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    const-string v0, "VC"

    const-string v1, "webview********************** onStop *****************************"

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lfr/acetelecom/vc/WebViewActivity;->c:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfr/acetelecom/vc/WebViewActivity;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lfr/acetelecom/vc/WebViewActivity;->e:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lfr/acetelecom/vc/WebViewActivity;->e:Ljava/lang/String;

    const-string v1, "/videos/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lfr/acetelecom/vc/WebViewActivity;->b:Landroid/webkit/WebView;

    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lfr/acetelecom/vc/WebViewActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    iget-object v0, p0, Lfr/acetelecom/vc/WebViewActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lfr/acetelecom/vc/WebViewActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    :cond_1
    return-void
.end method
