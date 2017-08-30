.class public Lcom/twilio/client/impl/analytics/RTCStatsSample;
.super Ljava/lang/Object;


# instance fields
.field MICRO_TO_MILLI:D

.field private audioInputLevel:I

.field private audioOutputLevel:I

.field private callSid:Ljava/lang/String;

.field private currentInboundPackets:J

.field private fractionLost:J

.field private jitter:J

.field private mos:D

.field private packetsLost:J

.field private packetsReceived:J

.field private packetsSent:J

.field private previousSample:Lcom/twilio/client/impl/analytics/RTCStatsSample;

.field rfactorConstantsis:D

.field rfactorConstantsr0:D

.field private rtt:J

.field private timeStamp:Ljava/lang/String;

.field private timestampMS:J

.field private totalBytesReceived:J

.field private totalBytesSent:J

.field private totalPacketsLost:J

.field private totalPacketsReceived:J

.field private totalPacketsSent:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x4057b126e978d4feL    # 94.768

    iput-wide v0, p0, Lcom/twilio/client/impl/analytics/RTCStatsSample;->rfactorConstantsr0:D

    const-wide v0, 0x3ff6d158b827fa1aL    # 1.42611

    iput-wide v0, p0, Lcom/twilio/client/impl/analytics/RTCStatsSample;->rfactorConstantsis:D

    const-wide v0, 0x3f50624dd2f1a9fcL    # 0.001

    iput-wide v0, p0, Lcom/twilio/client/impl/analytics/RTCStatsSample;->MICRO_TO_MILLI:D

    return-void
.end method

.method public constructor <init>(Lcom/twilio/client/impl/analytics/RTCStatsSample;Lcom/twilio/client/impl/analytics/RTCStatsSample;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x4057b126e978d4feL    # 94.768

    iput-wide v0, p0, Lcom/twilio/client/impl/analytics/RTCStatsSample;->rfactorConstantsr0:D

    const-wide v0, 0x3ff6d158b827fa1aL    # 1.42611

    iput-wide v0, p0, Lcom/twilio/client/impl/analytics/RTCStatsSample;->rfactorConstantsis:D

    const-wide v0, 0x3f50624dd2f1a9fcL    # 0.001

    iput-wide v0, p0, Lcom/twilio/client/impl/analytics/RTCStatsSample;->MICRO_TO_MILLI:D

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "payloadType must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p2, p0, Lcom/twilio/client/impl/analytics/RTCStatsSample;->previousSample:Lcom/twilio/client/impl/analytics/RTCStatsSample;

    invoke-direct {p0, p1}, Lcom/twilio/client/impl/analytics/RTCStatsSample;->populateFields(Lcom/twilio/client/impl/analytics/RTCStatsSample;)V

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

    move-result-object v1

    iput-object v1, p0, Lcom/twilio/client/impl/analytics/RTCStatsSample;->timeStamp:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twilio/client/impl/analytics/RTCStatsSample;->timestampMS:J

    return-void
.end method

.method private calculateEffectiveLatency()J
    .locals 2

    invoke-virtual {p0}, Lcom/twilio/client/impl/analytics/RTCStatsSample;->getRtt()I

    move-result v0

    invoke-virtual {p0}, Lcom/twilio/client/impl/analytics/RTCStatsSample;->getJitter()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0xa

    int-to-long v0, v0

    return-wide v0
.end method

.method private calculateMos(D)D
    .locals 9

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-wide v2, 0x3fa1eb851eb851ecL    # 0.035

    mul-double/2addr v2, p1

    add-double/2addr v0, v2

    const-wide v2, 0x3edd5c31593e5fb7L    # 7.0E-6

    mul-double/2addr v2, p1

    const-wide/high16 v4, 0x404e000000000000L    # 60.0

    sub-double v4, p1, v4

    mul-double/2addr v2, v4

    sub-double v4, v6, p1

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double v2, v0, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v2, v6

    iput-wide v2, p0, Lcom/twilio/client/impl/analytics/RTCStatsSample;->mos:D

    return-wide v0
.end method

.method private calculateMosParams()D
    .locals 4

    invoke-direct {p0}, Lcom/twilio/client/impl/analytics/RTCStatsSample;->calculateEffectiveLatency()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/twilio/client/impl/analytics/RTCStatsSample;->getFractionPacketLoss()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/twilio/client/impl/analytics/RTCStatsSample;->calculateRFactor(JJ)D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/twilio/client/impl/analytics/RTCStatsSample;->calculateMos(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private calculateRFactor(JJ)D
    .locals 9

    const-wide/16 v2, 0x0

    const-wide/16 v0, 0xa0

    cmp-long v0, p1, v0

    if-gez v0, :cond_2

    iget-wide v0, p0, Lcom/twilio/client/impl/analytics/RTCStatsSample;->rfactorConstantsr0:D

    const-wide/16 v2, 0x28

    div-long v2, p1, v2

    long-to-double v2, v2

    sub-double v2, v0, v2

    :cond_0
    :goto_0
    const-wide v0, 0x3f847ae147ae147bL    # 0.01

    const-wide/16 v4, -0x1

    cmp-long v4, p3, v4

    if-nez v4, :cond_4

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x0

    :cond_1
    :goto_1
    long-to-double v4, p3

    mul-double/2addr v0, v4

    sub-double v0, v2, v0

    return-wide v0

    :cond_2
    const-wide/16 v0, 0x3e8

    cmp-long v0, p1, v0

    if-gez v0, :cond_3

    iget-wide v0, p0, Lcom/twilio/client/impl/analytics/RTCStatsSample;->rfactorConstantsr0:D

    const-wide/16 v2, 0x78

    sub-long v2, p1, v2

    const-wide/16 v4, 0xa

    div-long/2addr v2, v4

    long-to-double v2, v2

    sub-double v2, v0, v2

    goto :goto_0

    :cond_3
    const-wide/16 v0, 0x3e8

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lcom/twilio/client/impl/analytics/RTCStatsSample;->rfactorConstantsr0:D

    const-wide/16 v2, 0x64

    div-long v2, p1, v2

    long-to-double v2, v2

    sub-double v2, v0, v2

    goto :goto_0

    :cond_4
    long-to-double v4, p3

    const-wide/high16 v6, 0x4004000000000000L    # 2.5

    div-double v6, v2, v6

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_5

    const-wide/high16 v0, 0x4004000000000000L    # 2.5

    goto :goto_1

    :cond_5
    long-to-double v4, p3

    const-wide/high16 v6, 0x4004000000000000L    # 2.5

    div-double v6, v2, v6

    cmpl-double v4, v4, v6

    if-lez v4, :cond_1

    const-wide/16 v4, 0x64

    cmp-long v4, p3, v4

    if-gez v4, :cond_1

    const-wide/high16 v0, 0x3fd0000000000000L    # 0.25

    goto :goto_1
.end method

.method private populateFields(Lcom/twilio/client/impl/analytics/RTCStatsSample;)V
    .locals 4

    if-eqz p1, :cond_0

    iget-wide v0, p1, Lcom/twilio/client/impl/analytics/RTCStatsSample;->packetsReceived:J

    iput-wide v0, p0, Lcom/twilio/client/impl/analytics/RTCStatsSample;->totalPacketsReceived:J

    iget-object v0, p0, Lcom/twilio/client/impl/analytics/RTCStatsSample;->previousSample:Lcom/twilio/client/impl/analytics/RTCStatsSample;

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/twilio/client/impl/analytics/RTCStatsSample;->totalPacketsReceived:J

    iget-object v2, p0, Lcom/twilio/client/impl/analytics/RTCStatsSample;->previousSample:Lcom/twilio/client/impl/analytics/RTCStatsSample;

    iget-wide v2, v2, Lcom/twilio/client/impl/analytics/RTCStatsSample;->totalPacketsReceived:J

    sub-long/2addr v0, v2

    :goto_0
    iput-wide v0, p0, Lcom/twilio/client/impl/analytics/RTCStatsSample;->packetsReceived:J

    iget-wide v0, p1, Lcom/twilio/client/impl/analytics/RTCStatsSample;->packetsLost:J

    iput-wide v0, p0, Lcom/twilio/client/impl/analytics/RTCStatsSample;->totalPacketsLost:J

    iget-object v0, p0, Lcom/twilio/client/impl/analytics/RTCStatsSample;->previousSample:Lcom/twilio/client/impl/analytics/RTCStatsSample;

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lcom/twilio/client/impl/analytics/RTCStatsSample;->totalPacketsLost:J

    iget-object v2, p0, Lcom/twilio/client/impl/analytics/RTCStatsSample;->previousSample:Lcom/twilio/client/impl/analytics/RTCStatsSample;

    iget-wide v2, v2, Lcom/twilio/client/impl/analytics/RTCStatsSample;->totalPacketsLost:J

    sub-long/2addr v0, v2

    :goto_1
    iput-wide v0, p0, Lcom/twilio/client/impl/analytics/RTCStatsSample;->packetsLost:J

    iget-wide v0, p1, Lcom/twilio/client/impl/analytics/RTCStatsSample;->packetsSent:J

    iput-wide v0, p0, Lcom/twilio/client/impl/analytics/RTCStatsSample;->totalPacketsSent:J

    iget-object v0, p0, Lcom/twilio/client/impl/analytics/RTCStatsSample;->previousSample:Lcom/twilio/client/impl/analytics/RTCStatsSample;

    if-eqz v0, :cond_3

    iget-wide v0, p0, Lcom/twilio/client/impl/analytics/RTCStatsSample;->totalPacketsSent:J

    iget-object v2, p0, Lcom/twilio/client/impl/analytics/RTCStatsSample;->previousSample:Lcom/twilio/client/impl/analytics/RTCStatsSample;

    iget-wide v2, v2, Lcom/twilio/client/impl/analytics/RTCStatsSample;->totalPacketsReceived:J

    sub-long/2addr v0, v2

    :goto_2
    iput-wide v0, p0, Lcom/twilio/client/impl/analytics/RTCStatsSample;->packetsSent:J

    iget-wide v0, p0, Lcom/twilio/client/impl/analytics/RTCStatsSample;->packetsReceived:J

    iget-wide v2, p0, Lcom/twilio/client/impl/analytics/RTCStatsSample;->packetsLost:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/twilio/client/impl/analytics/RTCStatsSample;->currentInboundPackets:J

    iget-wide v0, p1, Lcom/twilio/client/impl/analytics/RTCStatsSample;->totalBytesSent:J

    iput-wide v0, p0, Lcom/twilio/client/impl/analytics/RTCStatsSample;->totalBytesSent:J

    iget-wide v0, p1, Lcom/twilio/client/impl/analytics/RTCStatsSample;->totalBytesReceived:J

    iput-wide v0, p0, Lcom/twilio/client/impl/analytics/RTCStatsSample;->totalBytesReceived:J

    iget-wide v0, p1, Lcom/twilio/client/impl/analytics/RTCStatsSample;->jitter:J

    iput-wide v0, p0, Lcom/twilio/client/impl/analytics/RTCStatsSample;->jitter:J

    iget-wide v0, p1, Lcom/twilio/client/impl/analytics/RTCStatsSample;->rtt:J

    iput-wide v0, p0, Lcom/twilio/client/impl/analytics/RTCStatsSample;->rtt:J

    iget v0, p1, Lcom/twilio/client/impl/analytics/RTCStatsSample;->audioInputLevel:I

    iput v0, p0, Lcom/twilio/client/impl/analytics/RTCStatsSample;->audioInputLevel:I

    iget v0, p1, Lcom/twilio/client/impl/analytics/RTCStatsSample;->audioOutputLevel:I

    iput v0, p0, Lcom/twilio/client/impl/analytics/RTCStatsSample;->audioOutputLevel:I

    :cond_0
    return-void

    :cond_1
    iget-wide v0, p0, Lcom/twilio/client/impl/analytics/RTCStatsSample;->totalPacketsReceived:J

    goto :goto_0

    :cond_2
    iget-wide v0, p0, Lcom/twilio/client/impl/analytics/RTCStatsSample;->totalPacketsLost:J

    goto :goto_1

    :cond_3
    iget-wide v0, p0, Lcom/twilio/client/impl/analytics/RTCStatsSample;->totalPacketsSent:J

    goto :goto_2
.end method


# virtual methods
.method public getAudioInputLevel()I
    .locals 2

    const/4 v0, -0x1

    iget v1, p0, Lcom/twilio/client/impl/analytics/RTCStatsSample;->audioInputLevel:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/twilio/client/impl/analytics/RTCStatsSample;->audioInputLevel:I

    mul-int/lit16 v0, v0, 0x80

    goto :goto_0
.end method

.method public getAudioOutputLevel()I
    .locals 2

    const/4 v0, -0x1

    iget v1, p0, Lcom/twilio/client/impl/analytics/RTCStatsSample;->audioOutputLevel:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/twilio/client/impl/analytics/RTCStatsSample;->audioOutputLevel:I

    mul-int/lit16 v0, v0, 0x80

    goto :goto_0
.end method

.method public getCallSid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/analytics/RTCStatsSample;->callSid:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrrentInboundPackets()J
    .locals 2

    iget-wide v0, p0, Lcom/twilio/client/impl/analytics/RTCStatsSample;->currentInboundPackets:J

    return-wide v0
.end method

.method public getFractionPacketLoss()J
    .locals 4

    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lcom/twilio/client/impl/analytics/RTCStatsSample;->currentInboundPackets:J

    cmp-long v2, v2, v0

    if-lez v2, :cond_0

    invoke-virtual {p0}, Lcom/twilio/client/impl/analytics/RTCStatsSample;->getPacketsLost()J

    move-result-wide v0

    long-to-float v0, v0

    invoke-virtual {p0}, Lcom/twilio/client/impl/analytics/RTCStatsSample;->getCurrrentInboundPackets()J

    move-result-wide v2

    long-to-float v1, v2

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    float-to-long v0, v0

    :cond_0
    iput-wide v0, p0, Lcom/twilio/client/impl/analytics/RTCStatsSample;->fractionLost:J

    iget-wide v0, p0, Lcom/twilio/client/impl/analytics/RTCStatsSample;->fractionLost:J

    return-wide v0
.end method

.method public getJitter()I
    .locals 4

    iget-wide v0, p0, Lcom/twilio/client/impl/analytics/RTCStatsSample;->jitter:J

    long-to-double v0, v0

    iget-wide v2, p0, Lcom/twilio/client/impl/analytics/RTCStatsSample;->MICRO_TO_MILLI:D

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getMosScore()D
    .locals 2

    iget-wide v0, p0, Lcom/twilio/client/impl/analytics/RTCStatsSample;->mos:D

    return-wide v0
.end method

.method public getPacketsLost()J
    .locals 2

    iget-wide v0, p0, Lcom/twilio/client/impl/analytics/RTCStatsSample;->packetsLost:J

    return-wide v0
.end method

.method public getPacketsReceived()J
    .locals 2

    iget-wide v0, p0, Lcom/twilio/client/impl/analytics/RTCStatsSample;->packetsReceived:J

    return-wide v0
.end method

.method public getPacketsSent()J
    .locals 2

    iget-wide v0, p0, Lcom/twilio/client/impl/analytics/RTCStatsSample;->packetsSent:J

    return-wide v0
.end method

.method public getRtt()I
    .locals 4

    iget-wide v0, p0, Lcom/twilio/client/impl/analytics/RTCStatsSample;->rtt:J

    long-to-double v0, v0

    iget-wide v2, p0, Lcom/twilio/client/impl/analytics/RTCStatsSample;->MICRO_TO_MILLI:D

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getTimestamp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/analytics/RTCStatsSample;->timeStamp:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestampMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/twilio/client/impl/analytics/RTCStatsSample;->timestampMS:J

    return-wide v0
.end method

.method public getTotalBytesReceived()J
    .locals 2

    iget-wide v0, p0, Lcom/twilio/client/impl/analytics/RTCStatsSample;->totalBytesReceived:J

    return-wide v0
.end method

.method public getTotalBytesSent()J
    .locals 2

    iget-wide v0, p0, Lcom/twilio/client/impl/analytics/RTCStatsSample;->totalBytesSent:J

    return-wide v0
.end method

.method public getTotalPacketsLost()J
    .locals 2

    iget-wide v0, p0, Lcom/twilio/client/impl/analytics/RTCStatsSample;->totalPacketsLost:J

    return-wide v0
.end method

.method public getTotalPacketsReceived()J
    .locals 2

    iget-wide v0, p0, Lcom/twilio/client/impl/analytics/RTCStatsSample;->totalPacketsReceived:J

    return-wide v0
.end method

.method public getTotalPacketsSent()J
    .locals 2

    iget-wide v0, p0, Lcom/twilio/client/impl/analytics/RTCStatsSample;->totalPacketsSent:J

    return-wide v0
.end method

.method public getcurrentInboundPackets()J
    .locals 2

    iget-wide v0, p0, Lcom/twilio/client/impl/analytics/RTCStatsSample;->currentInboundPackets:J

    return-wide v0
.end method

.method public setCallSid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/twilio/client/impl/analytics/RTCStatsSample;->callSid:Ljava/lang/String;

    return-void
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 4

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "timestamp"

    invoke-virtual {p0}, Lcom/twilio/client/impl/analytics/RTCStatsSample;->getTimestamp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "timestamp_ms"

    invoke-virtual {p0}, Lcom/twilio/client/impl/analytics/RTCStatsSample;->getTimestampMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "call_sid"

    invoke-virtual {p0}, Lcom/twilio/client/impl/analytics/RTCStatsSample;->getCallSid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "packets_received"

    invoke-virtual {p0}, Lcom/twilio/client/impl/analytics/RTCStatsSample;->getPacketsReceived()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "packets_lost"

    invoke-virtual {p0}, Lcom/twilio/client/impl/analytics/RTCStatsSample;->getPacketsLost()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "packets_lost_fraction"

    invoke-virtual {p0}, Lcom/twilio/client/impl/analytics/RTCStatsSample;->getFractionPacketLoss()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "total_packets_sent"

    invoke-virtual {p0}, Lcom/twilio/client/impl/analytics/RTCStatsSample;->getTotalPacketsSent()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "total_packets_received"

    invoke-virtual {p0}, Lcom/twilio/client/impl/analytics/RTCStatsSample;->getTotalPacketsReceived()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "total_packets_lost"

    invoke-virtual {p0}, Lcom/twilio/client/impl/analytics/RTCStatsSample;->getTotalPacketsLost()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "total_bytes_received"

    invoke-virtual {p0}, Lcom/twilio/client/impl/analytics/RTCStatsSample;->getTotalBytesReceived()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "total_bytes_sent"

    invoke-virtual {p0}, Lcom/twilio/client/impl/analytics/RTCStatsSample;->getTotalBytesSent()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "jitter"

    invoke-virtual {p0}, Lcom/twilio/client/impl/analytics/RTCStatsSample;->getJitter()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "rtt"

    invoke-virtual {p0}, Lcom/twilio/client/impl/analytics/RTCStatsSample;->getRtt()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "audio_level_in"

    invoke-virtual {p0}, Lcom/twilio/client/impl/analytics/RTCStatsSample;->getAudioInputLevel()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "audio_level_out"

    invoke-virtual {p0}, Lcom/twilio/client/impl/analytics/RTCStatsSample;->getAudioOutputLevel()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "mos"

    invoke-direct {p0}, Lcom/twilio/client/impl/analytics/RTCStatsSample;->calculateMosParams()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "RTCStatsSample"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StatsExtended [timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/twilio/client/impl/analytics/RTCStatsSample;->timeStamp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", packetsReceived="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/twilio/client/impl/analytics/RTCStatsSample;->packetsReceived:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", packetsLost="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/twilio/client/impl/analytics/RTCStatsSample;->packetsLost:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", packetsSent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/twilio/client/impl/analytics/RTCStatsSample;->packetsSent:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bytesReceived="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/twilio/client/impl/analytics/RTCStatsSample;->totalBytesReceived:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bytesSent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/twilio/client/impl/analytics/RTCStatsSample;->totalBytesSent:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", jitter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/twilio/client/impl/analytics/RTCStatsSample;->jitter:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rtt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/twilio/client/impl/analytics/RTCStatsSample;->rtt:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", audioInputLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/twilio/client/impl/analytics/RTCStatsSample;->audioInputLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", audioOutputLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/twilio/client/impl/analytics/RTCStatsSample;->audioOutputLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
