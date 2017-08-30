.class public Lcom/weirdvoice/service/SipService$SipServiceExecutor;
.super Landroid/os/Handler;
.source "SipService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/weirdvoice/service/SipService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SipServiceExecutor"
.end annotation


# instance fields
.field handlerService:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/weirdvoice/service/SipService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/weirdvoice/service/SipService;)V
    .locals 1
    .param p1, "s"    # Lcom/weirdvoice/service/SipService;

    .prologue
    .line 1818
    # invokes: Lcom/weirdvoice/service/SipService;->createLooper()Landroid/os/Looper;
    invoke-static {}, Lcom/weirdvoice/service/SipService;->access$7()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1819
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/weirdvoice/service/SipService$SipServiceExecutor;->handlerService:Ljava/lang/ref/WeakReference;

    .line 1820
    return-void
.end method

.method private executeInternal(Ljava/lang/Runnable;)V
    .locals 5
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 1841
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1846
    iget-object v2, p0, Lcom/weirdvoice/service/SipService$SipServiceExecutor;->handlerService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/weirdvoice/service/SipService;

    .line 1847
    .local v0, "s":Lcom/weirdvoice/service/SipService;
    if-eqz v0, :cond_0

    .line 1848
    # getter for: Lcom/weirdvoice/service/SipService;->sipWakeLock:Lcom/weirdvoice/service/SipWakeLock;
    invoke-static {v0}, Lcom/weirdvoice/service/SipService;->access$8(Lcom/weirdvoice/service/SipService;)Lcom/weirdvoice/service/SipWakeLock;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/weirdvoice/service/SipWakeLock;->release(Ljava/lang/Object;)V

    .line 1851
    :cond_0
    :goto_0
    return-void

    .line 1842
    .end local v0    # "s":Lcom/weirdvoice/service/SipService;
    :catch_0
    move-exception v1

    .line 1843
    .local v1, "t":Ljava/lang/Throwable;
    :try_start_1
    const-string v2, "SIP SRV"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "run task: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1846
    iget-object v2, p0, Lcom/weirdvoice/service/SipService$SipServiceExecutor;->handlerService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/weirdvoice/service/SipService;

    .line 1847
    .restart local v0    # "s":Lcom/weirdvoice/service/SipService;
    if-eqz v0, :cond_0

    .line 1848
    # getter for: Lcom/weirdvoice/service/SipService;->sipWakeLock:Lcom/weirdvoice/service/SipWakeLock;
    invoke-static {v0}, Lcom/weirdvoice/service/SipService;->access$8(Lcom/weirdvoice/service/SipService;)Lcom/weirdvoice/service/SipWakeLock;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/weirdvoice/service/SipWakeLock;->release(Ljava/lang/Object;)V

    goto :goto_0

    .line 1844
    .end local v0    # "s":Lcom/weirdvoice/service/SipService;
    .end local v1    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    .line 1846
    iget-object v3, p0, Lcom/weirdvoice/service/SipService$SipServiceExecutor;->handlerService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/weirdvoice/service/SipService;

    .line 1847
    .restart local v0    # "s":Lcom/weirdvoice/service/SipService;
    if-eqz v0, :cond_1

    .line 1848
    # getter for: Lcom/weirdvoice/service/SipService;->sipWakeLock:Lcom/weirdvoice/service/SipWakeLock;
    invoke-static {v0}, Lcom/weirdvoice/service/SipService;->access$8(Lcom/weirdvoice/service/SipService;)Lcom/weirdvoice/service/SipWakeLock;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/weirdvoice/service/SipWakeLock;->release(Ljava/lang/Object;)V

    .line 1850
    :cond_1
    throw v2
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 1823
    iget-object v1, p0, Lcom/weirdvoice/service/SipService$SipServiceExecutor;->handlerService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/weirdvoice/service/SipService;

    .line 1824
    .local v0, "s":Lcom/weirdvoice/service/SipService;
    if-eqz v0, :cond_0

    .line 1825
    # getter for: Lcom/weirdvoice/service/SipService;->sipWakeLock:Lcom/weirdvoice/service/SipWakeLock;
    invoke-static {v0}, Lcom/weirdvoice/service/SipService;->access$8(Lcom/weirdvoice/service/SipService;)Lcom/weirdvoice/service/SipWakeLock;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/weirdvoice/service/SipWakeLock;->acquire(Ljava/lang/Object;)V

    .line 1827
    :cond_0
    const/4 v1, 0x0

    invoke-static {p0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1828
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1832
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1833
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    invoke-direct {p0, v0}, Lcom/weirdvoice/service/SipService$SipServiceExecutor;->executeInternal(Ljava/lang/Runnable;)V

    .line 1837
    :goto_0
    return-void

    .line 1835
    :cond_0
    const-string v0, "SIP SRV"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "can\'t handle msg: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/weirdvoice/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
