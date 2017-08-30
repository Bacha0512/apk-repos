.class public Lcom/twilio/client/impl/CapabilityTokenParser;
.super Ljava/lang/Object;


# static fields
.field private static final logger:Lcom/twilio/client/impl/logging/Logger;


# instance fields
.field accountSID:Ljava/lang/String;

.field applicationSID:Ljava/lang/String;

.field decodedPayload:Ljava/lang/String;

.field expiresTimestamp:J

.field hasIncomingCapability:Z

.field hasOutgoingCapability:Z

.field incomingName:Ljava/lang/String;

.field parameters:Ljava/util/Map;
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

.field rawToken:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/twilio/client/impl/CapabilityTokenParser;

    invoke-static {v0}, Lcom/twilio/client/impl/logging/Logger;->getLogger(Ljava/lang/Class;)Lcom/twilio/client/impl/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/twilio/client/impl/CapabilityTokenParser;->logger:Lcom/twilio/client/impl/logging/Logger;

    return-void
.end method

.method constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/twilio/client/impl/CapabilityTokenParser;->accountSID:Ljava/lang/String;

    iput-object v2, p0, Lcom/twilio/client/impl/CapabilityTokenParser;->applicationSID:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/twilio/client/impl/CapabilityTokenParser;->expiresTimestamp:J

    iput-boolean v3, p0, Lcom/twilio/client/impl/CapabilityTokenParser;->hasIncomingCapability:Z

    iput-object v2, p0, Lcom/twilio/client/impl/CapabilityTokenParser;->incomingName:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/twilio/client/impl/CapabilityTokenParser;->hasOutgoingCapability:Z

    iput-object v2, p0, Lcom/twilio/client/impl/CapabilityTokenParser;->parameters:Ljava/util/Map;

    iput-object v2, p0, Lcom/twilio/client/impl/CapabilityTokenParser;->rawToken:Ljava/lang/String;

    iput-object v2, p0, Lcom/twilio/client/impl/CapabilityTokenParser;->decodedPayload:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/twilio/client/impl/CapabilityTokenParseException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/twilio/client/impl/CapabilityTokenParser;->accountSID:Ljava/lang/String;

    iput-object v2, p0, Lcom/twilio/client/impl/CapabilityTokenParser;->applicationSID:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/twilio/client/impl/CapabilityTokenParser;->expiresTimestamp:J

    iput-boolean v3, p0, Lcom/twilio/client/impl/CapabilityTokenParser;->hasIncomingCapability:Z

    iput-object v2, p0, Lcom/twilio/client/impl/CapabilityTokenParser;->incomingName:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/twilio/client/impl/CapabilityTokenParser;->hasOutgoingCapability:Z

    iput-object v2, p0, Lcom/twilio/client/impl/CapabilityTokenParser;->parameters:Ljava/util/Map;

    iput-object v2, p0, Lcom/twilio/client/impl/CapabilityTokenParser;->rawToken:Ljava/lang/String;

    iput-object v2, p0, Lcom/twilio/client/impl/CapabilityTokenParser;->decodedPayload:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/twilio/client/impl/CapabilityTokenParser;->parse(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected extractHeader(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/twilio/client/impl/CapabilityTokenParser;->logger:Lcom/twilio/client/impl/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Capability token HEADER: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twilio/client/impl/logging/Logger;->i(Ljava/lang/String;)V

    return-void
.end method

.method protected extractPayload(Ljava/lang/String;)V
    .locals 13

    const/4 v2, 0x0

    const/4 v12, 0x1

    sget-object v0, Lcom/twilio/client/impl/CapabilityTokenParser;->logger:Lcom/twilio/client/impl/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Capability token PAYLOAD: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twilio/client/impl/logging/Logger;->i(Ljava/lang/String;)V

    if-eqz p1, :cond_9

    :try_start_0
    iput-object p1, p0, Lcom/twilio/client/impl/CapabilityTokenParser;->decodedPayload:Ljava/lang/String;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/twilio/client/impl/JWTPayload;->JWT_PAYLOAD_ISSUER:Lcom/twilio/client/impl/JWTPayload;

    invoke-virtual {v1}, Lcom/twilio/client/impl/JWTPayload;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/twilio/client/impl/JWTPayload;->JWT_PAYLOAD_ISSUER:Lcom/twilio/client/impl/JWTPayload;

    invoke-virtual {v1}, Lcom/twilio/client/impl/JWTPayload;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/twilio/client/impl/CapabilityTokenParser;->accountSID:Ljava/lang/String;

    :cond_0
    sget-object v1, Lcom/twilio/client/impl/JWTPayload;->JWT_PAYLOAD_EXPIRATION_TIME:Lcom/twilio/client/impl/JWTPayload;

    invoke-virtual {v1}, Lcom/twilio/client/impl/JWTPayload;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/twilio/client/impl/JWTPayload;->JWT_PAYLOAD_EXPIRATION_TIME:Lcom/twilio/client/impl/JWTPayload;

    invoke-virtual {v1}, Lcom/twilio/client/impl/JWTPayload;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/twilio/client/impl/CapabilityTokenParser;->expiresTimestamp:J

    :cond_1
    sget-object v1, Lcom/twilio/client/impl/JWTPayload;->JWT_PAYLOAD_SCOPE:Lcom/twilio/client/impl/JWTPayload;

    invoke-virtual {v1}, Lcom/twilio/client/impl/JWTPayload;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/twilio/client/impl/JWTPayload;->JWT_PAYLOAD_SCOPE:Lcom/twilio/client/impl/JWTPayload;

    invoke-virtual {v1}, Lcom/twilio/client/impl/JWTPayload;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    move v3, v2

    :goto_1
    array-length v0, v4

    if-ge v3, v0, :cond_9

    new-instance v0, Lcom/twilio/client/impl/ScopeURI;

    aget-object v1, v4, v3

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/twilio/client/impl/ScopeURI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/twilio/client/impl/ScopeURI;->getParameters()Ljava/util/Map;

    move-result-object v1

    const-string v5, "client"

    invoke-virtual {v0}, Lcom/twilio/client/impl/ScopeURI;->getService()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "incoming"

    invoke-virtual {v0}, Lcom/twilio/client/impl/ScopeURI;->getPrivilege()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twilio/client/impl/CapabilityTokenParser;->hasIncomingCapability:Z

    const-string v0, "clientName"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/twilio/client/impl/CapabilityTokenParser;->incomingName:Ljava/lang/String;

    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    const-string v5, "client"

    invoke-virtual {v0}, Lcom/twilio/client/impl/ScopeURI;->getService()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "outgoing"

    invoke-virtual {v0}, Lcom/twilio/client/impl/ScopeURI;->getPrivilege()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twilio/client/impl/CapabilityTokenParser;->hasOutgoingCapability:Z

    const-string v0, "appSid"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/twilio/client/impl/CapabilityTokenParser;->applicationSID:Ljava/lang/String;

    iget-object v0, p0, Lcom/twilio/client/impl/CapabilityTokenParser;->applicationSID:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/twilio/client/impl/CapabilityTokenParser;->applicationSID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twilio/client/impl/CapabilityTokenParser;->applicationSID:Ljava/lang/String;

    :cond_5
    const-string v0, "appParams"

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "appParams"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    if-lez v1, :cond_2

    :try_start_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/twilio/client/impl/CapabilityTokenParser;->parameters:Ljava/util/Map;

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    move v1, v2

    :goto_2
    if-ge v1, v6, :cond_2

    aget-object v7, v5, v1

    const-string v0, "="

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v0, 0x0

    aget-object v0, v8, v0

    const-string v9, "UTF-8"

    invoke-static {v0, v9}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    array-length v0, v8

    if-le v0, v12, :cond_8

    const/4 v0, 0x1

    aget-object v0, v8, v0

    const-string v10, "UTF-8"

    invoke-static {v0, v10}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_7

    array-length v8, v8

    const/4 v10, 0x2

    if-le v8, v10, :cond_6

    sget-object v8, Lcom/twilio/client/impl/CapabilityTokenParser;->logger:Lcom/twilio/client/impl/logging/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Key-value pair \""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "\" in capability token improperly encoded and will be interpreted incorrectly"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Lcom/twilio/client/impl/logging/Logger;->w(Ljava/lang/String;)V

    :cond_6
    iget-object v7, p0, Lcom/twilio/client/impl/CapabilityTokenParser;->parameters:Ljava/util/Map;

    invoke-interface {v7, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_8
    const-string v0, ""
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v0

    :cond_9
    return-void
.end method

.method protected extractSignature(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/twilio/client/impl/CapabilityTokenParser;->logger:Lcom/twilio/client/impl/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Capability token SIGNATURE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twilio/client/impl/logging/Logger;->i(Ljava/lang/String;)V

    return-void
.end method

.method public getAccountSID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/CapabilityTokenParser;->accountSID:Ljava/lang/String;

    return-object v0
.end method

.method public getApplicationParameters()Ljava/util/Map;
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

    iget-object v0, p0, Lcom/twilio/client/impl/CapabilityTokenParser;->parameters:Ljava/util/Map;

    return-object v0
.end method

.method public getApplicationSID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/CapabilityTokenParser;->applicationSID:Ljava/lang/String;

    return-object v0
.end method

.method public getClientName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/CapabilityTokenParser;->incomingName:Ljava/lang/String;

    return-object v0
.end method

.method public getDecodedPayload()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/CapabilityTokenParser;->decodedPayload:Ljava/lang/String;

    return-object v0
.end method

.method public getExpirationTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/twilio/client/impl/CapabilityTokenParser;->expiresTimestamp:J

    return-wide v0
.end method

.method public hasIncomingCapability()Z
    .locals 1

    iget-boolean v0, p0, Lcom/twilio/client/impl/CapabilityTokenParser;->hasIncomingCapability:Z

    return v0
.end method

.method public hasOutgoingCapability()Z
    .locals 1

    iget-boolean v0, p0, Lcom/twilio/client/impl/CapabilityTokenParser;->hasOutgoingCapability:Z

    return v0
.end method

.method protected parse(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/twilio/client/impl/CapabilityTokenParseException;
        }
    .end annotation

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/twilio/client/impl/CapabilityTokenParser;->rawToken:Ljava/lang/String;

    iget-object v0, p0, Lcom/twilio/client/impl/CapabilityTokenParser;->rawToken:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/twilio/client/impl/CapabilityTokenParser;->rawToken:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v2, "\\."

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v0, v2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    new-instance v0, Lcom/twilio/client/impl/CapabilityTokenParseException;

    const-string v1, "Capability token must have 3 segments"

    invoke-direct {v0, v1}, Lcom/twilio/client/impl/CapabilityTokenParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v0, v1

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/16 v4, 0x8

    invoke-static {v3, v4}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    aput-object v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    aget-object v0, v2, v1

    invoke-virtual {p0, v0}, Lcom/twilio/client/impl/CapabilityTokenParser;->extractHeader(Ljava/lang/String;)V

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {p0, v0}, Lcom/twilio/client/impl/CapabilityTokenParser;->extractPayload(Ljava/lang/String;)V

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {p0, v0}, Lcom/twilio/client/impl/CapabilityTokenParser;->extractSignature(Ljava/lang/String;)V

    :cond_2
    return-void
.end method
