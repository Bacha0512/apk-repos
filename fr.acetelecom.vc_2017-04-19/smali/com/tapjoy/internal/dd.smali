.class public abstract Lcom/tapjoy/internal/dd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tapjoy/internal/dg;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/dd$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/locks/ReentrantLock;

.field private final b:Lcom/tapjoy/internal/dd$a;

.field private final c:Lcom/tapjoy/internal/dd$a;

.field private d:Lcom/tapjoy/internal/dg$a;

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/dd;->a:Ljava/util/concurrent/locks/ReentrantLock;

    new-instance v0, Lcom/tapjoy/internal/dd$a;

    invoke-direct {v0, p0, v1}, Lcom/tapjoy/internal/dd$a;-><init>(Lcom/tapjoy/internal/dd;B)V

    iput-object v0, p0, Lcom/tapjoy/internal/dd;->b:Lcom/tapjoy/internal/dd$a;

    new-instance v0, Lcom/tapjoy/internal/dd$a;

    invoke-direct {v0, p0, v1}, Lcom/tapjoy/internal/dd$a;-><init>(Lcom/tapjoy/internal/dd;B)V

    iput-object v0, p0, Lcom/tapjoy/internal/dd;->c:Lcom/tapjoy/internal/dd$a;

    sget-object v0, Lcom/tapjoy/internal/dg$a;->a:Lcom/tapjoy/internal/dg$a;

    iput-object v0, p0, Lcom/tapjoy/internal/dd;->d:Lcom/tapjoy/internal/dg$a;

    iput-boolean v1, p0, Lcom/tapjoy/internal/dd;->e:Z

    return-void
.end method

.method private g()Lcom/tapjoy/internal/df;
    .locals 2

    iget-object v0, p0, Lcom/tapjoy/internal/dd;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/dd;->d:Lcom/tapjoy/internal/dg$a;

    sget-object v1, Lcom/tapjoy/internal/dg$a;->a:Lcom/tapjoy/internal/dg$a;

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/tapjoy/internal/dg$a;->e:Lcom/tapjoy/internal/dg$a;

    iput-object v0, p0, Lcom/tapjoy/internal/dd;->d:Lcom/tapjoy/internal/dg$a;

    iget-object v0, p0, Lcom/tapjoy/internal/dd;->b:Lcom/tapjoy/internal/dd$a;

    sget-object v1, Lcom/tapjoy/internal/dg$a;->e:Lcom/tapjoy/internal/dg$a;

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/dd$a;->a(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tapjoy/internal/dd;->c:Lcom/tapjoy/internal/dd$a;

    sget-object v1, Lcom/tapjoy/internal/dg$a;->e:Lcom/tapjoy/internal/dg$a;

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/dd$a;->a(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/tapjoy/internal/dd;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_1
    iget-object v0, p0, Lcom/tapjoy/internal/dd;->c:Lcom/tapjoy/internal/dd$a;

    return-object v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/tapjoy/internal/dd;->d:Lcom/tapjoy/internal/dg$a;

    sget-object v1, Lcom/tapjoy/internal/dg$a;->b:Lcom/tapjoy/internal/dg$a;

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/internal/dd;->e:Z

    iget-object v0, p0, Lcom/tapjoy/internal/dd;->b:Lcom/tapjoy/internal/dd$a;

    sget-object v1, Lcom/tapjoy/internal/dg$a;->d:Lcom/tapjoy/internal/dg$a;

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/dd$a;->a(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/dd;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lcom/tapjoy/internal/dd;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/tapjoy/internal/dd;->d:Lcom/tapjoy/internal/dg$a;

    sget-object v1, Lcom/tapjoy/internal/dg$a;->c:Lcom/tapjoy/internal/dg$a;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/tapjoy/internal/dg$a;->d:Lcom/tapjoy/internal/dg$a;

    iput-object v0, p0, Lcom/tapjoy/internal/dd;->d:Lcom/tapjoy/internal/dg$a;

    invoke-virtual {p0}, Lcom/tapjoy/internal/dd;->b()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/tapjoy/internal/dd;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method


# virtual methods
.method protected abstract a()V
.end method

.method protected final a(Ljava/lang/Throwable;)V
    .locals 3

    invoke-static {p1}, Lcom/tapjoy/internal/cq;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tapjoy/internal/dd;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/dd;->d:Lcom/tapjoy/internal/dg$a;

    sget-object v1, Lcom/tapjoy/internal/dg$a;->b:Lcom/tapjoy/internal/dg$a;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/tapjoy/internal/dd;->b:Lcom/tapjoy/internal/dd$a;

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/dd$a;->a(Ljava/lang/Throwable;)Z

    iget-object v0, p0, Lcom/tapjoy/internal/dd;->c:Lcom/tapjoy/internal/dd$a;

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Service failed to start."

    invoke-direct {v1, v2, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/dd$a;->a(Ljava/lang/Throwable;)Z

    :cond_0
    :goto_0
    sget-object v0, Lcom/tapjoy/internal/dg$a;->f:Lcom/tapjoy/internal/dg$a;

    iput-object v0, p0, Lcom/tapjoy/internal/dd;->d:Lcom/tapjoy/internal/dg$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/tapjoy/internal/dd;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/tapjoy/internal/dd;->d:Lcom/tapjoy/internal/dg$a;

    sget-object v1, Lcom/tapjoy/internal/dg$a;->d:Lcom/tapjoy/internal/dg$a;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/tapjoy/internal/dd;->c:Lcom/tapjoy/internal/dd$a;

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/dd$a;->a(Ljava/lang/Throwable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/tapjoy/internal/dd;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/tapjoy/internal/dd;->d:Lcom/tapjoy/internal/dg$a;

    sget-object v1, Lcom/tapjoy/internal/dg$a;->c:Lcom/tapjoy/internal/dg$a;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/tapjoy/internal/dd;->c:Lcom/tapjoy/internal/dd$a;

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Service failed while running"

    invoke-direct {v1, v2, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/dd$a;->a(Ljava/lang/Throwable;)Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/tapjoy/internal/dd;->d:Lcom/tapjoy/internal/dg$a;

    sget-object v1, Lcom/tapjoy/internal/dg$a;->a:Lcom/tapjoy/internal/dg$a;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/tapjoy/internal/dd;->d:Lcom/tapjoy/internal/dg$a;

    sget-object v1, Lcom/tapjoy/internal/dg$a;->e:Lcom/tapjoy/internal/dg$a;

    if-ne v0, v1, :cond_0

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed while in state:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tapjoy/internal/dd;->d:Lcom/tapjoy/internal/dg$a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method protected abstract b()V
.end method

.method protected final c()V
    .locals 3

    iget-object v0, p0, Lcom/tapjoy/internal/dd;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/dd;->d:Lcom/tapjoy/internal/dg$a;

    sget-object v1, Lcom/tapjoy/internal/dg$a;->b:Lcom/tapjoy/internal/dg$a;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot notifyStarted() when the service is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tapjoy/internal/dd;->d:Lcom/tapjoy/internal/dg$a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/dd;->a(Ljava/lang/Throwable;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/tapjoy/internal/dd;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/tapjoy/internal/dg$a;->c:Lcom/tapjoy/internal/dg$a;

    iput-object v0, p0, Lcom/tapjoy/internal/dd;->d:Lcom/tapjoy/internal/dg$a;

    iget-boolean v0, p0, Lcom/tapjoy/internal/dd;->e:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/tapjoy/internal/dd;->g()Lcom/tapjoy/internal/df;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iget-object v0, p0, Lcom/tapjoy/internal/dd;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/tapjoy/internal/dd;->b:Lcom/tapjoy/internal/dd$a;

    sget-object v1, Lcom/tapjoy/internal/dg$a;->c:Lcom/tapjoy/internal/dg$a;

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/dd$a;->a(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method protected final d()V
    .locals 3

    iget-object v0, p0, Lcom/tapjoy/internal/dd;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/dd;->d:Lcom/tapjoy/internal/dg$a;

    sget-object v1, Lcom/tapjoy/internal/dg$a;->d:Lcom/tapjoy/internal/dg$a;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/tapjoy/internal/dd;->d:Lcom/tapjoy/internal/dg$a;

    sget-object v1, Lcom/tapjoy/internal/dg$a;->c:Lcom/tapjoy/internal/dg$a;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot notifyStopped() when the service is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tapjoy/internal/dd;->d:Lcom/tapjoy/internal/dg$a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/dd;->a(Ljava/lang/Throwable;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/tapjoy/internal/dd;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/tapjoy/internal/dg$a;->e:Lcom/tapjoy/internal/dg$a;

    iput-object v0, p0, Lcom/tapjoy/internal/dd;->d:Lcom/tapjoy/internal/dg$a;

    iget-object v0, p0, Lcom/tapjoy/internal/dd;->c:Lcom/tapjoy/internal/dd$a;

    sget-object v1, Lcom/tapjoy/internal/dg$a;->e:Lcom/tapjoy/internal/dg$a;

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/dd$a;->a(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/tapjoy/internal/dd;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public final e()Lcom/tapjoy/internal/df;
    .locals 2

    iget-object v0, p0, Lcom/tapjoy/internal/dd;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/dd;->d:Lcom/tapjoy/internal/dg$a;

    sget-object v1, Lcom/tapjoy/internal/dg$a;->a:Lcom/tapjoy/internal/dg$a;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/tapjoy/internal/dg$a;->b:Lcom/tapjoy/internal/dg$a;

    iput-object v0, p0, Lcom/tapjoy/internal/dd;->d:Lcom/tapjoy/internal/dg$a;

    invoke-virtual {p0}, Lcom/tapjoy/internal/dd;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/dd;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    iget-object v0, p0, Lcom/tapjoy/internal/dd;->b:Lcom/tapjoy/internal/dd$a;

    return-object v0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/dd;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/tapjoy/internal/dd;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/tapjoy/internal/dd;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public final f()Lcom/tapjoy/internal/dg$a;
    .locals 2

    iget-object v0, p0, Lcom/tapjoy/internal/dd;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-boolean v0, p0, Lcom/tapjoy/internal/dd;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/internal/dd;->d:Lcom/tapjoy/internal/dg$a;

    sget-object v1, Lcom/tapjoy/internal/dg$a;->b:Lcom/tapjoy/internal/dg$a;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/tapjoy/internal/dg$a;->d:Lcom/tapjoy/internal/dg$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/tapjoy/internal/dd;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/tapjoy/internal/dd;->d:Lcom/tapjoy/internal/dg$a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Lcom/tapjoy/internal/dd;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/tapjoy/internal/dd;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tapjoy/internal/dd;->f()Lcom/tapjoy/internal/dg$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
