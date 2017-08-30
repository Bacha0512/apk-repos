.class public final Lcom/tapjoy/internal/at$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tapjoy/internal/aw;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/at;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/tapjoy/internal/au;


# direct methods
.method public constructor <init>(Lcom/tapjoy/internal/au;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tapjoy/internal/at$a;->a:Lcom/tapjoy/internal/au;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v1, p0, Lcom/tapjoy/internal/at$a;->a:Lcom/tapjoy/internal/au;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/at$a;->a:Lcom/tapjoy/internal/au;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Lcom/tapjoy/internal/au;->a(Ljava/lang/Object;Z)Lcom/tapjoy/internal/as;

    move-result-object v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    monitor-enter v2

    :try_start_1
    invoke-interface {v2}, Lcom/tapjoy/internal/as;->a()Ljava/lang/Object;

    move-result-object v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    return-object v0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget-object v1, p0, Lcom/tapjoy/internal/at$a;->a:Lcom/tapjoy/internal/au;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/at$a;->a:Lcom/tapjoy/internal/au;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2}, Lcom/tapjoy/internal/au;->a(Ljava/lang/Object;Z)Lcom/tapjoy/internal/as;

    move-result-object v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-enter v2

    :try_start_1
    invoke-interface {v2, p2}, Lcom/tapjoy/internal/as;->a(Ljava/lang/Object;)V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method
