.class Lcom/weirdvoice/ui/incall/InCallMediaControl$MonitorThread;
.super Ljava/lang/Thread;
.source "InCallMediaControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/weirdvoice/ui/incall/InCallMediaControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MonitorThread"
.end annotation


# instance fields
.field private finished:Z

.field final synthetic this$0:Lcom/weirdvoice/ui/incall/InCallMediaControl;


# direct methods
.method private constructor <init>(Lcom/weirdvoice/ui/incall/InCallMediaControl;)V
    .locals 1

    .prologue
    .line 386
    iput-object p1, p0, Lcom/weirdvoice/ui/incall/InCallMediaControl$MonitorThread;->this$0:Lcom/weirdvoice/ui/incall/InCallMediaControl;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 387
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/weirdvoice/ui/incall/InCallMediaControl$MonitorThread;->finished:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/weirdvoice/ui/incall/InCallMediaControl;Lcom/weirdvoice/ui/incall/InCallMediaControl$MonitorThread;)V
    .locals 0

    .prologue
    .line 386
    invoke-direct {p0, p1}, Lcom/weirdvoice/ui/incall/InCallMediaControl$MonitorThread;-><init>(Lcom/weirdvoice/ui/incall/InCallMediaControl;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized markFinished()V
    .locals 1

    .prologue
    .line 390
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/weirdvoice/ui/incall/InCallMediaControl$MonitorThread;->finished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 391
    monitor-exit p0

    return-void

    .line 390
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 12

    .prologue
    const-wide/16 v10, 0xff

    .line 395
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 397
    :goto_0
    iget-object v1, p0, Lcom/weirdvoice/ui/incall/InCallMediaControl$MonitorThread;->this$0:Lcom/weirdvoice/ui/incall/InCallMediaControl;

    # getter for: Lcom/weirdvoice/ui/incall/InCallMediaControl;->sipService:Lcom/weirdvoice/api/ISipService;
    invoke-static {v1}, Lcom/weirdvoice/ui/incall/InCallMediaControl;->access$0(Lcom/weirdvoice/ui/incall/InCallMediaControl;)Lcom/weirdvoice/api/ISipService;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 399
    :try_start_0
    iget-object v1, p0, Lcom/weirdvoice/ui/incall/InCallMediaControl$MonitorThread;->this$0:Lcom/weirdvoice/ui/incall/InCallMediaControl;

    # getter for: Lcom/weirdvoice/ui/incall/InCallMediaControl;->sipService:Lcom/weirdvoice/api/ISipService;
    invoke-static {v1}, Lcom/weirdvoice/ui/incall/InCallMediaControl;->access$0(Lcom/weirdvoice/ui/incall/InCallMediaControl;)Lcom/weirdvoice/api/ISipService;

    move-result-object v1

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Lcom/weirdvoice/api/ISipService;->confGetRxTxLevel(I)J

    move-result-wide v2

    .line 400
    .local v2, "value":J
    iget-object v1, p0, Lcom/weirdvoice/ui/incall/InCallMediaControl$MonitorThread;->this$0:Lcom/weirdvoice/ui/incall/InCallMediaControl;

    new-instance v4, Lcom/weirdvoice/ui/incall/InCallMediaControl$UpdateConfLevelRunnable;

    iget-object v5, p0, Lcom/weirdvoice/ui/incall/InCallMediaControl$MonitorThread;->this$0:Lcom/weirdvoice/ui/incall/InCallMediaControl;

    const/16 v6, 0x8

    shr-long v6, v2, v6

    and-long/2addr v6, v10

    long-to-int v6, v6

    and-long v8, v2, v10

    long-to-int v7, v8

    invoke-direct {v4, v5, v6, v7}, Lcom/weirdvoice/ui/incall/InCallMediaControl$UpdateConfLevelRunnable;-><init>(Lcom/weirdvoice/ui/incall/InCallMediaControl;II)V

    invoke-virtual {v1, v4}, Lcom/weirdvoice/ui/incall/InCallMediaControl;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 409
    .end local v2    # "value":J
    :cond_0
    const-wide/16 v4, 0x64

    :try_start_1
    invoke-static {v4, v5}, Lcom/weirdvoice/ui/incall/InCallMediaControl$MonitorThread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 413
    :goto_1
    monitor-enter p0

    .line 414
    :try_start_2
    iget-boolean v1, p0, Lcom/weirdvoice/ui/incall/InCallMediaControl$MonitorThread;->finished:Z

    if-eqz v1, :cond_1

    .line 415
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 419
    :goto_2
    return-void

    .line 401
    :catch_0
    move-exception v0

    .line 402
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "inCallMediaCtrl"

    const-string v4, "Problem with remote service"

    invoke-static {v1, v4, v0}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 410
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 411
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "inCallMediaCtrl"

    const-string v4, "Interupted monitor thread"

    invoke-static {v1, v4, v0}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 413
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_1
    :try_start_3
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method
