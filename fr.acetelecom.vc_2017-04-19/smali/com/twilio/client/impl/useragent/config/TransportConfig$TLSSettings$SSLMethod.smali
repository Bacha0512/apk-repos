.class public final enum Lcom/twilio/client/impl/useragent/config/TransportConfig$TLSSettings$SSLMethod;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twilio/client/impl/useragent/config/TransportConfig$TLSSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SSLMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/twilio/client/impl/useragent/config/TransportConfig$TLSSettings$SSLMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/twilio/client/impl/useragent/config/TransportConfig$TLSSettings$SSLMethod;

.field public static final enum SSLV2:Lcom/twilio/client/impl/useragent/config/TransportConfig$TLSSettings$SSLMethod;

.field public static final enum SSLV23:Lcom/twilio/client/impl/useragent/config/TransportConfig$TLSSettings$SSLMethod;

.field public static final enum SSLV3:Lcom/twilio/client/impl/useragent/config/TransportConfig$TLSSettings$SSLMethod;

.field public static final enum TLSV1:Lcom/twilio/client/impl/useragent/config/TransportConfig$TLSSettings$SSLMethod;

.field public static final enum UNSPECIFIED:Lcom/twilio/client/impl/useragent/config/TransportConfig$TLSSettings$SSLMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/twilio/client/impl/useragent/config/TransportConfig$TLSSettings$SSLMethod;

    const-string v1, "UNSPECIFIED"

    invoke-direct {v0, v1, v2}, Lcom/twilio/client/impl/useragent/config/TransportConfig$TLSSettings$SSLMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twilio/client/impl/useragent/config/TransportConfig$TLSSettings$SSLMethod;->UNSPECIFIED:Lcom/twilio/client/impl/useragent/config/TransportConfig$TLSSettings$SSLMethod;

    new-instance v0, Lcom/twilio/client/impl/useragent/config/TransportConfig$TLSSettings$SSLMethod;

    const-string v1, "TLSV1"

    invoke-direct {v0, v1, v3}, Lcom/twilio/client/impl/useragent/config/TransportConfig$TLSSettings$SSLMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twilio/client/impl/useragent/config/TransportConfig$TLSSettings$SSLMethod;->TLSV1:Lcom/twilio/client/impl/useragent/config/TransportConfig$TLSSettings$SSLMethod;

    new-instance v0, Lcom/twilio/client/impl/useragent/config/TransportConfig$TLSSettings$SSLMethod;

    const-string v1, "SSLV2"

    invoke-direct {v0, v1, v4}, Lcom/twilio/client/impl/useragent/config/TransportConfig$TLSSettings$SSLMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twilio/client/impl/useragent/config/TransportConfig$TLSSettings$SSLMethod;->SSLV2:Lcom/twilio/client/impl/useragent/config/TransportConfig$TLSSettings$SSLMethod;

    new-instance v0, Lcom/twilio/client/impl/useragent/config/TransportConfig$TLSSettings$SSLMethod;

    const-string v1, "SSLV3"

    invoke-direct {v0, v1, v5}, Lcom/twilio/client/impl/useragent/config/TransportConfig$TLSSettings$SSLMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twilio/client/impl/useragent/config/TransportConfig$TLSSettings$SSLMethod;->SSLV3:Lcom/twilio/client/impl/useragent/config/TransportConfig$TLSSettings$SSLMethod;

    new-instance v0, Lcom/twilio/client/impl/useragent/config/TransportConfig$TLSSettings$SSLMethod;

    const-string v1, "SSLV23"

    invoke-direct {v0, v1, v6}, Lcom/twilio/client/impl/useragent/config/TransportConfig$TLSSettings$SSLMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twilio/client/impl/useragent/config/TransportConfig$TLSSettings$SSLMethod;->SSLV23:Lcom/twilio/client/impl/useragent/config/TransportConfig$TLSSettings$SSLMethod;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/twilio/client/impl/useragent/config/TransportConfig$TLSSettings$SSLMethod;

    sget-object v1, Lcom/twilio/client/impl/useragent/config/TransportConfig$TLSSettings$SSLMethod;->UNSPECIFIED:Lcom/twilio/client/impl/useragent/config/TransportConfig$TLSSettings$SSLMethod;

    aput-object v1, v0, v2

    sget-object v1, Lcom/twilio/client/impl/useragent/config/TransportConfig$TLSSettings$SSLMethod;->TLSV1:Lcom/twilio/client/impl/useragent/config/TransportConfig$TLSSettings$SSLMethod;

    aput-object v1, v0, v3

    sget-object v1, Lcom/twilio/client/impl/useragent/config/TransportConfig$TLSSettings$SSLMethod;->SSLV2:Lcom/twilio/client/impl/useragent/config/TransportConfig$TLSSettings$SSLMethod;

    aput-object v1, v0, v4

    sget-object v1, Lcom/twilio/client/impl/useragent/config/TransportConfig$TLSSettings$SSLMethod;->SSLV3:Lcom/twilio/client/impl/useragent/config/TransportConfig$TLSSettings$SSLMethod;

    aput-object v1, v0, v5

    sget-object v1, Lcom/twilio/client/impl/useragent/config/TransportConfig$TLSSettings$SSLMethod;->SSLV23:Lcom/twilio/client/impl/useragent/config/TransportConfig$TLSSettings$SSLMethod;

    aput-object v1, v0, v6

    sput-object v0, Lcom/twilio/client/impl/useragent/config/TransportConfig$TLSSettings$SSLMethod;->$VALUES:[Lcom/twilio/client/impl/useragent/config/TransportConfig$TLSSettings$SSLMethod;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/twilio/client/impl/useragent/config/TransportConfig$TLSSettings$SSLMethod;
    .locals 1

    const-class v0, Lcom/twilio/client/impl/useragent/config/TransportConfig$TLSSettings$SSLMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/twilio/client/impl/useragent/config/TransportConfig$TLSSettings$SSLMethod;

    return-object v0
.end method

.method public static values()[Lcom/twilio/client/impl/useragent/config/TransportConfig$TLSSettings$SSLMethod;
    .locals 1

    sget-object v0, Lcom/twilio/client/impl/useragent/config/TransportConfig$TLSSettings$SSLMethod;->$VALUES:[Lcom/twilio/client/impl/useragent/config/TransportConfig$TLSSettings$SSLMethod;

    invoke-virtual {v0}, [Lcom/twilio/client/impl/useragent/config/TransportConfig$TLSSettings$SSLMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/twilio/client/impl/useragent/config/TransportConfig$TLSSettings$SSLMethod;

    return-object v0
.end method
