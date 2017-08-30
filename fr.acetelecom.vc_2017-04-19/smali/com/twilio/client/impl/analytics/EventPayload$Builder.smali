.class public Lcom/twilio/client/impl/analytics/EventPayload$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twilio/client/impl/analytics/EventPayload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private callSid:Ljava/lang/String;

.field private clientName:Ljava/lang/String;

.field private direction:Lcom/twilio/client/impl/analytics/Constants$Direction;

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
.method public constructor <init>()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    iput-object v1, p0, Lcom/twilio/client/impl/analytics/EventPayload$Builder;->timeStamp:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twilio/client/impl/analytics/EventPayload$Builder;->timestampMS:J

    return-void
.end method

.method static synthetic access$000(Lcom/twilio/client/impl/analytics/EventPayload$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/analytics/EventPayload$Builder;->productName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/twilio/client/impl/analytics/EventPayload$Builder;)Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/analytics/EventPayload$Builder;->payload:Lorg/json/JSONObject;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/twilio/client/impl/analytics/EventPayload$Builder;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/analytics/EventPayload$Builder;->sampleList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/twilio/client/impl/analytics/EventPayload$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/analytics/EventPayload$Builder;->callSid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/twilio/client/impl/analytics/EventPayload$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/analytics/EventPayload$Builder;->tempCallSid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/twilio/client/impl/analytics/EventPayload$Builder;)I
    .locals 1

    iget v0, p0, Lcom/twilio/client/impl/analytics/EventPayload$Builder;->qualityScore:I

    return v0
.end method

.method static synthetic access$1400(Lcom/twilio/client/impl/analytics/EventPayload$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/analytics/EventPayload$Builder;->issueName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/twilio/client/impl/analytics/EventPayload$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/analytics/EventPayload$Builder;->payloadType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/twilio/client/impl/analytics/EventPayload$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/analytics/EventPayload$Builder;->timeStamp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/twilio/client/impl/analytics/EventPayload$Builder;)J
    .locals 2

    iget-wide v0, p0, Lcom/twilio/client/impl/analytics/EventPayload$Builder;->timestampMS:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/twilio/client/impl/analytics/EventPayload$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/analytics/EventPayload$Builder;->clientName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/twilio/client/impl/analytics/EventPayload$Builder;)Lcom/twilio/client/impl/analytics/Constants$Direction;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/analytics/EventPayload$Builder;->direction:Lcom/twilio/client/impl/analytics/Constants$Direction;

    return-object v0
.end method

.method static synthetic access$700(Lcom/twilio/client/impl/analytics/EventPayload$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/analytics/EventPayload$Builder;->qualityParam:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/twilio/client/impl/analytics/EventPayload$Builder;)I
    .locals 1

    iget v0, p0, Lcom/twilio/client/impl/analytics/EventPayload$Builder;->qualityThreshold:I

    return v0
.end method

.method static synthetic access$900(Lcom/twilio/client/impl/analytics/EventPayload$Builder;)I
    .locals 1

    iget v0, p0, Lcom/twilio/client/impl/analytics/EventPayload$Builder;->sampleValue:I

    return v0
.end method


# virtual methods
.method public build()Lcom/twilio/client/impl/analytics/EventPayload;
    .locals 2

    iget-object v0, p0, Lcom/twilio/client/impl/analytics/EventPayload$Builder;->productName:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "productName must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/twilio/client/impl/analytics/EventPayload$Builder;->payloadType:Ljava/lang/String;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "payloadType must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/twilio/client/impl/analytics/EventPayload$Builder;->callSid:Ljava/lang/String;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "callSid must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lcom/twilio/client/impl/analytics/EventPayload;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/twilio/client/impl/analytics/EventPayload;-><init>(Lcom/twilio/client/impl/analytics/EventPayload$Builder;Lcom/twilio/client/impl/analytics/EventPayload$1;)V

    return-object v0
.end method

.method public callSid(Ljava/lang/String;)Lcom/twilio/client/impl/analytics/EventPayload$Builder;
    .locals 0

    iput-object p1, p0, Lcom/twilio/client/impl/analytics/EventPayload$Builder;->callSid:Ljava/lang/String;

    return-object p0
.end method

.method public clientName(Ljava/lang/String;)Lcom/twilio/client/impl/analytics/EventPayload$Builder;
    .locals 0

    iput-object p1, p0, Lcom/twilio/client/impl/analytics/EventPayload$Builder;->clientName:Ljava/lang/String;

    return-object p0
.end method

.method public direction(Lcom/twilio/client/impl/analytics/Constants$Direction;)Lcom/twilio/client/impl/analytics/EventPayload$Builder;
    .locals 0

    iput-object p1, p0, Lcom/twilio/client/impl/analytics/EventPayload$Builder;->direction:Lcom/twilio/client/impl/analytics/Constants$Direction;

    return-object p0
.end method

.method public issueName(Lcom/twilio/client/impl/InternalConnectionImpl$IssueName;)Lcom/twilio/client/impl/analytics/EventPayload$Builder;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/twilio/client/impl/InternalConnectionImpl$IssueName;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twilio/client/impl/analytics/EventPayload$Builder;->issueName:Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public payLoadType(Ljava/lang/String;)Lcom/twilio/client/impl/analytics/EventPayload$Builder;
    .locals 0

    iput-object p1, p0, Lcom/twilio/client/impl/analytics/EventPayload$Builder;->payloadType:Ljava/lang/String;

    return-object p0
.end method

.method public productName(Ljava/lang/String;)Lcom/twilio/client/impl/analytics/EventPayload$Builder;
    .locals 0

    iput-object p1, p0, Lcom/twilio/client/impl/analytics/EventPayload$Builder;->productName:Ljava/lang/String;

    return-object p0
.end method

.method public qualityParam(Ljava/lang/String;)Lcom/twilio/client/impl/analytics/EventPayload$Builder;
    .locals 0

    iput-object p1, p0, Lcom/twilio/client/impl/analytics/EventPayload$Builder;->qualityParam:Ljava/lang/String;

    return-object p0
.end method

.method public qualityScore(Lcom/twilio/client/impl/InternalConnectionImpl$QualityScore;)Lcom/twilio/client/impl/analytics/EventPayload$Builder;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/twilio/client/impl/InternalConnectionImpl$QualityScore;->getValue()I

    move-result v0

    iput v0, p0, Lcom/twilio/client/impl/analytics/EventPayload$Builder;->qualityScore:I

    :cond_0
    return-object p0
.end method

.method public qualityThreshold(I)Lcom/twilio/client/impl/analytics/EventPayload$Builder;
    .locals 0

    iput p1, p0, Lcom/twilio/client/impl/analytics/EventPayload$Builder;->qualityThreshold:I

    return-object p0
.end method

.method public sampleList(Ljava/util/List;)Lcom/twilio/client/impl/analytics/EventPayload$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/twilio/client/impl/analytics/RTCStatsSample;",
            ">;)",
            "Lcom/twilio/client/impl/analytics/EventPayload$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/twilio/client/impl/analytics/EventPayload$Builder;->sampleList:Ljava/util/List;

    return-object p0
.end method

.method public sampleValue(I)Lcom/twilio/client/impl/analytics/EventPayload$Builder;
    .locals 0

    iput p1, p0, Lcom/twilio/client/impl/analytics/EventPayload$Builder;->sampleValue:I

    return-object p0
.end method

.method public tempCallSid(Ljava/lang/String;)Lcom/twilio/client/impl/analytics/EventPayload$Builder;
    .locals 0

    iput-object p1, p0, Lcom/twilio/client/impl/analytics/EventPayload$Builder;->tempCallSid:Ljava/lang/String;

    return-object p0
.end method
