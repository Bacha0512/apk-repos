.class enum Lcom/twilio/client/impl/JWTPayload;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/twilio/client/impl/JWTPayload;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/twilio/client/impl/JWTPayload;

.field public static final enum JWT_PAYLOAD_ALGORITHM:Lcom/twilio/client/impl/JWTPayload;

.field public static final enum JWT_PAYLOAD_EXPIRATION_TIME:Lcom/twilio/client/impl/JWTPayload;

.field public static final enum JWT_PAYLOAD_ISSUER:Lcom/twilio/client/impl/JWTPayload;

.field public static final enum JWT_PAYLOAD_SCOPE:Lcom/twilio/client/impl/JWTPayload;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/twilio/client/impl/JWTPayload$1;

    const-string v1, "JWT_PAYLOAD_ISSUER"

    invoke-direct {v0, v1, v2}, Lcom/twilio/client/impl/JWTPayload$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twilio/client/impl/JWTPayload;->JWT_PAYLOAD_ISSUER:Lcom/twilio/client/impl/JWTPayload;

    new-instance v0, Lcom/twilio/client/impl/JWTPayload$2;

    const-string v1, "JWT_PAYLOAD_SCOPE"

    invoke-direct {v0, v1, v3}, Lcom/twilio/client/impl/JWTPayload$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twilio/client/impl/JWTPayload;->JWT_PAYLOAD_SCOPE:Lcom/twilio/client/impl/JWTPayload;

    new-instance v0, Lcom/twilio/client/impl/JWTPayload$3;

    const-string v1, "JWT_PAYLOAD_EXPIRATION_TIME"

    invoke-direct {v0, v1, v4}, Lcom/twilio/client/impl/JWTPayload$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twilio/client/impl/JWTPayload;->JWT_PAYLOAD_EXPIRATION_TIME:Lcom/twilio/client/impl/JWTPayload;

    new-instance v0, Lcom/twilio/client/impl/JWTPayload$4;

    const-string v1, "JWT_PAYLOAD_ALGORITHM"

    invoke-direct {v0, v1, v5}, Lcom/twilio/client/impl/JWTPayload$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twilio/client/impl/JWTPayload;->JWT_PAYLOAD_ALGORITHM:Lcom/twilio/client/impl/JWTPayload;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/twilio/client/impl/JWTPayload;

    sget-object v1, Lcom/twilio/client/impl/JWTPayload;->JWT_PAYLOAD_ISSUER:Lcom/twilio/client/impl/JWTPayload;

    aput-object v1, v0, v2

    sget-object v1, Lcom/twilio/client/impl/JWTPayload;->JWT_PAYLOAD_SCOPE:Lcom/twilio/client/impl/JWTPayload;

    aput-object v1, v0, v3

    sget-object v1, Lcom/twilio/client/impl/JWTPayload;->JWT_PAYLOAD_EXPIRATION_TIME:Lcom/twilio/client/impl/JWTPayload;

    aput-object v1, v0, v4

    sget-object v1, Lcom/twilio/client/impl/JWTPayload;->JWT_PAYLOAD_ALGORITHM:Lcom/twilio/client/impl/JWTPayload;

    aput-object v1, v0, v5

    sput-object v0, Lcom/twilio/client/impl/JWTPayload;->$VALUES:[Lcom/twilio/client/impl/JWTPayload;

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

.method synthetic constructor <init>(Ljava/lang/String;ILcom/twilio/client/impl/JWTPayload$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/twilio/client/impl/JWTPayload;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/twilio/client/impl/JWTPayload;
    .locals 1

    const-class v0, Lcom/twilio/client/impl/JWTPayload;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/twilio/client/impl/JWTPayload;

    return-object v0
.end method

.method public static values()[Lcom/twilio/client/impl/JWTPayload;
    .locals 1

    sget-object v0, Lcom/twilio/client/impl/JWTPayload;->$VALUES:[Lcom/twilio/client/impl/JWTPayload;

    invoke-virtual {v0}, [Lcom/twilio/client/impl/JWTPayload;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/twilio/client/impl/JWTPayload;

    return-object v0
.end method
