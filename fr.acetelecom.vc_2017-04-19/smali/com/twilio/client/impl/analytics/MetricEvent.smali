.class public Lcom/twilio/client/impl/analytics/MetricEvent;
.super Lcom/twilio/client/impl/analytics/EventMetadata;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twilio/client/impl/analytics/MetricEvent$Builder;
    }
.end annotation


# instance fields
.field private payload:Lorg/json/JSONArray;


# direct methods
.method private constructor <init>(Lcom/twilio/client/impl/analytics/MetricEvent$Builder;)V
    .locals 1

    invoke-direct {p0}, Lcom/twilio/client/impl/analytics/EventMetadata;-><init>()V

    # getter for: Lcom/twilio/client/impl/analytics/MetricEvent$Builder;->productName:Ljava/lang/String;
    invoke-static {p1}, Lcom/twilio/client/impl/analytics/MetricEvent$Builder;->access$000(Lcom/twilio/client/impl/analytics/MetricEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twilio/client/impl/analytics/MetricEvent;->productName:Ljava/lang/String;

    # getter for: Lcom/twilio/client/impl/analytics/MetricEvent$Builder;->level:Lcom/twilio/client/impl/analytics/Constants$SeverityLevel;
    invoke-static {p1}, Lcom/twilio/client/impl/analytics/MetricEvent$Builder;->access$100(Lcom/twilio/client/impl/analytics/MetricEvent$Builder;)Lcom/twilio/client/impl/analytics/Constants$SeverityLevel;

    move-result-object v0

    iput-object v0, p0, Lcom/twilio/client/impl/analytics/MetricEvent;->level:Lcom/twilio/client/impl/analytics/Constants$SeverityLevel;

    # getter for: Lcom/twilio/client/impl/analytics/MetricEvent$Builder;->groupName:Ljava/lang/String;
    invoke-static {p1}, Lcom/twilio/client/impl/analytics/MetricEvent$Builder;->access$200(Lcom/twilio/client/impl/analytics/MetricEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twilio/client/impl/analytics/MetricEvent;->groupName:Ljava/lang/String;

    # getter for: Lcom/twilio/client/impl/analytics/MetricEvent$Builder;->eventName:Ljava/lang/String;
    invoke-static {p1}, Lcom/twilio/client/impl/analytics/MetricEvent$Builder;->access$300(Lcom/twilio/client/impl/analytics/MetricEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twilio/client/impl/analytics/MetricEvent;->eventName:Ljava/lang/String;

    # getter for: Lcom/twilio/client/impl/analytics/MetricEvent$Builder;->callSid:Ljava/lang/String;
    invoke-static {p1}, Lcom/twilio/client/impl/analytics/MetricEvent$Builder;->access$400(Lcom/twilio/client/impl/analytics/MetricEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twilio/client/impl/analytics/MetricEvent;->callSid:Ljava/lang/String;

    # getter for: Lcom/twilio/client/impl/analytics/MetricEvent$Builder;->payloadType:Ljava/lang/String;
    invoke-static {p1}, Lcom/twilio/client/impl/analytics/MetricEvent$Builder;->access$500(Lcom/twilio/client/impl/analytics/MetricEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twilio/client/impl/analytics/MetricEvent;->payloadType:Ljava/lang/String;

    # getter for: Lcom/twilio/client/impl/analytics/MetricEvent$Builder;->payload:Lorg/json/JSONArray;
    invoke-static {p1}, Lcom/twilio/client/impl/analytics/MetricEvent$Builder;->access$600(Lcom/twilio/client/impl/analytics/MetricEvent$Builder;)Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/twilio/client/impl/analytics/MetricEvent;->payload:Lorg/json/JSONArray;

    return-void
.end method

.method synthetic constructor <init>(Lcom/twilio/client/impl/analytics/MetricEvent$Builder;Lcom/twilio/client/impl/analytics/MetricEvent$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/twilio/client/impl/analytics/MetricEvent;-><init>(Lcom/twilio/client/impl/analytics/MetricEvent$Builder;)V

    return-void
.end method


# virtual methods
.method public addStatsToPayload(Lorg/json/JSONObject;)V
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/analytics/MetricEvent;->payload:Lorg/json/JSONArray;

    if-nez v0, :cond_0

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/twilio/client/impl/analytics/MetricEvent;->payload:Lorg/json/JSONArray;

    :cond_0
    iget-object v0, p0, Lcom/twilio/client/impl/analytics/MetricEvent;->payload:Lorg/json/JSONArray;

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    return-void
.end method

.method public getPayload()Lorg/json/JSONArray;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/analytics/MetricEvent;->payload:Lorg/json/JSONArray;

    return-object v0
.end method

.method public setPayload(Lorg/json/JSONArray;)V
    .locals 0

    iput-object p1, p0, Lcom/twilio/client/impl/analytics/MetricEvent;->payload:Lorg/json/JSONArray;

    return-void
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twilio/client/impl/analytics/MetricEvent;->timeStamp:Ljava/lang/String;

    iget-object v0, p0, Lcom/twilio/client/impl/analytics/MetricEvent;->productName:Ljava/lang/String;

    const-string v1, "call-metric-event"

    const-string v2, "call-quality-stats"

    invoke-virtual {p0, v0, v1, v2}, Lcom/twilio/client/impl/analytics/MetricEvent;->jsonEnvelopePreparation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0}, Lcom/twilio/client/impl/analytics/MetricEvent;->jsonPublisherMetadataPreparation()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "publisher_metadata"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "payload"

    iget-object v2, p0, Lcom/twilio/client/impl/analytics/MetricEvent;->payload:Lorg/json/JSONArray;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method
