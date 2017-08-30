.class Lcom/twilio/client/impl/sound/SoundPoolLoadThread;
.super Ljava/lang/Thread;


# static fields
.field private static final logger:Lcom/twilio/client/impl/logging/Logger;


# instance fields
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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/twilio/client/impl/sound/SoundPoolLoadThread;

    invoke-static {v0}, Lcom/twilio/client/impl/logging/Logger;->getLogger(Ljava/lang/Class;)Lcom/twilio/client/impl/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/twilio/client/impl/sound/SoundPoolLoadThread;->logger:Lcom/twilio/client/impl/logging/Logger;

    return-void
.end method

.method constructor <init>(Ljava/util/Queue;Lcom/twilio/client/impl/sound/SoundPool$Listener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue",
            "<",
            "Lcom/twilio/client/impl/sound/SoundPool$LoadRequest;",
            ">;",
            "Lcom/twilio/client/impl/sound/SoundPool$Listener;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lcom/twilio/client/impl/sound/SoundPoolLoadThread;->loadQueue:Ljava/util/Queue;

    iput-object p2, p0, Lcom/twilio/client/impl/sound/SoundPoolLoadThread;->listener:Lcom/twilio/client/impl/sound/SoundPool$Listener;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v3, 0x0

    sget-object v0, Lcom/twilio/client/impl/sound/SoundPoolLoadThread;->logger:Lcom/twilio/client/impl/logging/Logger;

    const-string v1, "load thread starting"

    invoke-virtual {v0, v1}, Lcom/twilio/client/impl/logging/Logger;->d(Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/twilio/client/impl/sound/SoundPoolLoadThread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/twilio/client/impl/sound/SoundPoolLoadThread;->loadQueue:Ljava/util/Queue;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/twilio/client/impl/sound/SoundPoolLoadThread;->loadQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twilio/client/impl/sound/SoundPool$LoadRequest;

    monitor-exit v1

    if-nez v0, :cond_2

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    iget v1, v0, Lcom/twilio/client/impl/sound/SoundPool$LoadRequest;->resId:I

    if-eqz v1, :cond_8

    iget-object v1, v0, Lcom/twilio/client/impl/sound/SoundPool$LoadRequest;->resources:Landroid/content/res/Resources;

    iget v2, v0, Lcom/twilio/client/impl/sound/SoundPool$LoadRequest;->resId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-gtz v2, :cond_5

    :cond_3
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "AssetFileDescriptor null or length <= 0"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catch_0
    move-exception v1

    move-object v2, v3

    :goto_2
    :try_start_2
    sget-object v4, Lcom/twilio/client/impl/sound/SoundPoolLoadThread;->logger:Lcom/twilio/client/impl/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to load sound with ID "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/twilio/client/impl/sound/SoundPool$LoadRequest;->resId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Lcom/twilio/client/impl/logging/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v1, v0, Lcom/twilio/client/impl/sound/SoundPool$LoadRequest;->sound:Lcom/twilio/client/impl/sound/SoundPool$Sound;

    sget-object v4, Lcom/twilio/client/impl/sound/SoundPool$Sound$State;->FAILED:Lcom/twilio/client/impl/sound/SoundPool$Sound$State;

    iput-object v4, v1, Lcom/twilio/client/impl/sound/SoundPool$Sound;->state:Lcom/twilio/client/impl/sound/SoundPool$Sound$State;

    iget-object v1, p0, Lcom/twilio/client/impl/sound/SoundPoolLoadThread;->listener:Lcom/twilio/client/impl/sound/SoundPool$Listener;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/twilio/client/impl/sound/SoundPoolLoadThread;->listener:Lcom/twilio/client/impl/sound/SoundPool$Listener;

    iget-object v0, v0, Lcom/twilio/client/impl/sound/SoundPool$LoadRequest;->sound:Lcom/twilio/client/impl/sound/SoundPool$Sound;

    iget v0, v0, Lcom/twilio/client/impl/sound/SoundPool$Sound;->soundId:I

    invoke-interface {v1, v0}, Lcom/twilio/client/impl/sound/SoundPool$Listener;->onLoadFailed(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_4
    if-eqz v2, :cond_0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :cond_5
    :try_start_4
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v2

    :try_start_5
    new-instance v1, Lcom/twilio/client/impl/sound/WaveFile;

    invoke-direct {v1, v2}, Lcom/twilio/client/impl/sound/WaveFile;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Lcom/twilio/client/impl/sound/WaveFile;->validateHeaders()V

    iget-object v4, v0, Lcom/twilio/client/impl/sound/SoundPool$LoadRequest;->sound:Lcom/twilio/client/impl/sound/SoundPool$Sound;

    invoke-virtual {v1}, Lcom/twilio/client/impl/sound/WaveFile;->getData()[B

    move-result-object v1

    iput-object v1, v4, Lcom/twilio/client/impl/sound/SoundPool$Sound;->samples:[B

    iget-object v1, v0, Lcom/twilio/client/impl/sound/SoundPool$LoadRequest;->sound:Lcom/twilio/client/impl/sound/SoundPool$Sound;

    sget-object v4, Lcom/twilio/client/impl/sound/SoundPool$Sound$State;->READY:Lcom/twilio/client/impl/sound/SoundPool$Sound$State;

    iput-object v4, v1, Lcom/twilio/client/impl/sound/SoundPool$Sound;->state:Lcom/twilio/client/impl/sound/SoundPool$Sound$State;

    iget-object v1, p0, Lcom/twilio/client/impl/sound/SoundPoolLoadThread;->listener:Lcom/twilio/client/impl/sound/SoundPool$Listener;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/twilio/client/impl/sound/SoundPoolLoadThread;->listener:Lcom/twilio/client/impl/sound/SoundPool$Listener;

    iget-object v4, v0, Lcom/twilio/client/impl/sound/SoundPool$LoadRequest;->sound:Lcom/twilio/client/impl/sound/SoundPool$Sound;

    iget v4, v4, Lcom/twilio/client/impl/sound/SoundPool$Sound;->soundId:I

    invoke-interface {v1, v4}, Lcom/twilio/client/impl/sound/SoundPool$Listener;->onLoadComplete(I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :cond_6
    if-eqz v2, :cond_0

    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    move-object v2, v3

    :goto_3
    if-eqz v2, :cond_7

    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    :cond_7
    :goto_4
    throw v0

    :catch_3
    move-exception v1

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :cond_8
    move-object v1, v3

    goto/16 :goto_1
.end method
