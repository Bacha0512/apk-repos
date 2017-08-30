.class public Lcom/twilio/client/impl/session/NativeWorkerThread;
.super Ljava/lang/Object;


# static fields
.field private static final random:Ljava/util/Random;


# instance fields
.field private threadDescPtr:J

.field private threadName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/twilio/client/impl/session/NativeWorkerThread;->random:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/twilio/client/impl/session/SessionException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Lcom/twilio/client/impl/session/NativeWorkerThread;->random:Ljava/util/Random;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/twilio/client/impl/session/NativeWorkerThread;->random:Ljava/util/Random;

    const v3, 0x3b9aca00

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twilio/client/impl/session/NativeWorkerThread;->threadName:Ljava/lang/String;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/twilio/client/impl/session/NativeWorkerThread;->threadName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/twilio/client/impl/session/NativeWorkerThread;->initializeNative(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private native finalizeNative(J)V
.end method

.method private native initializeNative(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/twilio/client/impl/session/SessionException;
        }
    .end annotation
.end method


# virtual methods
.method public destroy()V
    .locals 2

    iget-wide v0, p0, Lcom/twilio/client/impl/session/NativeWorkerThread;->threadDescPtr:J

    invoke-direct {p0, v0, v1}, Lcom/twilio/client/impl/session/NativeWorkerThread;->finalizeNative(J)V

    return-void
.end method

.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/twilio/client/impl/session/NativeWorkerThread;->destroy()V

    return-void
.end method
