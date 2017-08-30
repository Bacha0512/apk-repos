.class public Lcom/twilio/client/impl/useragent/config/MediaConfig;
.super Ljava/lang/Object;


# static fields
.field private static final DEFAULT_EC_TAIL_LEN:I = 0xc8

.field private static final DEFAULT_SND_PLAY_LATENCY:I = 0x8c

.field private static final DEFAULT_SND_REC_LATENCY:I = 0x64


# instance fields
.field private ecTailLen:I

.field private noVAD:Z

.field private quality:I

.field private sndPlayLatency:I

.field private sndRecLatency:I


# direct methods
.method public constructor <init>(ZI)V
    .locals 6

    const/16 v3, 0xc8

    const/16 v4, 0x64

    const/16 v5, 0x8c

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/twilio/client/impl/useragent/config/MediaConfig;-><init>(ZIIII)V

    return-void
.end method

.method public constructor <init>(ZIIII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc8

    iput v0, p0, Lcom/twilio/client/impl/useragent/config/MediaConfig;->ecTailLen:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/twilio/client/impl/useragent/config/MediaConfig;->sndRecLatency:I

    const/16 v0, 0x8c

    iput v0, p0, Lcom/twilio/client/impl/useragent/config/MediaConfig;->sndPlayLatency:I

    iput-boolean p1, p0, Lcom/twilio/client/impl/useragent/config/MediaConfig;->noVAD:Z

    iput p2, p0, Lcom/twilio/client/impl/useragent/config/MediaConfig;->quality:I

    iput p3, p0, Lcom/twilio/client/impl/useragent/config/MediaConfig;->ecTailLen:I

    iput p4, p0, Lcom/twilio/client/impl/useragent/config/MediaConfig;->sndRecLatency:I

    iput p5, p0, Lcom/twilio/client/impl/useragent/config/MediaConfig;->sndPlayLatency:I

    return-void
.end method


# virtual methods
.method public getEcTailLen()I
    .locals 1

    iget v0, p0, Lcom/twilio/client/impl/useragent/config/MediaConfig;->ecTailLen:I

    return v0
.end method

.method public getQuality()I
    .locals 1

    iget v0, p0, Lcom/twilio/client/impl/useragent/config/MediaConfig;->quality:I

    return v0
.end method

.method public getSndPlayLatency()I
    .locals 1

    iget v0, p0, Lcom/twilio/client/impl/useragent/config/MediaConfig;->sndPlayLatency:I

    return v0
.end method

.method public getSndRecLatency()I
    .locals 1

    iget v0, p0, Lcom/twilio/client/impl/useragent/config/MediaConfig;->sndRecLatency:I

    return v0
.end method

.method public isNoVAD()Z
    .locals 1

    iget-boolean v0, p0, Lcom/twilio/client/impl/useragent/config/MediaConfig;->noVAD:Z

    return v0
.end method
