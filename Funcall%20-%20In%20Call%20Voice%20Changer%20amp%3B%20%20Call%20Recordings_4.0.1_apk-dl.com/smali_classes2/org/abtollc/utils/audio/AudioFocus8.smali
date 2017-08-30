.class public Lorg/abtollc/utils/audio/AudioFocus8;
.super Lorg/abtollc/utils/audio/AudioFocusWrapper;
.source "AudioFocus8.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x8
.end annotation


# static fields
.field protected static final THIS_FILE:Ljava/lang/String; = "AudioFocus 8"


# instance fields
.field private audioManager:Landroid/media/AudioManager;

.field private focusChangedListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private headsetButtonReceiverName:Landroid/content/ComponentName;

.field private isFocused:Z

.field private service:Lorg/abtollc/service/ABTOSipService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lorg/abtollc/utils/audio/AudioFocusWrapper;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/abtollc/utils/audio/AudioFocus8;->isFocused:Z

    .line 25
    new-instance v0, Lorg/abtollc/utils/audio/AudioFocus8$1;

    invoke-direct {v0, p0}, Lorg/abtollc/utils/audio/AudioFocus8$1;-><init>(Lorg/abtollc/utils/audio/AudioFocus8;)V

    iput-object v0, p0, Lorg/abtollc/utils/audio/AudioFocus8;->focusChangedListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-void
.end method


# virtual methods
.method public focus()V
    .locals 4

    .prologue
    .line 42
    const-string v0, "AudioFocus 8"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Focus again "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lorg/abtollc/utils/audio/AudioFocus8;->isFocused:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-boolean v0, p0, Lorg/abtollc/utils/audio/AudioFocus8;->isFocused:Z

    if-nez v0, :cond_0

    .line 44
    iget-object v0, p0, Lorg/abtollc/utils/audio/AudioFocus8;->service:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v0}, Lorg/abtollc/service/ABTOSipService;->getUAStateReceiver()Lorg/abtollc/voip/UAStateReceiver;

    move-result-object v0

    invoke-static {v0}, Lorg/abtollc/service/HeadsetButtonReceiver;->setService(Lorg/abtollc/voip/UAStateReceiver;)V

    .line 45
    iget-object v0, p0, Lorg/abtollc/utils/audio/AudioFocus8;->audioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lorg/abtollc/utils/audio/AudioFocus8;->headsetButtonReceiverName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 46
    iget-object v0, p0, Lorg/abtollc/utils/audio/AudioFocus8;->audioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lorg/abtollc/utils/audio/AudioFocus8;->focusChangedListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 47
    invoke-static {}, Lorg/abtollc/utils/Compatibility;->getInCallStream()I

    move-result v2

    const/4 v3, 0x2

    .line 46
    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/abtollc/utils/audio/AudioFocus8;->isFocused:Z

    .line 50
    :cond_0
    return-void
.end method

.method public init(Lorg/abtollc/service/ABTOSipService;Landroid/media/AudioManager;)V
    .locals 3
    .param p1, "aService"    # Lorg/abtollc/service/ABTOSipService;
    .param p2, "manager"    # Landroid/media/AudioManager;

    .prologue
    .line 34
    iput-object p1, p0, Lorg/abtollc/utils/audio/AudioFocus8;->service:Lorg/abtollc/service/ABTOSipService;

    .line 35
    iput-object p2, p0, Lorg/abtollc/utils/audio/AudioFocus8;->audioManager:Landroid/media/AudioManager;

    .line 36
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lorg/abtollc/utils/audio/AudioFocus8;->service:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v1}, Lorg/abtollc/service/ABTOSipService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lorg/abtollc/service/HeadsetButtonReceiver;

    .line 37
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/abtollc/utils/audio/AudioFocus8;->headsetButtonReceiverName:Landroid/content/ComponentName;

    .line 38
    return-void
.end method

.method public unFocus()V
    .locals 2

    .prologue
    .line 53
    iget-boolean v0, p0, Lorg/abtollc/utils/audio/AudioFocus8;->isFocused:Z

    if-eqz v0, :cond_0

    .line 54
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/abtollc/service/HeadsetButtonReceiver;->setService(Lorg/abtollc/voip/UAStateReceiver;)V

    .line 55
    iget-object v0, p0, Lorg/abtollc/utils/audio/AudioFocus8;->audioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lorg/abtollc/utils/audio/AudioFocus8;->headsetButtonReceiverName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 57
    iget-object v0, p0, Lorg/abtollc/utils/audio/AudioFocus8;->audioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lorg/abtollc/utils/audio/AudioFocus8;->focusChangedListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/abtollc/utils/audio/AudioFocus8;->isFocused:Z

    .line 60
    :cond_0
    return-void
.end method
