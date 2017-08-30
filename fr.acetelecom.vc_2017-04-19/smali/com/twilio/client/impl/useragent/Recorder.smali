.class public Lcom/twilio/client/impl/useragent/Recorder;
.super Ljava/lang/Object;


# instance fields
.field private final filename:Ljava/lang/String;

.field private final maxFileSize:J

.field private recorderId:I


# direct methods
.method private constructor <init>(Ljava/lang/String;JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p4, p0, Lcom/twilio/client/impl/useragent/Recorder;->recorderId:I

    iput-object p1, p0, Lcom/twilio/client/impl/useragent/Recorder;->filename:Ljava/lang/String;

    iput-wide p2, p0, Lcom/twilio/client/impl/useragent/Recorder;->maxFileSize:J

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

    iget v0, p0, Lcom/twilio/client/impl/useragent/Recorder;->recorderId:I

    invoke-direct {p0, v0}, Lcom/twilio/client/impl/useragent/Recorder;->destroy(I)V

    return-void
.end method

.method public getConfPort()Lcom/twilio/client/impl/useragent/ConfPort;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/twilio/client/impl/session/SessionException;
        }
    .end annotation

    iget v0, p0, Lcom/twilio/client/impl/useragent/Recorder;->recorderId:I

    invoke-direct {p0, v0}, Lcom/twilio/client/impl/useragent/Recorder;->getConfPort(I)Lcom/twilio/client/impl/useragent/ConfPort;

    move-result-object v0

    return-object v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/useragent/Recorder;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxFileSize()J
    .locals 2

    iget-wide v0, p0, Lcom/twilio/client/impl/useragent/Recorder;->maxFileSize:J

    return-wide v0
.end method

.method public getRecorderId()I
    .locals 1

    iget v0, p0, Lcom/twilio/client/impl/useragent/Recorder;->recorderId:I

    return v0
.end method
