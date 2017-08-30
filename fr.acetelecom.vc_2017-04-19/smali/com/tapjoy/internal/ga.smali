.class public final Lcom/tapjoy/internal/ga;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/util/concurrent/ScheduledExecutorService;

.field public static final b:Ljava/util/concurrent/CountDownLatch;

.field public static final c:Ljava/util/concurrent/CountDownLatch;

.field private static final d:Ljava/lang/Runnable;

.field private static e:Ljava/lang/String;

.field private static f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/internal/ga;->a:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v0, Lcom/tapjoy/internal/ga;->b:Ljava/util/concurrent/CountDownLatch;

    new-instance v0, Lcom/tapjoy/internal/ga$1;

    invoke-direct {v0}, Lcom/tapjoy/internal/ga$1;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/ga;->d:Ljava/lang/Runnable;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v0, Lcom/tapjoy/internal/ga;->c:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method public static a()V
    .locals 2

    sget-object v0, Lcom/tapjoy/internal/ga;->a:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v1, Lcom/tapjoy/internal/ga;->d:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Z)V
    .locals 1

    sput-object p0, Lcom/tapjoy/internal/ga;->e:Ljava/lang/String;

    sput-boolean p1, Lcom/tapjoy/internal/ga;->f:Z

    sget-object v0, Lcom/tapjoy/internal/ga;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tapjoy/internal/ga;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static c()Z
    .locals 1

    sget-boolean v0, Lcom/tapjoy/internal/ga;->f:Z

    return v0
.end method
