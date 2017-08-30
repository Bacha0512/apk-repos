.class final Lcom/oneaudience/sdk/m$b;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneaudience/sdk/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/oneaudience/sdk/m;


# direct methods
.method private constructor <init>(Lcom/oneaudience/sdk/m;)V
    .locals 0

    iput-object p1, p0, Lcom/oneaudience/sdk/m$b;->a:Lcom/oneaudience/sdk/m;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneaudience/sdk/m;Lcom/oneaudience/sdk/m$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneaudience/sdk/m$b;-><init>(Lcom/oneaudience/sdk/m;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 5

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lcom/oneaudience/sdk/m;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Finish loading page: %s"

    :goto_0
    new-array v2, v3, [Ljava/lang/Object;

    aput-object p2, v2, v4

    invoke-static {v1, v0, v2}, Lcom/oneaudience/sdk/b/d;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/oneaudience/sdk/m$b;->a:Lcom/oneaudience/sdk/m;

    invoke-static {v0, v3}, Lcom/oneaudience/sdk/m;->b(Lcom/oneaudience/sdk/m;Z)Z

    iget-object v0, p0, Lcom/oneaudience/sdk/m$b;->a:Lcom/oneaudience/sdk/m;

    iget-object v1, p0, Lcom/oneaudience/sdk/m$b;->a:Lcom/oneaudience/sdk/m;

    invoke-static {v1}, Lcom/oneaudience/sdk/m;->h(Lcom/oneaudience/sdk/m;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/oneaudience/sdk/m;->b(Lcom/oneaudience/sdk/m;J)V

    iget-object v0, p0, Lcom/oneaudience/sdk/m$b;->a:Lcom/oneaudience/sdk/m;

    invoke-static {v0}, Lcom/oneaudience/sdk/m;->i(Lcom/oneaudience/sdk/m;)Lcom/oneaudience/sdk/m$a;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/oneaudience/sdk/m$a;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneaudience/sdk/m$b;->a:Lcom/oneaudience/sdk/m;

    invoke-virtual {v0}, Lcom/oneaudience/sdk/m;->c()V

    return-void

    :cond_0
    const-string v0, "Finish loading page."

    goto :goto_0
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Lcom/oneaudience/sdk/m;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Start loading page: %s"

    :goto_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v4

    invoke-static {v1, v0, v2}, Lcom/oneaudience/sdk/b/d;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/oneaudience/sdk/m$b;->a:Lcom/oneaudience/sdk/m;

    invoke-static {v0}, Lcom/oneaudience/sdk/m;->g(Lcom/oneaudience/sdk/m;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/oneaudience/sdk/m$b;->a:Lcom/oneaudience/sdk/m;

    iget-object v1, p0, Lcom/oneaudience/sdk/m$b;->a:Lcom/oneaudience/sdk/m;

    invoke-static {v1}, Lcom/oneaudience/sdk/m;->g(Lcom/oneaudience/sdk/m;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/oneaudience/sdk/m;->a(Lcom/oneaudience/sdk/m;J)V

    :cond_0
    iget-object v0, p0, Lcom/oneaudience/sdk/m$b;->a:Lcom/oneaudience/sdk/m;

    invoke-static {v0, v4}, Lcom/oneaudience/sdk/m;->b(Lcom/oneaudience/sdk/m;Z)Z

    iget-object v0, p0, Lcom/oneaudience/sdk/m$b;->a:Lcom/oneaudience/sdk/m;

    invoke-static {v0}, Lcom/oneaudience/sdk/m;->d(Lcom/oneaudience/sdk/m;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneaudience/sdk/m$b;->a:Lcom/oneaudience/sdk/m;

    invoke-static {v0}, Lcom/oneaudience/sdk/m;->e(Lcom/oneaudience/sdk/m;)Lcom/oneaudience/sdk/m$h;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneaudience/sdk/m$b;->a:Lcom/oneaudience/sdk/m;

    invoke-static {v0}, Lcom/oneaudience/sdk/m;->e(Lcom/oneaudience/sdk/m;)Lcom/oneaudience/sdk/m$h;

    move-result-object v0

    iget-object v1, p0, Lcom/oneaudience/sdk/m$b;->a:Lcom/oneaudience/sdk/m;

    invoke-interface {v0, v1}, Lcom/oneaudience/sdk/m$h;->a(Lcom/oneaudience/sdk/m;)V

    :cond_1
    return-void

    :cond_2
    const-string v0, "Start loading page."

    goto :goto_0
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/oneaudience/sdk/m;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {p4}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Failed loading page: %s"

    :goto_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p4, v2, v3

    invoke-static {v1, v0, v2}, Lcom/oneaudience/sdk/b/d;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/oneaudience/sdk/m$b;->a:Lcom/oneaudience/sdk/m;

    invoke-static {v0, v3}, Lcom/oneaudience/sdk/m;->b(Lcom/oneaudience/sdk/m;Z)Z

    iget-object v0, p0, Lcom/oneaudience/sdk/m$b;->a:Lcom/oneaudience/sdk/m;

    invoke-static {v0}, Lcom/oneaudience/sdk/m;->e(Lcom/oneaudience/sdk/m;)Lcom/oneaudience/sdk/m$h;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneaudience/sdk/m$b;->a:Lcom/oneaudience/sdk/m;

    invoke-static {v0}, Lcom/oneaudience/sdk/m;->e(Lcom/oneaudience/sdk/m;)Lcom/oneaudience/sdk/m$h;

    move-result-object v0

    iget-object v1, p0, Lcom/oneaudience/sdk/m$b;->a:Lcom/oneaudience/sdk/m;

    invoke-interface {v0, v1}, Lcom/oneaudience/sdk/m$h;->b(Lcom/oneaudience/sdk/m;)V

    :cond_0
    return-void

    :cond_1
    const-string v0, "Failed loading page."

    goto :goto_0
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    invoke-static {}, Lcom/oneaudience/sdk/m;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NOT INTERCEPTING"

    invoke-static {v0, v1}, Lcom/oneaudience/sdk/b/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ".css"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ".js"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ".png"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ".jpg"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ".bmp"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_1
    const/16 v0, 0x2f

    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/oneaudience/sdk/m;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Intercepting: %s , %s"

    new-array v3, v8, [Ljava/lang/Object;

    aput-object p2, v3, v6

    aput-object v2, v3, v7

    invoke-static {v0, v1, v3}, Lcom/oneaudience/sdk/b/d;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/oneaudience/sdk/m$b;->a:Lcom/oneaudience/sdk/m;

    invoke-static {v0}, Lcom/oneaudience/sdk/m;->j(Lcom/oneaudience/sdk/m;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v0, 0x2e

    invoke-virtual {v2, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/oneaudience/sdk/m;->d()Ljava/lang/String;

    move-result-object v0

    const-string v4, "shouldInterceptRequest: %s, CACHE FOUND!"

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v2, v5, v6

    invoke-static {v0, v4, v5}, Lcom/oneaudience/sdk/b/d;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, ""

    const-string v4, "bmp"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "jpg"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "png"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    const-string v0, "image/*"

    :cond_3
    const-string v4, "js"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v0, "text/javascript"

    :cond_4
    const-string v4, "js"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v0, "text/javascript"

    :cond_5
    const-string v4, "css"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v0, "text/css"

    :cond_6
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {}, Lcom/oneaudience/sdk/m;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "shouldInterceptRequest: %s, ext: %s UNKNOWN MIME"

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v2, v4, v6

    aput-object v3, v4, v7

    invoke-static {v0, v1, v4}, Lcom/oneaudience/sdk/b/d;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    goto/16 :goto_0

    :cond_7
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/webkit/WebResourceResponse;

    const-string v4, "UTF-8"

    invoke-direct {v1, v0, v4, v3}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/oneaudience/sdk/m;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "shouldInterceptRequest: %s, Couldn\'t create file stream"

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v2, v3, v6

    invoke-static {v0, v1, v3}, Lcom/oneaudience/sdk/b/d;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    goto/16 :goto_0

    :cond_8
    invoke-static {}, Lcom/oneaudience/sdk/m;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "shouldInterceptRequest: %s, NO CACHE FOUND"

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v2, v3, v6

    invoke-static {v0, v1, v3}, Lcom/oneaudience/sdk/b/d;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    goto/16 :goto_0

    :cond_9
    invoke-static {}, Lcom/oneaudience/sdk/m;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "shouldInterceptRequest: %s"

    new-array v2, v7, [Ljava/lang/Object;

    aput-object p2, v2, v6

    invoke-static {v0, v1, v2}, Lcom/oneaudience/sdk/b/d;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/oneaudience/sdk/m;->d()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Overriding url %s"

    new-array v4, v0, [Ljava/lang/Object;

    aput-object p2, v4, v1

    invoke-static {v2, v3, v4}, Lcom/oneaudience/sdk/b/d;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v2, Lcom/oneaudience/sdk/e;->b:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/oneaudience/sdk/m$b;->a:Lcom/oneaudience/sdk/m;

    invoke-static {v1, v0}, Lcom/oneaudience/sdk/m;->c(Lcom/oneaudience/sdk/m;Z)V

    :goto_0
    return v0

    :cond_0
    sget-object v2, Lcom/oneaudience/sdk/e;->c:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/oneaudience/sdk/m$b;->a:Lcom/oneaudience/sdk/m;

    invoke-static {v2, v1}, Lcom/oneaudience/sdk/m;->c(Lcom/oneaudience/sdk/m;Z)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method
