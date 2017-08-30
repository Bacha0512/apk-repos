.class Lcom/weirdvoice/utils/Ringer$RingWorkerHandler;
.super Landroid/os/Handler;
.source "Ringer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/weirdvoice/utils/Ringer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RingWorkerHandler"
.end annotation


# static fields
.field public static final PROGRESS_RING:I


# instance fields
.field private askedStopped:Ljava/lang/Boolean;

.field private ringtone:Landroid/media/Ringtone;

.field final synthetic this$0:Lcom/weirdvoice/utils/Ringer;


# direct methods
.method public constructor <init>(Lcom/weirdvoice/utils/Ringer;Landroid/os/Looper;)V
    .locals 1
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 214
    iput-object p1, p0, Lcom/weirdvoice/utils/Ringer$RingWorkerHandler;->this$0:Lcom/weirdvoice/utils/Ringer;

    .line 215
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 211
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/weirdvoice/utils/Ringer$RingWorkerHandler;->askedStopped:Ljava/lang/Boolean;

    .line 212
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/weirdvoice/utils/Ringer$RingWorkerHandler;->ringtone:Landroid/media/Ringtone;

    .line 216
    return-void
.end method


# virtual methods
.method public declared-synchronized askStop()V
    .locals 1

    .prologue
    .line 245
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/weirdvoice/utils/Ringer$RingWorkerHandler;->askedStopped:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    monitor-exit p0

    return-void

    .line 245
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 253
    iget-object v1, p0, Lcom/weirdvoice/utils/Ringer$RingWorkerHandler;->ringtone:Landroid/media/Ringtone;

    if-nez v1, :cond_1

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 256
    :cond_1
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-nez v1, :cond_0

    .line 257
    iget-object v2, p0, Lcom/weirdvoice/utils/Ringer$RingWorkerHandler;->askedStopped:Ljava/lang/Boolean;

    monitor-enter v2

    .line 258
    :try_start_0
    iget-object v1, p0, Lcom/weirdvoice/utils/Ringer$RingWorkerHandler;->askedStopped:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 259
    iget-object v1, p0, Lcom/weirdvoice/utils/Ringer$RingWorkerHandler;->ringtone:Landroid/media/Ringtone;

    invoke-virtual {v1}, Landroid/media/Ringtone;->stop()V

    .line 260
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/weirdvoice/utils/Ringer$RingWorkerHandler;->ringtone:Landroid/media/Ringtone;

    .line 261
    monitor-exit v2

    goto :goto_0

    .line 257
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 265
    iget-object v1, p0, Lcom/weirdvoice/utils/Ringer$RingWorkerHandler;->ringtone:Landroid/media/Ringtone;

    invoke-virtual {v1}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_3

    .line 266
    iget-object v1, p0, Lcom/weirdvoice/utils/Ringer$RingWorkerHandler;->ringtone:Landroid/media/Ringtone;

    invoke-virtual {v1}, Landroid/media/Ringtone;->play()V

    .line 269
    :cond_3
    iget-object v1, p0, Lcom/weirdvoice/utils/Ringer$RingWorkerHandler;->this$0:Lcom/weirdvoice/utils/Ringer;

    # getter for: Lcom/weirdvoice/utils/Ringer;->ringerWorker:Lcom/weirdvoice/utils/Ringer$RingWorkerHandler;
    invoke-static {v1}, Lcom/weirdvoice/utils/Ringer;->access$0(Lcom/weirdvoice/utils/Ringer;)Lcom/weirdvoice/utils/Ringer$RingWorkerHandler;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/weirdvoice/utils/Ringer$RingWorkerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 270
    .local v0, "msgBis":Landroid/os/Message;
    iput v3, p1, Landroid/os/Message;->arg1:I

    .line 271
    iget-object v1, p0, Lcom/weirdvoice/utils/Ringer$RingWorkerHandler;->this$0:Lcom/weirdvoice/utils/Ringer;

    # getter for: Lcom/weirdvoice/utils/Ringer;->ringerWorker:Lcom/weirdvoice/utils/Ringer$RingWorkerHandler;
    invoke-static {v1}, Lcom/weirdvoice/utils/Ringer;->access$0(Lcom/weirdvoice/utils/Ringer;)Lcom/weirdvoice/utils/Ringer$RingWorkerHandler;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Lcom/weirdvoice/utils/Ringer$RingWorkerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public declared-synchronized isStopped()Z
    .locals 1

    .prologue
    .line 249
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/weirdvoice/utils/Ringer$RingWorkerHandler;->askedStopped:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/weirdvoice/utils/Ringer$RingWorkerHandler;->ringtone:Landroid/media/Ringtone;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setRingtone(Landroid/media/Ringtone;)V
    .locals 1
    .param p1, "ringtone"    # Landroid/media/Ringtone;

    .prologue
    .line 237
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/weirdvoice/utils/Ringer$RingWorkerHandler;->ringtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/weirdvoice/utils/Ringer$RingWorkerHandler;->ringtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 240
    :cond_0
    iput-object p1, p0, Lcom/weirdvoice/utils/Ringer$RingWorkerHandler;->ringtone:Landroid/media/Ringtone;

    .line 241
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/weirdvoice/utils/Ringer$RingWorkerHandler;->askedStopped:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    monitor-exit p0

    return-void

    .line 237
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public startRinging(Landroid/media/AudioManager;)V
    .locals 6
    .param p1, "audioManager"    # Landroid/media/AudioManager;

    .prologue
    const/4 v5, 0x0

    .line 223
    iget-object v1, p0, Lcom/weirdvoice/utils/Ringer$RingWorkerHandler;->ringtone:Landroid/media/Ringtone;

    if-eqz v1, :cond_0

    .line 224
    const-string v1, "Ringer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Starting ring with "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/weirdvoice/utils/Ringer$RingWorkerHandler;->ringtone:Landroid/media/Ringtone;

    iget-object v4, p0, Lcom/weirdvoice/utils/Ringer$RingWorkerHandler;->this$0:Lcom/weirdvoice/utils/Ringer;

    iget-object v4, v4, Lcom/weirdvoice/utils/Ringer;->context:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    iget-object v1, p0, Lcom/weirdvoice/utils/Ringer$RingWorkerHandler;->this$0:Lcom/weirdvoice/utils/Ringer;

    # getter for: Lcom/weirdvoice/utils/Ringer;->ringerWorker:Lcom/weirdvoice/utils/Ringer$RingWorkerHandler;
    invoke-static {v1}, Lcom/weirdvoice/utils/Ringer;->access$0(Lcom/weirdvoice/utils/Ringer;)Lcom/weirdvoice/utils/Ringer$RingWorkerHandler;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/weirdvoice/utils/Ringer$RingWorkerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 226
    .local v0, "msg":Landroid/os/Message;
    iput v5, v0, Landroid/os/Message;->arg1:I

    .line 227
    const-string v1, "Ringer"

    const-string v2, "Starting ringer..."

    invoke-static {v1, v2}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->setMode(I)V

    .line 229
    iget-object v1, p0, Lcom/weirdvoice/utils/Ringer$RingWorkerHandler;->this$0:Lcom/weirdvoice/utils/Ringer;

    # getter for: Lcom/weirdvoice/utils/Ringer;->ringerWorker:Lcom/weirdvoice/utils/Ringer$RingWorkerHandler;
    invoke-static {v1}, Lcom/weirdvoice/utils/Ringer;->access$0(Lcom/weirdvoice/utils/Ringer;)Lcom/weirdvoice/utils/Ringer$RingWorkerHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/weirdvoice/utils/Ringer$RingWorkerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 231
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method
