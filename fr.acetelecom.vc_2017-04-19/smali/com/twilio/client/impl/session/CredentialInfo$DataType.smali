.class public final enum Lcom/twilio/client/impl/session/CredentialInfo$DataType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twilio/client/impl/session/CredentialInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DataType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/twilio/client/impl/session/CredentialInfo$DataType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/twilio/client/impl/session/CredentialInfo$DataType;

.field public static final enum PLAIN_PASSWD:Lcom/twilio/client/impl/session/CredentialInfo$DataType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/twilio/client/impl/session/CredentialInfo$DataType;

    const-string v1, "PLAIN_PASSWD"

    invoke-direct {v0, v1, v2}, Lcom/twilio/client/impl/session/CredentialInfo$DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twilio/client/impl/session/CredentialInfo$DataType;->PLAIN_PASSWD:Lcom/twilio/client/impl/session/CredentialInfo$DataType;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/twilio/client/impl/session/CredentialInfo$DataType;

    sget-object v1, Lcom/twilio/client/impl/session/CredentialInfo$DataType;->PLAIN_PASSWD:Lcom/twilio/client/impl/session/CredentialInfo$DataType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/twilio/client/impl/session/CredentialInfo$DataType;->$VALUES:[Lcom/twilio/client/impl/session/CredentialInfo$DataType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/twilio/client/impl/session/CredentialInfo$DataType;
    .locals 1

    const-class v0, Lcom/twilio/client/impl/session/CredentialInfo$DataType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/twilio/client/impl/session/CredentialInfo$DataType;

    return-object v0
.end method

.method public static values()[Lcom/twilio/client/impl/session/CredentialInfo$DataType;
    .locals 1

    sget-object v0, Lcom/twilio/client/impl/session/CredentialInfo$DataType;->$VALUES:[Lcom/twilio/client/impl/session/CredentialInfo$DataType;

    invoke-virtual {v0}, [Lcom/twilio/client/impl/session/CredentialInfo$DataType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/twilio/client/impl/session/CredentialInfo$DataType;

    return-object v0
.end method
