.class public Lcom/weirdvoice/pjsip/player/impl/SimpleWavPlayerHandler;
.super Ljava/lang/Object;
.source "SimpleWavPlayerHandler.java"

# interfaces
.implements Lcom/weirdvoice/pjsip/player/IPlayerHandler;


# instance fields
.field private final callInfo:Lcom/weirdvoice/api/SipCallSession;

.field private final playerId:I

.field private final way:I


# direct methods
.method public constructor <init>(Lcom/weirdvoice/api/SipCallSession;Ljava/lang/String;I)V
    .locals 6
    .param p1, "callInfo"    # Lcom/weirdvoice/api/SipCallSession;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "way"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/weirdvoice/service/SipService$SameThreadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/weirdvoice/pjsip/player/impl/SimpleWavPlayerHandler;->callInfo:Lcom/weirdvoice/api/SipCallSession;

    .line 42
    iput p3, p0, Lcom/weirdvoice/pjsip/player/impl/SimpleWavPlayerHandler;->way:I

    .line 44
    const/4 v2, 0x1

    new-array v0, v2, [I

    .line 45
    .local v0, "plId":[I
    invoke-static {p2}, Lorg/pjsip/pjsua/pjsua;->pj_str_copy(Ljava/lang/String;)Lorg/pjsip/pjsua/pj_str_t;

    move-result-object v2

    const-wide/16 v4, 0x1

    invoke-static {v2, v4, v5, v0}, Lorg/pjsip/pjsua/pjsua;->player_create(Lorg/pjsip/pjsua/pj_str_t;J[I)I

    move-result v1

    .line 48
    .local v1, "status":I
    sget v2, Lorg/pjsip/pjsua/pjsuaConstants;->PJ_SUCCESS:I

    if-ne v1, v2, :cond_0

    .line 50
    const/4 v2, 0x0

    aget v2, v0, v2

    iput v2, p0, Lcom/weirdvoice/pjsip/player/impl/SimpleWavPlayerHandler;->playerId:I

    .line 54
    return-void

    .line 52
    :cond_0
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Cannot create player "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public startPlaying()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/weirdvoice/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 60
    iget v2, p0, Lcom/weirdvoice/pjsip/player/impl/SimpleWavPlayerHandler;->playerId:I

    invoke-static {v2}, Lorg/pjsip/pjsua/pjsua;->player_get_conf_port(I)I

    move-result v1

    .line 61
    .local v1, "wavPort":I
    iget v2, p0, Lcom/weirdvoice/pjsip/player/impl/SimpleWavPlayerHandler;->way:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 62
    iget-object v2, p0, Lcom/weirdvoice/pjsip/player/impl/SimpleWavPlayerHandler;->callInfo:Lcom/weirdvoice/api/SipCallSession;

    invoke-virtual {v2}, Lcom/weirdvoice/api/SipCallSession;->getConfPort()I

    move-result v0

    .line 63
    .local v0, "wavConfPort":I
    invoke-static {v1, v0}, Lorg/pjsip/pjsua/pjsua;->conf_connect(II)I

    .line 65
    .end local v0    # "wavConfPort":I
    :cond_0
    iget v2, p0, Lcom/weirdvoice/pjsip/player/impl/SimpleWavPlayerHandler;->way:I

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 66
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/pjsip/pjsua/pjsua;->conf_connect(II)I

    .line 69
    :cond_1
    iget v2, p0, Lcom/weirdvoice/pjsip/player/impl/SimpleWavPlayerHandler;->playerId:I

    const-wide/16 v4, 0x0

    invoke-static {v2, v4, v5}, Lorg/pjsip/pjsua/pjsua;->player_set_pos(IJ)I

    .line 70
    return-void
.end method

.method public stopPlaying()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/weirdvoice/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 74
    iget v0, p0, Lcom/weirdvoice/pjsip/player/impl/SimpleWavPlayerHandler;->playerId:I

    invoke-static {v0}, Lorg/pjsip/pjsua/pjsua;->player_destroy(I)I

    .line 75
    return-void
.end method
