.class Lcom/twilio/client/impl/TwilioTransportConfig;
.super Ljava/lang/Object;


# instance fields
.field transportType:Lcom/twilio/client/impl/session/Transport$Type;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/twilio/client/impl/session/Transport$Type;->TLS:Lcom/twilio/client/impl/session/Transport$Type;

    iput-object v0, p0, Lcom/twilio/client/impl/TwilioTransportConfig;->transportType:Lcom/twilio/client/impl/session/Transport$Type;

    return-void
.end method
