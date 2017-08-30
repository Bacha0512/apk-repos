.class public Lcom/twilio/client/impl/analytics/EventPublisher;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twilio/client/impl/analytics/EventPublisher$EventPublisherListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final logger:Lcom/twilio/client/impl/logging/Logger;


# instance fields
.field private listenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/twilio/client/impl/analytics/EventPublisher$EventPublisherListener;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private publisherName:Ljava/lang/String;

.field private pushMetrics:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private token:Ljava/lang/String;

.field private twilioProdSdkiEventGatewayURL:Ljava/lang/String;

.field private twilioProdSdkiMetricsGatewayURL:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/twilio/client/impl/analytics/EventPublisher;

    invoke-static {v0}, Lcom/twilio/client/impl/logging/Logger;->getLogger(Ljava/lang/Class;)Lcom/twilio/client/impl/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/twilio/client/impl/analytics/EventPublisher;->logger:Lcom/twilio/client/impl/logging/Logger;

    const-class v0, Lcom/twilio/client/impl/analytics/EventPublisher;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/twilio/client/impl/analytics/EventPublisher;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/twilio/client/impl/analytics/EventPublisher;->listenerMap:Ljava/util/Map;

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "token must not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "publisherName must not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p2, p0, Lcom/twilio/client/impl/analytics/EventPublisher;->token:Ljava/lang/String;

    iput-object p1, p0, Lcom/twilio/client/impl/analytics/EventPublisher;->publisherName:Ljava/lang/String;

    invoke-static {}, Lcom/twilio/client/impl/Constants;->getKeyKibanaMetricsHostUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twilio/client/impl/analytics/EventPublisher;->twilioProdSdkiMetricsGatewayURL:Ljava/lang/String;

    invoke-static {}, Lcom/twilio/client/impl/Constants;->getKeyKibanaEventGatewayHostUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twilio/client/impl/analytics/EventPublisher;->twilioProdSdkiEventGatewayURL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/twilio/client/impl/analytics/EventPublisher;->listenerMap:Ljava/util/Map;

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "token must not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "publisherName must not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "options must not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-object p2, p0, Lcom/twilio/client/impl/analytics/EventPublisher;->token:Ljava/lang/String;

    iput-object p1, p0, Lcom/twilio/client/impl/analytics/EventPublisher;->publisherName:Ljava/lang/String;

    const-string v0, "event-host"

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "event-host"

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/twilio/client/impl/analytics/EventPublisher;->twilioProdSdkiEventGatewayURL:Ljava/lang/String;

    :cond_3
    const-string v0, "metrics-host"

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "metrics-host"

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/twilio/client/impl/analytics/EventPublisher;->twilioProdSdkiMetricsGatewayURL:Ljava/lang/String;

    :cond_4
    return-void
.end method

.method static synthetic access$000(Lcom/twilio/client/impl/analytics/EventPublisher;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/analytics/EventPublisher;->token:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Lcom/twilio/client/impl/logging/Logger;
    .locals 1

    sget-object v0, Lcom/twilio/client/impl/analytics/EventPublisher;->logger:Lcom/twilio/client/impl/logging/Logger;

    return-object v0
.end method

.method static synthetic access$200(Lcom/twilio/client/impl/analytics/EventPublisher;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/twilio/client/impl/analytics/EventPublisher;->notifyListeners(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/twilio/client/impl/analytics/EventPublisher;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private notifyListeners(ILjava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/twilio/client/impl/analytics/EventPublisher;->listenerMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twilio/client/impl/analytics/EventPublisher$EventPublisherListener;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v3, Lcom/twilio/client/impl/analytics/EventPublisher$2;

    invoke-direct {v3, p0, v1, p1, p2}, Lcom/twilio/client/impl/analytics/EventPublisher$2;-><init>(Lcom/twilio/client/impl/analytics/EventPublisher;Lcom/twilio/client/impl/analytics/EventPublisher$EventPublisherListener;ILjava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private publish(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/twilio/client/impl/analytics/EventPublisher;->logger:Lcom/twilio/client/impl/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start publishing events to : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twilio/client/impl/logging/Logger;->d(Ljava/lang/String;)V

    new-instance v0, Lcom/twilio/client/impl/analytics/EventPublisher$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/twilio/client/impl/analytics/EventPublisher$1;-><init>(Lcom/twilio/client/impl/analytics/EventPublisher;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/twilio/client/impl/analytics/EventPublisher;->pushMetrics:Landroid/os/AsyncTask;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/twilio/client/impl/analytics/EventPublisher;->pushMetrics:Landroid/os/AsyncTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/twilio/client/impl/analytics/EventPublisher;->pushMetrics:Landroid/os/AsyncTask;

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private setupListenerHandler()Landroid/os/Handler;
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EventPublisherListener must have a Looper."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addListener(Lcom/twilio/client/impl/analytics/EventPublisher$EventPublisherListener;)V
    .locals 2

    invoke-direct {p0}, Lcom/twilio/client/impl/analytics/EventPublisher;->setupListenerHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/twilio/client/impl/analytics/EventPublisher;->listenerMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public publish(Lcom/twilio/client/impl/analytics/Constants$SeverityLevel;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lcom/twilio/client/impl/analytics/Event$Builder;

    invoke-direct {v0}, Lcom/twilio/client/impl/analytics/Event$Builder;-><init>()V

    iget-object v1, p0, Lcom/twilio/client/impl/analytics/EventPublisher;->publisherName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/twilio/client/impl/analytics/Event$Builder;->productName(Ljava/lang/String;)Lcom/twilio/client/impl/analytics/Event$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/twilio/client/impl/analytics/Event$Builder;->eventName(Ljava/lang/String;)Lcom/twilio/client/impl/analytics/Event$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/twilio/client/impl/analytics/Event$Builder;->groupName(Ljava/lang/String;)Lcom/twilio/client/impl/analytics/Event$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/twilio/client/impl/analytics/Event$Builder;->level(Lcom/twilio/client/impl/analytics/Constants$SeverityLevel;)Lcom/twilio/client/impl/analytics/Event$Builder;

    move-result-object v0

    const-string v1, "application/json"

    invoke-virtual {v0, v1}, Lcom/twilio/client/impl/analytics/Event$Builder;->payLoadType(Ljava/lang/String;)Lcom/twilio/client/impl/analytics/Event$Builder;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/twilio/client/impl/analytics/Event$Builder;->payLoad(Lorg/json/JSONObject;)Lcom/twilio/client/impl/analytics/Event$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twilio/client/impl/analytics/Event$Builder;->build()Lcom/twilio/client/impl/analytics/Event;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twilio/client/impl/analytics/Event;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/twilio/client/impl/analytics/EventPublisher;->twilioProdSdkiEventGatewayURL:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/twilio/client/impl/analytics/EventPublisher;->publish(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public publishMetrics(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lcom/twilio/client/impl/analytics/MetricEvent$Builder;

    invoke-direct {v0}, Lcom/twilio/client/impl/analytics/MetricEvent$Builder;-><init>()V

    iget-object v1, p0, Lcom/twilio/client/impl/analytics/EventPublisher;->publisherName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/twilio/client/impl/analytics/MetricEvent$Builder;->productName(Ljava/lang/String;)Lcom/twilio/client/impl/analytics/MetricEvent$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/twilio/client/impl/analytics/MetricEvent$Builder;->eventName(Ljava/lang/String;)Lcom/twilio/client/impl/analytics/MetricEvent$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/twilio/client/impl/analytics/MetricEvent$Builder;->groupName(Ljava/lang/String;)Lcom/twilio/client/impl/analytics/MetricEvent$Builder;

    move-result-object v0

    sget-object v1, Lcom/twilio/client/impl/analytics/Constants$SeverityLevel;->INFO:Lcom/twilio/client/impl/analytics/Constants$SeverityLevel;

    invoke-virtual {v0, v1}, Lcom/twilio/client/impl/analytics/MetricEvent$Builder;->level(Lcom/twilio/client/impl/analytics/Constants$SeverityLevel;)Lcom/twilio/client/impl/analytics/MetricEvent$Builder;

    move-result-object v0

    const-string v1, "application/json"

    invoke-virtual {v0, v1}, Lcom/twilio/client/impl/analytics/MetricEvent$Builder;->payLoadType(Ljava/lang/String;)Lcom/twilio/client/impl/analytics/MetricEvent$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/twilio/client/impl/analytics/MetricEvent$Builder;->payLoad(Lorg/json/JSONArray;)Lcom/twilio/client/impl/analytics/MetricEvent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twilio/client/impl/analytics/MetricEvent$Builder;->build()Lcom/twilio/client/impl/analytics/MetricEvent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/twilio/client/impl/analytics/MetricEvent;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/twilio/client/impl/analytics/EventPublisher;->twilioProdSdkiMetricsGatewayURL:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/twilio/client/impl/analytics/EventPublisher;->publish(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public removeListener(Lcom/twilio/client/impl/analytics/RTCMonitor$Listener;)V
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/analytics/EventPublisher;->listenerMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twilio/client/impl/analytics/EventPublisher;->listenerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public updateCapabilityToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/twilio/client/impl/analytics/EventPublisher;->token:Ljava/lang/String;

    return-void
.end method
