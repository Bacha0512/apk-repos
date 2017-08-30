.class public Lcom/twilio/client/impl/MakeCallCommand;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field account:Lcom/twilio/client/impl/session/Account;

.field accountSid:Ljava/lang/String;

.field appParameters:Ljava/util/Map;
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

.field callFactory:Lcom/twilio/client/impl/CallFactory;

.field connection:Lcom/twilio/client/impl/InternalConnection;

.field fromName:Ljava/lang/String;

.field needCallControlPort:Z

.field protocol:Lcom/twilio/client/impl/CallControlManager$CallControlProtocol;


# direct methods
.method public constructor <init>(Lcom/twilio/client/impl/InternalConnection;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/twilio/client/impl/CallFactory;Lcom/twilio/client/impl/session/Account;Lcom/twilio/client/impl/CallControlManager$CallControlProtocol;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twilio/client/impl/InternalConnection;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/twilio/client/impl/CallFactory;",
            "Lcom/twilio/client/impl/session/Account;",
            "Lcom/twilio/client/impl/CallControlManager$CallControlProtocol;",
            "Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/twilio/client/impl/MakeCallCommand;->connection:Lcom/twilio/client/impl/InternalConnection;

    iput-object v0, p0, Lcom/twilio/client/impl/MakeCallCommand;->accountSid:Ljava/lang/String;

    iput-object v0, p0, Lcom/twilio/client/impl/MakeCallCommand;->fromName:Ljava/lang/String;

    iput-object v0, p0, Lcom/twilio/client/impl/MakeCallCommand;->appParameters:Ljava/util/Map;

    iput-object v0, p0, Lcom/twilio/client/impl/MakeCallCommand;->callFactory:Lcom/twilio/client/impl/CallFactory;

    iput-object v0, p0, Lcom/twilio/client/impl/MakeCallCommand;->account:Lcom/twilio/client/impl/session/Account;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Connection cannot be null when making a call"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Account SID cannot be null when making a call"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "From name cannot be null when making a call"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-nez p5, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "CallFactory cannot be null when making a call"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iput-object p1, p0, Lcom/twilio/client/impl/MakeCallCommand;->connection:Lcom/twilio/client/impl/InternalConnection;

    iput-object p2, p0, Lcom/twilio/client/impl/MakeCallCommand;->accountSid:Ljava/lang/String;

    iput-object p3, p0, Lcom/twilio/client/impl/MakeCallCommand;->fromName:Ljava/lang/String;

    iput-object p4, p0, Lcom/twilio/client/impl/MakeCallCommand;->appParameters:Ljava/util/Map;

    iput-object p5, p0, Lcom/twilio/client/impl/MakeCallCommand;->callFactory:Lcom/twilio/client/impl/CallFactory;

    iput-object p6, p0, Lcom/twilio/client/impl/MakeCallCommand;->account:Lcom/twilio/client/impl/session/Account;

    iput-object p7, p0, Lcom/twilio/client/impl/MakeCallCommand;->protocol:Lcom/twilio/client/impl/CallControlManager$CallControlProtocol;

    iput-boolean p8, p0, Lcom/twilio/client/impl/MakeCallCommand;->needCallControlPort:Z

    return-void
.end method


# virtual methods
.method public createTwilioHeaders(ZLjava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_6

    const-string v0, "X-Twilio-Bridge"

    :goto_0
    invoke-interface {v3, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p4, :cond_0

    invoke-interface {p4}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    if-eqz p3, :cond_8

    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_8

    :cond_1
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    if-eqz p4, :cond_2

    invoke-interface {v4, p4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_2
    if-eqz p3, :cond_3

    invoke-interface {v4, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v0

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_0
    const-string v7, "UTF-8"

    invoke-static {v1, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v7, 0x3d

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_4

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    add-int/lit8 v0, v2, 0x1

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    const/16 v1, 0x26

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_5
    move v2, v0

    goto :goto_1

    :cond_6
    const-string v0, "X-Twilio-Token"

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_7
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "X-Twilio-Params"

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    const-string v0, "X-Twilio-Client"

    invoke-static {}, Lcom/twilio/client/impl/Constants;->getClientString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "X-Twilio-Accountsid"

    iget-object v1, p0, Lcom/twilio/client/impl/MakeCallCommand;->accountSid:Ljava/lang/String;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "X-Twilio-ClientVersion"

    invoke-static {}, Lcom/twilio/client/impl/Constants;->getClientProtoVersion()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v3
.end method

.method public run()V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/twilio/client/impl/MakeCallCommand;->connection:Lcom/twilio/client/impl/InternalConnection;

    invoke-interface {v0}, Lcom/twilio/client/impl/InternalConnection;->isIncoming()Z

    move-result v0

    iget-object v1, p0, Lcom/twilio/client/impl/MakeCallCommand;->connection:Lcom/twilio/client/impl/InternalConnection;

    invoke-interface {v1}, Lcom/twilio/client/impl/InternalConnection;->getToken()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/twilio/client/impl/MakeCallCommand;->appParameters:Ljava/util/Map;

    iget-object v3, p0, Lcom/twilio/client/impl/MakeCallCommand;->connection:Lcom/twilio/client/impl/InternalConnection;

    invoke-interface {v3}, Lcom/twilio/client/impl/InternalConnection;->getParameters()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/twilio/client/impl/MakeCallCommand;->createTwilioHeaders(ZLjava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "sip:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/twilio/client/impl/MakeCallCommand;->fromName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x40

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/twilio/client/impl/Constants;->getCallControlHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/twilio/client/impl/MakeCallCommand;->needCallControlPort:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x3a

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/twilio/client/impl/MakeCallCommand;->protocol:Lcom/twilio/client/impl/CallControlManager$CallControlProtocol;

    sget-object v3, Lcom/twilio/client/impl/CallControlManager$CallControlProtocol;->TLS:Lcom/twilio/client/impl/CallControlManager$CallControlProtocol;

    if-ne v0, v3, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/twilio/client/impl/Constants;->getCallControlPort(Z)I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    const-string v0, ";transport="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/twilio/client/impl/MakeCallCommand;->protocol:Lcom/twilio/client/impl/CallControlManager$CallControlProtocol;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Lcom/twilio/client/impl/useragent/Utils;->verifyUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/twilio/client/impl/MakeCallCommand;->connection:Lcom/twilio/client/impl/InternalConnection;

    invoke-interface {v2}, Lcom/twilio/client/impl/InternalConnection;->getState()Lcom/twilio/client/Connection$State;

    move-result-object v2

    sget-object v3, Lcom/twilio/client/Connection$State;->DISCONNECTED:Lcom/twilio/client/Connection$State;

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/twilio/client/impl/MakeCallCommand;->callFactory:Lcom/twilio/client/impl/CallFactory;

    iget-object v3, p0, Lcom/twilio/client/impl/MakeCallCommand;->account:Lcom/twilio/client/impl/session/Account;

    iget-object v4, p0, Lcom/twilio/client/impl/MakeCallCommand;->connection:Lcom/twilio/client/impl/InternalConnection;

    invoke-interface {v2, v3, v1, v4, v0}, Lcom/twilio/client/impl/CallFactory;->newCall(Lcom/twilio/client/impl/session/Account;Ljava/util/Map;Ljava/lang/Object;Ljava/lang/String;)Lcom/twilio/client/impl/useragent/Call;

    move-result-object v0

    iget-object v1, p0, Lcom/twilio/client/impl/MakeCallCommand;->connection:Lcom/twilio/client/impl/InternalConnection;

    invoke-interface {v1, v0}, Lcom/twilio/client/impl/InternalConnection;->setCallHandle(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/twilio/client/impl/session/SessionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/twilio/client/impl/MakeCallCommand;->connection:Lcom/twilio/client/impl/InternalConnection;

    invoke-interface {v1, v5}, Lcom/twilio/client/impl/InternalConnection;->setCallHandle(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/twilio/client/impl/TwilioError;->fromSessionException(Lcom/twilio/client/impl/session/SessionException;)Lcom/twilio/client/impl/TwilioError;

    move-result-object v0

    iget-object v1, p0, Lcom/twilio/client/impl/MakeCallCommand;->connection:Lcom/twilio/client/impl/InternalConnection;

    invoke-virtual {v0}, Lcom/twilio/client/impl/TwilioError;->getCode()I

    move-result v2

    invoke-virtual {v0}, Lcom/twilio/client/impl/TwilioError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/twilio/client/impl/InternalConnection;->handleStateDisconnected(ILjava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/twilio/client/impl/MakeCallCommand;->connection:Lcom/twilio/client/impl/InternalConnection;

    invoke-interface {v1, v5}, Lcom/twilio/client/impl/InternalConnection;->setCallHandle(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/twilio/client/impl/MakeCallCommand;->connection:Lcom/twilio/client/impl/InternalConnection;

    sget-object v2, Lcom/twilio/client/impl/TwilioError;->GENERIC_ERROR:Lcom/twilio/client/impl/TwilioError;

    invoke-virtual {v2}, Lcom/twilio/client/impl/TwilioError;->getCode()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/twilio/client/impl/InternalConnection;->handleStateDisconnected(ILjava/lang/String;)V

    goto :goto_1
.end method
