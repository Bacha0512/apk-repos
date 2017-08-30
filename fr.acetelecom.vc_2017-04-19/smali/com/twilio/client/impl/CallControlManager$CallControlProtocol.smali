.class public enum Lcom/twilio/client/impl/CallControlManager$CallControlProtocol;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twilio/client/impl/CallControlManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = "CallControlProtocol"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/twilio/client/impl/CallControlManager$CallControlProtocol;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/twilio/client/impl/CallControlManager$CallControlProtocol;

.field public static final enum TCP:Lcom/twilio/client/impl/CallControlManager$CallControlProtocol;

.field public static final enum TLS:Lcom/twilio/client/impl/CallControlManager$CallControlProtocol;

.field public static final enum UDP:Lcom/twilio/client/impl/CallControlManager$CallControlProtocol;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/twilio/client/impl/CallControlManager$CallControlProtocol$1;

    const-string v1, "UDP"

    invoke-direct {v0, v1, v2}, Lcom/twilio/client/impl/CallControlManager$CallControlProtocol$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twilio/client/impl/CallControlManager$CallControlProtocol;->UDP:Lcom/twilio/client/impl/CallControlManager$CallControlProtocol;

    new-instance v0, Lcom/twilio/client/impl/CallControlManager$CallControlProtocol$2;

    const-string v1, "TCP"

    invoke-direct {v0, v1, v3}, Lcom/twilio/client/impl/CallControlManager$CallControlProtocol$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twilio/client/impl/CallControlManager$CallControlProtocol;->TCP:Lcom/twilio/client/impl/CallControlManager$CallControlProtocol;

    new-instance v0, Lcom/twilio/client/impl/CallControlManager$CallControlProtocol$3;

    const-string v1, "TLS"

    invoke-direct {v0, v1, v4}, Lcom/twilio/client/impl/CallControlManager$CallControlProtocol$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twilio/client/impl/CallControlManager$CallControlProtocol;->TLS:Lcom/twilio/client/impl/CallControlManager$CallControlProtocol;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/twilio/client/impl/CallControlManager$CallControlProtocol;

    sget-object v1, Lcom/twilio/client/impl/CallControlManager$CallControlProtocol;->UDP:Lcom/twilio/client/impl/CallControlManager$CallControlProtocol;

    aput-object v1, v0, v2

    sget-object v1, Lcom/twilio/client/impl/CallControlManager$CallControlProtocol;->TCP:Lcom/twilio/client/impl/CallControlManager$CallControlProtocol;

    aput-object v1, v0, v3

    sget-object v1, Lcom/twilio/client/impl/CallControlManager$CallControlProtocol;->TLS:Lcom/twilio/client/impl/CallControlManager$CallControlProtocol;

    aput-object v1, v0, v4

    sput-object v0, Lcom/twilio/client/impl/CallControlManager$CallControlProtocol;->$VALUES:[Lcom/twilio/client/impl/CallControlManager$CallControlProtocol;

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

.method synthetic constructor <init>(Ljava/lang/String;ILcom/twilio/client/impl/CallControlManager$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/twilio/client/impl/CallControlManager$CallControlProtocol;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/twilio/client/impl/CallControlManager$CallControlProtocol;
    .locals 1

    const-class v0, Lcom/twilio/client/impl/CallControlManager$CallControlProtocol;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/twilio/client/impl/CallControlManager$CallControlProtocol;

    return-object v0
.end method

.method public static values()[Lcom/twilio/client/impl/CallControlManager$CallControlProtocol;
    .locals 1

    sget-object v0, Lcom/twilio/client/impl/CallControlManager$CallControlProtocol;->$VALUES:[Lcom/twilio/client/impl/CallControlManager$CallControlProtocol;

    invoke-virtual {v0}, [Lcom/twilio/client/impl/CallControlManager$CallControlProtocol;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/twilio/client/impl/CallControlManager$CallControlProtocol;

    return-object v0
.end method
