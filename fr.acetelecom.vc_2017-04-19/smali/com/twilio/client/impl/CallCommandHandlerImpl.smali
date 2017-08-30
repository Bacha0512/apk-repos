.class Lcom/twilio/client/impl/CallCommandHandlerImpl;
.super Ljava/lang/Thread;

# interfaces
.implements Lcom/twilio/client/impl/CallCommandHandler;


# static fields
.field private static final logger:Lcom/twilio/client/impl/logging/Logger;


# instance fields
.field callHandler:Landroid/os/Handler;

.field looper:Landroid/os/Looper;

.field workerThread:Lcom/twilio/client/impl/session/NativeWorkerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/twilio/client/impl/CallCommandHandlerImpl;

    invoke-static {v0}, Lcom/twilio/client/impl/logging/Logger;->getLogger(Ljava/lang/Class;)Lcom/twilio/client/impl/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/twilio/client/impl/CallCommandHandlerImpl;->logger:Lcom/twilio/client/impl/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object v0, p0, Lcom/twilio/client/impl/CallCommandHandlerImpl;->callHandler:Landroid/os/Handler;

    iput-object v0, p0, Lcom/twilio/client/impl/CallCommandHandlerImpl;->looper:Landroid/os/Looper;

    iput-object v0, p0, Lcom/twilio/client/impl/CallCommandHandlerImpl;->workerThread:Lcom/twilio/client/impl/session/NativeWorkerThread;

    invoke-virtual {p0}, Lcom/twilio/client/impl/CallCommandHandlerImpl;->start()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/CallCommandHandlerImpl;->looper:Landroid/os/Looper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twilio/client/impl/CallCommandHandlerImpl;->looper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    :cond_0
    invoke-virtual {p0}, Lcom/twilio/client/impl/CallCommandHandlerImpl;->interrupt()V

    return-void
.end method

.method public postCommand(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/CallCommandHandlerImpl;->callHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twilio/client/impl/CallCommandHandlerImpl;->callHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public run()V
    .locals 4

    const/4 v3, 0x0

    :try_start_0
    new-instance v0, Lcom/twilio/client/impl/session/NativeWorkerThread;

    invoke-direct {v0}, Lcom/twilio/client/impl/session/NativeWorkerThread;-><init>()V

    iput-object v0, p0, Lcom/twilio/client/impl/CallCommandHandlerImpl;->workerThread:Lcom/twilio/client/impl/session/NativeWorkerThread;

    invoke-static {}, Landroid/os/Looper;->prepare()V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/twilio/client/impl/CallCommandHandlerImpl;->looper:Landroid/os/Looper;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/twilio/client/impl/CallCommandHandlerImpl;->callHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->loop()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/twilio/client/impl/CallCommandHandlerImpl;->logger:Lcom/twilio/client/impl/logging/Logger;

    const-string v1, "Shutting down thread"

    invoke-virtual {v0, v1}, Lcom/twilio/client/impl/logging/Logger;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twilio/client/impl/CallCommandHandlerImpl;->workerThread:Lcom/twilio/client/impl/session/NativeWorkerThread;

    invoke-virtual {v0}, Lcom/twilio/client/impl/session/NativeWorkerThread;->destroy()V

    iput-object v3, p0, Lcom/twilio/client/impl/CallCommandHandlerImpl;->workerThread:Lcom/twilio/client/impl/session/NativeWorkerThread;

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    sget-object v1, Lcom/twilio/client/impl/CallCommandHandlerImpl;->logger:Lcom/twilio/client/impl/logging/Logger;

    const-string v2, "halted due to an error"

    invoke-virtual {v1, v2, v0}, Lcom/twilio/client/impl/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-object v0, Lcom/twilio/client/impl/CallCommandHandlerImpl;->logger:Lcom/twilio/client/impl/logging/Logger;

    const-string v1, "Shutting down thread"

    invoke-virtual {v0, v1}, Lcom/twilio/client/impl/logging/Logger;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twilio/client/impl/CallCommandHandlerImpl;->workerThread:Lcom/twilio/client/impl/session/NativeWorkerThread;

    invoke-virtual {v0}, Lcom/twilio/client/impl/session/NativeWorkerThread;->destroy()V

    iput-object v3, p0, Lcom/twilio/client/impl/CallCommandHandlerImpl;->workerThread:Lcom/twilio/client/impl/session/NativeWorkerThread;

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/twilio/client/impl/CallCommandHandlerImpl;->logger:Lcom/twilio/client/impl/logging/Logger;

    const-string v2, "Shutting down thread"

    invoke-virtual {v1, v2}, Lcom/twilio/client/impl/logging/Logger;->d(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/twilio/client/impl/CallCommandHandlerImpl;->workerThread:Lcom/twilio/client/impl/session/NativeWorkerThread;

    invoke-virtual {v1}, Lcom/twilio/client/impl/session/NativeWorkerThread;->destroy()V

    iput-object v3, p0, Lcom/twilio/client/impl/CallCommandHandlerImpl;->workerThread:Lcom/twilio/client/impl/session/NativeWorkerThread;

    throw v0
.end method
