.class final enum Lcom/twilio/client/impl/TwilioError;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/twilio/client/impl/TwilioError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/twilio/client/impl/TwilioError;

.field public static final enum APPLICATION_NOT_FOUND:Lcom/twilio/client/impl/TwilioError;

.field public static final enum CONNECTION_DECLINED:Lcom/twilio/client/impl/TwilioError;

.field public static final enum CONNECTION_TIMEOUT:Lcom/twilio/client/impl/TwilioError;

.field public static final enum EXPIRED_JWT_TOKEN:Lcom/twilio/client/impl/TwilioError;

.field public static final enum GENERIC_AUTHORIZATION_ERROR:Lcom/twilio/client/impl/TwilioError;

.field public static final enum GENERIC_ERROR:Lcom/twilio/client/impl/TwilioError;

.field public static final enum GENERIC_MALFORMED_REQUEST:Lcom/twilio/client/impl/TwilioError;

.field public static final enum INVALID_ACCOUNT:Lcom/twilio/client/impl/TwilioError;

.field public static final enum INVALID_BRIDGE_TOKEN:Lcom/twilio/client/impl/TwilioError;

.field public static final enum INVALID_CLIENT_NAME:Lcom/twilio/client/impl/TwilioError;

.field public static final enum INVALID_JWT_SIGNATURE:Lcom/twilio/client/impl/TwilioError;

.field public static final enum INVALID_JWT_TOKEN:Lcom/twilio/client/impl/TwilioError;

.field public static final enum INVALID_JWT_TOKEN_EXPIRY:Lcom/twilio/client/impl/TwilioError;

.field public static final enum MAX_PARAMETERS_LENGTH_EXCEEDED:Lcom/twilio/client/impl/TwilioError;

.field public static final enum MISSING_AUTHORIZATION_TOKEN:Lcom/twilio/client/impl/TwilioError;

.field public static final enum MISSING_PARAMETER_ARRAY:Lcom/twilio/client/impl/TwilioError;

.field public static final enum RATE_LIMIT_EXCEEDED:Lcom/twilio/client/impl/TwilioError;


# instance fields
.field private final code:I

.field private final message:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v0, Lcom/twilio/client/impl/TwilioError;

    const-string v1, "GENERIC_ERROR"

    const/16 v2, 0x7918

    const-string v3, "Generic error"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/twilio/client/impl/TwilioError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/twilio/client/impl/TwilioError;->GENERIC_ERROR:Lcom/twilio/client/impl/TwilioError;

    new-instance v0, Lcom/twilio/client/impl/TwilioError;

    const-string v1, "APPLICATION_NOT_FOUND"

    const/16 v2, 0x7919

    const-string v3, "Application not found"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/twilio/client/impl/TwilioError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/twilio/client/impl/TwilioError;->APPLICATION_NOT_FOUND:Lcom/twilio/client/impl/TwilioError;

    new-instance v0, Lcom/twilio/client/impl/TwilioError;

    const-string v1, "CONNECTION_DECLINED"

    const/16 v2, 0x791a

    const-string v3, "Connection declined"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/twilio/client/impl/TwilioError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/twilio/client/impl/TwilioError;->CONNECTION_DECLINED:Lcom/twilio/client/impl/TwilioError;

    new-instance v0, Lcom/twilio/client/impl/TwilioError;

    const-string v1, "CONNECTION_TIMEOUT"

    const/16 v2, 0x791b

    const-string v3, "Connection timeout"

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/twilio/client/impl/TwilioError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/twilio/client/impl/TwilioError;->CONNECTION_TIMEOUT:Lcom/twilio/client/impl/TwilioError;

    new-instance v0, Lcom/twilio/client/impl/TwilioError;

    const-string v1, "GENERIC_MALFORMED_REQUEST"

    const/16 v2, 0x797c

    const-string v3, "Generic malformed request"

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/twilio/client/impl/TwilioError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/twilio/client/impl/TwilioError;->GENERIC_MALFORMED_REQUEST:Lcom/twilio/client/impl/TwilioError;

    new-instance v0, Lcom/twilio/client/impl/TwilioError;

    const-string v1, "MISSING_PARAMETER_ARRAY"

    const/4 v2, 0x5

    const/16 v3, 0x797d

    const-string v4, "Missing parameter array in request"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/twilio/client/impl/TwilioError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/twilio/client/impl/TwilioError;->MISSING_PARAMETER_ARRAY:Lcom/twilio/client/impl/TwilioError;

    new-instance v0, Lcom/twilio/client/impl/TwilioError;

    const-string v1, "MISSING_AUTHORIZATION_TOKEN"

    const/4 v2, 0x6

    const/16 v3, 0x797e

    const-string v4, "Authorization token missing in request"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/twilio/client/impl/TwilioError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/twilio/client/impl/TwilioError;->MISSING_AUTHORIZATION_TOKEN:Lcom/twilio/client/impl/TwilioError;

    new-instance v0, Lcom/twilio/client/impl/TwilioError;

    const-string v1, "MAX_PARAMETERS_LENGTH_EXCEEDED"

    const/4 v2, 0x7

    const/16 v3, 0x797f

    const-string v4, "Length of parameters too long"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/twilio/client/impl/TwilioError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/twilio/client/impl/TwilioError;->MAX_PARAMETERS_LENGTH_EXCEEDED:Lcom/twilio/client/impl/TwilioError;

    new-instance v0, Lcom/twilio/client/impl/TwilioError;

    const-string v1, "INVALID_BRIDGE_TOKEN"

    const/16 v2, 0x8

    const/16 v3, 0x7980

    const-string v4, "Invalid bridge token"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/twilio/client/impl/TwilioError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/twilio/client/impl/TwilioError;->INVALID_BRIDGE_TOKEN:Lcom/twilio/client/impl/TwilioError;

    new-instance v0, Lcom/twilio/client/impl/TwilioError;

    const-string v1, "INVALID_CLIENT_NAME"

    const/16 v2, 0x9

    const/16 v3, 0x7981

    const-string v4, "Invalid client name"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/twilio/client/impl/TwilioError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/twilio/client/impl/TwilioError;->INVALID_CLIENT_NAME:Lcom/twilio/client/impl/TwilioError;

    new-instance v0, Lcom/twilio/client/impl/TwilioError;

    const-string v1, "GENERIC_AUTHORIZATION_ERROR"

    const/16 v2, 0xa

    const/16 v3, 0x79e1

    const-string v4, "Generic authorization error"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/twilio/client/impl/TwilioError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/twilio/client/impl/TwilioError;->GENERIC_AUTHORIZATION_ERROR:Lcom/twilio/client/impl/TwilioError;

    new-instance v0, Lcom/twilio/client/impl/TwilioError;

    const-string v1, "INVALID_JWT_SIGNATURE"

    const/16 v2, 0xb

    const/16 v3, 0x79e2

    const-string v4, "JWT signature validation failed"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/twilio/client/impl/TwilioError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/twilio/client/impl/TwilioError;->INVALID_JWT_SIGNATURE:Lcom/twilio/client/impl/TwilioError;

    new-instance v0, Lcom/twilio/client/impl/TwilioError;

    const-string v1, "INVALID_ACCOUNT"

    const/16 v2, 0xc

    const/16 v3, 0x79e3

    const-string v4, "No valid account"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/twilio/client/impl/TwilioError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/twilio/client/impl/TwilioError;->INVALID_ACCOUNT:Lcom/twilio/client/impl/TwilioError;

    new-instance v0, Lcom/twilio/client/impl/TwilioError;

    const-string v1, "INVALID_JWT_TOKEN"

    const/16 v2, 0xd

    const/16 v3, 0x79e4

    const-string v4, "Token is not a valid JWT token"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/twilio/client/impl/TwilioError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/twilio/client/impl/TwilioError;->INVALID_JWT_TOKEN:Lcom/twilio/client/impl/TwilioError;

    new-instance v0, Lcom/twilio/client/impl/TwilioError;

    const-string v1, "EXPIRED_JWT_TOKEN"

    const/16 v2, 0xe

    const/16 v3, 0x79e5

    const-string v4, "JWT token expired"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/twilio/client/impl/TwilioError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/twilio/client/impl/TwilioError;->EXPIRED_JWT_TOKEN:Lcom/twilio/client/impl/TwilioError;

    new-instance v0, Lcom/twilio/client/impl/TwilioError;

    const-string v1, "RATE_LIMIT_EXCEEDED"

    const/16 v2, 0xf

    const/16 v3, 0x79e6

    const-string v4, "Rate limit exceeded"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/twilio/client/impl/TwilioError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/twilio/client/impl/TwilioError;->RATE_LIMIT_EXCEEDED:Lcom/twilio/client/impl/TwilioError;

    new-instance v0, Lcom/twilio/client/impl/TwilioError;

    const-string v1, "INVALID_JWT_TOKEN_EXPIRY"

    const/16 v2, 0x10

    const/16 v3, 0x79e7

    const-string v4, "JWT token expiry too long (max is 24 hours for mobile clients)"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/twilio/client/impl/TwilioError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/twilio/client/impl/TwilioError;->INVALID_JWT_TOKEN_EXPIRY:Lcom/twilio/client/impl/TwilioError;

    const/16 v0, 0x11

    new-array v0, v0, [Lcom/twilio/client/impl/TwilioError;

    sget-object v1, Lcom/twilio/client/impl/TwilioError;->GENERIC_ERROR:Lcom/twilio/client/impl/TwilioError;

    aput-object v1, v0, v5

    sget-object v1, Lcom/twilio/client/impl/TwilioError;->APPLICATION_NOT_FOUND:Lcom/twilio/client/impl/TwilioError;

    aput-object v1, v0, v6

    sget-object v1, Lcom/twilio/client/impl/TwilioError;->CONNECTION_DECLINED:Lcom/twilio/client/impl/TwilioError;

    aput-object v1, v0, v7

    sget-object v1, Lcom/twilio/client/impl/TwilioError;->CONNECTION_TIMEOUT:Lcom/twilio/client/impl/TwilioError;

    aput-object v1, v0, v8

    sget-object v1, Lcom/twilio/client/impl/TwilioError;->GENERIC_MALFORMED_REQUEST:Lcom/twilio/client/impl/TwilioError;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/twilio/client/impl/TwilioError;->MISSING_PARAMETER_ARRAY:Lcom/twilio/client/impl/TwilioError;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/twilio/client/impl/TwilioError;->MISSING_AUTHORIZATION_TOKEN:Lcom/twilio/client/impl/TwilioError;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/twilio/client/impl/TwilioError;->MAX_PARAMETERS_LENGTH_EXCEEDED:Lcom/twilio/client/impl/TwilioError;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/twilio/client/impl/TwilioError;->INVALID_BRIDGE_TOKEN:Lcom/twilio/client/impl/TwilioError;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/twilio/client/impl/TwilioError;->INVALID_CLIENT_NAME:Lcom/twilio/client/impl/TwilioError;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/twilio/client/impl/TwilioError;->GENERIC_AUTHORIZATION_ERROR:Lcom/twilio/client/impl/TwilioError;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/twilio/client/impl/TwilioError;->INVALID_JWT_SIGNATURE:Lcom/twilio/client/impl/TwilioError;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/twilio/client/impl/TwilioError;->INVALID_ACCOUNT:Lcom/twilio/client/impl/TwilioError;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/twilio/client/impl/TwilioError;->INVALID_JWT_TOKEN:Lcom/twilio/client/impl/TwilioError;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/twilio/client/impl/TwilioError;->EXPIRED_JWT_TOKEN:Lcom/twilio/client/impl/TwilioError;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/twilio/client/impl/TwilioError;->RATE_LIMIT_EXCEEDED:Lcom/twilio/client/impl/TwilioError;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/twilio/client/impl/TwilioError;->INVALID_JWT_TOKEN_EXPIRY:Lcom/twilio/client/impl/TwilioError;

    aput-object v2, v0, v1

    sput-object v0, Lcom/twilio/client/impl/TwilioError;->$VALUES:[Lcom/twilio/client/impl/TwilioError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/twilio/client/impl/TwilioError;->code:I

    iput-object p4, p0, Lcom/twilio/client/impl/TwilioError;->message:Ljava/lang/String;

    return-void
.end method

.method static fromCode(I)Lcom/twilio/client/impl/TwilioError;
    .locals 5

    invoke-static {}, Lcom/twilio/client/impl/TwilioError;->values()[Lcom/twilio/client/impl/TwilioError;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    invoke-virtual {v0}, Lcom/twilio/client/impl/TwilioError;->getCode()I

    move-result v4

    if-ne v4, p0, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static fromSessionException(Lcom/twilio/client/impl/session/SessionException;)Lcom/twilio/client/impl/TwilioError;
    .locals 1

    invoke-virtual {p0}, Lcom/twilio/client/impl/session/SessionException;->getStatusCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/twilio/client/impl/TwilioError;->GENERIC_ERROR:Lcom/twilio/client/impl/TwilioError;

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/twilio/client/impl/TwilioError;->CONNECTION_TIMEOUT:Lcom/twilio/client/impl/TwilioError;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x11179
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/twilio/client/impl/TwilioError;
    .locals 1

    const-class v0, Lcom/twilio/client/impl/TwilioError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/twilio/client/impl/TwilioError;

    return-object v0
.end method

.method public static values()[Lcom/twilio/client/impl/TwilioError;
    .locals 1

    sget-object v0, Lcom/twilio/client/impl/TwilioError;->$VALUES:[Lcom/twilio/client/impl/TwilioError;

    invoke-virtual {v0}, [Lcom/twilio/client/impl/TwilioError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/twilio/client/impl/TwilioError;

    return-object v0
.end method


# virtual methods
.method getCode()I
    .locals 1

    iget v0, p0, Lcom/twilio/client/impl/TwilioError;->code:I

    return v0
.end method

.method getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/TwilioError;->message:Ljava/lang/String;

    return-object v0
.end method
