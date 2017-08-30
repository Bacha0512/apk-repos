.class public Lcom/weirdvoice/service/MediaManager;
.super Ljava/lang/Object;
.source "MediaManager.java"

# interfaces
.implements Lcom/weirdvoice/utils/bluetooth/BluetoothWrapper$BluetoothChangeListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "InlinedApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/weirdvoice/service/MediaManager$InCallTonePlayer;
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
.field private accessibilityManager:Lcom/weirdvoice/utils/accessibility/AccessibilityWrapper;

.field private audioFocusWrapper:Lcom/weirdvoice/utils/audio/AudioFocusWrapper;

.field private audioManager:Landroid/media/AudioManager;

.field private bluetoothWrapper:Lcom/weirdvoice/utils/bluetooth/BluetoothWrapper;

.field private doFocusAudio:Z

.field private isSetAudioMode:Z

.field private mediaStateChangedIntent:Landroid/content/Intent;

.field private prefs:Landroid/content/SharedPreferences;

.field private restartAudioWhenRoutingChange:Z

.field private ringer:Lcom/weirdvoice/utils/Ringer;

.field private screenLock:Landroid/os/PowerManager$WakeLock;

.field private service:Lcom/weirdvoice/service/SipService;

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
    .line 95
    const/4 v0, 0x0

    sput v0, Lcom/weirdvoice/service/MediaManager;->modeSipInCall:I

    .line 658
    return-void
.end method

.method public constructor <init>(Lcom/weirdvoice/service/SipService;)V
    .locals 3
    .param p1, "aService"    # Lcom/weirdvoice/service/SipService;

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-boolean v2, p0, Lcom/weirdvoice/service/MediaManager;->isSetAudioMode:Z

    .line 74
    iput-boolean v2, p0, Lcom/weirdvoice/service/MediaManager;->userWantBluetooth:Z

    .line 75
    iput-boolean v2, p0, Lcom/weirdvoice/service/MediaManager;->userWantSpeaker:Z

    .line 76
    iput-boolean v2, p0, Lcom/weirdvoice/service/MediaManager;->userWantMicrophoneMute:Z

    .line 78
    iput-boolean v0, p0, Lcom/weirdvoice/service/MediaManager;->restartAudioWhenRoutingChange:Z

    .line 89
    iput-boolean v2, p0, Lcom/weirdvoice/service/MediaManager;->useSgsWrkAround:Z

    .line 90
    iput-boolean v2, p0, Lcom/weirdvoice/service/MediaManager;->useWebRTCImpl:Z

    .line 91
    iput-boolean v0, p0, Lcom/weirdvoice/service/MediaManager;->doFocusAudio:Z

    .line 101
    iput-object p1, p0, Lcom/weirdvoice/service/MediaManager;->service:Lcom/weirdvoice/service/SipService;

    .line 102
    iget-object v0, p0, Lcom/weirdvoice/service/MediaManager;->service:Lcom/weirdvoice/service/SipService;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Lcom/weirdvoice/service/SipService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/weirdvoice/service/MediaManager;->audioManager:Landroid/media/AudioManager;

    .line 103
    iget-object v0, p0, Lcom/weirdvoice/service/MediaManager;->service:Lcom/weirdvoice/service/SipService;

    const-string v1, "audio"

    invoke-virtual {v0, v1, v2}, Lcom/weirdvoice/service/SipService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/weirdvoice/service/MediaManager;->prefs:Landroid/content/SharedPreferences;

    .line 105
    invoke-static {}, Lcom/weirdvoice/utils/accessibility/AccessibilityWrapper;->getInstance()Lcom/weirdvoice/utils/accessibility/AccessibilityWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/weirdvoice/service/MediaManager;->accessibilityManager:Lcom/weirdvoice/utils/accessibility/AccessibilityWrapper;

    .line 106
    iget-object v0, p0, Lcom/weirdvoice/service/MediaManager;->accessibilityManager:Lcom/weirdvoice/utils/accessibility/AccessibilityWrapper;

    iget-object v1, p0, Lcom/weirdvoice/service/MediaManager;->service:Lcom/weirdvoice/service/SipService;

    invoke-virtual {v0, v1}, Lcom/weirdvoice/utils/accessibility/AccessibilityWrapper;->init(Landroid/content/Context;)V

    .line 108
    new-instance v0, Lcom/weirdvoice/utils/Ringer;

    iget-object v1, p0, Lcom/weirdvoice/service/MediaManager;->service:Lcom/weirdvoice/service/SipService;

    invoke-direct {v0, v1}, Lcom/weirdvoice/utils/Ringer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/weirdvoice/service/MediaManager;->ringer:Lcom/weirdvoice/utils/Ringer;

    .line 109
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.weirdvoice.service.MEDIA_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/weirdvoice/service/MediaManager;->mediaStateChangedIntent:Landroid/content/Intent;

    .line 112
    invoke-direct {p0}, Lcom/weirdvoice/service/MediaManager;->restoreAudioState()V

    .line 113
    return-void
.end method

.method static synthetic access$0(Lcom/weirdvoice/service/MediaManager;)Lcom/weirdvoice/service/SipService;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/weirdvoice/service/MediaManager;->service:Lcom/weirdvoice/service/SipService;

    return-object v0
.end method

.method static synthetic access$1(Lcom/weirdvoice/service/MediaManager;)Landroid/media/AudioManager;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/weirdvoice/service/MediaManager;->audioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method private declared-synchronized actualSetAudioInCall()V
    .locals 14

    .prologue
    .line 190
    monitor-enter p0

    :try_start_0
    iget-boolean v11, p0, Lcom/weirdvoice/service/MediaManager;->isSetAudioMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v11, :cond_0

    .line 360
    :goto_0
    monitor-exit p0

    return-void

    .line 193
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/weirdvoice/service/MediaManager;->stopRing()V

    .line 194
    invoke-direct {p0}, Lcom/weirdvoice/service/MediaManager;->saveAudioState()V

    .line 210
    iget-object v11, p0, Lcom/weirdvoice/service/MediaManager;->service:Lcom/weirdvoice/service/SipService;

    invoke-virtual {v11}, Lcom/weirdvoice/service/SipService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 211
    .local v1, "ctntResolver":Landroid/content/ContentResolver;
    invoke-static {}, Lcom/weirdvoice/utils/Compatibility;->getWifiSleepPolicyNever()I

    move-result v11

    invoke-static {v1, v11}, Lcom/weirdvoice/utils/Compatibility;->setWifiSleepPolicy(Landroid/content/ContentResolver;I)V

    .line 214
    iget-object v11, p0, Lcom/weirdvoice/service/MediaManager;->service:Lcom/weirdvoice/service/SipService;

    const-string v12, "wifi"

    invoke-virtual {v11, v12}, Lcom/weirdvoice/service/SipService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/wifi/WifiManager;

    .line 215
    .local v10, "wman":Landroid/net/wifi/WifiManager;
    iget-object v11, p0, Lcom/weirdvoice/service/MediaManager;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-nez v11, :cond_1

    .line 217
    const/16 v11, 0x9

    invoke-static {v11}, Lcom/weirdvoice/utils/Compatibility;->isCompatible(I)Z

    move-result v11

    if-eqz v11, :cond_c

    const/4 v11, 0x3

    .line 218
    :goto_1
    const-string v12, "com.weirdvoice.InCallLock"

    .line 216
    invoke-virtual {v10, v11, v12}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v11

    iput-object v11, p0, Lcom/weirdvoice/service/MediaManager;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 219
    iget-object v11, p0, Lcom/weirdvoice/service/MediaManager;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/net/wifi/WifiManager$WifiLock;->setReferenceCounted(Z)V

    .line 221
    :cond_1
    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v9

    .line 222
    .local v9, "winfo":Landroid/net/wifi/WifiInfo;
    if-eqz v9, :cond_5

    .line 223
    invoke-virtual {v9}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v11

    invoke-static {v11}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    .line 225
    .local v2, "dstate":Landroid/net/NetworkInfo$DetailedState;
    sget-object v11, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-eq v2, v11, :cond_2

    sget-object v11, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v2, v11, :cond_3

    .line 226
    :cond_2
    iget-object v11, p0, Lcom/weirdvoice/service/MediaManager;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v11}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v11

    if-nez v11, :cond_3

    .line 227
    iget-object v11, p0, Lcom/weirdvoice/service/MediaManager;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v11}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 232
    :cond_3
    iget-object v11, p0, Lcom/weirdvoice/service/MediaManager;->service:Lcom/weirdvoice/service/SipService;

    invoke-virtual {v11}, Lcom/weirdvoice/service/SipService;->getPrefs()Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    move-result-object v11

    const-string v12, "keep_awake_incall"

    invoke-virtual {v11, v12}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 233
    iget-object v11, p0, Lcom/weirdvoice/service/MediaManager;->screenLock:Landroid/os/PowerManager$WakeLock;

    if-nez v11, :cond_4

    .line 234
    iget-object v11, p0, Lcom/weirdvoice/service/MediaManager;->service:Lcom/weirdvoice/service/SipService;

    const-string v12, "power"

    invoke-virtual {v11, v12}, Lcom/weirdvoice/service/SipService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PowerManager;

    .line 235
    .local v6, "pm":Landroid/os/PowerManager;
    const v11, 0x20000006

    const-string v12, "com.weirdvoice.onIncomingCall.SCREEN"

    invoke-virtual {v6, v11, v12}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v11

    iput-object v11, p0, Lcom/weirdvoice/service/MediaManager;->screenLock:Landroid/os/PowerManager$WakeLock;

    .line 236
    iget-object v11, p0, Lcom/weirdvoice/service/MediaManager;->screenLock:Landroid/os/PowerManager$WakeLock;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 239
    .end local v6    # "pm":Landroid/os/PowerManager;
    :cond_4
    iget-object v11, p0, Lcom/weirdvoice/service/MediaManager;->screenLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v11}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v11

    if-nez v11, :cond_5

    .line 240
    iget-object v11, p0, Lcom/weirdvoice/service/MediaManager;->screenLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v11}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 248
    .end local v2    # "dstate":Landroid/net/NetworkInfo$DetailedState;
    :cond_5
    iget-boolean v11, p0, Lcom/weirdvoice/service/MediaManager;->useWebRTCImpl:Z

    if-nez v11, :cond_11

    .line 250
    invoke-direct {p0}, Lcom/weirdvoice/service/MediaManager;->getAudioTargetMode()I

    move-result v7

    .line 251
    .local v7, "targetMode":I
    const-string v11, "MediaManager"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Set mode audio in call to "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    iget-object v11, p0, Lcom/weirdvoice/service/MediaManager;->service:Lcom/weirdvoice/service/SipService;

    invoke-virtual {v11}, Lcom/weirdvoice/service/SipService;->getPrefs()Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    move-result-object v11

    invoke-virtual {v11}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->generateForSetCall()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 254
    iget-object v11, p0, Lcom/weirdvoice/service/MediaManager;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v11}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v11

    if-nez v11, :cond_d

    const/4 v5, 0x1

    .line 255
    .local v5, "needOutOfSilent":Z
    :goto_2
    if-eqz v5, :cond_6

    .line 256
    iget-object v11, p0, Lcom/weirdvoice/service/MediaManager;->audioManager:Landroid/media/AudioManager;

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 258
    :cond_6
    new-instance v8, Landroid/media/ToneGenerator;

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-direct {v8, v11, v12}, Landroid/media/ToneGenerator;-><init>(II)V

    .line 259
    .local v8, "toneGenerator":Landroid/media/ToneGenerator;
    const/16 v11, 0x29

    invoke-virtual {v8, v11}, Landroid/media/ToneGenerator;->startTone(I)Z

    .line 260
    invoke-virtual {v8}, Landroid/media/ToneGenerator;->stopTone()V

    .line 261
    invoke-virtual {v8}, Landroid/media/ToneGenerator;->release()V

    .line 263
    if-eqz v5, :cond_7

    .line 264
    iget-object v11, p0, Lcom/weirdvoice/service/MediaManager;->audioManager:Landroid/media/AudioManager;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 269
    .end local v5    # "needOutOfSilent":Z
    .end local v8    # "toneGenerator":Landroid/media/ToneGenerator;
    :cond_7
    const/4 v11, 0x2

    if-eq v7, v11, :cond_8

    iget-boolean v11, p0, Lcom/weirdvoice/service/MediaManager;->useSgsWrkAround:Z

    if-eqz v11, :cond_8

    .line 271
    iget-object v11, p0, Lcom/weirdvoice/service/MediaManager;->audioManager:Landroid/media/AudioManager;

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Landroid/media/AudioManager;->setMode(I)V

    .line 275
    :cond_8
    iget-object v11, p0, Lcom/weirdvoice/service/MediaManager;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v11, v7}, Landroid/media/AudioManager;->setMode(I)V

    .line 278
    iget-object v11, p0, Lcom/weirdvoice/service/MediaManager;->service:Lcom/weirdvoice/service/SipService;

    invoke-virtual {v11}, Lcom/weirdvoice/service/SipService;->getPrefs()Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    move-result-object v11

    invoke-virtual {v11}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->useRoutingApi()Z

    move-result v11

    if-eqz v11, :cond_f

    .line 279
    iget-object v12, p0, Lcom/weirdvoice/service/MediaManager;->audioManager:Landroid/media/AudioManager;

    iget-boolean v11, p0, Lcom/weirdvoice/service/MediaManager;->userWantSpeaker:Z

    if-eqz v11, :cond_e

    const/4 v11, 0x2

    :goto_3
    const/4 v13, -0x1

    invoke-virtual {v12, v7, v11, v13}, Landroid/media/AudioManager;->setRouting(III)V

    .line 284
    :goto_4
    iget-object v11, p0, Lcom/weirdvoice/service/MediaManager;->audioManager:Landroid/media/AudioManager;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/media/AudioManager;->setMicrophoneMute(Z)V

    .line 285
    iget-object v11, p0, Lcom/weirdvoice/service/MediaManager;->bluetoothWrapper:Lcom/weirdvoice/utils/bluetooth/BluetoothWrapper;

    if-eqz v11, :cond_9

    iget-boolean v11, p0, Lcom/weirdvoice/service/MediaManager;->userWantBluetooth:Z

    if-eqz v11, :cond_9

    iget-object v11, p0, Lcom/weirdvoice/service/MediaManager;->bluetoothWrapper:Lcom/weirdvoice/utils/bluetooth/BluetoothWrapper;

    invoke-virtual {v11}, Lcom/weirdvoice/utils/bluetooth/BluetoothWrapper;->canBluetooth()Z

    move-result v11

    if-eqz v11, :cond_9

    .line 286
    const-string v11, "MediaManager"

    const-string v12, "Try to enable bluetooth"

    invoke-static {v11, v12}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    iget-object v11, p0, Lcom/weirdvoice/service/MediaManager;->bluetoothWrapper:Lcom/weirdvoice/utils/bluetooth/BluetoothWrapper;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/weirdvoice/utils/bluetooth/BluetoothWrapper;->setBluetoothOn(Z)V

    .line 345
    .end local v7    # "targetMode":I
    :cond_9
    :goto_5
    iget-boolean v11, p0, Lcom/weirdvoice/service/MediaManager;->userWantBluetooth:Z

    invoke-static {v11}, Lcom/weirdvoice/utils/Compatibility;->getInCallStream(Z)I

    move-result v3

    .line 346
    .local v3, "inCallStream":I
    iget-boolean v11, p0, Lcom/weirdvoice/service/MediaManager;->doFocusAudio:Z

    if-eqz v11, :cond_b

    .line 347
    iget-object v11, p0, Lcom/weirdvoice/service/MediaManager;->accessibilityManager:Lcom/weirdvoice/utils/accessibility/AccessibilityWrapper;

    invoke-virtual {v11}, Lcom/weirdvoice/utils/accessibility/AccessibilityWrapper;->isEnabled()Z

    move-result v11

    if-nez v11, :cond_a

    .line 348
    iget-object v11, p0, Lcom/weirdvoice/service/MediaManager;->audioManager:Landroid/media/AudioManager;

    const/4 v12, 0x1

    invoke-virtual {v11, v3, v12}, Landroid/media/AudioManager;->setStreamSolo(IZ)V

    .line 350
    :cond_a
    iget-object v11, p0, Lcom/weirdvoice/service/MediaManager;->audioFocusWrapper:Lcom/weirdvoice/utils/audio/AudioFocusWrapper;

    iget-boolean v12, p0, Lcom/weirdvoice/service/MediaManager;->userWantBluetooth:Z

    invoke-virtual {v11, v12}, Lcom/weirdvoice/utils/audio/AudioFocusWrapper;->focus(Z)V

    .line 352
    :cond_b
    const-string v11, "MediaManager"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Initial volume level : "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, p0, Lcom/weirdvoice/service/MediaManager;->service:Lcom/weirdvoice/service/SipService;

    invoke-virtual {v13}, Lcom/weirdvoice/service/SipService;->getPrefs()Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    move-result-object v13

    invoke-virtual {v13}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getInitialVolumeLevel()F

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    iget-object v11, p0, Lcom/weirdvoice/service/MediaManager;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v11, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v11

    int-to-float v11, v11

    iget-object v12, p0, Lcom/weirdvoice/service/MediaManager;->service:Lcom/weirdvoice/service/SipService;

    invoke-virtual {v12}, Lcom/weirdvoice/service/SipService;->getPrefs()Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    move-result-object v12

    invoke-virtual {v12}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getInitialVolumeLevel()F

    move-result v12

    mul-float/2addr v11, v12

    float-to-int v11, v11

    .line 355
    const/4 v12, 0x0

    .line 353
    invoke-virtual {p0, v3, v11, v12}, Lcom/weirdvoice/service/MediaManager;->setStreamVolume(III)V

    .line 358
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/weirdvoice/service/MediaManager;->isSetAudioMode:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 190
    .end local v1    # "ctntResolver":Landroid/content/ContentResolver;
    .end local v3    # "inCallStream":I
    .end local v9    # "winfo":Landroid/net/wifi/WifiInfo;
    .end local v10    # "wman":Landroid/net/wifi/WifiManager;
    :catchall_0
    move-exception v11

    monitor-exit p0

    throw v11

    .line 217
    .restart local v1    # "ctntResolver":Landroid/content/ContentResolver;
    .restart local v10    # "wman":Landroid/net/wifi/WifiManager;
    :cond_c
    const/4 v11, 0x1

    goto/16 :goto_1

    .line 254
    .restart local v7    # "targetMode":I
    .restart local v9    # "winfo":Landroid/net/wifi/WifiInfo;
    :cond_d
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 279
    :cond_e
    const/4 v11, 0x1

    goto/16 :goto_3

    .line 281
    :cond_f
    :try_start_2
    iget-object v12, p0, Lcom/weirdvoice/service/MediaManager;->audioManager:Landroid/media/AudioManager;

    iget-boolean v11, p0, Lcom/weirdvoice/service/MediaManager;->userWantSpeaker:Z

    if-eqz v11, :cond_10

    const/4 v11, 0x1

    :goto_6
    invoke-virtual {v12, v11}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    goto/16 :goto_4

    :cond_10
    const/4 v11, 0x0

    goto :goto_6

    .line 292
    .end local v7    # "targetMode":I
    :cond_11
    invoke-static {}, Lcom/weirdvoice/utils/Compatibility;->getApiLevel()I

    move-result v0

    .line 298
    .local v0, "apiLevel":I
    sget-object v11, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v12, "Samsung"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_12

    const/16 v11, 0x8

    if-ne v11, v0, :cond_12

    .line 300
    const/4 v4, 0x4

    .line 301
    .local v4, "mode":I
    iget-object v11, p0, Lcom/weirdvoice/service/MediaManager;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v11, v4}, Landroid/media/AudioManager;->setMode(I)V

    .line 302
    iget-object v11, p0, Lcom/weirdvoice/service/MediaManager;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v11}, Landroid/media/AudioManager;->getMode()I

    move-result v11

    if-eq v11, v4, :cond_12

    .line 303
    const-string v11, "MediaManager"

    const-string v12, "Could not set audio mode for Samsung device"

    invoke-static {v11, v12}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    .end local v4    # "mode":I
    :cond_12
    const/4 v11, 0x3

    if-eq v11, v0, :cond_13

    const/4 v11, 0x4

    if-ne v11, v0, :cond_15

    .line 312
    :cond_13
    iget-boolean v11, p0, Lcom/weirdvoice/service/MediaManager;->userWantSpeaker:Z

    if-eqz v11, :cond_14

    .line 314
    iget-object v11, p0, Lcom/weirdvoice/service/MediaManager;->audioManager:Landroid/media/AudioManager;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/media/AudioManager;->setMode(I)V

    goto/16 :goto_5

    .line 317
    :cond_14
    iget-object v11, p0, Lcom/weirdvoice/service/MediaManager;->audioManager:Landroid/media/AudioManager;

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Landroid/media/AudioManager;->setMode(I)V

    goto/16 :goto_5

    .line 321
    :cond_15
    sget-object v11, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v12, "samsung"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_18

    .line 322
    const/4 v11, 0x5

    if-eq v11, v0, :cond_16

    const/4 v11, 0x6

    if-eq v11, v0, :cond_16

    .line 323
    const/4 v11, 0x7

    if-ne v11, v0, :cond_18

    .line 325
    :cond_16
    iget-boolean v11, p0, Lcom/weirdvoice/service/MediaManager;->userWantSpeaker:Z

    if-eqz v11, :cond_17

    .line 327
    iget-object v11, p0, Lcom/weirdvoice/service/MediaManager;->audioManager:Landroid/media/AudioManager;

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Landroid/media/AudioManager;->setMode(I)V

    .line 328
    iget-object v11, p0, Lcom/weirdvoice/service/MediaManager;->audioManager:Landroid/media/AudioManager;

    iget-boolean v12, p0, Lcom/weirdvoice/service/MediaManager;->userWantSpeaker:Z

    invoke-virtual {v11, v12}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    goto/16 :goto_5

    .line 331
    :cond_17
    iget-object v11, p0, Lcom/weirdvoice/service/MediaManager;->audioManager:Landroid/media/AudioManager;

    iget-boolean v12, p0, Lcom/weirdvoice/service/MediaManager;->userWantSpeaker:Z

    invoke-virtual {v11, v12}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 332
    iget-object v11, p0, Lcom/weirdvoice/service/MediaManager;->audioManager:Landroid/media/AudioManager;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/media/AudioManager;->setMode(I)V

    goto/16 :goto_5

    .line 336
    :cond_18
    iget-object v11, p0, Lcom/weirdvoice/service/MediaManager;->audioManager:Landroid/media/AudioManager;

    iget-boolean v12, p0, Lcom/weirdvoice/service/MediaManager;->userWantSpeaker:Z

    invoke-virtual {v11, v12}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_5
.end method

.method private declared-synchronized actualUnsetAudioInCall()V
    .locals 4

    .prologue
    .line 432
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/weirdvoice/service/MediaManager;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "isSavedAudioState"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/weirdvoice/service/MediaManager;->isSetAudioMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 462
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 436
    :cond_1
    :try_start_1
    const-string v1, "MediaManager"

    const-string v2, "Unset Audio In call"

    invoke-static {v1, v2}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    iget-boolean v1, p0, Lcom/weirdvoice/service/MediaManager;->userWantBluetooth:Z

    invoke-static {v1}, Lcom/weirdvoice/utils/Compatibility;->getInCallStream(Z)I

    move-result v0

    .line 439
    .local v0, "inCallStream":I
    iget-object v1, p0, Lcom/weirdvoice/service/MediaManager;->bluetoothWrapper:Lcom/weirdvoice/utils/bluetooth/BluetoothWrapper;

    if-eqz v1, :cond_2

    .line 442
    const-string v1, "MediaManager"

    const-string v2, "Unset bt"

    invoke-static {v1, v2}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    iget-object v1, p0, Lcom/weirdvoice/service/MediaManager;->bluetoothWrapper:Lcom/weirdvoice/utils/bluetooth/BluetoothWrapper;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/weirdvoice/utils/bluetooth/BluetoothWrapper;->setBluetoothOn(Z)V

    .line 445
    :cond_2
    iget-object v1, p0, Lcom/weirdvoice/service/MediaManager;->audioManager:Landroid/media/AudioManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setMicrophoneMute(Z)V

    .line 446
    iget-boolean v1, p0, Lcom/weirdvoice/service/MediaManager;->doFocusAudio:Z

    if-eqz v1, :cond_3

    .line 447
    iget-object v1, p0, Lcom/weirdvoice/service/MediaManager;->audioManager:Landroid/media/AudioManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/media/AudioManager;->setStreamSolo(IZ)V

    .line 448
    iget-object v1, p0, Lcom/weirdvoice/service/MediaManager;->audioFocusWrapper:Lcom/weirdvoice/utils/audio/AudioFocusWrapper;

    invoke-virtual {v1}, Lcom/weirdvoice/utils/audio/AudioFocusWrapper;->unFocus()V

    .line 450
    :cond_3
    invoke-direct {p0}, Lcom/weirdvoice/service/MediaManager;->restoreAudioState()V

    .line 452
    iget-object v1, p0, Lcom/weirdvoice/service/MediaManager;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/weirdvoice/service/MediaManager;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 453
    iget-object v1, p0, Lcom/weirdvoice/service/MediaManager;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 455
    :cond_4
    iget-object v1, p0, Lcom/weirdvoice/service/MediaManager;->screenLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/weirdvoice/service/MediaManager;->screenLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 456
    const-string v1, "MediaManager"

    const-string v2, "Release screen lock"

    invoke-static {v1, v2}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    iget-object v1, p0, Lcom/weirdvoice/service/MediaManager;->screenLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 461
    :cond_5
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/weirdvoice/service/MediaManager;->isSetAudioMode:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 432
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
    .line 612
    new-instance v0, Landroid/content/Intent;

    const-string v1, "org.openintents.audio.action_volume_update"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 613
    .local v0, "notificationIntent":Landroid/content/Intent;
    const-string v1, "org.openintents.audio.extra_stream_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 614
    const-string v1, "org.openintents.audio.extra_volume_index"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 615
    const-string v1, "org.openintents.audio.extra_ringer_mode"

    const/16 v2, -0x270f

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 617
    iget-object v1, p0, Lcom/weirdvoice/service/MediaManager;->service:Lcom/weirdvoice/service/SipService;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/weirdvoice/service/SipService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 618
    return-void
.end method

.method private getAudioTargetMode()I
    .locals 6

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 146
    sget v0, Lcom/weirdvoice/service/MediaManager;->modeSipInCall:I

    .line 148
    .local v0, "targetMode":I
    iget-object v3, p0, Lcom/weirdvoice/service/MediaManager;->service:Lcom/weirdvoice/service/SipService;

    invoke-virtual {v3}, Lcom/weirdvoice/service/SipService;->getPrefs()Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->useModeApi()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 149
    const-string v3, "MediaManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "User want speaker now..."

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/weirdvoice/service/MediaManager;->userWantSpeaker:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v3, p0, Lcom/weirdvoice/service/MediaManager;->service:Lcom/weirdvoice/service/SipService;

    invoke-virtual {v3}, Lcom/weirdvoice/service/SipService;->getPrefs()Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->generateForSetCall()Z

    move-result v3

    if-nez v3, :cond_1

    .line 151
    iget-boolean v3, p0, Lcom/weirdvoice/service/MediaManager;->userWantSpeaker:Z

    if-eqz v3, :cond_0

    .line 161
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 151
    goto :goto_0

    .line 153
    :cond_1
    iget-boolean v3, p0, Lcom/weirdvoice/service/MediaManager;->userWantSpeaker:Z

    if-eqz v3, :cond_2

    :goto_1
    move v1, v2

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_1

    .line 156
    :cond_3
    iget-boolean v1, p0, Lcom/weirdvoice/service/MediaManager;->userWantBluetooth:Z

    if-eqz v1, :cond_4

    .line 157
    const/4 v0, 0x0

    .line 160
    :cond_4
    const-string v1, "MediaManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Target mode... : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    .line 161
    goto :goto_0
.end method

.method private final declared-synchronized restoreAudioState()V
    .locals 10

    .prologue
    .line 399
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/weirdvoice/service/MediaManager;->prefs:Landroid/content/SharedPreferences;

    const-string v5, "isSavedAudioState"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_0

    .line 425
    :goto_0
    monitor-exit p0

    return-void

    .line 404
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/weirdvoice/service/MediaManager;->service:Lcom/weirdvoice/service/SipService;

    invoke-virtual {v4}, Lcom/weirdvoice/service/SipService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 405
    .local v0, "ctntResolver":Landroid/content/ContentResolver;
    iget-object v4, p0, Lcom/weirdvoice/service/MediaManager;->prefs:Landroid/content/SharedPreferences;

    const-string v5, "savedWifiPolicy"

    invoke-static {}, Lcom/weirdvoice/utils/Compatibility;->getWifiSleepPolicyDefault()I

    move-result v6

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v0, v4}, Lcom/weirdvoice/utils/Compatibility;->setWifiSleepPolicy(Landroid/content/ContentResolver;I)V

    .line 410
    iget-boolean v4, p0, Lcom/weirdvoice/service/MediaManager;->userWantBluetooth:Z

    invoke-static {v4}, Lcom/weirdvoice/utils/Compatibility;->getInCallStream(Z)I

    move-result v2

    .line 411
    .local v2, "inCallStream":I
    iget-object v4, p0, Lcom/weirdvoice/service/MediaManager;->prefs:Landroid/content/SharedPreferences;

    const-string v5, "savedVolume"

    iget-object v6, p0, Lcom/weirdvoice/service/MediaManager;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v6, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v6

    int-to-double v6, v6

    const-wide v8, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v6, v8

    double-to-int v6, v6

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {p0, v2, v4, v5}, Lcom/weirdvoice/service/MediaManager;->setStreamVolume(III)V

    .line 413
    invoke-direct {p0}, Lcom/weirdvoice/service/MediaManager;->getAudioTargetMode()I

    move-result v3

    .line 414
    .local v3, "targetMode":I
    iget-object v4, p0, Lcom/weirdvoice/service/MediaManager;->service:Lcom/weirdvoice/service/SipService;

    invoke-virtual {v4}, Lcom/weirdvoice/service/SipService;->getPrefs()Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->useRoutingApi()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 415
    iget-object v4, p0, Lcom/weirdvoice/service/MediaManager;->audioManager:Landroid/media/AudioManager;

    iget-object v5, p0, Lcom/weirdvoice/service/MediaManager;->prefs:Landroid/content/SharedPreferences;

    const-string v6, "savedRoute"

    const/4 v7, 0x2

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, -0x1

    invoke-virtual {v4, v3, v5, v6}, Landroid/media/AudioManager;->setRouting(III)V

    .line 419
    :goto_1
    iget-object v4, p0, Lcom/weirdvoice/service/MediaManager;->audioManager:Landroid/media/AudioManager;

    iget-object v5, p0, Lcom/weirdvoice/service/MediaManager;->prefs:Landroid/content/SharedPreferences;

    const-string v6, "savedMode"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->setMode(I)V

    .line 422
    iget-object v4, p0, Lcom/weirdvoice/service/MediaManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 423
    .local v1, "ed":Landroid/content/SharedPreferences$Editor;
    const-string v4, "isSavedAudioState"

    const/4 v5, 0x0

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 424
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 399
    .end local v0    # "ctntResolver":Landroid/content/ContentResolver;
    .end local v1    # "ed":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "inCallStream":I
    .end local v3    # "targetMode":I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 417
    .restart local v0    # "ctntResolver":Landroid/content/ContentResolver;
    .restart local v2    # "inCallStream":I
    .restart local v3    # "targetMode":I
    :cond_1
    :try_start_2
    iget-object v4, p0, Lcom/weirdvoice/service/MediaManager;->audioManager:Landroid/media/AudioManager;

    iget-object v5, p0, Lcom/weirdvoice/service/MediaManager;->prefs:Landroid/content/SharedPreferences;

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
    .line 368
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/weirdvoice/service/MediaManager;->prefs:Landroid/content/SharedPreferences;

    const-string v5, "isSavedAudioState"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    .line 393
    :goto_0
    monitor-exit p0

    return-void

    .line 372
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/weirdvoice/service/MediaManager;->service:Lcom/weirdvoice/service/SipService;

    invoke-virtual {v4}, Lcom/weirdvoice/service/SipService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 374
    .local v0, "ctntResolver":Landroid/content/ContentResolver;
    iget-object v4, p0, Lcom/weirdvoice/service/MediaManager;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 378
    .local v1, "ed":Landroid/content/SharedPreferences$Editor;
    const-string v4, "savedWifiPolicy"

    invoke-static {v0}, Lcom/weirdvoice/utils/Compatibility;->getWifiSleepPolicy(Landroid/content/ContentResolver;)I

    move-result v5

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 380
    iget-boolean v4, p0, Lcom/weirdvoice/service/MediaManager;->userWantBluetooth:Z

    invoke-static {v4}, Lcom/weirdvoice/utils/Compatibility;->getInCallStream(Z)I

    move-result v2

    .line 381
    .local v2, "inCallStream":I
    const-string v4, "savedVolume"

    iget-object v5, p0, Lcom/weirdvoice/service/MediaManager;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v5, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v5

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 383
    invoke-direct {p0}, Lcom/weirdvoice/service/MediaManager;->getAudioTargetMode()I

    move-result v3

    .line 384
    .local v3, "targetMode":I
    iget-object v4, p0, Lcom/weirdvoice/service/MediaManager;->service:Lcom/weirdvoice/service/SipService;

    invoke-virtual {v4}, Lcom/weirdvoice/service/SipService;->getPrefs()Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->useRoutingApi()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 385
    const-string v4, "savedRoute"

    iget-object v5, p0, Lcom/weirdvoice/service/MediaManager;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v5, v3}, Landroid/media/AudioManager;->getRouting(I)I

    move-result v5

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 389
    :goto_1
    const-string v4, "savedMode"

    iget-object v5, p0, Lcom/weirdvoice/service/MediaManager;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v5}, Landroid/media/AudioManager;->getMode()I

    move-result v5

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 391
    const-string v4, "isSavedAudioState"

    const/4 v5, 0x1

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 392
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 368
    .end local v0    # "ctntResolver":Landroid/content/ContentResolver;
    .end local v1    # "ed":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "inCallStream":I
    .end local v3    # "targetMode":I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 387
    .restart local v0    # "ctntResolver":Landroid/content/ContentResolver;
    .restart local v1    # "ed":Landroid/content/SharedPreferences$Editor;
    .restart local v2    # "inCallStream":I
    .restart local v3    # "targetMode":I
    :cond_1
    :try_start_2
    const-string v4, "savedSpeakerPhone"

    iget-object v5, p0, Lcom/weirdvoice/service/MediaManager;->audioManager:Landroid/media/AudioManager;

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
    .line 626
    const/16 v3, -0x270f

    invoke-direct {p0, p1, v3}, Lcom/weirdvoice/service/MediaManager;->broadcastVolumeWillBeUpdated(II)V

    .line 627
    iget-object v3, p0, Lcom/weirdvoice/service/MediaManager;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, p1, p2, p3}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 628
    const/4 v3, 0x2

    if-ne p1, v3, :cond_0

    .line 630
    iget-object v3, p0, Lcom/weirdvoice/service/MediaManager;->ringer:Lcom/weirdvoice/utils/Ringer;

    invoke-virtual {v3}, Lcom/weirdvoice/utils/Ringer;->updateRingerMode()V

    .line 633
    :cond_0
    iget-boolean v3, p0, Lcom/weirdvoice/service/MediaManager;->userWantBluetooth:Z

    invoke-static {v3}, Lcom/weirdvoice/utils/Compatibility;->getInCallStream(Z)I

    move-result v0

    .line 634
    .local v0, "inCallStream":I
    if-ne p1, v0, :cond_1

    .line 635
    iget-object v3, p0, Lcom/weirdvoice/service/MediaManager;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v0}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    .line 636
    .local v1, "maxLevel":I
    iget-object v3, p0, Lcom/weirdvoice/service/MediaManager;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, v1

    div-float/2addr v3, v4

    const/high16 v4, 0x41200000    # 10.0f

    mul-float v2, v3, v4

    .line 638
    .local v2, "modifiedLevel":F
    iget-object v3, p0, Lcom/weirdvoice/service/MediaManager;->service:Lcom/weirdvoice/service/SipService;

    invoke-virtual {v3}, Lcom/weirdvoice/service/SipService;->getPrefs()Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    move-result-object v3

    const-string v4, "snd_stream_level"

    invoke-virtual {v3, v4, v2}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->setPreferenceFloatValue(Ljava/lang/String;F)V

    .line 641
    .end local v1    # "maxLevel":I
    .end local v2    # "modifiedLevel":F
    :cond_1
    return-void
.end method

.method public broadcastMediaChanged()V
    .locals 3

    .prologue
    .line 602
    iget-object v0, p0, Lcom/weirdvoice/service/MediaManager;->service:Lcom/weirdvoice/service/SipService;

    iget-object v1, p0, Lcom/weirdvoice/service/MediaManager;->mediaStateChangedIntent:Landroid/content/Intent;

    const-string v2, "android.permission.USE_SIP"

    invoke-virtual {v0, v1, v2}, Lcom/weirdvoice/service/SipService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 603
    return-void
.end method

.method public doesUserWantBluetooth()Z
    .locals 1

    .prologue
    .line 649
    iget-boolean v0, p0, Lcom/weirdvoice/service/MediaManager;->userWantBluetooth:Z

    return v0
.end method

.method public doesUserWantMicrophoneMute()Z
    .locals 1

    .prologue
    .line 645
    iget-boolean v0, p0, Lcom/weirdvoice/service/MediaManager;->userWantMicrophoneMute:Z

    return v0
.end method

.method public getBestSampleRate(J)J
    .locals 3
    .param p1, "defaultRate"    # J

    .prologue
    .line 788
    const/16 v1, 0x11

    invoke-static {v1}, Lcom/weirdvoice/utils/Compatibility;->isCompatible(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 790
    iget-object v1, p0, Lcom/weirdvoice/service/MediaManager;->audioFocusWrapper:Lcom/weirdvoice/utils/audio/AudioFocusWrapper;

    const-string v2, "android.media.property.OUTPUT_SAMPLE_RATE"

    invoke-virtual {v1, v2}, Lcom/weirdvoice/utils/audio/AudioFocusWrapper;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 791
    .local v0, "sampleRateString":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 794
    .end local v0    # "sampleRateString":Ljava/lang/String;
    .end local p1    # "defaultRate":J
    :cond_0
    :goto_0
    return-wide p1

    .line 792
    .restart local v0    # "sampleRateString":Ljava/lang/String;
    .restart local p1    # "defaultRate":J
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-long p1, v1

    goto :goto_0
.end method

.method public getMediaState()Lcom/weirdvoice/api/MediaState;
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 546
    new-instance v0, Lcom/weirdvoice/api/MediaState;

    invoke-direct {v0}, Lcom/weirdvoice/api/MediaState;-><init>()V

    .line 549
    .local v0, "mediaState":Lcom/weirdvoice/api/MediaState;
    iget-boolean v3, p0, Lcom/weirdvoice/service/MediaManager;->userWantMicrophoneMute:Z

    iput-boolean v3, v0, Lcom/weirdvoice/api/MediaState;->isMicrophoneMute:Z

    .line 550
    iput-boolean v1, v0, Lcom/weirdvoice/api/MediaState;->canMicrophoneMute:Z

    .line 553
    iget-boolean v3, p0, Lcom/weirdvoice/service/MediaManager;->userWantSpeaker:Z

    iput-boolean v3, v0, Lcom/weirdvoice/api/MediaState;->isSpeakerphoneOn:Z

    .line 554
    iget-boolean v3, v0, Lcom/weirdvoice/api/MediaState;->isBluetoothScoOn:Z

    if-nez v3, :cond_0

    :goto_0
    iput-boolean v1, v0, Lcom/weirdvoice/api/MediaState;->canSpeakerphoneOn:Z

    .line 558
    iget-object v1, p0, Lcom/weirdvoice/service/MediaManager;->bluetoothWrapper:Lcom/weirdvoice/utils/bluetooth/BluetoothWrapper;

    if-eqz v1, :cond_1

    .line 559
    iget-object v1, p0, Lcom/weirdvoice/service/MediaManager;->bluetoothWrapper:Lcom/weirdvoice/utils/bluetooth/BluetoothWrapper;

    invoke-virtual {v1}, Lcom/weirdvoice/utils/bluetooth/BluetoothWrapper;->isBluetoothOn()Z

    move-result v1

    iput-boolean v1, v0, Lcom/weirdvoice/api/MediaState;->isBluetoothScoOn:Z

    .line 560
    iget-object v1, p0, Lcom/weirdvoice/service/MediaManager;->bluetoothWrapper:Lcom/weirdvoice/utils/bluetooth/BluetoothWrapper;

    invoke-virtual {v1}, Lcom/weirdvoice/utils/bluetooth/BluetoothWrapper;->canBluetooth()Z

    move-result v1

    iput-boolean v1, v0, Lcom/weirdvoice/api/MediaState;->canBluetoothSco:Z

    .line 566
    :goto_1
    return-object v0

    :cond_0
    move v1, v2

    .line 554
    goto :goto_0

    .line 562
    :cond_1
    iput-boolean v2, v0, Lcom/weirdvoice/api/MediaState;->isBluetoothScoOn:Z

    .line 563
    iput-boolean v2, v0, Lcom/weirdvoice/api/MediaState;->canBluetoothSco:Z

    goto :goto_1
.end method

.method public onBluetoothStateChanged(I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    .line 778
    invoke-virtual {p0}, Lcom/weirdvoice/service/MediaManager;->setSoftwareVolume()V

    .line 779
    invoke-virtual {p0}, Lcom/weirdvoice/service/MediaManager;->broadcastMediaChanged()V

    .line 780
    return-void
.end method

.method public playInCallTone(I)V
    .locals 1
    .param p1, "toneId"    # I

    .prologue
    .line 665
    new-instance v0, Lcom/weirdvoice/service/MediaManager$InCallTonePlayer;

    invoke-direct {v0, p0, p1}, Lcom/weirdvoice/service/MediaManager$InCallTonePlayer;-><init>(Lcom/weirdvoice/service/MediaManager;I)V

    invoke-virtual {v0}, Lcom/weirdvoice/service/MediaManager$InCallTonePlayer;->start()V

    .line 666
    return-void
.end method

.method public resetSettings()V
    .locals 2

    .prologue
    .line 499
    iget-object v0, p0, Lcom/weirdvoice/service/MediaManager;->service:Lcom/weirdvoice/service/SipService;

    invoke-virtual {v0}, Lcom/weirdvoice/service/SipService;->getPrefs()Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    move-result-object v0

    const-string v1, "auto_connect_bluetooth"

    invoke-virtual {v0, v1}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/weirdvoice/service/MediaManager;->userWantBluetooth:Z

    .line 500
    iget-object v0, p0, Lcom/weirdvoice/service/MediaManager;->service:Lcom/weirdvoice/service/SipService;

    invoke-virtual {v0}, Lcom/weirdvoice/service/SipService;->getPrefs()Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    move-result-object v0

    const-string v1, "auto_connect_speaker"

    invoke-virtual {v0, v1}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/weirdvoice/service/MediaManager;->userWantSpeaker:Z

    .line 501
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/weirdvoice/service/MediaManager;->userWantMicrophoneMute:Z

    .line 502
    return-void
.end method

.method public setAudioInCall(Z)V
    .locals 1
    .param p1, "beforeInit"    # Z

    .prologue
    .line 174
    if-eqz p1, :cond_0

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/weirdvoice/service/MediaManager;->startBeforeInit:Z

    if-eqz v0, :cond_1

    .line 175
    :cond_0
    invoke-direct {p0}, Lcom/weirdvoice/service/MediaManager;->actualSetAudioInCall()V

    .line 177
    :cond_1
    return-void
.end method

.method public setBluetoothOn(Z)V
    .locals 3
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/weirdvoice/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 530
    const-string v0, "MediaManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Set BT "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    iget-object v0, p0, Lcom/weirdvoice/service/MediaManager;->service:Lcom/weirdvoice/service/SipService;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/weirdvoice/service/MediaManager;->restartAudioWhenRoutingChange:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/weirdvoice/service/MediaManager;->ringer:Lcom/weirdvoice/utils/Ringer;

    invoke-virtual {v0}, Lcom/weirdvoice/utils/Ringer;->isRinging()Z

    move-result v0

    if-nez v0, :cond_0

    .line 532
    iget-object v0, p0, Lcom/weirdvoice/service/MediaManager;->service:Lcom/weirdvoice/service/SipService;

    invoke-virtual {v0}, Lcom/weirdvoice/service/SipService;->setNoSnd()V

    .line 533
    iput-boolean p1, p0, Lcom/weirdvoice/service/MediaManager;->userWantBluetooth:Z

    .line 534
    iget-object v0, p0, Lcom/weirdvoice/service/MediaManager;->service:Lcom/weirdvoice/service/SipService;

    invoke-virtual {v0}, Lcom/weirdvoice/service/SipService;->setSnd()V

    .line 539
    :goto_0
    invoke-virtual {p0}, Lcom/weirdvoice/service/MediaManager;->broadcastMediaChanged()V

    .line 540
    return-void

    .line 536
    :cond_0
    iput-boolean p1, p0, Lcom/weirdvoice/service/MediaManager;->userWantBluetooth:Z

    .line 537
    iget-object v0, p0, Lcom/weirdvoice/service/MediaManager;->bluetoothWrapper:Lcom/weirdvoice/utils/bluetooth/BluetoothWrapper;

    invoke-virtual {v0, p1}, Lcom/weirdvoice/utils/bluetooth/BluetoothWrapper;->setBluetoothOn(Z)V

    goto :goto_0
.end method

.method public setMicrophoneMute(Z)V
    .locals 1
    .param p1, "on"    # Z

    .prologue
    .line 510
    iget-boolean v0, p0, Lcom/weirdvoice/service/MediaManager;->userWantMicrophoneMute:Z

    if-eq p1, v0, :cond_0

    .line 511
    iput-boolean p1, p0, Lcom/weirdvoice/service/MediaManager;->userWantMicrophoneMute:Z

    .line 512
    invoke-virtual {p0}, Lcom/weirdvoice/service/MediaManager;->setSoftwareVolume()V

    .line 513
    invoke-virtual {p0}, Lcom/weirdvoice/service/MediaManager;->broadcastMediaChanged()V

    .line 515
    :cond_0
    return-void
.end method

.method public setSoftwareVolume()V
    .locals 7

    .prologue
    .line 574
    iget-object v5, p0, Lcom/weirdvoice/service/MediaManager;->service:Lcom/weirdvoice/service/SipService;

    if-eqz v5, :cond_0

    .line 575
    iget-object v5, p0, Lcom/weirdvoice/service/MediaManager;->bluetoothWrapper:Lcom/weirdvoice/utils/bluetooth/BluetoothWrapper;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/weirdvoice/service/MediaManager;->bluetoothWrapper:Lcom/weirdvoice/utils/bluetooth/BluetoothWrapper;

    invoke-virtual {v5}, Lcom/weirdvoice/utils/bluetooth/BluetoothWrapper;->isBluetoothOn()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, 0x1

    .line 577
    .local v4, "useBT":Z
    :goto_0
    if-eqz v4, :cond_2

    const-string v3, "snd_bt_speaker_level"

    .line 578
    .local v3, "speaker_key":Ljava/lang/String;
    :goto_1
    if-eqz v4, :cond_3

    const-string v1, "snd_bt_mic_level"

    .line 580
    .local v1, "mic_key":Ljava/lang/String;
    :goto_2
    iget-object v5, p0, Lcom/weirdvoice/service/MediaManager;->service:Lcom/weirdvoice/service/SipService;

    invoke-virtual {v5}, Lcom/weirdvoice/service/SipService;->getPrefs()Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getPreferenceFloatValue(Ljava/lang/String;)F

    move-result v2

    .line 581
    .local v2, "speakVolume":F
    iget-boolean v5, p0, Lcom/weirdvoice/service/MediaManager;->userWantMicrophoneMute:Z

    if-eqz v5, :cond_4

    const/4 v0, 0x0

    .line 583
    .local v0, "micVolume":F
    :goto_3
    iget-object v5, p0, Lcom/weirdvoice/service/MediaManager;->service:Lcom/weirdvoice/service/SipService;

    invoke-virtual {v5}, Lcom/weirdvoice/service/SipService;->getExecutor()Lcom/weirdvoice/service/SipService$SipServiceExecutor;

    move-result-object v5

    new-instance v6, Lcom/weirdvoice/service/MediaManager$1;

    invoke-direct {v6, p0, v2, v0, v4}, Lcom/weirdvoice/service/MediaManager$1;-><init>(Lcom/weirdvoice/service/MediaManager;FFZ)V

    invoke-virtual {v5, v6}, Lcom/weirdvoice/service/SipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 597
    .end local v0    # "micVolume":F
    .end local v1    # "mic_key":Ljava/lang/String;
    .end local v2    # "speakVolume":F
    .end local v3    # "speaker_key":Ljava/lang/String;
    .end local v4    # "useBT":Z
    :cond_0
    return-void

    .line 575
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 577
    .restart local v4    # "useBT":Z
    :cond_2
    const-string v3, "snd_speaker_level"

    goto :goto_1

    .line 578
    .restart local v3    # "speaker_key":Ljava/lang/String;
    :cond_3
    const-string v1, "snd_mic_level"

    goto :goto_2

    .line 581
    .restart local v1    # "mic_key":Ljava/lang/String;
    .restart local v2    # "speakVolume":F
    :cond_4
    iget-object v5, p0, Lcom/weirdvoice/service/MediaManager;->service:Lcom/weirdvoice/service/SipService;

    invoke-virtual {v5}, Lcom/weirdvoice/service/SipService;->getPrefs()Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getPreferenceFloatValue(Ljava/lang/String;)F

    move-result v0

    goto :goto_3
.end method

.method public setSpeakerphoneOn(Z)V
    .locals 1
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/weirdvoice/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 518
    iget-object v0, p0, Lcom/weirdvoice/service/MediaManager;->service:Lcom/weirdvoice/service/SipService;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/weirdvoice/service/MediaManager;->restartAudioWhenRoutingChange:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/weirdvoice/service/MediaManager;->ringer:Lcom/weirdvoice/utils/Ringer;

    invoke-virtual {v0}, Lcom/weirdvoice/utils/Ringer;->isRinging()Z

    move-result v0

    if-nez v0, :cond_0

    .line 519
    iget-object v0, p0, Lcom/weirdvoice/service/MediaManager;->service:Lcom/weirdvoice/service/SipService;

    invoke-virtual {v0}, Lcom/weirdvoice/service/SipService;->setNoSnd()V

    .line 520
    iput-boolean p1, p0, Lcom/weirdvoice/service/MediaManager;->userWantSpeaker:Z

    .line 521
    iget-object v0, p0, Lcom/weirdvoice/service/MediaManager;->service:Lcom/weirdvoice/service/SipService;

    invoke-virtual {v0}, Lcom/weirdvoice/service/SipService;->setSnd()V

    .line 526
    :goto_0
    invoke-virtual {p0}, Lcom/weirdvoice/service/MediaManager;->broadcastMediaChanged()V

    .line 527
    return-void

    .line 523
    :cond_0
    iput-boolean p1, p0, Lcom/weirdvoice/service/MediaManager;->userWantSpeaker:Z

    .line 524
    iget-object v0, p0, Lcom/weirdvoice/service/MediaManager;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    goto :goto_0
.end method

.method public setStreamVolume(III)V
    .locals 1
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "flags"    # I

    .prologue
    .line 621
    invoke-direct {p0, p1, p2}, Lcom/weirdvoice/service/MediaManager;->broadcastVolumeWillBeUpdated(II)V

    .line 622
    iget-object v0, p0, Lcom/weirdvoice/service/MediaManager;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 623
    return-void
.end method

.method public declared-synchronized startRing(Ljava/lang/String;)V
    .locals 2
    .param p1, "remoteContact"    # Ljava/lang/String;

    .prologue
    .line 470
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/weirdvoice/service/MediaManager;->saveAudioState()V

    .line 472
    iget-object v0, p0, Lcom/weirdvoice/service/MediaManager;->ringer:Lcom/weirdvoice/utils/Ringer;

    invoke-virtual {v0}, Lcom/weirdvoice/utils/Ringer;->isRinging()Z

    move-result v0

    if-nez v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/weirdvoice/service/MediaManager;->ringer:Lcom/weirdvoice/utils/Ringer;

    iget-object v1, p0, Lcom/weirdvoice/service/MediaManager;->service:Lcom/weirdvoice/service/SipService;

    invoke-virtual {v1}, Lcom/weirdvoice/service/SipService;->getPrefs()Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getRingtone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/weirdvoice/utils/Ringer;->ring(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 478
    :goto_0
    monitor-exit p0

    return-void

    .line 475
    :cond_0
    :try_start_1
    const-string v0, "MediaManager"

    const-string v1, "Already ringing ...."

    invoke-static {v0, v1}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 470
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public startService()V
    .locals 3

    .prologue
    .line 117
    iget-object v0, p0, Lcom/weirdvoice/service/MediaManager;->bluetoothWrapper:Lcom/weirdvoice/utils/bluetooth/BluetoothWrapper;

    if-nez v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/weirdvoice/service/MediaManager;->service:Lcom/weirdvoice/service/SipService;

    invoke-static {v0}, Lcom/weirdvoice/utils/bluetooth/BluetoothWrapper;->getInstance(Landroid/content/Context;)Lcom/weirdvoice/utils/bluetooth/BluetoothWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/weirdvoice/service/MediaManager;->bluetoothWrapper:Lcom/weirdvoice/utils/bluetooth/BluetoothWrapper;

    .line 119
    iget-object v0, p0, Lcom/weirdvoice/service/MediaManager;->bluetoothWrapper:Lcom/weirdvoice/utils/bluetooth/BluetoothWrapper;

    invoke-virtual {v0, p0}, Lcom/weirdvoice/utils/bluetooth/BluetoothWrapper;->setBluetoothChangeListener(Lcom/weirdvoice/utils/bluetooth/BluetoothWrapper$BluetoothChangeListener;)V

    .line 120
    iget-object v0, p0, Lcom/weirdvoice/service/MediaManager;->bluetoothWrapper:Lcom/weirdvoice/utils/bluetooth/BluetoothWrapper;

    invoke-virtual {v0}, Lcom/weirdvoice/utils/bluetooth/BluetoothWrapper;->register()V

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/weirdvoice/service/MediaManager;->audioFocusWrapper:Lcom/weirdvoice/utils/audio/AudioFocusWrapper;

    if-nez v0, :cond_1

    .line 123
    invoke-static {}, Lcom/weirdvoice/utils/audio/AudioFocusWrapper;->getInstance()Lcom/weirdvoice/utils/audio/AudioFocusWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/weirdvoice/service/MediaManager;->audioFocusWrapper:Lcom/weirdvoice/utils/audio/AudioFocusWrapper;

    .line 124
    iget-object v0, p0, Lcom/weirdvoice/service/MediaManager;->audioFocusWrapper:Lcom/weirdvoice/utils/audio/AudioFocusWrapper;

    iget-object v1, p0, Lcom/weirdvoice/service/MediaManager;->service:Lcom/weirdvoice/service/SipService;

    iget-object v2, p0, Lcom/weirdvoice/service/MediaManager;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1, v2}, Lcom/weirdvoice/utils/audio/AudioFocusWrapper;->init(Lcom/weirdvoice/service/SipService;Landroid/media/AudioManager;)V

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/weirdvoice/service/MediaManager;->service:Lcom/weirdvoice/service/SipService;

    invoke-virtual {v0}, Lcom/weirdvoice/service/SipService;->getPrefs()Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getInCallMode()I

    move-result v0

    sput v0, Lcom/weirdvoice/service/MediaManager;->modeSipInCall:I

    .line 127
    iget-object v0, p0, Lcom/weirdvoice/service/MediaManager;->service:Lcom/weirdvoice/service/SipService;

    invoke-virtual {v0}, Lcom/weirdvoice/service/SipService;->getPrefs()Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    move-result-object v0

    const-string v1, "use_sgs_call_hack"

    invoke-virtual {v0, v1}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/weirdvoice/service/MediaManager;->useSgsWrkAround:Z

    .line 128
    iget-object v0, p0, Lcom/weirdvoice/service/MediaManager;->service:Lcom/weirdvoice/service/SipService;

    invoke-virtual {v0}, Lcom/weirdvoice/service/SipService;->getPrefs()Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    move-result-object v0

    const-string v1, "use_webrtc_hack"

    invoke-virtual {v0, v1}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/weirdvoice/service/MediaManager;->useWebRTCImpl:Z

    .line 129
    iget-object v0, p0, Lcom/weirdvoice/service/MediaManager;->service:Lcom/weirdvoice/service/SipService;

    invoke-virtual {v0}, Lcom/weirdvoice/service/SipService;->getPrefs()Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    move-result-object v0

    const-string v1, "do_focus_audio"

    invoke-virtual {v0, v1}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/weirdvoice/service/MediaManager;->doFocusAudio:Z

    .line 130
    iget-object v0, p0, Lcom/weirdvoice/service/MediaManager;->service:Lcom/weirdvoice/service/SipService;

    invoke-virtual {v0}, Lcom/weirdvoice/service/SipService;->getPrefs()Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    move-result-object v0

    const-string v1, "auto_connect_bluetooth"

    invoke-virtual {v0, v1}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/weirdvoice/service/MediaManager;->userWantBluetooth:Z

    .line 131
    iget-object v0, p0, Lcom/weirdvoice/service/MediaManager;->service:Lcom/weirdvoice/service/SipService;

    invoke-virtual {v0}, Lcom/weirdvoice/service/SipService;->getPrefs()Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    move-result-object v0

    const-string v1, "auto_connect_speaker"

    invoke-virtual {v0, v1}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/weirdvoice/service/MediaManager;->userWantSpeaker:Z

    .line 132
    iget-object v0, p0, Lcom/weirdvoice/service/MediaManager;->service:Lcom/weirdvoice/service/SipService;

    invoke-virtual {v0}, Lcom/weirdvoice/service/SipService;->getPrefs()Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    move-result-object v0

    const-string v1, "restart_aud_on_routing_change"

    invoke-virtual {v0, v1}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/weirdvoice/service/MediaManager;->restartAudioWhenRoutingChange:Z

    .line 133
    iget-object v0, p0, Lcom/weirdvoice/service/MediaManager;->service:Lcom/weirdvoice/service/SipService;

    invoke-virtual {v0}, Lcom/weirdvoice/service/SipService;->getPrefs()Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    move-result-object v0

    const-string v1, "setup_audio_before_init"

    invoke-virtual {v0, v1}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/weirdvoice/service/MediaManager;->startBeforeInit:Z

    .line 134
    return-void
.end method

.method public declared-synchronized stopRing()V
    .locals 1

    .prologue
    .line 485
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/weirdvoice/service/MediaManager;->ringer:Lcom/weirdvoice/utils/Ringer;

    invoke-virtual {v0}, Lcom/weirdvoice/utils/Ringer;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Lcom/weirdvoice/service/MediaManager;->ringer:Lcom/weirdvoice/utils/Ringer;

    invoke-virtual {v0}, Lcom/weirdvoice/utils/Ringer;->stopRing()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 488
    :cond_0
    monitor-exit p0

    return-void

    .line 485
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public stopRingAndUnfocus()V
    .locals 1

    .prologue
    .line 494
    invoke-virtual {p0}, Lcom/weirdvoice/service/MediaManager;->stopRing()V

    .line 495
    iget-object v0, p0, Lcom/weirdvoice/service/MediaManager;->audioFocusWrapper:Lcom/weirdvoice/utils/audio/AudioFocusWrapper;

    invoke-virtual {v0}, Lcom/weirdvoice/utils/audio/AudioFocusWrapper;->unFocus()V

    .line 496
    return-void
.end method

.method public stopService()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 137
    const-string v0, "MediaManager"

    const-string v1, "Remove media manager...."

    invoke-static {v0, v1}, Lcom/weirdvoice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/weirdvoice/service/MediaManager;->bluetoothWrapper:Lcom/weirdvoice/utils/bluetooth/BluetoothWrapper;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/weirdvoice/service/MediaManager;->bluetoothWrapper:Lcom/weirdvoice/utils/bluetooth/BluetoothWrapper;

    invoke-virtual {v0}, Lcom/weirdvoice/utils/bluetooth/BluetoothWrapper;->unregister()V

    .line 140
    iget-object v0, p0, Lcom/weirdvoice/service/MediaManager;->bluetoothWrapper:Lcom/weirdvoice/utils/bluetooth/BluetoothWrapper;

    invoke-virtual {v0, v2}, Lcom/weirdvoice/utils/bluetooth/BluetoothWrapper;->setBluetoothChangeListener(Lcom/weirdvoice/utils/bluetooth/BluetoothWrapper$BluetoothChangeListener;)V

    .line 141
    iput-object v2, p0, Lcom/weirdvoice/service/MediaManager;->bluetoothWrapper:Lcom/weirdvoice/utils/bluetooth/BluetoothWrapper;

    .line 143
    :cond_0
    return-void
.end method

.method public toggleMute()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/weirdvoice/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 506
    iget-boolean v0, p0, Lcom/weirdvoice/service/MediaManager;->userWantMicrophoneMute:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/weirdvoice/service/MediaManager;->setMicrophoneMute(Z)V

    .line 507
    return-void

    .line 506
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public unsetAudioInCall()V
    .locals 0

    .prologue
    .line 180
    invoke-direct {p0}, Lcom/weirdvoice/service/MediaManager;->actualUnsetAudioInCall()V

    .line 181
    return-void
.end method

.method public validateAudioClockRate(I)I
    .locals 1
    .param p1, "clockRate"    # I

    .prologue
    .line 165
    iget-object v0, p0, Lcom/weirdvoice/service/MediaManager;->bluetoothWrapper:Lcom/weirdvoice/utils/bluetooth/BluetoothWrapper;

    if-eqz v0, :cond_0

    const/16 v0, 0x1f40

    if-eq p1, v0, :cond_0

    .line 166
    iget-boolean v0, p0, Lcom/weirdvoice/service/MediaManager;->userWantBluetooth:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/weirdvoice/service/MediaManager;->bluetoothWrapper:Lcom/weirdvoice/utils/bluetooth/BluetoothWrapper;

    invoke-virtual {v0}, Lcom/weirdvoice/utils/bluetooth/BluetoothWrapper;->canBluetooth()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    const/4 v0, -0x1

    .line 170
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
