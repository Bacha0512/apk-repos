.class public Lcom/twilio/client/impl/analytics/MetricEvent$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twilio/client/impl/analytics/MetricEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private callSid:Ljava/lang/String;

.field private eventName:Ljava/lang/String;

.field private groupName:Ljava/lang/String;

.field private level:Lcom/twilio/client/impl/analytics/Constants$SeverityLevel;

.field private payload:Lorg/json/JSONArray;

.field private payloadType:Ljava/lang/String;

.field private productName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/twilio/client/impl/analytics/MetricEvent$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/analytics/MetricEvent$Builder;->productName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/twilio/client/impl/analytics/MetricEvent$Builder;)Lcom/twilio/client/impl/analytics/Constants$SeverityLevel;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/analytics/MetricEvent$Builder;->level:Lcom/twilio/client/impl/analytics/Constants$SeverityLevel;

    return-object v0
.end method

.method static synthetic access$200(Lcom/twilio/client/impl/analytics/MetricEvent$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/analytics/MetricEvent$Builder;->groupName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/twilio/client/impl/analytics/MetricEvent$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/analytics/MetricEvent$Builder;->eventName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/twilio/client/impl/analytics/MetricEvent$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/analytics/MetricEvent$Builder;->callSid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/twilio/client/impl/analytics/MetricEvent$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/analytics/MetricEvent$Builder;->payloadType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/twilio/client/impl/analytics/MetricEvent$Builder;)Lorg/json/JSONArray;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/analytics/MetricEvent$Builder;->payload:Lorg/json/JSONArray;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/twilio/client/impl/analytics/MetricEvent;
    .locals 2

    iget-object v0, p0, Lcom/twilio/client/impl/analytics/MetricEvent$Builder;->productName:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "productName must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/twilio/client/impl/analytics/MetricEvent$Builder;->level:Lcom/twilio/client/impl/analytics/Constants$SeverityLevel;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "level must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/twilio/client/impl/analytics/MetricEvent$Builder;->groupName:Ljava/lang/String;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "groupName must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/twilio/client/impl/analytics/MetricEvent$Builder;->eventName:Ljava/lang/String;

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "eventName must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v0, p0, Lcom/twilio/client/impl/analytics/MetricEvent$Builder;->payloadType:Ljava/lang/String;

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "payloadType must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Lcom/twilio/client/impl/analytics/MetricEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/twilio/client/impl/analytics/MetricEvent;-><init>(Lcom/twilio/client/impl/analytics/MetricEvent$Builder;Lcom/twilio/client/impl/analytics/MetricEvent$1;)V

    return-object v0
.end method

.method public eventName(Ljava/lang/String;)Lcom/twilio/client/impl/analytics/MetricEvent$Builder;
    .locals 0

    iput-object p1, p0, Lcom/twilio/client/impl/analytics/MetricEvent$Builder;->eventName:Ljava/lang/String;

    return-object p0
.end method

.method public groupName(Ljava/lang/String;)Lcom/twilio/client/impl/analytics/MetricEvent$Builder;
    .locals 0

    iput-object p1, p0, Lcom/twilio/client/impl/analytics/MetricEvent$Builder;->groupName:Ljava/lang/String;

    return-object p0
.end method

.method public level(Lcom/twilio/client/impl/analytics/Constants$SeverityLevel;)Lcom/twilio/client/impl/analytics/MetricEvent$Builder;
    .locals 0

    iput-object p1, p0, Lcom/twilio/client/impl/analytics/MetricEvent$Builder;->level:Lcom/twilio/client/impl/analytics/Constants$SeverityLevel;

    return-object p0
.end method

.method public payLoad(Lorg/json/JSONArray;)Lcom/twilio/client/impl/analytics/MetricEvent$Builder;
    .locals 0

    iput-object p1, p0, Lcom/twilio/client/impl/analytics/MetricEvent$Builder;->payload:Lorg/json/JSONArray;

    return-object p0
.end method

.method public payLoadType(Ljava/lang/String;)Lcom/twilio/client/impl/analytics/MetricEvent$Builder;
    .locals 0

    iput-object p1, p0, Lcom/twilio/client/impl/analytics/MetricEvent$Builder;->payloadType:Ljava/lang/String;

    return-object p0
.end method

.method public productName(Ljava/lang/String;)Lcom/twilio/client/impl/analytics/MetricEvent$Builder;
    .locals 0

    iput-object p1, p0, Lcom/twilio/client/impl/analytics/MetricEvent$Builder;->productName:Ljava/lang/String;

    return-object p0
.end method
