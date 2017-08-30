.class public Lcom/twilio/client/impl/useragent/UserAgent;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static volatile singleton:Lcom/twilio/client/impl/useragent/UserAgent;

.field private static final singletonLock:Ljava/lang/Object;


# instance fields
.field private callbacks:Lcom/twilio/client/impl/useragent/config/UserAgentConfig$Callbacks;

.field private hasDnsSrvResolution:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/twilio/client/impl/useragent/UserAgent;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/twilio/client/impl/useragent/UserAgent;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/twilio/client/impl/useragent/UserAgent;->singletonLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/twilio/client/impl/session/SessionException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/twilio/client/impl/useragent/UserAgent;->create()V

    return-void
.end method

.method private native create()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/twilio/client/impl/session/SessionException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method private native destroyNative()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/twilio/client/impl/session/SessionException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public static get()Lcom/twilio/client/impl/useragent/UserAgent;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/twilio/client/impl/session/SessionException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    sget-object v0, Lcom/twilio/client/impl/useragent/UserAgent;->singleton:Lcom/twilio/client/impl/useragent/UserAgent;

    if-nez v0, :cond_1

    sget-object v1, Lcom/twilio/client/impl/useragent/UserAgent;->singletonLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/twilio/client/impl/useragent/UserAgent;->singleton:Lcom/twilio/client/impl/useragent/UserAgent;

    if-nez v0, :cond_0

    new-instance v0, Lcom/twilio/client/impl/useragent/UserAgent;

    invoke-direct {v0}, Lcom/twilio/client/impl/useragent/UserAgent;-><init>()V

    sput-object v0, Lcom/twilio/client/impl/useragent/UserAgent;->singleton:Lcom/twilio/client/impl/useragent/UserAgent;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/twilio/client/impl/useragent/UserAgent;->singleton:Lcom/twilio/client/impl/useragent/UserAgent;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public native addAccount(Lcom/twilio/client/impl/useragent/config/AccountConfig;Z)Lcom/twilio/client/impl/session/Account;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/twilio/client/impl/session/SessionException;
        }
    .end annotation
.end method

.method public canResolveSrvRecords()Z
    .locals 1

    iget-boolean v0, p0, Lcom/twilio/client/impl/useragent/UserAgent;->hasDnsSrvResolution:Z

    return v0
.end method

.method public native createPlayer(Ljava/lang/String;Z)Lcom/twilio/client/impl/useragent/Player;
.end method

.method public native createRecorder(Ljava/lang/String;J)Lcom/twilio/client/impl/useragent/Recorder;
.end method

.method public native createTransport(Lcom/twilio/client/impl/session/Transport$Type;Lcom/twilio/client/impl/useragent/config/TransportConfig;)Lcom/twilio/client/impl/session/Transport;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/twilio/client/impl/session/SessionException;
        }
    .end annotation
.end method

.method public native deleteAccount(Lcom/twilio/client/impl/session/Account;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/twilio/client/impl/session/SessionException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public destroy()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/twilio/client/impl/session/SessionException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    sget-object v1, Lcom/twilio/client/impl/useragent/UserAgent;->singletonLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lcom/twilio/client/impl/useragent/UserAgent;->destroyNative()V

    const/4 v0, 0x0

    sput-object v0, Lcom/twilio/client/impl/useragent/UserAgent;->singleton:Lcom/twilio/client/impl/useragent/UserAgent;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDNSAddress()[Ljava/lang/String;
    .locals 10

    const/4 v1, 0x0

    const/4 v0, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    const-string v2, "android.os.SystemProperties"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v4, "get"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v2, 0x4

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v6, "net.dns0"

    aput-object v6, v5, v2

    const/4 v2, 0x1

    const-string v6, "net.dns1"

    aput-object v6, v5, v2

    const/4 v2, 0x2

    const-string v6, "net.dns2"

    aput-object v6, v5, v2

    const/4 v2, 0x3

    const-string v6, "net.dns3"

    aput-object v6, v5, v2

    array-length v6, v5

    move v2, v0

    :goto_0
    if-ge v2, v6, :cond_1

    aget-object v0, v5, v2

    const/4 v7, 0x0

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    invoke-virtual {v4, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v7, ""

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    const-string v2, "TAG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error attempting to retrieve dns entries from android.os.SystemProperties."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_1
.end method

.method public native handleEvents(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/twilio/client/impl/session/SessionException;
        }
    .end annotation
.end method

.method public native init(Lcom/twilio/client/impl/useragent/config/UserAgentConfig;Lcom/twilio/client/impl/useragent/config/LoggingConfig;Lcom/twilio/client/impl/useragent/config/MediaConfig;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/twilio/client/impl/session/SessionException;
        }
    .end annotation
.end method

.method public native reconfigureLogging(Lcom/twilio/client/impl/useragent/config/LoggingConfig;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/twilio/client/impl/session/SessionException;
        }
    .end annotation
.end method

.method public native registerAccount(Lcom/twilio/client/impl/useragent/config/AccountConfig;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/twilio/client/impl/session/SessionException;
        }
    .end annotation
.end method

.method public native start()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/twilio/client/impl/session/SessionException;
        }
    .end annotation
.end method

.method public native unregisterAccount(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/twilio/client/impl/session/SessionException;
        }
    .end annotation
.end method

.method public native updateNameservers()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/twilio/client/impl/session/SessionException;
        }
    .end annotation
.end method
