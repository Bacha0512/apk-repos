.class public Lcom/tapjoy/TJPlacementManager;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/tapjoy/internal/bd;

.field private static b:I

.field private static c:I

.field private static d:I

.field private static e:I

.field private static f:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x3

    const/4 v1, 0x0

    invoke-static {}, Lcom/tapjoy/internal/bd;->a()Lcom/tapjoy/internal/bd;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/TJPlacementManager;->a:Lcom/tapjoy/internal/bd;

    sput v1, Lcom/tapjoy/TJPlacementManager;->b:I

    sput v1, Lcom/tapjoy/TJPlacementManager;->c:I

    sput v2, Lcom/tapjoy/TJPlacementManager;->d:I

    sput v2, Lcom/tapjoy/TJPlacementManager;->e:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tapjoy/TJPlacementManager;->f:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/lang/String;ZJJ)V
    .locals 8

    const-wide/16 v4, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    cmp-long v1, p4, v4

    if-lez v1, :cond_1

    :goto_0
    sub-long v2, p2, p4

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    sget-object v1, Lcom/tapjoy/TJPlacementManager;->f:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    sget-object v4, Lcom/tapjoy/TJPlacementManager;->f:Ljava/util/Map;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    add-long/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v4, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/tapjoy/internal/y;->b()J

    move-result-wide p4

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static a(Ljava/lang/String;Z)Z
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/tapjoy/TJPlacementManager;->f:Ljava/util/Map;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lcom/tapjoy/TJPlacementManager;->f:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_0

    const/4 v0, 0x1

    monitor-exit v2

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/tapjoy/TJPlacementManager;->f:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    monitor-exit v2

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static canCachePlacement()Z
    .locals 2

    invoke-static {}, Lcom/tapjoy/TJPlacementManager;->getCachedPlacementCount()I

    move-result v0

    invoke-static {}, Lcom/tapjoy/TJPlacementManager;->getCachedPlacementLimit()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static canPreRenderPlacement()Z
    .locals 2

    invoke-static {}, Lcom/tapjoy/TJPlacementManager;->getPreRenderedPlacementCount()I

    move-result v0

    invoke-static {}, Lcom/tapjoy/TJPlacementManager;->getPreRenderedPlacementLimit()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static decrementPlacementCacheCount()V
    .locals 1

    sget v0, Lcom/tapjoy/TJPlacementManager;->b:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/tapjoy/TJPlacementManager;->b:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    sput v0, Lcom/tapjoy/TJPlacementManager;->b:I

    :cond_0
    invoke-static {}, Lcom/tapjoy/TJPlacementManager;->printPlacementCacheInformation()V

    return-void
.end method

.method public static decrementPlacementPreRenderCount()V
    .locals 1

    sget v0, Lcom/tapjoy/TJPlacementManager;->c:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/tapjoy/TJPlacementManager;->c:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    sput v0, Lcom/tapjoy/TJPlacementManager;->c:I

    :cond_0
    return-void
.end method

.method public static dismissContentShowing(Z)V
    .locals 3

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/tapjoy/TJAdUnitActivity;->a()V

    :cond_0
    sget-object v0, Lcom/tapjoy/internal/fr;->a:Lcom/tapjoy/internal/fr;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/tapjoy/internal/fr;->c()V

    :cond_1
    sget-object v0, Lcom/tapjoy/internal/fi;->a:Lcom/tapjoy/internal/fi;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/tapjoy/internal/fi$1;

    invoke-direct {v1, v0}, Lcom/tapjoy/internal/fi$1;-><init>(Lcom/tapjoy/internal/fi;)V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v0, v2, :cond_3

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :cond_2
    :goto_1
    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/tapjoy/internal/x;->a()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method public static get(Ljava/lang/String;)Lcom/tapjoy/TJPlacement;
    .locals 2

    sget-object v1, Lcom/tapjoy/TJPlacementManager;->a:Lcom/tapjoy/internal/bd;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tapjoy/TJPlacementManager;->a:Lcom/tapjoy/internal/bd;

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/bd;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/TJPlacement;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getCachedPlacementCount()I
    .locals 1

    sget v0, Lcom/tapjoy/TJPlacementManager;->b:I

    return v0
.end method

.method public static getCachedPlacementLimit()I
    .locals 1

    sget v0, Lcom/tapjoy/TJPlacementManager;->d:I

    return v0
.end method

.method public static getPreRenderedPlacementCount()I
    .locals 1

    sget v0, Lcom/tapjoy/TJPlacementManager;->c:I

    return v0
.end method

.method public static getPreRenderedPlacementLimit()I
    .locals 1

    sget v0, Lcom/tapjoy/TJPlacementManager;->e:I

    return v0
.end method

.method public static incrementPlacementCacheCount()V
    .locals 2

    sget v0, Lcom/tapjoy/TJPlacementManager;->b:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/tapjoy/TJPlacementManager;->b:I

    sget v1, Lcom/tapjoy/TJPlacementManager;->d:I

    if-le v0, v1, :cond_0

    sget v0, Lcom/tapjoy/TJPlacementManager;->d:I

    sput v0, Lcom/tapjoy/TJPlacementManager;->b:I

    :cond_0
    invoke-static {}, Lcom/tapjoy/TJPlacementManager;->printPlacementCacheInformation()V

    return-void
.end method

.method public static incrementPlacementPreRenderCount()V
    .locals 2

    sget v0, Lcom/tapjoy/TJPlacementManager;->c:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/tapjoy/TJPlacementManager;->c:I

    sget v1, Lcom/tapjoy/TJPlacementManager;->e:I

    if-le v0, v1, :cond_0

    sget v0, Lcom/tapjoy/TJPlacementManager;->e:I

    sput v0, Lcom/tapjoy/TJPlacementManager;->c:I

    :cond_0
    return-void
.end method

.method public static printPlacementCacheInformation()V
    .locals 3

    const-string v0, "TJPlacementManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Space available in placement cache: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/tapjoy/TJPlacementManager;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " out of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/tapjoy/TJPlacementManager;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static printPlacementPreRenderInformation()V
    .locals 3

    const-string v0, "TJPlacementManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Space available for placement pre-render: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/tapjoy/TJPlacementManager;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " out of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/tapjoy/TJPlacementManager;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static put(Ljava/lang/String;Lcom/tapjoy/TJPlacement;)V
    .locals 2

    sget-object v1, Lcom/tapjoy/TJPlacementManager;->a:Lcom/tapjoy/internal/bd;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tapjoy/TJPlacementManager;->a:Lcom/tapjoy/internal/bd;

    invoke-virtual {v0, p0, p1}, Lcom/tapjoy/internal/bd;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static setCachedPlacementLimit(I)V
    .locals 0

    sput p0, Lcom/tapjoy/TJPlacementManager;->d:I

    return-void
.end method

.method public static setPreRenderedPlacementLimit(I)V
    .locals 0

    sput p0, Lcom/tapjoy/TJPlacementManager;->e:I

    return-void
.end method
