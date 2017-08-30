.class public Lcom/twilio/client/impl/analytics/Event$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twilio/client/impl/analytics/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private eventName:Ljava/lang/String;

.field private groupName:Ljava/lang/String;

.field private level:Lcom/twilio/client/impl/analytics/Constants$SeverityLevel;

.field private payload:Lorg/json/JSONObject;

.field private payloadType:Ljava/lang/String;

.field private productName:Ljava/lang/String;

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

    iput-object v1, p0, Lcom/twilio/client/impl/analytics/Event$Builder;->timeStamp:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twilio/client/impl/analytics/Event$Builder;->timestampMS:J

    return-void
.end method

.method static synthetic access$000(Lcom/twilio/client/impl/analytics/Event$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/analytics/Event$Builder;->productName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/twilio/client/impl/analytics/Event$Builder;)Lcom/twilio/client/impl/analytics/Constants$SeverityLevel;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/analytics/Event$Builder;->level:Lcom/twilio/client/impl/analytics/Constants$SeverityLevel;

    return-object v0
.end method

.method static synthetic access$200(Lcom/twilio/client/impl/analytics/Event$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/analytics/Event$Builder;->groupName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/twilio/client/impl/analytics/Event$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/analytics/Event$Builder;->eventName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/twilio/client/impl/analytics/Event$Builder;)Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/analytics/Event$Builder;->payload:Lorg/json/JSONObject;

    return-object v0
.end method

.method static synthetic access$500(Lcom/twilio/client/impl/analytics/Event$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/analytics/Event$Builder;->payloadType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/twilio/client/impl/analytics/Event$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/analytics/Event$Builder;->timeStamp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/twilio/client/impl/analytics/Event$Builder;)J
    .locals 2

    iget-wide v0, p0, Lcom/twilio/client/impl/analytics/Event$Builder;->timestampMS:J

    return-wide v0
.end method


# virtual methods
.method public build()Lcom/twilio/client/impl/analytics/Event;
    .locals 2

    iget-object v0, p0, Lcom/twilio/client/impl/analytics/Event$Builder;->productName:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "productName must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/twilio/client/impl/analytics/Event$Builder;->level:Lcom/twilio/client/impl/analytics/Constants$SeverityLevel;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "level must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/twilio/client/impl/analytics/Event$Builder;->groupName:Ljava/lang/String;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "groupName must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/twilio/client/impl/analytics/Event$Builder;->eventName:Ljava/lang/String;

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "eventName must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v0, p0, Lcom/twilio/client/impl/analytics/Event$Builder;->payloadType:Ljava/lang/String;

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "payloadType must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Lcom/twilio/client/impl/analytics/Event;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/twilio/client/impl/analytics/Event;-><init>(Lcom/twilio/client/impl/analytics/Event$Builder;Lcom/twilio/client/impl/analytics/Event$1;)V

    return-object v0
.end method

.method public eventName(Ljava/lang/String;)Lcom/twilio/client/impl/analytics/Event$Builder;
    .locals 0

    iput-object p1, p0, Lcom/twilio/client/impl/analytics/Event$Builder;->eventName:Ljava/lang/String;

    return-object p0
.end method

.method public groupName(Ljava/lang/String;)Lcom/twilio/client/impl/analytics/Event$Builder;
    .locals 0

    iput-object p1, p0, Lcom/twilio/client/impl/analytics/Event$Builder;->groupName:Ljava/lang/String;

    return-object p0
.end method

.method public level(Lcom/twilio/client/impl/analytics/Constants$SeverityLevel;)Lcom/twilio/client/impl/analytics/Event$Builder;
    .locals 0

    iput-object p1, p0, Lcom/twilio/client/impl/analytics/Event$Builder;->level:Lcom/twilio/client/impl/analytics/Constants$SeverityLevel;

    return-object p0
.end method

.method public payLoad(Lorg/json/JSONObject;)Lcom/twilio/client/impl/analytics/Event$Builder;
    .locals 0

    iput-object p1, p0, Lcom/twilio/client/impl/analytics/Event$Builder;->payload:Lorg/json/JSONObject;

    return-object p0
.end method

.method public payLoadType(Ljava/lang/String;)Lcom/twilio/client/impl/analytics/Event$Builder;
    .locals 0

    iput-object p1, p0, Lcom/twilio/client/impl/analytics/Event$Builder;->payloadType:Ljava/lang/String;

    return-object p0
.end method

.method public productName(Ljava/lang/String;)Lcom/twilio/client/impl/analytics/Event$Builder;
    .locals 0

    iput-object p1, p0, Lcom/twilio/client/impl/analytics/Event$Builder;->productName:Ljava/lang/String;

    return-object p0
.end method
