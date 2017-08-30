.class Lcom/mexuar/corraleta/protocol/ProtocolControlFrameNew;
.super Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;
.source "ProtocolControlFrameNew.java"


# direct methods
.method public constructor <init>(Lcom/mexuar/corraleta/protocol/Call;)V
    .locals 2
    .param p1, "p0"    # Lcom/mexuar/corraleta/protocol/Call;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;-><init>(Lcom/mexuar/corraleta/protocol/Call;)V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/mexuar/corraleta/protocol/ProtocolControlFrameNew;->_dCall:I

    .line 40
    const/4 v0, 0x1

    iput v0, p0, Lcom/mexuar/corraleta/protocol/ProtocolControlFrameNew;->_subclass:I

    .line 41
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/mexuar/corraleta/protocol/ProtocolControlFrameNew;->setTimestampVal(J)V

    .line 42
    iget-object v0, p0, Lcom/mexuar/corraleta/protocol/ProtocolControlFrameNew;->_call:Lcom/mexuar/corraleta/protocol/Call;

    invoke-virtual {v0}, Lcom/mexuar/corraleta/protocol/Call;->resetClock()V

    .line 43
    return-void
.end method

.method public constructor <init>(Lcom/mexuar/corraleta/protocol/Call;[B)V
    .locals 0
    .param p1, "p0"    # Lcom/mexuar/corraleta/protocol/Call;
    .param p2, "p1"    # [B

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;-><init>(Lcom/mexuar/corraleta/protocol/Call;[B)V

    .line 54
    return-void
.end method


# virtual methods
.method commit(Lcom/mexuar/corraleta/protocol/FullFrame;)V
    .locals 1
    .param p1, "ack"    # Lcom/mexuar/corraleta/protocol/FullFrame;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/mexuar/corraleta/protocol/ProtocolControlFrameNew;->_call:Lcom/mexuar/corraleta/protocol/Call;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/mexuar/corraleta/protocol/ProtocolControlFrameNew;->_call:Lcom/mexuar/corraleta/protocol/Call;

    invoke-virtual {v0, p1}, Lcom/mexuar/corraleta/protocol/Call;->gotAckToNew(Lcom/mexuar/corraleta/protocol/FullFrame;)V

    .line 135
    :cond_0
    const-string v0, "Commit on new called"

    invoke-static {v0}, Lcom/mexuar/corraleta/protocol/Log;->debug(Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method public isANew()Z
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x1

    return v0
.end method

.method public sendNew(Ljava/lang/Character;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "cno"    # Ljava/lang/Character;
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "calledNo"    # Ljava/lang/String;
    .param p4, "callingNo"    # Ljava/lang/String;
    .param p5, "callingName"    # Ljava/lang/String;

    .prologue
    .line 100
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ProtocolControlFrameNew.sendNew: calledNo="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 101
    const-string v4, ", callingNo="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 102
    const-string v4, ", callingName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 103
    const-string v4, ", username="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 100
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mexuar/corraleta/protocol/Log;->debug(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v3

    iput v3, p0, Lcom/mexuar/corraleta/protocol/ProtocolControlFrameNew;->_sCall:I

    .line 105
    iget-object v3, p0, Lcom/mexuar/corraleta/protocol/ProtocolControlFrameNew;->_call:Lcom/mexuar/corraleta/protocol/Call;

    invoke-virtual {v3}, Lcom/mexuar/corraleta/protocol/Call;->getIseq()I

    move-result v3

    iput v3, p0, Lcom/mexuar/corraleta/protocol/ProtocolControlFrameNew;->_iseq:I

    .line 106
    iget-object v3, p0, Lcom/mexuar/corraleta/protocol/ProtocolControlFrameNew;->_call:Lcom/mexuar/corraleta/protocol/Call;

    invoke-virtual {v3}, Lcom/mexuar/corraleta/protocol/Call;->getOseqInc()I

    move-result v3

    iput v3, p0, Lcom/mexuar/corraleta/protocol/ProtocolControlFrameNew;->_oseq:I

    .line 108
    new-instance v2, Lcom/mexuar/corraleta/protocol/InfoElement;

    invoke-direct {v2}, Lcom/mexuar/corraleta/protocol/InfoElement;-><init>()V

    .line 109
    .local v2, "ie":Lcom/mexuar/corraleta/protocol/InfoElement;
    iput-object p3, v2, Lcom/mexuar/corraleta/protocol/InfoElement;->calledNo:Ljava/lang/String;

    .line 110
    iput-object p4, v2, Lcom/mexuar/corraleta/protocol/InfoElement;->callingNo:Ljava/lang/String;

    .line 111
    iput-object p5, v2, Lcom/mexuar/corraleta/protocol/InfoElement;->callingName:Ljava/lang/String;

    .line 112
    iput-object p2, v2, Lcom/mexuar/corraleta/protocol/InfoElement;->username:Ljava/lang/String;

    .line 113
    iget-object v3, p0, Lcom/mexuar/corraleta/protocol/ProtocolControlFrameNew;->_call:Lcom/mexuar/corraleta/protocol/Call;

    invoke-virtual {v3}, Lcom/mexuar/corraleta/protocol/Call;->getAudioFace()Lcom/mexuar/corraleta/audio/AudioInterface;

    move-result-object v0

    .line 114
    .local v0, "a":Lcom/mexuar/corraleta/audio/AudioInterface;
    invoke-interface {v0}, Lcom/mexuar/corraleta/audio/AudioInterface;->supportedCodecs()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 115
    .local v1, "format":I
    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v1}, Ljava/lang/Integer;-><init>(I)V

    iput-object v3, v2, Lcom/mexuar/corraleta/protocol/InfoElement;->format:Ljava/lang/Integer;

    .line 116
    new-instance v3, Ljava/lang/Integer;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    iput-object v3, v2, Lcom/mexuar/corraleta/protocol/InfoElement;->version:Ljava/lang/Integer;

    .line 117
    invoke-interface {v0}, Lcom/mexuar/corraleta/audio/AudioInterface;->codecPrefString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    iput-object v3, v2, Lcom/mexuar/corraleta/protocol/InfoElement;->codec_prefs:[B

    .line 119
    const-string v3, "Sending initial NEW"

    invoke-static {v3}, Lcom/mexuar/corraleta/protocol/Log;->debug(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0, v2}, Lcom/mexuar/corraleta/protocol/ProtocolControlFrameNew;->sendMe(Lcom/mexuar/corraleta/protocol/InfoElement;)V

    .line 121
    return-void
.end method
