.class public final enum Lcom/twilio/client/impl/InternalConnectionImpl$IssueName;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twilio/client/impl/InternalConnectionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IssueName"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/twilio/client/impl/InternalConnectionImpl$IssueName;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/twilio/client/impl/InternalConnectionImpl$IssueName;

.field public static final enum AUDIO_LATENCY:Lcom/twilio/client/impl/InternalConnectionImpl$IssueName;

.field public static final enum CHOPPY_AUDIO:Lcom/twilio/client/impl/InternalConnectionImpl$IssueName;

.field public static final enum DROPPED_CALL:Lcom/twilio/client/impl/InternalConnectionImpl$IssueName;

.field public static final enum ECHO:Lcom/twilio/client/impl/InternalConnectionImpl$IssueName;

.field public static final enum NOISY_CALL:Lcom/twilio/client/impl/InternalConnectionImpl$IssueName;

.field public static final enum NONE:Lcom/twilio/client/impl/InternalConnectionImpl$IssueName;

.field public static final enum ONE_WAY_AUDIO:Lcom/twilio/client/impl/InternalConnectionImpl$IssueName;


# instance fields
.field private final issueName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/twilio/client/impl/InternalConnectionImpl$IssueName;

    const-string v1, "DROPPED_CALL"

    const-string v2, "dropped-call"

    invoke-direct {v0, v1, v4, v2}, Lcom/twilio/client/impl/InternalConnectionImpl$IssueName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/twilio/client/impl/InternalConnectionImpl$IssueName;->DROPPED_CALL:Lcom/twilio/client/impl/InternalConnectionImpl$IssueName;

    new-instance v0, Lcom/twilio/client/impl/InternalConnectionImpl$IssueName;

    const-string v1, "AUDIO_LATENCY"

    const-string v2, "audio-latency"

    invoke-direct {v0, v1, v5, v2}, Lcom/twilio/client/impl/InternalConnectionImpl$IssueName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/twilio/client/impl/InternalConnectionImpl$IssueName;->AUDIO_LATENCY:Lcom/twilio/client/impl/InternalConnectionImpl$IssueName;

    new-instance v0, Lcom/twilio/client/impl/InternalConnectionImpl$IssueName;

    const-string v1, "ONE_WAY_AUDIO"

    const-string v2, "one-way-audio"

    invoke-direct {v0, v1, v6, v2}, Lcom/twilio/client/impl/InternalConnectionImpl$IssueName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/twilio/client/impl/InternalConnectionImpl$IssueName;->ONE_WAY_AUDIO:Lcom/twilio/client/impl/InternalConnectionImpl$IssueName;

    new-instance v0, Lcom/twilio/client/impl/InternalConnectionImpl$IssueName;

    const-string v1, "CHOPPY_AUDIO"

    const-string v2, "choppy-audio"

    invoke-direct {v0, v1, v7, v2}, Lcom/twilio/client/impl/InternalConnectionImpl$IssueName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/twilio/client/impl/InternalConnectionImpl$IssueName;->CHOPPY_AUDIO:Lcom/twilio/client/impl/InternalConnectionImpl$IssueName;

    new-instance v0, Lcom/twilio/client/impl/InternalConnectionImpl$IssueName;

    const-string v1, "NOISY_CALL"

    const-string v2, "noisy-call"

    invoke-direct {v0, v1, v8, v2}, Lcom/twilio/client/impl/InternalConnectionImpl$IssueName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/twilio/client/impl/InternalConnectionImpl$IssueName;->NOISY_CALL:Lcom/twilio/client/impl/InternalConnectionImpl$IssueName;

    new-instance v0, Lcom/twilio/client/impl/InternalConnectionImpl$IssueName;

    const-string v1, "ECHO"

    const/4 v2, 0x5

    const-string v3, "echo"

    invoke-direct {v0, v1, v2, v3}, Lcom/twilio/client/impl/InternalConnectionImpl$IssueName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/twilio/client/impl/InternalConnectionImpl$IssueName;->ECHO:Lcom/twilio/client/impl/InternalConnectionImpl$IssueName;

    new-instance v0, Lcom/twilio/client/impl/InternalConnectionImpl$IssueName;

    const-string v1, "NONE"

    const/4 v2, 0x6

    const-string v3, "none"

    invoke-direct {v0, v1, v2, v3}, Lcom/twilio/client/impl/InternalConnectionImpl$IssueName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/twilio/client/impl/InternalConnectionImpl$IssueName;->NONE:Lcom/twilio/client/impl/InternalConnectionImpl$IssueName;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/twilio/client/impl/InternalConnectionImpl$IssueName;

    sget-object v1, Lcom/twilio/client/impl/InternalConnectionImpl$IssueName;->DROPPED_CALL:Lcom/twilio/client/impl/InternalConnectionImpl$IssueName;

    aput-object v1, v0, v4

    sget-object v1, Lcom/twilio/client/impl/InternalConnectionImpl$IssueName;->AUDIO_LATENCY:Lcom/twilio/client/impl/InternalConnectionImpl$IssueName;

    aput-object v1, v0, v5

    sget-object v1, Lcom/twilio/client/impl/InternalConnectionImpl$IssueName;->ONE_WAY_AUDIO:Lcom/twilio/client/impl/InternalConnectionImpl$IssueName;

    aput-object v1, v0, v6

    sget-object v1, Lcom/twilio/client/impl/InternalConnectionImpl$IssueName;->CHOPPY_AUDIO:Lcom/twilio/client/impl/InternalConnectionImpl$IssueName;

    aput-object v1, v0, v7

    sget-object v1, Lcom/twilio/client/impl/InternalConnectionImpl$IssueName;->NOISY_CALL:Lcom/twilio/client/impl/InternalConnectionImpl$IssueName;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/twilio/client/impl/InternalConnectionImpl$IssueName;->ECHO:Lcom/twilio/client/impl/InternalConnectionImpl$IssueName;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/twilio/client/impl/InternalConnectionImpl$IssueName;->NONE:Lcom/twilio/client/impl/InternalConnectionImpl$IssueName;

    aput-object v2, v0, v1

    sput-object v0, Lcom/twilio/client/impl/InternalConnectionImpl$IssueName;->$VALUES:[Lcom/twilio/client/impl/InternalConnectionImpl$IssueName;

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

    iput-object p3, p0, Lcom/twilio/client/impl/InternalConnectionImpl$IssueName;->issueName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/twilio/client/impl/InternalConnectionImpl$IssueName;
    .locals 1

    const-class v0, Lcom/twilio/client/impl/InternalConnectionImpl$IssueName;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/twilio/client/impl/InternalConnectionImpl$IssueName;

    return-object v0
.end method

.method public static values()[Lcom/twilio/client/impl/InternalConnectionImpl$IssueName;
    .locals 1

    sget-object v0, Lcom/twilio/client/impl/InternalConnectionImpl$IssueName;->$VALUES:[Lcom/twilio/client/impl/InternalConnectionImpl$IssueName;

    invoke-virtual {v0}, [Lcom/twilio/client/impl/InternalConnectionImpl$IssueName;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/twilio/client/impl/InternalConnectionImpl$IssueName;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/InternalConnectionImpl$IssueName;->issueName:Ljava/lang/String;

    return-object v0
.end method
