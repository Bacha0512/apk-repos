.class public Lcom/twilio/client/impl/sound/SoundPool;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twilio/client/impl/sound/SoundPool$LoadRequest;,
        Lcom/twilio/client/impl/sound/SoundPool$Stream;,
        Lcom/twilio/client/impl/sound/SoundPool$Sound;,
        Lcom/twilio/client/impl/sound/SoundPool$Listener;
    }
.end annotation


# static fields
.field public static final INVALID_STREAM_ID:I

.field private static final logger:Lcom/twilio/client/impl/logging/Logger;


# instance fields
.field private audioTrack:Landroid/media/AudioTrack;

.field private lastSoundId:I

.field private lastStreamId:I

.field private final listener:Lcom/twilio/client/impl/sound/SoundPool$Listener;

.field private final loadQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/twilio/client/impl/sound/SoundPool$LoadRequest;",
            ">;"
        }
    .end annotation
.end field

.field private loadThread:Ljava/lang/Thread;

.field private final maxStreams:I

.field private playThread:Ljava/lang/Thread;

.field private final sounds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/twilio/client/impl/sound/SoundPool$Sound;",
            ">;"
        }
    .end annotation
.end field

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

    const-class v0, Lcom/twilio/client/impl/sound/SoundPool;

    invoke-static {v0}, Lcom/twilio/client/impl/logging/Logger;->getLogger(Ljava/lang/Class;)Lcom/twilio/client/impl/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/twilio/client/impl/sound/SoundPool;->logger:Lcom/twilio/client/impl/logging/Logger;

    return-void
.end method

.method public constructor <init>(IILcom/twilio/client/impl/sound/SoundPool$Listener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/twilio/client/impl/sound/SoundPool;->sounds:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/twilio/client/impl/sound/SoundPool;->streams:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/twilio/client/impl/sound/SoundPool;->loadQueue:Ljava/util/Queue;

    iput p1, p0, Lcom/twilio/client/impl/sound/SoundPool;->maxStreams:I

    iput p2, p0, Lcom/twilio/client/impl/sound/SoundPool;->streamType:I

    iput-object p3, p0, Lcom/twilio/client/impl/sound/SoundPool;->listener:Lcom/twilio/client/impl/sound/SoundPool$Listener;

    return-void
.end method

.method private loadByResId(Landroid/content/res/Resources;I)I
    .locals 6

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/twilio/client/impl/sound/SoundPool;->lastSoundId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/twilio/client/impl/sound/SoundPool;->lastSoundId:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/twilio/client/impl/sound/SoundPool;->lastSoundId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/twilio/client/impl/sound/SoundPool;->lastSoundId:I

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v1, Lcom/twilio/client/impl/sound/SoundPool$Sound;

    invoke-direct {v1, v0}, Lcom/twilio/client/impl/sound/SoundPool$Sound;-><init>(I)V

    new-instance v2, Lcom/twilio/client/impl/sound/SoundPool$LoadRequest;

    invoke-direct {v2, v1, p1, p2}, Lcom/twilio/client/impl/sound/SoundPool$LoadRequest;-><init>(Lcom/twilio/client/impl/sound/SoundPool$Sound;Landroid/content/res/Resources;I)V

    iget-object v3, p0, Lcom/twilio/client/impl/sound/SoundPool;->sounds:Ljava/util/Map;

    monitor-enter v3

    :try_start_1
    iget-object v4, p0, Lcom/twilio/client/impl/sound/SoundPool;->sounds:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v1, p0, Lcom/twilio/client/impl/sound/SoundPool;->loadQueue:Ljava/util/Queue;

    monitor-enter v1

    :try_start_2
    iget-object v3, p0, Lcom/twilio/client/impl/sound/SoundPool;->loadQueue:Ljava/util/Queue;

    invoke-interface {v3, v2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return v0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0
.end method


# virtual methods
.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/twilio/client/impl/sound/SoundPool;->release()V

    return-void
.end method

.method public load(Landroid/content/Context;I)I
    .locals 4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/twilio/client/impl/sound/SoundPool;->loadByResId(Landroid/content/res/Resources;I)I

    move-result v0

    monitor-enter p0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/twilio/client/impl/sound/SoundPool;->loadThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/twilio/client/impl/sound/SoundPool;->loadThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    new-instance v1, Lcom/twilio/client/impl/sound/SoundPoolLoadThread;

    iget-object v2, p0, Lcom/twilio/client/impl/sound/SoundPool;->loadQueue:Ljava/util/Queue;

    iget-object v3, p0, Lcom/twilio/client/impl/sound/SoundPool;->listener:Lcom/twilio/client/impl/sound/SoundPool$Listener;

    invoke-direct {v1, v2, v3}, Lcom/twilio/client/impl/sound/SoundPoolLoadThread;-><init>(Ljava/util/Queue;Lcom/twilio/client/impl/sound/SoundPool$Listener;)V

    iput-object v1, p0, Lcom/twilio/client/impl/sound/SoundPool;->loadThread:Ljava/lang/Thread;

    iget-object v1, p0, Lcom/twilio/client/impl/sound/SoundPool;->loadThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public load(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "raw"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p2, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/twilio/client/impl/sound/SoundPool;->load(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public pause(I)V
    .locals 3

    iget-object v1, p0, Lcom/twilio/client/impl/sound/SoundPool;->streams:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/twilio/client/impl/sound/SoundPool;->streams:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twilio/client/impl/sound/SoundPool$Stream;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/twilio/client/impl/sound/SoundPool$Stream$State;->PAUSED:Lcom/twilio/client/impl/sound/SoundPool$Stream$State;

    iput-object v1, v0, Lcom/twilio/client/impl/sound/SoundPool$Stream;->state:Lcom/twilio/client/impl/sound/SoundPool$Stream$State;

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public play(II)I
    .locals 6

    sget-object v0, Lcom/twilio/client/impl/sound/SoundPool;->logger:Lcom/twilio/client/impl/logging/Logger;

    const-string v1, "play called"

    invoke-virtual {v0, v1}, Lcom/twilio/client/impl/logging/Logger;->v(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/twilio/client/impl/sound/SoundPool;->sounds:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/twilio/client/impl/sound/SoundPool;->sounds:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twilio/client/impl/sound/SoundPool$Sound;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/twilio/client/impl/sound/SoundPool$Sound;->samples:[B

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/twilio/client/impl/sound/SoundPool$Sound;->state:Lcom/twilio/client/impl/sound/SoundPool$Sound$State;

    sget-object v2, Lcom/twilio/client/impl/sound/SoundPool$Sound$State;->FAILED:Lcom/twilio/client/impl/sound/SoundPool$Sound$State;

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    monitor-enter p0

    :try_start_2
    iget v1, p0, Lcom/twilio/client/impl/sound/SoundPool;->lastStreamId:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/twilio/client/impl/sound/SoundPool;->lastStreamId:I

    if-nez v1, :cond_2

    iget v1, p0, Lcom/twilio/client/impl/sound/SoundPool;->lastStreamId:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/twilio/client/impl/sound/SoundPool;->lastStreamId:I

    :cond_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    new-instance v2, Lcom/twilio/client/impl/sound/SoundPool$Stream;

    invoke-direct {v2, v1, v0, p2}, Lcom/twilio/client/impl/sound/SoundPool$Stream;-><init>(ILcom/twilio/client/impl/sound/SoundPool$Sound;I)V

    iget-object v3, p0, Lcom/twilio/client/impl/sound/SoundPool;->streams:Ljava/util/Map;

    monitor-enter v3

    :try_start_3
    iget-object v0, p0, Lcom/twilio/client/impl/sound/SoundPool;->streams:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    monitor-enter p0

    if-eqz v1, :cond_4

    :try_start_4
    iget-object v0, p0, Lcom/twilio/client/impl/sound/SoundPool;->playThread:Ljava/lang/Thread;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/twilio/client/impl/sound/SoundPool;->playThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    new-instance v0, Lcom/twilio/client/impl/sound/SoundPoolPlayThread;

    iget v2, p0, Lcom/twilio/client/impl/sound/SoundPool;->maxStreams:I

    iget v3, p0, Lcom/twilio/client/impl/sound/SoundPool;->streamType:I

    iget-object v4, p0, Lcom/twilio/client/impl/sound/SoundPool;->streams:Ljava/util/Map;

    iget-object v5, p0, Lcom/twilio/client/impl/sound/SoundPool;->listener:Lcom/twilio/client/impl/sound/SoundPool$Listener;

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/twilio/client/impl/sound/SoundPoolPlayThread;-><init>(IILjava/util/Map;Lcom/twilio/client/impl/sound/SoundPool$Listener;)V

    iput-object v0, p0, Lcom/twilio/client/impl/sound/SoundPool;->playThread:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/twilio/client/impl/sound/SoundPool;->playThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    iget-object v2, p0, Lcom/twilio/client/impl/sound/SoundPool;->streams:Ljava/util/Map;

    monitor-enter v2

    :try_start_5
    iget-object v0, p0, Lcom/twilio/client/impl/sound/SoundPool;->streams:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    move v0, v1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v0

    :catchall_3
    move-exception v0

    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v0

    :catchall_4
    move-exception v0

    :try_start_9
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw v0
.end method

.method public release()V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/twilio/client/impl/sound/SoundPool;->playThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twilio/client/impl/sound/SoundPool;->playThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twilio/client/impl/sound/SoundPool;->playThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :try_start_0
    iget-object v0, p0, Lcom/twilio/client/impl/sound/SoundPool;->playThread:Ljava/lang/Thread;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v2, v3}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    iput-object v1, p0, Lcom/twilio/client/impl/sound/SoundPool;->playThread:Ljava/lang/Thread;

    :cond_0
    iget-object v0, p0, Lcom/twilio/client/impl/sound/SoundPool;->loadThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twilio/client/impl/sound/SoundPool;->loadThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twilio/client/impl/sound/SoundPool;->loadThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :try_start_1
    iget-object v0, p0, Lcom/twilio/client/impl/sound/SoundPool;->loadThread:Ljava/lang/Thread;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v2, v3}, Ljava/lang/Thread;->join(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    iput-object v1, p0, Lcom/twilio/client/impl/sound/SoundPool;->loadThread:Ljava/lang/Thread;

    :cond_1
    iget-object v0, p0, Lcom/twilio/client/impl/sound/SoundPool;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/twilio/client/impl/sound/SoundPool;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    iget-object v0, p0, Lcom/twilio/client/impl/sound/SoundPool;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    iput-object v1, p0, Lcom/twilio/client/impl/sound/SoundPool;->audioTrack:Landroid/media/AudioTrack;

    :cond_2
    iget-object v0, p0, Lcom/twilio/client/impl/sound/SoundPool;->streams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/twilio/client/impl/sound/SoundPool;->sounds:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/twilio/client/impl/sound/SoundPool;->loadQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public resume(I)V
    .locals 3

    iget-object v1, p0, Lcom/twilio/client/impl/sound/SoundPool;->streams:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/twilio/client/impl/sound/SoundPool;->streams:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twilio/client/impl/sound/SoundPool$Stream;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/twilio/client/impl/sound/SoundPool$Stream$State;->PLAYING:Lcom/twilio/client/impl/sound/SoundPool$Stream$State;

    iput-object v1, v0, Lcom/twilio/client/impl/sound/SoundPool$Stream;->state:Lcom/twilio/client/impl/sound/SoundPool$Stream$State;

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public stop(I)V
    .locals 3

    iget-object v1, p0, Lcom/twilio/client/impl/sound/SoundPool;->streams:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/twilio/client/impl/sound/SoundPool;->streams:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unload(I)V
    .locals 4

    iget-object v1, p0, Lcom/twilio/client/impl/sound/SoundPool;->loadQueue:Ljava/util/Queue;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/twilio/client/impl/sound/SoundPool;->loadQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twilio/client/impl/sound/SoundPool$LoadRequest;

    iget-object v3, v0, Lcom/twilio/client/impl/sound/SoundPool$LoadRequest;->sound:Lcom/twilio/client/impl/sound/SoundPool$Sound;

    iget v3, v3, Lcom/twilio/client/impl/sound/SoundPool$Sound;->soundId:I

    if-ne v3, p1, :cond_0

    iget-object v2, p0, Lcom/twilio/client/impl/sound/SoundPool;->loadQueue:Ljava/util/Queue;

    invoke-interface {v2, v0}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/twilio/client/impl/sound/SoundPool;->sounds:Ljava/util/Map;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/twilio/client/impl/sound/SoundPool;->sounds:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method
