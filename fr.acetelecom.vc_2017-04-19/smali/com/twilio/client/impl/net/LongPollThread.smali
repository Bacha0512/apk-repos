.class abstract Lcom/twilio/client/impl/net/LongPollThread;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twilio/client/impl/net/LongPollThread$DummyListener;
    }
.end annotation


# static fields
.field protected static final CONNECT_TIMEOUT:I = 0x7530

.field protected static final INITIAL_RECONNECT_WAIT:I = 0x3e8

.field protected static final MAX_RECONNECT_WAIT:I = 0x1d4c0

.field public static final THREAD_JOIN_TIMEOUT:I = 0xbb8

.field protected static final handler:Landroid/os/Handler;

.field private static final random:Ljava/util/Random;


# instance fields
.field protected final allowedCommonNames:[Ljava/lang/String;

.field protected curReconnectWait:I

.field protected listener:Lcom/twilio/client/impl/net/LongPollConnection$Listener;

.field protected shouldTerminate:Z

.field protected uri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/twilio/client/impl/net/LongPollThread;->handler:Landroid/os/Handler;

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/twilio/client/impl/net/LongPollThread;->random:Ljava/util/Random;

    return-void
.end method

.method constructor <init>(Landroid/net/Uri;[Ljava/lang/String;Lcom/twilio/client/impl/net/LongPollConnection$Listener;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/twilio/client/impl/net/LongPollThread;->curReconnectWait:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/twilio/client/impl/net/LongPollThread;->random:Ljava/util/Random;

    const v2, 0x15f90

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/lit16 v1, v1, 0x2710

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twilio/client/impl/net/LongPollThread;->setName(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/twilio/client/impl/net/LongPollThread;->uri:Landroid/net/Uri;

    if-eqz p2, :cond_1

    array-length v0, p2

    new-array v0, v0, [Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lcom/twilio/client/impl/net/LongPollThread;->allowedCommonNames:[Ljava/lang/String;

    iget-object v0, p0, Lcom/twilio/client/impl/net/LongPollThread;->allowedCommonNames:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twilio/client/impl/net/LongPollThread;->allowedCommonNames:[Ljava/lang/String;

    array-length v1, p2

    invoke-static {p2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iput-object p3, p0, Lcom/twilio/client/impl/net/LongPollThread;->listener:Lcom/twilio/client/impl/net/LongPollConnection$Listener;

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public disconnect()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twilio/client/impl/net/LongPollThread;->shouldTerminate:Z

    new-instance v0, Lcom/twilio/client/impl/net/LongPollThread$DummyListener;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/twilio/client/impl/net/LongPollThread$DummyListener;-><init>(Lcom/twilio/client/impl/net/LongPollThread$1;)V

    iput-object v0, p0, Lcom/twilio/client/impl/net/LongPollThread;->listener:Lcom/twilio/client/impl/net/LongPollConnection$Listener;

    invoke-virtual {p0}, Lcom/twilio/client/impl/net/LongPollThread;->interrupt()V

    return-void
.end method

.method abstract isConnected()Z
.end method

.method protected portForUri(Landroid/net/Uri;)I
    .locals 2

    invoke-virtual {p1}, Landroid/net/Uri;->getPort()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x1bb

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v0, 0x50

    goto :goto_0
.end method
