.class public Lcom/twilio/client/impl/CallControlManager;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/twilio/client/impl/CallFactory;
.implements Lcom/twilio/client/impl/useragent/config/UserAgentConfig$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twilio/client/impl/CallControlManager$CallControlProtocol;
    }
.end annotation


# static fields
.field private static final logger:Lcom/twilio/client/impl/logging/Logger;

.field static volatile sInstance:Lcom/twilio/client/impl/CallControlManager;


# instance fields
.field callCommandHandler:Lcom/twilio/client/impl/CallCommandHandler;

.field callFactory:Lcom/twilio/client/impl/CallFactory;

.field private callTransports:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twilio/client/impl/session/Transport;",
            ">;"
        }
    .end annotation
.end field

.field private configuration:Lcom/twilio/client/impl/TwilioConfig;

.field defaultAccount:Lcom/twilio/client/impl/session/Account;

.field eventStreamFactory:Lcom/twilio/client/impl/net/EventStreamFactory;

.field private globalLogLevel:I

.field mainTransport:Lcom/twilio/client/impl/session/Transport;

.field mediaPortRandomGenerator:Ljava/util/Random;

.field private pjsipLogLevel:I

.field protocol:Lcom/twilio/client/impl/CallControlManager$CallControlProtocol;

.field final registeredUserAccountMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/twilio/client/impl/session/Account;",
            ">;"
        }
    .end annotation
.end field

.field timerHandler:Landroid/os/Handler;

.field userAgent:Lcom/twilio/client/impl/useragent/UserAgent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/twilio/client/impl/CallControlManager;

    invoke-static {v0}, Lcom/twilio/client/impl/logging/Logger;->getLogger(Ljava/lang/Class;)Lcom/twilio/client/impl/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/twilio/client/impl/CallControlManager;->logger:Lcom/twilio/client/impl/logging/Logger;

    const/4 v0, 0x0

    sput-object v0, Lcom/twilio/client/impl/CallControlManager;->sInstance:Lcom/twilio/client/impl/CallControlManager;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    new-instance v0, Lcom/twilio/client/impl/TwilioConfig;

    invoke-direct {v0}, Lcom/twilio/client/impl/TwilioConfig;-><init>()V

    invoke-direct {p0, v0}, Lcom/twilio/client/impl/CallControlManager;-><init>(Lcom/twilio/client/impl/TwilioConfig;)V

    return-void
.end method

.method protected constructor <init>(Lcom/twilio/client/impl/TwilioConfig;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0, v0}, Lcom/twilio/client/impl/CallControlManager;-><init>(Lcom/twilio/client/impl/TwilioConfig;Lcom/twilio/client/impl/CallFactory;Lcom/twilio/client/impl/net/EventStreamFactory;Lcom/twilio/client/impl/CallCommandHandler;)V

    return-void
.end method

.method protected constructor <init>(Lcom/twilio/client/impl/TwilioConfig;Lcom/twilio/client/impl/CallFactory;Lcom/twilio/client/impl/net/EventStreamFactory;Lcom/twilio/client/impl/CallCommandHandler;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/twilio/client/impl/CallControlManager;->registeredUserAccountMap:Ljava/util/Map;

    iput-object v1, p0, Lcom/twilio/client/impl/CallControlManager;->userAgent:Lcom/twilio/client/impl/useragent/UserAgent;

    iput-object v1, p0, Lcom/twilio/client/impl/CallControlManager;->defaultAccount:Lcom/twilio/client/impl/session/Account;

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/twilio/client/impl/CallControlManager;->mediaPortRandomGenerator:Ljava/util/Random;

    sget-object v0, Lcom/twilio/client/impl/CallControlManager$CallControlProtocol;->UDP:Lcom/twilio/client/impl/CallControlManager$CallControlProtocol;

    iput-object v0, p0, Lcom/twilio/client/impl/CallControlManager;->protocol:Lcom/twilio/client/impl/CallControlManager$CallControlProtocol;

    iput-object v1, p0, Lcom/twilio/client/impl/CallControlManager;->callFactory:Lcom/twilio/client/impl/CallFactory;

    iput-object v1, p0, Lcom/twilio/client/impl/CallControlManager;->eventStreamFactory:Lcom/twilio/client/impl/net/EventStreamFactory;

    iput-object v1, p0, Lcom/twilio/client/impl/CallControlManager;->callCommandHandler:Lcom/twilio/client/impl/CallCommandHandler;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/twilio/client/impl/CallControlManager;->timerHandler:Landroid/os/Handler;

    iput-object v1, p0, Lcom/twilio/client/impl/CallControlManager;->mainTransport:Lcom/twilio/client/impl/session/Transport;

    iput-object v1, p0, Lcom/twilio/client/impl/CallControlManager;->configuration:Lcom/twilio/client/impl/TwilioConfig;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/twilio/client/impl/CallControlManager;->callTransports:Ljava/util/List;

    invoke-static {}, Lcom/twilio/client/impl/logging/Logger;->getLogLevel()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/twilio/client/impl/CallControlManager;->convertLogLevel(I)I

    move-result v0

    iput v0, p0, Lcom/twilio/client/impl/CallControlManager;->pjsipLogLevel:I

    if-eqz p1, :cond_1

    iput-object p1, p0, Lcom/twilio/client/impl/CallControlManager;->configuration:Lcom/twilio/client/impl/TwilioConfig;

    :goto_0
    if-eqz p2, :cond_2

    iput-object p2, p0, Lcom/twilio/client/impl/CallControlManager;->callFactory:Lcom/twilio/client/impl/CallFactory;

    :goto_1
    if-eqz p3, :cond_3

    iput-object p3, p0, Lcom/twilio/client/impl/CallControlManager;->eventStreamFactory:Lcom/twilio/client/impl/net/EventStreamFactory;

    :goto_2
    if-eqz p4, :cond_0

    iput-object p4, p0, Lcom/twilio/client/impl/CallControlManager;->callCommandHandler:Lcom/twilio/client/impl/CallCommandHandler;

    :cond_0
    return-void

    :cond_1
    new-instance v0, Lcom/twilio/client/impl/TwilioConfig;

    invoke-direct {v0}, Lcom/twilio/client/impl/TwilioConfig;-><init>()V

    iput-object v0, p0, Lcom/twilio/client/impl/CallControlManager;->configuration:Lcom/twilio/client/impl/TwilioConfig;

    goto :goto_0

    :cond_2
    iput-object p0, p0, Lcom/twilio/client/impl/CallControlManager;->callFactory:Lcom/twilio/client/impl/CallFactory;

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/twilio/client/impl/net/EventStreamManager;->getInstance()Lcom/twilio/client/impl/net/EventStreamManager;

    move-result-object v0

    iput-object v0, p0, Lcom/twilio/client/impl/CallControlManager;->eventStreamFactory:Lcom/twilio/client/impl/net/EventStreamFactory;

    goto :goto_2
.end method

.method private addDefaultUserAccount()Lcom/twilio/client/impl/session/Account;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/twilio/client/impl/session/SessionException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0}, Lcom/twilio/client/impl/CallControlManager;->addUserAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/twilio/client/impl/session/Account;

    move-result-object v0

    return-object v0
.end method

.method private convertLogLevel(I)I
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x6

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x5

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x4

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private createMainTransport()Lcom/twilio/client/impl/session/Transport;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/twilio/client/impl/session/SessionException;
        }
    .end annotation

    iget-object v0, p0, Lcom/twilio/client/impl/CallControlManager;->mainTransport:Lcom/twilio/client/impl/session/Transport;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twilio/client/impl/CallControlManager;->mainTransport:Lcom/twilio/client/impl/session/Transport;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/twilio/client/impl/session/Transport;->close(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twilio/client/impl/CallControlManager;->mainTransport:Lcom/twilio/client/impl/session/Transport;

    :cond_0
    iget-object v0, p0, Lcom/twilio/client/impl/CallControlManager;->configuration:Lcom/twilio/client/impl/TwilioConfig;

    iget-object v0, v0, Lcom/twilio/client/impl/TwilioConfig;->transportConfig:Lcom/twilio/client/impl/TwilioTransportConfig;

    iget-object v1, v0, Lcom/twilio/client/impl/TwilioTransportConfig;->transportType:Lcom/twilio/client/impl/session/Transport$Type;

    sget-object v0, Lcom/twilio/client/impl/session/Transport$Type;->TLS:Lcom/twilio/client/impl/session/Transport$Type;

    if-ne v1, v0, :cond_1

    new-instance v2, Lcom/twilio/client/impl/useragent/config/TransportConfig$TLSSettings;

    invoke-direct {v2}, Lcom/twilio/client/impl/useragent/config/TransportConfig$TLSSettings;-><init>()V

    sget-object v0, Lcom/twilio/client/impl/useragent/config/TransportConfig$TLSSettings$SSLMethod;->TLSV1:Lcom/twilio/client/impl/useragent/config/TransportConfig$TLSSettings$SSLMethod;

    iput-object v0, v2, Lcom/twilio/client/impl/useragent/config/TransportConfig$TLSSettings;->sslMethod:Lcom/twilio/client/impl/useragent/config/TransportConfig$TLSSettings$SSLMethod;

    new-instance v0, Lcom/twilio/client/impl/useragent/config/TransportConfig;

    invoke-direct {v0, v2}, Lcom/twilio/client/impl/useragent/config/TransportConfig;-><init>(Lcom/twilio/client/impl/useragent/config/TransportConfig$TLSSettings;)V

    :goto_0
    iget-object v2, p0, Lcom/twilio/client/impl/CallControlManager;->userAgent:Lcom/twilio/client/impl/useragent/UserAgent;

    invoke-virtual {v2, v1, v0}, Lcom/twilio/client/impl/useragent/UserAgent;->createTransport(Lcom/twilio/client/impl/session/Transport$Type;Lcom/twilio/client/impl/useragent/config/TransportConfig;)Lcom/twilio/client/impl/session/Transport;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Lcom/twilio/client/impl/useragent/config/TransportConfig;

    invoke-direct {v0}, Lcom/twilio/client/impl/useragent/config/TransportConfig;-><init>()V

    goto :goto_0
.end method

.method public static destroy()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/twilio/client/impl/CallControlManager;->sInstance:Lcom/twilio/client/impl/CallControlManager;

    if-eqz v0, :cond_1

    :try_start_0
    sget-object v0, Lcom/twilio/client/impl/CallControlManager;->sInstance:Lcom/twilio/client/impl/CallControlManager;

    iget-object v0, v0, Lcom/twilio/client/impl/CallControlManager;->callCommandHandler:Lcom/twilio/client/impl/CallCommandHandler;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/twilio/client/impl/CallControlManager;->sInstance:Lcom/twilio/client/impl/CallControlManager;

    iget-object v0, v0, Lcom/twilio/client/impl/CallControlManager;->callCommandHandler:Lcom/twilio/client/impl/CallCommandHandler;

    invoke-interface {v0}, Lcom/twilio/client/impl/CallCommandHandler;->destroy()V

    :cond_0
    sget-object v0, Lcom/twilio/client/impl/CallControlManager;->sInstance:Lcom/twilio/client/impl/CallControlManager;

    invoke-direct {v0}, Lcom/twilio/client/impl/CallControlManager;->releaseCallTransports()V

    sget-object v0, Lcom/twilio/client/impl/CallControlManager;->sInstance:Lcom/twilio/client/impl/CallControlManager;

    iget-object v0, v0, Lcom/twilio/client/impl/CallControlManager;->userAgent:Lcom/twilio/client/impl/useragent/UserAgent;

    invoke-virtual {v0}, Lcom/twilio/client/impl/useragent/UserAgent;->destroy()V
    :try_end_0
    .catch Lcom/twilio/client/impl/session/SessionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/twilio/client/impl/CallControlManager;->sInstance:Lcom/twilio/client/impl/CallControlManager;

    iput-object v2, v0, Lcom/twilio/client/impl/CallControlManager;->callCommandHandler:Lcom/twilio/client/impl/CallCommandHandler;

    sget-object v0, Lcom/twilio/client/impl/CallControlManager;->sInstance:Lcom/twilio/client/impl/CallControlManager;

    iput-object v2, v0, Lcom/twilio/client/impl/CallControlManager;->userAgent:Lcom/twilio/client/impl/useragent/UserAgent;

    sput-object v2, Lcom/twilio/client/impl/CallControlManager;->sInstance:Lcom/twilio/client/impl/CallControlManager;

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v0, Lcom/twilio/client/impl/CallControlManager;->sInstance:Lcom/twilio/client/impl/CallControlManager;

    iput-object v2, v0, Lcom/twilio/client/impl/CallControlManager;->callCommandHandler:Lcom/twilio/client/impl/CallCommandHandler;

    sget-object v0, Lcom/twilio/client/impl/CallControlManager;->sInstance:Lcom/twilio/client/impl/CallControlManager;

    iput-object v2, v0, Lcom/twilio/client/impl/CallControlManager;->userAgent:Lcom/twilio/client/impl/useragent/UserAgent;

    sput-object v2, Lcom/twilio/client/impl/CallControlManager;->sInstance:Lcom/twilio/client/impl/CallControlManager;

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/twilio/client/impl/CallControlManager;->sInstance:Lcom/twilio/client/impl/CallControlManager;

    iput-object v2, v1, Lcom/twilio/client/impl/CallControlManager;->callCommandHandler:Lcom/twilio/client/impl/CallCommandHandler;

    sget-object v1, Lcom/twilio/client/impl/CallControlManager;->sInstance:Lcom/twilio/client/impl/CallControlManager;

    iput-object v2, v1, Lcom/twilio/client/impl/CallControlManager;->userAgent:Lcom/twilio/client/impl/useragent/UserAgent;

    sput-object v2, Lcom/twilio/client/impl/CallControlManager;->sInstance:Lcom/twilio/client/impl/CallControlManager;

    throw v0
.end method

.method public static getInstance()Lcom/twilio/client/impl/CallControlManager;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/twilio/client/impl/TwilioClientException;
        }
    .end annotation

    sget-object v0, Lcom/twilio/client/impl/CallControlManager;->sInstance:Lcom/twilio/client/impl/CallControlManager;

    if-nez v0, :cond_1

    const-class v1, Lcom/twilio/client/impl/CallControlManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/twilio/client/impl/CallControlManager;->sInstance:Lcom/twilio/client/impl/CallControlManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/twilio/client/impl/CallControlManager;

    invoke-direct {v0}, Lcom/twilio/client/impl/CallControlManager;-><init>()V

    sput-object v0, Lcom/twilio/client/impl/CallControlManager;->sInstance:Lcom/twilio/client/impl/CallControlManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v0, Lcom/twilio/client/impl/CallControlManager;->sInstance:Lcom/twilio/client/impl/CallControlManager;

    invoke-virtual {v0}, Lcom/twilio/client/impl/CallControlManager;->initialize()V
    :try_end_1
    .catch Lcom/twilio/client/impl/TwilioClientException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    sget-object v0, Lcom/twilio/client/impl/CallControlManager;->sInstance:Lcom/twilio/client/impl/CallControlManager;

    return-object v0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Lcom/twilio/client/impl/TwilioClientException;->printStackTrace()V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method private getSipDomain()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/twilio/client/impl/CallControlManager;->userAgent:Lcom/twilio/client/impl/useragent/UserAgent;

    invoke-virtual {v0}, Lcom/twilio/client/impl/useragent/UserAgent;->canResolveSrvRecords()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/twilio/client/impl/Constants;->getCallControlHost()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/twilio/client/impl/Constants;->getCallControlHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/twilio/client/impl/CallControlManager;->protocol:Lcom/twilio/client/impl/CallControlManager$CallControlProtocol;

    sget-object v2, Lcom/twilio/client/impl/CallControlManager$CallControlProtocol;->TLS:Lcom/twilio/client/impl/CallControlManager$CallControlProtocol;

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/twilio/client/impl/Constants;->getCallControlPort(Z)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private releaseCallTransports()V
    .locals 4

    iget-object v1, p0, Lcom/twilio/client/impl/CallControlManager;->callTransports:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/twilio/client/impl/CallControlManager;->callTransports:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twilio/client/impl/session/Transport;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/twilio/client/impl/session/Transport;->decRef()V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/twilio/client/impl/session/Transport;->close(Z)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/twilio/client/impl/CallControlManager;->callTransports:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method


# virtual methods
.method public acceptCall(Lcom/twilio/client/impl/InternalConnection;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
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
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/twilio/client/impl/CallControlManager;->getCallCommandHandler(Lcom/twilio/client/impl/InternalConnection;)Lcom/twilio/client/impl/CallCommandHandler;

    move-result-object v0

    new-instance v1, Lcom/twilio/client/impl/AcceptCallCommand;

    invoke-direct {v1, p1}, Lcom/twilio/client/impl/AcceptCallCommand;-><init>(Lcom/twilio/client/impl/InternalConnection;)V

    invoke-interface {v0, v1}, Lcom/twilio/client/impl/CallCommandHandler;->postCommand(Ljava/lang/Runnable;)V

    return-void
.end method

.method public addUserAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/twilio/client/impl/session/Account;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/twilio/client/impl/session/SessionException;
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lcom/twilio/client/impl/CallControlManager;->getAccountConfigId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/twilio/client/impl/CallControlManager;->registeredUserAccountMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twilio/client/impl/session/Account;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/twilio/client/impl/CallControlManager;->removeUserAccount(Lcom/twilio/client/impl/session/Account;)V

    :cond_0
    iget-object v0, p0, Lcom/twilio/client/impl/CallControlManager;->registeredUserAccountMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz p1, :cond_2

    if-nez p3, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/twilio/client/impl/CallControlManager;->createUserAccountConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/twilio/client/impl/useragent/config/AccountConfig;

    move-result-object v1

    iget-object v2, p0, Lcom/twilio/client/impl/CallControlManager;->userAgent:Lcom/twilio/client/impl/useragent/UserAgent;

    invoke-virtual {v2, v1, v0}, Lcom/twilio/client/impl/useragent/UserAgent;->addAccount(Lcom/twilio/client/impl/useragent/config/AccountConfig;Z)Lcom/twilio/client/impl/session/Account;

    move-result-object v0

    return-object v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public createIncomingConnection(Ljava/util/Map;Lcom/twilio/client/impl/DeviceImpl;Ljava/lang/String;Ljava/lang/String;)Lcom/twilio/client/impl/InternalConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/twilio/client/impl/DeviceImpl;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/twilio/client/impl/InternalConnection;"
        }
    .end annotation

    new-instance v0, Lcom/twilio/client/impl/InternalConnectionImpl;

    invoke-direct {v0, p0}, Lcom/twilio/client/impl/InternalConnectionImpl;-><init>(Lcom/twilio/client/impl/CallControlManager;)V

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/twilio/client/impl/InternalConnectionImpl;->initIncomingConnection(Ljava/util/Map;Lcom/twilio/client/impl/DeviceImpl;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public createOutgoingConnection(Ljava/util/Map;Lcom/twilio/client/impl/DeviceImpl;Ljava/lang/String;Lcom/twilio/client/ConnectionListener;)Lcom/twilio/client/impl/InternalConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/twilio/client/impl/DeviceImpl;",
            "Ljava/lang/String;",
            "Lcom/twilio/client/ConnectionListener;",
            ")",
            "Lcom/twilio/client/impl/InternalConnection;"
        }
    .end annotation

    new-instance v0, Lcom/twilio/client/impl/InternalConnectionImpl;

    invoke-direct {v0, p0}, Lcom/twilio/client/impl/InternalConnectionImpl;-><init>(Lcom/twilio/client/impl/CallControlManager;)V

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/twilio/client/impl/InternalConnectionImpl;->initOutgoingConnection(Ljava/util/Map;Lcom/twilio/client/impl/DeviceImpl;Ljava/lang/String;Lcom/twilio/client/ConnectionListener;)V

    return-object v0
.end method

.method public createUserAccountConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/twilio/client/impl/useragent/config/AccountConfig;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/twilio/client/impl/session/SessionException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/twilio/client/impl/CallControlManager;->getSipDomain()Ljava/lang/String;

    move-result-object v1

    const-string v3, "twilio"

    const-string v5, "none"

    new-instance v11, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {v11, v0}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v0, Lcom/twilio/client/impl/session/CredentialInfo;

    const-string v2, "digest"

    sget-object v4, Lcom/twilio/client/impl/session/CredentialInfo$DataType;->PLAIN_PASSWD:Lcom/twilio/client/impl/session/CredentialInfo$DataType;

    invoke-direct/range {v0 .. v5}, Lcom/twilio/client/impl/session/CredentialInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/twilio/client/impl/session/CredentialInfo$DataType;Ljava/lang/String;)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/twilio/client/impl/CallControlManager;->mediaPortRandomGenerator:Ljava/util/Random;

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit16 v0, v0, 0xfa0

    new-instance v4, Lcom/twilio/client/impl/useragent/config/TransportConfig;

    sget-object v2, Lcom/twilio/client/impl/useragent/config/TransportConfig$QosType;->VOICE:Lcom/twilio/client/impl/useragent/config/TransportConfig$QosType;

    invoke-direct {v4, v0, v2}, Lcom/twilio/client/impl/useragent/config/TransportConfig;-><init>(ILcom/twilio/client/impl/useragent/config/TransportConfig$QosType;)V

    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_4

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v0, "X-Twilio-Token"

    invoke-interface {v6, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "X-Twilio-Client"

    invoke-static {}, Lcom/twilio/client/impl/Constants;->getClientString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "X-Twilio-ClientVersion"

    invoke-static {}, Lcom/twilio/client/impl/Constants;->getClientProtoVersion()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/twilio/client/impl/CallControlManager;->getAccountConfigId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/twilio/client/impl/CallControlManager;->configuration:Lcom/twilio/client/impl/TwilioConfig;

    iget-object v0, v0, Lcom/twilio/client/impl/TwilioConfig;->transportConfig:Lcom/twilio/client/impl/TwilioTransportConfig;

    iget-object v0, v0, Lcom/twilio/client/impl/TwilioTransportConfig;->transportType:Lcom/twilio/client/impl/session/Transport$Type;

    sget-object v2, Lcom/twilio/client/impl/session/Transport$Type;->TLS:Lcom/twilio/client/impl/session/Transport$Type;

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    :goto_1
    const-string v2, "%s;transport=%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v3, v5

    const/4 v5, 0x1

    const/4 v7, 0x1

    if-ne v0, v7, :cond_3

    const-string v0, "tls"

    :goto_2
    aput-object v0, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v0, Lcom/twilio/client/impl/useragent/config/AccountConfig;

    const/4 v3, 0x1

    sget v7, Lcom/twilio/client/impl/Constants;->REGISTER_TIMEOUT:I

    sget v8, Lcom/twilio/client/impl/Constants;->REGISTER_REFRESH_MARGIN:I

    sget v9, Lcom/twilio/client/impl/Constants;->REGISTER_RETRY_INTERVAL:I

    sget-boolean v10, Lcom/twilio/client/impl/Constants;->REGISTER_ON_ACCT_ADD_ENABLE:Z

    move-object v2, v11

    invoke-direct/range {v0 .. v10}, Lcom/twilio/client/impl/useragent/config/AccountConfig;-><init>(Ljava/lang/String;Ljava/util/List;ZLcom/twilio/client/impl/useragent/config/TransportConfig;Ljava/lang/String;Ljava/util/Map;IIIZ)V

    :goto_3
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    const-string v0, "tcp"

    goto :goto_2

    :cond_4
    new-instance v0, Lcom/twilio/client/impl/useragent/config/AccountConfig;

    const-string v2, "sip:%s@%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v3, 0x1

    aput-object v1, v5, v3

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Lcom/twilio/client/impl/Constants;->ALLOW_CONTACT_REWRITE_ENABLE:Z

    invoke-direct {v0, v1, v11, v2, v4}, Lcom/twilio/client/impl/useragent/config/AccountConfig;-><init>(Ljava/lang/String;Ljava/util/List;ZLcom/twilio/client/impl/useragent/config/TransportConfig;)V

    goto :goto_3
.end method

.method public getAccountConfigId(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "sip:%s@%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {}, Lcom/twilio/client/impl/Constants;->getCallControlHost()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCallCommandHandler(Lcom/twilio/client/impl/InternalConnection;)Lcom/twilio/client/impl/CallCommandHandler;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/CallControlManager;->callCommandHandler:Lcom/twilio/client/impl/CallCommandHandler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/twilio/client/impl/CallCommandHandlerImpl;

    invoke-direct {v0}, Lcom/twilio/client/impl/CallCommandHandlerImpl;-><init>()V

    iput-object v0, p0, Lcom/twilio/client/impl/CallControlManager;->callCommandHandler:Lcom/twilio/client/impl/CallCommandHandler;

    :cond_0
    iget-object v0, p0, Lcom/twilio/client/impl/CallControlManager;->callCommandHandler:Lcom/twilio/client/impl/CallCommandHandler;

    return-object v0
.end method

.method protected getCallFactory()Lcom/twilio/client/impl/CallFactory;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/CallControlManager;->callFactory:Lcom/twilio/client/impl/CallFactory;

    if-nez v0, :cond_0

    iput-object p0, p0, Lcom/twilio/client/impl/CallControlManager;->callFactory:Lcom/twilio/client/impl/CallFactory;

    :cond_0
    iget-object v0, p0, Lcom/twilio/client/impl/CallControlManager;->callFactory:Lcom/twilio/client/impl/CallFactory;

    return-object v0
.end method

.method public getDefaultAccount()Lcom/twilio/client/impl/session/Account;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/CallControlManager;->defaultAccount:Lcom/twilio/client/impl/session/Account;

    return-object v0
.end method

.method public getGlobalLogLevel()I
    .locals 1

    iget v0, p0, Lcom/twilio/client/impl/CallControlManager;->globalLogLevel:I

    return v0
.end method

.method public hangupCall(Lcom/twilio/client/impl/InternalConnection;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/twilio/client/impl/CallControlManager;->getCallCommandHandler(Lcom/twilio/client/impl/InternalConnection;)Lcom/twilio/client/impl/CallCommandHandler;

    move-result-object v0

    new-instance v1, Lcom/twilio/client/impl/HangupCallCommand;

    invoke-direct {v1, p1}, Lcom/twilio/client/impl/HangupCallCommand;-><init>(Lcom/twilio/client/impl/InternalConnection;)V

    invoke-interface {v0, v1}, Lcom/twilio/client/impl/CallCommandHandler;->postCommand(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected initialize()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/twilio/client/impl/TwilioClientException;
        }
    .end annotation

    const/16 v9, 0x2f

    const/4 v6, 0x0

    sget-object v0, Lcom/twilio/client/impl/CallControlManager$1;->$SwitchMap$com$twilio$client$impl$session$Transport$Type:[I

    iget-object v1, p0, Lcom/twilio/client/impl/CallControlManager;->configuration:Lcom/twilio/client/impl/TwilioConfig;

    iget-object v1, v1, Lcom/twilio/client/impl/TwilioConfig;->transportConfig:Lcom/twilio/client/impl/TwilioTransportConfig;

    iget-object v1, v1, Lcom/twilio/client/impl/TwilioTransportConfig;->transportType:Lcom/twilio/client/impl/session/Transport$Type;

    invoke-virtual {v1}, Lcom/twilio/client/impl/session/Transport$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/twilio/client/impl/TwilioClientException;

    const-string v1, "Failed to initialize.  Transport type is invalid."

    invoke-direct {v0, v1}, Lcom/twilio/client/impl/TwilioClientException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    sget-object v0, Lcom/twilio/client/impl/CallControlManager$CallControlProtocol;->UDP:Lcom/twilio/client/impl/CallControlManager$CallControlProtocol;

    iput-object v0, p0, Lcom/twilio/client/impl/CallControlManager;->protocol:Lcom/twilio/client/impl/CallControlManager$CallControlProtocol;

    :goto_0
    :try_start_0
    invoke-static {}, Lcom/twilio/client/impl/useragent/UserAgent;->get()Lcom/twilio/client/impl/useragent/UserAgent;

    move-result-object v0

    iput-object v0, p0, Lcom/twilio/client/impl/CallControlManager;->userAgent:Lcom/twilio/client/impl/useragent/UserAgent;

    iget v0, p0, Lcom/twilio/client/impl/CallControlManager;->globalLogLevel:I

    invoke-virtual {p0, v0}, Lcom/twilio/client/impl/CallControlManager;->setLogLevel(I)V

    new-instance v7, Lcom/twilio/client/impl/useragent/config/UserAgentConfig;

    const/16 v0, 0x3840

    const/4 v1, 0x0

    invoke-direct {v7, p0, v0, v1}, Lcom/twilio/client/impl/useragent/config/UserAgentConfig;-><init>(Lcom/twilio/client/impl/useragent/config/UserAgentConfig$Callbacks;ILjava/lang/String;)V

    new-instance v8, Lcom/twilio/client/impl/useragent/config/LoggingConfig;

    invoke-direct {v8}, Lcom/twilio/client/impl/useragent/config/LoggingConfig;-><init>()V

    iget v0, p0, Lcom/twilio/client/impl/CallControlManager;->pjsipLogLevel:I

    iput v0, v8, Lcom/twilio/client/impl/useragent/config/LoggingConfig;->consoleLevel:I

    new-instance v0, Lcom/twilio/client/impl/useragent/config/MediaConfig;

    iget-object v1, p0, Lcom/twilio/client/impl/CallControlManager;->configuration:Lcom/twilio/client/impl/TwilioConfig;

    iget-object v1, v1, Lcom/twilio/client/impl/TwilioConfig;->mediaConfig:Lcom/twilio/client/impl/TwilioMediaConfig;

    iget-boolean v1, v1, Lcom/twilio/client/impl/TwilioMediaConfig;->vadEnabled:Z

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    iget-object v2, p0, Lcom/twilio/client/impl/CallControlManager;->configuration:Lcom/twilio/client/impl/TwilioConfig;

    iget-object v2, v2, Lcom/twilio/client/impl/TwilioConfig;->mediaConfig:Lcom/twilio/client/impl/TwilioMediaConfig;

    iget v2, v2, Lcom/twilio/client/impl/TwilioMediaConfig;->voiceQuality:I

    iget-object v3, p0, Lcom/twilio/client/impl/CallControlManager;->configuration:Lcom/twilio/client/impl/TwilioConfig;

    iget-object v3, v3, Lcom/twilio/client/impl/TwilioConfig;->mediaConfig:Lcom/twilio/client/impl/TwilioMediaConfig;

    iget v3, v3, Lcom/twilio/client/impl/TwilioMediaConfig;->echoCancellationTailMS:I

    iget-object v4, p0, Lcom/twilio/client/impl/CallControlManager;->configuration:Lcom/twilio/client/impl/TwilioConfig;

    iget-object v4, v4, Lcom/twilio/client/impl/TwilioConfig;->mediaConfig:Lcom/twilio/client/impl/TwilioMediaConfig;

    iget v4, v4, Lcom/twilio/client/impl/TwilioMediaConfig;->soundRecordLatencyMS:I

    iget-object v5, p0, Lcom/twilio/client/impl/CallControlManager;->configuration:Lcom/twilio/client/impl/TwilioConfig;

    iget-object v5, v5, Lcom/twilio/client/impl/TwilioConfig;->mediaConfig:Lcom/twilio/client/impl/TwilioMediaConfig;

    iget v5, v5, Lcom/twilio/client/impl/TwilioMediaConfig;->soundPlaybackLatencyMS:I

    invoke-direct/range {v0 .. v5}, Lcom/twilio/client/impl/useragent/config/MediaConfig;-><init>(ZIIII)V

    iget-object v1, p0, Lcom/twilio/client/impl/CallControlManager;->userAgent:Lcom/twilio/client/impl/useragent/UserAgent;

    invoke-virtual {v1, v7, v8, v0}, Lcom/twilio/client/impl/useragent/UserAgent;->init(Lcom/twilio/client/impl/useragent/config/UserAgentConfig;Lcom/twilio/client/impl/useragent/config/LoggingConfig;Lcom/twilio/client/impl/useragent/config/MediaConfig;)V

    invoke-direct {p0}, Lcom/twilio/client/impl/CallControlManager;->createMainTransport()Lcom/twilio/client/impl/session/Transport;

    move-result-object v0

    iput-object v0, p0, Lcom/twilio/client/impl/CallControlManager;->mainTransport:Lcom/twilio/client/impl/session/Transport;

    iget-object v0, p0, Lcom/twilio/client/impl/CallControlManager;->userAgent:Lcom/twilio/client/impl/useragent/UserAgent;

    invoke-virtual {v0}, Lcom/twilio/client/impl/useragent/UserAgent;->start()V

    invoke-direct {p0}, Lcom/twilio/client/impl/CallControlManager;->addDefaultUserAccount()Lcom/twilio/client/impl/session/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/twilio/client/impl/CallControlManager;->defaultAccount:Lcom/twilio/client/impl/session/Account;

    iget-object v0, p0, Lcom/twilio/client/impl/CallControlManager;->callCommandHandler:Lcom/twilio/client/impl/CallCommandHandler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/twilio/client/impl/CallCommandHandlerImpl;

    invoke-direct {v0}, Lcom/twilio/client/impl/CallCommandHandlerImpl;-><init>()V

    iput-object v0, p0, Lcom/twilio/client/impl/CallControlManager;->callCommandHandler:Lcom/twilio/client/impl/CallCommandHandler;
    :try_end_0
    .catch Lcom/twilio/client/impl/session/SessionException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    new-instance v2, Ljava/util/HashMap;

    const/4 v0, 0x3

    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(I)V

    const-string v0, "speex/16000"

    sget-object v1, Lcom/twilio/client/impl/useragent/Codec$Priority;->HIGHEST:Lcom/twilio/client/impl/useragent/Codec$Priority;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "speex/8000"

    sget-object v1, Lcom/twilio/client/impl/useragent/Codec$Priority;->NORMAL:Lcom/twilio/client/impl/useragent/Codec$Priority;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "PCMU/8000"

    sget-object v1, Lcom/twilio/client/impl/useragent/Codec$Priority;->LOWEST:Lcom/twilio/client/impl/useragent/Codec$Priority;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/twilio/client/impl/useragent/Codec;->getAll()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twilio/client/impl/useragent/Codec;

    invoke-virtual {v0}, Lcom/twilio/client/impl/useragent/Codec;->getCodecId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    invoke-virtual {v1, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-eq v5, v4, :cond_1

    invoke-virtual {v1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_1
    :try_start_1
    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twilio/client/impl/useragent/Codec$Priority;

    :goto_3
    invoke-virtual {v0, v1}, Lcom/twilio/client/impl/useragent/Codec;->setPriority(Lcom/twilio/client/impl/useragent/Codec$Priority;)V
    :try_end_1
    .catch Lcom/twilio/client/impl/session/SessionException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    sget-object v1, Lcom/twilio/client/impl/CallControlManager;->logger:Lcom/twilio/client/impl/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to set codec priority for codec "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/twilio/client/impl/useragent/Codec;->getCodecId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/twilio/client/impl/logging/Logger;->w(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_1
    sget-object v0, Lcom/twilio/client/impl/CallControlManager$CallControlProtocol;->TCP:Lcom/twilio/client/impl/CallControlManager$CallControlProtocol;

    iput-object v0, p0, Lcom/twilio/client/impl/CallControlManager;->protocol:Lcom/twilio/client/impl/CallControlManager$CallControlProtocol;

    goto/16 :goto_0

    :pswitch_2
    sget-object v0, Lcom/twilio/client/impl/CallControlManager$CallControlProtocol;->TLS:Lcom/twilio/client/impl/CallControlManager$CallControlProtocol;

    iput-object v0, p0, Lcom/twilio/client/impl/CallControlManager;->protocol:Lcom/twilio/client/impl/CallControlManager$CallControlProtocol;

    goto/16 :goto_0

    :cond_2
    move v1, v6

    goto/16 :goto_1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/twilio/client/impl/TwilioClientException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error during initialization: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/twilio/client/impl/session/SessionException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/twilio/client/impl/TwilioClientException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    :try_start_2
    sget-object v1, Lcom/twilio/client/impl/useragent/Codec$Priority;->DISABLED:Lcom/twilio/client/impl/useragent/Codec$Priority;
    :try_end_2
    .catch Lcom/twilio/client/impl/session/SessionException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :cond_4
    const-string v0, "speex/16000"

    invoke-static {v0}, Lcom/twilio/client/impl/useragent/Codec;->get(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/twilio/client/impl/TwilioClientException;

    const-string v1, "Failed to initialize.  Unable to find Speex @ 16 kHz codec"

    invoke-direct {v0, v1}, Lcom/twilio/client/impl/TwilioClientException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public isAccountRegistered(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/CallControlManager;->registeredUserAccountMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public makeCall(Lcom/twilio/client/impl/InternalConnection;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 10
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
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Lcom/twilio/client/impl/InternalConnection;->getDevice()Lcom/twilio/client/impl/DeviceImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twilio/client/impl/DeviceImpl;->getAccount()Lcom/twilio/client/impl/session/Account;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/twilio/client/impl/DeviceImpl;->getAccount()Lcom/twilio/client/impl/session/Account;

    move-result-object v6

    :goto_0
    invoke-virtual {p0, p1}, Lcom/twilio/client/impl/CallControlManager;->getCallCommandHandler(Lcom/twilio/client/impl/InternalConnection;)Lcom/twilio/client/impl/CallCommandHandler;

    move-result-object v9

    new-instance v0, Lcom/twilio/client/impl/MakeCallCommand;

    iget-object v5, p0, Lcom/twilio/client/impl/CallControlManager;->callFactory:Lcom/twilio/client/impl/CallFactory;

    iget-object v7, p0, Lcom/twilio/client/impl/CallControlManager;->protocol:Lcom/twilio/client/impl/CallControlManager$CallControlProtocol;

    iget-object v1, p0, Lcom/twilio/client/impl/CallControlManager;->userAgent:Lcom/twilio/client/impl/useragent/UserAgent;

    invoke-virtual {v1}, Lcom/twilio/client/impl/useragent/UserAgent;->canResolveSrvRecords()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v8, 0x1

    :goto_1
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v8}, Lcom/twilio/client/impl/MakeCallCommand;-><init>(Lcom/twilio/client/impl/InternalConnection;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/twilio/client/impl/CallFactory;Lcom/twilio/client/impl/session/Account;Lcom/twilio/client/impl/CallControlManager$CallControlProtocol;Z)V

    invoke-interface {v9, v0}, Lcom/twilio/client/impl/CallCommandHandler;->postCommand(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    iget-object v6, p0, Lcom/twilio/client/impl/CallControlManager;->defaultAccount:Lcom/twilio/client/impl/session/Account;

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    goto :goto_1
.end method

.method public newCall(Lcom/twilio/client/impl/session/Account;Ljava/util/Map;Ljava/lang/Object;Ljava/lang/String;)Lcom/twilio/client/impl/useragent/Call;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twilio/client/impl/session/Account;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Lcom/twilio/client/impl/useragent/Call;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/twilio/client/impl/session/SessionException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Account cannot be null when making a call"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/twilio/client/impl/useragent/Call;

    new-instance v1, Lcom/twilio/client/impl/useragent/MessageData;

    invoke-direct {v1, p2}, Lcom/twilio/client/impl/useragent/MessageData;-><init>(Ljava/util/Map;)V

    invoke-direct {v0, p1, p4, p3, v1}, Lcom/twilio/client/impl/useragent/Call;-><init>(Lcom/twilio/client/impl/session/Account;Ljava/lang/String;Ljava/lang/Object;Lcom/twilio/client/impl/useragent/MessageData;)V

    return-object v0
.end method

.method public newCall(Lcom/twilio/client/impl/session/Account;Ljava/util/Map;Ljava/lang/Object;Ljava/lang/String;I)Lcom/twilio/client/impl/useragent/Call;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twilio/client/impl/session/Account;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "I)",
            "Lcom/twilio/client/impl/useragent/Call;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/twilio/client/impl/session/SessionException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Account cannot be null when making a call"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/twilio/client/impl/useragent/Call;

    invoke-direct {v0, p1, p4, p3}, Lcom/twilio/client/impl/useragent/Call;-><init>(Lcom/twilio/client/impl/session/Account;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, p5}, Lcom/twilio/client/impl/useragent/Call;->setCallId(I)V

    return-object v0
.end method

.method public onCallMediaState(Lcom/twilio/client/impl/useragent/Call;)V
    .locals 2

    :try_start_0
    invoke-virtual {p1}, Lcom/twilio/client/impl/useragent/Call;->getCallInfo()Lcom/twilio/client/impl/useragent/Call$Info;

    move-result-object v0

    invoke-virtual {p1}, Lcom/twilio/client/impl/useragent/Call;->getUserData()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/twilio/client/impl/useragent/Call;->getUserData()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/twilio/client/impl/InternalConnection;

    if-nez v1, :cond_0

    :cond_0
    invoke-virtual {v0}, Lcom/twilio/client/impl/useragent/Call$Info;->getMediaStatus()Lcom/twilio/client/impl/useragent/Call$MediaStatus;

    move-result-object v0

    sget-object v1, Lcom/twilio/client/impl/useragent/Call$MediaStatus;->ACTIVE:Lcom/twilio/client/impl/useragent/Call$MediaStatus;

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/twilio/client/impl/useragent/ConfPort;->getSoundDevice()Lcom/twilio/client/impl/useragent/ConfPort;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/twilio/client/impl/useragent/ConfPort;->getSoundDevice()Lcom/twilio/client/impl/useragent/ConfPort;

    move-result-object v0

    invoke-virtual {p1}, Lcom/twilio/client/impl/useragent/Call;->getConfPort()Lcom/twilio/client/impl/useragent/ConfPort;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twilio/client/impl/useragent/ConfPort;->connect(Lcom/twilio/client/impl/useragent/ConfPort;)V

    invoke-virtual {p1}, Lcom/twilio/client/impl/useragent/Call;->getConfPort()Lcom/twilio/client/impl/useragent/ConfPort;

    move-result-object v0

    invoke-static {}, Lcom/twilio/client/impl/useragent/ConfPort;->getSoundDevice()Lcom/twilio/client/impl/useragent/ConfPort;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twilio/client/impl/useragent/ConfPort;->connect(Lcom/twilio/client/impl/useragent/ConfPort;)V
    :try_end_0
    .catch Lcom/twilio/client/impl/session/SessionException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onCallSDPCreated(Lcom/twilio/client/impl/useragent/Call;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/twilio/client/impl/CallControlManager;->logger:Lcom/twilio/client/impl/logging/Logger;

    const-string v1, "onCallSDPCreated notification received"

    invoke-virtual {v0, v1}, Lcom/twilio/client/impl/logging/Logger;->d(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lcom/twilio/client/impl/useragent/Call;->setMediaServerAddress(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onCallState(Lcom/twilio/client/impl/useragent/Call;Lcom/twilio/client/impl/session/Event;)V
    .locals 8

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :cond_1
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p2}, Lcom/twilio/client/impl/session/Event;->getType()Lcom/twilio/client/impl/session/Event$Type;

    move-result-object v1

    sget-object v4, Lcom/twilio/client/impl/session/Event$Type;->TSX_STATE:Lcom/twilio/client/impl/session/Event$Type;

    if-ne v1, v4, :cond_7

    move-object v0, p2

    check-cast v0, Lcom/twilio/client/impl/session/events/TsxStateEvent;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/twilio/client/impl/session/events/TsxStateEvent;->getSourceEventType()Lcom/twilio/client/impl/session/Event$Type;

    move-result-object v1

    sget-object v4, Lcom/twilio/client/impl/session/Event$Type;->RX_MSG:Lcom/twilio/client/impl/session/Event$Type;

    if-ne v1, v4, :cond_7

    check-cast p2, Lcom/twilio/client/impl/session/events/TsxStateEvent;

    invoke-virtual {p2}, Lcom/twilio/client/impl/session/events/TsxStateEvent;->getSourceEventData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twilio/client/impl/session/events/RxMessageEvent$RxData;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lcom/twilio/client/impl/session/events/RxMessageEvent$RxData;->getMessage()Lcom/twilio/client/impl/session/Message;

    move-result-object v4

    if-eqz v4, :cond_b

    invoke-virtual {v1}, Lcom/twilio/client/impl/session/events/RxMessageEvent$RxData;->getMessage()Lcom/twilio/client/impl/session/Message;

    move-result-object v4

    sget-object v1, Lcom/twilio/client/impl/CallControlManager;->logger:Lcom/twilio/client/impl/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "got rx message: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/twilio/client/impl/logging/Logger;->v(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/twilio/client/impl/session/Message;->getHeaders()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_a

    const-string v5, "X-Twilio-Error"

    invoke-interface {v1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    sget-object v3, Lcom/twilio/client/impl/TwilioError;->GENERIC_ERROR:Lcom/twilio/client/impl/TwilioError;

    invoke-virtual {v3}, Lcom/twilio/client/impl/TwilioError;->getCode()I

    move-result v3

    const-string v5, "X-Twilio-Error"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_a

    const/16 v5, 0x20

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_a

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_a

    add-int/lit8 v2, v5, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Lcom/twilio/client/impl/session/SessionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :try_start_1
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/twilio/client/impl/session/SessionException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    move-object v1, v2

    :goto_1
    if-nez v3, :cond_9

    :try_start_2
    invoke-virtual {v4}, Lcom/twilio/client/impl/session/Message;->getStatusLine()Lcom/twilio/client/impl/session/Message$StatusLine;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {v4}, Lcom/twilio/client/impl/session/Message;->getStatusLine()Lcom/twilio/client/impl/session/Message$StatusLine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twilio/client/impl/session/Message$StatusLine;->getCode()I

    move-result v2

    const/16 v5, 0x190

    if-lt v2, v5, :cond_9

    sparse-switch v2, :sswitch_data_0

    sget-object v1, Lcom/twilio/client/impl/TwilioError;->GENERIC_ERROR:Lcom/twilio/client/impl/TwilioError;

    invoke-virtual {v1}, Lcom/twilio/client/impl/TwilioError;->getCode()I

    move-result v1

    if-ge v2, v1, :cond_4

    sget-object v1, Lcom/twilio/client/impl/TwilioError;->GENERIC_ERROR:Lcom/twilio/client/impl/TwilioError;

    invoke-virtual {v1}, Lcom/twilio/client/impl/TwilioError;->getCode()I

    move-result v2

    sget-object v1, Lcom/twilio/client/impl/TwilioError;->GENERIC_ERROR:Lcom/twilio/client/impl/TwilioError;

    invoke-virtual {v1}, Lcom/twilio/client/impl/TwilioError;->getMessage()Ljava/lang/String;

    move-result-object v1

    :cond_2
    :goto_2
    move v3, v2

    move-object v2, v1

    :cond_3
    :goto_3
    invoke-virtual {p1}, Lcom/twilio/client/impl/useragent/Call;->getUserData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twilio/client/impl/InternalConnection;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/twilio/client/impl/useragent/Call;->getCallInfo()Lcom/twilio/client/impl/useragent/Call$Info;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Lcom/twilio/client/impl/InternalConnection;->getInternalState()Lcom/twilio/client/impl/InternalConnection$InternalState;

    move-result-object v4

    invoke-virtual {p1}, Lcom/twilio/client/impl/useragent/Call;->getCallInfo()Lcom/twilio/client/impl/useragent/Call$Info;

    move-result-object v5

    invoke-virtual {v5}, Lcom/twilio/client/impl/useragent/Call$Info;->getState()Lcom/twilio/client/impl/session/InviteState;

    move-result-object v5

    sget-object v6, Lcom/twilio/client/impl/InternalConnection$InternalState;->DISCONNECTING:Lcom/twilio/client/impl/InternalConnection$InternalState;

    if-ne v4, v6, :cond_8

    sget-object v6, Lcom/twilio/client/impl/session/InviteState;->DISCONNECTED:Lcom/twilio/client/impl/session/InviteState;

    if-eq v5, v6, :cond_8

    invoke-virtual {p0, v1}, Lcom/twilio/client/impl/CallControlManager;->hangupCall(Lcom/twilio/client/impl/InternalConnection;)V

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto/16 :goto_0

    :catch_1
    move-exception v2

    sget-object v2, Lcom/twilio/client/impl/TwilioError;->GENERIC_ERROR:Lcom/twilio/client/impl/TwilioError;

    invoke-virtual {v2}, Lcom/twilio/client/impl/TwilioError;->getCode()I

    move-result v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Server error: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    goto :goto_1

    :sswitch_0
    sget-object v1, Lcom/twilio/client/impl/TwilioError;->GENERIC_MALFORMED_REQUEST:Lcom/twilio/client/impl/TwilioError;

    invoke-virtual {v1}, Lcom/twilio/client/impl/TwilioError;->getCode()I

    move-result v2

    sget-object v1, Lcom/twilio/client/impl/TwilioError;->GENERIC_MALFORMED_REQUEST:Lcom/twilio/client/impl/TwilioError;

    invoke-virtual {v1}, Lcom/twilio/client/impl/TwilioError;->getMessage()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :sswitch_1
    sget-object v1, Lcom/twilio/client/impl/TwilioError;->GENERIC_AUTHORIZATION_ERROR:Lcom/twilio/client/impl/TwilioError;

    invoke-virtual {v1}, Lcom/twilio/client/impl/TwilioError;->getCode()I

    move-result v2

    sget-object v1, Lcom/twilio/client/impl/TwilioError;->GENERIC_AUTHORIZATION_ERROR:Lcom/twilio/client/impl/TwilioError;

    invoke-virtual {v1}, Lcom/twilio/client/impl/TwilioError;->getMessage()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :sswitch_2
    sget-object v1, Lcom/twilio/client/impl/TwilioError;->APPLICATION_NOT_FOUND:Lcom/twilio/client/impl/TwilioError;

    invoke-virtual {v1}, Lcom/twilio/client/impl/TwilioError;->getCode()I

    move-result v2

    sget-object v1, Lcom/twilio/client/impl/TwilioError;->APPLICATION_NOT_FOUND:Lcom/twilio/client/impl/TwilioError;

    invoke-virtual {v1}, Lcom/twilio/client/impl/TwilioError;->getMessage()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :sswitch_3
    sget-object v1, Lcom/twilio/client/impl/TwilioError;->CONNECTION_TIMEOUT:Lcom/twilio/client/impl/TwilioError;

    invoke-virtual {v1}, Lcom/twilio/client/impl/TwilioError;->getCode()I

    move-result v2

    sget-object v1, Lcom/twilio/client/impl/TwilioError;->CONNECTION_TIMEOUT:Lcom/twilio/client/impl/TwilioError;

    invoke-virtual {v1}, Lcom/twilio/client/impl/TwilioError;->getMessage()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :sswitch_4
    sget-object v1, Lcom/twilio/client/impl/TwilioError;->CONNECTION_DECLINED:Lcom/twilio/client/impl/TwilioError;

    invoke-virtual {v1}, Lcom/twilio/client/impl/TwilioError;->getCode()I

    move-result v2

    sget-object v1, Lcom/twilio/client/impl/TwilioError;->CONNECTION_DECLINED:Lcom/twilio/client/impl/TwilioError;

    invoke-virtual {v1}, Lcom/twilio/client/impl/TwilioError;->getMessage()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    :cond_4
    invoke-static {v2}, Lcom/twilio/client/impl/TwilioError;->fromCode(I)Lcom/twilio/client/impl/TwilioError;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/twilio/client/impl/TwilioError;->getMessage()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    :cond_5
    invoke-virtual {v4}, Lcom/twilio/client/impl/session/Message;->getStatusLine()Lcom/twilio/client/impl/session/Message$StatusLine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twilio/client/impl/session/Message$StatusLine;->getReason()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    :cond_6
    const-string v1, "(unrecognized error code)"

    goto/16 :goto_2

    :cond_7
    invoke-virtual {p2}, Lcom/twilio/client/impl/session/Event;->getType()Lcom/twilio/client/impl/session/Event$Type;

    move-result-object v1

    sget-object v4, Lcom/twilio/client/impl/session/Event$Type;->TSX_STATE:Lcom/twilio/client/impl/session/Event$Type;

    if-ne v1, v4, :cond_3

    move-object v0, p2

    check-cast v0, Lcom/twilio/client/impl/session/events/TsxStateEvent;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/twilio/client/impl/session/events/TsxStateEvent;->getSourceEventType()Lcom/twilio/client/impl/session/Event$Type;

    move-result-object v1

    sget-object v4, Lcom/twilio/client/impl/session/Event$Type;->TRANSPORT_ERROR:Lcom/twilio/client/impl/session/Event$Type;

    if-ne v1, v4, :cond_3

    check-cast p2, Lcom/twilio/client/impl/session/events/TsxStateEvent;

    invoke-virtual {p2}, Lcom/twilio/client/impl/session/events/TsxStateEvent;->getSourceEventData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    sget-object v2, Lcom/twilio/client/impl/CallControlManager;->logger:Lcom/twilio/client/impl/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "received transport error; status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/twilio/client/impl/logging/Logger;->e(Ljava/lang/String;)V

    sget-object v1, Lcom/twilio/client/impl/TwilioError;->GENERIC_ERROR:Lcom/twilio/client/impl/TwilioError;

    invoke-virtual {v1}, Lcom/twilio/client/impl/TwilioError;->getCode()I

    move-result v3

    sget-object v1, Lcom/twilio/client/impl/TwilioError;->GENERIC_ERROR:Lcom/twilio/client/impl/TwilioError;

    invoke-virtual {v1}, Lcom/twilio/client/impl/TwilioError;->getMessage()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3

    :cond_8
    sget-object v6, Lcom/twilio/client/impl/CallControlManager$1;->$SwitchMap$com$twilio$client$impl$session$InviteState:[I

    invoke-virtual {v5}, Lcom/twilio/client/impl/session/InviteState;->ordinal()I

    move-result v5

    aget v5, v6, v5

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_1
    invoke-interface {v1}, Lcom/twilio/client/impl/InternalConnection;->handleStateCalling()V

    goto/16 :goto_0

    :pswitch_2
    invoke-interface {v1}, Lcom/twilio/client/impl/InternalConnection;->handleStateIncoming()V

    goto/16 :goto_0

    :pswitch_3
    invoke-interface {v1}, Lcom/twilio/client/impl/InternalConnection;->handleStateEarly()V

    goto/16 :goto_0

    :pswitch_4
    invoke-interface {v1}, Lcom/twilio/client/impl/InternalConnection;->handleStateConnecting()V

    goto/16 :goto_0

    :pswitch_5
    invoke-interface {v1}, Lcom/twilio/client/impl/InternalConnection;->handleStateConfirmed()V

    goto/16 :goto_0

    :pswitch_6
    invoke-interface {v1, v4}, Lcom/twilio/client/impl/InternalConnection;->publishDisconnectedConnectionEvent(Lcom/twilio/client/impl/InternalConnection$InternalState;)V

    invoke-interface {v1, v3, v2}, Lcom/twilio/client/impl/InternalConnection;->handleStateDisconnected(ILjava/lang/String;)V

    invoke-static {}, Lcom/twilio/client/impl/TwilioImpl;->getInstance()Lcom/twilio/client/impl/TwilioImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twilio/client/impl/TwilioImpl;->hasActiveConnections()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1}, Lcom/twilio/client/impl/InternalConnection;->getDevice()Lcom/twilio/client/impl/DeviceImpl;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/twilio/client/impl/DeviceImpl;->getCapabilities()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v2, Lcom/twilio/client/Device$Capability;->INCOMING:Lcom/twilio/client/Device$Capability;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/twilio/client/impl/CallControlManager;->releaseCallTransports()V
    :try_end_2
    .catch Lcom/twilio/client/impl/session/SessionException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :cond_9
    move v2, v3

    goto/16 :goto_2

    :cond_a
    move-object v1, v2

    goto/16 :goto_1

    :cond_b
    move-object v1, v2

    move v2, v3

    goto/16 :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x190 -> :sswitch_0
        0x191 -> :sswitch_1
        0x194 -> :sswitch_2
        0x197 -> :sswitch_1
        0x198 -> :sswitch_3
        0x25b -> :sswitch_4
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public onIncomingCall(Lcom/twilio/client/impl/session/Account;Lcom/twilio/client/impl/useragent/Call;Lcom/twilio/client/impl/session/events/RxMessageEvent$RxData;)V
    .locals 4

    sget-object v0, Lcom/twilio/client/impl/CallControlManager;->logger:Lcom/twilio/client/impl/logging/Logger;

    const-string v1, "Incoming call notification received"

    invoke-virtual {v0, v1}, Lcom/twilio/client/impl/logging/Logger;->d(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/twilio/client/impl/session/events/RxMessageEvent$RxData;->getMessage()Lcom/twilio/client/impl/session/Message;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twilio/client/impl/session/Message;->getHeaders()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lcom/twilio/client/impl/session/Account;->getDevice()Lcom/twilio/client/impl/DeviceImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twilio/client/impl/DeviceImpl;->getCapabilityToken()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/twilio/client/impl/CallControlManager;->callFactory:Lcom/twilio/client/impl/CallFactory;

    invoke-virtual {v1, v3, v2, v0, p2}, Lcom/twilio/client/impl/DeviceImpl;->handleEventInvite(Lcom/twilio/client/impl/CallFactory;Ljava/lang/String;Ljava/util/Map;Lcom/twilio/client/impl/useragent/Call;)V

    return-void
.end method

.method onNetworkChanged()V
    .locals 3

    iget-object v0, p0, Lcom/twilio/client/impl/CallControlManager;->userAgent:Lcom/twilio/client/impl/useragent/UserAgent;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/twilio/client/impl/CallControlManager;->userAgent:Lcom/twilio/client/impl/useragent/UserAgent;

    invoke-virtual {v0}, Lcom/twilio/client/impl/useragent/UserAgent;->updateNameservers()V

    iget-object v0, p0, Lcom/twilio/client/impl/CallControlManager;->defaultAccount:Lcom/twilio/client/impl/session/Account;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twilio/client/impl/CallControlManager;->userAgent:Lcom/twilio/client/impl/useragent/UserAgent;

    iget-object v1, p0, Lcom/twilio/client/impl/CallControlManager;->defaultAccount:Lcom/twilio/client/impl/session/Account;

    invoke-virtual {v0, v1}, Lcom/twilio/client/impl/useragent/UserAgent;->deleteAccount(Lcom/twilio/client/impl/session/Account;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twilio/client/impl/CallControlManager;->defaultAccount:Lcom/twilio/client/impl/session/Account;

    :cond_0
    invoke-direct {p0}, Lcom/twilio/client/impl/CallControlManager;->addDefaultUserAccount()Lcom/twilio/client/impl/session/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/twilio/client/impl/CallControlManager;->defaultAccount:Lcom/twilio/client/impl/session/Account;

    invoke-direct {p0}, Lcom/twilio/client/impl/CallControlManager;->releaseCallTransports()V

    invoke-direct {p0}, Lcom/twilio/client/impl/CallControlManager;->createMainTransport()Lcom/twilio/client/impl/session/Transport;

    move-result-object v0

    iput-object v0, p0, Lcom/twilio/client/impl/CallControlManager;->mainTransport:Lcom/twilio/client/impl/session/Transport;

    invoke-static {}, Lcom/twilio/client/impl/TwilioImpl;->getInstance()Lcom/twilio/client/impl/TwilioImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twilio/client/impl/TwilioImpl;->onNetworkChanged()V
    :try_end_0
    .catch Lcom/twilio/client/impl/session/SessionException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/twilio/client/impl/CallControlManager;->logger:Lcom/twilio/client/impl/logging/Logger;

    const-string v2, "Failed to update nameservers"

    invoke-virtual {v1, v2, v0}, Lcom/twilio/client/impl/logging/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onRegistrationState(Lcom/twilio/client/impl/session/Account;Lcom/twilio/client/impl/session/Account$RegistrationInfo;)V
    .locals 5

    if-eqz p1, :cond_0

    sget-object v0, Lcom/twilio/client/impl/CallControlManager;->logger:Lcom/twilio/client/impl/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "account information : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twilio/client/impl/logging/Logger;->d(Ljava/lang/String;)V

    sget-object v0, Lcom/twilio/client/impl/CallControlManager;->logger:Lcom/twilio/client/impl/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRegistrationState for Account id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/twilio/client/impl/session/Account;->getAccountId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twilio/client/impl/logging/Logger;->d(Ljava/lang/String;)V

    :cond_0
    if-eqz p2, :cond_1

    sget-object v0, Lcom/twilio/client/impl/CallControlManager;->logger:Lcom/twilio/client/impl/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RegistrationInfo Code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/twilio/client/impl/session/Account$RegistrationInfo;->code:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twilio/client/impl/logging/Logger;->d(Ljava/lang/String;)V

    sget-object v0, Lcom/twilio/client/impl/CallControlManager;->logger:Lcom/twilio/client/impl/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RegistrationInfo success "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p2, Lcom/twilio/client/impl/session/Account$RegistrationInfo;->success:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twilio/client/impl/logging/Logger;->d(Ljava/lang/String;)V

    sget-object v0, Lcom/twilio/client/impl/CallControlManager;->logger:Lcom/twilio/client/impl/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RegistrationInfo expiration "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/twilio/client/impl/session/Account$RegistrationInfo;->expiration:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twilio/client/impl/logging/Logger;->d(Ljava/lang/String;)V

    iget v0, p2, Lcom/twilio/client/impl/session/Account$RegistrationInfo;->code:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_3

    iget v0, p2, Lcom/twilio/client/impl/session/Account$RegistrationInfo;->expiration:I

    if-gtz v0, :cond_2

    sget-object v0, Lcom/twilio/client/impl/CallControlManager;->logger:Lcom/twilio/client/impl/logging/Logger;

    const-string v1, "releasing transport"

    invoke-virtual {v0, v1}, Lcom/twilio/client/impl/logging/Logger;->d(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/twilio/client/impl/CallControlManager;->removeUserAccount(Lcom/twilio/client/impl/session/Account;)V

    invoke-direct {p0}, Lcom/twilio/client/impl/CallControlManager;->releaseCallTransports()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v0, Lcom/twilio/client/impl/CallControlManager;->logger:Lcom/twilio/client/impl/logging/Logger;

    const-string v1, "Client registered successfully"

    invoke-virtual {v0, v1}, Lcom/twilio/client/impl/logging/Logger;->d(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/twilio/client/impl/session/Account;->getDevice()Lcom/twilio/client/impl/DeviceImpl;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/twilio/client/impl/DeviceImpl;->getCapabilities()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/twilio/client/Device$Capability;->INCOMING:Lcom/twilio/client/Device$Capability;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/twilio/client/Device$Capability;->CLIENT_NAME:Lcom/twilio/client/Device$Capability;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/twilio/client/impl/CallControlManager;->getAccountConfigId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/twilio/client/impl/CallControlManager;->registeredUserAccountMap:Ljava/util/Map;

    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lcom/twilio/client/impl/DeviceImpl;->listener:Lcom/twilio/client/DeviceListener;

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lcom/twilio/client/impl/DeviceImpl;->getState()Lcom/twilio/client/Device$State;

    move-result-object v0

    sget-object v2, Lcom/twilio/client/Device$State;->READY:Lcom/twilio/client/Device$State;

    if-ne v0, v2, :cond_1

    iget-object v0, v1, Lcom/twilio/client/impl/DeviceImpl;->listener:Lcom/twilio/client/DeviceListener;

    invoke-interface {v0, v1}, Lcom/twilio/client/DeviceListener;->onStartListening(Lcom/twilio/client/Device;)V

    goto :goto_0

    :cond_3
    iget v0, p2, Lcom/twilio/client/impl/session/Account$RegistrationInfo;->code:I

    const/16 v1, 0x193

    if-ne v0, v1, :cond_5

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/twilio/client/impl/session/Account;->getDevice()Lcom/twilio/client/impl/DeviceImpl;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/twilio/client/impl/DeviceImpl;->getCapabilities()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Lcom/twilio/client/impl/DeviceImpl;->getCapabilities()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/twilio/client/Device$Capability;->INCOMING:Lcom/twilio/client/Device$Capability;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Lcom/twilio/client/impl/DeviceImpl;->getCapabilities()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/twilio/client/Device$Capability;->INCOMING:Lcom/twilio/client/Device$Capability;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/twilio/client/impl/session/Account;->getDevice()Lcom/twilio/client/impl/DeviceImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twilio/client/impl/DeviceImpl;->getCapabilities()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/twilio/client/Device$Capability;->CLIENT_NAME:Lcom/twilio/client/Device$Capability;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, v2, Lcom/twilio/client/impl/DeviceImpl;->capabilities:Ljava/util/Map;

    sget-object v3, Lcom/twilio/client/Device$Capability;->ACCOUNT_SID:Lcom/twilio/client/Device$Capability;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :try_start_0
    iget-object v3, v2, Lcom/twilio/client/impl/DeviceImpl;->capabilityToken:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v3}, Lcom/twilio/client/impl/CallControlManager;->createUserAccountConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/twilio/client/impl/useragent/config/AccountConfig;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twilio/client/impl/CallControlManager;->unRegisterAccount(Lcom/twilio/client/impl/useragent/config/AccountConfig;)V
    :try_end_0
    .catch Lcom/twilio/client/impl/session/SessionException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    sget-object v0, Lcom/twilio/client/impl/TwilioError;->EXPIRED_JWT_TOKEN:Lcom/twilio/client/impl/TwilioError;

    if-eqz v2, :cond_4

    iget-object v1, v2, Lcom/twilio/client/impl/DeviceImpl;->listener:Lcom/twilio/client/DeviceListener;

    if-eqz v1, :cond_4

    iget-object v1, v2, Lcom/twilio/client/impl/DeviceImpl;->capabilities:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    iget-object v1, v2, Lcom/twilio/client/impl/DeviceImpl;->listener:Lcom/twilio/client/DeviceListener;

    invoke-virtual {v0}, Lcom/twilio/client/impl/TwilioError;->getCode()I

    move-result v3

    invoke-virtual {v0}, Lcom/twilio/client/impl/TwilioError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v3, v0}, Lcom/twilio/client/DeviceListener;->onStopListening(Lcom/twilio/client/Device;ILjava/lang/String;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/twilio/client/impl/CallControlManager;->logger:Lcom/twilio/client/impl/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Token expired. Attempting to unregister throws error : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/twilio/client/impl/session/SessionException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/twilio/client/impl/logging/Logger;->e(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/twilio/client/impl/CallControlManager;->logger:Lcom/twilio/client/impl/logging/Logger;

    const-string v1, "Token expired"

    invoke-virtual {v0, v1}, Lcom/twilio/client/impl/logging/Logger;->w(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    iget v0, p2, Lcom/twilio/client/impl/session/Account$RegistrationInfo;->code:I

    const/16 v1, 0x198

    if-ne v0, v1, :cond_7

    invoke-virtual {p1}, Lcom/twilio/client/impl/session/Account;->getDevice()Lcom/twilio/client/impl/DeviceImpl;

    move-result-object v0

    sget-object v1, Lcom/twilio/client/impl/TwilioError;->CONNECTION_TIMEOUT:Lcom/twilio/client/impl/TwilioError;

    if-eqz v0, :cond_6

    iget-object v2, v0, Lcom/twilio/client/impl/DeviceImpl;->listener:Lcom/twilio/client/DeviceListener;

    if-eqz v2, :cond_6

    iget-object v2, v0, Lcom/twilio/client/impl/DeviceImpl;->capabilities:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    iget-object v2, v0, Lcom/twilio/client/impl/DeviceImpl;->listener:Lcom/twilio/client/DeviceListener;

    invoke-virtual {v1}, Lcom/twilio/client/impl/TwilioError;->getCode()I

    move-result v3

    invoke-virtual {v1}, Lcom/twilio/client/impl/TwilioError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v3, v1}, Lcom/twilio/client/DeviceListener;->onStopListening(Lcom/twilio/client/Device;ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    sget-object v0, Lcom/twilio/client/impl/CallControlManager;->logger:Lcom/twilio/client/impl/logging/Logger;

    const-string v1, "Connection timeout"

    invoke-virtual {v0, v1}, Lcom/twilio/client/impl/logging/Logger;->w(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    iget v0, p2, Lcom/twilio/client/impl/session/Account$RegistrationInfo;->code:I

    const/16 v1, 0x12c

    if-le v0, v1, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/twilio/client/impl/session/Account;->getDevice()Lcom/twilio/client/impl/DeviceImpl;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/twilio/client/impl/DeviceImpl;->getCapabilities()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Lcom/twilio/client/impl/DeviceImpl;->getCapabilities()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/twilio/client/Device$Capability;->INCOMING:Lcom/twilio/client/Device$Capability;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Lcom/twilio/client/impl/DeviceImpl;->getCapabilities()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/twilio/client/Device$Capability;->INCOMING:Lcom/twilio/client/Device$Capability;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/twilio/client/impl/session/Account;->getDevice()Lcom/twilio/client/impl/DeviceImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twilio/client/impl/DeviceImpl;->getCapabilities()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/twilio/client/Device$Capability;->CLIENT_NAME:Lcom/twilio/client/Device$Capability;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, v2, Lcom/twilio/client/impl/DeviceImpl;->capabilities:Ljava/util/Map;

    sget-object v3, Lcom/twilio/client/Device$Capability;->ACCOUNT_SID:Lcom/twilio/client/Device$Capability;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :try_start_1
    iget-object v3, v2, Lcom/twilio/client/impl/DeviceImpl;->capabilityToken:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v3}, Lcom/twilio/client/impl/CallControlManager;->createUserAccountConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/twilio/client/impl/useragent/config/AccountConfig;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twilio/client/impl/CallControlManager;->unRegisterAccount(Lcom/twilio/client/impl/useragent/config/AccountConfig;)V
    :try_end_1
    .catch Lcom/twilio/client/impl/session/SessionException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    sget-object v0, Lcom/twilio/client/impl/TwilioError;->GENERIC_ERROR:Lcom/twilio/client/impl/TwilioError;

    if-eqz v2, :cond_8

    iget-object v1, v2, Lcom/twilio/client/impl/DeviceImpl;->listener:Lcom/twilio/client/DeviceListener;

    if-eqz v1, :cond_8

    iget-object v1, v2, Lcom/twilio/client/impl/DeviceImpl;->capabilities:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    iget-object v1, v2, Lcom/twilio/client/impl/DeviceImpl;->listener:Lcom/twilio/client/DeviceListener;

    invoke-virtual {v0}, Lcom/twilio/client/impl/TwilioError;->getCode()I

    move-result v3

    invoke-virtual {v0}, Lcom/twilio/client/impl/TwilioError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v3, v0}, Lcom/twilio/client/DeviceListener;->onStopListening(Lcom/twilio/client/Device;ILjava/lang/String;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    sget-object v1, Lcom/twilio/client/impl/CallControlManager;->logger:Lcom/twilio/client/impl/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempting to unregister throws error : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/twilio/client/impl/session/SessionException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/twilio/client/impl/logging/Logger;->e(Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    sget-object v0, Lcom/twilio/client/impl/CallControlManager;->logger:Lcom/twilio/client/impl/logging/Logger;

    const-string v1, "Token expired"

    invoke-virtual {v0, v1}, Lcom/twilio/client/impl/logging/Logger;->w(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onTransactionState(Lcom/twilio/client/impl/useragent/Call;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/twilio/client/impl/CallControlManager;->logger:Lcom/twilio/client/impl/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTransactionState received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twilio/client/impl/logging/Logger;->d(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/twilio/client/impl/useragent/Call;->getUserData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twilio/client/impl/InternalConnection;

    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Lcom/twilio/client/impl/InternalConnection;->setOutgoingCallSid(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onTransportState(Lcom/twilio/client/impl/session/Transport;Lcom/twilio/client/impl/session/Transport$State;Lcom/twilio/client/impl/session/Transport$StateInfo;)V
    .locals 2

    sget-object v0, Lcom/twilio/client/impl/session/Transport$State;->CONNECTED:Lcom/twilio/client/impl/session/Transport$State;

    if-ne p2, v0, :cond_2

    iget-object v1, p0, Lcom/twilio/client/impl/CallControlManager;->callTransports:Ljava/util/List;

    monitor-enter v1

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/twilio/client/impl/session/Transport;->addRef()V

    iget-object v0, p0, Lcom/twilio/client/impl/CallControlManager;->callTransports:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    monitor-exit v1

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    sget-object v0, Lcom/twilio/client/impl/session/Transport$State;->DISCONNECTED:Lcom/twilio/client/impl/session/Transport$State;

    if-ne p2, v0, :cond_1

    iget-object v1, p0, Lcom/twilio/client/impl/CallControlManager;->callTransports:Ljava/util/List;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/twilio/client/impl/CallControlManager;->callTransports:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/twilio/client/impl/session/Transport;->decRef()V

    :cond_3
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method

.method public registerAccount(Lcom/twilio/client/impl/useragent/config/AccountConfig;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/twilio/client/impl/session/SessionException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/twilio/client/impl/useragent/config/AccountConfig;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twilio/client/impl/CallControlManager;->isAccountRegistered(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/twilio/client/impl/CallControlManager;->userAgent:Lcom/twilio/client/impl/useragent/UserAgent;

    invoke-virtual {v0, p1}, Lcom/twilio/client/impl/useragent/UserAgent;->registerAccount(Lcom/twilio/client/impl/useragent/config/AccountConfig;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reinvite(Lcom/twilio/client/impl/InternalConnection;)V
    .locals 5

    invoke-interface {p1}, Lcom/twilio/client/impl/InternalConnection;->getCallHandle()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twilio/client/impl/useragent/Call;

    if-eqz v0, :cond_0

    const-string v1, "twilio"

    invoke-direct {p0}, Lcom/twilio/client/impl/CallControlManager;->getSipDomain()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sip:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "twilio"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x40

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";transport="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/twilio/client/impl/CallControlManager;->protocol:Lcom/twilio/client/impl/CallControlManager$CallControlProtocol;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/twilio/client/impl/CallControlManager;->getCallCommandHandler(Lcom/twilio/client/impl/InternalConnection;)Lcom/twilio/client/impl/CallCommandHandler;

    move-result-object v2

    new-instance v3, Lcom/twilio/client/impl/ReinviteCallCommand;

    iget-object v4, p0, Lcom/twilio/client/impl/CallControlManager;->defaultAccount:Lcom/twilio/client/impl/session/Account;

    invoke-direct {v3, v0, v4, v1}, Lcom/twilio/client/impl/ReinviteCallCommand;-><init>(Lcom/twilio/client/impl/useragent/Call;Lcom/twilio/client/impl/session/Account;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lcom/twilio/client/impl/CallCommandHandler;->postCommand(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public rejectCall(Lcom/twilio/client/impl/InternalConnection;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/twilio/client/impl/CallControlManager;->getCallCommandHandler(Lcom/twilio/client/impl/InternalConnection;)Lcom/twilio/client/impl/CallCommandHandler;

    move-result-object v0

    new-instance v1, Lcom/twilio/client/impl/RejectCallCommand;

    invoke-direct {v1, p1}, Lcom/twilio/client/impl/RejectCallCommand;-><init>(Lcom/twilio/client/impl/InternalConnection;)V

    invoke-interface {v0, v1}, Lcom/twilio/client/impl/CallCommandHandler;->postCommand(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeAccountFromRegisteredMap(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/CallControlManager;->registeredUserAccountMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twilio/client/impl/CallControlManager;->registeredUserAccountMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public removeUserAccount(Lcom/twilio/client/impl/session/Account;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/twilio/client/impl/CallControlManager;->userAgent:Lcom/twilio/client/impl/useragent/UserAgent;

    invoke-virtual {v0, p1}, Lcom/twilio/client/impl/useragent/UserAgent;->deleteAccount(Lcom/twilio/client/impl/session/Account;)V
    :try_end_0
    .catch Lcom/twilio/client/impl/session/SessionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/twilio/client/impl/CallControlManager;->logger:Lcom/twilio/client/impl/logging/Logger;

    const-string v2, "Failed to remove account"

    invoke-virtual {v1, v2, v0}, Lcom/twilio/client/impl/logging/Logger;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v1, Lcom/twilio/client/impl/CallControlManager;->logger:Lcom/twilio/client/impl/logging/Logger;

    const-string v2, "Failed to remove account"

    invoke-virtual {v1, v2, v0}, Lcom/twilio/client/impl/logging/Logger;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception v0

    sget-object v1, Lcom/twilio/client/impl/CallControlManager;->logger:Lcom/twilio/client/impl/logging/Logger;

    const-string v2, "Failed to remove account"

    invoke-virtual {v1, v2, v0}, Lcom/twilio/client/impl/logging/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public sendDigits(Lcom/twilio/client/impl/InternalConnection;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/twilio/client/impl/CallControlManager;->getCallCommandHandler(Lcom/twilio/client/impl/InternalConnection;)Lcom/twilio/client/impl/CallCommandHandler;

    move-result-object v0

    new-instance v1, Lcom/twilio/client/impl/SendDigitsCommand;

    invoke-direct {v1, p1, p2}, Lcom/twilio/client/impl/SendDigitsCommand;-><init>(Lcom/twilio/client/impl/InternalConnection;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/twilio/client/impl/CallCommandHandler;->postCommand(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected setCallFactory(Lcom/twilio/client/impl/CallFactory;)V
    .locals 0

    iput-object p1, p0, Lcom/twilio/client/impl/CallControlManager;->callFactory:Lcom/twilio/client/impl/CallFactory;

    return-void
.end method

.method public setCallMuted(Lcom/twilio/client/impl/InternalConnection;Z)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/twilio/client/impl/CallControlManager;->getCallCommandHandler(Lcom/twilio/client/impl/InternalConnection;)Lcom/twilio/client/impl/CallCommandHandler;

    move-result-object v0

    new-instance v1, Lcom/twilio/client/impl/MuteCallCommand;

    invoke-direct {v1, p1, p2}, Lcom/twilio/client/impl/MuteCallCommand;-><init>(Lcom/twilio/client/impl/InternalConnection;Z)V

    invoke-interface {v0, v1}, Lcom/twilio/client/impl/CallCommandHandler;->postCommand(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setDefaultAccount(Lcom/twilio/client/impl/session/Account;)V
    .locals 0

    iput-object p1, p0, Lcom/twilio/client/impl/CallControlManager;->defaultAccount:Lcom/twilio/client/impl/session/Account;

    return-void
.end method

.method setLogLevel(I)V
    .locals 3

    iput p1, p0, Lcom/twilio/client/impl/CallControlManager;->globalLogLevel:I

    invoke-direct {p0, p1}, Lcom/twilio/client/impl/CallControlManager;->convertLogLevel(I)I

    move-result v0

    iput v0, p0, Lcom/twilio/client/impl/CallControlManager;->pjsipLogLevel:I

    iget-object v0, p0, Lcom/twilio/client/impl/CallControlManager;->userAgent:Lcom/twilio/client/impl/useragent/UserAgent;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/twilio/client/impl/useragent/config/LoggingConfig;

    invoke-direct {v0}, Lcom/twilio/client/impl/useragent/config/LoggingConfig;-><init>()V

    iget v1, p0, Lcom/twilio/client/impl/CallControlManager;->pjsipLogLevel:I

    iput v1, v0, Lcom/twilio/client/impl/useragent/config/LoggingConfig;->consoleLevel:I

    :try_start_0
    iget-object v1, p0, Lcom/twilio/client/impl/CallControlManager;->userAgent:Lcom/twilio/client/impl/useragent/UserAgent;

    invoke-virtual {v1, v0}, Lcom/twilio/client/impl/useragent/UserAgent;->reconfigureLogging(Lcom/twilio/client/impl/useragent/config/LoggingConfig;)V
    :try_end_0
    .catch Lcom/twilio/client/impl/session/SessionException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/twilio/client/impl/CallControlManager;->logger:Lcom/twilio/client/impl/logging/Logger;

    const-string v2, "Failed to reconfigure log level"

    invoke-virtual {v1, v2, v0}, Lcom/twilio/client/impl/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public unRegisterAccount(Lcom/twilio/client/impl/useragent/config/AccountConfig;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/twilio/client/impl/session/SessionException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/twilio/client/impl/useragent/config/AccountConfig;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/twilio/client/impl/CallControlManager;->registeredUserAccountMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twilio/client/impl/CallControlManager;->registeredUserAccountMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twilio/client/impl/session/Account;

    iget-object v2, p0, Lcom/twilio/client/impl/CallControlManager;->userAgent:Lcom/twilio/client/impl/useragent/UserAgent;

    invoke-virtual {v0}, Lcom/twilio/client/impl/session/Account;->getAccountId()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/twilio/client/impl/useragent/UserAgent;->unregisterAccount(I)V

    iget-object v0, p0, Lcom/twilio/client/impl/CallControlManager;->registeredUserAccountMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
