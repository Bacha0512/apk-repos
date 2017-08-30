.class final Lcom/tapjoy/FiveRocksIntegration$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tapjoy/internal/fb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/FiveRocksIntegration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private e(Ljava/lang/String;)Lcom/tapjoy/internal/ez;
    .locals 1

    new-instance v0, Lcom/tapjoy/FiveRocksIntegration$1$1;

    invoke-direct {v0, p0, p1}, Lcom/tapjoy/FiveRocksIntegration$1$1;-><init>(Lcom/tapjoy/FiveRocksIntegration$1;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/tapjoy/internal/ey;)V
    .locals 1

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lcom/tapjoy/FiveRocksIntegration$1;->e(Ljava/lang/String;)Lcom/tapjoy/internal/ez;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/tapjoy/internal/ey;->a(Lcom/tapjoy/internal/ez;)V

    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/tapjoy/FiveRocksIntegration;->a()Lcom/tapjoy/internal/bd;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/tapjoy/FiveRocksIntegration;->a()Lcom/tapjoy/internal/bd;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/bd;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/TJPlacement;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/tapjoy/TJPlacement;->c:Lcom/tapjoy/TJPlacementListener;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/tapjoy/TJPlacement;->c:Lcom/tapjoy/TJPlacementListener;

    invoke-interface {v1, v0}, Lcom/tapjoy/TJPlacementListener;->onContentReady(Lcom/tapjoy/TJPlacement;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final b(Ljava/lang/String;Lcom/tapjoy/internal/ey;)V
    .locals 2

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lcom/tapjoy/FiveRocksIntegration$1;->e(Ljava/lang/String;)Lcom/tapjoy/internal/ez;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/tapjoy/internal/ey;->a(Lcom/tapjoy/internal/ez;)V

    :cond_0
    invoke-static {}, Lcom/tapjoy/FiveRocksIntegration;->a()Lcom/tapjoy/internal/bd;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/tapjoy/FiveRocksIntegration;->a()Lcom/tapjoy/internal/bd;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/bd;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/TJPlacement;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacement;->getGUID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tapjoy/TapjoyConnectCore;->viewDidClose(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/tapjoy/TJPlacement;->c:Lcom/tapjoy/TJPlacementListener;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/tapjoy/TJPlacement;->c:Lcom/tapjoy/TJPlacementListener;

    invoke-interface {v1, v0}, Lcom/tapjoy/TJPlacementListener;->onContentDismiss(Lcom/tapjoy/TJPlacement;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/tapjoy/FiveRocksIntegration;->a()Lcom/tapjoy/internal/bd;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/tapjoy/FiveRocksIntegration;->a()Lcom/tapjoy/internal/bd;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/bd;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/TJPlacement;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/tapjoy/TJPlacement;->c:Lcom/tapjoy/TJPlacementListener;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/tapjoy/TJPlacement;->c:Lcom/tapjoy/TJPlacementListener;

    invoke-interface {v1, v0}, Lcom/tapjoy/TJPlacementListener;->onContentShow(Lcom/tapjoy/TJPlacement;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
