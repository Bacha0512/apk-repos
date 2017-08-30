.class final Lcom/tapjoy/FiveRocksIntegration$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tapjoy/internal/ez;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/FiveRocksIntegration$1;->e(Ljava/lang/String;)Lcom/tapjoy/internal/ez;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/tapjoy/FiveRocksIntegration$1;


# direct methods
.method constructor <init>(Lcom/tapjoy/FiveRocksIntegration$1;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/FiveRocksIntegration$1$1;->b:Lcom/tapjoy/FiveRocksIntegration$1;

    iput-object p2, p0, Lcom/tapjoy/FiveRocksIntegration$1$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/tapjoy/FiveRocksIntegration;->a()Lcom/tapjoy/internal/bd;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/tapjoy/FiveRocksIntegration;->a()Lcom/tapjoy/internal/bd;

    move-result-object v0

    iget-object v2, p0, Lcom/tapjoy/FiveRocksIntegration$1$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/bd;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/TJPlacement;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/tapjoy/TJPlacement;->c:Lcom/tapjoy/TJPlacementListener;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/tapjoy/FiveRocksIntegration$1$1$1;

    invoke-direct {v1, p0, p1}, Lcom/tapjoy/FiveRocksIntegration$1$1$1;-><init>(Lcom/tapjoy/FiveRocksIntegration$1$1;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/tapjoy/TJPlacement;->c:Lcom/tapjoy/TJPlacementListener;

    invoke-interface {v2, v0, v1, p2}, Lcom/tapjoy/TJPlacementListener;->onPurchaseRequest(Lcom/tapjoy/TJPlacement;Lcom/tapjoy/TJActionRequest;Ljava/lang/String;)V

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

.method public final a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/tapjoy/FiveRocksIntegration;->a()Lcom/tapjoy/internal/bd;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/tapjoy/FiveRocksIntegration;->a()Lcom/tapjoy/internal/bd;

    move-result-object v0

    iget-object v2, p0, Lcom/tapjoy/FiveRocksIntegration$1$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/bd;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/TJPlacement;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/tapjoy/TJPlacement;->c:Lcom/tapjoy/TJPlacementListener;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/tapjoy/FiveRocksIntegration$1$1$2;

    invoke-direct {v1, p0, p1, p4}, Lcom/tapjoy/FiveRocksIntegration$1$1$2;-><init>(Lcom/tapjoy/FiveRocksIntegration$1$1;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/tapjoy/TJPlacement;->c:Lcom/tapjoy/TJPlacementListener;

    invoke-interface {v2, v0, v1, p2, p3}, Lcom/tapjoy/TJPlacementListener;->onRewardRequest(Lcom/tapjoy/TJPlacement;Lcom/tapjoy/TJActionRequest;Ljava/lang/String;I)V

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
