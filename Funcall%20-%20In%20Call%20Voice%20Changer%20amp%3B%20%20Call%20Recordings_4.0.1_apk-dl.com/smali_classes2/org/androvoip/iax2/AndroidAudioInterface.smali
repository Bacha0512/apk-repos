.class public Lorg/androvoip/iax2/AndroidAudioInterface;
.super Ljava/lang/Object;
.source "AndroidAudioInterface.java"

# interfaces
.implements Lcom/mexuar/corraleta/audio/AudioInterface;


# static fields
.field private static final FRAME_LEN:I = 0x14

.field private static final SAMPLES_PER_FRAME:I = 0xa0

.field private static final SAMPLE_RATE:I = 0x1f40

.field private static final UNUSED_CACHE_MAX:I = 0xa


# instance fields
.field private as:Lcom/mexuar/corraleta/protocol/AudioSender;

.field private context:Landroid/content/Context;

.field private playQ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[S>;"
        }
    .end annotation
.end field

.field private playThread:Ljava/lang/Thread;

.field private recThread:Ljava/lang/Thread;

.field private record:Landroid/media/AudioRecord;

.field private timestamp:J

.field private track:Landroid/media/AudioTrack;

.field private ulawBuf:[B

.field private unusedQ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[S>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object v2, p0, Lorg/androvoip/iax2/AndroidAudioInterface;->track:Landroid/media/AudioTrack;

    .line 56
    iput-object v2, p0, Lorg/androvoip/iax2/AndroidAudioInterface;->playThread:Ljava/lang/Thread;

    .line 57
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/androvoip/iax2/AndroidAudioInterface;->playQ:Ljava/util/List;

    .line 59
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/androvoip/iax2/AndroidAudioInterface;->unusedQ:Ljava/util/List;

    .line 62
    iput-object v2, p0, Lorg/androvoip/iax2/AndroidAudioInterface;->record:Landroid/media/AudioRecord;

    .line 63
    iput-object v2, p0, Lorg/androvoip/iax2/AndroidAudioInterface;->as:Lcom/mexuar/corraleta/protocol/AudioSender;

    .line 64
    iput-object v2, p0, Lorg/androvoip/iax2/AndroidAudioInterface;->recThread:Ljava/lang/Thread;

    .line 65
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/androvoip/iax2/AndroidAudioInterface;->timestamp:J

    .line 66
    const/16 v0, 0xa0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/androvoip/iax2/AndroidAudioInterface;->ulawBuf:[B

    .line 68
    iput-object v2, p0, Lorg/androvoip/iax2/AndroidAudioInterface;->context:Landroid/content/Context;

    .line 48
    return-void
.end method

.method static synthetic access$0(Lorg/androvoip/iax2/AndroidAudioInterface;)V
    .locals 0

    .prologue
    .line 197
    invoke-direct {p0}, Lorg/androvoip/iax2/AndroidAudioInterface;->recTick()V

    return-void
.end method

.method static synthetic access$1(Lorg/androvoip/iax2/AndroidAudioInterface;)V
    .locals 0

    .prologue
    .line 299
    invoke-direct {p0}, Lorg/androvoip/iax2/AndroidAudioInterface;->playTick()V

    return-void
.end method

.method private playTick()V
    .locals 6

    .prologue
    .line 301
    const-wide/16 v0, 0x14

    .line 303
    .local v0, "delta":J
    const/16 v3, -0x10

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 305
    :goto_0
    iget-object v3, p0, Lorg/androvoip/iax2/AndroidAudioInterface;->playThread:Ljava/lang/Thread;

    if-nez v3, :cond_0

    .line 316
    return-void

    .line 307
    :cond_0
    invoke-direct {p0}, Lorg/androvoip/iax2/AndroidAudioInterface;->playbackTime()V

    .line 310
    const-wide/16 v4, 0x14

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 311
    :catch_0
    move-exception v2

    .line 313
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method private playbackTime()V
    .locals 5

    .prologue
    .line 280
    :cond_0
    :goto_0
    iget-object v3, p0, Lorg/androvoip/iax2/AndroidAudioInterface;->playQ:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 297
    return-void

    .line 282
    :cond_1
    const/4 v1, 0x0

    .line 285
    .local v1, "buf":[S
    :try_start_0
    iget-object v3, p0, Lorg/androvoip/iax2/AndroidAudioInterface;->playQ:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, [S

    move-object v1, v0

    .line 286
    invoke-direct {p0, v1}, Lorg/androvoip/iax2/AndroidAudioInterface;->writeBuff([S)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    :goto_1
    iget-object v3, p0, Lorg/androvoip/iax2/AndroidAudioInterface;->unusedQ:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/16 v4, 0xa

    if-ge v3, v4, :cond_0

    .line 294
    iget-object v3, p0, Lorg/androvoip/iax2/AndroidAudioInterface;->unusedQ:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 287
    :catch_0
    move-exception v2

    .line 289
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private recTick()V
    .locals 9

    .prologue
    .line 199
    const/16 v6, 0xa0

    new-array v4, v6, [S

    .line 201
    .local v4, "slinBuf":[S
    const/16 v6, -0x10

    invoke-static {v6}, Landroid/os/Process;->setThreadPriority(I)V

    .line 203
    :cond_0
    :goto_0
    iget-object v6, p0, Lorg/androvoip/iax2/AndroidAudioInterface;->recThread:Ljava/lang/Thread;

    if-nez v6, :cond_1

    .line 248
    return-void

    .line 205
    :cond_1
    const/4 v5, 0x0

    .line 206
    .local v5, "soFar":I
    const/4 v1, 0x0

    .line 208
    .local v1, "error":Z
    :goto_1
    array-length v6, v4

    if-lt v5, v6, :cond_3

    .line 232
    :cond_2
    if-nez v1, :cond_0

    .line 234
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    array-length v6, v4

    if-lt v2, v6, :cond_4

    .line 241
    :try_start_0
    iget-object v6, p0, Lorg/androvoip/iax2/AndroidAudioInterface;->as:Lcom/mexuar/corraleta/protocol/AudioSender;

    invoke-virtual {v6}, Lcom/mexuar/corraleta/protocol/AudioSender;->send()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 242
    :catch_0
    move-exception v0

    .line 244
    .local v0, "e":Ljava/io/IOException;
    const-string v6, "IAX2Audio"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "IOError in sending: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 210
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "i":I
    :cond_3
    iget-object v6, p0, Lorg/androvoip/iax2/AndroidAudioInterface;->record:Landroid/media/AudioRecord;

    array-length v7, v4

    sub-int/2addr v7, v5

    invoke-virtual {v6, v4, v5, v7}, Landroid/media/AudioRecord;->read([SII)I

    move-result v3

    .line 212
    .local v3, "res":I
    packed-switch v3, :pswitch_data_0

    .line 224
    :goto_3
    if-nez v1, :cond_2

    .line 229
    add-int/2addr v5, v3

    goto :goto_1

    .line 215
    :pswitch_0
    const-string v6, "IAX2Audio"

    const-string v7, "Invalid read()"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const/4 v1, 0x1

    .line 217
    goto :goto_3

    .line 219
    :pswitch_1
    const-string v6, "IAX2Audio"

    const-string v7, "Bad arguments to read()"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    const/4 v1, 0x1

    goto :goto_3

    .line 236
    .end local v3    # "res":I
    .restart local v2    # "i":I
    :cond_4
    iget-object v6, p0, Lorg/androvoip/iax2/AndroidAudioInterface;->ulawBuf:[B

    aget-short v7, v4, v2

    invoke-static {v7}, Lorg/androvoip/audio/ULAW;->linear2ulaw(I)B

    move-result v7

    aput-byte v7, v6, v2

    .line 234
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 212
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private writeBuff([S)V
    .locals 4
    .param p1, "buf"    # [S

    .prologue
    .line 252
    iget-object v2, p0, Lorg/androvoip/iax2/AndroidAudioInterface;->track:Landroid/media/AudioTrack;

    if-nez v2, :cond_1

    .line 254
    const-string v2, "IAX2Audio"

    const-string v3, "write() without an AudioTrack"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :cond_0
    :goto_0
    return-void

    .line 258
    :cond_1
    const/4 v1, 0x0

    .line 259
    .local v1, "written":I
    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 263
    iget-object v2, p0, Lorg/androvoip/iax2/AndroidAudioInterface;->track:Landroid/media/AudioTrack;

    array-length v3, p1

    sub-int/2addr v3, v1

    invoke-virtual {v2, p1, v1, v3}, Landroid/media/AudioTrack;->write([SII)I

    move-result v0

    .line 264
    .local v0, "res":I
    packed-switch v0, :pswitch_data_0

    .line 274
    add-int/2addr v1, v0

    goto :goto_1

    .line 267
    :pswitch_0
    const-string v2, "IAX2Audio"

    const-string v3, "Invalid write()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 270
    :pswitch_1
    const-string v2, "IAX2Audio"

    const-string v3, "Bad arguments to write()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 264
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public changedProps()V
    .locals 2

    .prologue
    .line 84
    const-string v0, "IAX2Audio"

    const-string v1, "changedProps() got called."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    return-void
.end method

.method public cleanUp()V
    .locals 0

    .prologue
    .line 97
    return-void
.end method

.method public codecPrefString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 109
    const/4 v3, 0x1

    new-array v1, v3, [C

    const/4 v3, 0x0

    const/4 v4, 0x2

    aput-char v4, v1, v3

    .line 110
    .local v1, "prefs":[C
    const-string v2, ""

    .line 112
    .local v2, "ret":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v1

    if-lt v0, v3, :cond_0

    .line 117
    return-object v2

    .line 114
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-char v4, v1, v0

    add-int/lit8 v4, v4, 0x42

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getByFormat(Ljava/lang/Integer;)Lcom/mexuar/corraleta/audio/AudioInterface;
    .locals 1
    .param p1, "format"    # Ljava/lang/Integer;

    .prologue
    .line 131
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 136
    const/4 p0, 0x0

    .end local p0    # "this":Lorg/androvoip/iax2/AndroidAudioInterface;
    :pswitch_0
    return-object p0

    .line 131
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public getFormatBit()I
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x4

    return v0
.end method

.method public getSampSz()I
    .locals 1

    .prologue
    .line 159
    const/16 v0, 0xa0

    return v0
.end method

.method public playAudioStream(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 169
    const-string v0, "IAX2Audio"

    const-string v1, "playAudioStream() got called"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    return-void
.end method

.method public readDirect([B)J
    .locals 2
    .param p1, "buff"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 179
    const-string v0, "IAX2Audio"

    const-string v1, "readDirect() got called"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public readWithTime([B)J
    .locals 4
    .param p1, "buff"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 190
    iget-object v0, p0, Lorg/androvoip/iax2/AndroidAudioInterface;->ulawBuf:[B

    iget-object v1, p0, Lorg/androvoip/iax2/AndroidAudioInterface;->ulawBuf:[B

    array-length v1, v1

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 192
    iget-wide v0, p0, Lorg/androvoip/iax2/AndroidAudioInterface;->timestamp:J

    const-wide/16 v2, 0x14

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/androvoip/iax2/AndroidAudioInterface;->timestamp:J

    .line 194
    iget-wide v0, p0, Lorg/androvoip/iax2/AndroidAudioInterface;->timestamp:J

    return-wide v0
.end method

.method public sampleRecord(Lcom/mexuar/corraleta/audio/SampleListener;)V
    .locals 2
    .param p1, "list"    # Lcom/mexuar/corraleta/audio/SampleListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 325
    const-string v0, "IAX2Audio"

    const-string v1, "sampleRecord() got called"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    return-void
.end method

.method public setAudioSender(Lcom/mexuar/corraleta/protocol/AudioSender;)V
    .locals 13
    .param p1, "as"    # Lcom/mexuar/corraleta/protocol/AudioSender;

    .prologue
    .line 335
    iput-object p1, p0, Lorg/androvoip/iax2/AndroidAudioInterface;->as:Lcom/mexuar/corraleta/protocol/AudioSender;

    .line 339
    const/16 v0, 0x1f40

    const/4 v1, 0x2

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v10

    .line 343
    .local v10, "minRecBuffer":I
    :try_start_0
    new-instance v0, Landroid/media/AudioRecord;

    const/4 v1, 0x1

    const/16 v2, 0x1f40

    const/4 v3, 0x2

    .line 344
    const/4 v4, 0x2

    const/16 v5, 0x640

    if-le v5, v10, :cond_1

    const/16 v5, 0x640

    :goto_0
    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    .line 343
    iput-object v0, p0, Lorg/androvoip/iax2/AndroidAudioInterface;->record:Landroid/media/AudioRecord;

    .line 346
    iget-object v0, p0, Lorg/androvoip/iax2/AndroidAudioInterface;->record:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 352
    :goto_1
    new-instance v12, Lorg/androvoip/iax2/AndroidAudioInterface$1;

    invoke-direct {v12, p0}, Lorg/androvoip/iax2/AndroidAudioInterface$1;-><init>(Lorg/androvoip/iax2/AndroidAudioInterface;)V

    .line 366
    .local v12, "trec":Ljava/lang/Runnable;
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "rec_thread"

    invoke-direct {v0, v12, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/androvoip/iax2/AndroidAudioInterface;->recThread:Ljava/lang/Thread;

    .line 367
    iget-object v0, p0, Lorg/androvoip/iax2/AndroidAudioInterface;->recThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 371
    iget-object v0, p0, Lorg/androvoip/iax2/AndroidAudioInterface;->track:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 373
    const-string v0, "IAX2Audio"

    const-string v1, "track not null in setAudioSender()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :cond_0
    const/16 v0, 0x1f40

    const/4 v1, 0x2

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v9

    .line 380
    .local v9, "minPlayBuffer":I
    :try_start_1
    new-instance v0, Landroid/media/AudioTrack;

    const/4 v1, 0x0

    const/16 v2, 0x1f40

    const/4 v3, 0x2

    .line 381
    const/4 v4, 0x2

    const/16 v5, 0x280

    if-le v5, v9, :cond_2

    const/16 v5, 0x280

    :goto_2
    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    .line 380
    iput-object v0, p0, Lorg/androvoip/iax2/AndroidAudioInterface;->track:Landroid/media/AudioTrack;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 389
    iget-object v0, p0, Lorg/androvoip/iax2/AndroidAudioInterface;->context:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/AudioManager;

    .line 390
    .local v7, "aMan":Landroid/media/AudioManager;
    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-virtual {v7, v0, v1, v2}, Landroid/media/AudioManager;->setRouting(III)V

    .line 391
    const/4 v0, 0x2

    invoke-virtual {v7, v0}, Landroid/media/AudioManager;->setMode(I)V

    .line 393
    new-instance v11, Lorg/androvoip/iax2/AndroidAudioInterface$2;

    invoke-direct {v11, p0}, Lorg/androvoip/iax2/AndroidAudioInterface$2;-><init>(Lorg/androvoip/iax2/AndroidAudioInterface;)V

    .line 401
    .local v11, "tplay":Ljava/lang/Runnable;
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "play_thread"

    invoke-direct {v0, v11, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/androvoip/iax2/AndroidAudioInterface;->playThread:Ljava/lang/Thread;

    .line 402
    iget-object v0, p0, Lorg/androvoip/iax2/AndroidAudioInterface;->playThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 404
    iget-object v0, p0, Lorg/androvoip/iax2/AndroidAudioInterface;->track:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 405
    .end local v7    # "aMan":Landroid/media/AudioManager;
    .end local v11    # "tplay":Ljava/lang/Runnable;
    :goto_3
    return-void

    .end local v9    # "minPlayBuffer":I
    .end local v12    # "trec":Ljava/lang/Runnable;
    :cond_1
    move v5, v10

    .line 344
    goto :goto_0

    .line 347
    :catch_0
    move-exception v8

    .line 349
    .local v8, "e":Ljava/lang/IllegalArgumentException;
    const-string v0, "IAX2Audio"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to create AudioRecord: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v8    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v9    # "minPlayBuffer":I
    .restart local v12    # "trec":Ljava/lang/Runnable;
    :cond_2
    move v5, v9

    .line 381
    goto :goto_2

    .line 382
    :catch_1
    move-exception v8

    .line 384
    .restart local v8    # "e":Ljava/lang/IllegalArgumentException;
    const-string v0, "IAX2Audio"

    const-string v1, "Failed to create AudioTrack"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    invoke-virtual {v8}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_3
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 72
    iput-object p1, p0, Lorg/androvoip/iax2/AndroidAudioInterface;->context:Landroid/content/Context;

    .line 73
    return-void
.end method

.method public startPlay()V
    .locals 2

    .prologue
    .line 414
    const-string v0, "IAX2Audio"

    const-string v1, "startPlay() got called"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    return-void
.end method

.method public startRec()J
    .locals 2

    .prologue
    .line 424
    const-string v0, "IAX2Audio"

    const-string v1, "startRec()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public startRinging()V
    .locals 2

    .prologue
    .line 435
    const-string v0, "IAX2Audio"

    const-string v1, "startRinging()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    return-void
.end method

.method public stopPlay()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 445
    const-string v2, "IAX2Audio"

    const-string v3, "stopPlay()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    iget-object v2, p0, Lorg/androvoip/iax2/AndroidAudioInterface;->track:Landroid/media/AudioTrack;

    if-eqz v2, :cond_0

    .line 451
    :try_start_0
    iget-object v2, p0, Lorg/androvoip/iax2/AndroidAudioInterface;->track:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 460
    :cond_0
    :goto_0
    :try_start_1
    iget-object v2, p0, Lorg/androvoip/iax2/AndroidAudioInterface;->playThread:Ljava/lang/Thread;

    if-eqz v2, :cond_1

    .line 462
    iget-object v1, p0, Lorg/androvoip/iax2/AndroidAudioInterface;->playThread:Ljava/lang/Thread;

    .line 464
    .local v1, "t":Ljava/lang/Thread;
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/androvoip/iax2/AndroidAudioInterface;->playThread:Ljava/lang/Thread;

    .line 465
    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 472
    .end local v1    # "t":Ljava/lang/Thread;
    :cond_1
    :goto_1
    iget-object v2, p0, Lorg/androvoip/iax2/AndroidAudioInterface;->track:Landroid/media/AudioTrack;

    if-eqz v2, :cond_2

    .line 474
    iget-object v2, p0, Lorg/androvoip/iax2/AndroidAudioInterface;->track:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->release()V

    .line 475
    iput-object v4, p0, Lorg/androvoip/iax2/AndroidAudioInterface;->track:Landroid/media/AudioTrack;

    .line 477
    :cond_2
    return-void

    .line 452
    :catch_0
    move-exception v0

    .line 454
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 467
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .line 469
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method

.method public stopRec()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 488
    iget-object v2, p0, Lorg/androvoip/iax2/AndroidAudioInterface;->record:Landroid/media/AudioRecord;

    if-eqz v2, :cond_0

    .line 492
    :try_start_0
    iget-object v2, p0, Lorg/androvoip/iax2/AndroidAudioInterface;->record:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 501
    :cond_0
    :goto_0
    :try_start_1
    iget-object v2, p0, Lorg/androvoip/iax2/AndroidAudioInterface;->recThread:Ljava/lang/Thread;

    if-eqz v2, :cond_1

    .line 503
    iget-object v1, p0, Lorg/androvoip/iax2/AndroidAudioInterface;->recThread:Ljava/lang/Thread;

    .line 505
    .local v1, "t":Ljava/lang/Thread;
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/androvoip/iax2/AndroidAudioInterface;->recThread:Ljava/lang/Thread;

    .line 506
    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 513
    .end local v1    # "t":Ljava/lang/Thread;
    :cond_1
    :goto_1
    iput-object v3, p0, Lorg/androvoip/iax2/AndroidAudioInterface;->as:Lcom/mexuar/corraleta/protocol/AudioSender;

    .line 515
    iget-object v2, p0, Lorg/androvoip/iax2/AndroidAudioInterface;->record:Landroid/media/AudioRecord;

    if-eqz v2, :cond_2

    .line 517
    iget-object v2, p0, Lorg/androvoip/iax2/AndroidAudioInterface;->record:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->release()V

    .line 518
    iput-object v3, p0, Lorg/androvoip/iax2/AndroidAudioInterface;->record:Landroid/media/AudioRecord;

    .line 521
    :cond_2
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/androvoip/iax2/AndroidAudioInterface;->timestamp:J

    .line 522
    return-void

    .line 493
    :catch_0
    move-exception v0

    .line 495
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 508
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .line 510
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method

.method public stopRinging()V
    .locals 2

    .prologue
    .line 531
    const-string v0, "IAX2Audio"

    const-string v1, "stopRinging()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    return-void
.end method

.method public supportedCodecs()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 543
    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    return-object v0
.end method

.method public write([BJ)V
    .locals 4
    .param p1, "buf"    # [B
    .param p2, "timestamp"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 555
    const/4 v1, 0x0

    .line 559
    .local v1, "qBuf":[S
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    iget-object v2, p0, Lorg/androvoip/iax2/AndroidAudioInterface;->unusedQ:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 568
    :cond_1
    if-nez v1, :cond_2

    .line 571
    const-string v2, "IAX2Audio"

    const-string v3, "unused buffer cache miss"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    array-length v2, p1

    new-array v1, v2, [S

    .line 575
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p1

    if-lt v0, v2, :cond_4

    .line 580
    iget-object v2, p0, Lorg/androvoip/iax2/AndroidAudioInterface;->playQ:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 581
    return-void

    .line 561
    .end local v0    # "i":I
    :cond_3
    iget-object v2, p0, Lorg/androvoip/iax2/AndroidAudioInterface;->unusedQ:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "qBuf":[S
    check-cast v1, [S

    .line 562
    .restart local v1    # "qBuf":[S
    array-length v2, v1

    array-length v3, p1

    if-eq v2, v3, :cond_0

    .line 564
    const/4 v1, 0x0

    goto :goto_0

    .line 577
    .restart local v0    # "i":I
    :cond_4
    aget-byte v2, p1, v0

    invoke-static {v2}, Lorg/androvoip/audio/ULAW;->ulaw2linear(B)S

    move-result v2

    aput-short v2, v1, v0

    .line 575
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public writeDirect([B)V
    .locals 2
    .param p1, "buff"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 590
    const-string v0, "IAX2Audio"

    const-string v1, "writeDirect() got called"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    return-void
.end method
