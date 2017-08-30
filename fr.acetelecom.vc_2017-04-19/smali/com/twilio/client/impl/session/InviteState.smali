.class public final enum Lcom/twilio/client/impl/session/InviteState;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/twilio/client/impl/session/InviteState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/twilio/client/impl/session/InviteState;

.field public static final enum CALLING:Lcom/twilio/client/impl/session/InviteState;

.field public static final enum CONFIRMED:Lcom/twilio/client/impl/session/InviteState;

.field public static final enum CONNECTING:Lcom/twilio/client/impl/session/InviteState;

.field public static final enum DISCONNECTED:Lcom/twilio/client/impl/session/InviteState;

.field public static final enum EARLY:Lcom/twilio/client/impl/session/InviteState;

.field public static final enum INCOMING:Lcom/twilio/client/impl/session/InviteState;

.field public static final enum NULL:Lcom/twilio/client/impl/session/InviteState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/twilio/client/impl/session/InviteState;

    const-string v1, "NULL"

    invoke-direct {v0, v1, v3}, Lcom/twilio/client/impl/session/InviteState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twilio/client/impl/session/InviteState;->NULL:Lcom/twilio/client/impl/session/InviteState;

    new-instance v0, Lcom/twilio/client/impl/session/InviteState;

    const-string v1, "CALLING"

    invoke-direct {v0, v1, v4}, Lcom/twilio/client/impl/session/InviteState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twilio/client/impl/session/InviteState;->CALLING:Lcom/twilio/client/impl/session/InviteState;

    new-instance v0, Lcom/twilio/client/impl/session/InviteState;

    const-string v1, "INCOMING"

    invoke-direct {v0, v1, v5}, Lcom/twilio/client/impl/session/InviteState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twilio/client/impl/session/InviteState;->INCOMING:Lcom/twilio/client/impl/session/InviteState;

    new-instance v0, Lcom/twilio/client/impl/session/InviteState;

    const-string v1, "EARLY"

    invoke-direct {v0, v1, v6}, Lcom/twilio/client/impl/session/InviteState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twilio/client/impl/session/InviteState;->EARLY:Lcom/twilio/client/impl/session/InviteState;

    new-instance v0, Lcom/twilio/client/impl/session/InviteState;

    const-string v1, "CONNECTING"

    invoke-direct {v0, v1, v7}, Lcom/twilio/client/impl/session/InviteState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twilio/client/impl/session/InviteState;->CONNECTING:Lcom/twilio/client/impl/session/InviteState;

    new-instance v0, Lcom/twilio/client/impl/session/InviteState;

    const-string v1, "CONFIRMED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/twilio/client/impl/session/InviteState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twilio/client/impl/session/InviteState;->CONFIRMED:Lcom/twilio/client/impl/session/InviteState;

    new-instance v0, Lcom/twilio/client/impl/session/InviteState;

    const-string v1, "DISCONNECTED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/twilio/client/impl/session/InviteState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twilio/client/impl/session/InviteState;->DISCONNECTED:Lcom/twilio/client/impl/session/InviteState;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/twilio/client/impl/session/InviteState;

    sget-object v1, Lcom/twilio/client/impl/session/InviteState;->NULL:Lcom/twilio/client/impl/session/InviteState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/twilio/client/impl/session/InviteState;->CALLING:Lcom/twilio/client/impl/session/InviteState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/twilio/client/impl/session/InviteState;->INCOMING:Lcom/twilio/client/impl/session/InviteState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/twilio/client/impl/session/InviteState;->EARLY:Lcom/twilio/client/impl/session/InviteState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/twilio/client/impl/session/InviteState;->CONNECTING:Lcom/twilio/client/impl/session/InviteState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/twilio/client/impl/session/InviteState;->CONFIRMED:Lcom/twilio/client/impl/session/InviteState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/twilio/client/impl/session/InviteState;->DISCONNECTED:Lcom/twilio/client/impl/session/InviteState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/twilio/client/impl/session/InviteState;->$VALUES:[Lcom/twilio/client/impl/session/InviteState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/twilio/client/impl/session/InviteState;
    .locals 1

    const-class v0, Lcom/twilio/client/impl/session/InviteState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/twilio/client/impl/session/InviteState;

    return-object v0
.end method

.method public static values()[Lcom/twilio/client/impl/session/InviteState;
    .locals 1

    sget-object v0, Lcom/twilio/client/impl/session/InviteState;->$VALUES:[Lcom/twilio/client/impl/session/InviteState;

    invoke-virtual {v0}, [Lcom/twilio/client/impl/session/InviteState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/twilio/client/impl/session/InviteState;

    return-object v0
.end method
