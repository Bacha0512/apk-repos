.class public Lorg/abtollc/service/MediaManager;
.super Ljava/lang/Object;
.source "MediaManager.java"

# interfaces
.implements Lorg/abtollc/utils/bluetooth/BluetoothWrapper$BluetoothChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/abtollc/service/MediaManager$InCallTonePlayer;
    }
.end annotation


# static fields
.field private static final ACTION_AUDIO_VOLUME_UPDATE:Ljava/lang/String; = "org.openintents.audio.action_volume_update"

.field private static final EXTRA_RINGER_MODE:Ljava/lang/String; = "org.openintents.audio.extra_ringer_mode"

.field private static final EXTRA_STREAM_TYPE:Ljava/lang/String; = "org.openintents.audio.extra_stream_type"

.field private static final EXTRA_VALUE_UNKNOWN:I = -0x270f

.field private static final EXTRA_VOLUME_INDEX:Ljava/lang/String; = "org.openintents.audio.extra_volume_index"

.field private static final THIS_FILE:Ljava/lang/String; = "MediaManager"

.field public static final TONE_BATTERY_LOW:I = 0x4

.field public static final TONE_BUSY:I = 0x2

.field public static final TONE_CALL_ENDED:I = 0x5

.field public static final TONE_CALL_WAITING:I = 0x1

.field public static final TONE_CONGESTION:I = 0x3

.field public static final TONE_NONE:I

.field private static modeSipInCall:I


# instance fields
.field private accessibilityManager:Lorg/abtollc/utils/accessibility/AccessibilityWrapper;

.field private audioFocusWrapper:Lorg/abtollc/utils/audio/AudioFocusWrapper;

.field private audioManager:Landroid/media/AudioManager;

.field private bluetoothWrapper:Lorg/abtollc/utils/bluetooth/BluetoothWrapper;

.field private doFocusAudio:Z

.field private isSetAudioMode:Z

.field private mediaStateChangedIntent:Landroid/content/Intent;

.field private prefs:Landroid/content/SharedPreferences;

.field private restartAudioWhenRoutingChange:Z

.field private ringer:Lorg/abtollc/utils/Ringer;

.field private screenLock:Landroid/os/PowerManager$WakeLock;

.field private service:Lorg/abtollc/service/ABTOSipService;

.field private startBeforeInit:Z

.field private useSgsWrkAround:Z

.field private useWebRTCImpl:Z

.field private userWantBluetooth:Z

.field private userWantMicrophoneMute:Z

.field private userWantSpeaker:Z

.field private wifiLock:Landroid/net/wifi/WifiManager$WifiLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    sput v0, Lorg/abtollc/service/MediaManager;->modeSipInCall:I

    return-void
.end method

.method public constructor <init>(Lorg/abtollc/service/ABTOSipService;)V
    .locals 3
    .param p1, "aService"    # Lorg/abtollc/service/ABTOSipService;

    .prologue
    const/4 v2, 0x0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-boolean v2, p0, Lorg/abtollc/service/MediaManager;->isSetAudioMode:Z

    .line 53
    iput-boolean v2, p0, Lorg/abtollc/service/MediaManager;->userWantBluetooth:Z

    .line 54
    iput-boolean v2, p0, Lorg/abtollc/service/MediaManager;->userWantSpeaker:Z

    .line 55
    iput-boolean v2, p0, Lorg/abtollc/service/MediaManager;->userWantMicrophoneMute:Z

    .line 57
    iput-boolean v2, p0, Lorg/abtollc/service/MediaManager;->restartAudioWhenRoutingChange:Z

    .line 68
    iput-boolean v2, p0, Lorg/abtollc/service/MediaManager;->useSgsWrkAround:Z

    .line 69
    iput-boolean v2, p0, Lorg/abtollc/service/MediaManager;->useWebRTCImpl:Z

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/abtollc/service/MediaManager;->doFocusAudio:Z

    .line 80
    iput-object p1, p0, Lorg/abtollc/service/MediaManager;->service:Lorg/abtollc/service/ABTOSipService;

    .line 81
    iget-object v0, p0, Lorg/abtollc/service/MediaManager;->service:Lorg/abtollc/service/ABTOSipService;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Lorg/abtollc/service/ABTOSipService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lorg/abtollc/service/MediaManager;->audioManager:Landroid/media/AudioManager;

    .line 82
    iget-object v0, p0, Lorg/abtollc/service/MediaManager;->service:Lorg/abtollc/service/ABTOSipService;

    const-string v1, "audio"

    invoke-virtual {v0, v1, v2}, Lorg/abtollc/service/ABTOSipService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lorg/abtollc/service/MediaManager;->prefs:Landroid/content/SharedPreferences;

    .line 84
    invoke-static {}, Lorg/abtollc/utils/accessibility/AccessibilityWrapper;->getInstance()Lorg/abtollc/utils/accessibility/AccessibilityWrapper;

    move-result-object v0

    iput-object v0, p0, Lorg/abtollc/service/MediaManager;->accessibilityManager:Lorg/abtollc/utils/accessibility/AccessibilityWrapper;

    .line 85
    iget-object v0, p0, Lorg/abtollc/service/MediaManager;->accessibilityManager:Lorg/abtollc/utils/accessibility/AccessibilityWrapper;

    iget-object v1, p0, Lorg/abtollc/service/MediaManager;->service:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v0, v1}, Lorg/abtollc/utils/accessibility/AccessibilityWrapper;->init(Landroid/content/Context;)V

    .line 87
    new-instance v0, Lorg/abtollc/utils/Ringer;

    iget-object v1, p0, Lorg/abtollc/service/MediaManager;->service:Lorg/abtollc/service/ABTOSipService;

    invoke-direct {v0, v1}, Lorg/abtollc/utils/Ringer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/abtollc/service/MediaManager;->ringer:Lorg/abtollc/utils/Ringer;

    .line 88
    new-instance v0, Landroid/content/Intent;

    const-string v1, "org.abtollc.service.MEDIA_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/abtollc/service/MediaManager;->mediaStateChangedIntent:Landroid/content/Intent;

    .line 91
    invoke-direct {p0}, Lorg/abtollc/service/MediaManager;->restoreAudioState()V

    .line 92
    return-void
.end method

.method static synthetic access$000(Lorg/abtollc/service/MediaManager;)Lorg/abtollc/service/ABTOSipService;
    .locals 1
    .param p0, "x0"    # Lorg/abtollc/service/MediaManager;

    .prologue
    .line 33
    iget-object v0, p0, Lorg/abtollc/service/MediaManager;->service:Lorg/abtollc/service/ABTOSipService;

    return-object v0
.end method

.method static synthetic access$100(Lorg/abtollc/service/MediaManager;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lorg/abtollc/service/MediaManager;

    .prologue
    .line 33
    iget-object v0, p0, Lorg/abtollc/service/MediaManager;->audioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method private declared-synchronized actualSetAudioInCall()V
    .locals 14

    .prologue
    .line 169
    monitor-enter p0

    :try_start_0
    iget-boolean v11, p0, Lorg/abtollc/service/MediaManager;->isSetAudioMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v11, :cond_0

    .line 340
    :goto_0
    monitor-exit p0

    return-void

    .line 172
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/abtollc/service/MediaManager;->stopRing()V

    .line 173
    invoke-direct {p0}, Lorg/abtollc/service/MediaManager;->saveAudioState()V

    .line 189
    iget-object v11, p0, Lorg/abtollc/service/MediaManager;->service:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v11}, Lorg/abtollc/service/ABTOSipService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 190
    .local v1, "ctntResolver":Landroid/content/ContentResolver;
    const-string v11, "wifi_sleep_policy"

    const/4 v12, 0x2

    invoke-static {v1, v11, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 194
    iget-object v11, p0, Lorg/abtollc/service/MediaManager;->service:Lorg/abtollc/service/ABTOSipService;

    const-string v12, "wifi"

    invoke-virtual {v11, v12}, Lorg/abtollc/service/ABTOSipService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/wifi/WifiManager;

    .line 195
    .local v10, "wman":Landroid/net/wifi/WifiManager;
    iget-object v11, p0, Lorg/abtollc/service/MediaManager;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-nez v11, :cond_1

    .line 196
    const/16 v11, 0x9

    .line 197
    invoke-static {v11}, Lorg/abtollc/utils/Compatibility;->isCompatible(I)Z

    move-result v11

    if-eqz v11, :cond_c

    const/4 v11, 0x3

    :goto_1
    const-string v12, "com.csipsimple.InCallLock"

    .line 196
    invoke-virtual {v10, v11, v12}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v11

    iput-object v11, p0, Lorg/abtollc/service/MediaManager;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 199
    iget-object v11, p0, Lorg/abtollc/service/MediaManager;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/net/wifi/WifiManager$WifiLock;->setReferenceCounted(Z)V

    .line 201
    :cond_1
    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v9

    .line 202
    .local v9, "winfo":Landroid/net/wifi/WifiInfo;
    if-eqz v9, :cond_5

    .line 203
    invoke-virtual {v9}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v11

    invoke-static {v11}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    .line 205
    .local v2, "dstate":Landroid/net/NetworkInfo$DetailedState;
    sget-object v11, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-eq v2, v11, :cond_2

    sget-object v11, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v2, v11, :cond_3

    .line 206
    :cond_2
    iget-object v11, p0, Lorg/abtollc/service/MediaManager;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v11}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v11

    if-nez v11, :cond_3

    .line 207
    iget-object v11, p0, Lorg/abtollc/service/MediaManager;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v11}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 212
    :cond_3
    iget-object v11, p0, Lorg/abtollc/service/MediaManager;->service:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v11}, Lorg/abtollc/service/ABTOSipService;->getPrefs()Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v11

    const-string v12, "keep_awake_incall"

    invoke-virtual {v11, v12}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 213
    iget-object v11, p0, Lorg/abtollc/service/MediaManager;->screenLock:Landroid/os/PowerManager$WakeLock;

    if-nez v11, :cond_4

    .line 214
    iget-object v11, p0, Lorg/abtollc/service/MediaManager;->service:Lorg/abtollc/service/ABTOSipService;

    const-string v12, "power"

    invoke-virtual {v11, v12}, Lorg/abtollc/service/ABTOSipService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PowerManager;

    .line 215
    .local v6, "pm":Landroid/os/PowerManager;
    const v11, 0x20000006

    const-string v12, "com.csipsimple.onIncomingCall.SCREEN"

    invoke-virtual {v6, v11, v12}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v11

    iput-object v11, p0, Lorg/abtollc/service/MediaManager;->screenLock:Landroid/os/PowerManager$WakeLock;

    .line 216
    iget-object v11, p0, Lorg/abtollc/service/MediaManager;->screenLock:Landroid/os/PowerManager$WakeLock;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 219
    .end local v6    # "pm":Landroid/os/PowerManager;
    :cond_4
    iget-object v11, p0, Lorg/abtollc/service/MediaManager;->screenLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v11}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v11

    if-nez v11, :cond_5

    .line 220
    iget-object v11, p0, Lorg/abtollc/service/MediaManager;->screenLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v11}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 228
    .end local v2    # "dstate":Landroid/net/NetworkInfo$DetailedState;
    :cond_5
    iget-boolean v11, p0, Lorg/abtollc/service/MediaManager;->useWebRTCImpl:Z

    if-nez v11, :cond_11

    .line 230
    invoke-direct {p0}, Lorg/abtollc/service/MediaManager;->getAudioTargetMode()I

    move-result v7

    .line 231
    .local v7, "targetMode":I
    const-string v11, "MediaManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Set mode audio in call to "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget-object v11, p0, Lorg/abtollc/service/MediaManager;->service:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v11}, Lorg/abtollc/service/ABTOSipService;->getPrefs()Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v11

    invoke-virtual {v11}, Lorg/abtollc/utils/PreferencesProviderWrapper;->generateForSetCall()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 234
    iget-object v11, p0, Lorg/abtollc/service/MediaManager;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v11}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v11

    if-nez v11, :cond_d

    const/4 v5, 0x1

    .line 235
    .local v5, "needOutOfSilent":Z
    :goto_2
    if-eqz v5, :cond_6

    .line 236
    iget-object v11, p0, Lorg/abtollc/service/MediaManager;->audioManager:Landroid/media/AudioManager;

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 238
    :cond_6
    new-instance v8, Landroid/media/ToneGenerator;

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-direct {v8, v11, v12}, Landroid/media/ToneGenerator;-><init>(II)V

    .line 239
    .local v8, "toneGenerator":Landroid/media/ToneGenerator;
    const/16 v11, 0x29

    invoke-virtual {v8, v11}, Landroid/media/ToneGenerator;->startTone(I)Z

    .line 240
    invoke-virtual {v8}, Landroid/media/ToneGenerator;->stopTone()V

    .line 241
    invoke-virtual {v8}, Landroid/media/ToneGenerator;->release()V

    .line 243
    if-eqz v5, :cond_7

    .line 244
    iget-object v11, p0, Lorg/abtollc/service/MediaManager;->audioManager:Landroid/media/AudioManager;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 249
    .end local v5    # "needOutOfSilent":Z
    .end local v8    # "toneGenerator":Landroid/media/ToneGenerator;
    :cond_7
    const/4 v11, 0x2

    if-eq v7, v11, :cond_8

    iget-boolean v11, p0, Lorg/abtollc/service/MediaManager;->useSgsWrkAround:Z

    if-eqz v11, :cond_8

    .line 251
    iget-object v11, p0, Lorg/abtollc/service/MediaManager;->audioManager:Landroid/media/AudioManager;

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Landroid/media/AudioManager;->setMode(I)V

    .line 255
    :cond_8
    iget-object v11, p0, Lorg/abtollc/service/MediaManager;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v11, v7}, Landroid/media/AudioManager;->setMode(I)V

    .line 258
    iget-object v11, p0, Lorg/abtollc/service/MediaManager;->service:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v11}, Lorg/abtollc/service/ABTOSipService;->getPrefs()Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v11

    invoke-virtual {v11}, Lorg/abtollc/utils/PreferencesProviderWrapper;->useRoutingApi()Z

    move-result v11

    if-eqz v11, :cond_f

    .line 259
    iget-object v12, p0, Lorg/abtollc/service/MediaManager;->audioManager:Landroid/media/AudioManager;

    iget-boolean v11, p0, Lorg/abtollc/service/MediaManager;->userWantSpeaker:Z

    if-eqz v11, :cond_e

    const/4 v11, 0x2

    :goto_3
    const/4 v13, -0x1

    invoke-virtual {v12, v7, v11, v13}, Landroid/media/AudioManager;->setRouting(III)V

    .line 264
    :goto_4
    iget-object v11, p0, Lorg/abtollc/service/MediaManager;->audioManager:Landroid/media/AudioManager;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/media/AudioManager;->setMicrophoneMute(Z)V

    .line 265
    iget-object v11, p0, Lorg/abtollc/service/MediaManager;->bluetoothWrapper:Lorg/abtollc/utils/bluetooth/BluetoothWrapper;

    if-eqz v11, :cond_9

    iget-boolean v11, p0, Lorg/abtollc/service/MediaManager;->userWantBluetooth:Z

    if-eqz v11, :cond_9

    iget-object v11, p0, Lorg/abtollc/service/MediaManager;->bluetoothWrapper:Lorg/abtollc/utils/bluetooth/BluetoothWrapper;

    invoke-virtual {v11}, Lorg/abtollc/utils/bluetooth/BluetoothWrapper;->canBluetooth()Z

    move-result v11

    if-eqz v11, :cond_9

    .line 266
    const-string v11, "MediaManager"

    const-string v12, "Try to enable bluetooth"

    invoke-static {v11, v12}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    iget-object v11, p0, Lorg/abtollc/service/MediaManager;->bluetoothWrapper:Lorg/abtollc/utils/bluetooth/BluetoothWrapper;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lorg/abtollc/utils/bluetooth/BluetoothWrapper;->setBluetoothOn(Z)V

    .line 325
    .end local v7    # "targetMode":I
    :cond_9
    :goto_5
    invoke-static {}, Lorg/abtollc/utils/Compatibility;->getInCallStream()I

    move-result v3

    .line 326
    .local v3, "inCallStream":I
    iget-boolean v11, p0, Lorg/abtollc/service/MediaManager;->doFocusAudio:Z

    if-eqz v11, :cond_b

    .line 327
    iget-object v11, p0, Lorg/abtollc/service/MediaManager;->accessibilityManager:Lorg/abtollc/utils/accessibility/AccessibilityWrapper;

    invoke-virtual {v11}, Lorg/abtollc/utils/accessibility/AccessibilityWrapper;->isEnabled()Z

    move-result v11

    if-nez v11, :cond_a

    .line 328
    iget-object v11, p0, Lorg/abtollc/service/MediaManager;->audioManager:Landroid/media/AudioManager;

    const/4 v12, 0x1

    invoke-virtual {v11, v3, v12}, Landroid/media/AudioManager;->setStreamSolo(IZ)V

    .line 330
    :cond_a
    iget-object v11, p0, Lorg/abtollc/service/MediaManager;->audioFocusWrapper:Lorg/abtollc/utils/audio/AudioFocusWrapper;

    invoke-virtual {v11}, Lorg/abtollc/utils/audio/AudioFocusWrapper;->focus()V

    .line 332
    :cond_b
    const-string v11, "MediaManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Initial volume level : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lorg/abtollc/service/MediaManager;->service:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v13}, Lorg/abtollc/service/ABTOSipService;->getPrefs()Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v13

    invoke-virtual {v13}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getInitialVolumeLevel()F

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    iget-object v11, p0, Lorg/abtollc/service/MediaManager;->audioManager:Landroid/media/AudioManager;

    .line 334
    invoke-virtual {v11, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v11

    int-to-float v11, v11

    iget-object v12, p0, Lorg/abtollc/service/MediaManager;->service:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v12}, Lorg/abtollc/service/ABTOSipService;->getPrefs()Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v12

    invoke-virtual {v12}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getInitialVolumeLevel()F

    move-result v12

    mul-float/2addr v11, v12

    float-to-int v11, v11

    const/4 v12, 0x0

    .line 333
    invoke-virtual {p0, v3, v11, v12}, Lorg/abtollc/service/MediaManager;->setStreamVolume(III)V

    .line 338
    const/4 v11, 0x1

    iput-boolean v11, p0, Lorg/abtollc/service/MediaManager;->isSetAudioMode:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 169
    .end local v1    # "ctntResolver":Landroid/content/ContentResolver;
    .end local v3    # "inCallStream":I
    .end local v9    # "winfo":Landroid/net/wifi/WifiInfo;
    .end local v10    # "wman":Landroid/net/wifi/WifiManager;
    :catchall_0
    move-exception v11

    monitor-exit p0

    throw v11

    .line 197
    .restart local v1    # "ctntResolver":Landroid/content/ContentResolver;
    .restart local v10    # "wman":Landroid/net/wifi/WifiManager;
    :cond_c
    const/4 v11, 0x1

    goto/16 :goto_1

    .line 234
    .restart local v7    # "targetMode":I
    .restart local v9    # "winfo":Landroid/net/wifi/WifiInfo;
    :cond_d
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 259
    :cond_e
    const/4 v11, 0x1

    goto/16 :goto_3

    .line 261
    :cond_f
    :try_start_2
    iget-object v12, p0, Lorg/abtollc/service/MediaManager;->audioManager:Landroid/media/AudioManager;

    iget-boolean v11, p0, Lorg/abtollc/service/MediaManager;->userWantSpeaker:Z

    if-eqz v11, :cond_10

    const/4 v11, 0x1

    :goto_6
    invoke-virtual {v12, v11}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    goto/16 :goto_4

    :cond_10
    const/4 v11, 0x0

    goto :goto_6

    .line 272
    .end local v7    # "targetMode":I
    :cond_11
    invoke-static {}, Lorg/abtollc/utils/Compatibility;->getApiLevel()I

    move-result v0

    .line 278
    .local v0, "apiLevel":I
    sget-object v11, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v12, "Samsung"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_12

    const/16 v11, 0x8

    if-ne v11, v0, :cond_12

    .line 280
    const/4 v4, 0x4

    .line 281
    .local v4, "mode":I
    iget-object v11, p0, Lorg/abtollc/service/MediaManager;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v11, v4}, Landroid/media/AudioManager;->setMode(I)V

    .line 282
    iget-object v11, p0, Lorg/abtollc/service/MediaManager;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v11}, Landroid/media/AudioManager;->getMode()I

    move-result v11

    if-eq v11, v4, :cond_12

    .line 283
    const-string v11, "MediaManager"

    const-string v12, "Could not set audio mode for Samsung device"

    invoke-static {v11, v12}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    .end local v4    # "mode":I
    :cond_12
    const/4 v11, 0x3

    if-eq v11, v0, :cond_13

    const/4 v11, 0x4

    if-ne v11, v0, :cond_15

    .line 292
    :cond_13
    iget-boolean v11, p0, Lorg/abtollc/service/MediaManager;->userWantSpeaker:Z

    if-eqz v11, :cond_14

    .line 294
    iget-object v11, p0, Lorg/abtollc/service/MediaManager;->audioManager:Landroid/media/AudioManager;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/media/AudioManager;->setMode(I)V

    goto/16 :goto_5

    .line 297
    :cond_14
    iget-object v11, p0, Lorg/abtollc/service/MediaManager;->audioManager:Landroid/media/AudioManager;

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Landroid/media/AudioManager;->setMode(I)V

    goto/16 :goto_5

    .line 301
    :cond_15
    sget-object v11, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v12, "samsung"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_18

    const/4 v11, 0x5

    if-eq v11, v0, :cond_16

    const/4 v11, 0x6

    if-eq v11, v0, :cond_16

    const/4 v11, 0x7

    if-ne v11, v0, :cond_18

    .line 305
    :cond_16
    iget-boolean v11, p0, Lorg/abtollc/service/MediaManager;->userWantSpeaker:Z

    if-eqz v11, :cond_17

    .line 307
    iget-object v11, p0, Lorg/abtollc/service/MediaManager;->audioManager:Landroid/media/AudioManager;

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Landroid/media/AudioManager;->setMode(I)V

    .line 308
    iget-object v11, p0, Lorg/abtollc/service/MediaManager;->audioManager:Landroid/media/AudioManager;

    iget-boolean v12, p0, Lorg/abtollc/service/MediaManager;->userWantSpeaker:Z

    invoke-virtual {v11, v12}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    goto/16 :goto_5

    .line 311
    :cond_17
    iget-object v11, p0, Lorg/abtollc/service/MediaManager;->audioManager:Landroid/media/AudioManager;

    iget-boolean v12, p0, Lorg/abtollc/service/MediaManager;->userWantSpeaker:Z

    invoke-virtual {v11, v12}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 312
    iget-object v11, p0, Lorg/abtollc/service/MediaManager;->audioManager:Landroid/media/AudioManager;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/media/AudioManager;->setMode(I)V

    goto/16 :goto_5

    .line 316
    :cond_18
    iget-object v11, p0, Lorg/abtollc/service/MediaManager;->audioManager:Landroid/media/AudioManager;

    iget-boolean v12, p0, Lorg/abtollc/service/MediaManager;->userWantSpeaker:Z

    invoke-virtual {v11, v12}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_5
.end method

.method private declared-synchronized actualUnsetAudioInCall()V
    .locals 4

    .prologue
    .line 413
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/abtollc/service/MediaManager;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "isSavedAudioState"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lorg/abtollc/service/MediaManager;->isSetAudioMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 443
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 417
    :cond_1
    :try_start_1
    const-string v1, "MediaManager"

    const-string v2, "Unset Audio In call"

    invoke-static {v1, v2}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    invoke-static {}, Lorg/abtollc/utils/Compatibility;->getInCallStream()I

    move-result v0

    .line 420
    .local v0, "inCallStream":I
    iget-object v1, p0, Lorg/abtollc/service/MediaManager;->bluetoothWrapper:Lorg/abtollc/utils/bluetooth/BluetoothWrapper;

    if-eqz v1, :cond_2

    .line 423
    const-string v1, "MediaManager"

    const-string v2, "Unset bt"

    invoke-static {v1, v2}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    iget-object v1, p0, Lorg/abtollc/service/MediaManager;->bluetoothWrapper:Lorg/abtollc/utils/bluetooth/BluetoothWrapper;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/abtollc/utils/bluetooth/BluetoothWrapper;->setBluetoothOn(Z)V

    .line 426
    :cond_2
    iget-object v1, p0, Lorg/abtollc/service/MediaManager;->audioManager:Landroid/media/AudioManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setMicrophoneMute(Z)V

    .line 427
    iget-boolean v1, p0, Lorg/abtollc/service/MediaManager;->doFocusAudio:Z

    if-eqz v1, :cond_3

    .line 428
    iget-object v1, p0, Lorg/abtollc/service/MediaManager;->audioManager:Landroid/media/AudioManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/media/AudioManager;->setStreamSolo(IZ)V

    .line 429
    iget-object v1, p0, Lorg/abtollc/service/MediaManager;->audioFocusWrapper:Lorg/abtollc/utils/audio/AudioFocusWrapper;

    invoke-virtual {v1}, Lorg/abtollc/utils/audio/AudioFocusWrapper;->unFocus()V

    .line 431
    :cond_3
    invoke-direct {p0}, Lorg/abtollc/service/MediaManager;->restoreAudioState()V

    .line 433
    iget-object v1, p0, Lorg/abtollc/service/MediaManager;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/abtollc/service/MediaManager;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 434
    iget-object v1, p0, Lorg/abtollc/service/MediaManager;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 436
    :cond_4
    iget-object v1, p0, Lorg/abtollc/service/MediaManager;->screenLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/abtollc/service/MediaManager;->screenLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 437
    const-string v1, "MediaManager"

    const-string v2, "Release screen lock"

    invoke-static {v1, v2}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    iget-object v1, p0, Lorg/abtollc/service/MediaManager;->screenLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 442
    :cond_5
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/abtollc/service/MediaManager;->isSetAudioMode:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 413
    .end local v0    # "inCallStream":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private broadcastVolumeWillBeUpdated(II)V
    .locals 3
    .param p1, "streamType"    # I
    .param p2, "index"    # I

    .prologue
    .line 598
    new-instance v0, Landroid/content/Intent;

    const-string v1, "org.openintents.audio.action_volume_update"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 599
    .local v0, "notificationIntent":Landroid/content/Intent;
    const-string v1, "org.openintents.audio.extra_stream_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 600
    const-string v1, "org.openintents.audio.extra_volume_index"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 601
    const-string v1, "org.openintents.audio.extra_ringer_mode"

    const/16 v2, -0x270f

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 603
    iget-object v1, p0, Lorg/abtollc/service/MediaManager;->service:Lorg/abtollc/service/ABTOSipService;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/abtollc/service/ABTOSipService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 604
    return-void
.end method

.method private getAudioTargetMode()I
    .locals 6

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 125
    sget v0, Lorg/abtollc/service/MediaManager;->modeSipInCall:I

    .line 127
    .local v0, "targetMode":I
    iget-object v3, p0, Lorg/abtollc/service/MediaManager;->service:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v3}, Lorg/abtollc/service/ABTOSipService;->getPrefs()Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v3

    invoke-virtual {v3}, Lorg/abtollc/utils/PreferencesProviderWrapper;->useModeApi()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 128
    const-string v3, "MediaManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "User want speaker now..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lorg/abtollc/service/MediaManager;->userWantSpeaker:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iget-object v3, p0, Lorg/abtollc/service/MediaManager;->service:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v3}, Lorg/abtollc/service/ABTOSipService;->getPrefs()Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v3

    invoke-virtual {v3}, Lorg/abtollc/utils/PreferencesProviderWrapper;->generateForSetCall()Z

    move-result v3

    if-nez v3, :cond_1

    .line 130
    iget-boolean v3, p0, Lorg/abtollc/service/MediaManager;->userWantSpeaker:Z

    if-eqz v3, :cond_0

    .line 140
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 130
    goto :goto_0

    .line 132
    :cond_1
    iget-boolean v3, p0, Lorg/abtollc/service/MediaManager;->userWantSpeaker:Z

    if-eqz v3, :cond_2

    :goto_1
    move v1, v2

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_1

    .line 135
    :cond_3
    iget-boolean v1, p0, Lorg/abtollc/service/MediaManager;->userWantBluetooth:Z

    if-eqz v1, :cond_4

    .line 136
    const/4 v0, 0x0

    .line 139
    :cond_4
    const-string v1, "MediaManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Target mode... : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    .line 140
    goto :goto_0
.end method

.method private final declared-synchronized restoreAudioState()V
    .locals 10

    .prologue
    .line 379
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lorg/abtollc/service/MediaManager;->prefs:Landroid/content/SharedPreferences;

    const-string v5, "isSavedAudioState"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_0

    .line 406
    :goto_0
    monitor-exit p0

    return-void

    .line 384
    :cond_0
    :try_start_1
    iget-object v4, p0, Lorg/abtollc/service/MediaManager;->service:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v4}, Lorg/abtollc/service/ABTOSipService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 386
    .local v0, "ctntResolver":Landroid/content/ContentResolver;
    const-string v4, "wifi_sleep_policy"

    iget-object v5, p0, Lorg/abtollc/service/MediaManager;->prefs:Landroid/content/SharedPreferences;

    const-string v6, "savedWifiPolicy"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 391
    invoke-static {}, Lorg/abtollc/utils/Compatibility;->getInCallStream()I

    move-result v2

    .line 392
    .local v2, "inCallStream":I
    iget-object v4, p0, Lorg/abtollc/service/MediaManager;->prefs:Landroid/content/SharedPreferences;

    const-string v5, "savedVolume"

    iget-object v6, p0, Lorg/abtollc/service/MediaManager;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v6, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v6

    int-to-double v6, v6

    const-wide v8, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v6, v8

    double-to-int v6, v6

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {p0, v2, v4, v5}, Lorg/abtollc/service/MediaManager;->setStreamVolume(III)V

    .line 394
    invoke-direct {p0}, Lorg/abtollc/service/MediaManager;->getAudioTargetMode()I

    move-result v3

    .line 395
    .local v3, "targetMode":I
    iget-object v4, p0, Lorg/abtollc/service/MediaManager;->service:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v4}, Lorg/abtollc/service/ABTOSipService;->getPrefs()Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v4

    invoke-virtual {v4}, Lorg/abtollc/utils/PreferencesProviderWrapper;->useRoutingApi()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 396
    iget-object v4, p0, Lorg/abtollc/service/MediaManager;->audioManager:Landroid/media/AudioManager;

    iget-object v5, p0, Lorg/abtollc/service/MediaManager;->prefs:Landroid/content/SharedPreferences;

    const-string v6, "savedRoute"

    const/4 v7, 0x2

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, -0x1

    invoke-virtual {v4, v3, v5, v6}, Landroid/media/AudioManager;->setRouting(III)V

    .line 400
    :goto_1
    iget-object v4, p0, Lorg/abtollc/service/MediaManager;->audioManager:Landroid/media/AudioManager;

    iget-object v5, p0, Lorg/abtollc/service/MediaManager;->prefs:Landroid/content/SharedPreferences;

    const-string v6, "savedMode"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->setMode(I)V

    .line 403
    iget-object v4, p0, Lorg/abtollc/service/MediaManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 404
    .local v1, "ed":Landroid/content/SharedPreferences$Editor;
    const-string v4, "isSavedAudioState"

    const/4 v5, 0x0

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 405
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 379
    .end local v0    # "ctntResolver":Landroid/content/ContentResolver;
    .end local v1    # "ed":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "inCallStream":I
    .end local v3    # "targetMode":I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 398
    .restart local v0    # "ctntResolver":Landroid/content/ContentResolver;
    .restart local v2    # "inCallStream":I
    .restart local v3    # "targetMode":I
    :cond_1
    :try_start_2
    iget-object v4, p0, Lorg/abtollc/service/MediaManager;->audioManager:Landroid/media/AudioManager;

    iget-object v5, p0, Lorg/abtollc/service/MediaManager;->prefs:Landroid/content/SharedPreferences;

    const-string v6, "savedSpeakerPhone"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private declared-synchronized saveAudioState()V
    .locals 7

    .prologue
    .line 348
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lorg/abtollc/service/MediaManager;->prefs:Landroid/content/SharedPreferences;

    const-string v5, "isSavedAudioState"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    .line 373
    :goto_0
    monitor-exit p0

    return-void

    .line 352
    :cond_0
    :try_start_1
    iget-object v4, p0, Lorg/abtollc/service/MediaManager;->service:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v4}, Lorg/abtollc/service/ABTOSipService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 354
    .local v0, "ctntResolver":Landroid/content/ContentResolver;
    iget-object v4, p0, Lorg/abtollc/service/MediaManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 358
    .local v1, "ed":Landroid/content/SharedPreferences$Editor;
    const-string v4, "savedWifiPolicy"

    const-string v5, "wifi_sleep_policy"

    const/4 v6, 0x0

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 360
    invoke-static {}, Lorg/abtollc/utils/Compatibility;->getInCallStream()I

    move-result v2

    .line 361
    .local v2, "inCallStream":I
    const-string v4, "savedVolume"

    iget-object v5, p0, Lorg/abtollc/service/MediaManager;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v5, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v5

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 363
    invoke-direct {p0}, Lorg/abtollc/service/MediaManager;->getAudioTargetMode()I

    move-result v3

    .line 364
    .local v3, "targetMode":I
    iget-object v4, p0, Lorg/abtollc/service/MediaManager;->service:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v4}, Lorg/abtollc/service/ABTOSipService;->getPrefs()Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v4

    invoke-virtual {v4}, Lorg/abtollc/utils/PreferencesProviderWrapper;->useRoutingApi()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 365
    const-string v4, "savedRoute"

    iget-object v5, p0, Lorg/abtollc/service/MediaManager;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v5, v3}, Landroid/media/AudioManager;->getRouting(I)I

    move-result v5

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 369
    :goto_1
    const-string v4, "savedMode"

    iget-object v5, p0, Lorg/abtollc/service/MediaManager;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v5}, Landroid/media/AudioManager;->getMode()I

    move-result v5

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 371
    const-string v4, "isSavedAudioState"

    const/4 v5, 0x1

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 372
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 348
    .end local v0    # "ctntResolver":Landroid/content/ContentResolver;
    .end local v1    # "ed":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "inCallStream":I
    .end local v3    # "targetMode":I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 367
    .restart local v0    # "ctntResolver":Landroid/content/ContentResolver;
    .restart local v1    # "ed":Landroid/content/SharedPreferences$Editor;
    .restart local v2    # "inCallStream":I
    .restart local v3    # "targetMode":I
    :cond_1
    :try_start_2
    const-string v4, "savedSpeakerPhone"

    iget-object v5, p0, Lorg/abtollc/service/MediaManager;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v5}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v5

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public adjustStreamVolume(III)V
    .locals 5
    .param p1, "streamType"    # I
    .param p2, "direction"    # I
    .param p3, "flags"    # I

    .prologue
    .line 612
    const/16 v3, -0x270f

    invoke-direct {p0, p1, v3}, Lorg/abtollc/service/MediaManager;->broadcastVolumeWillBeUpdated(II)V

    .line 613
    iget-object v3, p0, Lorg/abtollc/service/MediaManager;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, p1, p2, p3}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 614
    const/4 v3, 0x2

    if-ne p1, v3, :cond_0

    .line 616
    iget-object v3, p0, Lorg/abtollc/service/MediaManager;->ringer:Lorg/abtollc/utils/Ringer;

    invoke-virtual {v3}, Lorg/abtollc/utils/Ringer;->updateRingerMode()V

    .line 619
    :cond_0
    invoke-static {}, Lorg/abtollc/utils/Compatibility;->getInCallStream()I

    move-result v0

    .line 620
    .local v0, "inCallStream":I
    if-ne p1, v0, :cond_1

    .line 621
    iget-object v3, p0, Lorg/abtollc/service/MediaManager;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v0}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    .line 622
    .local v1, "maxLevel":I
    iget-object v3, p0, Lorg/abtollc/service/MediaManager;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, v1

    div-float/2addr v3, v4

    const/high16 v4, 0x41200000    # 10.0f

    mul-float v2, v3, v4

    .line 624
    .local v2, "modifiedLevel":F
    iget-object v3, p0, Lorg/abtollc/service/MediaManager;->service:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v3}, Lorg/abtollc/service/ABTOSipService;->getPrefs()Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v3

    const-string v4, "snd_stream_level"

    invoke-virtual {v3, v4, v2}, Lorg/abtollc/utils/PreferencesProviderWrapper;->setPreferenceFloatValue(Ljava/lang/String;F)V

    .line 627
    .end local v1    # "maxLevel":I
    .end local v2    # "modifiedLevel":F
    :cond_1
    return-void
.end method

.method public broadcastMediaChanged()V
    .locals 3

    .prologue
    .line 588
    iget-object v0, p0, Lorg/abtollc/service/MediaManager;->service:Lorg/abtollc/service/ABTOSipService;

    iget-object v1, p0, Lorg/abtollc/service/MediaManager;->mediaStateChangedIntent:Landroid/content/Intent;

    const-string v2, "android.permission.USE_SIP"

    invoke-virtual {v0, v1, v2}, Lorg/abtollc/service/ABTOSipService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 589
    return-void
.end method

.method public getMediaState()Lorg/abtollc/api/MediaState;
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 532
    new-instance v0, Lorg/abtollc/api/MediaState;

    invoke-direct {v0}, Lorg/abtollc/api/MediaState;-><init>()V

    .line 535
    .local v0, "mediaState":Lorg/abtollc/api/MediaState;
    iget-boolean v3, p0, Lorg/abtollc/service/MediaManager;->userWantMicrophoneMute:Z

    iput-boolean v3, v0, Lorg/abtollc/api/MediaState;->isMicrophoneMute:Z

    .line 536
    iput-boolean v1, v0, Lorg/abtollc/api/MediaState;->canMicrophoneMute:Z

    .line 539
    iget-boolean v3, p0, Lorg/abtollc/service/MediaManager;->userWantSpeaker:Z

    iput-boolean v3, v0, Lorg/abtollc/api/MediaState;->isSpeakerphoneOn:Z

    .line 540
    iget-boolean v3, v0, Lorg/abtollc/api/MediaState;->isBluetoothScoOn:Z

    if-nez v3, :cond_0

    :goto_0
    iput-boolean v1, v0, Lorg/abtollc/api/MediaState;->canSpeakerphoneOn:Z

    .line 544
    iget-object v1, p0, Lorg/abtollc/service/MediaManager;->bluetoothWrapper:Lorg/abtollc/utils/bluetooth/BluetoothWrapper;

    if-eqz v1, :cond_1

    .line 545
    iget-object v1, p0, Lorg/abtollc/service/MediaManager;->bluetoothWrapper:Lorg/abtollc/utils/bluetooth/BluetoothWrapper;

    invoke-virtual {v1}, Lorg/abtollc/utils/bluetooth/BluetoothWrapper;->isBluetoothOn()Z

    move-result v1

    iput-boolean v1, v0, Lorg/abtollc/api/MediaState;->isBluetoothScoOn:Z

    .line 546
    iget-object v1, p0, Lorg/abtollc/service/MediaManager;->bluetoothWrapper:Lorg/abtollc/utils/bluetooth/BluetoothWrapper;

    invoke-virtual {v1}, Lorg/abtollc/utils/bluetooth/BluetoothWrapper;->canBluetooth()Z

    move-result v1

    iput-boolean v1, v0, Lorg/abtollc/api/MediaState;->canBluetoothSco:Z

    .line 552
    :goto_1
    return-object v0

    :cond_0
    move v1, v2

    .line 540
    goto :goto_0

    .line 548
    :cond_1
    iput-boolean v2, v0, Lorg/abtollc/api/MediaState;->isBluetoothScoOn:Z

    .line 549
    iput-boolean v2, v0, Lorg/abtollc/api/MediaState;->canBluetoothSco:Z

    goto :goto_1
.end method

.method public isUserWantMicrophoneMute()Z
    .locals 1

    .prologue
    .line 631
    iget-boolean v0, p0, Lorg/abtollc/service/MediaManager;->userWantMicrophoneMute:Z

    return v0
.end method

.method public onBluetoothStateChanged(I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    .line 761
    invoke-virtual {p0}, Lorg/abtollc/service/MediaManager;->setSoftwareVolume()V

    .line 762
    invoke-virtual {p0}, Lorg/abtollc/service/MediaManager;->broadcastMediaChanged()V

    .line 763
    return-void
.end method

.method public playInCallTone(I)V
    .locals 1
    .param p1, "toneId"    # I

    .prologue
    .line 648
    new-instance v0, Lorg/abtollc/service/MediaManager$InCallTonePlayer;

    invoke-direct {v0, p0, p1}, Lorg/abtollc/service/MediaManager$InCallTonePlayer;-><init>(Lorg/abtollc/service/MediaManager;I)V

    invoke-virtual {v0}, Lorg/abtollc/service/MediaManager$InCallTonePlayer;->start()V

    .line 649
    return-void
.end method

.method public resetSettings()V
    .locals 2

    .prologue
    .line 485
    iget-object v0, p0, Lorg/abtollc/service/MediaManager;->service:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v0}, Lorg/abtollc/service/ABTOSipService;->getPrefs()Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v0

    const-string v1, "auto_connect_bluetooth"

    invoke-virtual {v0, v1}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/abtollc/service/MediaManager;->userWantBluetooth:Z

    .line 486
    iget-object v0, p0, Lorg/abtollc/service/MediaManager;->service:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v0}, Lorg/abtollc/service/ABTOSipService;->getPrefs()Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v0

    const-string v1, "auto_connect_speaker"

    invoke-virtual {v0, v1}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/abtollc/service/MediaManager;->userWantSpeaker:Z

    .line 487
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/abtollc/service/MediaManager;->userWantMicrophoneMute:Z

    .line 488
    return-void
.end method

.method public setAudioInCall(Z)V
    .locals 1
    .param p1, "beforeInit"    # Z

    .prologue
    .line 153
    if-eqz p1, :cond_0

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lorg/abtollc/service/MediaManager;->startBeforeInit:Z

    if-eqz v0, :cond_1

    .line 154
    :cond_0
    invoke-direct {p0}, Lorg/abtollc/service/MediaManager;->actualSetAudioInCall()V

    .line 156
    :cond_1
    return-void
.end method

.method public setBluetoothOn(Z)V
    .locals 3
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/abtollc/service/ABTOSipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 516
    const-string v0, "MediaManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set BT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    iget-object v0, p0, Lorg/abtollc/service/MediaManager;->service:Lorg/abtollc/service/ABTOSipService;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/abtollc/service/MediaManager;->restartAudioWhenRoutingChange:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/abtollc/service/MediaManager;->ringer:Lorg/abtollc/utils/Ringer;

    invoke-virtual {v0}, Lorg/abtollc/utils/Ringer;->isRinging()Z

    move-result v0

    if-nez v0, :cond_0

    .line 518
    iget-object v0, p0, Lorg/abtollc/service/MediaManager;->service:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v0}, Lorg/abtollc/service/ABTOSipService;->setNoSnd()V

    .line 519
    iput-boolean p1, p0, Lorg/abtollc/service/MediaManager;->userWantBluetooth:Z

    .line 520
    iget-object v0, p0, Lorg/abtollc/service/MediaManager;->service:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v0}, Lorg/abtollc/service/ABTOSipService;->setSnd()V

    .line 525
    :goto_0
    invoke-virtual {p0}, Lorg/abtollc/service/MediaManager;->broadcastMediaChanged()V

    .line 526
    return-void

    .line 522
    :cond_0
    iput-boolean p1, p0, Lorg/abtollc/service/MediaManager;->userWantBluetooth:Z

    .line 523
    iget-object v0, p0, Lorg/abtollc/service/MediaManager;->bluetoothWrapper:Lorg/abtollc/utils/bluetooth/BluetoothWrapper;

    invoke-virtual {v0, p1}, Lorg/abtollc/utils/bluetooth/BluetoothWrapper;->setBluetoothOn(Z)V

    goto :goto_0
.end method

.method public setMicrophoneMute(Z)V
    .locals 1
    .param p1, "on"    # Z

    .prologue
    .line 496
    iget-boolean v0, p0, Lorg/abtollc/service/MediaManager;->userWantMicrophoneMute:Z

    if-eq p1, v0, :cond_0

    .line 497
    iput-boolean p1, p0, Lorg/abtollc/service/MediaManager;->userWantMicrophoneMute:Z

    .line 498
    invoke-virtual {p0}, Lorg/abtollc/service/MediaManager;->setSoftwareVolume()V

    .line 499
    invoke-virtual {p0}, Lorg/abtollc/service/MediaManager;->broadcastMediaChanged()V

    .line 501
    :cond_0
    return-void
.end method

.method public setSoftwareVolume()V
    .locals 7

    .prologue
    .line 560
    iget-object v5, p0, Lorg/abtollc/service/MediaManager;->service:Lorg/abtollc/service/ABTOSipService;

    if-eqz v5, :cond_0

    .line 561
    iget-object v5, p0, Lorg/abtollc/service/MediaManager;->bluetoothWrapper:Lorg/abtollc/utils/bluetooth/BluetoothWrapper;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lorg/abtollc/service/MediaManager;->bluetoothWrapper:Lorg/abtollc/utils/bluetooth/BluetoothWrapper;

    invoke-virtual {v5}, Lorg/abtollc/utils/bluetooth/BluetoothWrapper;->isBluetoothOn()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, 0x1

    .line 563
    .local v4, "useBT":Z
    :goto_0
    if-eqz v4, :cond_2

    const-string v3, "snd_bt_speaker_level"

    .line 564
    .local v3, "speaker_key":Ljava/lang/String;
    :goto_1
    if-eqz v4, :cond_3

    const-string v1, "snd_bt_mic_level"

    .line 566
    .local v1, "mic_key":Ljava/lang/String;
    :goto_2
    iget-object v5, p0, Lorg/abtollc/service/MediaManager;->service:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v5}, Lorg/abtollc/service/ABTOSipService;->getPrefs()Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v5

    invoke-virtual {v5, v3}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceFloatValue(Ljava/lang/String;)F

    move-result v2

    .line 567
    .local v2, "speakVolume":F
    iget-boolean v5, p0, Lorg/abtollc/service/MediaManager;->userWantMicrophoneMute:Z

    if-eqz v5, :cond_4

    const/4 v0, 0x0

    .line 569
    .local v0, "micVolume":F
    :goto_3
    iget-object v5, p0, Lorg/abtollc/service/MediaManager;->service:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v5}, Lorg/abtollc/service/ABTOSipService;->getExecutor()Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;

    move-result-object v5

    new-instance v6, Lorg/abtollc/service/MediaManager$1;

    invoke-direct {v6, p0, v2, v0, v4}, Lorg/abtollc/service/MediaManager$1;-><init>(Lorg/abtollc/service/MediaManager;FFZ)V

    invoke-virtual {v5, v6}, Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 583
    .end local v0    # "micVolume":F
    .end local v1    # "mic_key":Ljava/lang/String;
    .end local v2    # "speakVolume":F
    .end local v3    # "speaker_key":Ljava/lang/String;
    .end local v4    # "useBT":Z
    :cond_0
    return-void

    .line 561
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 563
    .restart local v4    # "useBT":Z
    :cond_2
    const-string v3, "snd_speaker_level"

    goto :goto_1

    .line 564
    .restart local v3    # "speaker_key":Ljava/lang/String;
    :cond_3
    const-string v1, "snd_mic_level"

    goto :goto_2

    .line 567
    .restart local v1    # "mic_key":Ljava/lang/String;
    .restart local v2    # "speakVolume":F
    :cond_4
    iget-object v5, p0, Lorg/abtollc/service/MediaManager;->service:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v5}, Lorg/abtollc/service/ABTOSipService;->getPrefs()Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v5

    invoke-virtual {v5, v1}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceFloatValue(Ljava/lang/String;)F

    move-result v0

    goto :goto_3
.end method

.method public setSpeakerphoneOn(Z)V
    .locals 1
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/abtollc/service/ABTOSipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 504
    iget-object v0, p0, Lorg/abtollc/service/MediaManager;->service:Lorg/abtollc/service/ABTOSipService;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/abtollc/service/MediaManager;->restartAudioWhenRoutingChange:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/abtollc/service/MediaManager;->ringer:Lorg/abtollc/utils/Ringer;

    invoke-virtual {v0}, Lorg/abtollc/utils/Ringer;->isRinging()Z

    move-result v0

    if-nez v0, :cond_0

    .line 505
    iget-object v0, p0, Lorg/abtollc/service/MediaManager;->service:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v0}, Lorg/abtollc/service/ABTOSipService;->setNoSnd()V

    .line 506
    iput-boolean p1, p0, Lorg/abtollc/service/MediaManager;->userWantSpeaker:Z

    .line 507
    iget-object v0, p0, Lorg/abtollc/service/MediaManager;->service:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v0}, Lorg/abtollc/service/ABTOSipService;->setSnd()V

    .line 512
    :goto_0
    invoke-virtual {p0}, Lorg/abtollc/service/MediaManager;->broadcastMediaChanged()V

    .line 513
    return-void

    .line 509
    :cond_0
    iput-boolean p1, p0, Lorg/abtollc/service/MediaManager;->userWantSpeaker:Z

    .line 510
    iget-object v0, p0, Lorg/abtollc/service/MediaManager;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    goto :goto_0
.end method

.method public setStreamVolume(III)V
    .locals 1
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "flags"    # I

    .prologue
    .line 607
    invoke-direct {p0, p1, p2}, Lorg/abtollc/service/MediaManager;->broadcastVolumeWillBeUpdated(II)V

    .line 608
    iget-object v0, p0, Lorg/abtollc/service/MediaManager;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 609
    return-void
.end method

.method public declared-synchronized startRing(Ljava/lang/String;)V
    .locals 3
    .param p1, "remoteContact"    # Ljava/lang/String;

    .prologue
    .line 451
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/abtollc/service/MediaManager;->service:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v0}, Lorg/abtollc/service/ABTOSipService;->getPrefs()Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v0

    const-string v1, "enable_ringtone"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 464
    :goto_0
    monitor-exit p0

    return-void

    .line 454
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lorg/abtollc/service/MediaManager;->saveAudioState()V

    .line 455
    iget-object v0, p0, Lorg/abtollc/service/MediaManager;->audioFocusWrapper:Lorg/abtollc/utils/audio/AudioFocusWrapper;

    invoke-virtual {v0}, Lorg/abtollc/utils/audio/AudioFocusWrapper;->focus()V

    .line 457
    iget-object v0, p0, Lorg/abtollc/service/MediaManager;->ringer:Lorg/abtollc/utils/Ringer;

    invoke-virtual {v0}, Lorg/abtollc/utils/Ringer;->isRinging()Z

    move-result v0

    if-nez v0, :cond_1

    .line 458
    const-string v0, "MediaManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start Ring for contact "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    iget-object v0, p0, Lorg/abtollc/service/MediaManager;->ringer:Lorg/abtollc/utils/Ringer;

    iget-object v1, p0, Lorg/abtollc/service/MediaManager;->service:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v1}, Lorg/abtollc/service/ABTOSipService;->getPrefs()Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getRingtone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/abtollc/utils/Ringer;->ring(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 451
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 461
    :cond_1
    :try_start_2
    const-string v0, "MediaManager"

    const-string v1, "Already ringing ...."

    invoke-static {v0, v1}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public startService()V
    .locals 3

    .prologue
    .line 96
    iget-object v0, p0, Lorg/abtollc/service/MediaManager;->bluetoothWrapper:Lorg/abtollc/utils/bluetooth/BluetoothWrapper;

    if-nez v0, :cond_0

    .line 97
    iget-object v0, p0, Lorg/abtollc/service/MediaManager;->service:Lorg/abtollc/service/ABTOSipService;

    invoke-static {v0}, Lorg/abtollc/utils/bluetooth/BluetoothWrapper;->getInstance(Landroid/content/Context;)Lorg/abtollc/utils/bluetooth/BluetoothWrapper;

    move-result-object v0

    iput-object v0, p0, Lorg/abtollc/service/MediaManager;->bluetoothWrapper:Lorg/abtollc/utils/bluetooth/BluetoothWrapper;

    .line 98
    iget-object v0, p0, Lorg/abtollc/service/MediaManager;->bluetoothWrapper:Lorg/abtollc/utils/bluetooth/BluetoothWrapper;

    invoke-virtual {v0, p0}, Lorg/abtollc/utils/bluetooth/BluetoothWrapper;->setBluetoothChangeListener(Lorg/abtollc/utils/bluetooth/BluetoothWrapper$BluetoothChangeListener;)V

    .line 99
    iget-object v0, p0, Lorg/abtollc/service/MediaManager;->bluetoothWrapper:Lorg/abtollc/utils/bluetooth/BluetoothWrapper;

    invoke-virtual {v0}, Lorg/abtollc/utils/bluetooth/BluetoothWrapper;->register()V

    .line 101
    :cond_0
    iget-object v0, p0, Lorg/abtollc/service/MediaManager;->audioFocusWrapper:Lorg/abtollc/utils/audio/AudioFocusWrapper;

    if-nez v0, :cond_1

    .line 102
    invoke-static {}, Lorg/abtollc/utils/audio/AudioFocusWrapper;->getInstance()Lorg/abtollc/utils/audio/AudioFocusWrapper;

    move-result-object v0

    iput-object v0, p0, Lorg/abtollc/service/MediaManager;->audioFocusWrapper:Lorg/abtollc/utils/audio/AudioFocusWrapper;

    .line 103
    iget-object v0, p0, Lorg/abtollc/service/MediaManager;->audioFocusWrapper:Lorg/abtollc/utils/audio/AudioFocusWrapper;

    iget-object v1, p0, Lorg/abtollc/service/MediaManager;->service:Lorg/abtollc/service/ABTOSipService;

    iget-object v2, p0, Lorg/abtollc/service/MediaManager;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1, v2}, Lorg/abtollc/utils/audio/AudioFocusWrapper;->init(Lorg/abtollc/service/ABTOSipService;Landroid/media/AudioManager;)V

    .line 105
    :cond_1
    iget-object v0, p0, Lorg/abtollc/service/MediaManager;->service:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v0}, Lorg/abtollc/service/ABTOSipService;->getPrefs()Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getInCallMode()I

    move-result v0

    sput v0, Lorg/abtollc/service/MediaManager;->modeSipInCall:I

    .line 106
    iget-object v0, p0, Lorg/abtollc/service/MediaManager;->service:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v0}, Lorg/abtollc/service/ABTOSipService;->getPrefs()Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v0

    const-string v1, "use_sgs_call_hack"

    invoke-virtual {v0, v1}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/abtollc/service/MediaManager;->useSgsWrkAround:Z

    .line 107
    iget-object v0, p0, Lorg/abtollc/service/MediaManager;->service:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v0}, Lorg/abtollc/service/ABTOSipService;->getPrefs()Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v0

    const-string v1, "use_webrtc_hack"

    invoke-virtual {v0, v1}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/abtollc/service/MediaManager;->useWebRTCImpl:Z

    .line 108
    iget-object v0, p0, Lorg/abtollc/service/MediaManager;->service:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v0}, Lorg/abtollc/service/ABTOSipService;->getPrefs()Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v0

    const-string v1, "do_focus_audio"

    invoke-virtual {v0, v1}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/abtollc/service/MediaManager;->doFocusAudio:Z

    .line 109
    iget-object v0, p0, Lorg/abtollc/service/MediaManager;->service:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v0}, Lorg/abtollc/service/ABTOSipService;->getPrefs()Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v0

    const-string v1, "auto_connect_bluetooth"

    invoke-virtual {v0, v1}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/abtollc/service/MediaManager;->userWantBluetooth:Z

    .line 110
    iget-object v0, p0, Lorg/abtollc/service/MediaManager;->service:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v0}, Lorg/abtollc/service/ABTOSipService;->getPrefs()Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v0

    const-string v1, "auto_connect_speaker"

    invoke-virtual {v0, v1}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/abtollc/service/MediaManager;->userWantSpeaker:Z

    .line 111
    iget-object v0, p0, Lorg/abtollc/service/MediaManager;->service:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v0}, Lorg/abtollc/service/ABTOSipService;->getPrefs()Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v0

    const-string v1, "restart_aud_on_routing_change"

    invoke-virtual {v0, v1}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/abtollc/service/MediaManager;->restartAudioWhenRoutingChange:Z

    .line 112
    iget-object v0, p0, Lorg/abtollc/service/MediaManager;->service:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v0}, Lorg/abtollc/service/ABTOSipService;->getPrefs()Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v0

    const-string v1, "setup_audio_before_init"

    invoke-virtual {v0, v1}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/abtollc/service/MediaManager;->startBeforeInit:Z

    .line 113
    return-void
.end method

.method public declared-synchronized stopRing()V
    .locals 1

    .prologue
    .line 471
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/abtollc/service/MediaManager;->ringer:Lorg/abtollc/utils/Ringer;

    invoke-virtual {v0}, Lorg/abtollc/utils/Ringer;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 472
    iget-object v0, p0, Lorg/abtollc/service/MediaManager;->ringer:Lorg/abtollc/utils/Ringer;

    invoke-virtual {v0}, Lorg/abtollc/utils/Ringer;->stopRing()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 474
    :cond_0
    monitor-exit p0

    return-void

    .line 471
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public stopRingAndUnfocus()V
    .locals 1

    .prologue
    .line 480
    invoke-virtual {p0}, Lorg/abtollc/service/MediaManager;->stopRing()V

    .line 481
    iget-object v0, p0, Lorg/abtollc/service/MediaManager;->audioFocusWrapper:Lorg/abtollc/utils/audio/AudioFocusWrapper;

    invoke-virtual {v0}, Lorg/abtollc/utils/audio/AudioFocusWrapper;->unFocus()V

    .line 482
    return-void
.end method

.method public stopService()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 116
    const-string v0, "MediaManager"

    const-string v1, "Remove media manager...."

    invoke-static {v0, v1}, Lorg/abtollc/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lorg/abtollc/service/MediaManager;->bluetoothWrapper:Lorg/abtollc/utils/bluetooth/BluetoothWrapper;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lorg/abtollc/service/MediaManager;->bluetoothWrapper:Lorg/abtollc/utils/bluetooth/BluetoothWrapper;

    invoke-virtual {v0}, Lorg/abtollc/utils/bluetooth/BluetoothWrapper;->unregister()V

    .line 119
    iget-object v0, p0, Lorg/abtollc/service/MediaManager;->bluetoothWrapper:Lorg/abtollc/utils/bluetooth/BluetoothWrapper;

    invoke-virtual {v0, v2}, Lorg/abtollc/utils/bluetooth/BluetoothWrapper;->setBluetoothChangeListener(Lorg/abtollc/utils/bluetooth/BluetoothWrapper$BluetoothChangeListener;)V

    .line 120
    iput-object v2, p0, Lorg/abtollc/service/MediaManager;->bluetoothWrapper:Lorg/abtollc/utils/bluetooth/BluetoothWrapper;

    .line 122
    :cond_0
    return-void
.end method

.method public toggleMute()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/abtollc/service/ABTOSipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 492
    iget-boolean v0, p0, Lorg/abtollc/service/MediaManager;->userWantMicrophoneMute:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lorg/abtollc/service/MediaManager;->setMicrophoneMute(Z)V

    .line 493
    return-void

    .line 492
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public unsetAudioInCall()V
    .locals 0

    .prologue
    .line 159
    invoke-direct {p0}, Lorg/abtollc/service/MediaManager;->actualUnsetAudioInCall()V

    .line 160
    return-void
.end method

.method public validateAudioClockRate(I)I
    .locals 1
    .param p1, "clockRate"    # I

    .prologue
    .line 144
    iget-object v0, p0, Lorg/abtollc/service/MediaManager;->bluetoothWrapper:Lorg/abtollc/utils/bluetooth/BluetoothWrapper;

    if-eqz v0, :cond_0

    const/16 v0, 0x1f40

    if-eq p1, v0, :cond_0

    .line 145
    iget-boolean v0, p0, Lorg/abtollc/service/MediaManager;->userWantBluetooth:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/abtollc/service/MediaManager;->bluetoothWrapper:Lorg/abtollc/utils/bluetooth/BluetoothWrapper;

    invoke-virtual {v0}, Lorg/abtollc/utils/bluetooth/BluetoothWrapper;->canBluetooth()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    const/4 v0, -0x1

    .line 149
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
