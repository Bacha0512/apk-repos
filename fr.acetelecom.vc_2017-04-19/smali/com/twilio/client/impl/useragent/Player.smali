.class public Lcom/twilio/client/impl/useragent/Player;
.super Ljava/lang/Object;


# instance fields
.field private final filename:Ljava/lang/String;

.field private final loop:Z

.field private playerId:I


# direct methods
.method private constructor <init>(Ljava/lang/String;ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/twilio/client/impl/useragent/Player;->filename:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/twilio/client/impl/useragent/Player;->loop:Z

    iput p3, p0, Lcom/twilio/client/impl/useragent/Player;->playerId:I

    return-void
.end method

.method private native destroy(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/twilio/client/impl/session/SessionException;
        }
    .end annotation
.end method

.method private native getConfPort(I)Lcom/twilio/client/impl/useragent/ConfPort;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/twilio/client/impl/session/SessionException;
        }
    .end annotation
.end method


# virtual methods
.method public destroy()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/twilio/client/impl/session/SessionException;
        }
    .end annotation

    iget v0, p0, Lcom/twilio/client/impl/useragent/Player;->playerId:I

    invoke-direct {p0, v0}, Lcom/twilio/client/impl/useragent/Player;->destroy(I)V

    return-void
.end method

.method public getConfPort()Lcom/twilio/client/impl/useragent/ConfPort;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/twilio/client/impl/session/SessionException;
        }
    .end annotation

    iget v0, p0, Lcom/twilio/client/impl/useragent/Player;->playerId:I

    invoke-direct {p0, v0}, Lcom/twilio/client/impl/useragent/Player;->getConfPort(I)Lcom/twilio/client/impl/useragent/ConfPort;

    move-result-object v0

    return-object v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/useragent/Player;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayerId()I
    .locals 1

    iget v0, p0, Lcom/twilio/client/impl/useragent/Player;->playerId:I

    return v0
.end method

.method public isLoop()Z
    .locals 1

    iget-boolean v0, p0, Lcom/twilio/client/impl/useragent/Player;->loop:Z

    return v0
.end method
