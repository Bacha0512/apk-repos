.class public Lcom/weirdvoice/utils/Ringer;
.super Ljava/lang/Object;
.source "Ringer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/weirdvoice/utils/Ringer$RingWorkerHandler;,
        Lcom/weirdvoice/utils/Ringer$VibratorThread;
    }
.end annotation


# static fields
.field private static final PAUSE_LENGTH:I = 0x3e8

.field private static final THIS_FILE:Ljava/lang/String; = "Ringer"

.field private static final VIBRATE_LENGTH:I = 0x3e8


# instance fields
.field context:Landroid/content/Context;

.field customRingtoneUri:Landroid/net/Uri;

.field ringerThread:Landroid/os/HandlerThread;

.field private ringerWorker:Lcom/weirdvoice/utils/Ringer$RingWorkerHandler;

.field vibrator:Landroid/os/Vibrator;

.field vibratorThread:Lcom/weirdvoice/utils/Ringer$VibratorThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "aContext"    # Landroid/content/Context;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/weirdvoice/utils/Ringer;->context:Landroid/content/Context;

    .line 62
    iget-object v0, p0, Lcom/weirdvoice/utils/Ringer;->context:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/weirdvoice/utils/Ringer;->vibrator:Landroid/os/Vibrator;

    .line 63
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "RingerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/weirdvoice/utils/Ringer;->ringerThread:Landroid/os/HandlerThread;

    .line 64
    iget-object v0, p0, Lcom/weirdvoice/utils/Ringer;->ringerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 65
    new-instance v0, Lcom/weirdvoice/utils/Ringer$RingWorkerHandler;

    iget-object v1, p0, Lcom/weirdvoice/utils/Ringer;->ringerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/weirdvoice/utils/Ringer$RingWorkerHandler;-><init>(Lcom/weirdvoice/utils/Ringer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/weirdvoice/utils/Ringer;->ringerWorker:Lcom/weirdvoice/utils/Ringer$RingWorkerHandler;

    .line 66
    return-void
.end method

.method static synthetic access$0(Lcom/weirdvoice/utils/Ringer;)Lcom/weirdvoice/utils/Ringer$RingWorkerHandler;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/weirdvoice/utils/Ringer;->ringerWorker:Lcom/weirdvoice/utils/Ringer$RingWorkerHandler;

    return-object v0
.end method

.method private getRingtone(Ljava/lang/String;Ljava/lang/String;)Landroid/media/Ringtone;
    .locals 5
    .param p1, "remoteContact"    # Ljava/lang/String;
    .param p2, "defaultRingtone"    # Ljava/lang/String;

    .prologue
    .line 277
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 281
    .local v1, "ringtoneUri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/weirdvoice/utils/Ringer;->context:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/weirdvoice/models/CallerInfo;->getCallerInfoFromSipUri(Landroid/content/Context;Ljava/lang/String;)Lcom/weirdvoice/models/CallerInfo;

    move-result-object v0

    .line 283
    .local v0, "callerInfo":Lcom/weirdvoice/models/CallerInfo;
    if-eqz v0, :cond_0

    iget-boolean v2, v0, Lcom/weirdvoice/models/CallerInfo;->contactExists:Z

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/weirdvoice/models/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    if-eqz v2, :cond_0

    .line 284
    const-string v2, "Ringer"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Found ringtone for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/weirdvoice/models/CallerInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    iget-object v1, v0, Lcom/weirdvoice/models/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    .line 288
    :cond_0
    iget-object v2, p0, Lcom/weirdvoice/utils/Ringer;->context:Landroid/content/Context;

    invoke-static {v2, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v2

    return-object v2
.end method

.method private stopRinger()V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/weirdvoice/utils/Ringer;->ringerWorker:Lcom/weirdvoice/utils/Ringer$RingWorkerHandler;

    invoke-virtual {v0}, Lcom/weirdvoice/utils/Ringer$RingWorkerHandler;->askStop()V

    .line 146
    return-void
.end method

.method private stopVibrator()V
    .locals 4

    .prologue
    .line 150
    iget-object v0, p0, Lcom/weirdvoice/utils/Ringer;->vibratorThread:Lcom/weirdvoice/utils/Ringer$VibratorThread;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/weirdvoice/utils/Ringer;->vibratorThread:Lcom/weirdvoice/utils/Ringer$VibratorThread;

    invoke-virtual {v0}, Lcom/weirdvoice/utils/Ringer$VibratorThread;->interrupt()V

    .line 153
    :try_start_0
    iget-object v0, p0, Lcom/weirdvoice/utils/Ringer;->vibratorThread:Lcom/weirdvoice/utils/Ringer$VibratorThread;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Lcom/weirdvoice/utils/Ringer$VibratorThread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/weirdvoice/utils/Ringer;->vibratorThread:Lcom/weirdvoice/utils/Ringer$VibratorThread;

    .line 158
    :cond_0
    return-void

    .line 154
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public isRinging()Z
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/weirdvoice/utils/Ringer;->ringerWorker:Lcom/weirdvoice/utils/Ringer$RingWorkerHandler;

    invoke-virtual {v0}, Lcom/weirdvoice/utils/Ringer$RingWorkerHandler;->isStopped()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/weirdvoice/utils/Ringer;->vibratorThread:Lcom/weirdvoice/utils/Ringer$VibratorThread;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public ring(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "remoteContact"    # Ljava/lang/String;
    .param p2, "defaultRingtone"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    .line 73
    const-string v4, "Ringer"

    const-string v5, "==> ring() called..."

    invoke-static {v4, v5}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    monitor-enter p0

    .line 78
    :try_start_0
    iget-object v4, p0, Lcom/weirdvoice/utils/Ringer;->context:Landroid/content/Context;

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 81
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-direct {p0, p1, p2}, Lcom/weirdvoice/utils/Ringer;->getRingtone(Ljava/lang/String;Ljava/lang/String;)Landroid/media/Ringtone;

    move-result-object v2

    .line 82
    .local v2, "ringtone":Landroid/media/Ringtone;
    iget-object v4, p0, Lcom/weirdvoice/utils/Ringer;->ringerWorker:Lcom/weirdvoice/utils/Ringer$RingWorkerHandler;

    invoke-virtual {v4, v2}, Lcom/weirdvoice/utils/Ringer$RingWorkerHandler;->setRingtone(Landroid/media/Ringtone;)V

    .line 85
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    .line 86
    .local v1, "ringerMode":I
    if-nez v1, :cond_0

    .line 87
    const-string v4, "Ringer"

    const-string v5, "skipping ring and vibrate because profile is Silent"

    invoke-static {v4, v5}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    monitor-exit p0

    .line 118
    :goto_0
    return-void

    .line 92
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    move-result v3

    .line 93
    .local v3, "vibrateSetting":I
    const-string v4, "Ringer"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "v="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " rm="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v4, p0, Lcom/weirdvoice/utils/Ringer;->vibratorThread:Lcom/weirdvoice/utils/Ringer$VibratorThread;

    if-nez v4, :cond_2

    .line 95
    if-eq v3, v7, :cond_1

    .line 96
    if-ne v1, v7, :cond_2

    .line 97
    :cond_1
    new-instance v4, Lcom/weirdvoice/utils/Ringer$VibratorThread;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/weirdvoice/utils/Ringer$VibratorThread;-><init>(Lcom/weirdvoice/utils/Ringer;Lcom/weirdvoice/utils/Ringer$VibratorThread;)V

    iput-object v4, p0, Lcom/weirdvoice/utils/Ringer;->vibratorThread:Lcom/weirdvoice/utils/Ringer$VibratorThread;

    .line 98
    const-string v4, "Ringer"

    const-string v5, "Starting vibrator..."

    invoke-static {v4, v5}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object v4, p0, Lcom/weirdvoice/utils/Ringer;->vibratorThread:Lcom/weirdvoice/utils/Ringer$VibratorThread;

    invoke-virtual {v4}, Lcom/weirdvoice/utils/Ringer$VibratorThread;->start()V

    .line 103
    :cond_2
    if-eq v1, v7, :cond_3

    .line 104
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    if-nez v4, :cond_4

    .line 105
    :cond_3
    const-string v4, "Ringer"

    const-string v5, "skipping ring because profile is Vibrate OR because volume is zero"

    invoke-static {v4, v5}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    monitor-exit p0

    goto :goto_0

    .line 75
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    .end local v1    # "ringerMode":I
    .end local v2    # "ringtone":Landroid/media/Ringtone;
    .end local v3    # "vibrateSetting":I
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 110
    .restart local v0    # "audioManager":Landroid/media/AudioManager;
    .restart local v1    # "ringerMode":I
    .restart local v2    # "ringtone":Landroid/media/Ringtone;
    .restart local v3    # "vibrateSetting":I
    :cond_4
    if-nez v2, :cond_5

    .line 111
    :try_start_1
    const-string v4, "Ringer"

    const-string v5, "No ringtone available - do not ring"

    invoke-static {v4, v5}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    monitor-exit p0

    goto :goto_0

    .line 115
    :cond_5
    iget-object v4, p0, Lcom/weirdvoice/utils/Ringer;->ringerWorker:Lcom/weirdvoice/utils/Ringer$RingWorkerHandler;

    invoke-virtual {v4, v0}, Lcom/weirdvoice/utils/Ringer$RingWorkerHandler;->startRinging(Landroid/media/AudioManager;)V

    .line 75
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public stopRing()V
    .locals 2

    .prologue
    .line 136
    monitor-enter p0

    .line 137
    :try_start_0
    const-string v0, "Ringer"

    const-string v1, "==> stopRing() called..."

    invoke-static {v0, v1}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-direct {p0}, Lcom/weirdvoice/utils/Ringer;->stopVibrator()V

    .line 139
    invoke-direct {p0}, Lcom/weirdvoice/utils/Ringer;->stopRinger()V

    .line 136
    monitor-exit p0

    .line 141
    return-void

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateRingerMode()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 162
    iget-object v3, p0, Lcom/weirdvoice/utils/Ringer;->context:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 163
    .local v0, "audioManager":Landroid/media/AudioManager;
    monitor-enter p0

    .line 164
    :try_start_0
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    .line 166
    .local v1, "ringerMode":I
    if-nez v1, :cond_0

    .line 167
    invoke-virtual {p0}, Lcom/weirdvoice/utils/Ringer;->stopRing()V

    .line 168
    monitor-exit p0

    .line 188
    :goto_0
    return-void

    .line 172
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    move-result v2

    .line 174
    .local v2, "vibrateSetting":I
    iget-object v3, p0, Lcom/weirdvoice/utils/Ringer;->vibratorThread:Lcom/weirdvoice/utils/Ringer$VibratorThread;

    if-nez v3, :cond_2

    if-eq v2, v5, :cond_1

    if-ne v1, v5, :cond_2

    .line 175
    :cond_1
    new-instance v3, Lcom/weirdvoice/utils/Ringer$VibratorThread;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/weirdvoice/utils/Ringer$VibratorThread;-><init>(Lcom/weirdvoice/utils/Ringer;Lcom/weirdvoice/utils/Ringer$VibratorThread;)V

    iput-object v3, p0, Lcom/weirdvoice/utils/Ringer;->vibratorThread:Lcom/weirdvoice/utils/Ringer$VibratorThread;

    .line 176
    iget-object v3, p0, Lcom/weirdvoice/utils/Ringer;->vibratorThread:Lcom/weirdvoice/utils/Ringer$VibratorThread;

    invoke-virtual {v3}, Lcom/weirdvoice/utils/Ringer$VibratorThread;->start()V

    .line 180
    :cond_2
    if-eq v1, v5, :cond_3

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    if-nez v3, :cond_4

    .line 181
    :cond_3
    invoke-direct {p0}, Lcom/weirdvoice/utils/Ringer;->stopRinger()V

    .line 182
    monitor-exit p0

    goto :goto_0

    .line 163
    .end local v1    # "ringerMode":I
    .end local v2    # "vibrateSetting":I
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 186
    .restart local v1    # "ringerMode":I
    .restart local v2    # "vibrateSetting":I
    :cond_4
    :try_start_1
    iget-object v3, p0, Lcom/weirdvoice/utils/Ringer;->ringerWorker:Lcom/weirdvoice/utils/Ringer$RingWorkerHandler;

    invoke-virtual {v3, v0}, Lcom/weirdvoice/utils/Ringer$RingWorkerHandler;->startRinging(Landroid/media/AudioManager;)V

    .line 163
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
