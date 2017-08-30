.class public Lcom/twilio/client/impl/analytics/EventPayload;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twilio/client/impl/analytics/EventPayload$Builder;
    }
.end annotation


# instance fields
.field private callSid:Ljava/lang/String;

.field private clientName:Ljava/lang/String;

.field private direction:Lcom/twilio/client/impl/analytics/Constants$Direction;

.field isPrivate:Z

.field private issueName:Ljava/lang/String;

.field private payload:Lorg/json/JSONObject;

.field private payloadType:Ljava/lang/String;

.field private productName:Ljava/lang/String;

.field private qualityParam:Ljava/lang/String;

.field private qualityScore:I

.field private qualityThreshold:I

.field private sampleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twilio/client/impl/analytics/RTCStatsSample;",
            ">;"
        }
    .end annotation
.end field

.field private sampleValue:I

.field private tempCallSid:Ljava/lang/String;

.field private timeStamp:Ljava/lang/String;

.field private timestampMS:J


# direct methods
.method private constructor <init>(Lcom/twilio/client/impl/analytics/EventPayload$Builder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twilio/client/impl/analytics/EventPayload;->isPrivate:Z

    # getter for: Lcom/twilio/client/impl/analytics/EventPayload$Builder;->productName:Ljava/lang/String;
    invoke-static {p1}, Lcom/twilio/client/impl/analytics/EventPayload$Builder;->access$000(Lcom/twilio/client/impl/analytics/EventPayload$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twilio/client/impl/analytics/EventPayload;->productName:Ljava/lang/String;

    # getter for: Lcom/twilio/client/impl/analytics/EventPayload$Builder;->payload:Lorg/json/JSONObject;
    invoke-static {p1}, Lcom/twilio/client/impl/analytics/EventPayload$Builder;->access$100(Lcom/twilio/client/impl/analytics/EventPayload$Builder;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/twilio/client/impl/analytics/EventPayload;->payload:Lorg/json/JSONObject;

    # getter for: Lcom/twilio/client/impl/analytics/EventPayload$Builder;->payloadType:Ljava/lang/String;
    invoke-static {p1}, Lcom/twilio/client/impl/analytics/EventPayload$Builder;->access$200(Lcom/twilio/client/impl/analytics/EventPayload$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twilio/client/impl/analytics/EventPayload;->payloadType:Ljava/lang/String;

    # getter for: Lcom/twilio/client/impl/analytics/EventPayload$Builder;->timeStamp:Ljava/lang/String;
    invoke-static {p1}, Lcom/twilio/client/impl/analytics/EventPayload$Builder;->access$300(Lcom/twilio/client/impl/analytics/EventPayload$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twilio/client/impl/analytics/EventPayload;->timeStamp:Ljava/lang/String;

    # getter for: Lcom/twilio/client/impl/analytics/EventPayload$Builder;->timestampMS:J
    invoke-static {p1}, Lcom/twilio/client/impl/analytics/EventPayload$Builder;->access$400(Lcom/twilio/client/impl/analytics/EventPayload$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twilio/client/impl/analytics/EventPayload;->timestampMS:J

    # getter for: Lcom/twilio/client/impl/analytics/EventPayload$Builder;->clientName:Ljava/lang/String;
    invoke-static {p1}, Lcom/twilio/client/impl/analytics/EventPayload$Builder;->access$500(Lcom/twilio/client/impl/analytics/EventPayload$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twilio/client/impl/analytics/EventPayload;->clientName:Ljava/lang/String;

    # getter for: Lcom/twilio/client/impl/analytics/EventPayload$Builder;->direction:Lcom/twilio/client/impl/analytics/Constants$Direction;
    invoke-static {p1}, Lcom/twilio/client/impl/analytics/EventPayload$Builder;->access$600(Lcom/twilio/client/impl/analytics/EventPayload$Builder;)Lcom/twilio/client/impl/analytics/Constants$Direction;

    move-result-object v0

    iput-object v0, p0, Lcom/twilio/client/impl/analytics/EventPayload;->direction:Lcom/twilio/client/impl/analytics/Constants$Direction;

    # getter for: Lcom/twilio/client/impl/analytics/EventPayload$Builder;->qualityParam:Ljava/lang/String;
    invoke-static {p1}, Lcom/twilio/client/impl/analytics/EventPayload$Builder;->access$700(Lcom/twilio/client/impl/analytics/EventPayload$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twilio/client/impl/analytics/EventPayload;->qualityParam:Ljava/lang/String;

    # getter for: Lcom/twilio/client/impl/analytics/EventPayload$Builder;->qualityThreshold:I
    invoke-static {p1}, Lcom/twilio/client/impl/analytics/EventPayload$Builder;->access$800(Lcom/twilio/client/impl/analytics/EventPayload$Builder;)I

    move-result v0

    iput v0, p0, Lcom/twilio/client/impl/analytics/EventPayload;->qualityThreshold:I

    # getter for: Lcom/twilio/client/impl/analytics/EventPayload$Builder;->sampleValue:I
    invoke-static {p1}, Lcom/twilio/client/impl/analytics/EventPayload$Builder;->access$900(Lcom/twilio/client/impl/analytics/EventPayload$Builder;)I

    move-result v0

    iput v0, p0, Lcom/twilio/client/impl/analytics/EventPayload;->sampleValue:I

    # getter for: Lcom/twilio/client/impl/analytics/EventPayload$Builder;->sampleList:Ljava/util/List;
    invoke-static {p1}, Lcom/twilio/client/impl/analytics/EventPayload$Builder;->access$1000(Lcom/twilio/client/impl/analytics/EventPayload$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/twilio/client/impl/analytics/EventPayload;->sampleList:Ljava/util/List;

    # getter for: Lcom/twilio/client/impl/analytics/EventPayload$Builder;->callSid:Ljava/lang/String;
    invoke-static {p1}, Lcom/twilio/client/impl/analytics/EventPayload$Builder;->access$1100(Lcom/twilio/client/impl/analytics/EventPayload$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twilio/client/impl/analytics/EventPayload;->callSid:Ljava/lang/String;

    # getter for: Lcom/twilio/client/impl/analytics/EventPayload$Builder;->tempCallSid:Ljava/lang/String;
    invoke-static {p1}, Lcom/twilio/client/impl/analytics/EventPayload$Builder;->access$1200(Lcom/twilio/client/impl/analytics/EventPayload$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twilio/client/impl/analytics/EventPayload;->tempCallSid:Ljava/lang/String;

    # getter for: Lcom/twilio/client/impl/analytics/EventPayload$Builder;->qualityScore:I
    invoke-static {p1}, Lcom/twilio/client/impl/analytics/EventPayload$Builder;->access$1300(Lcom/twilio/client/impl/analytics/EventPayload$Builder;)I

    move-result v0

    iput v0, p0, Lcom/twilio/client/impl/analytics/EventPayload;->qualityScore:I

    # getter for: Lcom/twilio/client/impl/analytics/EventPayload$Builder;->issueName:Ljava/lang/String;
    invoke-static {p1}, Lcom/twilio/client/impl/analytics/EventPayload$Builder;->access$1400(Lcom/twilio/client/impl/analytics/EventPayload$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twilio/client/impl/analytics/EventPayload;->issueName:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/twilio/client/impl/analytics/EventPayload$Builder;Lcom/twilio/client/impl/analytics/EventPayload$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/twilio/client/impl/analytics/EventPayload;-><init>(Lcom/twilio/client/impl/analytics/EventPayload$Builder;)V

    return-void
.end method


# virtual methods
.method public getCallSid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/analytics/EventPayload;->callSid:Ljava/lang/String;

    return-object v0
.end method

.method public getClientName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/analytics/EventPayload;->clientName:Ljava/lang/String;

    return-object v0
.end method

.method public getDirection()Lcom/twilio/client/impl/analytics/Constants$Direction;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/analytics/EventPayload;->direction:Lcom/twilio/client/impl/analytics/Constants$Direction;

    return-object v0
.end method

.method public getIssueName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/analytics/EventPayload;->issueName:Ljava/lang/String;

    return-object v0
.end method

.method public getPayload()Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/twilio/client/impl/analytics/EventPayload;->jsonPayloadPreparation()Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/twilio/client/impl/analytics/EventPayload;->payload:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getPayloadType()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/analytics/EventPayload;->payloadType:Ljava/lang/String;

    return-object v0
.end method

.method public getProductName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/analytics/EventPayload;->productName:Ljava/lang/String;

    return-object v0
.end method

.method public getQualityParam()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/analytics/EventPayload;->qualityParam:Ljava/lang/String;

    return-object v0
.end method

.method public getQualityScore()I
    .locals 1

    iget v0, p0, Lcom/twilio/client/impl/analytics/EventPayload;->qualityScore:I

    return v0
.end method

.method public getQualityThreshold()I
    .locals 1

    iget v0, p0, Lcom/twilio/client/impl/analytics/EventPayload;->qualityThreshold:I

    return v0
.end method

.method public getSampleList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/twilio/client/impl/analytics/RTCStatsSample;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/twilio/client/impl/analytics/EventPayload;->sampleList:Ljava/util/List;

    return-object v0
.end method

.method public getSampleValue()I
    .locals 1

    iget v0, p0, Lcom/twilio/client/impl/analytics/EventPayload;->sampleValue:I

    return v0
.end method

.method public getTempCallSid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/analytics/EventPayload;->tempCallSid:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeStamp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/analytics/EventPayload;->timeStamp:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestampMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/twilio/client/impl/analytics/EventPayload;->timestampMS:J

    return-wide v0
.end method

.method public isPrivate()Z
    .locals 1

    iget-boolean v0, p0, Lcom/twilio/client/impl/analytics/EventPayload;->isPrivate:Z

    return v0
.end method

.method public jsonPayloadPreparation()Lorg/json/JSONObject;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "timestamp_ms"

    iget-wide v4, p0, Lcom/twilio/client/impl/analytics/EventPayload;->timestampMS:J

    invoke-virtual {v3, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "client_name"

    iget-object v1, p0, Lcom/twilio/client/impl/analytics/EventPayload;->clientName:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "temp_call_sid"

    iget-object v1, p0, Lcom/twilio/client/impl/analytics/EventPayload;->tempCallSid:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "call_sid"

    iget-object v1, p0, Lcom/twilio/client/impl/analytics/EventPayload;->callSid:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "platform"

    const-string v1, "android"

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "direction"

    iget-object v1, p0, Lcom/twilio/client/impl/analytics/EventPayload;->direction:Lcom/twilio/client/impl/analytics/Constants$Direction;

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    iget-object v0, p0, Lcom/twilio/client/impl/analytics/EventPayload;->sampleList:Ljava/util/List;

    if-eqz v0, :cond_5

    const-string v0, "threshold"

    iget v1, p0, Lcom/twilio/client/impl/analytics/EventPayload;->qualityThreshold:I

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    iget-object v0, p0, Lcom/twilio/client/impl/analytics/EventPayload;->sampleList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twilio/client/impl/analytics/RTCStatsSample;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iget-object v6, p0, Lcom/twilio/client/impl/analytics/EventPayload;->qualityParam:Ljava/lang/String;

    const-string v7, "mos"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v0}, Lcom/twilio/client/impl/analytics/RTCStatsSample;->getMosScore()D

    move-result-wide v0

    double-to-int v0, v0

    :goto_1
    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/twilio/client/impl/analytics/EventPayload;->qualityParam:Ljava/lang/String;

    const-string v7, "jitter"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v0}, Lcom/twilio/client/impl/analytics/RTCStatsSample;->getJitter()I

    move-result v0

    goto :goto_1

    :cond_2
    iget-object v6, p0, Lcom/twilio/client/impl/analytics/EventPayload;->qualityParam:Ljava/lang/String;

    const-string v7, "rtt"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v0}, Lcom/twilio/client/impl/analytics/RTCStatsSample;->getRtt()I

    move-result v0

    goto :goto_1

    :cond_3
    iget-object v6, p0, Lcom/twilio/client/impl/analytics/EventPayload;->qualityParam:Ljava/lang/String;

    const-string v7, "packetsLostFraction"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_a

    invoke-virtual {v0}, Lcom/twilio/client/impl/analytics/RTCStatsSample;->getFractionPacketLoss()J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_1

    :cond_4
    const-string v0, "values"

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object v0, v2

    :goto_2
    const-string v1, "data"

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iput-object v3, p0, Lcom/twilio/client/impl/analytics/EventPayload;->payload:Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/twilio/client/impl/analytics/EventPayload;->payload:Lorg/json/JSONObject;

    return-object v0

    :cond_5
    iget v0, p0, Lcom/twilio/client/impl/analytics/EventPayload;->sampleValue:I

    if-ltz v0, :cond_6

    const-string v0, "threshold"

    iget v1, p0, Lcom/twilio/client/impl/analytics/EventPayload;->qualityThreshold:I

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "value"

    iget v1, p0, Lcom/twilio/client/impl/analytics/EventPayload;->sampleValue:I

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-object v0, v2

    goto :goto_2

    :cond_6
    iget v0, p0, Lcom/twilio/client/impl/analytics/EventPayload;->qualityScore:I

    if-gtz v0, :cond_7

    iget-object v0, p0, Lcom/twilio/client/impl/analytics/EventPayload;->issueName:Ljava/lang/String;

    if-eqz v0, :cond_9

    :cond_7
    iget v0, p0, Lcom/twilio/client/impl/analytics/EventPayload;->qualityScore:I

    if-lez v0, :cond_8

    const-string v0, "quality_score"

    iget v1, p0, Lcom/twilio/client/impl/analytics/EventPayload;->qualityScore:I

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_8
    const-string v0, "issue_name"

    iget-object v1, p0, Lcom/twilio/client/impl/analytics/EventPayload;->issueName:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object v0, v2

    goto :goto_2

    :cond_9
    const/4 v0, 0x0

    goto :goto_2

    :cond_a
    move v0, v1

    goto :goto_1
.end method
