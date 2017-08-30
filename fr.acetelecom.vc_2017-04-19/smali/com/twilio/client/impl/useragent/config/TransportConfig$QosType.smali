.class public final enum Lcom/twilio/client/impl/useragent/config/TransportConfig$QosType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twilio/client/impl/useragent/config/TransportConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "QosType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/twilio/client/impl/useragent/config/TransportConfig$QosType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/twilio/client/impl/useragent/config/TransportConfig$QosType;

.field public static final enum BACKGROUND:Lcom/twilio/client/impl/useragent/config/TransportConfig$QosType;

.field public static final enum BEST_EFFORT:Lcom/twilio/client/impl/useragent/config/TransportConfig$QosType;

.field public static final enum CONTROL:Lcom/twilio/client/impl/useragent/config/TransportConfig$QosType;

.field public static final enum VIDEO:Lcom/twilio/client/impl/useragent/config/TransportConfig$QosType;

.field public static final enum VOICE:Lcom/twilio/client/impl/useragent/config/TransportConfig$QosType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/twilio/client/impl/useragent/config/TransportConfig$QosType;

    const-string v1, "BEST_EFFORT"

    invoke-direct {v0, v1, v2}, Lcom/twilio/client/impl/useragent/config/TransportConfig$QosType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twilio/client/impl/useragent/config/TransportConfig$QosType;->BEST_EFFORT:Lcom/twilio/client/impl/useragent/config/TransportConfig$QosType;

    new-instance v0, Lcom/twilio/client/impl/useragent/config/TransportConfig$QosType;

    const-string v1, "BACKGROUND"

    invoke-direct {v0, v1, v3}, Lcom/twilio/client/impl/useragent/config/TransportConfig$QosType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twilio/client/impl/useragent/config/TransportConfig$QosType;->BACKGROUND:Lcom/twilio/client/impl/useragent/config/TransportConfig$QosType;

    new-instance v0, Lcom/twilio/client/impl/useragent/config/TransportConfig$QosType;

    const-string v1, "VIDEO"

    invoke-direct {v0, v1, v4}, Lcom/twilio/client/impl/useragent/config/TransportConfig$QosType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twilio/client/impl/useragent/config/TransportConfig$QosType;->VIDEO:Lcom/twilio/client/impl/useragent/config/TransportConfig$QosType;

    new-instance v0, Lcom/twilio/client/impl/useragent/config/TransportConfig$QosType;

    const-string v1, "VOICE"

    invoke-direct {v0, v1, v5}, Lcom/twilio/client/impl/useragent/config/TransportConfig$QosType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twilio/client/impl/useragent/config/TransportConfig$QosType;->VOICE:Lcom/twilio/client/impl/useragent/config/TransportConfig$QosType;

    new-instance v0, Lcom/twilio/client/impl/useragent/config/TransportConfig$QosType;

    const-string v1, "CONTROL"

    invoke-direct {v0, v1, v6}, Lcom/twilio/client/impl/useragent/config/TransportConfig$QosType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twilio/client/impl/useragent/config/TransportConfig$QosType;->CONTROL:Lcom/twilio/client/impl/useragent/config/TransportConfig$QosType;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/twilio/client/impl/useragent/config/TransportConfig$QosType;

    sget-object v1, Lcom/twilio/client/impl/useragent/config/TransportConfig$QosType;->BEST_EFFORT:Lcom/twilio/client/impl/useragent/config/TransportConfig$QosType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/twilio/client/impl/useragent/config/TransportConfig$QosType;->BACKGROUND:Lcom/twilio/client/impl/useragent/config/TransportConfig$QosType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/twilio/client/impl/useragent/config/TransportConfig$QosType;->VIDEO:Lcom/twilio/client/impl/useragent/config/TransportConfig$QosType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/twilio/client/impl/useragent/config/TransportConfig$QosType;->VOICE:Lcom/twilio/client/impl/useragent/config/TransportConfig$QosType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/twilio/client/impl/useragent/config/TransportConfig$QosType;->CONTROL:Lcom/twilio/client/impl/useragent/config/TransportConfig$QosType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/twilio/client/impl/useragent/config/TransportConfig$QosType;->$VALUES:[Lcom/twilio/client/impl/useragent/config/TransportConfig$QosType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/twilio/client/impl/useragent/config/TransportConfig$QosType;
    .locals 1

    const-class v0, Lcom/twilio/client/impl/useragent/config/TransportConfig$QosType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/twilio/client/impl/useragent/config/TransportConfig$QosType;

    return-object v0
.end method

.method public static values()[Lcom/twilio/client/impl/useragent/config/TransportConfig$QosType;
    .locals 1

    sget-object v0, Lcom/twilio/client/impl/useragent/config/TransportConfig$QosType;->$VALUES:[Lcom/twilio/client/impl/useragent/config/TransportConfig$QosType;

    invoke-virtual {v0}, [Lcom/twilio/client/impl/useragent/config/TransportConfig$QosType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/twilio/client/impl/useragent/config/TransportConfig$QosType;

    return-object v0
.end method
