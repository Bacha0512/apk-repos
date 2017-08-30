.class public Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;
.super Landroid/os/Handler;
.source "ABTOSipService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/abtollc/service/ABTOSipService;
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
            "Lorg/abtollc/service/ABTOSipService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/abtollc/service/ABTOSipService;)V
    .locals 1
    .param p1, "s"    # Lorg/abtollc/service/ABTOSipService;

    .prologue
    .line 2496
    # invokes: Lorg/abtollc/service/ABTOSipService;->createLooper()Landroid/os/Looper;
    invoke-static {}, Lorg/abtollc/service/ABTOSipService;->access$700()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2497
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;->handlerService:Ljava/lang/ref/WeakReference;

    .line 2498
    return-void
.end method

.method private executeInternal(Ljava/lang/Runnable;)V
    .locals 5
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 2519
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2524
    iget-object v2, p0, Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;->handlerService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/abtollc/service/ABTOSipService;

    .line 2525
    .local v0, "s":Lorg/abtollc/service/ABTOSipService;
    if-eqz v0, :cond_0

    .line 2526
    # getter for: Lorg/abtollc/service/ABTOSipService;->sipWakeLock:Lorg/abtollc/service/SipWakeLock;
    invoke-static {v0}, Lorg/abtollc/service/ABTOSipService;->access$800(Lorg/abtollc/service/ABTOSipService;)Lorg/abtollc/service/SipWakeLock;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/abtollc/service/SipWakeLock;->release(Ljava/lang/Object;)V

    .line 2529
    :cond_0
    :goto_0
    return-void

    .line 2520
    .end local v0    # "s":Lorg/abtollc/service/ABTOSipService;
    :catch_0
    move-exception v1

    .line 2521
    .local v1, "t":Ljava/lang/Throwable;
    :try_start_1
    const-string v2, "SIP SRV"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "run task: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2524
    iget-object v2, p0, Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;->handlerService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/abtollc/service/ABTOSipService;

    .line 2525
    .restart local v0    # "s":Lorg/abtollc/service/ABTOSipService;
    if-eqz v0, :cond_0

    .line 2526
    # getter for: Lorg/abtollc/service/ABTOSipService;->sipWakeLock:Lorg/abtollc/service/SipWakeLock;
    invoke-static {v0}, Lorg/abtollc/service/ABTOSipService;->access$800(Lorg/abtollc/service/ABTOSipService;)Lorg/abtollc/service/SipWakeLock;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/abtollc/service/SipWakeLock;->release(Ljava/lang/Object;)V

    goto :goto_0

    .line 2524
    .end local v0    # "s":Lorg/abtollc/service/ABTOSipService;
    .end local v1    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;->handlerService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/abtollc/service/ABTOSipService;

    .line 2525
    .restart local v0    # "s":Lorg/abtollc/service/ABTOSipService;
    if-eqz v0, :cond_1

    .line 2526
    # getter for: Lorg/abtollc/service/ABTOSipService;->sipWakeLock:Lorg/abtollc/service/SipWakeLock;
    invoke-static {v0}, Lorg/abtollc/service/ABTOSipService;->access$800(Lorg/abtollc/service/ABTOSipService;)Lorg/abtollc/service/SipWakeLock;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/abtollc/service/SipWakeLock;->release(Ljava/lang/Object;)V

    .line 2528
    :cond_1
    throw v2
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 2501
    iget-object v1, p0, Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;->handlerService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/abtollc/service/ABTOSipService;

    .line 2502
    .local v0, "s":Lorg/abtollc/service/ABTOSipService;
    if-eqz v0, :cond_0

    .line 2503
    # getter for: Lorg/abtollc/service/ABTOSipService;->sipWakeLock:Lorg/abtollc/service/SipWakeLock;
    invoke-static {v0}, Lorg/abtollc/service/ABTOSipService;->access$800(Lorg/abtollc/service/ABTOSipService;)Lorg/abtollc/service/SipWakeLock;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/abtollc/service/SipWakeLock;->acquire(Ljava/lang/Object;)V

    .line 2505
    :cond_0
    const/4 v1, 0x0

    invoke-static {p0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2506
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2510
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 2511
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    invoke-direct {p0, v0}, Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;->executeInternal(Ljava/lang/Runnable;)V

    .line 2515
    :goto_0
    return-void

    .line 2513
    :cond_0
    const-string v0, "SIP SRV"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t handle msg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/abtollc/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
