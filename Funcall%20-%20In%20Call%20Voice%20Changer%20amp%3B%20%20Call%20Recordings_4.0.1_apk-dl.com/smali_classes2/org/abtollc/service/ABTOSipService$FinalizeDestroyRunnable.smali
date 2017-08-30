.class Lorg/abtollc/service/ABTOSipService$FinalizeDestroyRunnable;
.super Lorg/abtollc/service/ABTOSipService$SipRunnable;
.source "ABTOSipService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/abtollc/service/ABTOSipService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FinalizeDestroyRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/abtollc/service/ABTOSipService;


# direct methods
.method constructor <init>(Lorg/abtollc/service/ABTOSipService;)V
    .locals 0
    .param p1, "this$0"    # Lorg/abtollc/service/ABTOSipService;

    .prologue
    .line 2594
    iput-object p1, p0, Lorg/abtollc/service/ABTOSipService$FinalizeDestroyRunnable;->this$0:Lorg/abtollc/service/ABTOSipService;

    invoke-direct {p0}, Lorg/abtollc/service/ABTOSipService$SipRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method protected doRun()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/abtollc/service/ABTOSipService$SameThreadException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2598
    iget-object v1, p0, Lorg/abtollc/service/ABTOSipService$FinalizeDestroyRunnable;->this$0:Lorg/abtollc/service/ABTOSipService;

    # setter for: Lorg/abtollc/service/ABTOSipService;->mExecutor:Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;
    invoke-static {v1, v2}, Lorg/abtollc/service/ABTOSipService;->access$1002(Lorg/abtollc/service/ABTOSipService;Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;)Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;

    .line 2600
    const-string v1, "SIP SRV"

    const-string v2, "Destroy sip stack"

    invoke-static {v1, v2}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2602
    iget-object v1, p0, Lorg/abtollc/service/ABTOSipService$FinalizeDestroyRunnable;->this$0:Lorg/abtollc/service/ABTOSipService;

    # getter for: Lorg/abtollc/service/ABTOSipService;->sipWakeLock:Lorg/abtollc/service/SipWakeLock;
    invoke-static {v1}, Lorg/abtollc/service/ABTOSipService;->access$800(Lorg/abtollc/service/ABTOSipService;)Lorg/abtollc/service/SipWakeLock;

    move-result-object v1

    invoke-virtual {v1}, Lorg/abtollc/service/SipWakeLock;->reset()V

    .line 2604
    iget-object v1, p0, Lorg/abtollc/service/ABTOSipService$FinalizeDestroyRunnable;->this$0:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v1}, Lorg/abtollc/service/ABTOSipService;->stopSipStack()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2605
    const-string v1, "SIP SRV"

    const-string v2, "Somebody has stopped the service while there is an ongoing call !!!"

    invoke-static {v1, v2}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2607
    :cond_0
    # getter for: Lorg/abtollc/service/ABTOSipService;->executorThread:Landroid/os/HandlerThread;
    invoke-static {}, Lorg/abtollc/service/ABTOSipService;->access$1100()Landroid/os/HandlerThread;

    move-result-object v2

    monitor-enter v2

    .line 2608
    :try_start_0
    # getter for: Lorg/abtollc/service/ABTOSipService;->executorThread:Landroid/os/HandlerThread;
    invoke-static {}, Lorg/abtollc/service/ABTOSipService;->access$1100()Landroid/os/HandlerThread;

    move-result-object v0

    .line 2609
    .local v0, "currentHandlerThread":Landroid/os/HandlerThread;
    const/4 v1, 0x0

    # setter for: Lorg/abtollc/service/ABTOSipService;->executorThread:Landroid/os/HandlerThread;
    invoke-static {v1}, Lorg/abtollc/service/ABTOSipService;->access$1102(Landroid/os/HandlerThread;)Landroid/os/HandlerThread;

    .line 2610
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 2612
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/abtollc/utils/Threading;->stopHandlerThread(Landroid/os/HandlerThread;Z)V

    .line 2613
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2616
    const-string v1, "SIP SRV"

    const-string v2, "--- SIP SERVICE DESTROYED ---"

    invoke-static {v1, v2}, Lorg/abtollc/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2617
    return-void

    .line 2613
    .end local v0    # "currentHandlerThread":Landroid/os/HandlerThread;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
