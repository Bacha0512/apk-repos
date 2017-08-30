.class public Lcom/twilio/client/impl/analytics/EventMetadata;
.super Ljava/lang/Object;


# instance fields
.field callSid:Ljava/lang/String;

.field eventName:Ljava/lang/String;

.field groupName:Ljava/lang/String;

.field isPrivate:Z

.field level:Lcom/twilio/client/impl/analytics/Constants$SeverityLevel;

.field payloadType:Ljava/lang/String;

.field productName:Ljava/lang/String;

.field timeStamp:Ljava/lang/String;

.field timestampMS:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twilio/client/impl/analytics/EventMetadata;->isPrivate:Z

    return-void
.end method


# virtual methods
.method public getCallSid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/analytics/EventMetadata;->callSid:Ljava/lang/String;

    return-object v0
.end method

.method public getEventName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/analytics/EventMetadata;->eventName:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/analytics/EventMetadata;->groupName:Ljava/lang/String;

    return-object v0
.end method

.method public getLevel()Lcom/twilio/client/impl/analytics/Constants$SeverityLevel;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/analytics/EventMetadata;->level:Lcom/twilio/client/impl/analytics/Constants$SeverityLevel;

    return-object v0
.end method

.method public getPayloadType()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/analytics/EventMetadata;->payloadType:Ljava/lang/String;

    return-object v0
.end method

.method public getProductName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/analytics/EventMetadata;->productName:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeStamp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/analytics/EventMetadata;->timeStamp:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestampMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/twilio/client/impl/analytics/EventMetadata;->timestampMS:J

    return-wide v0
.end method

.method public isPrivate()Z
    .locals 1

    iget-boolean v0, p0, Lcom/twilio/client/impl/analytics/EventMetadata;->isPrivate:Z

    return v0
.end method

.method public jsonEnvelopePreparation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "name"

    iget-object v2, p0, Lcom/twilio/client/impl/analytics/EventMetadata;->eventName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "group"

    iget-object v2, p0, Lcom/twilio/client/impl/analytics/EventMetadata;->groupName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "timestamp"

    iget-object v2, p0, Lcom/twilio/client/impl/analytics/EventMetadata;->timeStamp:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "level"

    iget-object v2, p0, Lcom/twilio/client/impl/analytics/EventMetadata;->level:Lcom/twilio/client/impl/analytics/Constants$SeverityLevel;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "private"

    iget-boolean v2, p0, Lcom/twilio/client/impl/analytics/EventMetadata;->isPrivate:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "payload_type"

    iget-object v2, p0, Lcom/twilio/client/impl/analytics/EventMetadata;->payloadType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "publisher"

    iget-object v2, p0, Lcom/twilio/client/impl/analytics/EventMetadata;->productName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method public jsonPublisherMetadataPreparation()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "client_address"

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/twilio/client/impl/useragent/Utils;->getIPAddress(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "os_name"

    const-string v2, "android"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "os_version"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "device_model"

    invoke-static {}, Lcom/twilio/client/impl/useragent/AndroidDevices;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "device_vendor"

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "device_type"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "cpu_architecture"

    sget-object v2, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method
