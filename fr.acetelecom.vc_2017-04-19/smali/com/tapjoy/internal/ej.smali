.class public final Lcom/tapjoy/internal/ej;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/tapjoy/internal/ej;


# instance fields
.field private b:Landroid/app/Application;

.field private c:Landroid/app/Application$ActivityLifecycleCallbacks;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tapjoy/internal/ej;

    invoke-direct {v0}, Lcom/tapjoy/internal/ej;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/ej;->a:Lcom/tapjoy/internal/ej;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/tapjoy/internal/ej;Landroid/app/Application;)Landroid/app/Application;
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/internal/ej;->b:Landroid/app/Application;

    return-object p1
.end method

.method public static a()V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v1, Lcom/tapjoy/internal/ej;->a:Lcom/tapjoy/internal/ej;

    iget-object v0, v1, Lcom/tapjoy/internal/ej;->b:Landroid/app/Application;

    if-eqz v0, :cond_0

    monitor-enter v1

    :try_start_0
    iget-object v0, v1, Lcom/tapjoy/internal/ej;->c:Landroid/app/Application$ActivityLifecycleCallbacks;

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/tapjoy/internal/ej;->b:Landroid/app/Application;

    iget-object v2, v1, Lcom/tapjoy/internal/ej;->c:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v2}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    const/4 v0, 0x0

    iput-object v0, v1, Lcom/tapjoy/internal/ej;->c:Landroid/app/Application$ActivityLifecycleCallbacks;

    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p0, :cond_0

    sget-object v1, Lcom/tapjoy/internal/ej;->a:Lcom/tapjoy/internal/ej;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, v1, Lcom/tapjoy/internal/ej;->b:Landroid/app/Application;

    if-nez v2, :cond_2

    :try_start_0
    instance-of v2, v0, Landroid/app/Application;

    if-eqz v2, :cond_4

    check-cast v0, Landroid/app/Application;

    iput-object v0, v1, Lcom/tapjoy/internal/ej;->b:Landroid/app/Application;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, v1, Lcom/tapjoy/internal/ej;->b:Landroid/app/Application;

    if-eqz v0, :cond_0

    :cond_2
    monitor-enter v1

    :try_start_1
    iget-object v0, v1, Lcom/tapjoy/internal/ej;->c:Landroid/app/Application$ActivityLifecycleCallbacks;

    if-nez v0, :cond_3

    new-instance v0, Lcom/tapjoy/internal/ej$2;

    invoke-direct {v0, v1}, Lcom/tapjoy/internal/ej$2;-><init>(Lcom/tapjoy/internal/ej;)V

    iput-object v0, v1, Lcom/tapjoy/internal/ej;->c:Landroid/app/Application$ActivityLifecycleCallbacks;

    iget-object v0, v1, Lcom/tapjoy/internal/ej;->b:Landroid/app/Application;

    iget-object v2, v1, Lcom/tapjoy/internal/ej;->c:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    invoke-static {}, Lcom/tapjoy/internal/fa;->a()V

    :cond_3
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_4
    :try_start_2
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v2, Lcom/tapjoy/internal/ej$1;

    invoke-direct {v2, v1, v0}, Lcom/tapjoy/internal/ej$1;-><init>(Lcom/tapjoy/internal/ej;Ljava/util/concurrent/CountDownLatch;)V

    invoke-static {v2}, Lcom/tapjoy/TapjoyUtil;->runOnMainThread(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v2, "Tapjoy.ActivityLifecycleTracker"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tapjoy/TapjoyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic b()Landroid/app/Application;
    .locals 4

    const/4 v3, 0x0

    const-string v0, "android.app.ActivityThread"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "currentApplication"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    return-object v0
.end method
