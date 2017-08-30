.class abstract Lcom/twilio/client/impl/net/HttpLongPollThread;
.super Lcom/twilio/client/impl/net/LongPollThread;


# static fields
.field private static final hexPattern:Ljava/util/regex/Pattern;

.field private static final logger:Lcom/twilio/client/impl/logging/Logger;


# instance fields
.field private connected:Z

.field private headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private socket:Ljava/net/Socket;

.field private transferEncoding:Lcom/twilio/client/impl/net/LongPollConnection$TransferEncoding;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/twilio/client/impl/net/HttpLongPollThread;

    invoke-static {v0}, Lcom/twilio/client/impl/logging/Logger;->getLogger(Ljava/lang/Class;)Lcom/twilio/client/impl/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/twilio/client/impl/net/HttpLongPollThread;->logger:Lcom/twilio/client/impl/logging/Logger;

    const-string v0, "^([a-zA-Z0-9]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/twilio/client/impl/net/HttpLongPollThread;->hexPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Landroid/net/Uri;Ljava/util/Map;[Ljava/lang/String;Lcom/twilio/client/impl/net/LongPollConnection$Listener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
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

    invoke-direct {p0, p1, p3, p4}, Lcom/twilio/client/impl/net/LongPollThread;-><init>(Landroid/net/Uri;[Ljava/lang/String;Lcom/twilio/client/impl/net/LongPollConnection$Listener;)V

    sget-object v0, Lcom/twilio/client/impl/net/LongPollConnection$TransferEncoding;->NONE:Lcom/twilio/client/impl/net/LongPollConnection$TransferEncoding;

    iput-object v0, p0, Lcom/twilio/client/impl/net/HttpLongPollThread;->transferEncoding:Lcom/twilio/client/impl/net/LongPollConnection$TransferEncoding;

    iput-object p2, p0, Lcom/twilio/client/impl/net/HttpLongPollThread;->headers:Ljava/util/Map;

    return-void
.end method

.method private parseChunkSizeLine(Ljava/lang/String;)I
    .locals 4

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/twilio/client/impl/net/HttpLongPollThread;->hexPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method private receiveHeaders(Ljava/io/BufferedReader;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;,
            Lcom/twilio/client/impl/net/HttpException;
        }
    .end annotation

    const/16 v11, 0xc8

    const/4 v2, 0x0

    const/16 v10, 0x12c

    const/16 v9, 0x20

    const/4 v8, -0x1

    const/4 v0, 0x0

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move v1, v2

    :cond_0
    :goto_0
    iget-boolean v3, p0, Lcom/twilio/client/impl/net/HttpLongPollThread;->shouldTerminate:Z

    if-nez v3, :cond_2

    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    sget-object v3, Lcom/twilio/client/impl/net/HttpLongPollThread;->logger:Lcom/twilio/client/impl/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "got headers line: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/twilio/client/impl/logging/Logger;->v(Ljava/lang/String;)V

    if-nez v5, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Server closed socket before all headers received"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string v3, ""

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    iget-boolean v2, p0, Lcom/twilio/client/impl/net/HttpLongPollThread;->shouldTerminate:Z

    if-eqz v2, :cond_9

    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    :cond_3
    if-nez v1, :cond_4

    invoke-virtual {v5, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-eq v3, v8, :cond_2

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v9, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    if-eq v6, v8, :cond_2

    add-int/lit8 v1, v3, 0x1

    invoke-virtual {v5, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_2

    add-int/lit8 v0, v6, 0x1

    invoke-virtual {v5, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    const/16 v3, 0x3a

    invoke-virtual {v5, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ne v6, v8, :cond_5

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid header received from server"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    add-int/lit8 v3, v6, 0x1

    :goto_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v3, v7, :cond_6

    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v7, v9, :cond_7

    :cond_6
    invoke-virtual {v5, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "transfer-encoding"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "chunked"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    sget-object v3, Lcom/twilio/client/impl/net/LongPollConnection$TransferEncoding;->CHUNKED:Lcom/twilio/client/impl/net/LongPollConnection$TransferEncoding;

    iput-object v3, p0, Lcom/twilio/client/impl/net/HttpLongPollThread;->transferEncoding:Lcom/twilio/client/impl/net/LongPollConnection$TransferEncoding;

    goto/16 :goto_0

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_8
    sget-object v5, Lcom/twilio/client/impl/net/HttpLongPollThread;->logger:Lcom/twilio/client/impl/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Got Transfer-Encoding \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "\' which is unsupported"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/twilio/client/impl/logging/Logger;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    if-gtz v1, :cond_a

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Server did not provide a valid response"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    if-lt v1, v10, :cond_b

    const/16 v2, 0x190

    if-lt v1, v2, :cond_d

    :cond_b
    if-lt v1, v11, :cond_c

    if-ge v1, v10, :cond_c

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/twilio/client/impl/net/HttpLongPollThread;->connected:Z

    :cond_c
    sget-object v2, Lcom/twilio/client/impl/net/HttpLongPollThread;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/twilio/client/impl/net/HttpLongPollThread$2;

    invoke-direct {v3, p0, v1, v0, v4}, Lcom/twilio/client/impl/net/HttpLongPollThread$2;-><init>(Lcom/twilio/client/impl/net/HttpLongPollThread;ILjava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_d
    if-lt v1, v11, :cond_e

    if-lt v1, v10, :cond_f

    :cond_e
    new-instance v2, Lcom/twilio/client/impl/net/HttpException;

    invoke-direct {v2, v1, v0, v4}, Lcom/twilio/client/impl/net/HttpException;-><init>(ILjava/lang/String;Ljava/util/Map;)V

    throw v2

    :cond_f
    return-void
.end method

.method private releaseNetworkResources(Ljava/io/BufferedReader;Ljava/io/PrintStream;)V
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/net/HttpLongPollThread;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/twilio/client/impl/net/HttpLongPollThread;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twilio/client/impl/net/HttpLongPollThread;->socket:Ljava/net/Socket;

    :cond_0
    if-eqz p1, :cond_1

    :try_start_1
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/io/PrintStream;->close()V

    :cond_2
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private sendHeaders(Ljava/io/PrintStream;)V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/twilio/client/impl/net/HttpLongPollThread;->uri:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/twilio/client/impl/net/HttpLongPollThread;->portForUri(Landroid/net/Uri;)I

    move-result v1

    iget-object v0, p0, Lcom/twilio/client/impl/net/HttpLongPollThread;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/twilio/client/impl/net/HttpLongPollThread;->uri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/twilio/client/impl/net/HttpLongPollThread;->uri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GET %s HTTP/1.1\r\nHost: %s:%d\r\nX-Twilio-Client: %s\r\nAccept: */*\r\n"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v6

    iget-object v0, p0, Lcom/twilio/client/impl/net/HttpLongPollThread;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v8

    const/4 v0, 0x3

    invoke-static {}, Lcom/twilio/client/impl/Constants;->getClientString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/twilio/client/impl/net/HttpLongPollThread;->headers:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twilio/client/impl/net/HttpLongPollThread;->headers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    const-string v3, "%s: %s\r\n"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/twilio/client/impl/net/HttpLongPollThread;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "\r\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/twilio/client/impl/net/HttpLongPollThread;->logger:Lcom/twilio/client/impl/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sending headers:\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twilio/client/impl/logging/Logger;->d(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return-void
.end method

.method private setUpSocket()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;,
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;,
            Ljava/security/KeyManagementException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/twilio/client/impl/net/HttpLongPollThread;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/twilio/client/impl/net/HttpLongPollThread;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only http and https sockets are supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, Lcom/twilio/client/impl/net/HttpLongPollThread;->uri:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Lcom/twilio/client/impl/net/HttpLongPollThread;->portForUri(Landroid/net/Uri;)I

    move-result v1

    sget-object v2, Lcom/twilio/client/impl/net/HttpLongPollThread;->logger:Lcom/twilio/client/impl/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connecting to host "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/twilio/client/impl/net/HttpLongPollThread;->uri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " on port "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/twilio/client/impl/logging/Logger;->d(Ljava/lang/String;)V

    new-instance v2, Ljava/net/Socket;

    invoke-direct {v2}, Ljava/net/Socket;-><init>()V

    iput-object v2, p0, Lcom/twilio/client/impl/net/HttpLongPollThread;->socket:Ljava/net/Socket;

    iget-object v2, p0, Lcom/twilio/client/impl/net/HttpLongPollThread;->socket:Ljava/net/Socket;

    invoke-virtual {v2, v5}, Ljava/net/Socket;->setKeepAlive(Z)V

    new-instance v2, Ljava/net/InetSocketAddress;

    iget-object v3, p0, Lcom/twilio/client/impl/net/HttpLongPollThread;->uri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    iget-boolean v3, p0, Lcom/twilio/client/impl/net/HttpLongPollThread;->shouldTerminate:Z

    if-eqz v3, :cond_1

    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    :cond_1
    iget-object v3, p0, Lcom/twilio/client/impl/net/HttpLongPollThread;->socket:Ljava/net/Socket;

    const/16 v4, 0x7530

    invoke-virtual {v3, v2, v4}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    iget-boolean v2, p0, Lcom/twilio/client/impl/net/HttpLongPollThread;->shouldTerminate:Z

    if-eqz v2, :cond_2

    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    :cond_2
    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/twilio/client/impl/net/HttpLongPollThread;->allowedCommonNames:[Ljava/lang/String;

    if-eqz v0, :cond_3

    new-instance v0, Lcom/twilio/client/impl/net/TwilioSSLSocketFactory;

    iget-object v2, p0, Lcom/twilio/client/impl/net/HttpLongPollThread;->allowedCommonNames:[Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/twilio/client/impl/net/TwilioSSLSocketFactory;-><init>([Ljava/lang/String;)V

    :goto_0
    iget-object v2, p0, Lcom/twilio/client/impl/net/HttpLongPollThread;->socket:Ljava/net/Socket;

    iget-object v3, p0, Lcom/twilio/client/impl/net/HttpLongPollThread;->uri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v1, v5}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lcom/twilio/client/impl/net/HttpLongPollThread;->socket:Ljava/net/Socket;

    iget-boolean v0, p0, Lcom/twilio/client/impl/net/HttpLongPollThread;->shouldTerminate:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    :cond_3
    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v0

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/twilio/client/impl/net/HttpLongPollThread;->logger:Lcom/twilio/client/impl/logging/Logger;

    const-string v1, "... connected"

    invoke-virtual {v0, v1}, Lcom/twilio/client/impl/logging/Logger;->d(Ljava/lang/String;)V

    sget-object v0, Lcom/twilio/client/impl/net/HttpLongPollThread;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/twilio/client/impl/net/HttpLongPollThread$1;

    invoke-direct {v1, p0}, Lcom/twilio/client/impl/net/HttpLongPollThread$1;-><init>(Lcom/twilio/client/impl/net/HttpLongPollThread;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method abstract handleMessage(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method handleMessages(Ljava/io/BufferedReader;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v6, -0x1

    const/16 v0, 0x400

    new-array v0, v0, [C

    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/twilio/client/impl/net/HttpLongPollThread;->shouldTerminate:Z

    if-nez v1, :cond_1

    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-boolean v2, p0, Lcom/twilio/client/impl/net/HttpLongPollThread;->shouldTerminate:Z

    if-eqz v2, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcom/twilio/client/impl/net/HttpLongPollThread;->shouldTerminate:Z

    if-eqz v0, :cond_b

    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    :cond_2
    iget-object v2, p0, Lcom/twilio/client/impl/net/HttpLongPollThread;->transferEncoding:Lcom/twilio/client/impl/net/LongPollConnection$TransferEncoding;

    sget-object v3, Lcom/twilio/client/impl/net/LongPollConnection$TransferEncoding;->CHUNKED:Lcom/twilio/client/impl/net/LongPollConnection$TransferEncoding;

    if-ne v2, v3, :cond_a

    invoke-direct {p0, v1}, Lcom/twilio/client/impl/net/HttpLongPollThread;->parseChunkSizeLine(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v6, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got invalid HTTP chunk size from string "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-eqz v2, :cond_1

    array-length v1, v0

    if-le v2, v1, :cond_4

    new-array v0, v2, [C

    :cond_4
    move v1, v2

    :cond_5
    :goto_1
    if-lez v1, :cond_7

    sub-int v3, v2, v1

    invoke-virtual {p1, v0, v3, v1}, Ljava/io/BufferedReader;->read([CII)I

    move-result v3

    if-ne v3, v6, :cond_6

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got HTTP chunk size of "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes, but read was smaller"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    sub-int/2addr v1, v3

    iget-boolean v4, p0, Lcom/twilio/client/impl/net/HttpLongPollThread;->shouldTerminate:Z

    if-eqz v4, :cond_8

    :cond_7
    new-instance v1, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3, v2}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/twilio/client/impl/net/HttpLongPollThread;->shouldTerminate:Z

    if-nez v3, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_9

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HTTP chunk not terminated properly (got: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    if-nez v3, :cond_5

    const-wide/16 v4, 0x64

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_1

    :cond_9
    sget-object v2, Lcom/twilio/client/impl/net/HttpLongPollThread;->logger:Lcom/twilio/client/impl/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "got chunk: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/twilio/client/impl/logging/Logger;->d(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/twilio/client/impl/net/HttpLongPollThread;->handleMessage(Ljava/lang/String;)Z

    goto/16 :goto_0

    :cond_a
    sget-object v2, Lcom/twilio/client/impl/net/HttpLongPollThread;->logger:Lcom/twilio/client/impl/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "got line: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/twilio/client/impl/logging/Logger;->d(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/twilio/client/impl/net/HttpLongPollThread;->handleMessage(Ljava/lang/String;)Z

    goto/16 :goto_0

    :cond_b
    return-void
.end method

.method isConnected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/twilio/client/impl/net/HttpLongPollThread;->connected:Z

    return v0
.end method

.method public run()V
    .locals 9

    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v0, v4

    :goto_0
    if-nez v0, :cond_d

    :try_start_0
    iget-boolean v1, p0, Lcom/twilio/client/impl/net/HttpLongPollThread;->shouldTerminate:Z

    if-eqz v1, :cond_5

    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :catch_0
    move-exception v0

    move-object v1, v4

    move-object v5, v4

    :goto_1
    :try_start_1
    sget-object v6, Lcom/twilio/client/impl/net/HttpLongPollThread;->logger:Lcom/twilio/client/impl/logging/Logger;

    const-string v7, "long poller got exception"

    invoke-virtual {v6, v7, v0}, Lcom/twilio/client/impl/logging/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0, v5, v1}, Lcom/twilio/client/impl/net/HttpLongPollThread;->releaseNetworkResources(Ljava/io/BufferedReader;Ljava/io/PrintStream;)V

    iput-boolean v3, p0, Lcom/twilio/client/impl/net/HttpLongPollThread;->connected:Z

    move-object v1, v0

    :goto_2
    if-eqz v1, :cond_b

    instance-of v0, v1, Lcom/twilio/client/impl/net/HttpException;

    if-eqz v0, :cond_b

    move-object v0, v1

    check-cast v0, Lcom/twilio/client/impl/net/HttpException;

    invoke-virtual {v0}, Lcom/twilio/client/impl/net/HttpException;->getStatusCode()I

    move-result v5

    const/16 v6, 0x12d

    if-eq v5, v6, :cond_0

    const/16 v6, 0x12e

    if-eq v5, v6, :cond_0

    const/16 v6, 0x12f

    if-eq v5, v6, :cond_0

    const/16 v6, 0x133

    if-ne v5, v6, :cond_8

    :cond_0
    invoke-virtual {v0}, Lcom/twilio/client/impl/net/HttpException;->getResponseHeaders()Ljava/util/Map;

    move-result-object v0

    const-string v5, "location"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_6

    :cond_1
    sget-object v0, Lcom/twilio/client/impl/net/HttpLongPollThread;->logger:Lcom/twilio/client/impl/logging/Logger;

    const-string v5, "Got no or invalid \'Location\' header when attempting redirect"

    invoke-virtual {v0, v5}, Lcom/twilio/client/impl/logging/Logger;->w(Ljava/lang/String;)V

    move v0, v3

    :goto_3
    move-object v5, v1

    move v1, v0

    move v0, v3

    :goto_4
    move v6, v1

    move-object v1, v5

    move v5, v0

    :goto_5
    if-eqz v1, :cond_2

    instance-of v0, v1, Ljava/lang/InterruptedException;

    if-eqz v0, :cond_c

    move-object v0, v4

    :goto_6
    sget-object v7, Lcom/twilio/client/impl/net/HttpLongPollThread;->handler:Landroid/os/Handler;

    new-instance v8, Lcom/twilio/client/impl/net/HttpLongPollThread$3;

    invoke-direct {v8, p0, v0, v6}, Lcom/twilio/client/impl/net/HttpLongPollThread$3;-><init>(Lcom/twilio/client/impl/net/HttpLongPollThread;Ljava/lang/Exception;Z)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    if-eqz v6, :cond_4

    if-eqz v5, :cond_3

    :try_start_2
    iget v0, p0, Lcom/twilio/client/impl/net/HttpLongPollThread;->curReconnectWait:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/twilio/client/impl/net/HttpLongPollThread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    iget v0, p0, Lcom/twilio/client/impl/net/HttpLongPollThread;->curReconnectWait:I

    const v1, 0x1d4c0

    if-ge v0, v1, :cond_3

    iget v0, p0, Lcom/twilio/client/impl/net/HttpLongPollThread;->curReconnectWait:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/twilio/client/impl/net/HttpLongPollThread;->curReconnectWait:I

    :cond_3
    move-object v1, v4

    :cond_4
    move-object v0, v1

    goto/16 :goto_0

    :cond_5
    :try_start_3
    invoke-direct {p0}, Lcom/twilio/client/impl/net/HttpLongPollThread;->setUpSocket()V

    new-instance v1, Ljava/io/PrintStream;

    iget-object v5, p0, Lcom/twilio/client/impl/net/HttpLongPollThread;->socket:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    const/4 v6, 0x1

    const-string v7, "ASCII"

    invoke-direct {v1, v5, v6, v7}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;ZLjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-direct {p0, v1}, Lcom/twilio/client/impl/net/HttpLongPollThread;->sendHeaders(Ljava/io/PrintStream;)V

    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    iget-object v7, p0, Lcom/twilio/client/impl/net/HttpLongPollThread;->socket:Ljava/net/Socket;

    invoke-virtual {v7}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-direct {v6, v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    invoke-direct {p0, v5}, Lcom/twilio/client/impl/net/HttpLongPollThread;->receiveHeaders(Ljava/io/BufferedReader;)V

    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/twilio/client/impl/net/HttpLongPollThread;->connected:Z

    invoke-virtual {p0, v5}, Lcom/twilio/client/impl/net/HttpLongPollThread;->handleMessages(Ljava/io/BufferedReader;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-direct {p0, v5, v1}, Lcom/twilio/client/impl/net/HttpLongPollThread;->releaseNetworkResources(Ljava/io/BufferedReader;Ljava/io/PrintStream;)V

    iput-boolean v3, p0, Lcom/twilio/client/impl/net/HttpLongPollThread;->connected:Z

    move-object v1, v0

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    move-object v4, v5

    :goto_7
    invoke-direct {p0, v4, v1}, Lcom/twilio/client/impl/net/HttpLongPollThread;->releaseNetworkResources(Ljava/io/BufferedReader;Ljava/io/PrintStream;)V

    iput-boolean v3, p0, Lcom/twilio/client/impl/net/HttpLongPollThread;->connected:Z

    throw v0

    :cond_6
    iget-object v1, p0, Lcom/twilio/client/impl/net/HttpLongPollThread;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/twilio/client/impl/net/HttpLongPollThread;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_7
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/twilio/client/impl/net/HttpLongPollThread;->uri:Landroid/net/Uri;

    sget-object v0, Lcom/twilio/client/impl/net/LongPollConnection$TransferEncoding;->NONE:Lcom/twilio/client/impl/net/LongPollConnection$TransferEncoding;

    iput-object v0, p0, Lcom/twilio/client/impl/net/HttpLongPollThread;->transferEncoding:Lcom/twilio/client/impl/net/LongPollConnection$TransferEncoding;

    move v0, v2

    move-object v1, v4

    goto/16 :goto_3

    :cond_8
    const/16 v0, 0x1f4

    if-ge v5, v0, :cond_9

    const/16 v0, 0xc8

    if-ge v5, v0, :cond_a

    :cond_9
    move v0, v2

    move-object v5, v1

    move v1, v2

    goto/16 :goto_4

    :cond_a
    move v0, v3

    move-object v5, v1

    move v1, v3

    goto/16 :goto_4

    :cond_b
    if-eqz v1, :cond_e

    instance-of v0, v1, Ljava/lang/InterruptedException;

    if-nez v0, :cond_e

    move v5, v2

    move v6, v2

    goto/16 :goto_5

    :cond_c
    move-object v0, v1

    goto/16 :goto_6

    :catch_1
    move-exception v0

    :cond_d
    return-void

    :catchall_1
    move-exception v0

    move-object v1, v4

    goto :goto_7

    :catchall_2
    move-exception v0

    goto :goto_7

    :catch_2
    move-exception v0

    move-object v5, v4

    goto/16 :goto_1

    :catch_3
    move-exception v0

    goto/16 :goto_1

    :cond_e
    move v5, v3

    move v6, v3

    goto/16 :goto_5
.end method

.method setTransferEncoding(Lcom/twilio/client/impl/net/LongPollConnection$TransferEncoding;)V
    .locals 0

    iput-object p1, p0, Lcom/twilio/client/impl/net/HttpLongPollThread;->transferEncoding:Lcom/twilio/client/impl/net/LongPollConnection$TransferEncoding;

    return-void
.end method
