.class final Lcom/tapjoy/internal/gh$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/gh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/internal/gh;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/gh;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/tapjoy/internal/gh$1;->a:Lcom/tapjoy/internal/gh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    .line 71
    iget-object v0, p0, Lcom/tapjoy/internal/gh$1;->a:Lcom/tapjoy/internal/gh;

    .line 17015
    iget-object v0, v0, Lcom/tapjoy/internal/gh;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 71
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    const-string v0, "The session ended"

    invoke-static {v0}, Lcom/tapjoy/internal/fr;->a(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/tapjoy/internal/gh$1;->a:Lcom/tapjoy/internal/gh;

    .line 18015
    iget-object v0, v0, Lcom/tapjoy/internal/gh;->a:Lcom/tapjoy/internal/ft;

    .line 18101
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/tapjoy/internal/ft;->c:J

    sub-long/2addr v2, v4

    .line 18102
    iget-object v1, v0, Lcom/tapjoy/internal/ft;->a:Lcom/tapjoy/internal/fx;

    .line 18477
    monitor-enter v1

    .line 18478
    :try_start_0
    iget-object v4, v1, Lcom/tapjoy/internal/fx;->c:Lcom/tapjoy/internal/ge;

    iget-object v4, v4, Lcom/tapjoy/internal/ge;->i:Lcom/tapjoy/internal/n;

    invoke-virtual {v4}, Lcom/tapjoy/internal/n;->a()J

    move-result-wide v4

    add-long/2addr v4, v2

    .line 18479
    iget-object v6, v1, Lcom/tapjoy/internal/fx;->c:Lcom/tapjoy/internal/ge;

    iget-object v6, v6, Lcom/tapjoy/internal/ge;->i:Lcom/tapjoy/internal/n;

    invoke-virtual {v6, v4, v5}, Lcom/tapjoy/internal/n;->a(J)V

    .line 18480
    iget-object v6, v1, Lcom/tapjoy/internal/fx;->b:Lcom/tapjoy/internal/gl$z$a;

    invoke-virtual {v6, v4, v5}, Lcom/tapjoy/internal/gl$z$a;->b(J)Lcom/tapjoy/internal/gl$z$a;

    .line 18481
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18103
    sget-object v1, Lcom/tapjoy/internal/gl$i;->a:Lcom/tapjoy/internal/gl$i;

    const-string v4, "session"

    invoke-virtual {v0, v1, v4}, Lcom/tapjoy/internal/ft;->a(Lcom/tapjoy/internal/gl$i;Ljava/lang/String;)Lcom/tapjoy/internal/gl$c$a;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Lcom/tapjoy/internal/gl$c$a;->d(J)Lcom/tapjoy/internal/gl$c$a;

    move-result-object v1

    .line 18104
    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/ft;->a(Lcom/tapjoy/internal/gl$c$a;)V

    .line 18105
    const-wide/16 v4, 0x0

    iput-wide v4, v0, Lcom/tapjoy/internal/ft;->c:J

    .line 18106
    iget-object v4, v0, Lcom/tapjoy/internal/ft;->a:Lcom/tapjoy/internal/fx;

    .line 18570
    iget-wide v6, v1, Lcom/tapjoy/internal/gl$c$a;->e:J

    .line 19485
    monitor-enter v4

    .line 19486
    :try_start_1
    iget-object v1, v4, Lcom/tapjoy/internal/fx;->c:Lcom/tapjoy/internal/ge;

    invoke-virtual {v1}, Lcom/tapjoy/internal/ge;->a()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 19487
    iget-object v5, v4, Lcom/tapjoy/internal/fx;->c:Lcom/tapjoy/internal/ge;

    iget-object v5, v5, Lcom/tapjoy/internal/ge;->j:Lcom/tapjoy/internal/n;

    invoke-virtual {v5, v1, v6, v7}, Lcom/tapjoy/internal/n;->a(Landroid/content/SharedPreferences$Editor;J)Landroid/content/SharedPreferences$Editor;

    .line 19488
    iget-object v5, v4, Lcom/tapjoy/internal/fx;->c:Lcom/tapjoy/internal/ge;

    iget-object v5, v5, Lcom/tapjoy/internal/ge;->k:Lcom/tapjoy/internal/n;

    invoke-virtual {v5, v1, v2, v3}, Lcom/tapjoy/internal/n;->a(Landroid/content/SharedPreferences$Editor;J)Landroid/content/SharedPreferences$Editor;

    .line 19489
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 19491
    iget-object v1, v4, Lcom/tapjoy/internal/fx;->b:Lcom/tapjoy/internal/gl$z$a;

    invoke-virtual {v1, v6, v7}, Lcom/tapjoy/internal/gl$z$a;->c(J)Lcom/tapjoy/internal/gl$z$a;

    .line 19492
    iget-object v1, v4, Lcom/tapjoy/internal/fx;->b:Lcom/tapjoy/internal/gl$z$a;

    invoke-virtual {v1, v2, v3}, Lcom/tapjoy/internal/gl$z$a;->d(J)Lcom/tapjoy/internal/gl$z$a;

    .line 19493
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 18107
    iget-object v0, v0, Lcom/tapjoy/internal/ft;->b:Lcom/tapjoy/internal/fs;

    .line 20201
    iget-object v1, v0, Lcom/tapjoy/internal/fs;->b:Lcom/tapjoy/internal/ch;

    if-eqz v1, :cond_0

    .line 20202
    invoke-virtual {v0}, Lcom/tapjoy/internal/fs;->a()V

    .line 20203
    new-instance v1, Lcom/tapjoy/internal/fs$1;

    invoke-direct {v1, v0}, Lcom/tapjoy/internal/fs$1;-><init>(Lcom/tapjoy/internal/fs;)V

    invoke-virtual {v1}, Lcom/tapjoy/internal/fs$1;->run()V

    .line 20211
    :cond_0
    iget-object v0, v0, Lcom/tapjoy/internal/fs;->a:Lcom/tapjoy/internal/gg;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gg;->flush()V

    .line 74
    sget-object v0, Lcom/tapjoy/internal/eo;->d:Lcom/tapjoy/internal/eo$a;

    invoke-virtual {v0}, Lcom/tapjoy/internal/eo$a;->notifyObservers()V

    .line 76
    :cond_1
    return-void

    .line 18481
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 19493
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method
