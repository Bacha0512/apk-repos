.class public Lcom/mexuar/corraleta/protocol/Call;
.super Ljava/lang/Object;
.source "Call.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private _accepted:Z

.field private _ackedTo:I

.field private _answered:Z

.field private _audio:Lcom/mexuar/corraleta/audio/AudioInterface;

.field private _callIsInbound:Z

.field private _done:Z

.field private _farName:Ljava/lang/String;

.field private _farNo:Ljava/lang/String;

.field private _forReg:Z

.field private _forUnReg:Z

.field private _format:I

.field protected _frameQueue:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<[B>;"
        }
    .end annotation
.end field

.field private _hungupCauseCode:I

.field private _iseq:I

.field private _lno:Ljava/lang/Character;

.field private _nearName:Ljava/lang/String;

.field private _nearNo:Ljava/lang/String;

.field private _oldStamp:J

.field private _oseq:I

.field private _outbound:[Lcom/mexuar/corraleta/protocol/FullFrame;

.field private _password:Ljava/lang/String;

.field protected _peer:Lcom/mexuar/corraleta/protocol/Friend;

.field protected _process:Ljava/lang/Thread;

.field private _recvdFirstAudioFrame:Z

.field private _refresh:I

.field private _registered:Z

.field private _retry:Ljava/lang/Thread;

.field private _rno:Ljava/lang/Character;

.field private _say:Lcom/mexuar/corraleta/protocol/AudioSender;

.field private _stampTopWord:J

.field private _startStamp:J

.field private _timedout:Z

.field private _username:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/mexuar/corraleta/protocol/Friend;)V
    .locals 4
    .param p1, "source"    # Lcom/mexuar/corraleta/protocol/Friend;

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput v1, p0, Lcom/mexuar/corraleta/protocol/Call;->_oseq:I

    .line 69
    iput v1, p0, Lcom/mexuar/corraleta/protocol/Call;->_iseq:I

    .line 70
    iput v1, p0, Lcom/mexuar/corraleta/protocol/Call;->_ackedTo:I

    .line 71
    iput-boolean v1, p0, Lcom/mexuar/corraleta/protocol/Call;->_done:Z

    .line 72
    iput-wide v2, p0, Lcom/mexuar/corraleta/protocol/Call;->_startStamp:J

    .line 77
    iput-object v0, p0, Lcom/mexuar/corraleta/protocol/Call;->_farNo:Ljava/lang/String;

    .line 78
    iput-object v0, p0, Lcom/mexuar/corraleta/protocol/Call;->_nearNo:Ljava/lang/String;

    .line 79
    iput-object v0, p0, Lcom/mexuar/corraleta/protocol/Call;->_farName:Ljava/lang/String;

    .line 80
    iput-object v0, p0, Lcom/mexuar/corraleta/protocol/Call;->_nearName:Ljava/lang/String;

    .line 87
    const/16 v0, 0x3c

    iput v0, p0, Lcom/mexuar/corraleta/protocol/Call;->_refresh:I

    .line 89
    const/16 v0, 0x100

    new-array v0, v0, [Lcom/mexuar/corraleta/protocol/FullFrame;

    iput-object v0, p0, Lcom/mexuar/corraleta/protocol/Call;->_outbound:[Lcom/mexuar/corraleta/protocol/FullFrame;

    .line 90
    iput-boolean v1, p0, Lcom/mexuar/corraleta/protocol/Call;->_forReg:Z

    .line 91
    iput-boolean v1, p0, Lcom/mexuar/corraleta/protocol/Call;->_forUnReg:Z

    .line 94
    iput-boolean v1, p0, Lcom/mexuar/corraleta/protocol/Call;->_recvdFirstAudioFrame:Z

    .line 95
    iput-boolean v1, p0, Lcom/mexuar/corraleta/protocol/Call;->_timedout:Z

    .line 98
    iput-wide v2, p0, Lcom/mexuar/corraleta/protocol/Call;->_stampTopWord:J

    .line 99
    iput-wide v2, p0, Lcom/mexuar/corraleta/protocol/Call;->_oldStamp:J

    .line 113
    iput-object p1, p0, Lcom/mexuar/corraleta/protocol/Call;->_peer:Lcom/mexuar/corraleta/protocol/Friend;

    .line 114
    iput-boolean v1, p0, Lcom/mexuar/corraleta/protocol/Call;->_callIsInbound:Z

    .line 115
    iget-object v0, p0, Lcom/mexuar/corraleta/protocol/Call;->_peer:Lcom/mexuar/corraleta/protocol/Friend;

    invoke-virtual {v0}, Lcom/mexuar/corraleta/protocol/Friend;->getFreeCallNo()Ljava/lang/Character;

    move-result-object v0

    iput-object v0, p0, Lcom/mexuar/corraleta/protocol/Call;->_lno:Ljava/lang/Character;

    .line 116
    invoke-direct {p0}, Lcom/mexuar/corraleta/protocol/Call;->startRcv()V

    .line 118
    return-void
.end method

.method public constructor <init>(Lcom/mexuar/corraleta/protocol/Friend;ZZ)V
    .locals 0
    .param p1, "friend"    # Lcom/mexuar/corraleta/protocol/Friend;
    .param p2, "forRegister"    # Z
    .param p3, "forUnregister"    # Z

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lcom/mexuar/corraleta/protocol/Call;-><init>(Lcom/mexuar/corraleta/protocol/Friend;)V

    .line 133
    iput-boolean p2, p0, Lcom/mexuar/corraleta/protocol/Call;->_forReg:Z

    .line 134
    iput-boolean p3, p0, Lcom/mexuar/corraleta/protocol/Call;->_forUnReg:Z

    .line 135
    return-void
.end method

.method static synthetic access$0(Lcom/mexuar/corraleta/protocol/Call;)Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/mexuar/corraleta/protocol/Call;->_done:Z

    return v0
.end method

.method private ackIt(ILcom/mexuar/corraleta/protocol/FullFrame;)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "ack"    # Lcom/mexuar/corraleta/protocol/FullFrame;

    .prologue
    .line 380
    iget-object v0, p0, Lcom/mexuar/corraleta/protocol/Call;->_outbound:[Lcom/mexuar/corraleta/protocol/FullFrame;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/mexuar/corraleta/protocol/Call;->_outbound:[Lcom/mexuar/corraleta/protocol/FullFrame;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/mexuar/corraleta/protocol/FullFrame;->commit(Lcom/mexuar/corraleta/protocol/FullFrame;)V

    .line 383
    iget-object v0, p0, Lcom/mexuar/corraleta/protocol/Call;->_outbound:[Lcom/mexuar/corraleta/protocol/FullFrame;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    .line 385
    :cond_0
    return-void
.end method

.method private declared-synchronized impliedAck(Lcom/mexuar/corraleta/protocol/FullFrame;)V
    .locals 4
    .param p1, "ff"    # Lcom/mexuar/corraleta/protocol/FullFrame;

    .prologue
    .line 350
    monitor-enter p0

    :try_start_0
    iget v0, p1, Lcom/mexuar/corraleta/protocol/FullFrame;->_iseq:I

    .line 351
    .local v0, "happyto":I
    iget v2, p0, Lcom/mexuar/corraleta/protocol/Call;->_ackedTo:I

    if-ge v0, v2, :cond_0

    .line 353
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ack wrap "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " < "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mexuar/corraleta/protocol/Call;->_ackedTo:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mexuar/corraleta/protocol/Log;->debug(Ljava/lang/String;)V

    .line 354
    iget v1, p0, Lcom/mexuar/corraleta/protocol/Call;->_ackedTo:I

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x100

    if-lt v1, v2, :cond_1

    .line 358
    const/4 v1, 0x0

    :goto_1
    if-lt v1, v0, :cond_2

    .line 363
    .end local v1    # "i":I
    :cond_0
    iget v1, p0, Lcom/mexuar/corraleta/protocol/Call;->_ackedTo:I

    .restart local v1    # "i":I
    :goto_2
    if-lt v1, v0, :cond_3

    .line 367
    iput v0, p0, Lcom/mexuar/corraleta/protocol/Call;->_ackedTo:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 368
    monitor-exit p0

    return-void

    .line 356
    :cond_1
    :try_start_1
    invoke-direct {p0, v1, p1}, Lcom/mexuar/corraleta/protocol/Call;->ackIt(ILcom/mexuar/corraleta/protocol/FullFrame;)V

    .line 354
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 360
    :cond_2
    invoke-direct {p0, v1, p1}, Lcom/mexuar/corraleta/protocol/Call;->ackIt(ILcom/mexuar/corraleta/protocol/FullFrame;)V

    .line 358
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 365
    :cond_3
    invoke-direct {p0, v1, p1}, Lcom/mexuar/corraleta/protocol/Call;->ackIt(ILcom/mexuar/corraleta/protocol/FullFrame;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 363
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 350
    .end local v0    # "happyto":I
    .end local v1    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private startAudioRec()V
    .locals 2

    .prologue
    .line 555
    new-instance v0, Lcom/mexuar/corraleta/protocol/AudioSender;

    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/Call;->_audio:Lcom/mexuar/corraleta/audio/AudioInterface;

    invoke-direct {v0, v1, p0}, Lcom/mexuar/corraleta/protocol/AudioSender;-><init>(Lcom/mexuar/corraleta/audio/AudioInterface;Lcom/mexuar/corraleta/protocol/Call;)V

    iput-object v0, p0, Lcom/mexuar/corraleta/protocol/Call;->_say:Lcom/mexuar/corraleta/protocol/AudioSender;

    .line 556
    iget-object v0, p0, Lcom/mexuar/corraleta/protocol/Call;->_audio:Lcom/mexuar/corraleta/audio/AudioInterface;

    invoke-interface {v0}, Lcom/mexuar/corraleta/audio/AudioInterface;->startRec()J

    .line 557
    iget-object v0, p0, Lcom/mexuar/corraleta/protocol/Call;->_audio:Lcom/mexuar/corraleta/audio/AudioInterface;

    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/Call;->_say:Lcom/mexuar/corraleta/protocol/AudioSender;

    invoke-interface {v0, v1}, Lcom/mexuar/corraleta/audio/AudioInterface;->setAudioSender(Lcom/mexuar/corraleta/protocol/AudioSender;)V

    .line 558
    return-void
.end method

.method private declared-synchronized startRcv()V
    .locals 4

    .prologue
    .line 186
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/mexuar/corraleta/protocol/Call;->_frameQueue:Ljava/util/Vector;

    .line 187
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "call-"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/mexuar/corraleta/protocol/Call;->_lno:Ljava/lang/Character;

    invoke-virtual {v3}, Ljava/lang/Character;->charValue()C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-rcv"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/mexuar/corraleta/protocol/Call;->_process:Ljava/lang/Thread;

    .line 188
    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/Call;->_process:Ljava/lang/Thread;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setPriority(I)V

    .line 191
    invoke-virtual {p0}, Lcom/mexuar/corraleta/protocol/Call;->resetClock()V

    .line 193
    new-instance v0, Lcom/mexuar/corraleta/protocol/Call$1;

    invoke-direct {v0, p0}, Lcom/mexuar/corraleta/protocol/Call$1;-><init>(Lcom/mexuar/corraleta/protocol/Call;)V

    .line 210
    .local v0, "retry":Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "call-"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/mexuar/corraleta/protocol/Call;->_lno:Ljava/lang/Character;

    invoke-virtual {v3}, Ljava/lang/Character;->charValue()C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-retry"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/mexuar/corraleta/protocol/Call;->_retry:Ljava/lang/Thread;

    .line 211
    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/Call;->_retry:Ljava/lang/Thread;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setPriority(I)V

    .line 213
    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/Call;->_process:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 214
    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/Call;->_retry:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    monitor-exit p0

    return-void

    .line 186
    .end local v0    # "retry":Ljava/lang/Runnable;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method acceptedCall()V
    .locals 1

    .prologue
    .line 933
    iget-object v0, p0, Lcom/mexuar/corraleta/protocol/Call;->_peer:Lcom/mexuar/corraleta/protocol/Friend;

    invoke-virtual {v0, p0}, Lcom/mexuar/corraleta/protocol/Friend;->tellGuiNewCall(Lcom/mexuar/corraleta/protocol/Call;)V

    .line 934
    return-void
.end method

.method public declared-synchronized addFrame([B)V
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 228
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mexuar/corraleta/protocol/Call;->_frameQueue:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 229
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    monitor-exit p0

    return-void

    .line 228
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized addIn(Lcom/mexuar/corraleta/protocol/FullFrame;)Lcom/mexuar/corraleta/protocol/FullFrame;
    .locals 4
    .param p1, "ff"    # Lcom/mexuar/corraleta/protocol/FullFrame;

    .prologue
    .line 836
    monitor-enter p0

    const/4 v1, 0x0

    .line 837
    .local v1, "ret":Lcom/mexuar/corraleta/protocol/FullFrame;
    :try_start_0
    iget v2, p1, Lcom/mexuar/corraleta/protocol/FullFrame;->_oseq:I

    .line 838
    .local v2, "where":I
    invoke-virtual {p0}, Lcom/mexuar/corraleta/protocol/Call;->getIseq()I

    move-result v0

    .line 839
    .local v0, "expected":I
    if-ne v0, v2, :cond_0

    .line 841
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Lcom/mexuar/corraleta/protocol/Call;->setIseq(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 842
    move-object v1, p1

    .line 844
    :cond_0
    monitor-exit p0

    return-object v1

    .line 836
    .end local v0    # "expected":I
    .end local v2    # "where":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method declared-synchronized addUnacked(Lcom/mexuar/corraleta/protocol/FullFrame;)V
    .locals 2
    .param p1, "outb"    # Lcom/mexuar/corraleta/protocol/FullFrame;

    .prologue
    .line 656
    monitor-enter p0

    :try_start_0
    iget v0, p1, Lcom/mexuar/corraleta/protocol/FullFrame;->_oseq:I

    .line 657
    .local v0, "where":I
    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/Call;->_outbound:[Lcom/mexuar/corraleta/protocol/FullFrame;

    aput-object p1, v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 658
    monitor-exit p0

    return-void

    .line 656
    .end local v0    # "where":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public answer()V
    .locals 2

    .prologue
    .line 951
    new-instance v0, Lcom/mexuar/corraleta/protocol/ControlFrame;

    invoke-direct {v0, p0}, Lcom/mexuar/corraleta/protocol/ControlFrame;-><init>(Lcom/mexuar/corraleta/protocol/Call;)V

    .line 952
    .local v0, "ans":Lcom/mexuar/corraleta/protocol/ControlFrame;
    invoke-virtual {v0}, Lcom/mexuar/corraleta/protocol/ControlFrame;->sendAnswer()V

    .line 953
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/mexuar/corraleta/protocol/Call;->setAnswered(Z)V

    .line 954
    return-void
.end method

.method public audioWrite([BJ)V
    .locals 6
    .param p1, "bs"    # [B
    .param p2, "ts"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 615
    iget-object v2, p0, Lcom/mexuar/corraleta/protocol/Call;->_audio:Lcom/mexuar/corraleta/audio/AudioInterface;

    if-eqz v2, :cond_1

    .line 617
    iget-wide v2, p0, Lcom/mexuar/corraleta/protocol/Call;->_stampTopWord:J

    add-long v0, v2, p2

    .line 618
    .local v0, "stamp":J
    iget-wide v2, p0, Lcom/mexuar/corraleta/protocol/Call;->_oldStamp:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    const-wide/32 v2, 0xc350

    iget-wide v4, p0, Lcom/mexuar/corraleta/protocol/Call;->_oldStamp:J

    sub-long/2addr v4, v0

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 620
    const-string v2, "Wrapped timestamp on rcv"

    invoke-static {v2}, Lcom/mexuar/corraleta/protocol/Log;->debug(Ljava/lang/String;)V

    .line 621
    iget-wide v2, p0, Lcom/mexuar/corraleta/protocol/Call;->_stampTopWord:J

    const-wide/32 v4, 0x10000

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/mexuar/corraleta/protocol/Call;->_stampTopWord:J

    .line 622
    iget-wide v2, p0, Lcom/mexuar/corraleta/protocol/Call;->_stampTopWord:J

    add-long v0, v2, p2

    .line 623
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "New timestamp top bits are "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/mexuar/corraleta/protocol/Call;->_stampTopWord:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mexuar/corraleta/protocol/Log;->debug(Ljava/lang/String;)V

    .line 625
    :cond_0
    iput-wide v0, p0, Lcom/mexuar/corraleta/protocol/Call;->_oldStamp:J

    .line 626
    iget-object v2, p0, Lcom/mexuar/corraleta/protocol/Call;->_audio:Lcom/mexuar/corraleta/audio/AudioInterface;

    invoke-interface {v2, p1, v0, v1}, Lcom/mexuar/corraleta/audio/AudioInterface;->write([BJ)V

    .line 628
    .end local v0    # "stamp":J
    :cond_1
    return-void
.end method

.method frameDeal([B)V
    .locals 3
    .param p1, "bs"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mexuar/corraleta/protocol/IAX2ProtocolException;
        }
    .end annotation

    .prologue
    .line 315
    const/4 v0, 0x0

    .line 316
    .local v0, "f":Lcom/mexuar/corraleta/protocol/Frame;
    const/4 v2, 0x0

    aget-byte v2, p1, v2

    if-gez v2, :cond_2

    .line 319
    invoke-static {p0, p1}, Lcom/mexuar/corraleta/protocol/FullFrame;->create(Lcom/mexuar/corraleta/protocol/Call;[B)Lcom/mexuar/corraleta/protocol/FullFrame;

    move-result-object v1

    .line 320
    .local v1, "ff":Lcom/mexuar/corraleta/protocol/FullFrame;
    invoke-direct {p0, v1}, Lcom/mexuar/corraleta/protocol/Call;->impliedAck(Lcom/mexuar/corraleta/protocol/FullFrame;)V

    .line 321
    invoke-virtual {v1}, Lcom/mexuar/corraleta/protocol/FullFrame;->isAck()Z

    move-result v2

    if-nez v2, :cond_1

    .line 323
    invoke-virtual {p0, v1}, Lcom/mexuar/corraleta/protocol/Call;->addIn(Lcom/mexuar/corraleta/protocol/FullFrame;)Lcom/mexuar/corraleta/protocol/FullFrame;

    move-result-object v0

    .line 328
    :goto_0
    invoke-virtual {v1}, Lcom/mexuar/corraleta/protocol/FullFrame;->ack()V

    .line 334
    .end local v1    # "ff":Lcom/mexuar/corraleta/protocol/FullFrame;
    :goto_1
    if-eqz v0, :cond_0

    .line 336
    invoke-virtual {v0}, Lcom/mexuar/corraleta/protocol/Frame;->arrived()V

    .line 338
    :cond_0
    return-void

    .line 326
    .restart local v1    # "ff":Lcom/mexuar/corraleta/protocol/FullFrame;
    :cond_1
    const-string v2, "ignoring oseq in ack"

    invoke-static {v2}, Lcom/mexuar/corraleta/protocol/Log;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 331
    .end local v1    # "ff":Lcom/mexuar/corraleta/protocol/FullFrame;
    :cond_2
    new-instance v0, Lcom/mexuar/corraleta/protocol/MiniFrame;

    .end local v0    # "f":Lcom/mexuar/corraleta/protocol/Frame;
    invoke-direct {v0, p0, p1}, Lcom/mexuar/corraleta/protocol/MiniFrame;-><init>(Lcom/mexuar/corraleta/protocol/Call;[B)V

    .restart local v0    # "f":Lcom/mexuar/corraleta/protocol/Frame;
    goto :goto_1
.end method

.method public fullVoiceFrameRcvd(J)V
    .locals 5
    .param p1, "stamp"    # J

    .prologue
    .line 637
    const-wide/32 v0, -0x10000

    and-long/2addr v0, p1

    iput-wide v0, p0, Lcom/mexuar/corraleta/protocol/Call;->_stampTopWord:J

    .line 638
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "New timestamp top bits are "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/mexuar/corraleta/protocol/Call;->_stampTopWord:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mexuar/corraleta/protocol/Log;->debug(Ljava/lang/String;)V

    .line 640
    iget-object v0, p0, Lcom/mexuar/corraleta/protocol/Call;->_audio:Lcom/mexuar/corraleta/audio/AudioInterface;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mexuar/corraleta/protocol/Call;->_recvdFirstAudioFrame:Z

    if-nez v0, :cond_0

    .line 642
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mexuar/corraleta/protocol/Call;->_recvdFirstAudioFrame:Z

    .line 643
    iget-object v0, p0, Lcom/mexuar/corraleta/protocol/Call;->_audio:Lcom/mexuar/corraleta/audio/AudioInterface;

    invoke-interface {v0}, Lcom/mexuar/corraleta/audio/AudioInterface;->stopRinging()V

    .line 645
    :cond_0
    return-void
.end method

.method getAccepted()Z
    .locals 1

    .prologue
    .line 544
    iget-boolean v0, p0, Lcom/mexuar/corraleta/protocol/Call;->_accepted:Z

    return v0
.end method

.method getAudioFace()Lcom/mexuar/corraleta/audio/AudioInterface;
    .locals 1

    .prologue
    .line 1061
    iget-object v0, p0, Lcom/mexuar/corraleta/protocol/Call;->_peer:Lcom/mexuar/corraleta/protocol/Friend;

    invoke-virtual {v0}, Lcom/mexuar/corraleta/protocol/Friend;->getAudioFace()Lcom/mexuar/corraleta/audio/AudioInterface;

    move-result-object v0

    return-object v0
.end method

.method public getFarName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 989
    iget-object v0, p0, Lcom/mexuar/corraleta/protocol/Call;->_farName:Ljava/lang/String;

    return-object v0
.end method

.method public getFarNo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 965
    iget-object v0, p0, Lcom/mexuar/corraleta/protocol/Call;->_farNo:Ljava/lang/String;

    return-object v0
.end method

.method getFrameSz()I
    .locals 2

    .prologue
    .line 1046
    const/4 v0, 0x0

    .line 1047
    .local v0, "ret":I
    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/Call;->_audio:Lcom/mexuar/corraleta/audio/AudioInterface;

    if-eqz v1, :cond_0

    .line 1049
    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/Call;->_audio:Lcom/mexuar/corraleta/audio/AudioInterface;

    invoke-interface {v1}, Lcom/mexuar/corraleta/audio/AudioInterface;->getSampSz()I

    move-result v0

    .line 1051
    :cond_0
    return v0
.end method

.method public getHungupCauseCode()I
    .locals 1

    .prologue
    .line 584
    iget v0, p0, Lcom/mexuar/corraleta/protocol/Call;->_hungupCauseCode:I

    return v0
.end method

.method public getIsInbound()Z
    .locals 1

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/mexuar/corraleta/protocol/Call;->_callIsInbound:Z

    return v0
.end method

.method getIseq()I
    .locals 1

    .prologue
    .line 417
    iget v0, p0, Lcom/mexuar/corraleta/protocol/Call;->_iseq:I

    return v0
.end method

.method public getLno()Ljava/lang/Character;
    .locals 1

    .prologue
    .line 671
    iget-object v0, p0, Lcom/mexuar/corraleta/protocol/Call;->_lno:Ljava/lang/Character;

    return-object v0
.end method

.method public getNearName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1001
    iget-object v0, p0, Lcom/mexuar/corraleta/protocol/Call;->_nearName:Ljava/lang/String;

    return-object v0
.end method

.method public getNearNo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 977
    iget-object v0, p0, Lcom/mexuar/corraleta/protocol/Call;->_nearNo:Ljava/lang/String;

    return-object v0
.end method

.method declared-synchronized getOseq()I
    .locals 1

    .prologue
    .line 407
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/mexuar/corraleta/protocol/Call;->_oseq:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getOseqInc()I
    .locals 2

    .prologue
    .line 395
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/mexuar/corraleta/protocol/Call;->_oseq:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/mexuar/corraleta/protocol/Call;->_oseq:I

    .line 396
    .local v0, "nos":I
    rem-int/lit16 v0, v0, 0x100
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 397
    monitor-exit p0

    return v0

    .line 395
    .end local v0    # "nos":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lcom/mexuar/corraleta/protocol/Call;->_password:Ljava/lang/String;

    return-object v0
.end method

.method getRegistered()Z
    .locals 1

    .prologue
    .line 527
    iget-boolean v0, p0, Lcom/mexuar/corraleta/protocol/Call;->_registered:Z

    return v0
.end method

.method public getRno()Ljava/lang/Character;
    .locals 1

    .prologue
    .line 685
    iget-object v0, p0, Lcom/mexuar/corraleta/protocol/Call;->_rno:Ljava/lang/Character;

    return-object v0
.end method

.method public getStartTimestamp()J
    .locals 2

    .prologue
    .line 695
    iget-wide v0, p0, Lcom/mexuar/corraleta/protocol/Call;->_startStamp:J

    return-wide v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 3

    .prologue
    .line 882
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v1, "Call "

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/mexuar/corraleta/protocol/Call;->_callIsInbound:Z

    if-eqz v1, :cond_0

    const-string v1, " from "

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mexuar/corraleta/protocol/Call;->_farNo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 883
    .local v0, "ret":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/mexuar/corraleta/protocol/Call;->_answered:Z

    if-eqz v1, :cond_1

    const-string v1, " connected "

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 884
    return-object v0

    .line 882
    .end local v0    # "ret":Ljava/lang/String;
    :cond_0
    const-string v1, " to "

    goto :goto_0

    .line 883
    .restart local v0    # "ret":Ljava/lang/String;
    :cond_1
    const-string v1, " in progress "

    goto :goto_1
.end method

.method public getTimestamp()I
    .locals 4

    .prologue
    .line 490
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 491
    .local v0, "now":J
    iget-wide v2, p0, Lcom/mexuar/corraleta/protocol/Call;->_startStamp:J

    sub-long v2, v0, v2

    long-to-int v2, v2

    return v2
.end method

.method gotAckToNew(Lcom/mexuar/corraleta/protocol/FullFrame;)V
    .locals 2
    .param p1, "ack"    # Lcom/mexuar/corraleta/protocol/FullFrame;

    .prologue
    .line 855
    iget-object v0, p0, Lcom/mexuar/corraleta/protocol/Call;->_rno:Ljava/lang/Character;

    if-nez v0, :cond_0

    .line 857
    const v0, 0xffff

    iget v1, p1, Lcom/mexuar/corraleta/protocol/FullFrame;->_sCall:I

    and-int/2addr v0, v1

    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    iput-object v0, p0, Lcom/mexuar/corraleta/protocol/Call;->_rno:Ljava/lang/Character;

    .line 859
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Setting rno = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/Call;->_rno:Ljava/lang/Character;

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mexuar/corraleta/protocol/Log;->debug(Ljava/lang/String;)V

    .line 860
    iget-object v0, p0, Lcom/mexuar/corraleta/protocol/Call;->_peer:Lcom/mexuar/corraleta/protocol/Friend;

    invoke-virtual {v0, p0}, Lcom/mexuar/corraleta/protocol/Friend;->gotAckToNew(Lcom/mexuar/corraleta/protocol/Call;)V

    .line 861
    return-void
.end method

.method public hangup()V
    .locals 1

    .prologue
    .line 894
    new-instance v0, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;

    invoke-direct {v0, p0}, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;-><init>(Lcom/mexuar/corraleta/protocol/Call;)V

    .line 895
    .local v0, "cal":Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;
    invoke-virtual {v0}, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->sendHangup()V

    .line 896
    return-void
.end method

.method hungup(I)V
    .locals 1
    .param p1, "causecode"    # I

    .prologue
    .line 595
    iput p1, p0, Lcom/mexuar/corraleta/protocol/Call;->_hungupCauseCode:I

    .line 596
    invoke-virtual {p0}, Lcom/mexuar/corraleta/protocol/Call;->removeSelf()V

    .line 597
    sget-object v0, Lorg/androvoip/ui/DialerActivity;->dialer_context:Lorg/androvoip/ui/DialerActivity;

    invoke-virtual {v0}, Lorg/androvoip/ui/DialerActivity;->finish()V

    .line 598
    return-void
.end method

.method public isAnswered()Z
    .locals 1

    .prologue
    .line 943
    iget-boolean v0, p0, Lcom/mexuar/corraleta/protocol/Call;->_answered:Z

    return v0
.end method

.method public isForReg()Z
    .locals 1

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/mexuar/corraleta/protocol/Call;->_forReg:Z

    return v0
.end method

.method public isForUnReg()Z
    .locals 1

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/mexuar/corraleta/protocol/Call;->_forUnReg:Z

    return v0
.end method

.method isTimedout()Z
    .locals 1

    .prologue
    .line 822
    iget-boolean v0, p0, Lcom/mexuar/corraleta/protocol/Call;->_timedout:Z

    return v0
.end method

.method public newCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "calledNo"    # Ljava/lang/String;
    .param p4, "callingNo"    # Ljava/lang/String;
    .param p5, "callingName"    # Ljava/lang/String;

    .prologue
    .line 464
    invoke-virtual {p0}, Lcom/mexuar/corraleta/protocol/Call;->resetClock()V

    .line 465
    new-instance v0, Lcom/mexuar/corraleta/protocol/ProtocolControlFrameNew;

    invoke-direct {v0, p0}, Lcom/mexuar/corraleta/protocol/ProtocolControlFrameNew;-><init>(Lcom/mexuar/corraleta/protocol/Call;)V

    .line 466
    .local v0, "cal":Lcom/mexuar/corraleta/protocol/ProtocolControlFrameNew;
    iput-object p2, p0, Lcom/mexuar/corraleta/protocol/Call;->_password:Ljava/lang/String;

    .line 467
    iput-object p3, p0, Lcom/mexuar/corraleta/protocol/Call;->_farNo:Ljava/lang/String;

    .line 468
    iput-object p4, p0, Lcom/mexuar/corraleta/protocol/Call;->_nearNo:Ljava/lang/String;

    .line 469
    iput-object p5, p0, Lcom/mexuar/corraleta/protocol/Call;->_nearName:Ljava/lang/String;

    .line 470
    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/Call;->_lno:Ljava/lang/Character;

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/mexuar/corraleta/protocol/ProtocolControlFrameNew;->sendNew(Ljava/lang/Character;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    return-void
.end method

.method public newCallFrom(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3
    .param p1, "callingNo"    # Ljava/lang/String;
    .param p2, "calledNo"    # Ljava/lang/String;
    .param p3, "callingName"    # Ljava/lang/String;
    .param p4, "username"    # Ljava/lang/String;

    .prologue
    .line 914
    const/4 v0, 0x0

    .line 915
    .local v0, "ret":Ljava/lang/Boolean;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Call.newCallFrom: calledNo="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", callingNo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", callingName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", username="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mexuar/corraleta/protocol/Log;->debug(Ljava/lang/String;)V

    .line 916
    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/Call;->_farNo:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 919
    iput-object p1, p0, Lcom/mexuar/corraleta/protocol/Call;->_farNo:Ljava/lang/String;

    .line 920
    iput-object p3, p0, Lcom/mexuar/corraleta/protocol/Call;->_farName:Ljava/lang/String;

    .line 921
    iput-object p2, p0, Lcom/mexuar/corraleta/protocol/Call;->_nearNo:Ljava/lang/String;

    .line 922
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mexuar/corraleta/protocol/Call;->_callIsInbound:Z

    .line 923
    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/Call;->_peer:Lcom/mexuar/corraleta/protocol/Friend;

    invoke-virtual {v1, p0}, Lcom/mexuar/corraleta/protocol/Friend;->willAccept(Lcom/mexuar/corraleta/protocol/Call;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 925
    :cond_0
    return-object v0
.end method

.method register()V
    .locals 3

    .prologue
    .line 739
    new-instance v0, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;

    invoke-direct {v0, p0}, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;-><init>(Lcom/mexuar/corraleta/protocol/Call;)V

    .line 740
    .local v0, "regreq":Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;
    const/16 v1, 0x3c

    iput v1, p0, Lcom/mexuar/corraleta/protocol/Call;->_refresh:I

    .line 741
    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/Call;->_username:Ljava/lang/String;

    iget v2, p0, Lcom/mexuar/corraleta/protocol/Call;->_refresh:I

    invoke-virtual {v0, v1, v2}, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->sendRegReq(Ljava/lang/String;I)V

    .line 742
    return-void
.end method

.method public declared-synchronized removeSelf()V
    .locals 2

    .prologue
    .line 499
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Removing call "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/Call;->_lno:Ljava/lang/Character;

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mexuar/corraleta/protocol/Log;->debug(Ljava/lang/String;)V

    .line 500
    iget-object v0, p0, Lcom/mexuar/corraleta/protocol/Call;->_peer:Lcom/mexuar/corraleta/protocol/Friend;

    invoke-virtual {v0, p0}, Lcom/mexuar/corraleta/protocol/Friend;->removeCall(Lcom/mexuar/corraleta/protocol/Call;)V

    .line 501
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mexuar/corraleta/protocol/Call;->_done:Z

    .line 502
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 503
    iget-object v0, p0, Lcom/mexuar/corraleta/protocol/Call;->_audio:Lcom/mexuar/corraleta/audio/AudioInterface;

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Lcom/mexuar/corraleta/protocol/Call;->_audio:Lcom/mexuar/corraleta/audio/AudioInterface;

    invoke-interface {v0}, Lcom/mexuar/corraleta/audio/AudioInterface;->stopPlay()V

    .line 506
    iget-object v0, p0, Lcom/mexuar/corraleta/protocol/Call;->_audio:Lcom/mexuar/corraleta/audio/AudioInterface;

    invoke-interface {v0}, Lcom/mexuar/corraleta/audio/AudioInterface;->stopRinging()V

    .line 507
    iget-object v0, p0, Lcom/mexuar/corraleta/protocol/Call;->_audio:Lcom/mexuar/corraleta/audio/AudioInterface;

    invoke-interface {v0}, Lcom/mexuar/corraleta/audio/AudioInterface;->stopRec()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 509
    :cond_0
    monitor-exit p0

    return-void

    .line 499
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method resendUnacked()V
    .locals 7

    .prologue
    .line 787
    iget v3, p0, Lcom/mexuar/corraleta/protocol/Call;->_oseq:I

    .line 788
    .local v3, "osq":I
    iget v5, p0, Lcom/mexuar/corraleta/protocol/Call;->_ackedTo:I

    if-ge v3, v5, :cond_0

    .line 790
    add-int/lit16 v3, v3, 0x100

    .line 792
    :cond_0
    const/4 v4, 0x0

    .line 793
    .local v4, "timedout":Z
    iget v1, p0, Lcom/mexuar/corraleta/protocol/Call;->_ackedTo:I

    .local v1, "i":I
    :goto_0
    iget v5, p0, Lcom/mexuar/corraleta/protocol/Call;->_oseq:I

    if-le v1, v5, :cond_2

    .line 808
    :goto_1
    if-eqz v4, :cond_1

    .line 810
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/mexuar/corraleta/protocol/Call;->_timedout:Z

    .line 811
    invoke-virtual {p0}, Lcom/mexuar/corraleta/protocol/Call;->removeSelf()V

    .line 813
    :cond_1
    return-void

    .line 795
    :cond_2
    rem-int/lit16 v2, v1, 0x100

    .line 796
    .local v2, "n":I
    iget-object v5, p0, Lcom/mexuar/corraleta/protocol/Call;->_outbound:[Lcom/mexuar/corraleta/protocol/FullFrame;

    aget-object v0, v5, v2

    .line 797
    .local v0, "ff":Lcom/mexuar/corraleta/protocol/FullFrame;
    if-eqz v0, :cond_3

    .line 799
    invoke-virtual {v0}, Lcom/mexuar/corraleta/protocol/FullFrame;->resendMe()Z

    move-result v5

    if-nez v5, :cond_3

    .line 801
    const-string v5, "outbound has max retries - timing out"

    invoke-virtual {v0, v5}, Lcom/mexuar/corraleta/protocol/FullFrame;->log(Ljava/lang/String;)V

    .line 802
    iget-object v5, p0, Lcom/mexuar/corraleta/protocol/Call;->_outbound:[Lcom/mexuar/corraleta/protocol/FullFrame;

    const/4 v6, 0x0

    aput-object v6, v5, v2

    .line 803
    const/4 v4, 0x1

    .line 804
    goto :goto_1

    .line 793
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method resetClock()V
    .locals 2

    .prologue
    .line 717
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mexuar/corraleta/protocol/Call;->_startStamp:J

    .line 718
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    .line 241
    :cond_0
    iget-boolean v4, p0, Lcom/mexuar/corraleta/protocol/Call;->_done:Z

    if-eqz v4, :cond_2

    .line 289
    const-string v4, "In call Clean up"

    invoke-static {v4}, Lcom/mexuar/corraleta/protocol/Log;->debug(Ljava/lang/String;)V

    .line 291
    iget-object v4, p0, Lcom/mexuar/corraleta/protocol/Call;->_audio:Lcom/mexuar/corraleta/audio/AudioInterface;

    if-eqz v4, :cond_1

    .line 293
    iget-object v4, p0, Lcom/mexuar/corraleta/protocol/Call;->_audio:Lcom/mexuar/corraleta/audio/AudioInterface;

    invoke-interface {v4}, Lcom/mexuar/corraleta/audio/AudioInterface;->stopPlay()V

    .line 294
    iget-object v4, p0, Lcom/mexuar/corraleta/protocol/Call;->_audio:Lcom/mexuar/corraleta/audio/AudioInterface;

    invoke-interface {v4}, Lcom/mexuar/corraleta/audio/AudioInterface;->stopRec()V

    .line 295
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/mexuar/corraleta/protocol/Call;->_audio:Lcom/mexuar/corraleta/audio/AudioInterface;

    .line 299
    :cond_1
    return-void

    .line 243
    :cond_2
    const/4 v4, 0x0

    new-array v1, v4, [Ljava/lang/Object;

    .line 244
    .local v1, "frames":[Ljava/lang/Object;
    monitor-enter p0

    .line 248
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    :goto_0
    :try_start_1
    iget-object v4, p0, Lcom/mexuar/corraleta/protocol/Call;->_frameQueue:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v3

    .local v3, "sz":I
    if-lez v3, :cond_3

    .line 260
    new-array v1, v3, [Ljava/lang/Object;

    .line 261
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-lt v2, v3, :cond_4

    .line 265
    iget-object v4, p0, Lcom/mexuar/corraleta/protocol/Call;->_frameQueue:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->removeAllElements()V

    .line 244
    .end local v2    # "i":I
    :cond_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 272
    array-length v4, v1

    .line 276
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    array-length v4, v1

    if-ge v2, v4, :cond_0

    .line 280
    :try_start_2
    aget-object v4, v1, v2

    check-cast v4, [B

    invoke-virtual {p0, v4}, Lcom/mexuar/corraleta/protocol/Call;->frameDeal([B)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 276
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 263
    :cond_4
    :try_start_3
    iget-object v4, p0, Lcom/mexuar/corraleta/protocol/Call;->_frameQueue:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v1, v2

    .line 261
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 244
    .end local v2    # "i":I
    .end local v3    # "sz":I
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .line 281
    .restart local v2    # "i":I
    .restart local v3    # "sz":I
    :catch_0
    move-exception v0

    .line 283
    .local v0, "ex1":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 249
    .end local v0    # "ex1":Ljava/lang/Throwable;
    .end local v2    # "i":I
    .end local v3    # "sz":I
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method public send(Lcom/mexuar/corraleta/util/ByteBuffer;)V
    .locals 1
    .param p1, "bs"    # Lcom/mexuar/corraleta/util/ByteBuffer;

    .prologue
    .line 440
    iget-boolean v0, p0, Lcom/mexuar/corraleta/protocol/Call;->_done:Z

    if-nez v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/mexuar/corraleta/protocol/Call;->_peer:Lcom/mexuar/corraleta/protocol/Friend;

    invoke-virtual {v0, p1}, Lcom/mexuar/corraleta/protocol/Friend;->send(Lcom/mexuar/corraleta/util/ByteBuffer;)V

    .line 444
    :cond_0
    return-void
.end method

.method public sendDTMF(C)V
    .locals 1
    .param p1, "c"    # C

    .prologue
    .line 872
    new-instance v0, Lcom/mexuar/corraleta/protocol/DtmfFrame;

    invoke-direct {v0, p0, p1}, Lcom/mexuar/corraleta/protocol/DtmfFrame;-><init>(Lcom/mexuar/corraleta/protocol/Call;C)V

    .line 873
    return-void
.end method

.method sendPoke()V
    .locals 1

    .prologue
    .line 758
    new-instance v0, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;

    invoke-direct {v0, p0}, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;-><init>(Lcom/mexuar/corraleta/protocol/Call;)V

    .line 759
    .local v0, "pokereq":Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;
    invoke-virtual {p0}, Lcom/mexuar/corraleta/protocol/Call;->resetClock()V

    .line 760
    invoke-virtual {v0}, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->sendPoke()V

    .line 761
    return-void
.end method

.method setAccepted(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 539
    iput-boolean p1, p0, Lcom/mexuar/corraleta/protocol/Call;->_accepted:Z

    .line 540
    return-void
.end method

.method setAnswered(Z)V
    .locals 2
    .param p1, "b"    # Z

    .prologue
    .line 569
    iget-boolean v0, p0, Lcom/mexuar/corraleta/protocol/Call;->_answered:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 571
    iget-object v0, p0, Lcom/mexuar/corraleta/protocol/Call;->_audio:Lcom/mexuar/corraleta/audio/AudioInterface;

    invoke-interface {v0}, Lcom/mexuar/corraleta/audio/AudioInterface;->stopRinging()V

    .line 572
    invoke-direct {p0}, Lcom/mexuar/corraleta/protocol/Call;->startAudioRec()V

    .line 574
    :cond_0
    iput-boolean p1, p0, Lcom/mexuar/corraleta/protocol/Call;->_answered:Z

    .line 575
    iget-object v0, p0, Lcom/mexuar/corraleta/protocol/Call;->_peer:Lcom/mexuar/corraleta/protocol/Friend;

    invoke-virtual {v0, p0}, Lcom/mexuar/corraleta/protocol/Friend;->setAnswered(Lcom/mexuar/corraleta/protocol/Call;)V

    .line 577
    sget-object v0, Lorg/androvoip/ui/DialerActivity;->dialer_context:Lorg/androvoip/ui/DialerActivity;

    const-string v1, "Answered"

    invoke-virtual {v0, v1}, Lorg/androvoip/ui/DialerActivity;->setStatus(Ljava/lang/String;)V

    .line 578
    sget-object v0, Lorg/androvoip/ui/DialerActivity;->dialer_context:Lorg/androvoip/ui/DialerActivity;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Lorg/androvoip/ui/DialerActivity;->startCallTimer(I)V

    .line 580
    return-void
.end method

.method setAudioFormat(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "format"    # Ljava/lang/Integer;

    .prologue
    .line 1027
    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/Call;->_peer:Lcom/mexuar/corraleta/protocol/Friend;

    invoke-virtual {v1}, Lcom/mexuar/corraleta/protocol/Friend;->getAudioFace()Lcom/mexuar/corraleta/audio/AudioInterface;

    move-result-object v0

    .line 1028
    .local v0, "base":Lcom/mexuar/corraleta/audio/AudioInterface;
    invoke-interface {v0, p1}, Lcom/mexuar/corraleta/audio/AudioInterface;->getByFormat(Ljava/lang/Integer;)Lcom/mexuar/corraleta/audio/AudioInterface;

    move-result-object v1

    iput-object v1, p0, Lcom/mexuar/corraleta/protocol/Call;->_audio:Lcom/mexuar/corraleta/audio/AudioInterface;

    .line 1029
    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/Call;->_audio:Lcom/mexuar/corraleta/audio/AudioInterface;

    if-eqz v1, :cond_0

    .line 1031
    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/Call;->_audio:Lcom/mexuar/corraleta/audio/AudioInterface;

    invoke-interface {v1}, Lcom/mexuar/corraleta/audio/AudioInterface;->getFormatBit()I

    move-result v1

    iput v1, p0, Lcom/mexuar/corraleta/protocol/Call;->_format:I

    .line 1032
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "using audio format = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/mexuar/corraleta/protocol/Call;->_format:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mexuar/corraleta/protocol/Log;->debug(Ljava/lang/String;)V

    .line 1037
    :goto_0
    return-void

    .line 1035
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cant set audio format "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mexuar/corraleta/protocol/Log;->warn(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setIsInbound(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 165
    iput-boolean p1, p0, Lcom/mexuar/corraleta/protocol/Call;->_callIsInbound:Z

    .line 166
    return-void
.end method

.method setIseq(I)V
    .locals 1
    .param p1, "next"    # I

    .prologue
    .line 428
    rem-int/lit16 v0, p1, 0x100

    iput v0, p0, Lcom/mexuar/corraleta/protocol/Call;->_iseq:I

    .line 429
    return-void
.end method

.method setPong(Z)V
    .locals 2
    .param p1, "b"    # Z

    .prologue
    .line 771
    invoke-virtual {p0}, Lcom/mexuar/corraleta/protocol/Call;->getTimestamp()I

    move-result v0

    .line 772
    .local v0, "roundtrip":I
    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/Call;->_peer:Lcom/mexuar/corraleta/protocol/Friend;

    invoke-virtual {v1, p1, v0}, Lcom/mexuar/corraleta/protocol/Friend;->setPong(ZI)V

    .line 773
    return-void
.end method

.method setRegistered(Z)V
    .locals 2
    .param p1, "b"    # Z

    .prologue
    .line 520
    iput-boolean p1, p0, Lcom/mexuar/corraleta/protocol/Call;->_registered:Z

    .line 521
    iget-object v0, p0, Lcom/mexuar/corraleta/protocol/Call;->_peer:Lcom/mexuar/corraleta/protocol/Friend;

    invoke-virtual {v0, p1}, Lcom/mexuar/corraleta/protocol/Friend;->setRegistered(Z)V

    .line 522
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Call registered = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mexuar/corraleta/protocol/Log;->debug(Ljava/lang/String;)V

    .line 523
    return-void
.end method

.method setRinging()V
    .locals 2

    .prologue
    .line 1009
    iget-boolean v0, p0, Lcom/mexuar/corraleta/protocol/Call;->_recvdFirstAudioFrame:Z

    if-nez v0, :cond_0

    .line 1011
    iget-object v0, p0, Lcom/mexuar/corraleta/protocol/Call;->_audio:Lcom/mexuar/corraleta/audio/AudioInterface;

    invoke-interface {v0}, Lcom/mexuar/corraleta/audio/AudioInterface;->startRinging()V

    .line 1013
    :cond_0
    iget-object v0, p0, Lcom/mexuar/corraleta/protocol/Call;->_peer:Lcom/mexuar/corraleta/protocol/Friend;

    invoke-virtual {v0, p0}, Lcom/mexuar/corraleta/protocol/Friend;->gotRinging(Lcom/mexuar/corraleta/protocol/Call;)V

    .line 1014
    const-string v0, "going to make a remote ringing noise...!"

    invoke-static {v0}, Lcom/mexuar/corraleta/protocol/Log;->debug(Ljava/lang/String;)V

    .line 1016
    sget-object v0, Lorg/androvoip/ui/DialerActivity;->dialer_context:Lorg/androvoip/ui/DialerActivity;

    const-string v1, "Ringing"

    invoke-virtual {v0, v1}, Lorg/androvoip/ui/DialerActivity;->setStatus(Ljava/lang/String;)V

    .line 1017
    return-void
.end method

.method public setRno(Ljava/lang/Character;)V
    .locals 0
    .param p1, "d"    # Ljava/lang/Character;

    .prologue
    .line 707
    iput-object p1, p0, Lcom/mexuar/corraleta/protocol/Call;->_rno:Ljava/lang/Character;

    .line 708
    return-void
.end method

.method public setUnameNpass(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 730
    iput-object p2, p0, Lcom/mexuar/corraleta/protocol/Call;->_password:Ljava/lang/String;

    .line 731
    iput-object p1, p0, Lcom/mexuar/corraleta/protocol/Call;->_username:Ljava/lang/String;

    .line 732
    return-void
.end method

.method unregister()V
    .locals 2

    .prologue
    .line 749
    new-instance v0, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;

    invoke-direct {v0, p0}, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;-><init>(Lcom/mexuar/corraleta/protocol/Call;)V

    .line 750
    .local v0, "regrel":Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;
    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/Call;->_username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->sendRegRel(Ljava/lang/String;)V

    .line 751
    return-void
.end method
