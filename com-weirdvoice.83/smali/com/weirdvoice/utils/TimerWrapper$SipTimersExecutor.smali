.class public Lcom/weirdvoice/utils/TimerWrapper$SipTimersExecutor;
.super Landroid/os/Handler;
.source "TimerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/weirdvoice/utils/TimerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SipTimersExecutor"
.end annotation


# instance fields
.field handlerService:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/weirdvoice/utils/TimerWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/weirdvoice/utils/TimerWrapper;)V
    .locals 1
    .param p1, "s"    # Lcom/weirdvoice/utils/TimerWrapper;

    .prologue
    .line 281
    # invokes: Lcom/weirdvoice/utils/TimerWrapper;->createLooper()Landroid/os/Looper;
    invoke-static {}, Lcom/weirdvoice/utils/TimerWrapper;->access$0()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 282
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/weirdvoice/utils/TimerWrapper$SipTimersExecutor;->handlerService:Ljava/lang/ref/WeakReference;

    .line 283
    return-void
.end method

.method private executeInternal(Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 300
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    :goto_0
    return-void

    .line 301
    :catch_0
    move-exception v0

    .line 302
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "Timer wrap"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "run task: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 286
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 287
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 291
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    invoke-direct {p0, v0}, Lcom/weirdvoice/utils/TimerWrapper$SipTimersExecutor;->executeInternal(Ljava/lang/Runnable;)V

    .line 296
    :goto_0
    return-void

    .line 294
    :cond_0
    const-string v0, "Timer wrap"

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
