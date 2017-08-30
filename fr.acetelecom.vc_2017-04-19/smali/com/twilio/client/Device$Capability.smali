.class public final enum Lcom/twilio/client/Device$Capability;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twilio/client/Device;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Capability"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/twilio/client/Device$Capability;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/twilio/client/Device$Capability;

.field public static final enum ACCOUNT_SID:Lcom/twilio/client/Device$Capability;

.field public static final enum APPLICATION_PARAMETERS:Lcom/twilio/client/Device$Capability;

.field public static final enum APPLICATION_SID:Lcom/twilio/client/Device$Capability;

.field public static final enum CLIENT_NAME:Lcom/twilio/client/Device$Capability;

.field public static final enum EXPIRATION:Lcom/twilio/client/Device$Capability;

.field public static final enum INCOMING:Lcom/twilio/client/Device$Capability;

.field public static final enum OUTGOING:Lcom/twilio/client/Device$Capability;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/twilio/client/Device$Capability;

    const-string v1, "INCOMING"

    invoke-direct {v0, v1, v3}, Lcom/twilio/client/Device$Capability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twilio/client/Device$Capability;->INCOMING:Lcom/twilio/client/Device$Capability;

    new-instance v0, Lcom/twilio/client/Device$Capability;

    const-string v1, "OUTGOING"

    invoke-direct {v0, v1, v4}, Lcom/twilio/client/Device$Capability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twilio/client/Device$Capability;->OUTGOING:Lcom/twilio/client/Device$Capability;

    new-instance v0, Lcom/twilio/client/Device$Capability;

    const-string v1, "EXPIRATION"

    invoke-direct {v0, v1, v5}, Lcom/twilio/client/Device$Capability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twilio/client/Device$Capability;->EXPIRATION:Lcom/twilio/client/Device$Capability;

    new-instance v0, Lcom/twilio/client/Device$Capability;

    const-string v1, "ACCOUNT_SID"

    invoke-direct {v0, v1, v6}, Lcom/twilio/client/Device$Capability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twilio/client/Device$Capability;->ACCOUNT_SID:Lcom/twilio/client/Device$Capability;

    new-instance v0, Lcom/twilio/client/Device$Capability;

    const-string v1, "APPLICATION_SID"

    invoke-direct {v0, v1, v7}, Lcom/twilio/client/Device$Capability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twilio/client/Device$Capability;->APPLICATION_SID:Lcom/twilio/client/Device$Capability;

    new-instance v0, Lcom/twilio/client/Device$Capability;

    const-string v1, "APPLICATION_PARAMETERS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/twilio/client/Device$Capability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twilio/client/Device$Capability;->APPLICATION_PARAMETERS:Lcom/twilio/client/Device$Capability;

    new-instance v0, Lcom/twilio/client/Device$Capability;

    const-string v1, "CLIENT_NAME"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/twilio/client/Device$Capability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twilio/client/Device$Capability;->CLIENT_NAME:Lcom/twilio/client/Device$Capability;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/twilio/client/Device$Capability;

    sget-object v1, Lcom/twilio/client/Device$Capability;->INCOMING:Lcom/twilio/client/Device$Capability;

    aput-object v1, v0, v3

    sget-object v1, Lcom/twilio/client/Device$Capability;->OUTGOING:Lcom/twilio/client/Device$Capability;

    aput-object v1, v0, v4

    sget-object v1, Lcom/twilio/client/Device$Capability;->EXPIRATION:Lcom/twilio/client/Device$Capability;

    aput-object v1, v0, v5

    sget-object v1, Lcom/twilio/client/Device$Capability;->ACCOUNT_SID:Lcom/twilio/client/Device$Capability;

    aput-object v1, v0, v6

    sget-object v1, Lcom/twilio/client/Device$Capability;->APPLICATION_SID:Lcom/twilio/client/Device$Capability;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/twilio/client/Device$Capability;->APPLICATION_PARAMETERS:Lcom/twilio/client/Device$Capability;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/twilio/client/Device$Capability;->CLIENT_NAME:Lcom/twilio/client/Device$Capability;

    aput-object v2, v0, v1

    sput-object v0, Lcom/twilio/client/Device$Capability;->$VALUES:[Lcom/twilio/client/Device$Capability;

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

.method public static valueOf(Ljava/lang/String;)Lcom/twilio/client/Device$Capability;
    .locals 1

    const-class v0, Lcom/twilio/client/Device$Capability;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/twilio/client/Device$Capability;

    return-object v0
.end method

.method public static values()[Lcom/twilio/client/Device$Capability;
    .locals 1

    sget-object v0, Lcom/twilio/client/Device$Capability;->$VALUES:[Lcom/twilio/client/Device$Capability;

    invoke-virtual {v0}, [Lcom/twilio/client/Device$Capability;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/twilio/client/Device$Capability;

    return-object v0
.end method
