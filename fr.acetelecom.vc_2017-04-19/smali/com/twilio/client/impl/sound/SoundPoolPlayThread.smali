.class Lcom/twilio/client/impl/sound/SoundPoolPlayThread;
.super Ljava/lang/Thread;

# interfaces
.implements Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;


# static fields
.field private static final PLAY_BUF_BYTESPERSAMP:I = 0x2

.field private static final PLAY_BUF_CHANNELS:I = 0x2

.field private static final PLAY_BUF_SAMPRATE:I = 0xac44

.field private static final SILENCE:S

.field private static final logger:Lcom/twilio/client/impl/logging/Logger;


# instance fields
.field private audioTrack:Landroid/media/AudioTrack;

.field private final listener:Lcom/twilio/client/impl/sound/SoundPool$Listener;

.field private final maxStreams:I

.field private playing:Z

.field private final streamType:I

.field private final streams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/twilio/client/impl/sound/SoundPool$Stream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/twilio/client/impl/sound/SoundPoolPlayThread;

    invoke-static {v0}, Lcom/twilio/client/impl/logging/Logger;->getLogger(Ljava/lang/Class;)Lcom/twilio/client/impl/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/twilio/client/impl/sound/SoundPoolPlayThread;->logger:Lcom/twilio/client/impl/logging/Logger;

    return-void
.end method

.method constructor <init>(IILjava/util/Map;Lcom/twilio/client/impl/sound/SoundPool$Listener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/twilio/client/impl/sound/SoundPool$Stream;",
            ">;",
            "Lcom/twilio/client/impl/sound/SoundPool$Listener;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput p1, p0, Lcom/twilio/client/impl/sound/SoundPoolPlayThread;->maxStreams:I

    iput p2, p0, Lcom/twilio/client/impl/sound/SoundPoolPlayThread;->streamType:I

    iput-object p3, p0, Lcom/twilio/client/impl/sound/SoundPoolPlayThread;->streams:Ljava/util/Map;

    iput-object p4, p0, Lcom/twilio/client/impl/sound/SoundPoolPlayThread;->listener:Lcom/twilio/client/impl/sound/SoundPool$Listener;

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/sound/SoundPoolPlayThread;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twilio/client/impl/sound/SoundPoolPlayThread;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twilio/client/impl/sound/SoundPoolPlayThread;->audioTrack:Landroid/media/AudioTrack;

    :cond_0
    return-void
.end method

.method public onMarkerReached(Landroid/media/AudioTrack;)V
    .locals 0

    return-void
.end method

.method public onPeriodicNotification(Landroid/media/AudioTrack;)V
    .locals 8

    const/4 v1, 0x0

    sget-object v0, Lcom/twilio/client/impl/sound/SoundPoolPlayThread;->logger:Lcom/twilio/client/impl/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "got periodic notification, playback head at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/twilio/client/impl/sound/SoundPoolPlayThread;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v3}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/twilio/client/impl/logging/Logger;->v(Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/twilio/client/impl/sound/SoundPoolPlayThread;->streams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v0, p0, Lcom/twilio/client/impl/sound/SoundPoolPlayThread;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v3

    iget-object v4, p0, Lcom/twilio/client/impl/sound/SoundPoolPlayThread;->streams:Ljava/util/Map;

    monitor-enter v4

    :try_start_0
    iget-object v0, p0, Lcom/twilio/client/impl/sound/SoundPoolPlayThread;->streams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twilio/client/impl/sound/SoundPool$Stream;

    sget-object v6, Lcom/twilio/client/impl/sound/SoundPoolPlayThread$1;->$SwitchMap$com$twilio$client$impl$sound$SoundPool$Stream$State:[I

    iget-object v7, v0, Lcom/twilio/client/impl/sound/SoundPool$Stream;->state:Lcom/twilio/client/impl/sound/SoundPool$Stream$State;

    invoke-virtual {v7}, Lcom/twilio/client/impl/sound/SoundPool$Stream$State;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :pswitch_0
    move v0, v1

    goto :goto_1

    :pswitch_1
    iget v6, v0, Lcom/twilio/client/impl/sound/SoundPool$Stream;->finishedPosition:I

    if-gt v6, v3, :cond_0

    iget v0, v0, Lcom/twilio/client/impl/sound/SoundPool$Stream;->streamId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v1

    goto :goto_1

    :cond_0
    :pswitch_2
    add-int/lit8 v0, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v5, p0, Lcom/twilio/client/impl/sound/SoundPoolPlayThread;->streams:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    if-nez v1, :cond_3

    :try_start_1
    iget-object v0, p0, Lcom/twilio/client/impl/sound/SoundPoolPlayThread;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twilio/client/impl/sound/SoundPoolPlayThread;->playing:Z

    :cond_3
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/twilio/client/impl/sound/SoundPoolPlayThread;->listener:Lcom/twilio/client/impl/sound/SoundPool$Listener;

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Lcom/twilio/client/impl/sound/SoundPoolPlayThread;->listener:Lcom/twilio/client/impl/sound/SoundPool$Listener;

    invoke-interface {v2, v0}, Lcom/twilio/client/impl/sound/SoundPool$Listener;->onPlayComplete(I)V

    goto :goto_3

    :cond_4
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public run()V
    .locals 13

    const/16 v3, 0xc

    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v12, -0x1

    const/4 v7, 0x0

    sget-object v0, Lcom/twilio/client/impl/sound/SoundPoolPlayThread;->logger:Lcom/twilio/client/impl/logging/Logger;

    const-string v1, "play thread starting"

    invoke-virtual {v0, v1}, Lcom/twilio/client/impl/logging/Logger;->d(Ljava/lang/String;)V

    const v0, 0xac44

    invoke-static {v0, v3, v4}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v5

    if-eq v5, v12, :cond_0

    const/4 v0, -0x2

    if-ne v5, v0, :cond_1

    :cond_0
    sget-object v0, Lcom/twilio/client/impl/sound/SoundPoolPlayThread;->logger:Lcom/twilio/client/impl/logging/Logger;

    const-string v1, "Failed to find AudioTrack buffer size; sounds disabled"

    invoke-virtual {v0, v1}, Lcom/twilio/client/impl/logging/Logger;->e(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/media/AudioTrack;

    iget v1, p0, Lcom/twilio/client/impl/sound/SoundPoolPlayThread;->streamType:I

    const v2, 0xac44

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v0, p0, Lcom/twilio/client/impl/sound/SoundPoolPlayThread;->audioTrack:Landroid/media/AudioTrack;

    new-array v4, v5, [B

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/twilio/client/impl/sound/SoundPoolPlayThread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v8, p0, Lcom/twilio/client/impl/sound/SoundPoolPlayThread;->streams:Ljava/util/Map;

    monitor-enter v8

    :try_start_0
    iget-object v0, p0, Lcom/twilio/client/impl/sound/SoundPoolPlayThread;->streams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    :try_start_1
    iget-object v0, p0, Lcom/twilio/client/impl/sound/SoundPoolPlayThread;->streams:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    :goto_2
    :try_start_2
    invoke-virtual {p0}, Lcom/twilio/client/impl/sound/SoundPoolPlayThread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_6

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    iget-object v0, p0, Lcom/twilio/client/impl/sound/SoundPoolPlayThread;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/twilio/client/impl/sound/SoundPoolPlayThread;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twilio/client/impl/sound/SoundPoolPlayThread;->audioTrack:Landroid/media/AudioTrack;

    :cond_5
    sget-object v0, Lcom/twilio/client/impl/sound/SoundPoolPlayThread;->logger:Lcom/twilio/client/impl/logging/Logger;

    const-string v1, "play thread exiting"

    invoke-virtual {v0, v1}, Lcom/twilio/client/impl/logging/Logger;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    :try_start_3
    iget-object v0, p0, Lcom/twilio/client/impl/sound/SoundPoolPlayThread;->streams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v3, v7

    :cond_7
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twilio/client/impl/sound/SoundPool$Stream;

    iget-object v1, v0, Lcom/twilio/client/impl/sound/SoundPool$Stream;->state:Lcom/twilio/client/impl/sound/SoundPool$Stream$State;

    sget-object v2, Lcom/twilio/client/impl/sound/SoundPool$Stream$State;->PLAYING:Lcom/twilio/client/impl/sound/SoundPool$Stream$State;

    if-ne v1, v2, :cond_7

    iget-object v1, v0, Lcom/twilio/client/impl/sound/SoundPool$Stream;->sound:Lcom/twilio/client/impl/sound/SoundPool$Sound;

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/twilio/client/impl/sound/SoundPool$Stream;->sound:Lcom/twilio/client/impl/sound/SoundPool$Sound;

    iget-object v1, v1, Lcom/twilio/client/impl/sound/SoundPool$Sound;->samples:[B

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/twilio/client/impl/sound/SoundPool$Stream;->sound:Lcom/twilio/client/impl/sound/SoundPool$Sound;

    iget-object v1, v1, Lcom/twilio/client/impl/sound/SoundPool$Sound;->samples:[B

    array-length v1, v1

    iget v2, v0, Lcom/twilio/client/impl/sound/SoundPool$Stream;->curSample:I

    sub-int v2, v1, v2

    if-le v2, v5, :cond_8

    move v2, v5

    :cond_8
    sget-object v1, Lcom/twilio/client/impl/sound/SoundPoolPlayThread;->logger:Lcom/twilio/client/impl/logging/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mixing "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " bytes"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/twilio/client/impl/logging/Logger;->v(Ljava/lang/String;)V

    iget v1, v0, Lcom/twilio/client/impl/sound/SoundPool$Stream;->curSample:I

    if-nez v1, :cond_9

    iget v1, v0, Lcom/twilio/client/impl/sound/SoundPool$Stream;->loopsLeft:I

    if-nez v1, :cond_9

    iget v1, v0, Lcom/twilio/client/impl/sound/SoundPool$Stream;->finishedPosition:I

    if-ne v1, v12, :cond_9

    iget-object v1, p0, Lcom/twilio/client/impl/sound/SoundPoolPlayThread;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v1

    iget-object v10, v0, Lcom/twilio/client/impl/sound/SoundPool$Stream;->sound:Lcom/twilio/client/impl/sound/SoundPool$Sound;

    iget-object v10, v10, Lcom/twilio/client/impl/sound/SoundPool$Sound;->samples:[B

    array-length v10, v10

    div-int/lit8 v10, v10, 0x4

    add-int/2addr v1, v10

    iput v1, v0, Lcom/twilio/client/impl/sound/SoundPool$Stream;->finishedPosition:I

    sget-object v1, Lcom/twilio/client/impl/sound/SoundPoolPlayThread;->logger:Lcom/twilio/client/impl/logging/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "set finished position to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v0, Lcom/twilio/client/impl/sound/SoundPool$Stream;->finishedPosition:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/twilio/client/impl/logging/Logger;->v(Ljava/lang/String;)V

    :cond_9
    if-nez v3, :cond_a

    iget-object v1, v0, Lcom/twilio/client/impl/sound/SoundPool$Stream;->sound:Lcom/twilio/client/impl/sound/SoundPool$Sound;

    iget-object v1, v1, Lcom/twilio/client/impl/sound/SoundPool$Sound;->samples:[B

    iget v10, v0, Lcom/twilio/client/impl/sound/SoundPool$Stream;->curSample:I

    const/4 v11, 0x0

    invoke-static {v1, v10, v4, v11, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v1, v2

    :goto_4
    if-ge v1, v5, :cond_a

    const/4 v10, 0x0

    aput-byte v10, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_a
    sget-object v1, Lcom/twilio/client/impl/sound/SoundPoolPlayThread;->logger:Lcom/twilio/client/impl/logging/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mixing "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " samples from stream "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v0, Lcom/twilio/client/impl/sound/SoundPool$Stream;->streamId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/twilio/client/impl/logging/Logger;->v(Ljava/lang/String;)V

    iget v1, v0, Lcom/twilio/client/impl/sound/SoundPool$Stream;->curSample:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/twilio/client/impl/sound/SoundPool$Stream;->curSample:I

    iget v1, v0, Lcom/twilio/client/impl/sound/SoundPool$Stream;->curSample:I

    iget-object v2, v0, Lcom/twilio/client/impl/sound/SoundPool$Stream;->sound:Lcom/twilio/client/impl/sound/SoundPool$Sound;

    iget-object v2, v2, Lcom/twilio/client/impl/sound/SoundPool$Sound;->samples:[B

    array-length v2, v2

    if-ne v1, v2, :cond_b

    iget v1, v0, Lcom/twilio/client/impl/sound/SoundPool$Stream;->loopsLeft:I

    if-eq v1, v12, :cond_c

    iget v1, v0, Lcom/twilio/client/impl/sound/SoundPool$Stream;->loopsLeft:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/twilio/client/impl/sound/SoundPool$Stream;->loopsLeft:I

    if-gez v1, :cond_c

    sget-object v1, Lcom/twilio/client/impl/sound/SoundPool$Stream$State;->FINISHED:Lcom/twilio/client/impl/sound/SoundPool$Stream$State;

    iput-object v1, v0, Lcom/twilio/client/impl/sound/SoundPool$Stream;->state:Lcom/twilio/client/impl/sound/SoundPool$Stream$State;

    :cond_b
    :goto_5
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_3

    :cond_c
    const/4 v1, 0x0

    iput v1, v0, Lcom/twilio/client/impl/sound/SoundPool$Stream;->curSample:I

    goto :goto_5

    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_d
    :try_start_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-lez v3, :cond_2

    iget-object v0, p0, Lcom/twilio/client/impl/sound/SoundPoolPlayThread;->audioTrack:Landroid/media/AudioTrack;

    array-length v1, v4

    invoke-virtual {v0, v4, v7, v1}, Landroid/media/AudioTrack;->write([BII)I

    move-result v0

    sget-object v1, Lcom/twilio/client/impl/sound/SoundPoolPlayThread;->logger:Lcom/twilio/client/impl/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wrote "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " bytes to audiotrack"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/twilio/client/impl/logging/Logger;->v(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/twilio/client/impl/sound/SoundPoolPlayThread;->playing:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/twilio/client/impl/sound/SoundPoolPlayThread;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Lcom/twilio/client/impl/sound/SoundPoolPlayThread;->logger:Lcom/twilio/client/impl/logging/Logger;

    const-string v1, "starting playback"

    invoke-virtual {v0, v1}, Lcom/twilio/client/impl/logging/Logger;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twilio/client/impl/sound/SoundPoolPlayThread;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0, p0}, Landroid/media/AudioTrack;->setPlaybackPositionUpdateListener(Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;)V

    div-int/lit8 v0, v5, 0x4

    iget-object v1, p0, Lcom/twilio/client/impl/sound/SoundPoolPlayThread;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1, v0}, Landroid/media/AudioTrack;->setPositionNotificationPeriod(I)I

    iget-object v0, p0, Lcom/twilio/client/impl/sound/SoundPoolPlayThread;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    iput-boolean v6, p0, Lcom/twilio/client/impl/sound/SoundPoolPlayThread;->playing:Z

    goto/16 :goto_1

    :cond_e
    sget-object v0, Lcom/twilio/client/impl/sound/SoundPoolPlayThread;->logger:Lcom/twilio/client/impl/logging/Logger;

    const-string v1, "AudioTrack state is UNINITIALIZED. Unable to play track"

    invoke-virtual {v0, v1}, Lcom/twilio/client/impl/logging/Logger;->w(Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_2
.end method
