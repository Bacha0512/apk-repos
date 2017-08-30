.class public abstract Lcom/fyber/b/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fyber/b/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Lcom/fyber/ads/internal/InternalAd;",
        "U:",
        "Lcom/fyber/ads/Ad;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field protected final a:Lcom/fyber/requesters/Callback;

.field protected final b:Lcom/fyber/utils/u;

.field protected c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field protected d:Z


# direct methods
.method public constructor <init>(Lcom/fyber/b/b$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fyber/b/b;->d:Z

    iget-object v0, p1, Lcom/fyber/b/b$a;->b:Lcom/fyber/requesters/Callback;

    iput-object v0, p0, Lcom/fyber/b/b;->a:Lcom/fyber/requesters/Callback;

    iget-object v0, p1, Lcom/fyber/b/b$a;->a:Lcom/fyber/utils/u;

    iput-object v0, p0, Lcom/fyber/b/b;->b:Lcom/fyber/utils/u;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "AdFetchOperation"

    const-string v1, "A timeout occurred while retrieving an ad"

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/fyber/ads/internal/a;->e:Lcom/fyber/ads/internal/a;

    invoke-virtual {p0, p1, v0, p2}, Lcom/fyber/b/b;->a(Ljava/lang/String;Lcom/fyber/ads/internal/a;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fyber/b/b;->a:Lcom/fyber/requesters/Callback;

    sget-object v1, Lcom/fyber/requesters/RequestError;->ERROR_REQUESTING_ADS:Lcom/fyber/requesters/RequestError;

    invoke-interface {v0, v1}, Lcom/fyber/requesters/Callback;->onRequestError(Lcom/fyber/requesters/RequestError;)V

    sget-object v0, Lcom/fyber/ads/internal/c;->a:Lcom/fyber/ads/internal/c;

    invoke-virtual {p0, v0}, Lcom/fyber/b/b;->a(Lcom/fyber/ads/internal/c;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "AdFetchOperation"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "An error occurred while retrieving an ad "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/fyber/ads/internal/a;->d:Lcom/fyber/ads/internal/a;

    invoke-virtual {p0, p1, v0, p3}, Lcom/fyber/b/b;->a(Ljava/lang/String;Lcom/fyber/ads/internal/a;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fyber/b/b;->a:Lcom/fyber/requesters/Callback;

    sget-object v1, Lcom/fyber/requesters/RequestError;->UNKNOWN_ERROR:Lcom/fyber/requesters/RequestError;

    invoke-interface {v0, v1}, Lcom/fyber/requesters/Callback;->onRequestError(Lcom/fyber/requesters/RequestError;)V

    sget-object v0, Lcom/fyber/ads/internal/c;->a:Lcom/fyber/ads/internal/c;

    invoke-virtual {p0, v0}, Lcom/fyber/b/b;->a(Lcom/fyber/ads/internal/c;)V

    return-void
.end method


# virtual methods
.method protected abstract a()I
.end method

.method protected abstract a(Ljava/lang/String;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/util/List",
            "<TV;>;>;"
        }
    .end annotation
.end method

.method protected abstract a(Ljava/util/List;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TV;>;)",
            "Ljava/util/concurrent/Future",
            "<TU;>;"
        }
    .end annotation
.end method

.method public final a(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/fyber/b/b;->c:Ljava/lang/ref/WeakReference;

    invoke-static {}, Lcom/fyber/Fyber;->getConfigs()Lcom/fyber/Fyber$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fyber/Fyber$a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected abstract a(Lcom/fyber/ads/Ad;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation
.end method

.method protected abstract a(Lcom/fyber/ads/internal/c;)V
.end method

.method protected abstract a(Ljava/lang/String;Lcom/fyber/ads/internal/a;Ljava/lang/String;)V
.end method

.method protected abstract b()I
.end method

.method protected abstract c()V
.end method

.method public run()V
    .locals 7

    const/4 v1, 0x0

    const/4 v6, 0x1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/fyber/b/b;->b:Lcom/fyber/utils/u;

    invoke-virtual {v0, v2}, Lcom/fyber/utils/u;->a(Ljava/lang/String;)Lcom/fyber/utils/u;

    iget-boolean v0, p0, Lcom/fyber/b/b;->d:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/fyber/mediation/b;->a:Lcom/fyber/mediation/b;

    invoke-virtual {v0}, Lcom/fyber/mediation/b;->a()Ljava/util/concurrent/Future;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v3

    if-nez v3, :cond_0

    const-wide/16 v4, 0x3c

    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v4, v5, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_8

    :cond_0
    invoke-virtual {p0, v2}, Lcom/fyber/b/b;->a(Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v3

    :try_start_1
    invoke-virtual {p0}, Lcom/fyber/b/b;->a()I

    move-result v0

    int-to-long v4, v0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v4, v5, v0}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_8

    :try_start_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8

    invoke-virtual {p0, v0}, Lcom/fyber/b/b;->a(Ljava/util/List;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-virtual {p0}, Lcom/fyber/b/b;->b()I

    move-result v0

    int-to-long v4, v0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v4, v5, v0}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fyber/ads/Ad;

    :goto_0
    if-eqz v0, :cond_3

    sget-object v4, Lcom/fyber/ads/internal/a;->b:Lcom/fyber/ads/internal/a;

    const/4 v5, 0x0

    invoke-virtual {p0, v2, v4, v5}, Lcom/fyber/b/b;->a(Ljava/lang/String;Lcom/fyber/ads/internal/a;Ljava/lang/String;)V

    sget-object v4, Lcom/fyber/ads/internal/c;->c:Lcom/fyber/ads/internal/c;

    invoke-virtual {p0, v4}, Lcom/fyber/b/b;->a(Lcom/fyber/ads/internal/c;)V

    invoke-virtual {p0, v0}, Lcom/fyber/b/b;->a(Lcom/fyber/ads/Ad;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    if-eqz v1, :cond_1

    :try_start_3
    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v1}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    invoke-interface {v1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_1
    :goto_2
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {v3}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {v3, v6}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_2
    :goto_3
    return-void

    :catch_0
    move-exception v0

    :goto_4
    const-string v0, "Adapter start timeout"

    const-string v1, "adapter_start_timeout"

    invoke-direct {p0, v2, v0, v1}, Lcom/fyber/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    :try_start_4
    sget-object v0, Lcom/fyber/ads/internal/a;->c:Lcom/fyber/ads/internal/a;

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v0, v4}, Lcom/fyber/b/b;->a(Ljava/lang/String;Lcom/fyber/ads/internal/a;Ljava/lang/String;)V

    sget-object v0, Lcom/fyber/ads/internal/c;->a:Lcom/fyber/ads/internal/c;

    invoke-virtual {p0, v0}, Lcom/fyber/b/b;->a(Lcom/fyber/ads/internal/c;)V

    invoke-virtual {p0}, Lcom/fyber/b/b;->c()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_5
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    instance-of v4, v4, Lcom/fyber/exceptions/a;

    if-eqz v4, :cond_4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lcom/fyber/exceptions/a;

    invoke-virtual {v0}, Lcom/fyber/exceptions/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v4, v0}, Lcom/fyber/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_6
    if-eqz v1, :cond_1

    :try_start_6
    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v1}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    invoke-interface {v1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_2

    :catch_2
    move-exception v0

    :goto_7
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Lcom/fyber/exceptions/a;

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lcom/fyber/exceptions/a;

    invoke-virtual {v0}, Lcom/fyber/exceptions/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v1, v0}, Lcom/fyber/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :goto_8
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {v3}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {v3, v6}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_3

    :cond_4
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    invoke-direct {p0, v2, v0, v4}, Lcom/fyber/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_5

    :try_start_9
    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-interface {v1}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v4

    if-nez v4, :cond_5

    const/4 v4, 0x1

    invoke-interface {v1, v4}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_5
    throw v0
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catch_3
    move-exception v0

    goto :goto_7

    :catch_4
    move-exception v0

    :try_start_a
    const-string v0, "global"

    invoke-direct {p0, v2, v0}, Lcom/fyber/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-eqz v1, :cond_1

    :try_start_b
    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v1}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    invoke-interface {v1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto/16 :goto_2

    :catch_5
    move-exception v0

    :try_start_c
    const-string v0, "backend"

    invoke-direct {p0, v2, v0}, Lcom/fyber/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {v3}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {v3, v6}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto/16 :goto_3

    :cond_6
    :try_start_d
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/fyber/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto :goto_8

    :catchall_1
    move-exception v0

    if-eqz v3, :cond_7

    invoke-interface {v3}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-interface {v3}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-interface {v3, v6}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_7
    throw v0

    :catch_6
    move-exception v0

    goto/16 :goto_5

    :catch_7
    move-exception v0

    goto/16 :goto_4

    :catch_8
    move-exception v0

    goto/16 :goto_4

    :cond_8
    move-object v0, v1

    goto/16 :goto_0
.end method
