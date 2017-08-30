.class public final enum Lcom/twilio/client/impl/analytics/Constants$Direction;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twilio/client/impl/analytics/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Direction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/twilio/client/impl/analytics/Constants$Direction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/twilio/client/impl/analytics/Constants$Direction;

.field public static final enum INCOMING:Lcom/twilio/client/impl/analytics/Constants$Direction;

.field public static final enum OUTGOING:Lcom/twilio/client/impl/analytics/Constants$Direction;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/twilio/client/impl/analytics/Constants$Direction;

    const-string v1, "INCOMING"

    invoke-direct {v0, v1, v2}, Lcom/twilio/client/impl/analytics/Constants$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twilio/client/impl/analytics/Constants$Direction;->INCOMING:Lcom/twilio/client/impl/analytics/Constants$Direction;

    new-instance v0, Lcom/twilio/client/impl/analytics/Constants$Direction;

    const-string v1, "OUTGOING"

    invoke-direct {v0, v1, v3}, Lcom/twilio/client/impl/analytics/Constants$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twilio/client/impl/analytics/Constants$Direction;->OUTGOING:Lcom/twilio/client/impl/analytics/Constants$Direction;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/twilio/client/impl/analytics/Constants$Direction;

    sget-object v1, Lcom/twilio/client/impl/analytics/Constants$Direction;->INCOMING:Lcom/twilio/client/impl/analytics/Constants$Direction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/twilio/client/impl/analytics/Constants$Direction;->OUTGOING:Lcom/twilio/client/impl/analytics/Constants$Direction;

    aput-object v1, v0, v3

    sput-object v0, Lcom/twilio/client/impl/analytics/Constants$Direction;->$VALUES:[Lcom/twilio/client/impl/analytics/Constants$Direction;

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

.method public static valueOf(Ljava/lang/String;)Lcom/twilio/client/impl/analytics/Constants$Direction;
    .locals 1

    const-class v0, Lcom/twilio/client/impl/analytics/Constants$Direction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/twilio/client/impl/analytics/Constants$Direction;

    return-object v0
.end method

.method public static values()[Lcom/twilio/client/impl/analytics/Constants$Direction;
    .locals 1

    sget-object v0, Lcom/twilio/client/impl/analytics/Constants$Direction;->$VALUES:[Lcom/twilio/client/impl/analytics/Constants$Direction;

    invoke-virtual {v0}, [Lcom/twilio/client/impl/analytics/Constants$Direction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/twilio/client/impl/analytics/Constants$Direction;

    return-object v0
.end method
