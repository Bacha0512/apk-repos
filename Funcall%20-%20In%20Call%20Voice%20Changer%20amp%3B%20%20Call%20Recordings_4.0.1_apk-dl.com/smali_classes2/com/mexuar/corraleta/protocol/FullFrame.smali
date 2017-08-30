.class public abstract Lcom/mexuar/corraleta/protocol/FullFrame;
.super Lcom/mexuar/corraleta/protocol/Frame;
.source "FullFrame.java"


# static fields
.field static final CONTROL:I = 0x4

.field static final DTMF:I = 0x1

.field static final HTML:I = 0x9

.field static final IAXCONTROL:I = 0x6

.field static final IMAGE:I = 0x8

.field private static final MAXRETRIES:I = 0x6

.field static final NULL:I = 0x5

.field private static final RETRYINTERVAL:I = 0x1f4

.field static final TEXT:I = 0x7

.field static final VIDEO:I = 0x3

.field static final VOICE:I = 0x2


# instance fields
.field _cbit:Z

.field _dCall:I

.field _frametype:I

.field _iamanack:Z

.field _iseq:I

.field _myAck:Lcom/mexuar/corraleta/protocol/FullFrame;

.field private _nextRetryTime:I

.field private _numRetries:I

.field _oseq:I

.field protected _outGoing:Lcom/mexuar/corraleta/util/ByteBuffer;

.field _retry:Z

.field _subclass:I


# direct methods
.method public constructor <init>(Lcom/mexuar/corraleta/protocol/Call;)V
    .locals 4
    .param p1, "call"    # Lcom/mexuar/corraleta/protocol/Call;

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/mexuar/corraleta/protocol/Frame;-><init>()V

    .line 153
    iput-object p1, p0, Lcom/mexuar/corraleta/protocol/FullFrame;->_call:Lcom/mexuar/corraleta/protocol/Call;

    .line 154
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mexuar/corraleta/protocol/FullFrame;->_fullBit:Z

    .line 155
    invoke-virtual {p1}, Lcom/mexuar/corraleta/protocol/Call;->getRno()Ljava/lang/Character;

    move-result-object v1

    .line 156
    .local v1, "r":Ljava/lang/Character;
    if-eqz v1, :cond_0

    .line 158
    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v2

    iput v2, p0, Lcom/mexuar/corraleta/protocol/FullFrame;->_dCall:I

    .line 160
    :cond_0
    invoke-virtual {p1}, Lcom/mexuar/corraleta/protocol/Call;->getLno()Ljava/lang/Character;

    move-result-object v0

    .line 161
    .local v0, "l":Ljava/lang/Character;
    if-eqz v0, :cond_1

    .line 163
    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v2

    iput v2, p0, Lcom/mexuar/corraleta/protocol/FullFrame;->_sCall:I

    .line 165
    :cond_1
    invoke-virtual {p1}, Lcom/mexuar/corraleta/protocol/Call;->getTimestamp()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p0, v2, v3}, Lcom/mexuar/corraleta/protocol/FullFrame;->setTimestampVal(J)V

    .line 166
    return-void
.end method

.method public constructor <init>(Lcom/mexuar/corraleta/protocol/Call;[B)V
    .locals 7
    .param p1, "call"    # Lcom/mexuar/corraleta/protocol/Call;
    .param p2, "bs"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 110
    invoke-direct {p0}, Lcom/mexuar/corraleta/protocol/Frame;-><init>()V

    .line 112
    invoke-static {p2}, Lcom/mexuar/corraleta/util/ByteBuffer;->wrap([B)Lcom/mexuar/corraleta/util/ByteBuffer;

    move-result-object v0

    .line 113
    .local v0, "buf":Lcom/mexuar/corraleta/util/ByteBuffer;
    invoke-virtual {v0}, Lcom/mexuar/corraleta/util/ByteBuffer;->getShort()S

    move-result v1

    iput v1, p0, Lcom/mexuar/corraleta/protocol/FullFrame;->_sCall:I

    .line 114
    iget v1, p0, Lcom/mexuar/corraleta/protocol/FullFrame;->_sCall:I

    if-gez v1, :cond_3

    .line 116
    iget v1, p0, Lcom/mexuar/corraleta/protocol/FullFrame;->_sCall:I

    and-int/lit16 v1, v1, 0x7fff

    iput v1, p0, Lcom/mexuar/corraleta/protocol/FullFrame;->_sCall:I

    .line 117
    iput-boolean v6, p0, Lcom/mexuar/corraleta/protocol/FullFrame;->_fullBit:Z

    .line 123
    invoke-virtual {v0}, Lcom/mexuar/corraleta/util/ByteBuffer;->getShort()S

    move-result v1

    iput v1, p0, Lcom/mexuar/corraleta/protocol/FullFrame;->_dCall:I

    .line 124
    iget v1, p0, Lcom/mexuar/corraleta/protocol/FullFrame;->_dCall:I

    if-gez v1, :cond_0

    .line 126
    iget v1, p0, Lcom/mexuar/corraleta/protocol/FullFrame;->_dCall:I

    and-int/lit16 v1, v1, 0x7fff

    iput v1, p0, Lcom/mexuar/corraleta/protocol/FullFrame;->_dCall:I

    .line 127
    iput-boolean v6, p0, Lcom/mexuar/corraleta/protocol/FullFrame;->_retry:Z

    .line 129
    :cond_0
    invoke-virtual {v0}, Lcom/mexuar/corraleta/util/ByteBuffer;->getInt()I

    move-result v1

    int-to-long v2, v1

    .line 130
    .local v2, "tst":J
    const-wide/16 v4, 0x1

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    const-wide v4, 0x100000000L

    add-long/2addr v2, v4

    .line 131
    :cond_1
    invoke-virtual {p0, v2, v3}, Lcom/mexuar/corraleta/protocol/FullFrame;->setTimestampVal(J)V

    .line 132
    invoke-virtual {v0}, Lcom/mexuar/corraleta/util/ByteBuffer;->get()B

    move-result v1

    invoke-virtual {p0, v1}, Lcom/mexuar/corraleta/protocol/FullFrame;->tint(B)I

    move-result v1

    iput v1, p0, Lcom/mexuar/corraleta/protocol/FullFrame;->_oseq:I

    .line 133
    invoke-virtual {v0}, Lcom/mexuar/corraleta/util/ByteBuffer;->get()B

    move-result v1

    invoke-virtual {p0, v1}, Lcom/mexuar/corraleta/protocol/FullFrame;->tint(B)I

    move-result v1

    iput v1, p0, Lcom/mexuar/corraleta/protocol/FullFrame;->_iseq:I

    .line 134
    invoke-virtual {v0}, Lcom/mexuar/corraleta/util/ByteBuffer;->get()B

    move-result v1

    iput v1, p0, Lcom/mexuar/corraleta/protocol/FullFrame;->_frametype:I

    .line 135
    invoke-virtual {v0}, Lcom/mexuar/corraleta/util/ByteBuffer;->get()B

    move-result v1

    iput v1, p0, Lcom/mexuar/corraleta/protocol/FullFrame;->_subclass:I

    .line 136
    iget v1, p0, Lcom/mexuar/corraleta/protocol/FullFrame;->_subclass:I

    if-gez v1, :cond_2

    .line 138
    iget v1, p0, Lcom/mexuar/corraleta/protocol/FullFrame;->_subclass:I

    and-int/lit8 v1, v1, 0x7f

    shl-int v1, v6, v1

    iput v1, p0, Lcom/mexuar/corraleta/protocol/FullFrame;->_subclass:I

    .line 139
    iput-boolean v6, p0, Lcom/mexuar/corraleta/protocol/FullFrame;->_cbit:Z

    .line 141
    :cond_2
    invoke-virtual {v0}, Lcom/mexuar/corraleta/util/ByteBuffer;->slice()Lcom/mexuar/corraleta/util/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/mexuar/corraleta/protocol/FullFrame;->_data:Lcom/mexuar/corraleta/util/ByteBuffer;

    .line 142
    iput-object p1, p0, Lcom/mexuar/corraleta/protocol/FullFrame;->_call:Lcom/mexuar/corraleta/protocol/Call;

    .line 143
    return-void

    .line 120
    .end local v2    # "tst":J
    :cond_3
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mexuar/corraleta/protocol/FullFrame;->_fullBit:Z

    .line 121
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v4, "Not a fullframe, but miniframe."

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static create(Lcom/mexuar/corraleta/protocol/Call;[B)Lcom/mexuar/corraleta/protocol/FullFrame;
    .locals 4
    .param p0, "call"    # Lcom/mexuar/corraleta/protocol/Call;
    .param p1, "bs"    # [B

    .prologue
    .line 179
    const/4 v1, 0x0

    .line 180
    .local v1, "ret":Lcom/mexuar/corraleta/protocol/FullFrame;
    array-length v2, p1

    const/16 v3, 0xc

    if-lt v2, v3, :cond_0

    .line 182
    const/16 v2, 0xa

    aget-byte v2, p1, v2

    and-int/lit8 v0, v2, 0x7f

    .line 183
    .local v0, "frametype":I
    packed-switch v0, :pswitch_data_0

    .line 195
    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "FullFrame type "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mexuar/corraleta/protocol/Log;->warn(Ljava/lang/String;)V

    .line 196
    new-instance v1, Lcom/mexuar/corraleta/protocol/FullFrame$1;

    .end local v1    # "ret":Lcom/mexuar/corraleta/protocol/FullFrame;
    invoke-direct {v1, p0, p1}, Lcom/mexuar/corraleta/protocol/FullFrame$1;-><init>(Lcom/mexuar/corraleta/protocol/Call;[B)V

    .line 207
    .end local v0    # "frametype":I
    .restart local v1    # "ret":Lcom/mexuar/corraleta/protocol/FullFrame;
    :cond_0
    :goto_0
    return-object v1

    .line 186
    .restart local v0    # "frametype":I
    :pswitch_1
    new-instance v1, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;

    .end local v1    # "ret":Lcom/mexuar/corraleta/protocol/FullFrame;
    invoke-direct {v1, p0, p1}, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;-><init>(Lcom/mexuar/corraleta/protocol/Call;[B)V

    .line 187
    .restart local v1    # "ret":Lcom/mexuar/corraleta/protocol/FullFrame;
    goto :goto_0

    .line 189
    :pswitch_2
    new-instance v1, Lcom/mexuar/corraleta/protocol/ControlFrame;

    .end local v1    # "ret":Lcom/mexuar/corraleta/protocol/FullFrame;
    invoke-direct {v1, p0, p1}, Lcom/mexuar/corraleta/protocol/ControlFrame;-><init>(Lcom/mexuar/corraleta/protocol/Call;[B)V

    .line 190
    .restart local v1    # "ret":Lcom/mexuar/corraleta/protocol/FullFrame;
    goto :goto_0

    .line 192
    :pswitch_3
    new-instance v1, Lcom/mexuar/corraleta/protocol/VoiceFrame;

    .end local v1    # "ret":Lcom/mexuar/corraleta/protocol/FullFrame;
    invoke-direct {v1, p0, p1}, Lcom/mexuar/corraleta/protocol/VoiceFrame;-><init>(Lcom/mexuar/corraleta/protocol/Call;[B)V

    .line 193
    .restart local v1    # "ret":Lcom/mexuar/corraleta/protocol/FullFrame;
    goto :goto_0

    .line 183
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setRetryBit()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 494
    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/FullFrame;->_outGoing:Lcom/mexuar/corraleta/util/ByteBuffer;

    if-eqz v1, :cond_0

    .line 496
    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/FullFrame;->_outGoing:Lcom/mexuar/corraleta/util/ByteBuffer;

    invoke-virtual {v1, v2}, Lcom/mexuar/corraleta/util/ByteBuffer;->getChar(I)C

    move-result v0

    .line 497
    .local v0, "old":C
    const v1, 0x8000

    or-int/2addr v1, v0

    int-to-char v0, v1

    .line 498
    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/FullFrame;->_outGoing:Lcom/mexuar/corraleta/util/ByteBuffer;

    invoke-virtual {v1, v2, v0}, Lcom/mexuar/corraleta/util/ByteBuffer;->putChar(IC)V

    .line 499
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mexuar/corraleta/protocol/FullFrame;->_retry:Z

    .line 501
    .end local v0    # "old":C
    :cond_0
    return-void
.end method


# virtual methods
.method arrived()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mexuar/corraleta/protocol/IAX2ProtocolException;
        }
    .end annotation

    .prologue
    .line 486
    invoke-virtual {p0}, Lcom/mexuar/corraleta/protocol/FullFrame;->dump()V

    .line 487
    return-void
.end method

.method commit(Lcom/mexuar/corraleta/protocol/FullFrame;)V
    .locals 0
    .param p1, "ack"    # Lcom/mexuar/corraleta/protocol/FullFrame;

    .prologue
    .line 440
    return-void
.end method

.method dump()V
    .locals 3

    .prologue
    .line 447
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Frame Dump\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 448
    .local v0, "d":Ljava/lang/StringBuffer;
    const-string v1, "\n\t Source Call = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/mexuar/corraleta/protocol/FullFrame;->_sCall:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 449
    const-string v1, "\n\t Dest Call = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/mexuar/corraleta/protocol/FullFrame;->_dCall:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 450
    const-string v1, "\n\t retry  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mexuar/corraleta/protocol/FullFrame;->_retry:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 451
    const-string v1, "\n\t timestamp Call = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/mexuar/corraleta/protocol/FullFrame;->_timestamp:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 452
    const-string v1, "\n\t OSequ no = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/mexuar/corraleta/protocol/FullFrame;->_oseq:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 453
    const-string v1, "\n\t ISeqNo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/mexuar/corraleta/protocol/FullFrame;->_iseq:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 454
    const-string v1, "\n\t Sub Class = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/mexuar/corraleta/protocol/FullFrame;->_subclass:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 455
    const-string v1, "\n\t Frame Type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/mexuar/corraleta/protocol/FullFrame;->_frametype:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 456
    const-string v1, "\n\t C Bit = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mexuar/corraleta/protocol/FullFrame;->_cbit:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 457
    const-string v1, "\n\t Full Frame = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mexuar/corraleta/protocol/FullFrame;->_fullBit:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 458
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "packet dump"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mexuar/corraleta/protocol/Log;->debug(Ljava/lang/String;)V

    .line 459
    return-void
.end method

.method public getScall()Ljava/lang/Character;
    .locals 3

    .prologue
    .line 247
    new-instance v0, Ljava/lang/Character;

    const v1, 0xffff

    iget v2, p0, Lcom/mexuar/corraleta/protocol/FullFrame;->_sCall:I

    and-int/2addr v1, v2

    int-to-char v1, v1

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

    return-object v0
.end method

.method public isANew()Z
    .locals 1

    .prologue
    .line 227
    const/4 v0, 0x0

    return v0
.end method

.method public isAck()Z
    .locals 1

    .prologue
    .line 237
    iget-boolean v0, p0, Lcom/mexuar/corraleta/protocol/FullFrame;->_iamanack:Z

    return v0
.end method

.method public isRetry()Z
    .locals 1

    .prologue
    .line 217
    iget-boolean v0, p0, Lcom/mexuar/corraleta/protocol/FullFrame;->_retry:Z

    return v0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 4
    .param p1, "inoutNtype"    # Ljava/lang/String;

    .prologue
    .line 419
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Time: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 420
    .local v0, "bu":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/FullFrame;->_call:Lcom/mexuar/corraleta/protocol/Call;

    invoke-virtual {v1}, Lcom/mexuar/corraleta/protocol/Call;->getTimestamp()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 421
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 422
    const-string v1, ", Timestamp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mexuar/corraleta/protocol/FullFrame;->getTimestampVal()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 423
    const-string v1, ", iseq: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/mexuar/corraleta/protocol/FullFrame;->_iseq:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 424
    const-string v1, ", oseq: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/mexuar/corraleta/protocol/FullFrame;->_oseq:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 425
    iget-boolean v1, p0, Lcom/mexuar/corraleta/protocol/FullFrame;->_retry:Z

    if-eqz v1, :cond_0

    .line 427
    const-string v1, ", retry"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 429
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mexuar/corraleta/protocol/Log;->debug(Ljava/lang/String;)V

    .line 430
    return-void
.end method

.method protected mkAck(I)Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;
    .locals 2
    .param p1, "sort"    # I

    .prologue
    .line 341
    new-instance v0, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;

    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/FullFrame;->_call:Lcom/mexuar/corraleta/protocol/Call;

    invoke-direct {v0, v1}, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;-><init>(Lcom/mexuar/corraleta/protocol/Call;)V

    .line 342
    .local v0, "ack":Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;
    iget v1, p0, Lcom/mexuar/corraleta/protocol/FullFrame;->_sCall:I

    iput v1, v0, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->_dCall:I

    .line 343
    iget v1, p0, Lcom/mexuar/corraleta/protocol/FullFrame;->_dCall:I

    iput v1, v0, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->_sCall:I

    .line 344
    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/FullFrame;->_call:Lcom/mexuar/corraleta/protocol/Call;

    invoke-virtual {v1}, Lcom/mexuar/corraleta/protocol/Call;->getIseq()I

    move-result v1

    iput v1, v0, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->_iseq:I

    .line 345
    sparse-switch p1, :sswitch_data_0

    .line 360
    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/FullFrame;->_call:Lcom/mexuar/corraleta/protocol/Call;

    invoke-virtual {v1}, Lcom/mexuar/corraleta/protocol/Call;->getOseqInc()I

    move-result v1

    iput v1, v0, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->_oseq:I

    .line 361
    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/FullFrame;->_call:Lcom/mexuar/corraleta/protocol/Call;

    invoke-virtual {v1}, Lcom/mexuar/corraleta/protocol/Call;->getIseq()I

    move-result v1

    iput v1, v0, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->_iseq:I

    .line 365
    :goto_0
    iput p1, v0, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->_subclass:I

    .line 366
    iput-object v0, p0, Lcom/mexuar/corraleta/protocol/FullFrame;->_myAck:Lcom/mexuar/corraleta/protocol/FullFrame;

    .line 367
    return-object v0

    .line 348
    :sswitch_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->_iamanack:Z

    .line 349
    invoke-virtual {p0}, Lcom/mexuar/corraleta/protocol/FullFrame;->getTimestamp()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->setTimestamp(Ljava/lang/Long;)V

    .line 350
    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/FullFrame;->_call:Lcom/mexuar/corraleta/protocol/Call;

    invoke-virtual {v1}, Lcom/mexuar/corraleta/protocol/Call;->getIseq()I

    move-result v1

    iput v1, v0, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->_iseq:I

    .line 351
    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/FullFrame;->_call:Lcom/mexuar/corraleta/protocol/Call;

    invoke-virtual {v1}, Lcom/mexuar/corraleta/protocol/Call;->getOseq()I

    move-result v1

    iput v1, v0, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->_oseq:I

    goto :goto_0

    .line 355
    :sswitch_1
    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/FullFrame;->_call:Lcom/mexuar/corraleta/protocol/Call;

    invoke-virtual {v1}, Lcom/mexuar/corraleta/protocol/Call;->getOseqInc()I

    move-result v1

    iput v1, v0, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->_oseq:I

    .line 356
    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/FullFrame;->_call:Lcom/mexuar/corraleta/protocol/Call;

    invoke-virtual {v1}, Lcom/mexuar/corraleta/protocol/Call;->getIseq()I

    move-result v1

    iput v1, v0, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->_iseq:I

    .line 357
    invoke-virtual {p0}, Lcom/mexuar/corraleta/protocol/FullFrame;->getTimestamp()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->setTimestamp(Ljava/lang/Long;)V

    goto :goto_0

    .line 345
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x4 -> :sswitch_0
        0xc -> :sswitch_1
    .end sparse-switch
.end method

.method public resendMe()Z
    .locals 4

    .prologue
    .line 309
    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/FullFrame;->_call:Lcom/mexuar/corraleta/protocol/Call;

    invoke-virtual {v1}, Lcom/mexuar/corraleta/protocol/Call;->getTimestamp()I

    move-result v0

    .line 311
    .local v0, "now":I
    iget v1, p0, Lcom/mexuar/corraleta/protocol/FullFrame;->_nextRetryTime:I

    if-ge v1, v0, :cond_1

    .line 314
    iget v1, p0, Lcom/mexuar/corraleta/protocol/FullFrame;->_numRetries:I

    const/4 v2, 0x5

    if-ge v1, v2, :cond_2

    .line 316
    iget-boolean v1, p0, Lcom/mexuar/corraleta/protocol/FullFrame;->_retry:Z

    if-nez v1, :cond_0

    .line 318
    invoke-direct {p0}, Lcom/mexuar/corraleta/protocol/FullFrame;->setRetryBit()V

    .line 320
    :cond_0
    invoke-virtual {p0}, Lcom/mexuar/corraleta/protocol/FullFrame;->sendFromStore()V

    .line 321
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "time "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " resending "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mexuar/corraleta/protocol/FullFrame;->getTimestampVal()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mexuar/corraleta/protocol/FullFrame;->_numRetries:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "th time."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mexuar/corraleta/protocol/Log;->warn(Ljava/lang/String;)V

    .line 326
    :goto_0
    iget v1, p0, Lcom/mexuar/corraleta/protocol/FullFrame;->_numRetries:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mexuar/corraleta/protocol/FullFrame;->_numRetries:I

    mul-int/lit16 v1, v1, 0x1f4

    add-int/2addr v1, v0

    iput v1, p0, Lcom/mexuar/corraleta/protocol/FullFrame;->_nextRetryTime:I

    .line 328
    :cond_1
    iget v1, p0, Lcom/mexuar/corraleta/protocol/FullFrame;->_numRetries:I

    const/4 v2, 0x6

    if-ge v1, v2, :cond_3

    const/4 v1, 0x1

    :goto_1
    return v1

    .line 324
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "time "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " NOT resending "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mexuar/corraleta/protocol/FullFrame;->getTimestampVal()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mexuar/corraleta/protocol/FullFrame;->_numRetries:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "th time."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mexuar/corraleta/protocol/Log;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 328
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected sendAck()V
    .locals 2

    .prologue
    .line 375
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/mexuar/corraleta/protocol/FullFrame;->mkAck(I)Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;

    move-result-object v0

    .line 376
    .local v0, "ack":Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;
    const-string v1, "Sending Ack"

    invoke-static {v1}, Lcom/mexuar/corraleta/protocol/Log;->debug(Ljava/lang/String;)V

    .line 377
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mexuar/corraleta/protocol/ProtocolControlFrame;->sendMe(Lcom/mexuar/corraleta/protocol/InfoElement;)V

    .line 378
    return-void
.end method

.method protected sendAndStore(Lcom/mexuar/corraleta/util/ByteBuffer;)V
    .locals 1
    .param p1, "b"    # Lcom/mexuar/corraleta/util/ByteBuffer;

    .prologue
    .line 401
    iput-object p1, p0, Lcom/mexuar/corraleta/protocol/FullFrame;->_outGoing:Lcom/mexuar/corraleta/util/ByteBuffer;

    .line 402
    iget-boolean v0, p0, Lcom/mexuar/corraleta/protocol/FullFrame;->_iamanack:Z

    if-nez v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/mexuar/corraleta/protocol/FullFrame;->_call:Lcom/mexuar/corraleta/protocol/Call;

    invoke-virtual {v0}, Lcom/mexuar/corraleta/protocol/Call;->getTimestamp()I

    move-result v0

    add-int/lit16 v0, v0, 0x1f4

    iput v0, p0, Lcom/mexuar/corraleta/protocol/FullFrame;->_nextRetryTime:I

    .line 405
    iget-object v0, p0, Lcom/mexuar/corraleta/protocol/FullFrame;->_call:Lcom/mexuar/corraleta/protocol/Call;

    invoke-virtual {v0, p0}, Lcom/mexuar/corraleta/protocol/Call;->addUnacked(Lcom/mexuar/corraleta/protocol/FullFrame;)V

    .line 407
    :cond_0
    const-string v0, "sent"

    invoke-virtual {p0, v0}, Lcom/mexuar/corraleta/protocol/FullFrame;->log(Ljava/lang/String;)V

    .line 408
    invoke-virtual {p0}, Lcom/mexuar/corraleta/protocol/FullFrame;->sendFromStore()V

    .line 409
    return-void
.end method

.method protected sendFromStore()V
    .locals 2

    .prologue
    .line 387
    iget-object v0, p0, Lcom/mexuar/corraleta/protocol/FullFrame;->_outGoing:Lcom/mexuar/corraleta/util/ByteBuffer;

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/mexuar/corraleta/protocol/FullFrame;->_call:Lcom/mexuar/corraleta/protocol/Call;

    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/FullFrame;->_outGoing:Lcom/mexuar/corraleta/util/ByteBuffer;

    invoke-virtual {v0, v1}, Lcom/mexuar/corraleta/protocol/Call;->send(Lcom/mexuar/corraleta/util/ByteBuffer;)V

    .line 391
    :cond_0
    return-void
.end method

.method public sendMe([B)V
    .locals 14
    .param p1, "payload"    # [B

    .prologue
    const-wide v12, 0x100000000L

    const v7, 0x8000

    const/4 v10, 0x1

    .line 258
    iget-object v6, p0, Lcom/mexuar/corraleta/protocol/FullFrame;->_call:Lcom/mexuar/corraleta/protocol/Call;

    invoke-virtual {v6}, Lcom/mexuar/corraleta/protocol/Call;->getOseqInc()I

    move-result v6

    iput v6, p0, Lcom/mexuar/corraleta/protocol/FullFrame;->_oseq:I

    .line 259
    iget-object v6, p0, Lcom/mexuar/corraleta/protocol/FullFrame;->_call:Lcom/mexuar/corraleta/protocol/Call;

    invoke-virtual {v6}, Lcom/mexuar/corraleta/protocol/Call;->getIseq()I

    move-result v6

    iput v6, p0, Lcom/mexuar/corraleta/protocol/FullFrame;->_iseq:I

    .line 260
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/mexuar/corraleta/protocol/FullFrame;->_cbit:Z

    .line 262
    array-length v6, p1

    add-int/lit8 v6, v6, 0xc

    invoke-static {v6}, Lcom/mexuar/corraleta/util/ByteBuffer;->allocate(I)Lcom/mexuar/corraleta/util/ByteBuffer;

    move-result-object v0

    .line 263
    .local v0, "buff":Lcom/mexuar/corraleta/util/ByteBuffer;
    iget v6, p0, Lcom/mexuar/corraleta/protocol/FullFrame;->_sCall:I

    or-int/2addr v6, v7

    int-to-char v6, v6

    invoke-virtual {v0, v6}, Lcom/mexuar/corraleta/util/ByteBuffer;->putChar(C)V

    .line 264
    iget v1, p0, Lcom/mexuar/corraleta/protocol/FullFrame;->_dCall:I

    .line 265
    .local v1, "rd":I
    iget-boolean v6, p0, Lcom/mexuar/corraleta/protocol/FullFrame;->_retry:Z

    if-eqz v6, :cond_0

    .line 267
    or-int/2addr v1, v7

    .line 269
    :cond_0
    int-to-char v6, v1

    invoke-virtual {v0, v6}, Lcom/mexuar/corraleta/util/ByteBuffer;->putChar(C)V

    .line 270
    invoke-virtual {p0}, Lcom/mexuar/corraleta/protocol/FullFrame;->getTimestampVal()J

    move-result-wide v4

    .line 271
    .local v4, "tst":J
    and-long v6, v12, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_1

    sub-long/2addr v4, v12

    .line 272
    :cond_1
    long-to-int v6, v4

    invoke-virtual {v0, v6}, Lcom/mexuar/corraleta/util/ByteBuffer;->putInt(I)V

    .line 273
    iget v6, p0, Lcom/mexuar/corraleta/protocol/FullFrame;->_oseq:I

    int-to-byte v6, v6

    invoke-virtual {v0, v6}, Lcom/mexuar/corraleta/util/ByteBuffer;->put(B)V

    .line 274
    iget v6, p0, Lcom/mexuar/corraleta/protocol/FullFrame;->_iseq:I

    int-to-byte v6, v6

    invoke-virtual {v0, v6}, Lcom/mexuar/corraleta/util/ByteBuffer;->put(B)V

    .line 275
    iget v6, p0, Lcom/mexuar/corraleta/protocol/FullFrame;->_frametype:I

    int-to-byte v6, v6

    invoke-virtual {v0, v6}, Lcom/mexuar/corraleta/util/ByteBuffer;->put(B)V

    .line 276
    iget v6, p0, Lcom/mexuar/corraleta/protocol/FullFrame;->_subclass:I

    const/16 v7, 0x80

    if-le v6, v7, :cond_2

    .line 278
    iput-boolean v10, p0, Lcom/mexuar/corraleta/protocol/FullFrame;->_cbit:Z

    .line 279
    const/4 v2, 0x0

    .local v2, "s":I
    :goto_0
    const/16 v6, 0x1f

    if-lt v2, v6, :cond_4

    .line 288
    .end local v2    # "s":I
    :cond_2
    :goto_1
    iget v3, p0, Lcom/mexuar/corraleta/protocol/FullFrame;->_subclass:I

    .line 289
    .local v3, "sc":I
    iget-boolean v6, p0, Lcom/mexuar/corraleta/protocol/FullFrame;->_cbit:Z

    if-eqz v6, :cond_3

    .line 291
    add-int/lit16 v3, v3, 0x80

    .line 293
    :cond_3
    int-to-byte v6, v3

    invoke-virtual {v0, v6}, Lcom/mexuar/corraleta/util/ByteBuffer;->put(B)V

    .line 294
    invoke-virtual {v0, p1}, Lcom/mexuar/corraleta/util/ByteBuffer;->put([B)V

    .line 295
    invoke-virtual {p0, v0}, Lcom/mexuar/corraleta/protocol/FullFrame;->sendAndStore(Lcom/mexuar/corraleta/util/ByteBuffer;)V

    .line 296
    return-void

    .line 281
    .end local v3    # "sc":I
    .restart local v2    # "s":I
    :cond_4
    shl-int v6, v10, v2

    iget v7, p0, Lcom/mexuar/corraleta/protocol/FullFrame;->_subclass:I

    and-int/2addr v6, v7

    if-eqz v6, :cond_5

    .line 283
    iput v2, p0, Lcom/mexuar/corraleta/protocol/FullFrame;->_subclass:I

    goto :goto_1

    .line 279
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method tint(B)I
    .locals 2
    .param p1, "b"    # B

    .prologue
    .line 470
    move v0, p1

    .line 471
    .local v0, "ret":I
    if-gez v0, :cond_0

    .line 473
    and-int/lit8 v1, p1, 0x7f

    add-int/lit16 v0, v1, 0x80

    .line 475
    :cond_0
    return v0
.end method
