.class public Lcom/twilio/client/impl/net/HttpJsonLongPollConnection;
.super Lcom/twilio/client/impl/net/LongPollConnection;


# instance fields
.field private thread:Lcom/twilio/client/impl/net/HttpJsonLongPollThread;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/twilio/client/impl/net/LongPollConnection$Listener;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0, p2}, Lcom/twilio/client/impl/net/HttpJsonLongPollConnection;-><init>(Ljava/lang/String;Ljava/util/Map;[Ljava/lang/String;Lcom/twilio/client/impl/net/LongPollConnection$Listener;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;[Ljava/lang/String;Lcom/twilio/client/impl/net/LongPollConnection$Listener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            "Lcom/twilio/client/impl/net/LongPollConnection$Listener;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/twilio/client/impl/net/LongPollConnection;-><init>()V

    new-instance v0, Lcom/twilio/client/impl/net/HttpJsonLongPollThread;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1, p2, p3, p4}, Lcom/twilio/client/impl/net/HttpJsonLongPollThread;-><init>(Landroid/net/Uri;Ljava/util/Map;[Ljava/lang/String;Lcom/twilio/client/impl/net/LongPollConnection$Listener;)V

    iput-object v0, p0, Lcom/twilio/client/impl/net/HttpJsonLongPollConnection;->thread:Lcom/twilio/client/impl/net/HttpJsonLongPollThread;

    return-void
.end method


# virtual methods
.method public connect()V
    .locals 2

    iget-object v0, p0, Lcom/twilio/client/impl/net/HttpJsonLongPollConnection;->thread:Lcom/twilio/client/impl/net/HttpJsonLongPollThread;

    invoke-virtual {v0}, Lcom/twilio/client/impl/net/HttpJsonLongPollThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "HTTPLongPollConnection.connect() called while already connected"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/twilio/client/impl/net/HttpJsonLongPollConnection;->thread:Lcom/twilio/client/impl/net/HttpJsonLongPollThread;

    invoke-virtual {v0}, Lcom/twilio/client/impl/net/HttpJsonLongPollThread;->start()V

    return-void
.end method

.method public disconnect()V
    .locals 4

    iget-object v0, p0, Lcom/twilio/client/impl/net/HttpJsonLongPollConnection;->thread:Lcom/twilio/client/impl/net/HttpJsonLongPollThread;

    invoke-virtual {v0}, Lcom/twilio/client/impl/net/HttpJsonLongPollThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twilio/client/impl/net/HttpJsonLongPollConnection;->thread:Lcom/twilio/client/impl/net/HttpJsonLongPollThread;

    invoke-virtual {v0}, Lcom/twilio/client/impl/net/HttpJsonLongPollThread;->disconnect()V

    :try_start_0
    iget-object v0, p0, Lcom/twilio/client/impl/net/HttpJsonLongPollConnection;->thread:Lcom/twilio/client/impl/net/HttpJsonLongPollThread;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v2, v3}, Lcom/twilio/client/impl/net/HttpJsonLongPollThread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twilio/client/impl/net/HttpJsonLongPollConnection;->thread:Lcom/twilio/client/impl/net/HttpJsonLongPollThread;

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public isConnected()Z
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/net/HttpJsonLongPollConnection;->thread:Lcom/twilio/client/impl/net/HttpJsonLongPollThread;

    invoke-virtual {v0}, Lcom/twilio/client/impl/net/HttpJsonLongPollThread;->isConnected()Z

    move-result v0

    return v0
.end method
