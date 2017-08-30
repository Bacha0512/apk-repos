.class public final enum Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twilio/client/impl/InternalConnectionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WarningName"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;

.field public static final enum WARN_CONSTANT_AUDIO_IN_LEVEL:Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;

.field public static final enum WARN_CONSTANT_AUDIO_OUT_LEVEL:Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;

.field public static final enum WARN_HIGH_JITTER:Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;

.field public static final enum WARN_HIGH_PACKET_LOSS:Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;

.field public static final enum WARN_HIGH_RTT:Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;

.field public static final enum WARN_LOW_MOS:Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;


# instance fields
.field private final warningName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;

    const-string v1, "WARN_HIGH_JITTER"

    const-string v2, "high-jitter"

    invoke-direct {v0, v1, v4, v2}, Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;->WARN_HIGH_JITTER:Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;

    new-instance v0, Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;

    const-string v1, "WARN_HIGH_PACKET_LOSS"

    const-string v2, "high-packet-loss"

    invoke-direct {v0, v1, v5, v2}, Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;->WARN_HIGH_PACKET_LOSS:Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;

    new-instance v0, Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;

    const-string v1, "WARN_HIGH_RTT"

    const-string v2, "high-rtt"

    invoke-direct {v0, v1, v6, v2}, Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;->WARN_HIGH_RTT:Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;

    new-instance v0, Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;

    const-string v1, "WARN_LOW_MOS"

    const-string v2, "low-mos"

    invoke-direct {v0, v1, v7, v2}, Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;->WARN_LOW_MOS:Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;

    new-instance v0, Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;

    const-string v1, "WARN_CONSTANT_AUDIO_IN_LEVEL"

    const-string v2, "constant-audio-input-level"

    invoke-direct {v0, v1, v8, v2}, Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;->WARN_CONSTANT_AUDIO_IN_LEVEL:Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;

    new-instance v0, Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;

    const-string v1, "WARN_CONSTANT_AUDIO_OUT_LEVEL"

    const/4 v2, 0x5

    const-string v3, "constant-audio-output-level"

    invoke-direct {v0, v1, v2, v3}, Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;->WARN_CONSTANT_AUDIO_OUT_LEVEL:Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;

    sget-object v1, Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;->WARN_HIGH_JITTER:Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;

    aput-object v1, v0, v4

    sget-object v1, Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;->WARN_HIGH_PACKET_LOSS:Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;

    aput-object v1, v0, v5

    sget-object v1, Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;->WARN_HIGH_RTT:Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;

    aput-object v1, v0, v6

    sget-object v1, Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;->WARN_LOW_MOS:Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;

    aput-object v1, v0, v7

    sget-object v1, Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;->WARN_CONSTANT_AUDIO_IN_LEVEL:Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;->WARN_CONSTANT_AUDIO_OUT_LEVEL:Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;

    aput-object v2, v0, v1

    sput-object v0, Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;->$VALUES:[Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;->warningName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;
    .locals 1

    const-class v0, Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;

    return-object v0
.end method

.method public static values()[Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;
    .locals 1

    sget-object v0, Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;->$VALUES:[Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;

    invoke-virtual {v0}, [Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/InternalConnectionImpl$WarningName;->warningName:Ljava/lang/String;

    return-object v0
.end method
