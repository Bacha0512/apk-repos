.class public Lcom/oneaudience/sdk/k;
.super Landroid/app/Dialog;

# interfaces
.implements Lcom/oneaudience/sdk/m$h;


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:J


# instance fields
.field private c:Lcom/oneaudience/sdk/m;

.field private d:Lcom/oneaudience/sdk/b/d$b;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/oneaudience/sdk/k;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneaudience/sdk/k;->a:Ljava/lang/String;

    const-wide/16 v0, 0x7d0

    sput-wide v0, Lcom/oneaudience/sdk/k;->b:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneaudience/sdk/k;->d:Lcom/oneaudience/sdk/b/d$b;

    iput-object v0, p0, Lcom/oneaudience/sdk/k;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/oneaudience/sdk/k;->f:Ljava/lang/String;

    :try_start_0
    iput-object p1, p0, Lcom/oneaudience/sdk/k;->g:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneaudience/sdk/k;->setCancelable(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneaudience/sdk/k;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {p0}, Lcom/oneaudience/sdk/k;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iput-object p2, p0, Lcom/oneaudience/sdk/k;->f:Ljava/lang/String;

    iput-object p3, p0, Lcom/oneaudience/sdk/k;->e:Ljava/lang/String;

    invoke-direct {p0}, Lcom/oneaudience/sdk/k;->a()V

    sget-object v0, Lcom/oneaudience/sdk/k;->a:Ljava/lang/String;

    const-string v1, "Getting url."

    invoke-static {v0, v1}, Lcom/oneaudience/sdk/b/d;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/oneaudience/sdk/b/d$b;

    move-result-object v0

    iput-object v0, p0, Lcom/oneaudience/sdk/k;->d:Lcom/oneaudience/sdk/b/d$b;

    invoke-direct {p0}, Lcom/oneaudience/sdk/k;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/oneaudience/sdk/k;->a:Ljava/lang/String;

    const-string v2, "Error loading Activity"

    invoke-static {v1, v2, v0}, Lcom/oneaudience/sdk/b/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a()V
    .locals 7

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/oneaudience/sdk/k;->c:Lcom/oneaudience/sdk/m;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oneaudience/sdk/m;

    invoke-virtual {p0}, Lcom/oneaudience/sdk/k;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-wide v2, Lcom/oneaudience/sdk/k;->b:J

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/oneaudience/sdk/m;-><init>(Landroid/content/Context;JJ)V

    iput-object v0, p0, Lcom/oneaudience/sdk/k;->c:Lcom/oneaudience/sdk/m;

    iget-object v0, p0, Lcom/oneaudience/sdk/k;->c:Lcom/oneaudience/sdk/m;

    invoke-virtual {v0, p0}, Lcom/oneaudience/sdk/m;->a(Lcom/oneaudience/sdk/m$h;)V

    :cond_0
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/oneaudience/sdk/k;->requestWindowFeature(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lcom/oneaudience/sdk/k;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x43be0000    # 380.0f

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v6, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    const/high16 v2, 0x438c0000    # 280.0f

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {v6, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    iget-object v2, p0, Lcom/oneaudience/sdk/k;->c:Lcom/oneaudience/sdk/m;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    float-to-int v0, v0

    float-to-int v1, v1

    invoke-direct {v3, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2, v3}, Lcom/oneaudience/sdk/k;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :catch_0
    move-exception v0

    sget-object v0, Lcom/oneaudience/sdk/k;->a:Ljava/lang/String;

    const-string v1, "Couldn\'t change window settings"

    invoke-static {v0, v1}, Lcom/oneaudience/sdk/b/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;)V
    .locals 7

    const/4 v6, 0x0

    sget-object v0, Lcom/oneaudience/sdk/k;->a:Ljava/lang/String;

    const-string v1, "Deleting Cached Files"

    invoke-static {v0, v1}, Lcom/oneaudience/sdk/b/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "oneAudienceEula"

    invoke-virtual {p0, v0, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v0, "cached_files"

    invoke-static {v1, v0}, Lcom/oneaudience/sdk/n;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v3, Lcom/oneaudience/sdk/k;->a:Ljava/lang/String;

    const-string v4, "Deleting Cached File: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v6

    invoke-static {v3, v4, v5}, Lcom/oneaudience/sdk/b/d;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v3, Lcom/oneaudience/sdk/k;->a:Ljava/lang/String;

    const-string v4, "Error Deleting Cached File: %s"

    invoke-static {v3, v4, v0}, Lcom/oneaudience/sdk/b/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    const-string v0, "cached_files"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1, v0, v2}, Lcom/oneaudience/sdk/n;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/io/Serializable;)Z

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 10

    const/4 v5, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    sget-object v0, Lcom/oneaudience/sdk/k;->a:Ljava/lang/String;

    const-string v1, "startWebView was called with url %s"

    new-array v2, v9, [Ljava/lang/Object;

    aput-object p1, v2, v8

    invoke-static {v0, v1, v2}, Lcom/oneaudience/sdk/b/d;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/oneaudience/sdk/k;->a(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".html"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "oneAudienceEula"

    invoke-virtual {p0, v2, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "cached_files"

    invoke-static {v2, v3}, Lcom/oneaudience/sdk/n;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "cached_files"

    invoke-static {v2, v4, v3}, Lcom/oneaudience/sdk/n;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/io/Serializable;)Z

    new-instance v3, Lcom/oneaudience/sdk/c;

    invoke-direct {v3}, Lcom/oneaudience/sdk/c;-><init>()V

    new-instance v4, Lcom/oneaudience/sdk/b/a/c;

    invoke-direct {v4, p1, v5, v5, v8}, Lcom/oneaudience/sdk/b/a/c;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Object;Z)V

    invoke-virtual {v3, v4}, Lcom/oneaudience/sdk/c;->a(Lcom/oneaudience/sdk/b/a/c;)Lcom/oneaudience/sdk/b/a/d;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v5, v3, Lcom/oneaudience/sdk/b/a/d;->c:Ljava/lang/Object;

    if-nez v5, :cond_1

    sget-object v0, Lcom/oneaudience/sdk/k;->a:Ljava/lang/String;

    const-string v1, "Eula response data is null failed to start Eula"

    invoke-static {v0, v1}, Lcom/oneaudience/sdk/b/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v5, v3, Lcom/oneaudience/sdk/b/a/d;->c:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "css"

    invoke-static {v2, v0, v5, v6}, Lcom/oneaudience/sdk/k;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "js"

    invoke-static {v2, v0, v5, v6}, Lcom/oneaudience/sdk/k;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "png"

    invoke-static {v2, v0, v5, v6}, Lcom/oneaudience/sdk/k;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "bmp"

    invoke-static {v2, v0, v5, v6}, Lcom/oneaudience/sdk/k;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "jpg"

    invoke-static {v2, v0, v5, v6}, Lcom/oneaudience/sdk/k;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Lcom/oneaudience/sdk/k;->a:Ljava/lang/String;

    const-string v2, "Final HTML: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    invoke-static {v0, v2, v6}, Lcom/oneaudience/sdk/b/d;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/oneaudience/sdk/k;->a:Ljava/lang/String;

    const-string v2, "Saving html file: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-static {v0, v2, v6}, Lcom/oneaudience/sdk/b/d;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v5, v4}, Lcom/oneaudience/sdk/b/b;->a(Ljava/lang/String;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget v0, v3, Lcom/oneaudience/sdk/b/a/d;->a:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/oneaudience/sdk/k;->a:Ljava/lang/String;

    const-string v1, "Finished loading page - Failed Launching Webview"

    invoke-static {v0, v1}, Lcom/oneaudience/sdk/b/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/oneaudience/sdk/k;->a:Ljava/lang/String;

    const-string v2, "Couldn\'t save html file: %s"

    new-array v5, v9, [Ljava/lang/Object;

    aput-object v1, v5, v8

    invoke-static {v0, v2, v5}, Lcom/oneaudience/sdk/b/d;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_0
    sget-object v0, Lcom/oneaudience/sdk/k;->a:Ljava/lang/String;

    const-string v2, "Finished loading page"

    invoke-static {v0, v2}, Lcom/oneaudience/sdk/b/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneaudience/sdk/k;->a:Ljava/lang/String;

    const-string v2, "Downloading Assets"

    invoke-static {v0, v2}, Lcom/oneaudience/sdk/b/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/oneaudience/sdk/k$1;

    invoke-direct {v2, p0, v1, p1}, Lcom/oneaudience/sdk/k$1;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x186a0
        :pswitch_0
    .end packed-switch
.end method

.method private static a(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v0, "cached_files"

    invoke-static {p0, v0}, Lcom/oneaudience/sdk/n;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http(\\S+)."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/oneaudience/sdk/k;->a:Ljava/lang/String;

    const-string v4, "Downloading Assets: %s"

    new-array v5, v10, [Ljava/lang/Object;

    aput-object v2, v5, v9

    invoke-static {v3, v4, v5}, Lcom/oneaudience/sdk/b/d;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v5

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v4, 0x400

    new-array v4, v4, [B

    :goto_1
    invoke-virtual {v5, v4}, Ljava/io/InputStream;->read([B)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    const/4 v8, 0x0

    invoke-virtual {v6, v4, v8, v7}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    sget-object v2, Lcom/oneaudience/sdk/k;->a:Ljava/lang/String;

    const-string v4, "Save error file: %s"

    new-array v5, v10, [Ljava/lang/Object;

    aput-object v3, v5, v9

    invoke-static {v2, v4, v5}, Lcom/oneaudience/sdk/b/d;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_0
    :try_start_1
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    sget-object v4, Lcom/oneaudience/sdk/k;->a:Ljava/lang/String;

    const-string v5, "Done Saving file: %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v2, 0x1

    aput-object v3, v6, v2

    invoke-static {v4, v5, v6}, Lcom/oneaudience/sdk/b/d;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_1
    const-string v1, "cached_files"

    invoke-static {p0, v1, v0}, Lcom/oneaudience/sdk/n;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/io/Serializable;)Z

    return-void
.end method

.method private b()V
    .locals 3

    iget-object v0, p0, Lcom/oneaudience/sdk/k;->d:Lcom/oneaudience/sdk/b/d$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneaudience/sdk/k;->d:Lcom/oneaudience/sdk/b/d$b;

    const-string v1, "Fetching ad."

    invoke-virtual {v0, v1}, Lcom/oneaudience/sdk/b/d$b;->a(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/oneaudience/sdk/k;->c:Lcom/oneaudience/sdk/m;

    iget-object v1, p0, Lcom/oneaudience/sdk/k;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/oneaudience/sdk/k;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/oneaudience/sdk/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/oneaudience/sdk/m;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/oneaudience/sdk/m;Z)V
    .locals 1

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/oneaudience/sdk/k;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneaudience/sdk/l;->a(Landroid/content/Context;)Lcom/oneaudience/sdk/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneaudience/sdk/l;->c()V

    :goto_0
    invoke-virtual {p0}, Lcom/oneaudience/sdk/k;->dismiss()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oneaudience/sdk/k;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneaudience/sdk/l;->a(Landroid/content/Context;)Lcom/oneaudience/sdk/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneaudience/sdk/l;->d()V

    goto :goto_0
.end method

.method public b(Lcom/oneaudience/sdk/m;)V
    .locals 0

    invoke-virtual {p0}, Lcom/oneaudience/sdk/k;->dismiss()V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    iget-object v0, p0, Lcom/oneaudience/sdk/k;->c:Lcom/oneaudience/sdk/m;

    invoke-virtual {v0}, Lcom/oneaudience/sdk/m;->a()V

    return-void
.end method
