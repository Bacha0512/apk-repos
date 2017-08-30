.class public final Lcom/tapjoy/internal/y;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:J

.field private static volatile c:Z

.field private static volatile d:Ljava/lang/String;

.field private static volatile e:J

.field private static volatile f:J

.field private static volatile g:J

.field private static volatile h:J

.field private static volatile i:J


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v0, 0x0

    const-string v1, "pool.ntp.org"

    sput-object v1, Lcom/tapjoy/internal/y;->a:Ljava/lang/String;

    const-wide/16 v2, 0x4e20

    sput-wide v2, Lcom/tapjoy/internal/y;->b:J

    sput-boolean v0, Lcom/tapjoy/internal/y;->c:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-string v1, "System"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide v6, 0x7fffffffffffffffL

    invoke-static/range {v0 .. v7}, Lcom/tapjoy/internal/y;->a(ZLjava/lang/String;JJJ)V

    return-void
.end method

.method public static a(J)J
    .locals 2

    sget-wide v0, Lcom/tapjoy/internal/y;->h:J

    add-long/2addr v0, p0

    return-wide v0
.end method

.method private static declared-synchronized a(ZLjava/lang/String;JJJ)V
    .locals 6

    const-class v1, Lcom/tapjoy/internal/y;

    monitor-enter v1

    :try_start_0
    sput-boolean p0, Lcom/tapjoy/internal/y;->c:Z

    sput-object p1, Lcom/tapjoy/internal/y;->d:Ljava/lang/String;

    sput-wide p2, Lcom/tapjoy/internal/y;->e:J

    sput-wide p4, Lcom/tapjoy/internal/y;->f:J

    sput-wide p6, Lcom/tapjoy/internal/y;->g:J

    sget-wide v2, Lcom/tapjoy/internal/y;->e:J

    sget-wide v4, Lcom/tapjoy/internal/y;->f:J

    sub-long/2addr v2, v4

    sput-wide v2, Lcom/tapjoy/internal/y;->h:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sget-wide v4, Lcom/tapjoy/internal/y;->h:J

    add-long/2addr v2, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    sput-wide v2, Lcom/tapjoy/internal/y;->i:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a()Z
    .locals 10

    const/4 v0, 0x1

    sget-object v1, Lcom/tapjoy/internal/y;->a:Ljava/lang/String;

    sget-wide v2, Lcom/tapjoy/internal/y;->b:J

    new-instance v6, Lcom/tapjoy/internal/ex;

    invoke-direct {v6}, Lcom/tapjoy/internal/ex;-><init>()V

    long-to-int v2, v2

    invoke-virtual {v6, v1, v2}, Lcom/tapjoy/internal/ex;->a(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SNTP"

    iget-wide v2, v6, Lcom/tapjoy/internal/ex;->a:J

    iget-wide v4, v6, Lcom/tapjoy/internal/ex;->b:J

    iget-wide v6, v6, Lcom/tapjoy/internal/ex;->c:J

    const-wide/16 v8, 0x2

    div-long/2addr v6, v8

    invoke-static/range {v0 .. v7}, Lcom/tapjoy/internal/y;->a(ZLjava/lang/String;JJJ)V

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b()J
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-wide v2, Lcom/tapjoy/internal/y;->h:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public static c()Z
    .locals 1

    sget-boolean v0, Lcom/tapjoy/internal/y;->c:Z

    return v0
.end method
