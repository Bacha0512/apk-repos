.class public Lcom/twilio/client/impl/MediaManager;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/twilio/client/impl/sound/SoundPool$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twilio/client/impl/MediaManager$PlaybackItem;,
        Lcom/twilio/client/impl/MediaManager$SoundPlaybackListener;,
        Lcom/twilio/client/impl/MediaManager$StockSound;
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_STREAMS:I = 0x8

.field public static final INVALID_PLAYBACK_ID:I

.field private static final logger:Lcom/twilio/client/impl/logging/Logger;

.field private static sInstance:Lcom/twilio/client/impl/MediaManager;


# instance fields
.field private final context:Landroid/content/Context;

.field private lastPlaybackId:I

.field private lastRunningQueuedItem:Lcom/twilio/client/impl/MediaManager$PlaybackItem;

.field private final playQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/twilio/client/impl/MediaManager$PlaybackItem;",
            ">;"
        }
    .end annotation
.end field

.field private soundPool:Lcom/twilio/client/impl/sound/SoundPool;

.field private final soundsInFlight:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/twilio/client/impl/MediaManager$PlaybackItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/twilio/client/impl/MediaManager;

    invoke-static {v0}, Lcom/twilio/client/impl/logging/Logger;->getLogger(Ljava/lang/Class;)Lcom/twilio/client/impl/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/twilio/client/impl/MediaManager;->logger:Lcom/twilio/client/impl/logging/Logger;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/twilio/client/impl/MediaManager;->playQueue:Ljava/util/Queue;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/twilio/client/impl/MediaManager;->soundsInFlight:Ljava/util/Map;

    const/4 v0, 0x0

    iput v0, p0, Lcom/twilio/client/impl/MediaManager;->lastPlaybackId:I

    iput-object p1, p0, Lcom/twilio/client/impl/MediaManager;->context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/twilio/client/impl/MediaManager;->loadAssets()V

    return-void
.end method

.method public static destroy()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/twilio/client/impl/MediaManager;->sInstance:Lcom/twilio/client/impl/MediaManager;

    return-void
.end method

.method public static getInstance()Lcom/twilio/client/impl/MediaManager;
    .locals 2

    sget-object v0, Lcom/twilio/client/impl/MediaManager;->sInstance:Lcom/twilio/client/impl/MediaManager;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MediaManager has not been created yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/twilio/client/impl/MediaManager;->sInstance:Lcom/twilio/client/impl/MediaManager;

    return-object v0
.end method

.method private handleComplete(Lcom/twilio/client/impl/MediaManager$PlaybackItem;)V
    .locals 4

    iget-object v0, p0, Lcom/twilio/client/impl/MediaManager;->soundsInFlight:Ljava/util/Map;

    iget v1, p1, Lcom/twilio/client/impl/MediaManager$PlaybackItem;->playbackId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/twilio/client/impl/MediaManager;->lastRunningQueuedItem:Lcom/twilio/client/impl/MediaManager$PlaybackItem;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/twilio/client/impl/MediaManager;->playQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twilio/client/impl/MediaManager$PlaybackItem;

    iput-object v0, p0, Lcom/twilio/client/impl/MediaManager;->lastRunningQueuedItem:Lcom/twilio/client/impl/MediaManager$PlaybackItem;

    iget-object v0, p0, Lcom/twilio/client/impl/MediaManager;->lastRunningQueuedItem:Lcom/twilio/client/impl/MediaManager$PlaybackItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twilio/client/impl/MediaManager;->soundsInFlight:Ljava/util/Map;

    iget-object v1, p0, Lcom/twilio/client/impl/MediaManager;->lastRunningQueuedItem:Lcom/twilio/client/impl/MediaManager$PlaybackItem;

    iget v1, v1, Lcom/twilio/client/impl/MediaManager$PlaybackItem;->playbackId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/twilio/client/impl/MediaManager;->lastRunningQueuedItem:Lcom/twilio/client/impl/MediaManager$PlaybackItem;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/twilio/client/impl/MediaManager;->lastRunningQueuedItem:Lcom/twilio/client/impl/MediaManager$PlaybackItem;

    iget-object v0, v0, Lcom/twilio/client/impl/MediaManager$PlaybackItem;->sound:Lcom/twilio/client/impl/MediaManager$StockSound;

    invoke-virtual {v0}, Lcom/twilio/client/impl/MediaManager$StockSound;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/twilio/client/impl/MediaManager;->lastRunningQueuedItem:Lcom/twilio/client/impl/MediaManager$PlaybackItem;

    iget-object v0, v0, Lcom/twilio/client/impl/MediaManager$PlaybackItem;->listener:Lcom/twilio/client/impl/MediaManager$SoundPlaybackListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twilio/client/impl/MediaManager;->lastRunningQueuedItem:Lcom/twilio/client/impl/MediaManager$PlaybackItem;

    iget-object v0, v0, Lcom/twilio/client/impl/MediaManager$PlaybackItem;->listener:Lcom/twilio/client/impl/MediaManager$SoundPlaybackListener;

    invoke-interface {v0}, Lcom/twilio/client/impl/MediaManager$SoundPlaybackListener;->onCompletion()V

    iget-object v0, p0, Lcom/twilio/client/impl/MediaManager;->lastRunningQueuedItem:Lcom/twilio/client/impl/MediaManager$PlaybackItem;

    invoke-direct {p0, v0}, Lcom/twilio/client/impl/MediaManager;->handleComplete(Lcom/twilio/client/impl/MediaManager$PlaybackItem;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/twilio/client/impl/MediaManager;->lastRunningQueuedItem:Lcom/twilio/client/impl/MediaManager$PlaybackItem;

    iget-object v1, p0, Lcom/twilio/client/impl/MediaManager;->soundPool:Lcom/twilio/client/impl/sound/SoundPool;

    iget-object v2, p0, Lcom/twilio/client/impl/MediaManager;->lastRunningQueuedItem:Lcom/twilio/client/impl/MediaManager$PlaybackItem;

    iget-object v2, v2, Lcom/twilio/client/impl/MediaManager$PlaybackItem;->sound:Lcom/twilio/client/impl/MediaManager$StockSound;

    # getter for: Lcom/twilio/client/impl/MediaManager$StockSound;->soundId:I
    invoke-static {v2}, Lcom/twilio/client/impl/MediaManager$StockSound;->access$000(Lcom/twilio/client/impl/MediaManager$StockSound;)I

    move-result v2

    iget-object v3, p0, Lcom/twilio/client/impl/MediaManager;->lastRunningQueuedItem:Lcom/twilio/client/impl/MediaManager$PlaybackItem;

    iget v3, v3, Lcom/twilio/client/impl/MediaManager$PlaybackItem;->loop:I

    invoke-virtual {v1, v2, v3}, Lcom/twilio/client/impl/sound/SoundPool;->play(II)I

    move-result v1

    iput v1, v0, Lcom/twilio/client/impl/MediaManager$PlaybackItem;->streamId:I

    goto :goto_0
.end method

.method public static initialize(Landroid/content/Context;)Lcom/twilio/client/impl/MediaManager;
    .locals 2

    sget-object v0, Lcom/twilio/client/impl/MediaManager;->sInstance:Lcom/twilio/client/impl/MediaManager;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MediaManager has already been initalized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/twilio/client/impl/MediaManager;

    invoke-direct {v0, p0}, Lcom/twilio/client/impl/MediaManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/twilio/client/impl/MediaManager;->sInstance:Lcom/twilio/client/impl/MediaManager;

    sget-object v0, Lcom/twilio/client/impl/MediaManager;->sInstance:Lcom/twilio/client/impl/MediaManager;

    return-object v0
.end method

.method private loadAssets()V
    .locals 7

    new-instance v0, Lcom/twilio/client/impl/sound/SoundPool;

    const/16 v1, 0x8

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, p0}, Lcom/twilio/client/impl/sound/SoundPool;-><init>(IILcom/twilio/client/impl/sound/SoundPool$Listener;)V

    iput-object v0, p0, Lcom/twilio/client/impl/MediaManager;->soundPool:Lcom/twilio/client/impl/sound/SoundPool;

    invoke-static {}, Lcom/twilio/client/impl/MediaManager$StockSound;->values()[Lcom/twilio/client/impl/MediaManager$StockSound;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    sget-object v4, Lcom/twilio/client/impl/MediaManager;->logger:Lcom/twilio/client/impl/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loading sound "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/twilio/client/impl/logging/Logger;->d(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/twilio/client/impl/MediaManager;->soundPool:Lcom/twilio/client/impl/sound/SoundPool;

    iget-object v5, p0, Lcom/twilio/client/impl/MediaManager;->context:Landroid/content/Context;

    invoke-virtual {v3}, Lcom/twilio/client/impl/MediaManager$StockSound;->getResName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/twilio/client/impl/sound/SoundPool;->load(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/twilio/client/impl/MediaManager$StockSound;->setSoundId(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized cancel(I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/twilio/client/impl/MediaManager;->soundsInFlight:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twilio/client/impl/MediaManager$PlaybackItem;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/twilio/client/impl/MediaManager;->soundPool:Lcom/twilio/client/impl/sound/SoundPool;

    iget v2, v0, Lcom/twilio/client/impl/MediaManager$PlaybackItem;->streamId:I

    invoke-virtual {v1, v2}, Lcom/twilio/client/impl/sound/SoundPool;->stop(I)V

    invoke-direct {p0, v0}, Lcom/twilio/client/impl/MediaManager;->handleComplete(Lcom/twilio/client/impl/MediaManager$PlaybackItem;)V

    :cond_0
    iget-object v0, p0, Lcom/twilio/client/impl/MediaManager;->playQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twilio/client/impl/MediaManager$PlaybackItem;

    iget v2, v0, Lcom/twilio/client/impl/MediaManager$PlaybackItem;->playbackId:I

    if-ne v2, p1, :cond_1

    iget-object v1, p0, Lcom/twilio/client/impl/MediaManager;->playQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/twilio/client/impl/MediaManager;->release()V

    return-void
.end method

.method public onLoadComplete(I)V
    .locals 5

    invoke-static {}, Lcom/twilio/client/impl/MediaManager$StockSound;->values()[Lcom/twilio/client/impl/MediaManager$StockSound;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-virtual {v3}, Lcom/twilio/client/impl/MediaManager$StockSound;->getSoundId()I

    move-result v4

    if-ne v4, p1, :cond_1

    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lcom/twilio/client/impl/MediaManager$StockSound;->setAvailable(Z)V

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onLoadFailed(I)V
    .locals 6

    const/4 v1, 0x0

    invoke-static {}, Lcom/twilio/client/impl/MediaManager$StockSound;->values()[Lcom/twilio/client/impl/MediaManager$StockSound;

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    invoke-virtual {v4}, Lcom/twilio/client/impl/MediaManager$StockSound;->getSoundId()I

    move-result v5

    if-ne v5, p1, :cond_1

    invoke-virtual {v4, v1}, Lcom/twilio/client/impl/MediaManager$StockSound;->setAvailable(Z)V

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onPlayComplete(I)V
    .locals 3

    sget-object v0, Lcom/twilio/client/impl/MediaManager;->logger:Lcom/twilio/client/impl/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "play complete for stream "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twilio/client/impl/logging/Logger;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twilio/client/impl/MediaManager;->soundsInFlight:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twilio/client/impl/MediaManager$PlaybackItem;

    iget v2, v0, Lcom/twilio/client/impl/MediaManager$PlaybackItem;->streamId:I

    if-ne v2, p1, :cond_0

    iget-object v1, v0, Lcom/twilio/client/impl/MediaManager$PlaybackItem;->listener:Lcom/twilio/client/impl/MediaManager$SoundPlaybackListener;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/twilio/client/impl/MediaManager$PlaybackItem;->listener:Lcom/twilio/client/impl/MediaManager$SoundPlaybackListener;

    invoke-interface {v1}, Lcom/twilio/client/impl/MediaManager$SoundPlaybackListener;->onCompletion()V

    :cond_1
    invoke-direct {p0, v0}, Lcom/twilio/client/impl/MediaManager;->handleComplete(Lcom/twilio/client/impl/MediaManager$PlaybackItem;)V

    :cond_2
    return-void
.end method

.method public declared-synchronized playSound(Lcom/twilio/client/impl/MediaManager$StockSound;I)I
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/twilio/client/impl/MediaManager;->playSound(Lcom/twilio/client/impl/MediaManager$StockSound;ILcom/twilio/client/impl/MediaManager$SoundPlaybackListener;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized playSound(Lcom/twilio/client/impl/MediaManager$StockSound;ILcom/twilio/client/impl/MediaManager$SoundPlaybackListener;)I
    .locals 6

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/twilio/client/impl/MediaManager;->lastPlaybackId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/twilio/client/impl/MediaManager;->lastPlaybackId:I

    if-nez v1, :cond_0

    iget v0, p0, Lcom/twilio/client/impl/MediaManager;->lastPlaybackId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/twilio/client/impl/MediaManager;->lastPlaybackId:I

    :cond_0
    new-instance v0, Lcom/twilio/client/impl/MediaManager$PlaybackItem;

    const/4 v2, 0x0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/twilio/client/impl/MediaManager$PlaybackItem;-><init>(IILcom/twilio/client/impl/MediaManager$StockSound;ILcom/twilio/client/impl/MediaManager$SoundPlaybackListener;)V

    iget-object v2, p0, Lcom/twilio/client/impl/MediaManager;->soundsInFlight:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/twilio/client/impl/MediaManager;->soundPool:Lcom/twilio/client/impl/sound/SoundPool;

    # getter for: Lcom/twilio/client/impl/MediaManager$StockSound;->soundId:I
    invoke-static {p1}, Lcom/twilio/client/impl/MediaManager$StockSound;->access$000(Lcom/twilio/client/impl/MediaManager$StockSound;)I

    move-result v3

    invoke-virtual {v2, v3, p2}, Lcom/twilio/client/impl/sound/SoundPool;->play(II)I

    move-result v2

    iput v2, v0, Lcom/twilio/client/impl/MediaManager$PlaybackItem;->streamId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized queueSound(Lcom/twilio/client/impl/MediaManager$StockSound;I)I
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/twilio/client/impl/MediaManager;->queueSound(Lcom/twilio/client/impl/MediaManager$StockSound;ILcom/twilio/client/impl/MediaManager$SoundPlaybackListener;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized queueSound(Lcom/twilio/client/impl/MediaManager$StockSound;ILcom/twilio/client/impl/MediaManager$SoundPlaybackListener;)I
    .locals 6

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/twilio/client/impl/MediaManager;->lastPlaybackId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/twilio/client/impl/MediaManager;->lastPlaybackId:I

    if-nez v1, :cond_0

    iget v0, p0, Lcom/twilio/client/impl/MediaManager;->lastPlaybackId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/twilio/client/impl/MediaManager;->lastPlaybackId:I

    :cond_0
    new-instance v0, Lcom/twilio/client/impl/MediaManager$PlaybackItem;

    const/4 v2, 0x0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/twilio/client/impl/MediaManager$PlaybackItem;-><init>(IILcom/twilio/client/impl/MediaManager$StockSound;ILcom/twilio/client/impl/MediaManager$SoundPlaybackListener;)V

    iget-object v2, p0, Lcom/twilio/client/impl/MediaManager;->lastRunningQueuedItem:Lcom/twilio/client/impl/MediaManager$PlaybackItem;

    if-nez v2, :cond_2

    iput-object v0, p0, Lcom/twilio/client/impl/MediaManager;->lastRunningQueuedItem:Lcom/twilio/client/impl/MediaManager$PlaybackItem;

    iget-object v2, p0, Lcom/twilio/client/impl/MediaManager;->soundsInFlight:Ljava/util/Map;

    iget v3, v0, Lcom/twilio/client/impl/MediaManager$PlaybackItem;->playbackId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/twilio/client/impl/MediaManager;->soundPool:Lcom/twilio/client/impl/sound/SoundPool;

    iget-object v3, v0, Lcom/twilio/client/impl/MediaManager$PlaybackItem;->sound:Lcom/twilio/client/impl/MediaManager$StockSound;

    # getter for: Lcom/twilio/client/impl/MediaManager$StockSound;->soundId:I
    invoke-static {v3}, Lcom/twilio/client/impl/MediaManager$StockSound;->access$000(Lcom/twilio/client/impl/MediaManager$StockSound;)I

    move-result v3

    iget v4, v0, Lcom/twilio/client/impl/MediaManager$PlaybackItem;->loop:I

    invoke-virtual {v2, v3, v4}, Lcom/twilio/client/impl/sound/SoundPool;->play(II)I

    move-result v2

    iput v2, v0, Lcom/twilio/client/impl/MediaManager$PlaybackItem;->streamId:I

    sget-object v2, Lcom/twilio/client/impl/MediaManager;->logger:Lcom/twilio/client/impl/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "playing sound "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " as id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/twilio/client/impl/logging/Logger;->d(Ljava/lang/String;)V

    iget v2, v0, Lcom/twilio/client/impl/MediaManager$PlaybackItem;->streamId:I

    if-nez v2, :cond_1

    iget v0, v0, Lcom/twilio/client/impl/MediaManager$PlaybackItem;->streamId:I

    invoke-virtual {p0, v0}, Lcom/twilio/client/impl/MediaManager;->onPlayComplete(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    return v1

    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/twilio/client/impl/MediaManager;->playQueue:Ljava/util/Queue;

    invoke-interface {v2, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    sget-object v0, Lcom/twilio/client/impl/MediaManager;->logger:Lcom/twilio/client/impl/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queued sound "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " as id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/twilio/client/impl/logging/Logger;->d(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/twilio/client/impl/MediaManager;->soundPool:Lcom/twilio/client/impl/sound/SoundPool;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twilio/client/impl/MediaManager;->soundPool:Lcom/twilio/client/impl/sound/SoundPool;

    invoke-virtual {v0}, Lcom/twilio/client/impl/sound/SoundPool;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twilio/client/impl/MediaManager;->soundPool:Lcom/twilio/client/impl/sound/SoundPool;

    :cond_0
    return-void
.end method
