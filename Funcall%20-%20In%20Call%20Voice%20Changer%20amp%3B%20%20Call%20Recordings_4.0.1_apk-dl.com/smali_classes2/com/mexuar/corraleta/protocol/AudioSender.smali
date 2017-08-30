.class public Lcom/mexuar/corraleta/protocol/AudioSender;
.super Ljava/lang/Object;
.source "AudioSender.java"


# instance fields
.field private _aif:Lcom/mexuar/corraleta/audio/AudioInterface;

.field private _astart:J

.field private _buff:[B

.field private _call:Lcom/mexuar/corraleta/protocol/Call;

.field private _cstart:J

.field private _done:Z

.field private _first:Z

.field private _formatBit:I

.field private _lastminisent:C

.field private _nextdue:J

.field private _stamp:I


# direct methods
.method constructor <init>(Lcom/mexuar/corraleta/audio/AudioInterface;Lcom/mexuar/corraleta/protocol/Call;)V
    .locals 3
    .param p1, "aif"    # Lcom/mexuar/corraleta/audio/AudioInterface;
    .param p2, "ca"    # Lcom/mexuar/corraleta/protocol/Call;

    .prologue
    const/4 v2, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-boolean v2, p0, Lcom/mexuar/corraleta/protocol/AudioSender;->_done:Z

    .line 56
    iput-object p2, p0, Lcom/mexuar/corraleta/protocol/AudioSender;->_call:Lcom/mexuar/corraleta/protocol/Call;

    .line 57
    iput-object p1, p0, Lcom/mexuar/corraleta/protocol/AudioSender;->_aif:Lcom/mexuar/corraleta/audio/AudioInterface;

    .line 58
    invoke-interface {p1}, Lcom/mexuar/corraleta/audio/AudioInterface;->getFormatBit()I

    move-result v0

    iput v0, p0, Lcom/mexuar/corraleta/protocol/AudioSender;->_formatBit:I

    .line 59
    iget-object v0, p0, Lcom/mexuar/corraleta/protocol/AudioSender;->_aif:Lcom/mexuar/corraleta/audio/AudioInterface;

    invoke-interface {v0}, Lcom/mexuar/corraleta/audio/AudioInterface;->getSampSz()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mexuar/corraleta/protocol/AudioSender;->_buff:[B

    .line 61
    iget-object v0, p0, Lcom/mexuar/corraleta/protocol/AudioSender;->_call:Lcom/mexuar/corraleta/protocol/Call;

    invoke-virtual {v0}, Lcom/mexuar/corraleta/protocol/Call;->getTimestamp()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/mexuar/corraleta/protocol/AudioSender;->_cstart:J

    .line 62
    iget-wide v0, p0, Lcom/mexuar/corraleta/protocol/AudioSender;->_cstart:J

    iput-wide v0, p0, Lcom/mexuar/corraleta/protocol/AudioSender;->_nextdue:J

    .line 63
    iput-char v2, p0, Lcom/mexuar/corraleta/protocol/AudioSender;->_lastminisent:C

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mexuar/corraleta/protocol/AudioSender;->_first:Z

    .line 66
    return-void
.end method


# virtual methods
.method public send()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    iget-boolean v7, p0, Lcom/mexuar/corraleta/protocol/AudioSender;->_done:Z

    if-nez v7, :cond_1

    .line 77
    iget-object v7, p0, Lcom/mexuar/corraleta/protocol/AudioSender;->_aif:Lcom/mexuar/corraleta/audio/AudioInterface;

    iget-object v8, p0, Lcom/mexuar/corraleta/protocol/AudioSender;->_buff:[B

    invoke-interface {v7, v8}, Lcom/mexuar/corraleta/audio/AudioInterface;->readWithTime([B)J

    move-result-wide v4

    .line 79
    .local v4, "stamp":J
    iget-wide v8, p0, Lcom/mexuar/corraleta/protocol/AudioSender;->_astart:J

    sub-long v8, v4, v8

    iget-wide v10, p0, Lcom/mexuar/corraleta/protocol/AudioSender;->_cstart:J

    add-long v2, v8, v10

    .line 80
    .local v2, "now":J
    iget-wide v8, p0, Lcom/mexuar/corraleta/protocol/AudioSender;->_nextdue:J

    long-to-int v7, v8

    iput v7, p0, Lcom/mexuar/corraleta/protocol/AudioSender;->_stamp:I

    .line 81
    const v7, 0xffff

    iget v8, p0, Lcom/mexuar/corraleta/protocol/AudioSender;->_stamp:I

    and-int/2addr v7, v8

    int-to-char v1, v7

    .line 82
    .local v1, "mstamp":C
    iget-boolean v7, p0, Lcom/mexuar/corraleta/protocol/AudioSender;->_first:Z

    if-nez v7, :cond_0

    iget-char v7, p0, Lcom/mexuar/corraleta/protocol/AudioSender;->_lastminisent:C

    if-ge v1, v7, :cond_2

    .line 84
    :cond_0
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/mexuar/corraleta/protocol/AudioSender;->_first:Z

    .line 85
    new-instance v6, Lcom/mexuar/corraleta/protocol/VoiceFrame;

    iget-object v7, p0, Lcom/mexuar/corraleta/protocol/AudioSender;->_call:Lcom/mexuar/corraleta/protocol/Call;

    invoke-direct {v6, v7}, Lcom/mexuar/corraleta/protocol/VoiceFrame;-><init>(Lcom/mexuar/corraleta/protocol/Call;)V

    .line 86
    .local v6, "vf":Lcom/mexuar/corraleta/protocol/VoiceFrame;
    iget-object v7, p0, Lcom/mexuar/corraleta/protocol/AudioSender;->_call:Lcom/mexuar/corraleta/protocol/Call;

    invoke-virtual {v7}, Lcom/mexuar/corraleta/protocol/Call;->getLno()Ljava/lang/Character;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Character;->charValue()C

    move-result v7

    iput v7, v6, Lcom/mexuar/corraleta/protocol/VoiceFrame;->_sCall:I

    .line 87
    iget-object v7, p0, Lcom/mexuar/corraleta/protocol/AudioSender;->_call:Lcom/mexuar/corraleta/protocol/Call;

    invoke-virtual {v7}, Lcom/mexuar/corraleta/protocol/Call;->getRno()Ljava/lang/Character;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Character;->charValue()C

    move-result v7

    iput v7, v6, Lcom/mexuar/corraleta/protocol/VoiceFrame;->_dCall:I

    .line 88
    iget v7, p0, Lcom/mexuar/corraleta/protocol/AudioSender;->_stamp:I

    int-to-long v8, v7

    invoke-virtual {v6, v8, v9}, Lcom/mexuar/corraleta/protocol/VoiceFrame;->setTimestampVal(J)V

    .line 89
    iget v7, p0, Lcom/mexuar/corraleta/protocol/AudioSender;->_formatBit:I

    iput v7, v6, Lcom/mexuar/corraleta/protocol/VoiceFrame;->_subclass:I

    .line 90
    iget-object v7, p0, Lcom/mexuar/corraleta/protocol/AudioSender;->_buff:[B

    invoke-virtual {v6, v7}, Lcom/mexuar/corraleta/protocol/VoiceFrame;->sendMe([B)V

    .line 91
    const-string v7, "sent Full voice frame"

    invoke-static {v7}, Lcom/mexuar/corraleta/protocol/Log;->debug(Ljava/lang/String;)V

    .line 103
    .end local v6    # "vf":Lcom/mexuar/corraleta/protocol/VoiceFrame;
    :goto_0
    iput-char v1, p0, Lcom/mexuar/corraleta/protocol/AudioSender;->_lastminisent:C

    .line 105
    iget-wide v8, p0, Lcom/mexuar/corraleta/protocol/AudioSender;->_nextdue:J

    const-wide/16 v10, 0x14

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/mexuar/corraleta/protocol/AudioSender;->_nextdue:J

    .line 109
    .end local v1    # "mstamp":C
    .end local v2    # "now":J
    .end local v4    # "stamp":J
    :cond_1
    return-void

    .line 96
    .restart local v1    # "mstamp":C
    .restart local v2    # "now":J
    .restart local v4    # "stamp":J
    :cond_2
    new-instance v0, Lcom/mexuar/corraleta/protocol/MiniFrame;

    iget-object v7, p0, Lcom/mexuar/corraleta/protocol/AudioSender;->_call:Lcom/mexuar/corraleta/protocol/Call;

    invoke-direct {v0, v7}, Lcom/mexuar/corraleta/protocol/MiniFrame;-><init>(Lcom/mexuar/corraleta/protocol/Call;)V

    .line 97
    .local v0, "mf":Lcom/mexuar/corraleta/protocol/MiniFrame;
    iget-object v7, p0, Lcom/mexuar/corraleta/protocol/AudioSender;->_call:Lcom/mexuar/corraleta/protocol/Call;

    invoke-virtual {v7}, Lcom/mexuar/corraleta/protocol/Call;->getLno()Ljava/lang/Character;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Character;->charValue()C

    move-result v7

    iput v7, v0, Lcom/mexuar/corraleta/protocol/MiniFrame;->_sCall:I

    .line 98
    int-to-long v8, v1

    invoke-virtual {v0, v8, v9}, Lcom/mexuar/corraleta/protocol/MiniFrame;->setTimestampVal(J)V

    .line 99
    iget-object v7, p0, Lcom/mexuar/corraleta/protocol/AudioSender;->_buff:[B

    invoke-virtual {v0, v7}, Lcom/mexuar/corraleta/protocol/MiniFrame;->sendMe([B)V

    .line 100
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "sent voice mini frame "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    div-int/lit8 v8, v1, 0x14

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/mexuar/corraleta/protocol/Log;->verb(Ljava/lang/String;)V

    goto :goto_0
.end method
