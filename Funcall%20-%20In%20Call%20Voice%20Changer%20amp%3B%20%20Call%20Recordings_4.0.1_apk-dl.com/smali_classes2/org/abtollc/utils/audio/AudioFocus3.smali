.class public Lorg/abtollc/utils/audio/AudioFocus3;
.super Lorg/abtollc/utils/audio/AudioFocusWrapper;
.source "AudioFocus3.java"


# static fields
.field static final PAUSE_ACTION:Ljava/lang/String; = "com.android.music.musicservicecommand.pause"

.field private static final THIS_FILE:Ljava/lang/String; = "AudioFocus3"

.field static final TOGGLEPAUSE_ACTION:Ljava/lang/String; = "com.android.music.musicservicecommand.togglepause"


# instance fields
.field private audioManager:Landroid/media/AudioManager;

.field private headsetButtonReceiver:Lorg/abtollc/service/HeadsetButtonReceiver;

.field private isFocused:Z

.field private isMusicActive:Z

.field private service:Lorg/abtollc/service/ABTOSipService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 12
    invoke-direct {p0}, Lorg/abtollc/utils/audio/AudioFocusWrapper;-><init>()V

    .line 22
    iput-boolean v0, p0, Lorg/abtollc/utils/audio/AudioFocus3;->isMusicActive:Z

    .line 23
    iput-boolean v0, p0, Lorg/abtollc/utils/audio/AudioFocus3;->isFocused:Z

    return-void
.end method

.method private pauseMusic()V
    .locals 3

    .prologue
    .line 49
    iget-object v0, p0, Lorg/abtollc/utils/audio/AudioFocus3;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v0

    iput-boolean v0, p0, Lorg/abtollc/utils/audio/AudioFocus3;->isMusicActive:Z

    .line 50
    iget-boolean v0, p0, Lorg/abtollc/utils/audio/AudioFocus3;->isMusicActive:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/abtollc/utils/audio/AudioFocus3;->service:Lorg/abtollc/service/ABTOSipService;

    .line 51
    invoke-virtual {v0}, Lorg/abtollc/service/ABTOSipService;->getPrefs()Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v0

    const-string v1, "integrate_with_native_music"

    invoke-virtual {v0, v1}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lorg/abtollc/utils/audio/AudioFocus3;->service:Lorg/abtollc/service/ABTOSipService;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.music.musicservicecommand.pause"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/abtollc/service/ABTOSipService;->sendBroadcast(Landroid/content/Intent;)V

    .line 54
    :cond_0
    return-void
.end method

.method private registerHeadsetButton()V
    .locals 3

    .prologue
    .line 64
    const-string v1, "AudioFocus3"

    const-string v2, "Register media button"

    invoke-static {v1, v2}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 66
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const/16 v1, 0x44c

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 67
    iget-object v1, p0, Lorg/abtollc/utils/audio/AudioFocus3;->headsetButtonReceiver:Lorg/abtollc/service/HeadsetButtonReceiver;

    if-nez v1, :cond_0

    .line 68
    new-instance v1, Lorg/abtollc/service/HeadsetButtonReceiver;

    invoke-direct {v1}, Lorg/abtollc/service/HeadsetButtonReceiver;-><init>()V

    iput-object v1, p0, Lorg/abtollc/utils/audio/AudioFocus3;->headsetButtonReceiver:Lorg/abtollc/service/HeadsetButtonReceiver;

    .line 69
    iget-object v1, p0, Lorg/abtollc/utils/audio/AudioFocus3;->service:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v1}, Lorg/abtollc/service/ABTOSipService;->getUAStateReceiver()Lorg/abtollc/voip/UAStateReceiver;

    move-result-object v1

    invoke-static {v1}, Lorg/abtollc/service/HeadsetButtonReceiver;->setService(Lorg/abtollc/voip/UAStateReceiver;)V

    .line 71
    :cond_0
    iget-object v1, p0, Lorg/abtollc/utils/audio/AudioFocus3;->service:Lorg/abtollc/service/ABTOSipService;

    iget-object v2, p0, Lorg/abtollc/utils/audio/AudioFocus3;->headsetButtonReceiver:Lorg/abtollc/service/HeadsetButtonReceiver;

    invoke-virtual {v1, v2, v0}, Lorg/abtollc/service/ABTOSipService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 72
    return-void
.end method

.method private restartMusic()V
    .locals 3

    .prologue
    .line 57
    iget-boolean v0, p0, Lorg/abtollc/utils/audio/AudioFocus3;->isMusicActive:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/abtollc/utils/audio/AudioFocus3;->service:Lorg/abtollc/service/ABTOSipService;

    .line 58
    invoke-virtual {v0}, Lorg/abtollc/service/ABTOSipService;->getPrefs()Lorg/abtollc/utils/PreferencesProviderWrapper;

    move-result-object v0

    const-string v1, "integrate_with_native_music"

    invoke-virtual {v0, v1}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lorg/abtollc/utils/audio/AudioFocus3;->service:Lorg/abtollc/service/ABTOSipService;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.music.musicservicecommand.togglepause"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/abtollc/service/ABTOSipService;->sendBroadcast(Landroid/content/Intent;)V

    .line 61
    :cond_0
    return-void
.end method

.method private unregisterHeadsetButton()V
    .locals 2

    .prologue
    .line 76
    :try_start_0
    iget-object v0, p0, Lorg/abtollc/utils/audio/AudioFocus3;->service:Lorg/abtollc/service/ABTOSipService;

    iget-object v1, p0, Lorg/abtollc/utils/audio/AudioFocus3;->headsetButtonReceiver:Lorg/abtollc/service/HeadsetButtonReceiver;

    invoke-virtual {v0, v1}, Lorg/abtollc/service/ABTOSipService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 77
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/abtollc/service/HeadsetButtonReceiver;->setService(Lorg/abtollc/voip/UAStateReceiver;)V

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/abtollc/utils/audio/AudioFocus3;->headsetButtonReceiver:Lorg/abtollc/service/HeadsetButtonReceiver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :goto_0
    return-void

    .line 79
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public focus()V
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lorg/abtollc/utils/audio/AudioFocus3;->isFocused:Z

    if-nez v0, :cond_0

    .line 33
    invoke-direct {p0}, Lorg/abtollc/utils/audio/AudioFocus3;->pauseMusic()V

    .line 34
    invoke-direct {p0}, Lorg/abtollc/utils/audio/AudioFocus3;->registerHeadsetButton()V

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/abtollc/utils/audio/AudioFocus3;->isFocused:Z

    .line 37
    :cond_0
    return-void
.end method

.method public init(Lorg/abtollc/service/ABTOSipService;Landroid/media/AudioManager;)V
    .locals 0
    .param p1, "aService"    # Lorg/abtollc/service/ABTOSipService;
    .param p2, "manager"    # Landroid/media/AudioManager;

    .prologue
    .line 27
    iput-object p1, p0, Lorg/abtollc/utils/audio/AudioFocus3;->service:Lorg/abtollc/service/ABTOSipService;

    .line 28
    iput-object p2, p0, Lorg/abtollc/utils/audio/AudioFocus3;->audioManager:Landroid/media/AudioManager;

    .line 29
    return-void
.end method

.method public unFocus()V
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lorg/abtollc/utils/audio/AudioFocus3;->isFocused:Z

    if-eqz v0, :cond_0

    .line 41
    invoke-direct {p0}, Lorg/abtollc/utils/audio/AudioFocus3;->restartMusic()V

    .line 42
    invoke-direct {p0}, Lorg/abtollc/utils/audio/AudioFocus3;->unregisterHeadsetButton()V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/abtollc/utils/audio/AudioFocus3;->isFocused:Z

    .line 45
    :cond_0
    return-void
.end method
