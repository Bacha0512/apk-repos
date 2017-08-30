.class public Lcom/twilio/client/impl/useragent/config/TransportConfig$TLSSettings;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twilio/client/impl/useragent/config/TransportConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TLSSettings"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twilio/client/impl/useragent/config/TransportConfig$TLSSettings$SSLMethod;
    }
.end annotation


# instance fields
.field public sslMethod:Lcom/twilio/client/impl/useragent/config/TransportConfig$TLSSettings$SSLMethod;

.field public verifyServer:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/twilio/client/impl/useragent/config/TransportConfig$TLSSettings$SSLMethod;->UNSPECIFIED:Lcom/twilio/client/impl/useragent/config/TransportConfig$TLSSettings$SSLMethod;

    iput-object v0, p0, Lcom/twilio/client/impl/useragent/config/TransportConfig$TLSSettings;->sslMethod:Lcom/twilio/client/impl/useragent/config/TransportConfig$TLSSettings$SSLMethod;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twilio/client/impl/useragent/config/TransportConfig$TLSSettings;->verifyServer:Z

    return-void
.end method
