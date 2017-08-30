.class Lcom/twilio/client/impl/TwilioConfig;
.super Ljava/lang/Object;


# instance fields
.field mediaConfig:Lcom/twilio/client/impl/TwilioMediaConfig;

.field transportConfig:Lcom/twilio/client/impl/TwilioTransportConfig;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/twilio/client/impl/TwilioTransportConfig;

    invoke-direct {v0}, Lcom/twilio/client/impl/TwilioTransportConfig;-><init>()V

    iput-object v0, p0, Lcom/twilio/client/impl/TwilioConfig;->transportConfig:Lcom/twilio/client/impl/TwilioTransportConfig;

    new-instance v0, Lcom/twilio/client/impl/TwilioMediaConfig;

    invoke-direct {v0}, Lcom/twilio/client/impl/TwilioMediaConfig;-><init>()V

    iput-object v0, p0, Lcom/twilio/client/impl/TwilioConfig;->mediaConfig:Lcom/twilio/client/impl/TwilioMediaConfig;

    return-void
.end method
