.class public Lorg/abtollc/utils/Ringer;
.super Ljava/lang/Object;
.source "Ringer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/abtollc/utils/Ringer$RingerThread;,
        Lorg/abtollc/utils/Ringer$VibratorThread;
    }
.end annotation


# static fields
.field private static final PAUSE_LENGTH:I = 0x3e8

.field private static final THIS_FILE:Ljava/lang/String; = "Ringer"

.field private static final VIBRATE_LENGTH:I = 0x3e8


# instance fields
.field context:Landroid/content/Context;

.field customRingtoneUri:Landroid/net/Uri;

.field ringerThread:Lorg/abtollc/utils/Ringer$RingerThread;

.field ringtone:Landroid/media/Ringtone;

.field vibrator:Landroid/os/Vibrator;

.field vibratorThread:Lorg/abtollc/utils/Ringer$VibratorThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "aContext"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/abtollc/utils/Ringer;->ringtone:Landroid/media/Ringtone;

    .line 31
    iput-object p1, p0, Lorg/abtollc/utils/Ringer;->context:Landroid/content/Context;

    .line 32
    iget-object v0, p0, Lorg/abtollc/utils/Ringer;->context:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lorg/abtollc/utils/Ringer;->vibrator:Landroid/os/Vibrator;

    .line 33
    return-void
.end method

.method private getRingtone(Ljava/lang/String;Ljava/lang/String;)Landroid/media/Ringtone;
    .locals 5
    .param p1, "remoteContact"    # Ljava/lang/String;
    .param p2, "defaultRingtone"    # Ljava/lang/String;

    .prologue
    .line 218
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 222
    .local v1, "ringtoneUri":Landroid/net/Uri;
    iget-object v2, p0, Lorg/abtollc/utils/Ringer;->context:Landroid/content/Context;

    invoke-static {v2, p1}, Lorg/abtollc/models/CallerInfo;->getCallerInfoFromSipUri(Landroid/content/Context;Ljava/lang/String;)Lorg/abtollc/models/CallerInfo;

    move-result-object v0

    .line 224
    .local v0, "callerInfo":Lorg/abtollc/models/CallerInfo;
    if-eqz v0, :cond_0

    iget-boolean v2, v0, Lorg/abtollc/models/CallerInfo;->contactExists:Z

    if-eqz v2, :cond_0

    iget-object v2, v0, Lorg/abtollc/models/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    if-eqz v2, :cond_0

    .line 225
    const-string v2, "Ringer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found ringtone for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lorg/abtollc/models/CallerInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    iget-object v1, v0, Lorg/abtollc/models/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    .line 229
    :cond_0
    iget-object v2, p0, Lorg/abtollc/utils/Ringer;->context:Landroid/content/Context;

    invoke-static {v2, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v2

    return-object v2
.end method

.method private stopRinger()V
    .locals 4

    .prologue
    .line 117
    iget-object v0, p0, Lorg/abtollc/utils/Ringer;->ringerThread:Lorg/abtollc/utils/Ringer$RingerThread;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lorg/abtollc/utils/Ringer;->ringerThread:Lorg/abtollc/utils/Ringer$RingerThread;

    invoke-virtual {v0}, Lorg/abtollc/utils/Ringer$RingerThread;->interrupt()V

    .line 120
    :try_start_0
    iget-object v0, p0, Lorg/abtollc/utils/Ringer;->ringerThread:Lorg/abtollc/utils/Ringer$RingerThread;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Lorg/abtollc/utils/Ringer$RingerThread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/abtollc/utils/Ringer;->ringerThread:Lorg/abtollc/utils/Ringer$RingerThread;

    .line 125
    :cond_0
    return-void

    .line 121
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private stopVibrator()V
    .locals 4

    .prologue
    .line 129
    iget-object v0, p0, Lorg/abtollc/utils/Ringer;->vibratorThread:Lorg/abtollc/utils/Ringer$VibratorThread;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lorg/abtollc/utils/Ringer;->vibratorThread:Lorg/abtollc/utils/Ringer$VibratorThread;

    invoke-virtual {v0}, Lorg/abtollc/utils/Ringer$VibratorThread;->interrupt()V

    .line 132
    :try_start_0
    iget-object v0, p0, Lorg/abtollc/utils/Ringer;->vibratorThread:Lorg/abtollc/utils/Ringer$VibratorThread;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Lorg/abtollc/utils/Ringer$VibratorThread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/abtollc/utils/Ringer;->vibratorThread:Lorg/abtollc/utils/Ringer$VibratorThread;

    .line 137
    :cond_0
    return-void

    .line 133
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public isRinging()Z
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lorg/abtollc/utils/Ringer;->ringerThread:Lorg/abtollc/utils/Ringer$RingerThread;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/abtollc/utils/Ringer;->vibratorThread:Lorg/abtollc/utils/Ringer$VibratorThread;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ring(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "remoteContact"    # Ljava/lang/String;
    .param p2, "defaultRingtone"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 39
    const-string v3, "Ringer"

    const-string v4, "==> ring() called..."

    invoke-static {v3, v4}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    monitor-enter p0

    .line 43
    :try_start_0
    iget-object v3, p0, Lorg/abtollc/utils/Ringer;->context:Landroid/content/Context;

    const-string v4, "audio"

    .line 44
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 47
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-direct {p0, p1, p2}, Lorg/abtollc/utils/Ringer;->getRingtone(Ljava/lang/String;Ljava/lang/String;)Landroid/media/Ringtone;

    move-result-object v3

    iput-object v3, p0, Lorg/abtollc/utils/Ringer;->ringtone:Landroid/media/Ringtone;

    .line 50
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    .line 51
    .local v1, "ringerMode":I
    if-nez v1, :cond_0

    .line 52
    const-string v3, "Ringer"

    const-string v4, "skipping ring and vibrate because profile is Silent"

    invoke-static {v3, v4}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    monitor-exit p0

    .line 89
    :goto_0
    return-void

    .line 57
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    move-result v2

    .line 58
    .local v2, "vibrateSetting":I
    const-string v3, "Ringer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "v="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " rm="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object v3, p0, Lorg/abtollc/utils/Ringer;->vibratorThread:Lorg/abtollc/utils/Ringer$VibratorThread;

    if-nez v3, :cond_2

    if-eq v2, v6, :cond_1

    if-ne v1, v6, :cond_2

    .line 62
    :cond_1
    new-instance v3, Lorg/abtollc/utils/Ringer$VibratorThread;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lorg/abtollc/utils/Ringer$VibratorThread;-><init>(Lorg/abtollc/utils/Ringer;Lorg/abtollc/utils/Ringer$1;)V

    iput-object v3, p0, Lorg/abtollc/utils/Ringer;->vibratorThread:Lorg/abtollc/utils/Ringer$VibratorThread;

    .line 63
    const-string v3, "Ringer"

    const-string v4, "Starting vibrator..."

    invoke-static {v3, v4}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-object v3, p0, Lorg/abtollc/utils/Ringer;->vibratorThread:Lorg/abtollc/utils/Ringer$VibratorThread;

    invoke-virtual {v3}, Lorg/abtollc/utils/Ringer$VibratorThread;->start()V

    .line 68
    :cond_2
    if-eq v1, v6, :cond_3

    const/4 v3, 0x2

    .line 69
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    if-nez v3, :cond_4

    .line 70
    :cond_3
    const-string v3, "Ringer"

    const-string v4, "skipping ring because profile is Vibrate OR because volume is zero"

    invoke-static {v3, v4}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    monitor-exit p0

    goto :goto_0

    .line 88
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    .end local v1    # "ringerMode":I
    .end local v2    # "vibrateSetting":I
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 75
    .restart local v0    # "audioManager":Landroid/media/AudioManager;
    .restart local v1    # "ringerMode":I
    .restart local v2    # "vibrateSetting":I
    :cond_4
    :try_start_1
    iget-object v3, p0, Lorg/abtollc/utils/Ringer;->ringtone:Landroid/media/Ringtone;

    if-nez v3, :cond_5

    .line 76
    const-string v3, "Ringer"

    const-string v4, "No ringtone available - do not ring"

    invoke-static {v3, v4}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    monitor-exit p0

    goto :goto_0

    .line 80
    :cond_5
    const-string v3, "Ringer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Starting ring with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/abtollc/utils/Ringer;->ringtone:Landroid/media/Ringtone;

    iget-object v6, p0, Lorg/abtollc/utils/Ringer;->context:Landroid/content/Context;

    invoke-virtual {v5, v6}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object v3, p0, Lorg/abtollc/utils/Ringer;->ringerThread:Lorg/abtollc/utils/Ringer$RingerThread;

    if-nez v3, :cond_6

    .line 83
    new-instance v3, Lorg/abtollc/utils/Ringer$RingerThread;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lorg/abtollc/utils/Ringer$RingerThread;-><init>(Lorg/abtollc/utils/Ringer;Lorg/abtollc/utils/Ringer$1;)V

    iput-object v3, p0, Lorg/abtollc/utils/Ringer;->ringerThread:Lorg/abtollc/utils/Ringer$RingerThread;

    .line 84
    const-string v3, "Ringer"

    const-string v4, "Starting ringer..."

    invoke-static {v3, v4}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setMode(I)V

    .line 86
    iget-object v3, p0, Lorg/abtollc/utils/Ringer;->ringerThread:Lorg/abtollc/utils/Ringer$RingerThread;

    invoke-virtual {v3}, Lorg/abtollc/utils/Ringer$RingerThread;->start()V

    .line 88
    :cond_6
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public stopRing()V
    .locals 2

    .prologue
    .line 107
    monitor-enter p0

    .line 108
    :try_start_0
    const-string v0, "Ringer"

    const-string v1, "==> stopRing() called..."

    invoke-static {v0, v1}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-direct {p0}, Lorg/abtollc/utils/Ringer;->stopVibrator()V

    .line 111
    invoke-direct {p0}, Lorg/abtollc/utils/Ringer;->stopRinger()V

    .line 112
    monitor-exit p0

    .line 113
    return-void

    .line 112
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

    .line 141
    iget-object v3, p0, Lorg/abtollc/utils/Ringer;->context:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 142
    .local v0, "audioManager":Landroid/media/AudioManager;
    monitor-enter p0

    .line 143
    :try_start_0
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    .line 145
    .local v1, "ringerMode":I
    if-nez v1, :cond_0

    .line 146
    invoke-virtual {p0}, Lorg/abtollc/utils/Ringer;->stopRing()V

    .line 147
    monitor-exit p0

    .line 173
    :goto_0
    return-void

    .line 151
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    move-result v2

    .line 153
    .local v2, "vibrateSetting":I
    iget-object v3, p0, Lorg/abtollc/utils/Ringer;->vibratorThread:Lorg/abtollc/utils/Ringer$VibratorThread;

    if-nez v3, :cond_2

    if-eq v2, v5, :cond_1

    if-ne v1, v5, :cond_2

    .line 154
    :cond_1
    new-instance v3, Lorg/abtollc/utils/Ringer$VibratorThread;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lorg/abtollc/utils/Ringer$VibratorThread;-><init>(Lorg/abtollc/utils/Ringer;Lorg/abtollc/utils/Ringer$1;)V

    iput-object v3, p0, Lorg/abtollc/utils/Ringer;->vibratorThread:Lorg/abtollc/utils/Ringer$VibratorThread;

    .line 155
    iget-object v3, p0, Lorg/abtollc/utils/Ringer;->vibratorThread:Lorg/abtollc/utils/Ringer$VibratorThread;

    invoke-virtual {v3}, Lorg/abtollc/utils/Ringer$VibratorThread;->start()V

    .line 159
    :cond_2
    if-eq v1, v5, :cond_3

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    if-nez v3, :cond_4

    .line 160
    :cond_3
    invoke-direct {p0}, Lorg/abtollc/utils/Ringer;->stopRinger()V

    .line 161
    monitor-exit p0

    goto :goto_0

    .line 172
    .end local v1    # "ringerMode":I
    .end local v2    # "vibrateSetting":I
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 165
    .restart local v1    # "ringerMode":I
    .restart local v2    # "vibrateSetting":I
    :cond_4
    :try_start_1
    iget-object v3, p0, Lorg/abtollc/utils/Ringer;->ringerThread:Lorg/abtollc/utils/Ringer$RingerThread;

    if-nez v3, :cond_5

    .line 166
    new-instance v3, Lorg/abtollc/utils/Ringer$RingerThread;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lorg/abtollc/utils/Ringer$RingerThread;-><init>(Lorg/abtollc/utils/Ringer;Lorg/abtollc/utils/Ringer$1;)V

    iput-object v3, p0, Lorg/abtollc/utils/Ringer;->ringerThread:Lorg/abtollc/utils/Ringer$RingerThread;

    .line 167
    const-string v3, "Ringer"

    const-string v4, "Starting ringer..."

    invoke-static {v3, v4}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setMode(I)V

    .line 169
    iget-object v3, p0, Lorg/abtollc/utils/Ringer;->ringerThread:Lorg/abtollc/utils/Ringer$RingerThread;

    invoke-virtual {v3}, Lorg/abtollc/utils/Ringer$RingerThread;->start()V

    .line 172
    :cond_5
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
