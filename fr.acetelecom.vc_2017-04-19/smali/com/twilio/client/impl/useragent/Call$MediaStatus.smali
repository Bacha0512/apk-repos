.class public final enum Lcom/twilio/client/impl/useragent/Call$MediaStatus;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twilio/client/impl/useragent/Call;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MediaStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/twilio/client/impl/useragent/Call$MediaStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/twilio/client/impl/useragent/Call$MediaStatus;

.field public static final enum ACTIVE:Lcom/twilio/client/impl/useragent/Call$MediaStatus;

.field public static final enum ERROR:Lcom/twilio/client/impl/useragent/Call$MediaStatus;

.field public static final enum LOCAL_HOLD:Lcom/twilio/client/impl/useragent/Call$MediaStatus;

.field public static final enum NONE:Lcom/twilio/client/impl/useragent/Call$MediaStatus;

.field public static final enum REMOTE_HOLD:Lcom/twilio/client/impl/useragent/Call$MediaStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/twilio/client/impl/useragent/Call$MediaStatus;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/twilio/client/impl/useragent/Call$MediaStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twilio/client/impl/useragent/Call$MediaStatus;->NONE:Lcom/twilio/client/impl/useragent/Call$MediaStatus;

    new-instance v0, Lcom/twilio/client/impl/useragent/Call$MediaStatus;

    const-string v1, "ACTIVE"

    invoke-direct {v0, v1, v3}, Lcom/twilio/client/impl/useragent/Call$MediaStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twilio/client/impl/useragent/Call$MediaStatus;->ACTIVE:Lcom/twilio/client/impl/useragent/Call$MediaStatus;

    new-instance v0, Lcom/twilio/client/impl/useragent/Call$MediaStatus;

    const-string v1, "LOCAL_HOLD"

    invoke-direct {v0, v1, v4}, Lcom/twilio/client/impl/useragent/Call$MediaStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twilio/client/impl/useragent/Call$MediaStatus;->LOCAL_HOLD:Lcom/twilio/client/impl/useragent/Call$MediaStatus;

    new-instance v0, Lcom/twilio/client/impl/useragent/Call$MediaStatus;

    const-string v1, "REMOTE_HOLD"

    invoke-direct {v0, v1, v5}, Lcom/twilio/client/impl/useragent/Call$MediaStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twilio/client/impl/useragent/Call$MediaStatus;->REMOTE_HOLD:Lcom/twilio/client/impl/useragent/Call$MediaStatus;

    new-instance v0, Lcom/twilio/client/impl/useragent/Call$MediaStatus;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v6}, Lcom/twilio/client/impl/useragent/Call$MediaStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twilio/client/impl/useragent/Call$MediaStatus;->ERROR:Lcom/twilio/client/impl/useragent/Call$MediaStatus;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/twilio/client/impl/useragent/Call$MediaStatus;

    sget-object v1, Lcom/twilio/client/impl/useragent/Call$MediaStatus;->NONE:Lcom/twilio/client/impl/useragent/Call$MediaStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/twilio/client/impl/useragent/Call$MediaStatus;->ACTIVE:Lcom/twilio/client/impl/useragent/Call$MediaStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/twilio/client/impl/useragent/Call$MediaStatus;->LOCAL_HOLD:Lcom/twilio/client/impl/useragent/Call$MediaStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/twilio/client/impl/useragent/Call$MediaStatus;->REMOTE_HOLD:Lcom/twilio/client/impl/useragent/Call$MediaStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/twilio/client/impl/useragent/Call$MediaStatus;->ERROR:Lcom/twilio/client/impl/useragent/Call$MediaStatus;

    aput-object v1, v0, v6

    sput-object v0, Lcom/twilio/client/impl/useragent/Call$MediaStatus;->$VALUES:[Lcom/twilio/client/impl/useragent/Call$MediaStatus;

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

.method public static valueOf(Ljava/lang/String;)Lcom/twilio/client/impl/useragent/Call$MediaStatus;
    .locals 1

    const-class v0, Lcom/twilio/client/impl/useragent/Call$MediaStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/twilio/client/impl/useragent/Call$MediaStatus;

    return-object v0
.end method

.method public static values()[Lcom/twilio/client/impl/useragent/Call$MediaStatus;
    .locals 1

    sget-object v0, Lcom/twilio/client/impl/useragent/Call$MediaStatus;->$VALUES:[Lcom/twilio/client/impl/useragent/Call$MediaStatus;

    invoke-virtual {v0}, [Lcom/twilio/client/impl/useragent/Call$MediaStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/twilio/client/impl/useragent/Call$MediaStatus;

    return-object v0
.end method
