.class public final enum Lcom/twilio/client/impl/session/Event$Type;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twilio/client/impl/session/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/twilio/client/impl/session/Event$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/twilio/client/impl/session/Event$Type;

.field public static final enum RX_MSG:Lcom/twilio/client/impl/session/Event$Type;

.field public static final enum TIMER:Lcom/twilio/client/impl/session/Event$Type;

.field public static final enum TRANSPORT_ERROR:Lcom/twilio/client/impl/session/Event$Type;

.field public static final enum TSX_STATE:Lcom/twilio/client/impl/session/Event$Type;

.field public static final enum TX_MSG:Lcom/twilio/client/impl/session/Event$Type;

.field public static final enum UNKNOWN:Lcom/twilio/client/impl/session/Event$Type;

.field public static final enum USER:Lcom/twilio/client/impl/session/Event$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/twilio/client/impl/session/Event$Type;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v3}, Lcom/twilio/client/impl/session/Event$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twilio/client/impl/session/Event$Type;->UNKNOWN:Lcom/twilio/client/impl/session/Event$Type;

    new-instance v0, Lcom/twilio/client/impl/session/Event$Type;

    const-string v1, "TIMER"

    invoke-direct {v0, v1, v4}, Lcom/twilio/client/impl/session/Event$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twilio/client/impl/session/Event$Type;->TIMER:Lcom/twilio/client/impl/session/Event$Type;

    new-instance v0, Lcom/twilio/client/impl/session/Event$Type;

    const-string v1, "TX_MSG"

    invoke-direct {v0, v1, v5}, Lcom/twilio/client/impl/session/Event$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twilio/client/impl/session/Event$Type;->TX_MSG:Lcom/twilio/client/impl/session/Event$Type;

    new-instance v0, Lcom/twilio/client/impl/session/Event$Type;

    const-string v1, "RX_MSG"

    invoke-direct {v0, v1, v6}, Lcom/twilio/client/impl/session/Event$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twilio/client/impl/session/Event$Type;->RX_MSG:Lcom/twilio/client/impl/session/Event$Type;

    new-instance v0, Lcom/twilio/client/impl/session/Event$Type;

    const-string v1, "TRANSPORT_ERROR"

    invoke-direct {v0, v1, v7}, Lcom/twilio/client/impl/session/Event$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twilio/client/impl/session/Event$Type;->TRANSPORT_ERROR:Lcom/twilio/client/impl/session/Event$Type;

    new-instance v0, Lcom/twilio/client/impl/session/Event$Type;

    const-string v1, "TSX_STATE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/twilio/client/impl/session/Event$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twilio/client/impl/session/Event$Type;->TSX_STATE:Lcom/twilio/client/impl/session/Event$Type;

    new-instance v0, Lcom/twilio/client/impl/session/Event$Type;

    const-string v1, "USER"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/twilio/client/impl/session/Event$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twilio/client/impl/session/Event$Type;->USER:Lcom/twilio/client/impl/session/Event$Type;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/twilio/client/impl/session/Event$Type;

    sget-object v1, Lcom/twilio/client/impl/session/Event$Type;->UNKNOWN:Lcom/twilio/client/impl/session/Event$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/twilio/client/impl/session/Event$Type;->TIMER:Lcom/twilio/client/impl/session/Event$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/twilio/client/impl/session/Event$Type;->TX_MSG:Lcom/twilio/client/impl/session/Event$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/twilio/client/impl/session/Event$Type;->RX_MSG:Lcom/twilio/client/impl/session/Event$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/twilio/client/impl/session/Event$Type;->TRANSPORT_ERROR:Lcom/twilio/client/impl/session/Event$Type;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/twilio/client/impl/session/Event$Type;->TSX_STATE:Lcom/twilio/client/impl/session/Event$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/twilio/client/impl/session/Event$Type;->USER:Lcom/twilio/client/impl/session/Event$Type;

    aput-object v2, v0, v1

    sput-object v0, Lcom/twilio/client/impl/session/Event$Type;->$VALUES:[Lcom/twilio/client/impl/session/Event$Type;

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

.method public static valueOf(Ljava/lang/String;)Lcom/twilio/client/impl/session/Event$Type;
    .locals 1

    const-class v0, Lcom/twilio/client/impl/session/Event$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/twilio/client/impl/session/Event$Type;

    return-object v0
.end method

.method public static values()[Lcom/twilio/client/impl/session/Event$Type;
    .locals 1

    sget-object v0, Lcom/twilio/client/impl/session/Event$Type;->$VALUES:[Lcom/twilio/client/impl/session/Event$Type;

    invoke-virtual {v0}, [Lcom/twilio/client/impl/session/Event$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/twilio/client/impl/session/Event$Type;

    return-object v0
.end method
