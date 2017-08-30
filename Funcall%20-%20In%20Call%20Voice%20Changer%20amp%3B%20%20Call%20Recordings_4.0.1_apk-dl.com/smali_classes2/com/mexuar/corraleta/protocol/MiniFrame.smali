.class public Lcom/mexuar/corraleta/protocol/MiniFrame;
.super Lcom/mexuar/corraleta/protocol/Frame;
.source "MiniFrame.java"


# instance fields
.field private _buff:Lcom/mexuar/corraleta/util/ByteBuffer;


# direct methods
.method public constructor <init>(Lcom/mexuar/corraleta/protocol/Call;)V
    .locals 1
    .param p1, "call"    # Lcom/mexuar/corraleta/protocol/Call;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/mexuar/corraleta/protocol/Frame;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/mexuar/corraleta/protocol/MiniFrame;->_call:Lcom/mexuar/corraleta/protocol/Call;

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mexuar/corraleta/protocol/MiniFrame;->_fullBit:Z

    .line 54
    return-void
.end method

.method public constructor <init>(Lcom/mexuar/corraleta/protocol/Call;[B)V
    .locals 4
    .param p1, "call"    # Lcom/mexuar/corraleta/protocol/Call;
    .param p2, "bs"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/mexuar/corraleta/protocol/Frame;-><init>()V

    .line 67
    invoke-static {p2}, Lcom/mexuar/corraleta/util/ByteBuffer;->wrap([B)Lcom/mexuar/corraleta/util/ByteBuffer;

    move-result-object v0

    .line 68
    .local v0, "buf":Lcom/mexuar/corraleta/util/ByteBuffer;
    invoke-virtual {v0}, Lcom/mexuar/corraleta/util/ByteBuffer;->getShort()S

    move-result v1

    iput v1, p0, Lcom/mexuar/corraleta/protocol/MiniFrame;->_sCall:I

    .line 69
    iget v1, p0, Lcom/mexuar/corraleta/protocol/MiniFrame;->_sCall:I

    if-gez v1, :cond_0

    .line 70
    iget v1, p0, Lcom/mexuar/corraleta/protocol/MiniFrame;->_sCall:I

    and-int/lit16 v1, v1, 0x7fff

    iput v1, p0, Lcom/mexuar/corraleta/protocol/MiniFrame;->_sCall:I

    .line 71
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mexuar/corraleta/protocol/MiniFrame;->_fullBit:Z

    .line 72
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Not a miniframe, but fullframe."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 74
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mexuar/corraleta/protocol/MiniFrame;->_fullBit:Z

    .line 76
    invoke-virtual {v0}, Lcom/mexuar/corraleta/util/ByteBuffer;->getChar()C

    move-result v1

    int-to-long v2, v1

    invoke-virtual {p0, v2, v3}, Lcom/mexuar/corraleta/protocol/MiniFrame;->setTimestampVal(J)V

    .line 77
    invoke-virtual {v0}, Lcom/mexuar/corraleta/util/ByteBuffer;->slice()Lcom/mexuar/corraleta/util/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/mexuar/corraleta/protocol/MiniFrame;->_data:Lcom/mexuar/corraleta/util/ByteBuffer;

    .line 78
    iput-object p1, p0, Lcom/mexuar/corraleta/protocol/MiniFrame;->_call:Lcom/mexuar/corraleta/protocol/Call;

    .line 79
    return-void
.end method


# virtual methods
.method ack()V
    .locals 0

    .prologue
    .line 87
    return-void
.end method

.method arrived()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mexuar/corraleta/protocol/IAX2ProtocolException;
        }
    .end annotation

    .prologue
    .line 124
    iget-object v6, p0, Lcom/mexuar/corraleta/protocol/MiniFrame;->_call:Lcom/mexuar/corraleta/protocol/Call;

    invoke-virtual {v6}, Lcom/mexuar/corraleta/protocol/Call;->getFrameSz()I

    move-result v3

    .line 125
    .local v3, "fsz":I
    new-array v0, v3, [B

    .line 126
    .local v0, "bs":[B
    invoke-virtual {p0}, Lcom/mexuar/corraleta/protocol/MiniFrame;->getTimestampVal()J

    move-result-wide v4

    .line 127
    .local v4, "ts":J
    iget-object v6, p0, Lcom/mexuar/corraleta/protocol/MiniFrame;->_data:Lcom/mexuar/corraleta/util/ByteBuffer;

    invoke-virtual {v6}, Lcom/mexuar/corraleta/util/ByteBuffer;->remaining()I

    move-result v1

    .line 128
    .local v1, "dr":I
    if-ge v1, v3, :cond_0

    .line 129
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "buffer too short: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " not "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mexuar/corraleta/protocol/Log;->warn(Ljava/lang/String;)V

    .line 139
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "got minframe "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mexuar/corraleta/protocol/Log;->verb(Ljava/lang/String;)V

    .line 140
    return-void

    .line 131
    :cond_0
    iget-object v6, p0, Lcom/mexuar/corraleta/protocol/MiniFrame;->_data:Lcom/mexuar/corraleta/util/ByteBuffer;

    invoke-virtual {v6, v0}, Lcom/mexuar/corraleta/util/ByteBuffer;->get([B)V

    .line 133
    :try_start_0
    iget-object v6, p0, Lcom/mexuar/corraleta/protocol/MiniFrame;->_call:Lcom/mexuar/corraleta/protocol/Call;

    invoke-virtual {v6, v0, v4, v5}, Lcom/mexuar/corraleta/protocol/Call;->audioWrite([BJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 135
    :catch_0
    move-exception v2

    .line 136
    .local v2, "ex":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mexuar/corraleta/protocol/Log;->warn(Ljava/lang/String;)V

    goto :goto_0
.end method

.method getBuffer()Lcom/mexuar/corraleta/util/ByteBuffer;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/mexuar/corraleta/protocol/MiniFrame;->_buff:Lcom/mexuar/corraleta/util/ByteBuffer;

    return-object v0
.end method

.method sendMe()V
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/mexuar/corraleta/protocol/MiniFrame;->_call:Lcom/mexuar/corraleta/protocol/Call;

    iget-object v1, p0, Lcom/mexuar/corraleta/protocol/MiniFrame;->_buff:Lcom/mexuar/corraleta/util/ByteBuffer;

    invoke-virtual {v0, v1}, Lcom/mexuar/corraleta/protocol/Call;->send(Lcom/mexuar/corraleta/util/ByteBuffer;)V

    .line 151
    return-void
.end method

.method public sendMe([B)V
    .locals 6
    .param p1, "buff"    # [B

    .prologue
    .line 99
    array-length v0, p1

    add-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Lcom/mexuar/corraleta/util/ByteBuffer;->allocate(I)Lcom/mexuar/corraleta/util/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/mexuar/corraleta/protocol/MiniFrame;->_buff:Lcom/mexuar/corraleta/util/ByteBuffer;

    .line 100
    iget-object v0, p0, Lcom/mexuar/corraleta/protocol/MiniFrame;->_buff:Lcom/mexuar/corraleta/util/ByteBuffer;

    iget v1, p0, Lcom/mexuar/corraleta/protocol/MiniFrame;->_sCall:I

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Lcom/mexuar/corraleta/util/ByteBuffer;->putChar(C)V

    .line 101
    iget-object v0, p0, Lcom/mexuar/corraleta/protocol/MiniFrame;->_buff:Lcom/mexuar/corraleta/util/ByteBuffer;

    const-wide/32 v2, 0xffff

    invoke-virtual {p0}, Lcom/mexuar/corraleta/protocol/MiniFrame;->getTimestampVal()J

    move-result-wide v4

    and-long/2addr v2, v4

    long-to-int v1, v2

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Lcom/mexuar/corraleta/util/ByteBuffer;->putChar(C)V

    .line 102
    iget-object v0, p0, Lcom/mexuar/corraleta/protocol/MiniFrame;->_buff:Lcom/mexuar/corraleta/util/ByteBuffer;

    invoke-virtual {v0, p1}, Lcom/mexuar/corraleta/util/ByteBuffer;->put([B)V

    .line 103
    invoke-virtual {p0}, Lcom/mexuar/corraleta/protocol/MiniFrame;->sendMe()V

    .line 104
    return-void
.end method
