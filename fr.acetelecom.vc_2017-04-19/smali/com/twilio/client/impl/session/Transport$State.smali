.class public final enum Lcom/twilio/client/impl/session/Transport$State;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twilio/client/impl/session/Transport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/twilio/client/impl/session/Transport$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/twilio/client/impl/session/Transport$State;

.field public static final enum CONNECTED:Lcom/twilio/client/impl/session/Transport$State;

.field public static final enum DESTROY:Lcom/twilio/client/impl/session/Transport$State;

.field public static final enum DISCONNECTED:Lcom/twilio/client/impl/session/Transport$State;

.field public static final enum SHUTDOWN:Lcom/twilio/client/impl/session/Transport$State;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/twilio/client/impl/session/Transport$State;

    const-string v1, "CONNECTED"

    invoke-direct {v0, v1, v2}, Lcom/twilio/client/impl/session/Transport$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twilio/client/impl/session/Transport$State;->CONNECTED:Lcom/twilio/client/impl/session/Transport$State;

    new-instance v0, Lcom/twilio/client/impl/session/Transport$State;

    const-string v1, "DISCONNECTED"

    invoke-direct {v0, v1, v3}, Lcom/twilio/client/impl/session/Transport$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twilio/client/impl/session/Transport$State;->DISCONNECTED:Lcom/twilio/client/impl/session/Transport$State;

    new-instance v0, Lcom/twilio/client/impl/session/Transport$State;

    const-string v1, "SHUTDOWN"

    invoke-direct {v0, v1, v4}, Lcom/twilio/client/impl/session/Transport$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twilio/client/impl/session/Transport$State;->SHUTDOWN:Lcom/twilio/client/impl/session/Transport$State;

    new-instance v0, Lcom/twilio/client/impl/session/Transport$State;

    const-string v1, "DESTROY"

    invoke-direct {v0, v1, v5}, Lcom/twilio/client/impl/session/Transport$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twilio/client/impl/session/Transport$State;->DESTROY:Lcom/twilio/client/impl/session/Transport$State;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/twilio/client/impl/session/Transport$State;

    sget-object v1, Lcom/twilio/client/impl/session/Transport$State;->CONNECTED:Lcom/twilio/client/impl/session/Transport$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/twilio/client/impl/session/Transport$State;->DISCONNECTED:Lcom/twilio/client/impl/session/Transport$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/twilio/client/impl/session/Transport$State;->SHUTDOWN:Lcom/twilio/client/impl/session/Transport$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/twilio/client/impl/session/Transport$State;->DESTROY:Lcom/twilio/client/impl/session/Transport$State;

    aput-object v1, v0, v5

    sput-object v0, Lcom/twilio/client/impl/session/Transport$State;->$VALUES:[Lcom/twilio/client/impl/session/Transport$State;

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

.method public static valueOf(Ljava/lang/String;)Lcom/twilio/client/impl/session/Transport$State;
    .locals 1

    const-class v0, Lcom/twilio/client/impl/session/Transport$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/twilio/client/impl/session/Transport$State;

    return-object v0
.end method

.method public static values()[Lcom/twilio/client/impl/session/Transport$State;
    .locals 1

    sget-object v0, Lcom/twilio/client/impl/session/Transport$State;->$VALUES:[Lcom/twilio/client/impl/session/Transport$State;

    invoke-virtual {v0}, [Lcom/twilio/client/impl/session/Transport$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/twilio/client/impl/session/Transport$State;

    return-object v0
.end method
