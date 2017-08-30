.class public Lcom/twilio/client/impl/net/EventStream;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/twilio/client/impl/net/LongPollConnection$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twilio/client/impl/net/EventStream$Listener;,
        Lcom/twilio/client/impl/net/EventStream$Feature;
    }
.end annotation


# static fields
.field private static final MATRIX_SUPPORTS_FEATURE_CHANGES:Z

.field private static final logger:Lcom/twilio/client/impl/logging/Logger;


# instance fields
.field private final accountSid:Ljava/lang/String;

.field private final capabilityToken:Ljava/lang/String;

.field private final clientName:Ljava/lang/String;

.field private features:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/twilio/client/impl/net/EventStream$Feature;",
            ">;"
        }
    .end annotation
.end field

.field private final featuresLock:Ljava/lang/Object;

.field private listenerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/twilio/client/impl/net/EventStream$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private matrixConn:Lcom/twilio/client/impl/net/HttpJsonLongPollConnection;

.field private final networkQueue:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/twilio/client/impl/net/EventStream;

    invoke-static {v0}, Lcom/twilio/client/impl/logging/Logger;->getLogger(Ljava/lang/Class;)Lcom/twilio/client/impl/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/twilio/client/impl/net/EventStream;->logger:Lcom/twilio/client/impl/logging/Logger;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/EnumSet;Lcom/twilio/client/impl/net/EventStream$Listener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Lcom/twilio/client/Device$Capability;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/twilio/client/impl/net/EventStream$Feature;",
            ">;",
            "Lcom/twilio/client/impl/net/EventStream$Listener;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/twilio/client/impl/net/EventStream;->featuresLock:Ljava/lang/Object;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/twilio/client/impl/net/EventStream;->networkQueue:Ljava/util/concurrent/ExecutorService;

    const-class v0, Lcom/twilio/client/impl/net/EventStream$Feature;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/twilio/client/impl/net/EventStream;->features:Ljava/util/EnumSet;

    iput-object p1, p0, Lcom/twilio/client/impl/net/EventStream;->capabilityToken:Ljava/lang/String;

    sget-object v0, Lcom/twilio/client/Device$Capability;->ACCOUNT_SID:Lcom/twilio/client/Device$Capability;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/twilio/client/impl/net/EventStream;->accountSid:Ljava/lang/String;

    sget-object v0, Lcom/twilio/client/Device$Capability;->CLIENT_NAME:Lcom/twilio/client/Device$Capability;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/twilio/client/impl/net/EventStream;->clientName:Ljava/lang/String;

    iget-object v0, p0, Lcom/twilio/client/impl/net/EventStream;->features:Ljava/util/EnumSet;

    invoke-virtual {v0, p3}, Ljava/util/EnumSet;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/twilio/client/impl/net/EventStream;->listenerRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private notifyListenersConnected()V
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/net/EventStream;->matrixConn:Lcom/twilio/client/impl/net/HttpJsonLongPollConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twilio/client/impl/net/EventStream;->matrixConn:Lcom/twilio/client/impl/net/HttpJsonLongPollConnection;

    invoke-virtual {v0}, Lcom/twilio/client/impl/net/HttpJsonLongPollConnection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twilio/client/impl/net/EventStream;->listenerRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twilio/client/impl/net/EventStream;->listenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twilio/client/impl/net/EventStream$Listener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/twilio/client/impl/net/EventStream$Listener;->onEventStreamConnected()V

    invoke-interface {v0}, Lcom/twilio/client/impl/net/EventStream$Listener;->onFeaturesUpdated()V

    :cond_0
    return-void
.end method

.method private postMessage(Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v1, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    if-eqz p3, :cond_0

    const-string v2, "Content-Type"

    invoke-virtual {v1, v2, p3}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v2, "X-Twilio-Client"

    invoke-static {}, Lcom/twilio/client/impl/Constants;->getClientString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    :try_start_0
    invoke-virtual {v1, p2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    :cond_1
    invoke-static {}, Lcom/twilio/client/impl/net/HttpHelper;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0xc8

    if-lt v2, v3, :cond_2

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    const/16 v2, 0x12c

    if-lt v1, v2, :cond_3

    :cond_2
    :goto_0
    return v0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/twilio/client/impl/net/EventStream;->logger:Lcom/twilio/client/impl/logging/Logger;

    const-string v3, "Failed to post to matrix"

    invoke-virtual {v2, v3, v1}, Lcom/twilio/client/impl/logging/Logger;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private postUrl(Ljava/lang/String;)Z
    .locals 2

    const/4 v1, 0x0

    move-object v0, v1

    check-cast v0, Lorg/apache/http/HttpEntity;

    invoke-direct {p0, p1, v0, v1}, Lcom/twilio/client/impl/net/EventStream;->postMessage(Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private urlForSubchannel(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/twilio/client/impl/net/EventStream;->accountSid:Ljava/lang/String;

    iget-object v1, p0, Lcom/twilio/client/impl/net/EventStream;->clientName:Ljava/lang/String;

    iget-object v2, p0, Lcom/twilio/client/impl/net/EventStream;->capabilityToken:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/twilio/client/impl/Constants;->buildMatrixUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addFeature(Lcom/twilio/client/impl/net/EventStream$Feature;)V
    .locals 2

    iget-object v1, p0, Lcom/twilio/client/impl/net/EventStream;->featuresLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/twilio/client/impl/net/EventStream;->features:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/twilio/client/impl/net/EventStream;->features:Ljava/util/EnumSet;

    invoke-static {v0}, Ljava/util/EnumSet;->copyOf(Ljava/util/EnumSet;)Ljava/util/EnumSet;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Lcom/twilio/client/impl/net/EventStream;->postFeatures(Ljava/util/EnumSet;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public connect()V
    .locals 5

    iget-object v0, p0, Lcom/twilio/client/impl/net/EventStream;->matrixConn:Lcom/twilio/client/impl/net/HttpJsonLongPollConnection;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/twilio/client/impl/net/EventStream;->accountSid:Ljava/lang/String;

    iget-object v1, p0, Lcom/twilio/client/impl/net/EventStream;->clientName:Ljava/lang/String;

    iget-object v2, p0, Lcom/twilio/client/impl/net/EventStream;->capabilityToken:Ljava/lang/String;

    iget-object v3, p0, Lcom/twilio/client/impl/net/EventStream;->features:Ljava/util/EnumSet;

    invoke-static {v0, v1, v2, v3}, Lcom/twilio/client/impl/Constants;->buildMatrixUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/EnumSet;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/twilio/client/impl/Constants;->getRegisterCommonNames()[Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    const-string v3, "X-Twilio-Chunked-Keepalive"

    const-string v4, "600"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/twilio/client/impl/net/HttpJsonLongPollConnection;

    invoke-direct {v3, v0, v2, v1, p0}, Lcom/twilio/client/impl/net/HttpJsonLongPollConnection;-><init>(Ljava/lang/String;Ljava/util/Map;[Ljava/lang/String;Lcom/twilio/client/impl/net/LongPollConnection$Listener;)V

    iput-object v3, p0, Lcom/twilio/client/impl/net/EventStream;->matrixConn:Lcom/twilio/client/impl/net/HttpJsonLongPollConnection;

    iget-object v0, p0, Lcom/twilio/client/impl/net/EventStream;->matrixConn:Lcom/twilio/client/impl/net/HttpJsonLongPollConnection;

    invoke-virtual {v0}, Lcom/twilio/client/impl/net/HttpJsonLongPollConnection;->connect()V

    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 1

    invoke-virtual {p0}, Lcom/twilio/client/impl/net/EventStream;->disconnect()V

    invoke-static {}, Lcom/twilio/client/impl/net/EventStreamManager;->getInstance()Lcom/twilio/client/impl/net/EventStreamManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/twilio/client/impl/net/EventStreamManager;->handleStreamDestroyed(Lcom/twilio/client/impl/net/EventStream;)V

    return-void
.end method

.method protected disconnect()V
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/net/EventStream;->matrixConn:Lcom/twilio/client/impl/net/HttpJsonLongPollConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twilio/client/impl/net/EventStream;->matrixConn:Lcom/twilio/client/impl/net/HttpJsonLongPollConnection;

    invoke-virtual {v0}, Lcom/twilio/client/impl/net/HttpJsonLongPollConnection;->disconnect()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twilio/client/impl/net/EventStream;->matrixConn:Lcom/twilio/client/impl/net/HttpJsonLongPollConnection;

    :cond_0
    iget-object v0, p0, Lcom/twilio/client/impl/net/EventStream;->networkQueue:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    return-void
.end method

.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/twilio/client/impl/net/EventStream;->destroy()V

    return-void
.end method

.method public getCapabilityToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/net/EventStream;->capabilityToken:Ljava/lang/String;

    return-object v0
.end method

.method public getFeatures()Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/twilio/client/impl/net/EventStream$Feature;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/twilio/client/impl/net/EventStream;->features:Ljava/util/EnumSet;

    return-object v0
.end method

.method public hasFeature(Lcom/twilio/client/impl/net/EventStream$Feature;)Z
    .locals 2

    iget-object v1, p0, Lcom/twilio/client/impl/net/EventStream;->featuresLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/twilio/client/impl/net/EventStream;->features:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isConnectedToMatrix()Z
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/net/EventStream;->matrixConn:Lcom/twilio/client/impl/net/HttpJsonLongPollConnection;

    invoke-virtual {v0}, Lcom/twilio/client/impl/net/HttpJsonLongPollConnection;->isConnected()Z

    move-result v0

    return v0
.end method

.method protected notifyFeaturesChanged(Ljava/util/EnumSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/twilio/client/impl/net/EventStream$Feature;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/twilio/client/impl/net/EventStream;->featuresLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/twilio/client/impl/net/EventStream;->features:Ljava/util/EnumSet;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/twilio/client/impl/net/EventStream;->listenerRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twilio/client/impl/net/EventStream;->listenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twilio/client/impl/net/EventStream$Listener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/twilio/client/impl/net/EventStream$Listener;->onFeaturesUpdated()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onConnected()V
    .locals 0

    return-void
.end method

.method public onDisconnected()V
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/net/EventStream;->listenerRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twilio/client/impl/net/EventStream;->listenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twilio/client/impl/net/EventStream$Listener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/twilio/client/impl/net/EventStream$Listener;->onEventStreamDisconnected()V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Exception;Z)V
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/net/EventStream;->listenerRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twilio/client/impl/net/EventStream;->listenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twilio/client/impl/net/EventStream$Listener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/twilio/client/impl/net/EventStream$Listener;->onEventStreamDisconnected(Ljava/lang/Exception;Z)V

    :cond_0
    return-void
.end method

.method public onHeadersReceived(ILjava/lang/String;Ljava/util/Map;)V
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

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/twilio/client/impl/net/EventStream;->notifyListenersConnected()V

    :cond_0
    return-void
.end method

.method public onMessageReceived(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/twilio/client/impl/net/EventStream;->listenerRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twilio/client/impl/net/EventStream;->listenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twilio/client/impl/net/EventStream$Listener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/twilio/client/impl/net/EventStream$Listener;->onMessageReceived(Ljava/util/Map;)Z

    :cond_0
    return-void
.end method

.method protected postFeatures(Ljava/util/EnumSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/twilio/client/impl/net/EventStream$Feature;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/twilio/client/impl/net/EventStream;->notifyFeaturesChanged(Ljava/util/EnumSet;)V

    return-void
.end method

.method public postMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    new-instance v0, Lorg/apache/http/entity/StringEntity;

    const-string v1, "UTF-8"

    invoke-direct {v0, p1, v1}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/twilio/client/impl/net/EventStream;->urlForSubchannel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0, p3}, Lcom/twilio/client/impl/net/EventStream;->postMessage(Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/twilio/client/impl/net/EventStream;->logger:Lcom/twilio/client/impl/logging/Logger;

    const-string v2, "Failed to build post data"

    invoke-virtual {v1, v2, v0}, Lcom/twilio/client/impl/logging/Logger;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeFeature(Lcom/twilio/client/impl/net/EventStream$Feature;)V
    .locals 2

    iget-object v1, p0, Lcom/twilio/client/impl/net/EventStream;->featuresLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/twilio/client/impl/net/EventStream;->features:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/twilio/client/impl/net/EventStream;->features:Ljava/util/EnumSet;

    invoke-static {v0}, Ljava/util/EnumSet;->copyOf(Ljava/util/EnumSet;)Ljava/util/EnumSet;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Lcom/twilio/client/impl/net/EventStream;->postFeatures(Ljava/util/EnumSet;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setFeatures(Ljava/util/EnumSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/twilio/client/impl/net/EventStream$Feature;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/twilio/client/impl/net/EventStream;->featuresLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/twilio/client/impl/net/EventStream;->features:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, p1}, Lcom/twilio/client/impl/net/EventStream;->postFeatures(Ljava/util/EnumSet;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setListener(Lcom/twilio/client/impl/net/EventStream$Listener;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twilio/client/impl/net/EventStream;->listenerRef:Ljava/lang/ref/WeakReference;

    :goto_0
    invoke-direct {p0}, Lcom/twilio/client/impl/net/EventStream;->notifyListenersConnected()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/twilio/client/impl/net/EventStream;->listenerRef:Ljava/lang/ref/WeakReference;

    goto :goto_0
.end method
