.class final Lcom/rami_bar/fun_call/utiles/Functions$2;
.super Landroid/webkit/WebViewClient;
.source "Functions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rami_bar/fun_call/utiles/Functions;->openWebDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private running:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 239
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 240
    const/4 v0, 0x0

    iput v0, p0, Lcom/rami_bar/fun_call/utiles/Functions$2;->running:I

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 257
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 258
    iget v0, p0, Lcom/rami_bar/fun_call/utiles/Functions$2;->running:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/rami_bar/fun_call/utiles/Functions$2;->running:I

    if-nez v0, :cond_0

    .line 259
    invoke-static {}, Lcom/rami_bar/fun_call/utiles/Functions;->stopProgressDialog()V

    .line 261
    :cond_0
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 251
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 252
    iget v0, p0, Lcom/rami_bar/fun_call/utiles/Functions$2;->running:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/rami_bar/fun_call/utiles/Functions$2;->running:I

    .line 253
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 244
    iget v0, p0, Lcom/rami_bar/fun_call/utiles/Functions$2;->running:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/rami_bar/fun_call/utiles/Functions$2;->running:I

    .line 245
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 246
    const/4 v0, 0x1

    return v0
.end method
