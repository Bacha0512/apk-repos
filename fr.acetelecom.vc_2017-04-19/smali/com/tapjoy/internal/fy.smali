.class public final Lcom/tapjoy/internal/fy;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Flushable;


# instance fields
.field final a:Ljava/lang/Object;

.field b:Lcom/tapjoy/internal/bb;

.field private final c:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tapjoy/internal/fy;->c:Ljava/io/File;

    iput-object p0, p0, Lcom/tapjoy/internal/fy;->a:Ljava/lang/Object;

    :try_start_0
    new-instance v0, Lcom/tapjoy/internal/i;

    sget-object v1, Lcom/tapjoy/internal/gd$c;->b:Lcom/tapjoy/internal/dw;

    new-instance v2, Lcom/tapjoy/internal/gu;

    invoke-direct {v2, v1}, Lcom/tapjoy/internal/gu;-><init>(Lcom/tapjoy/internal/dw;)V

    invoke-direct {v0, p1, v2}, Lcom/tapjoy/internal/i;-><init>(Ljava/io/File;Lcom/tapjoy/internal/bh;)V

    invoke-static {v0}, Lcom/tapjoy/internal/ay;->a(Lcom/tapjoy/internal/bb;)Lcom/tapjoy/internal/ay;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/fy;->b:Lcom/tapjoy/internal/bb;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/tapjoy/internal/fy;->a()V

    goto :goto_0
.end method


# virtual methods
.method final a()V
    .locals 2

    iget-object v0, p0, Lcom/tapjoy/internal/fy;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    iget-object v0, p0, Lcom/tapjoy/internal/fy;->b:Lcom/tapjoy/internal/bb;

    instance-of v0, v0, Ljava/io/Closeable;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/fy;->b:Lcom/tapjoy/internal/bb;

    check-cast v0, Ljava/io/Closeable;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    new-instance v0, Lcom/tapjoy/internal/az;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-direct {v0, v1}, Lcom/tapjoy/internal/az;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/tapjoy/internal/fy;->b:Lcom/tapjoy/internal/bb;

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final a(I)V
    .locals 2

    iget-object v1, p0, Lcom/tapjoy/internal/fy;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/fy;->b:Lcom/tapjoy/internal/bb;

    invoke-interface {v0, p1}, Lcom/tapjoy/internal/bb;->b(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/tapjoy/internal/fy;->a()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final b()I
    .locals 2

    iget-object v1, p0, Lcom/tapjoy/internal/fy;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/fy;->b:Lcom/tapjoy/internal/bb;

    invoke-interface {v0}, Lcom/tapjoy/internal/bb;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    :try_start_1
    monitor-exit v1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/tapjoy/internal/fy;->a()V

    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final b(I)Lcom/tapjoy/internal/gd$c;
    .locals 2

    iget-object v1, p0, Lcom/tapjoy/internal/fy;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/fy;->b:Lcom/tapjoy/internal/bb;

    invoke-interface {v0, p1}, Lcom/tapjoy/internal/bb;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/gd$c;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/tapjoy/internal/fy;->a()V

    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final c()Z
    .locals 2

    iget-object v1, p0, Lcom/tapjoy/internal/fy;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/fy;->b:Lcom/tapjoy/internal/bb;

    invoke-interface {v0}, Lcom/tapjoy/internal/bb;->isEmpty()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    :try_start_1
    monitor-exit v1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/tapjoy/internal/fy;->a()V

    const/4 v0, 0x1

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final flush()V
    .locals 2

    iget-object v1, p0, Lcom/tapjoy/internal/fy;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/fy;->b:Lcom/tapjoy/internal/bb;

    instance-of v0, v0, Ljava/io/Flushable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/tapjoy/internal/fy;->b:Lcom/tapjoy/internal/bb;

    check-cast v0, Ljava/io/Flushable;

    invoke-interface {v0}, Ljava/io/Flushable;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/tapjoy/internal/fy;->a()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
