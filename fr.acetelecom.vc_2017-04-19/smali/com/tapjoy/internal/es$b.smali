.class final Lcom/tapjoy/internal/es$b;
.super Lcom/tapjoy/internal/db;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/es;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/internal/es;

.field private b:Z

.field private c:Z

.field private d:Landroid/content/Context;

.field private e:Landroid/content/BroadcastReceiver;


# direct methods
.method private constructor <init>(Lcom/tapjoy/internal/es;)V
    .locals 1

    iput-object p1, p0, Lcom/tapjoy/internal/es$b;->a:Lcom/tapjoy/internal/es;

    invoke-direct {p0}, Lcom/tapjoy/internal/db;-><init>()V

    new-instance v0, Lcom/tapjoy/internal/es$b$2;

    invoke-direct {v0, p0}, Lcom/tapjoy/internal/es$b$2;-><init>(Lcom/tapjoy/internal/es$b;)V

    iput-object v0, p0, Lcom/tapjoy/internal/es$b;->e:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method synthetic constructor <init>(Lcom/tapjoy/internal/es;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tapjoy/internal/es$b;-><init>(Lcom/tapjoy/internal/es;)V

    return-void
.end method

.method static synthetic a(Lcom/tapjoy/internal/es$b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/tapjoy/internal/es$b;->c:Z

    return p1
.end method

.method private h()V
    .locals 2

    iget-object v0, p0, Lcom/tapjoy/internal/es$b;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/tapjoy/internal/es$b;->e:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 3

    iget-object v0, p0, Lcom/tapjoy/internal/es$b;->a:Lcom/tapjoy/internal/es;

    sget v1, Lcom/tapjoy/internal/es$c;->c:I

    sget v2, Lcom/tapjoy/internal/es$c;->b:I

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/es;->a(I)V

    return-void
.end method

.method protected final b()V
    .locals 8

    iget-object v0, p0, Lcom/tapjoy/internal/es$b;->a:Lcom/tapjoy/internal/es;

    invoke-virtual {v0}, Lcom/tapjoy/internal/es;->a()Lcom/tapjoy/internal/es$a;

    move-result-object v0

    iget-object v0, v0, Lcom/tapjoy/internal/es$a;->a:Landroid/content/Context;

    iput-object v0, p0, Lcom/tapjoy/internal/es$b;->d:Landroid/content/Context;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tapjoy/internal/es$b;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/tapjoy/internal/es$b;->e:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/tapjoy/internal/es$b;->b:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sget-object v1, Lcom/tapjoy/internal/eo;->b:Lcom/tapjoy/internal/eo$a;

    new-instance v2, Lcom/tapjoy/internal/es$b$1;

    invoke-direct {v2, p0, v0}, Lcom/tapjoy/internal/es$b$1;-><init>(Lcom/tapjoy/internal/es$b;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/eo$a;->addObserver(Ljava/util/Observer;)V

    iget-object v1, p0, Lcom/tapjoy/internal/es$b;->a:Lcom/tapjoy/internal/es;

    invoke-virtual {v1}, Lcom/tapjoy/internal/es;->a()Lcom/tapjoy/internal/es$a;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/es$b;->a:Lcom/tapjoy/internal/es;

    iget-object v3, v1, Lcom/tapjoy/internal/es$a;->a:Landroid/content/Context;

    iget-object v4, v1, Lcom/tapjoy/internal/es$a;->b:Ljava/lang/String;

    iget-object v1, v1, Lcom/tapjoy/internal/es$a;->c:Ljava/util/Hashtable;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v1, v5}, Lcom/tapjoy/internal/es;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/TJConnectListener;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/tapjoy/internal/es$b;->a:Lcom/tapjoy/internal/es;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tapjoy/internal/es;->a(Lcom/tapjoy/internal/es;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/tapjoy/internal/es$b;->h()V

    :goto_1
    return-void

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    :try_start_2
    iget-boolean v0, p0, Lcom/tapjoy/internal/es$b;->c:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tapjoy/internal/es$b;->a:Lcom/tapjoy/internal/es;

    sget v1, Lcom/tapjoy/internal/es$c;->e:I

    sget v2, Lcom/tapjoy/internal/es$c;->c:I

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/es;->a(I)V

    iget-object v0, p0, Lcom/tapjoy/internal/es$b;->a:Lcom/tapjoy/internal/es;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tapjoy/internal/es;->a(Lcom/tapjoy/internal/es;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-direct {p0}, Lcom/tapjoy/internal/es$b;->h()V

    goto :goto_1

    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/tapjoy/internal/es$b;->a:Lcom/tapjoy/internal/es;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tapjoy/internal/es;->a(Lcom/tapjoy/internal/es;Z)V

    iget-object v0, p0, Lcom/tapjoy/internal/es$b;->a:Lcom/tapjoy/internal/es;

    iget-wide v0, v0, Lcom/tapjoy/internal/es;->d:J

    const-wide/16 v2, 0x3e8

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iget-object v2, p0, Lcom/tapjoy/internal/es$b;->a:Lcom/tapjoy/internal/es;

    const/4 v3, 0x2

    shl-long v4, v0, v3

    const-wide/32 v6, 0x36ee80

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/tapjoy/internal/es;->d:J

    iget-object v2, p0, Lcom/tapjoy/internal/es$b;->a:Lcom/tapjoy/internal/es;

    invoke-virtual {v2, v0, v1}, Lcom/tapjoy/internal/es;->a(J)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/tapjoy/internal/es$b;->h()V

    throw v0

    :cond_2
    invoke-direct {p0}, Lcom/tapjoy/internal/es$b;->h()V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method protected final c()V
    .locals 3

    iget-object v0, p0, Lcom/tapjoy/internal/es$b;->a:Lcom/tapjoy/internal/es;

    iget-object v0, v0, Lcom/tapjoy/internal/es;->c:Lcom/tapjoy/internal/es$b;

    if-ne v0, p0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/internal/es$b;->a:Lcom/tapjoy/internal/es;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/tapjoy/internal/es;->c:Lcom/tapjoy/internal/es$b;

    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/es$b;->a:Lcom/tapjoy/internal/es;

    iget v0, v0, Lcom/tapjoy/internal/es;->b:I

    sget v1, Lcom/tapjoy/internal/es$c;->c:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/tapjoy/internal/es$b;->a:Lcom/tapjoy/internal/es;

    sget v1, Lcom/tapjoy/internal/es$c;->a:I

    sget v2, Lcom/tapjoy/internal/es$c;->c:I

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/es;->a(I)V

    :cond_1
    return-void
.end method

.method protected final d()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/internal/es$b;->b:Z

    iget-object v0, p0, Lcom/tapjoy/internal/es$b;->a:Lcom/tapjoy/internal/es;

    invoke-virtual {v0}, Lcom/tapjoy/internal/es;->b()V

    return-void
.end method
