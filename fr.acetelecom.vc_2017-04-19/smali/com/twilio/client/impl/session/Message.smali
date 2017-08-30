.class public Lcom/twilio/client/impl/session/Message;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twilio/client/impl/session/Message$StatusLine;,
        Lcom/twilio/client/impl/session/Message$RequestLine;
    }
.end annotation


# instance fields
.field private final headers:Ljava/util/Map;
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

.field private final requestLine:Lcom/twilio/client/impl/session/Message$RequestLine;

.field private final statusLine:Lcom/twilio/client/impl/session/Message$StatusLine;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twilio/client/impl/session/Message;->requestLine:Lcom/twilio/client/impl/session/Message$RequestLine;

    new-instance v0, Lcom/twilio/client/impl/session/Message$StatusLine;

    invoke-direct {v0, p0, p1, p2}, Lcom/twilio/client/impl/session/Message$StatusLine;-><init>(Lcom/twilio/client/impl/session/Message;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/twilio/client/impl/session/Message;->statusLine:Lcom/twilio/client/impl/session/Message$StatusLine;

    if-eqz p3, :cond_0

    invoke-static {p3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/twilio/client/impl/session/Message;->headers:Ljava/util/Map;

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/twilio/client/impl/session/Message;->headers:Ljava/util/Map;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/twilio/client/impl/session/Message$RequestLine;

    invoke-direct {v0, p0, p1, p2}, Lcom/twilio/client/impl/session/Message$RequestLine;-><init>(Lcom/twilio/client/impl/session/Message;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/twilio/client/impl/session/Message;->requestLine:Lcom/twilio/client/impl/session/Message$RequestLine;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twilio/client/impl/session/Message;->statusLine:Lcom/twilio/client/impl/session/Message$StatusLine;

    if-eqz p3, :cond_0

    invoke-static {p3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/twilio/client/impl/session/Message;->headers:Ljava/util/Map;

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/twilio/client/impl/session/Message;->headers:Ljava/util/Map;

    goto :goto_0
.end method


# virtual methods
.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/twilio/client/impl/session/Message;->headers:Ljava/util/Map;

    return-object v0
.end method

.method public getRequestLine()Lcom/twilio/client/impl/session/Message$RequestLine;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/session/Message;->requestLine:Lcom/twilio/client/impl/session/Message$RequestLine;

    return-object v0
.end method

.method public getStatusLine()Lcom/twilio/client/impl/session/Message$StatusLine;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/session/Message;->statusLine:Lcom/twilio/client/impl/session/Message$StatusLine;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    const/4 v1, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/twilio/client/impl/session/Message;->requestLine:Lcom/twilio/client/impl/session/Message$RequestLine;

    if-eqz v0, :cond_0

    const-string v0, "Message@%x <type=REQUEST method=%s uri=%s>"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/twilio/client/impl/session/Message;->requestLine:Lcom/twilio/client/impl/session/Message$RequestLine;

    invoke-virtual {v2}, Lcom/twilio/client/impl/session/Message$RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/twilio/client/impl/session/Message;->requestLine:Lcom/twilio/client/impl/session/Message$RequestLine;

    invoke-virtual {v2}, Lcom/twilio/client/impl/session/Message$RequestLine;->getUri()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/twilio/client/impl/session/Message;->statusLine:Lcom/twilio/client/impl/session/Message$StatusLine;

    if-eqz v0, :cond_1

    const-string v0, "Message@%x <type=RESPONSE code=%d reason=%s>"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/twilio/client/impl/session/Message;->statusLine:Lcom/twilio/client/impl/session/Message$StatusLine;

    invoke-virtual {v2}, Lcom/twilio/client/impl/session/Message$StatusLine;->getCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/twilio/client/impl/session/Message;->statusLine:Lcom/twilio/client/impl/session/Message$StatusLine;

    invoke-virtual {v2}, Lcom/twilio/client/impl/session/Message$StatusLine;->getReason()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
