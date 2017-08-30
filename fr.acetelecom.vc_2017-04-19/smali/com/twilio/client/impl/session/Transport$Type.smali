.class public final enum Lcom/twilio/client/impl/session/Transport$Type;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twilio/client/impl/session/Transport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/twilio/client/impl/session/Transport$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/twilio/client/impl/session/Transport$Type;

.field public static final enum IPV6:Lcom/twilio/client/impl/session/Transport$Type;

.field public static final enum LOOP:Lcom/twilio/client/impl/session/Transport$Type;

.field public static final enum LOOP_DGRAM:Lcom/twilio/client/impl/session/Transport$Type;

.field public static final enum SCTP:Lcom/twilio/client/impl/session/Transport$Type;

.field public static final enum START_OTHER:Lcom/twilio/client/impl/session/Transport$Type;

.field public static final enum TCP:Lcom/twilio/client/impl/session/Transport$Type;

.field public static final enum TCP6:Lcom/twilio/client/impl/session/Transport$Type;

.field public static final enum TLS:Lcom/twilio/client/impl/session/Transport$Type;

.field public static final enum TLS6:Lcom/twilio/client/impl/session/Transport$Type;

.field public static final enum UDP:Lcom/twilio/client/impl/session/Transport$Type;

.field public static final enum UDP6:Lcom/twilio/client/impl/session/Transport$Type;

.field public static final enum UNSPECIFIED:Lcom/twilio/client/impl/session/Transport$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/twilio/client/impl/session/Transport$Type;

    const-string v1, "UNSPECIFIED"

    invoke-direct {v0, v1, v3}, Lcom/twilio/client/impl/session/Transport$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twilio/client/impl/session/Transport$Type;->UNSPECIFIED:Lcom/twilio/client/impl/session/Transport$Type;

    new-instance v0, Lcom/twilio/client/impl/session/Transport$Type;

    const-string v1, "UDP"

    invoke-direct {v0, v1, v4}, Lcom/twilio/client/impl/session/Transport$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twilio/client/impl/session/Transport$Type;->UDP:Lcom/twilio/client/impl/session/Transport$Type;

    new-instance v0, Lcom/twilio/client/impl/session/Transport$Type;

    const-string v1, "TCP"

    invoke-direct {v0, v1, v5}, Lcom/twilio/client/impl/session/Transport$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twilio/client/impl/session/Transport$Type;->TCP:Lcom/twilio/client/impl/session/Transport$Type;

    new-instance v0, Lcom/twilio/client/impl/session/Transport$Type;

    const-string v1, "TLS"

    invoke-direct {v0, v1, v6}, Lcom/twilio/client/impl/session/Transport$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twilio/client/impl/session/Transport$Type;->TLS:Lcom/twilio/client/impl/session/Transport$Type;

    new-instance v0, Lcom/twilio/client/impl/session/Transport$Type;

    const-string v1, "SCTP"

    invoke-direct {v0, v1, v7}, Lcom/twilio/client/impl/session/Transport$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twilio/client/impl/session/Transport$Type;->SCTP:Lcom/twilio/client/impl/session/Transport$Type;

    new-instance v0, Lcom/twilio/client/impl/session/Transport$Type;

    const-string v1, "LOOP"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/twilio/client/impl/session/Transport$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twilio/client/impl/session/Transport$Type;->LOOP:Lcom/twilio/client/impl/session/Transport$Type;

    new-instance v0, Lcom/twilio/client/impl/session/Transport$Type;

    const-string v1, "LOOP_DGRAM"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/twilio/client/impl/session/Transport$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twilio/client/impl/session/Transport$Type;->LOOP_DGRAM:Lcom/twilio/client/impl/session/Transport$Type;

    new-instance v0, Lcom/twilio/client/impl/session/Transport$Type;

    const-string v1, "START_OTHER"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/twilio/client/impl/session/Transport$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twilio/client/impl/session/Transport$Type;->START_OTHER:Lcom/twilio/client/impl/session/Transport$Type;

    new-instance v0, Lcom/twilio/client/impl/session/Transport$Type;

    const-string v1, "IPV6"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/twilio/client/impl/session/Transport$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twilio/client/impl/session/Transport$Type;->IPV6:Lcom/twilio/client/impl/session/Transport$Type;

    new-instance v0, Lcom/twilio/client/impl/session/Transport$Type;

    const-string v1, "UDP6"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/twilio/client/impl/session/Transport$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twilio/client/impl/session/Transport$Type;->UDP6:Lcom/twilio/client/impl/session/Transport$Type;

    new-instance v0, Lcom/twilio/client/impl/session/Transport$Type;

    const-string v1, "TCP6"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/twilio/client/impl/session/Transport$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twilio/client/impl/session/Transport$Type;->TCP6:Lcom/twilio/client/impl/session/Transport$Type;

    new-instance v0, Lcom/twilio/client/impl/session/Transport$Type;

    const-string v1, "TLS6"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/twilio/client/impl/session/Transport$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/twilio/client/impl/session/Transport$Type;->TLS6:Lcom/twilio/client/impl/session/Transport$Type;

    const/16 v0, 0xc

    new-array v0, v0, [Lcom/twilio/client/impl/session/Transport$Type;

    sget-object v1, Lcom/twilio/client/impl/session/Transport$Type;->UNSPECIFIED:Lcom/twilio/client/impl/session/Transport$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/twilio/client/impl/session/Transport$Type;->UDP:Lcom/twilio/client/impl/session/Transport$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/twilio/client/impl/session/Transport$Type;->TCP:Lcom/twilio/client/impl/session/Transport$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/twilio/client/impl/session/Transport$Type;->TLS:Lcom/twilio/client/impl/session/Transport$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/twilio/client/impl/session/Transport$Type;->SCTP:Lcom/twilio/client/impl/session/Transport$Type;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/twilio/client/impl/session/Transport$Type;->LOOP:Lcom/twilio/client/impl/session/Transport$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/twilio/client/impl/session/Transport$Type;->LOOP_DGRAM:Lcom/twilio/client/impl/session/Transport$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/twilio/client/impl/session/Transport$Type;->START_OTHER:Lcom/twilio/client/impl/session/Transport$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/twilio/client/impl/session/Transport$Type;->IPV6:Lcom/twilio/client/impl/session/Transport$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/twilio/client/impl/session/Transport$Type;->UDP6:Lcom/twilio/client/impl/session/Transport$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/twilio/client/impl/session/Transport$Type;->TCP6:Lcom/twilio/client/impl/session/Transport$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/twilio/client/impl/session/Transport$Type;->TLS6:Lcom/twilio/client/impl/session/Transport$Type;

    aput-object v2, v0, v1

    sput-object v0, Lcom/twilio/client/impl/session/Transport$Type;->$VALUES:[Lcom/twilio/client/impl/session/Transport$Type;

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

.method public static valueOf(Ljava/lang/String;)Lcom/twilio/client/impl/session/Transport$Type;
    .locals 1

    const-class v0, Lcom/twilio/client/impl/session/Transport$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/twilio/client/impl/session/Transport$Type;

    return-object v0
.end method

.method public static values()[Lcom/twilio/client/impl/session/Transport$Type;
    .locals 1

    sget-object v0, Lcom/twilio/client/impl/session/Transport$Type;->$VALUES:[Lcom/twilio/client/impl/session/Transport$Type;

    invoke-virtual {v0}, [Lcom/twilio/client/impl/session/Transport$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/twilio/client/impl/session/Transport$Type;

    return-object v0
.end method
