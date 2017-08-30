.class public Lcom/mexuar/corraleta/protocol/VoiceFrame;
.super Lcom/mexuar/corraleta/protocol/FullFrame;
.source "VoiceFrame.java"


# static fields
.field public static final ADPCM_BIT:I = 0x20

.field public static final ADPCM_NO:I = 0x5

.field public static final ALAW_BIT:I = 0x8

.field public static final ALAW_NO:I = 0x3

.field public static final AMRN_BIT:I = 0x4000

.field public static final AMRN_NO:I = 0xe

.field public static final G723_BIT:I = 0x1

.field public static final G723_NO:I = 0x0

.field public static final G726_BIT:I = 0x10

.field public static final G726_NO:I = 0x4

.field public static final G729_BIT:I = 0x100

.field public static final G729_NO:I = 0x8

.field public static final GSM_BIT:I = 0x2

.field public static final GSM_NO:I = 0x1

.field public static final H261_BIT:I = 0x40000

.field public static final H261_NO:I = 0x12

.field public static final H263P_BIT:I = 0x100000

.field public static final H263P_NO:I = 0x14

.field public static final H263_BIT:I = 0x80000

.field public static final H263_NO:I = 0x13

.field public static final ILBC_BIT:I = 0x400

.field public static final ILBC_NO:I = 0xa

.field public static final JPEG_BIT:I = 0x10000

.field public static final JPEG_NO:I = 0x10

.field public static final LIN16_BIT:I = 0x40

.field public static final LIN16_NO:I = 0x6

.field public static final LPC10_BIT:I = 0x80

.field public static final LPC10_NO:I = 0x7

.field public static final PNG_BIT:I = 0x20000

.field public static final PNG_NO:I = 0x11

.field public static final SPEEX_BIT:I = 0x200

.field public static final SPEEX_NO:I = 0x9

.field public static final ULAW_BIT:I = 0x4

.field public static final ULAW_NO:I = 0x2


# direct methods
.method public constructor <init>(Lcom/mexuar/corraleta/protocol/Call;)V
    .locals 1
    .param p1, "p0"    # Lcom/mexuar/corraleta/protocol/Call;

    .prologue
    .line 190
    invoke-direct {p0, p1}, Lcom/mexuar/corraleta/protocol/FullFrame;-><init>(Lcom/mexuar/corraleta/protocol/Call;)V

    .line 191
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mexuar/corraleta/protocol/VoiceFrame;->_retry:Z

    .line 192
    const/4 v0, 0x2

    iput v0, p0, Lcom/mexuar/corraleta/protocol/VoiceFrame;->_frametype:I

    .line 193
    return-void
.end method

.method public constructor <init>(Lcom/mexuar/corraleta/protocol/Call;[B)V
    .locals 0
    .param p1, "p0"    # Lcom/mexuar/corraleta/protocol/Call;
    .param p2, "p1"    # [B

    .prologue
    .line 202
    invoke-direct {p0, p1, p2}, Lcom/mexuar/corraleta/protocol/FullFrame;-><init>(Lcom/mexuar/corraleta/protocol/Call;[B)V

    .line 203
    return-void
.end method


# virtual methods
.method ack()V
    .locals 2

    .prologue
    .line 210
    const-string v0, "got"

    invoke-virtual {p0, v0}, Lcom/mexuar/corraleta/protocol/VoiceFrame;->log(Ljava/lang/String;)V

    .line 211
    iget v0, p0, Lcom/mexuar/corraleta/protocol/VoiceFrame;->_subclass:I

    sparse-switch v0, :sswitch_data_0

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Got unwanted Audio format "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/mexuar/corraleta/protocol/VoiceFrame;->_subclass:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mexuar/corraleta/protocol/Log;->warn(Ljava/lang/String;)V

    .line 225
    :goto_0
    return-void

    .line 213
    :sswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Got unwanted Audio format "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/mexuar/corraleta/protocol/VoiceFrame;->_subclass:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mexuar/corraleta/protocol/Log;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 219
    :sswitch_1
    invoke-virtual {p0}, Lcom/mexuar/corraleta/protocol/VoiceFrame;->sendAck()V

    goto :goto_0

    .line 211
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x4 -> :sswitch_1
        0x8 -> :sswitch_1
        0x40 -> :sswitch_1
        0x4000 -> :sswitch_1
    .end sparse-switch
.end method

.method arrived()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mexuar/corraleta/protocol/IAX2ProtocolException;
        }
    .end annotation

    .prologue
    .line 244
    iget-object v3, p0, Lcom/mexuar/corraleta/protocol/VoiceFrame;->_call:Lcom/mexuar/corraleta/protocol/Call;

    invoke-virtual {v3}, Lcom/mexuar/corraleta/protocol/Call;->getFrameSz()I

    move-result v2

    .line 245
    .local v2, "fsz":I
    new-array v0, v2, [B

    .line 246
    .local v0, "bs":[B
    iget-object v3, p0, Lcom/mexuar/corraleta/protocol/VoiceFrame;->_data:Lcom/mexuar/corraleta/util/ByteBuffer;

    invoke-virtual {v3, v0}, Lcom/mexuar/corraleta/util/ByteBuffer;->get([B)V

    .line 248
    :try_start_0
    iget-object v3, p0, Lcom/mexuar/corraleta/protocol/VoiceFrame;->_call:Lcom/mexuar/corraleta/protocol/Call;

    invoke-virtual {p0}, Lcom/mexuar/corraleta/protocol/VoiceFrame;->getTimestampVal()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/mexuar/corraleta/protocol/Call;->fullVoiceFrameRcvd(J)V

    .line 249
    iget-object v3, p0, Lcom/mexuar/corraleta/protocol/VoiceFrame;->_call:Lcom/mexuar/corraleta/protocol/Call;

    invoke-virtual {p0}, Lcom/mexuar/corraleta/protocol/VoiceFrame;->getTimestampVal()J

    move-result-wide v4

    const-wide/32 v6, 0xffff

    and-long/2addr v4, v6

    invoke-virtual {v3, v0, v4, v5}, Lcom/mexuar/corraleta/protocol/Call;->audioWrite([BJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    :goto_0
    return-void

    .line 251
    :catch_0
    move-exception v1

    .line 252
    .local v1, "ex":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mexuar/corraleta/protocol/Log;->warn(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 2
    .param p1, "inout"    # Ljava/lang/String;

    .prologue
    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " voice frame"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/mexuar/corraleta/protocol/FullFrame;->log(Ljava/lang/String;)V

    .line 235
    return-void
.end method
