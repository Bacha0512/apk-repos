.class final Lcom/tapjoy/internal/dc$a;
.super Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/dc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/Object;

.field private b:Ljava/lang/Throwable;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;-><init>()V

    return-void
.end method


# virtual methods
.method final a()Ljava/lang/Object;
    .locals 4

    invoke-virtual {p0}, Lcom/tapjoy/internal/dc$a;->getState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error, synchronizer in invalid state: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_1
    iget-object v0, p0, Lcom/tapjoy/internal/dc$a;->b:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/concurrent/ExecutionException;

    iget-object v1, p0, Lcom/tapjoy/internal/dc$a;->b:Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/dc$a;->a:Ljava/lang/Object;

    return-object v0

    :pswitch_2
    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string v1, "Task was cancelled."

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method final a(Ljava/lang/Object;Ljava/lang/Throwable;I)Z
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/tapjoy/internal/dc$a;->compareAndSetState(II)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object p1, p0, Lcom/tapjoy/internal/dc$a;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcom/tapjoy/internal/dc$a;->b:Ljava/lang/Throwable;

    invoke-virtual {p0, p3}, Lcom/tapjoy/internal/dc$a;->releaseShared(I)Z

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/tapjoy/internal/dc$a;->getState()I

    move-result v1

    if-ne v1, v2, :cond_0

    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/tapjoy/internal/dc$a;->acquireShared(I)V

    goto :goto_0
.end method

.method final b()Z
    .locals 1

    invoke-virtual {p0}, Lcom/tapjoy/internal/dc$a;->getState()I

    move-result v0

    and-int/lit8 v0, v0, 0x6

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final c()Z
    .locals 2

    invoke-virtual {p0}, Lcom/tapjoy/internal/dc$a;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final tryAcquireShared(I)I
    .locals 1

    invoke-virtual {p0}, Lcom/tapjoy/internal/dc$a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method protected final tryReleaseShared(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/tapjoy/internal/dc$a;->setState(I)V

    const/4 v0, 0x1

    return v0
.end method
