.class public Lcom/twilio/client/impl/useragent/ConfPort;
.super Ljava/lang/Object;


# static fields
.field private static final SOUND_DEVICE_PORT_ID:I

.field private static final soundDevice:Lcom/twilio/client/impl/useragent/ConfPort;


# instance fields
.field private confPortId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/twilio/client/impl/useragent/ConfPort;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/twilio/client/impl/useragent/ConfPort;-><init>(I)V

    sput-object v0, Lcom/twilio/client/impl/useragent/ConfPort;->soundDevice:Lcom/twilio/client/impl/useragent/ConfPort;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/twilio/client/impl/useragent/ConfPort;->confPortId:I

    return-void
.end method

.method private native adjustRxLevel(FI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/twilio/client/impl/session/SessionException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method private native adjustTxLevel(FI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/twilio/client/impl/session/SessionException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method private native connect(Lcom/twilio/client/impl/useragent/ConfPort;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/twilio/client/impl/session/SessionException;
        }
    .end annotation
.end method

.method private native disconnect(Lcom/twilio/client/impl/useragent/ConfPort;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/twilio/client/impl/session/SessionException;
        }
    .end annotation
.end method

.method private native getRxSignalLevel(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/twilio/client/impl/session/SessionException;
        }
    .end annotation
.end method

.method public static getSoundDevice()Lcom/twilio/client/impl/useragent/ConfPort;
    .locals 1

    sget-object v0, Lcom/twilio/client/impl/useragent/ConfPort;->soundDevice:Lcom/twilio/client/impl/useragent/ConfPort;

    return-object v0
.end method

.method private native getTxSignalLevel(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/twilio/client/impl/session/SessionException;
        }
    .end annotation
.end method


# virtual methods
.method public adjustRxLevel(F)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/twilio/client/impl/session/SessionException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget v0, p0, Lcom/twilio/client/impl/useragent/ConfPort;->confPortId:I

    invoke-direct {p0, p1, v0}, Lcom/twilio/client/impl/useragent/ConfPort;->adjustRxLevel(FI)V

    return-void
.end method

.method public adjustTxLevel(F)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/twilio/client/impl/session/SessionException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget v0, p0, Lcom/twilio/client/impl/useragent/ConfPort;->confPortId:I

    invoke-direct {p0, p1, v0}, Lcom/twilio/client/impl/useragent/ConfPort;->adjustTxLevel(FI)V

    return-void
.end method

.method public connect(Lcom/twilio/client/impl/useragent/ConfPort;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/twilio/client/impl/session/SessionException;
        }
    .end annotation

    iget v0, p0, Lcom/twilio/client/impl/useragent/ConfPort;->confPortId:I

    invoke-direct {p0, p1, v0}, Lcom/twilio/client/impl/useragent/ConfPort;->connect(Lcom/twilio/client/impl/useragent/ConfPort;I)V

    return-void
.end method

.method public disconnect(Lcom/twilio/client/impl/useragent/ConfPort;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/twilio/client/impl/session/SessionException;
        }
    .end annotation

    iget v0, p0, Lcom/twilio/client/impl/useragent/ConfPort;->confPortId:I

    invoke-direct {p0, p1, v0}, Lcom/twilio/client/impl/useragent/ConfPort;->disconnect(Lcom/twilio/client/impl/useragent/ConfPort;I)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/twilio/client/impl/useragent/ConfPort;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lcom/twilio/client/impl/useragent/ConfPort;

    iget v1, p0, Lcom/twilio/client/impl/useragent/ConfPort;->confPortId:I

    iget v2, p1, Lcom/twilio/client/impl/useragent/ConfPort;->confPortId:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getConfPortId()I
    .locals 1

    iget v0, p0, Lcom/twilio/client/impl/useragent/ConfPort;->confPortId:I

    return v0
.end method

.method public getRxSignalLevel()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/twilio/client/impl/session/SessionException;
        }
    .end annotation

    iget v0, p0, Lcom/twilio/client/impl/useragent/ConfPort;->confPortId:I

    invoke-direct {p0, v0}, Lcom/twilio/client/impl/useragent/ConfPort;->getRxSignalLevel(I)I

    move-result v0

    return v0
.end method

.method public getTxSignalLevel()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/twilio/client/impl/session/SessionException;
        }
    .end annotation

    iget v0, p0, Lcom/twilio/client/impl/useragent/ConfPort;->confPortId:I

    invoke-direct {p0, v0}, Lcom/twilio/client/impl/useragent/ConfPort;->getTxSignalLevel(I)I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/twilio/client/impl/useragent/ConfPort;->confPortId:I

    return v0
.end method
