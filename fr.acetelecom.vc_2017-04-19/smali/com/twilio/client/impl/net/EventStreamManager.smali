.class public Lcom/twilio/client/impl/net/EventStreamManager;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/twilio/client/impl/net/EventStreamFactory;


# static fields
.field private static volatile instance:Lcom/twilio/client/impl/net/EventStreamManager;

.field private static final instanceLock:Ljava/lang/Object;


# instance fields
.field private final eventStreams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/twilio/client/impl/net/EventStream;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/twilio/client/impl/net/EventStreamManager;->instanceLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/twilio/client/impl/net/EventStreamManager;->eventStreams:Ljava/util/Map;

    return-void
.end method

.method public static destroy()V
    .locals 2

    sget-object v1, Lcom/twilio/client/impl/net/EventStreamManager;->instanceLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/twilio/client/impl/net/EventStreamManager;->instance:Lcom/twilio/client/impl/net/EventStreamManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/twilio/client/impl/net/EventStreamManager;->instance:Lcom/twilio/client/impl/net/EventStreamManager;

    invoke-direct {v0}, Lcom/twilio/client/impl/net/EventStreamManager;->destroyAllStreams()V

    const/4 v0, 0x0

    sput-object v0, Lcom/twilio/client/impl/net/EventStreamManager;->instance:Lcom/twilio/client/impl/net/EventStreamManager;

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private destroyAllStreams()V
    .locals 3

    iget-object v1, p0, Lcom/twilio/client/impl/net/EventStreamManager;->eventStreams:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/twilio/client/impl/net/EventStreamManager;->eventStreams:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twilio/client/impl/net/EventStream;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/twilio/client/impl/net/EventStream;->destroy()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    iget-object v1, p0, Lcom/twilio/client/impl/net/EventStreamManager;->eventStreams:Ljava/util/Map;

    monitor-enter v1

    :try_start_2
    iget-object v0, p0, Lcom/twilio/client/impl/net/EventStreamManager;->eventStreams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    monitor-exit v1

    return-void

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public static final getInstance()Lcom/twilio/client/impl/net/EventStreamManager;
    .locals 2

    sget-object v0, Lcom/twilio/client/impl/net/EventStreamManager;->instance:Lcom/twilio/client/impl/net/EventStreamManager;

    if-nez v0, :cond_1

    sget-object v1, Lcom/twilio/client/impl/net/EventStreamManager;->instanceLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/twilio/client/impl/net/EventStreamManager;->instance:Lcom/twilio/client/impl/net/EventStreamManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/twilio/client/impl/net/EventStreamManager;

    invoke-direct {v0}, Lcom/twilio/client/impl/net/EventStreamManager;-><init>()V

    sput-object v0, Lcom/twilio/client/impl/net/EventStreamManager;->instance:Lcom/twilio/client/impl/net/EventStreamManager;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/twilio/client/impl/net/EventStreamManager;->instance:Lcom/twilio/client/impl/net/EventStreamManager;

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
.method public createEventStream(Ljava/lang/String;Ljava/util/Map;Ljava/util/EnumSet;Lcom/twilio/client/impl/net/EventStream$Listener;)Lcom/twilio/client/impl/net/EventStream;
    .locals 4
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
            ")",
            "Lcom/twilio/client/impl/net/EventStream;"
        }
    .end annotation

    iget-object v2, p0, Lcom/twilio/client/impl/net/EventStreamManager;->eventStreams:Ljava/util/Map;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/twilio/client/impl/net/EventStreamManager;->eventStreams:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twilio/client/impl/net/EventStream;

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Lcom/twilio/client/impl/net/EventStream;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/twilio/client/impl/net/EventStream;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/EnumSet;Lcom/twilio/client/impl/net/EventStream$Listener;)V

    iget-object v1, p0, Lcom/twilio/client/impl/net/EventStreamManager;->eventStreams:Ljava/util/Map;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    monitor-exit v2

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/twilio/client/impl/net/EventStreamManager;->eventStreams:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p4}, Lcom/twilio/client/impl/net/EventStream;->setListener(Lcom/twilio/client/impl/net/EventStream$Listener;)V

    invoke-virtual {v0, p3}, Lcom/twilio/client/impl/net/EventStream;->setFeatures(Ljava/util/EnumSet;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected finalize()V
    .locals 0

    invoke-direct {p0}, Lcom/twilio/client/impl/net/EventStreamManager;->destroyAllStreams()V

    return-void
.end method

.method handleStreamDestroyed(Lcom/twilio/client/impl/net/EventStream;)V
    .locals 3

    iget-object v1, p0, Lcom/twilio/client/impl/net/EventStreamManager;->eventStreams:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/twilio/client/impl/net/EventStreamManager;->eventStreams:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/twilio/client/impl/net/EventStream;->getCapabilityToken()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public reconnectAll()V
    .locals 6

    iget-object v3, p0, Lcom/twilio/client/impl/net/EventStreamManager;->eventStreams:Ljava/util/Map;

    monitor-enter v3

    :try_start_0
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iget-object v0, p0, Lcom/twilio/client/impl/net/EventStreamManager;->eventStreams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twilio/client/impl/net/EventStream;

    :goto_1
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/twilio/client/impl/net/EventStream;->disconnect()V

    invoke-virtual {v1}, Lcom/twilio/client/impl/net/EventStream;->connect()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/twilio/client/impl/net/EventStreamManager;->eventStreams:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :cond_3
    move-object v1, v2

    goto :goto_1
.end method
