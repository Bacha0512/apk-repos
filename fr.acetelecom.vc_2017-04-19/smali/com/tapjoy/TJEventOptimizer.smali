.class public Lcom/tapjoy/TJEventOptimizer;
.super Landroid/webkit/WebView;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SetJavaScriptEnabled"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/TJEventOptimizer$a;,
        Lcom/tapjoy/TJEventOptimizer$b;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Lcom/tapjoy/TJEventOptimizer;

.field private static c:Ljava/util/concurrent/CountDownLatch;


# instance fields
.field private d:Landroid/content/Context;

.field private e:Lcom/tapjoy/TJAdUnitJSBridge;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "TJEventOptimizer"

    sput-object v0, Lcom/tapjoy/TJEventOptimizer;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/tapjoy/TJEventOptimizer;->d:Landroid/content/Context;

    new-instance v0, Lcom/tapjoy/TJAdUnitJSBridge;

    iget-object v1, p0, Lcom/tapjoy/TJEventOptimizer;->d:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/tapjoy/TJAdUnitJSBridge;-><init>(Landroid/content/Context;Landroid/webkit/WebView;)V

    iput-object v0, p0, Lcom/tapjoy/TJEventOptimizer;->e:Lcom/tapjoy/TJAdUnitJSBridge;

    invoke-virtual {p0}, Lcom/tapjoy/TJEventOptimizer;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    new-instance v0, Lcom/tapjoy/TJEventOptimizer$b;

    invoke-direct {v0, p0, v2}, Lcom/tapjoy/TJEventOptimizer$b;-><init>(Lcom/tapjoy/TJEventOptimizer;B)V

    invoke-virtual {p0, v0}, Lcom/tapjoy/TJEventOptimizer;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    new-instance v0, Lcom/tapjoy/TJEventOptimizer$a;

    invoke-direct {v0, p0, v2}, Lcom/tapjoy/TJEventOptimizer$a;-><init>(Lcom/tapjoy/TJEventOptimizer;B)V

    invoke-virtual {p0, v0}, Lcom/tapjoy/TJEventOptimizer;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getHostURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "events/proxy?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getGenericURLParams()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/tapjoy/TapjoyUtil;->convertURLParams(Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tapjoy/TJEventOptimizer;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tapjoy/TJEventOptimizer;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/tapjoy/TJEventOptimizer;)Lcom/tapjoy/TJEventOptimizer;
    .locals 0

    sput-object p0, Lcom/tapjoy/TJEventOptimizer;->b:Lcom/tapjoy/TJEventOptimizer;

    return-object p0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tapjoy/TJEventOptimizer;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b()Ljava/util/concurrent/CountDownLatch;
    .locals 1

    sget-object v0, Lcom/tapjoy/TJEventOptimizer;->c:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method public static getInstance()Lcom/tapjoy/TJEventOptimizer;
    .locals 1

    sget-object v0, Lcom/tapjoy/TJEventOptimizer;->b:Lcom/tapjoy/TJEventOptimizer;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/tapjoy/TJEventOptimizer;->a:Ljava/lang/String;

    const-string v1, "Initializing event optimizer"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v0, Lcom/tapjoy/TJEventOptimizer;->c:Ljava/util/concurrent/CountDownLatch;

    new-instance v0, Lcom/tapjoy/TJEventOptimizer$1;

    invoke-direct {v0, p0}, Lcom/tapjoy/TJEventOptimizer$1;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/tapjoy/TapjoyUtil;->runOnMainThread(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/tapjoy/TJEventOptimizer;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    sget-object v0, Lcom/tapjoy/TJEventOptimizer;->b:Lcom/tapjoy/TJEventOptimizer;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to init TJEventOptimizer"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method
