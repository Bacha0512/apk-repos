.class public Lcom/twilio/client/impl/analytics/Event;
.super Lcom/twilio/client/impl/analytics/EventMetadata;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twilio/client/impl/analytics/Event$Builder;
    }
.end annotation


# instance fields
.field private payload:Lorg/json/JSONObject;


# direct methods
.method private constructor <init>(Lcom/twilio/client/impl/analytics/Event$Builder;)V
    .locals 2

    invoke-direct {p0}, Lcom/twilio/client/impl/analytics/EventMetadata;-><init>()V

    # getter for: Lcom/twilio/client/impl/analytics/Event$Builder;->productName:Ljava/lang/String;
    invoke-static {p1}, Lcom/twilio/client/impl/analytics/Event$Builder;->access$000(Lcom/twilio/client/impl/analytics/Event$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twilio/client/impl/analytics/Event;->productName:Ljava/lang/String;

    # getter for: Lcom/twilio/client/impl/analytics/Event$Builder;->level:Lcom/twilio/client/impl/analytics/Constants$SeverityLevel;
    invoke-static {p1}, Lcom/twilio/client/impl/analytics/Event$Builder;->access$100(Lcom/twilio/client/impl/analytics/Event$Builder;)Lcom/twilio/client/impl/analytics/Constants$SeverityLevel;

    move-result-object v0

    iput-object v0, p0, Lcom/twilio/client/impl/analytics/Event;->level:Lcom/twilio/client/impl/analytics/Constants$SeverityLevel;

    # getter for: Lcom/twilio/client/impl/analytics/Event$Builder;->groupName:Ljava/lang/String;
    invoke-static {p1}, Lcom/twilio/client/impl/analytics/Event$Builder;->access$200(Lcom/twilio/client/impl/analytics/Event$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twilio/client/impl/analytics/Event;->groupName:Ljava/lang/String;

    # getter for: Lcom/twilio/client/impl/analytics/Event$Builder;->eventName:Ljava/lang/String;
    invoke-static {p1}, Lcom/twilio/client/impl/analytics/Event$Builder;->access$300(Lcom/twilio/client/impl/analytics/Event$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twilio/client/impl/analytics/Event;->eventName:Ljava/lang/String;

    # getter for: Lcom/twilio/client/impl/analytics/Event$Builder;->payload:Lorg/json/JSONObject;
    invoke-static {p1}, Lcom/twilio/client/impl/analytics/Event$Builder;->access$400(Lcom/twilio/client/impl/analytics/Event$Builder;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/twilio/client/impl/analytics/Event;->payload:Lorg/json/JSONObject;

    # getter for: Lcom/twilio/client/impl/analytics/Event$Builder;->payloadType:Ljava/lang/String;
    invoke-static {p1}, Lcom/twilio/client/impl/analytics/Event$Builder;->access$500(Lcom/twilio/client/impl/analytics/Event$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twilio/client/impl/analytics/Event;->payloadType:Ljava/lang/String;

    # getter for: Lcom/twilio/client/impl/analytics/Event$Builder;->timeStamp:Ljava/lang/String;
    invoke-static {p1}, Lcom/twilio/client/impl/analytics/Event$Builder;->access$600(Lcom/twilio/client/impl/analytics/Event$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twilio/client/impl/analytics/Event;->timeStamp:Ljava/lang/String;

    # getter for: Lcom/twilio/client/impl/analytics/Event$Builder;->timestampMS:J
    invoke-static {p1}, Lcom/twilio/client/impl/analytics/Event$Builder;->access$700(Lcom/twilio/client/impl/analytics/Event$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twilio/client/impl/analytics/Event;->timestampMS:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/twilio/client/impl/analytics/Event$Builder;Lcom/twilio/client/impl/analytics/Event$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/twilio/client/impl/analytics/Event;-><init>(Lcom/twilio/client/impl/analytics/Event$Builder;)V

    return-void
.end method


# virtual methods
.method public getPayload()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/analytics/Event;->payload:Lorg/json/JSONObject;

    return-object v0
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

    iput-object v0, p0, Lcom/twilio/client/impl/analytics/Event;->timeStamp:Ljava/lang/String;

    iget-object v0, p0, Lcom/twilio/client/impl/analytics/Event;->productName:Ljava/lang/String;

    iget-object v1, p0, Lcom/twilio/client/impl/analytics/Event;->eventName:Ljava/lang/String;

    iget-object v2, p0, Lcom/twilio/client/impl/analytics/Event;->groupName:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/twilio/client/impl/analytics/Event;->jsonEnvelopePreparation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0}, Lcom/twilio/client/impl/analytics/Event;->jsonPublisherMetadataPreparation()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "publisher_metadata"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "payload_type"

    iget-object v2, p0, Lcom/twilio/client/impl/analytics/Event;->payloadType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "payload"

    iget-object v2, p0, Lcom/twilio/client/impl/analytics/Event;->payload:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method
