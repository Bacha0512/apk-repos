.class public Lcom/twilio/client/impl/useragent/config/TransportConfig;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twilio/client/impl/useragent/config/TransportConfig$TLSSettings;,
        Lcom/twilio/client/impl/useragent/config/TransportConfig$QosType;
    }
.end annotation


# instance fields
.field private port:I

.field private qosType:Lcom/twilio/client/impl/useragent/config/TransportConfig$QosType;

.field private tlsSettings:Lcom/twilio/client/impl/useragent/config/TransportConfig$TLSSettings;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/twilio/client/impl/useragent/config/TransportConfig;->port:I

    sget-object v0, Lcom/twilio/client/impl/useragent/config/TransportConfig$QosType;->BEST_EFFORT:Lcom/twilio/client/impl/useragent/config/TransportConfig$QosType;

    iput-object v0, p0, Lcom/twilio/client/impl/useragent/config/TransportConfig;->qosType:Lcom/twilio/client/impl/useragent/config/TransportConfig$QosType;

    new-instance v0, Lcom/twilio/client/impl/useragent/config/TransportConfig$TLSSettings;

    invoke-direct {v0}, Lcom/twilio/client/impl/useragent/config/TransportConfig$TLSSettings;-><init>()V

    iput-object v0, p0, Lcom/twilio/client/impl/useragent/config/TransportConfig;->tlsSettings:Lcom/twilio/client/impl/useragent/config/TransportConfig$TLSSettings;

    return-void
.end method

.method public constructor <init>(ILcom/twilio/client/impl/useragent/config/TransportConfig$QosType;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/twilio/client/impl/useragent/config/TransportConfig;->port:I

    sget-object v0, Lcom/twilio/client/impl/useragent/config/TransportConfig$QosType;->BEST_EFFORT:Lcom/twilio/client/impl/useragent/config/TransportConfig$QosType;

    iput-object v0, p0, Lcom/twilio/client/impl/useragent/config/TransportConfig;->qosType:Lcom/twilio/client/impl/useragent/config/TransportConfig$QosType;

    new-instance v0, Lcom/twilio/client/impl/useragent/config/TransportConfig$TLSSettings;

    invoke-direct {v0}, Lcom/twilio/client/impl/useragent/config/TransportConfig$TLSSettings;-><init>()V

    iput-object v0, p0, Lcom/twilio/client/impl/useragent/config/TransportConfig;->tlsSettings:Lcom/twilio/client/impl/useragent/config/TransportConfig$TLSSettings;

    iput p1, p0, Lcom/twilio/client/impl/useragent/config/TransportConfig;->port:I

    if-eqz p2, :cond_0

    iput-object p2, p0, Lcom/twilio/client/impl/useragent/config/TransportConfig;->qosType:Lcom/twilio/client/impl/useragent/config/TransportConfig$QosType;

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/twilio/client/impl/useragent/config/TransportConfig$TLSSettings;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/twilio/client/impl/useragent/config/TransportConfig;->port:I

    sget-object v0, Lcom/twilio/client/impl/useragent/config/TransportConfig$QosType;->BEST_EFFORT:Lcom/twilio/client/impl/useragent/config/TransportConfig$QosType;

    iput-object v0, p0, Lcom/twilio/client/impl/useragent/config/TransportConfig;->qosType:Lcom/twilio/client/impl/useragent/config/TransportConfig$QosType;

    new-instance v0, Lcom/twilio/client/impl/useragent/config/TransportConfig$TLSSettings;

    invoke-direct {v0}, Lcom/twilio/client/impl/useragent/config/TransportConfig$TLSSettings;-><init>()V

    iput-object v0, p0, Lcom/twilio/client/impl/useragent/config/TransportConfig;->tlsSettings:Lcom/twilio/client/impl/useragent/config/TransportConfig$TLSSettings;

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/twilio/client/impl/useragent/config/TransportConfig;->tlsSettings:Lcom/twilio/client/impl/useragent/config/TransportConfig$TLSSettings;

    :cond_0
    return-void
.end method


# virtual methods
.method public getPort()I
    .locals 1

    iget v0, p0, Lcom/twilio/client/impl/useragent/config/TransportConfig;->port:I

    return v0
.end method

.method public getQosType()Lcom/twilio/client/impl/useragent/config/TransportConfig$QosType;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/useragent/config/TransportConfig;->qosType:Lcom/twilio/client/impl/useragent/config/TransportConfig$QosType;

    return-object v0
.end method

.method public getTLSSettings()Lcom/twilio/client/impl/useragent/config/TransportConfig$TLSSettings;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/useragent/config/TransportConfig;->tlsSettings:Lcom/twilio/client/impl/useragent/config/TransportConfig$TLSSettings;

    return-object v0
.end method
