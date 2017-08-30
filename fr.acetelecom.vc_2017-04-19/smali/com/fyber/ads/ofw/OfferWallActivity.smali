.class public Lcom/fyber/ads/ofw/OfferWallActivity;
.super Landroid/app/Activity;


# static fields
.field public static final EXTRA_KEYS_VALUES_MAP_KEY:Ljava/lang/String; = "EXTRA_KEY_VALUES_MAP"

.field public static final EXTRA_PLACEMENT_ID_KEY:Ljava/lang/String; = "EXTRA_PLACEMENT_ID_KEY"

.field public static final EXTRA_SHOULD_CLOSE_ON_REDIRECT_KEY:Ljava/lang/String; = "EXTRA_SHOULD_CLOSE_ON_REDIRECT_KEY"

.field public static final RESULT_CODE_NO_STATUS_CODE:I = -0xa

.field public static final TAG:Ljava/lang/String; = "OfferWallActivity"


# instance fields
.field private a:Z

.field private b:Landroid/app/ProgressDialog;

.field private c:Landroid/app/AlertDialog;

.field private d:Lcom/fyber/a/a;

.field private e:Lcom/fyber/ads/ofw/a/a;

.field private f:Ljava/lang/String;

.field protected mCustomKeysValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/fyber/ads/ofw/OfferWallActivity;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/fyber/ads/ofw/OfferWallActivity;->b:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic b(Lcom/fyber/ads/ofw/OfferWallActivity;)Landroid/app/ProgressDialog;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fyber/ads/ofw/OfferWallActivity;->b:Landroid/app/ProgressDialog;

    return-object v0
.end method


# virtual methods
.method protected fetchPassedExtras()V
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/fyber/ads/ofw/OfferWallActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {}, Lcom/fyber/Fyber;->getConfigs()Lcom/fyber/Fyber$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/Fyber$a;->d()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, v6}, Lcom/fyber/ads/ofw/OfferWallActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "app.id.key"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "user.id.key"

    const-string v4, ""

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "security.token.key"

    const-string v5, ""

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "precaching.enabled"

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v2, p0}, Lcom/fyber/Fyber;->with(Ljava/lang/String;Landroid/app/Activity;)Lcom/fyber/Fyber;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/fyber/Fyber;->withUserId(Ljava/lang/String;)Lcom/fyber/Fyber;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/fyber/Fyber;->withSecurityToken(Ljava/lang/String;)Lcom/fyber/Fyber;

    move-result-object v2

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Lcom/fyber/Fyber;->withManualPrecaching()Lcom/fyber/Fyber;

    :cond_0
    invoke-virtual {v2}, Lcom/fyber/Fyber;->start()Lcom/fyber/Fyber$Settings;

    invoke-static {}, Lcom/fyber/Fyber;->getConfigs()Lcom/fyber/Fyber$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/Fyber$a;->e()Lcom/fyber/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/ads/ofw/OfferWallActivity;->d:Lcom/fyber/a/a;

    invoke-virtual {p0, v6}, Lcom/fyber/ads/ofw/OfferWallActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    invoke-static {}, Lcom/fyber/Fyber;->getConfigs()Lcom/fyber/Fyber$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/Fyber$a;->e()Lcom/fyber/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/ads/ofw/OfferWallActivity;->d:Lcom/fyber/a/a;

    const-string v0, "EXTRA_SHOULD_CLOSE_ON_REDIRECT_KEY"

    invoke-virtual {p0}, Lcom/fyber/ads/ofw/OfferWallActivity;->shouldCloseOnRedirectDefault()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fyber/ads/ofw/OfferWallActivity;->a:Z

    const-string v0, "EXTRA_KEY_VALUES_MAP"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    instance-of v2, v0, Ljava/util/HashMap;

    if-eqz v2, :cond_2

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/fyber/ads/ofw/OfferWallActivity;->mCustomKeysValues:Ljava/util/Map;

    :cond_2
    const-string v0, "EXTRA_PLACEMENT_ID_KEY"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iput-object v0, p0, Lcom/fyber/ads/ofw/OfferWallActivity;->f:Ljava/lang/String;

    :cond_3
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/fyber/utils/h;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/fyber/ads/ofw/OfferWallActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->requestFeature(I)Z

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fyber/ads/ofw/OfferWallActivity;->b:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/fyber/ads/ofw/OfferWallActivity;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setOwnerActivity(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/fyber/ads/ofw/OfferWallActivity;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/fyber/ads/ofw/OfferWallActivity;->b:Landroid/app/ProgressDialog;

    sget-object v1, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->LOADING_OFFERWALL:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    invoke-static {v1}, Lcom/fyber/utils/t;->a(Lcom/fyber/Fyber$Settings$UIStringIdentifier;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/fyber/ads/ofw/OfferWallActivity;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    invoke-virtual {p0}, Lcom/fyber/ads/ofw/OfferWallActivity;->fetchPassedExtras()V

    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/fyber/ads/ofw/OfferWallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fyber/ads/ofw/OfferWallActivity;->mWebView:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/fyber/ads/ofw/OfferWallActivity;->mWebView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    iget-object v0, p0, Lcom/fyber/ads/ofw/OfferWallActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Lcom/fyber/ads/ofw/OfferWallActivity;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/fyber/ads/ofw/OfferWallActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/fyber/ads/ofw/OfferWallActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-static {v0}, Lcom/fyber/utils/aa;->a(Landroid/webkit/WebSettings;)V

    iget-object v0, p0, Lcom/fyber/ads/ofw/OfferWallActivity;->mWebView:Landroid/webkit/WebView;

    invoke-static {v0}, Lcom/fyber/utils/aa;->a(Landroid/webkit/WebView;)V

    new-instance v0, Lcom/fyber/ads/ofw/a/a;

    iget-boolean v1, p0, Lcom/fyber/ads/ofw/OfferWallActivity;->a:Z

    invoke-direct {v0, p0, v1}, Lcom/fyber/ads/ofw/a/a;-><init>(Landroid/app/Activity;Z)V

    iput-object v0, p0, Lcom/fyber/ads/ofw/OfferWallActivity;->e:Lcom/fyber/ads/ofw/a/a;

    iget-object v0, p0, Lcom/fyber/ads/ofw/OfferWallActivity;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/fyber/ads/ofw/OfferWallActivity;->e:Lcom/fyber/ads/ofw/a/a;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/fyber/ads/ofw/OfferWallActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/fyber/ads/ofw/OfferWallActivity$1;

    invoke-direct {v1, p0}, Lcom/fyber/ads/ofw/OfferWallActivity$1;-><init>(Lcom/fyber/ads/ofw/OfferWallActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    :goto_0
    return-void

    :cond_0
    const/16 v0, -0x14

    invoke-virtual {p0, v0}, Lcom/fyber/ads/ofw/OfferWallActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/fyber/ads/ofw/OfferWallActivity;->finish()V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/fyber/ads/ofw/OfferWallActivity;->c:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fyber/ads/ofw/OfferWallActivity;->c:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/fyber/ads/ofw/OfferWallActivity;->c:Landroid/app/AlertDialog;

    :cond_0
    iget-object v0, p0, Lcom/fyber/ads/ofw/OfferWallActivity;->b:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fyber/ads/ofw/OfferWallActivity;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iput-object v1, p0, Lcom/fyber/ads/ofw/OfferWallActivity;->b:Landroid/app/ProgressDialog;

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fyber/ads/ofw/OfferWallActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "app.id.key"

    iget-object v2, p0, Lcom/fyber/ads/ofw/OfferWallActivity;->d:Lcom/fyber/a/a;

    invoke-virtual {v2}, Lcom/fyber/a/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "user.id.key"

    iget-object v2, p0, Lcom/fyber/ads/ofw/OfferWallActivity;->d:Lcom/fyber/a/a;

    invoke-virtual {v2}, Lcom/fyber/a/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "security.token.key"

    iget-object v2, p0, Lcom/fyber/ads/ofw/OfferWallActivity;->d:Lcom/fyber/a/a;

    invoke-virtual {v2}, Lcom/fyber/a/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "precaching.enabled"

    invoke-static {}, Lcom/fyber/cache/CacheManager;->a()Lcom/fyber/cache/CacheManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fyber/cache/CacheManager;->e()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 4

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    :try_start_0
    const-string v0, "ofw"

    invoke-static {v0}, Lcom/fyber/utils/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/fyber/ads/ofw/OfferWallActivity;->d:Lcom/fyber/a/a;

    invoke-static {v0, v1}, Lcom/fyber/utils/u;->a(Ljava/lang/String;Lcom/fyber/a/a;)Lcom/fyber/utils/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/utils/u;->d()Lcom/fyber/utils/u;

    move-result-object v0

    iget-object v1, p0, Lcom/fyber/ads/ofw/OfferWallActivity;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fyber/utils/u;->b(Ljava/lang/String;)Lcom/fyber/utils/u;

    move-result-object v0

    iget-object v1, p0, Lcom/fyber/ads/ofw/OfferWallActivity;->mCustomKeysValues:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/fyber/utils/u;->a(Ljava/util/Map;)Lcom/fyber/utils/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/utils/u;->a()Lcom/fyber/utils/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/utils/u;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OfferWallActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Offer Wall request url: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/fyber/ads/ofw/OfferWallActivity;->mWebView:Landroid/webkit/WebView;

    invoke-static {}, Lcom/fyber/utils/i;->d()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "OfferWallActivity"

    const-string v2, "An exception occurred when launching the Offer Wall"

    invoke-static {v1, v2, v0}, Lcom/fyber/utils/FyberLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    iget-object v1, p0, Lcom/fyber/ads/ofw/OfferWallActivity;->e:Lcom/fyber/ads/ofw/a/a;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/fyber/ads/ofw/a/a;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public shouldCloseOnRedirectDefault()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
