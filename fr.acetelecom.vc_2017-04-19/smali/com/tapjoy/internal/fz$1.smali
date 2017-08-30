.class final Lcom/tapjoy/internal/fz$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/fz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/internal/fz;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/fz;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/internal/fz$1;->a:Lcom/tapjoy/internal/fz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/tapjoy/internal/fz$1;->a:Lcom/tapjoy/internal/fz;

    iget-object v0, v0, Lcom/tapjoy/internal/fz;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "The session ended"

    invoke-static {v0}, Lcom/tapjoy/internal/fj;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tapjoy/internal/fz$1;->a:Lcom/tapjoy/internal/fz;

    iget-object v0, v0, Lcom/tapjoy/internal/fz;->a:Lcom/tapjoy/internal/fl;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/tapjoy/internal/fl;->c:J

    sub-long/2addr v2, v4

    iget-object v1, v0, Lcom/tapjoy/internal/fl;->a:Lcom/tapjoy/internal/fp;

    monitor-enter v1

    :try_start_0
    iget-object v4, v1, Lcom/tapjoy/internal/fp;->c:Lcom/tapjoy/internal/fw;

    iget-object v4, v4, Lcom/tapjoy/internal/fw;->i:Lcom/tapjoy/internal/n;

    invoke-virtual {v4}, Lcom/tapjoy/internal/n;->a()J

    move-result-wide v4

    add-long/2addr v4, v2

    iget-object v6, v1, Lcom/tapjoy/internal/fp;->c:Lcom/tapjoy/internal/fw;

    iget-object v6, v6, Lcom/tapjoy/internal/fw;->i:Lcom/tapjoy/internal/n;

    invoke-virtual {v6, v4, v5}, Lcom/tapjoy/internal/n;->a(J)V

    iget-object v6, v1, Lcom/tapjoy/internal/fp;->b:Lcom/tapjoy/internal/gd$z$a;

    invoke-virtual {v6, v4, v5}, Lcom/tapjoy/internal/gd$z$a;->b(J)Lcom/tapjoy/internal/gd$z$a;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v1, Lcom/tapjoy/internal/gd$i;->a:Lcom/tapjoy/internal/gd$i;

    const-string v4, "session"

    invoke-virtual {v0, v1, v4}, Lcom/tapjoy/internal/fl;->a(Lcom/tapjoy/internal/gd$i;Ljava/lang/String;)Lcom/tapjoy/internal/gd$c$a;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Lcom/tapjoy/internal/gd$c$a;->d(J)Lcom/tapjoy/internal/gd$c$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/fl;->a(Lcom/tapjoy/internal/gd$c$a;)V

    const-wide/16 v4, 0x0

    iput-wide v4, v0, Lcom/tapjoy/internal/fl;->c:J

    iget-object v4, v0, Lcom/tapjoy/internal/fl;->a:Lcom/tapjoy/internal/fp;

    iget-wide v6, v1, Lcom/tapjoy/internal/gd$c$a;->e:J

    monitor-enter v4

    :try_start_1
    iget-object v1, v4, Lcom/tapjoy/internal/fp;->c:Lcom/tapjoy/internal/fw;

    invoke-virtual {v1}, Lcom/tapjoy/internal/fw;->a()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v5, v4, Lcom/tapjoy/internal/fp;->c:Lcom/tapjoy/internal/fw;

    iget-object v5, v5, Lcom/tapjoy/internal/fw;->j:Lcom/tapjoy/internal/n;

    invoke-virtual {v5, v1, v6, v7}, Lcom/tapjoy/internal/n;->a(Landroid/content/SharedPreferences$Editor;J)Landroid/content/SharedPreferences$Editor;

    iget-object v5, v4, Lcom/tapjoy/internal/fp;->c:Lcom/tapjoy/internal/fw;

    iget-object v5, v5, Lcom/tapjoy/internal/fw;->k:Lcom/tapjoy/internal/n;

    invoke-virtual {v5, v1, v2, v3}, Lcom/tapjoy/internal/n;->a(Landroid/content/SharedPreferences$Editor;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v1, v4, Lcom/tapjoy/internal/fp;->b:Lcom/tapjoy/internal/gd$z$a;

    invoke-virtual {v1, v6, v7}, Lcom/tapjoy/internal/gd$z$a;->c(J)Lcom/tapjoy/internal/gd$z$a;

    iget-object v1, v4, Lcom/tapjoy/internal/fp;->b:Lcom/tapjoy/internal/gd$z$a;

    invoke-virtual {v1, v2, v3}, Lcom/tapjoy/internal/gd$z$a;->d(J)Lcom/tapjoy/internal/gd$z$a;

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v0, v0, Lcom/tapjoy/internal/fl;->b:Lcom/tapjoy/internal/fk;

    iget-object v1, v0, Lcom/tapjoy/internal/fk;->b:Lcom/tapjoy/internal/ch;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/tapjoy/internal/fk;->a()V

    new-instance v1, Lcom/tapjoy/internal/fk$1;

    invoke-direct {v1, v0}, Lcom/tapjoy/internal/fk$1;-><init>(Lcom/tapjoy/internal/fk;)V

    invoke-virtual {v1}, Lcom/tapjoy/internal/fk$1;->run()V

    :cond_0
    iget-object v0, v0, Lcom/tapjoy/internal/fk;->a:Lcom/tapjoy/internal/fy;

    invoke-virtual {v0}, Lcom/tapjoy/internal/fy;->flush()V

    sget-object v0, Lcom/tapjoy/internal/eo;->d:Lcom/tapjoy/internal/eo$a;

    invoke-virtual {v0}, Lcom/tapjoy/internal/eo$a;->notifyObservers()V

    :cond_1
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
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method
