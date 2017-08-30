.class public Lcom/weirdvoice/ui/incall/InCallMediaControl;
.super Landroid/app/Activity;
.source "InCallMediaControl.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/weirdvoice/ui/incall/InCallMediaControl$LockTimerTask;,
        Lcom/weirdvoice/ui/incall/InCallMediaControl$MonitorThread;,
        Lcom/weirdvoice/ui/incall/InCallMediaControl$UpdateConfLevelRunnable;
    }
.end annotation


# static fields
.field private static final AUTO_QUIT_DELAY:I = 0xbb8

.field protected static final THIS_FILE:Ljava/lang/String; = "inCallMediaCtrl"


# instance fields
.field private callStateReceiver:Landroid/content/BroadcastReceiver;

.field private echoCancellation:Landroid/widget/CheckBox;

.field private isAutoClose:Z

.field private max:D

.field private microAmplification:Landroid/widget/SeekBar;

.field private monitorThread:Lcom/weirdvoice/ui/incall/InCallMediaControl$MonitorThread;

.field private okBar:Landroid/widget/LinearLayout;

.field private quitTimer:Ljava/util/Timer;

.field private rxProgress:Landroid/widget/ProgressBar;

.field private saveButton:Landroid/widget/Button;

.field private sipConnection:Landroid/content/ServiceConnection;

.field private sipService:Lcom/weirdvoice/api/ISipService;

.field private speakerAmplification:Landroid/widget/SeekBar;

.field private subdivision:D

.field private txProgress:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/weirdvoice/ui/incall/InCallMediaControl;->isAutoClose:Z

    .line 157
    new-instance v0, Lcom/weirdvoice/ui/incall/InCallMediaControl$1;

    invoke-direct {v0, p0}, Lcom/weirdvoice/ui/incall/InCallMediaControl$1;-><init>(Lcom/weirdvoice/ui/incall/InCallMediaControl;)V

    iput-object v0, p0, Lcom/weirdvoice/ui/incall/InCallMediaControl;->callStateReceiver:Landroid/content/BroadcastReceiver;

    .line 262
    new-instance v0, Lcom/weirdvoice/ui/incall/InCallMediaControl$2;

    invoke-direct {v0, p0}, Lcom/weirdvoice/ui/incall/InCallMediaControl$2;-><init>(Lcom/weirdvoice/ui/incall/InCallMediaControl;)V

    iput-object v0, p0, Lcom/weirdvoice/ui/incall/InCallMediaControl;->sipConnection:Landroid/content/ServiceConnection;

    .line 300
    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    iput-wide v0, p0, Lcom/weirdvoice/ui/incall/InCallMediaControl;->subdivision:D

    .line 301
    const-wide/high16 v0, 0x402e000000000000L    # 15.0

    iput-wide v0, p0, Lcom/weirdvoice/ui/incall/InCallMediaControl;->max:D

    .line 57
    return-void
.end method

.method static synthetic access$0(Lcom/weirdvoice/ui/incall/InCallMediaControl;)Lcom/weirdvoice/api/ISipService;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/InCallMediaControl;->sipService:Lcom/weirdvoice/api/ISipService;

    return-object v0
.end method

.method static synthetic access$1(Lcom/weirdvoice/ui/incall/InCallMediaControl;Lcom/weirdvoice/api/ISipService;)V
    .locals 0

    .prologue
    .line 261
    iput-object p1, p0, Lcom/weirdvoice/ui/incall/InCallMediaControl;->sipService:Lcom/weirdvoice/api/ISipService;

    return-void
.end method

.method static synthetic access$2(Lcom/weirdvoice/ui/incall/InCallMediaControl;)V
    .locals 0

    .prologue
    .line 276
    invoke-direct {p0}, Lcom/weirdvoice/ui/incall/InCallMediaControl;->updateUIFromMedia()V

    return-void
.end method

.method static synthetic access$3(Lcom/weirdvoice/ui/incall/InCallMediaControl;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/InCallMediaControl;->txProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$4(Lcom/weirdvoice/ui/incall/InCallMediaControl;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/InCallMediaControl;->rxProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private progressUnitToValue(I)F
    .locals 8
    .param p1, "pVal"    # I

    .prologue
    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    .line 310
    const-string v2, "inCallMediaCtrl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Progress is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    int-to-double v2, p1

    iget-wide v4, p0, Lcom/weirdvoice/ui/incall/InCallMediaControl;->subdivision:D

    div-double/2addr v2, v4

    iget-wide v4, p0, Lcom/weirdvoice/ui/incall/InCallMediaControl;->max:D

    sub-double v0, v2, v4

    .line 312
    .local v0, "dB":D
    div-double v2, v0, v6

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v2, v2

    return v2
.end method

.method private updateUIFromMedia()V
    .locals 6

    .prologue
    .line 278
    const/4 v3, 0x0

    .line 279
    .local v3, "useBT":Z
    iget-object v4, p0, Lcom/weirdvoice/ui/incall/InCallMediaControl;->sipService:Lcom/weirdvoice/api/ISipService;

    if-eqz v4, :cond_0

    .line 281
    :try_start_0
    iget-object v4, p0, Lcom/weirdvoice/ui/incall/InCallMediaControl;->sipService:Lcom/weirdvoice/api/ISipService;

    invoke-interface {v4}, Lcom/weirdvoice/api/ISipService;->getCurrentMediaState()Lcom/weirdvoice/api/MediaState;

    move-result-object v4

    iget-boolean v3, v4, Lcom/weirdvoice/api/MediaState;->isBluetoothScoOn:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    .line 288
    const-string v4, "snd_bt_speaker_level"

    .line 287
    :goto_1
    invoke-static {p0, v4}, Lcom/weirdvoice/api/SipConfigManager;->getPreferenceFloatValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    .line 289
    .local v2, "speakerLevel":Ljava/lang/Float;
    iget-object v4, p0, Lcom/weirdvoice/ui/incall/InCallMediaControl;->speakerAmplification:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-direct {p0, v5}, Lcom/weirdvoice/ui/incall/InCallMediaControl;->valueToProgressUnit(F)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 291
    if-eqz v3, :cond_2

    .line 292
    const-string v4, "snd_bt_mic_level"

    .line 291
    :goto_2
    invoke-static {p0, v4}, Lcom/weirdvoice/api/SipConfigManager;->getPreferenceFloatValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    .line 293
    .local v1, "microLevel":Ljava/lang/Float;
    iget-object v4, p0, Lcom/weirdvoice/ui/incall/InCallMediaControl;->microAmplification:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-direct {p0, v5}, Lcom/weirdvoice/ui/incall/InCallMediaControl;->valueToProgressUnit(F)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 295
    iget-object v4, p0, Lcom/weirdvoice/ui/incall/InCallMediaControl;->echoCancellation:Landroid/widget/CheckBox;

    .line 296
    const-string v5, "echo_cancellation"

    .line 295
    invoke-static {p0, v5}, Lcom/weirdvoice/api/SipConfigManager;->getPreferenceBooleanValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 298
    return-void

    .line 282
    .end local v1    # "microLevel":Ljava/lang/Float;
    .end local v2    # "speakerLevel":Ljava/lang/Float;
    :catch_0
    move-exception v0

    .line 283
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "inCallMediaCtrl"

    const-string v5, "Sip service not avail for request "

    invoke-static {v4, v5, v0}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 288
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    const-string v4, "snd_speaker_level"

    goto :goto_1

    .line 292
    .restart local v2    # "speakerLevel":Ljava/lang/Float;
    :cond_2
    const-string v4, "snd_mic_level"

    goto :goto_2
.end method

.method private valueToProgressUnit(F)I
    .locals 6
    .param p1, "val"    # F

    .prologue
    .line 304
    const-string v2, "inCallMediaCtrl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Value is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    float-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->log10(D)D

    move-result-wide v4

    mul-double v0, v2, v4

    .line 306
    .local v0, "dB":D
    iget-wide v2, p0, Lcom/weirdvoice/ui/incall/InCallMediaControl;->max:D

    add-double/2addr v2, v0

    iget-wide v4, p0, Lcom/weirdvoice/ui/incall/InCallMediaControl;->subdivision:D

    mul-double/2addr v2, v4

    double-to-int v2, v2

    return v2
.end method


# virtual methods
.method public delayedQuit(I)V
    .locals 4
    .param p1, "time"    # I

    .prologue
    const/4 v2, 0x0

    .line 204
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/InCallMediaControl;->quitTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/InCallMediaControl;->quitTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 206
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/InCallMediaControl;->quitTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 207
    iput-object v2, p0, Lcom/weirdvoice/ui/incall/InCallMediaControl;->quitTimer:Ljava/util/Timer;

    .line 210
    :cond_0
    new-instance v0, Ljava/util/Timer;

    const-string v1, "Quit-timer-media"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/weirdvoice/ui/incall/InCallMediaControl;->quitTimer:Ljava/util/Timer;

    .line 212
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/InCallMediaControl;->quitTimer:Ljava/util/Timer;

    new-instance v1, Lcom/weirdvoice/ui/incall/InCallMediaControl$LockTimerTask;

    invoke-direct {v1, p0, v2}, Lcom/weirdvoice/ui/incall/InCallMediaControl$LockTimerTask;-><init>(Lcom/weirdvoice/ui/incall/InCallMediaControl;Lcom/weirdvoice/ui/incall/InCallMediaControl$LockTimerTask;)V

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 213
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1, "arg0"    # Landroid/widget/CompoundButton;
    .param p2, "value"    # Z

    .prologue
    .line 360
    iget-object v2, p0, Lcom/weirdvoice/ui/incall/InCallMediaControl;->sipService:Lcom/weirdvoice/api/ISipService;

    if-eqz v2, :cond_1

    .line 362
    :try_start_0
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    .line 363
    .local v0, "bId":I
    const v2, 0x7f0b00ff

    if-ne v0, v2, :cond_0

    .line 364
    iget-object v2, p0, Lcom/weirdvoice/ui/incall/InCallMediaControl;->sipService:Lcom/weirdvoice/api/ISipService;

    invoke-interface {v2, p2}, Lcom/weirdvoice/api/ISipService;->setEchoCancellation(Z)V

    .line 365
    const-string v2, "echo_cancellation"

    invoke-static {p0, v2, p2}, Lcom/weirdvoice/api/SipConfigManager;->setPreferenceBooleanValue(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 368
    :cond_0
    iget-boolean v2, p0, Lcom/weirdvoice/ui/incall/InCallMediaControl;->isAutoClose:Z

    if-eqz v2, :cond_1

    .line 369
    const/16 v2, 0xbb8

    invoke-virtual {p0, v2}, Lcom/weirdvoice/ui/incall/InCallMediaControl;->delayedQuit(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 375
    .end local v0    # "bId":I
    :cond_1
    :goto_0
    return-void

    .line 371
    :catch_0
    move-exception v1

    .line 372
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "inCallMediaCtrl"

    const-string v3, "Impossible to set mic/speaker level"

    invoke-static {v2, v3, v1}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 379
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b00c0

    if-ne v0, v1, :cond_0

    .line 380
    invoke-virtual {p0}, Lcom/weirdvoice/ui/incall/InCallMediaControl;->finish()V

    .line 382
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    .line 75
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    const v0, 0x7f030045

    invoke-virtual {p0, v0}, Lcom/weirdvoice/ui/incall/InCallMediaControl;->setContentView(I)V

    .line 81
    const v0, 0x7f0b00fd

    invoke-virtual {p0, v0}, Lcom/weirdvoice/ui/incall/InCallMediaControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/weirdvoice/ui/incall/InCallMediaControl;->speakerAmplification:Landroid/widget/SeekBar;

    .line 82
    const v0, 0x7f0b00fe

    invoke-virtual {p0, v0}, Lcom/weirdvoice/ui/incall/InCallMediaControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/weirdvoice/ui/incall/InCallMediaControl;->microAmplification:Landroid/widget/SeekBar;

    .line 83
    const v0, 0x7f0b00c0

    invoke-virtual {p0, v0}, Lcom/weirdvoice/ui/incall/InCallMediaControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/weirdvoice/ui/incall/InCallMediaControl;->saveButton:Landroid/widget/Button;

    .line 84
    const v0, 0x7f0b00ff

    invoke-virtual {p0, v0}, Lcom/weirdvoice/ui/incall/InCallMediaControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/weirdvoice/ui/incall/InCallMediaControl;->echoCancellation:Landroid/widget/CheckBox;

    .line 85
    const v0, 0x7f0b0100

    invoke-virtual {p0, v0}, Lcom/weirdvoice/ui/incall/InCallMediaControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/weirdvoice/ui/incall/InCallMediaControl;->okBar:Landroid/widget/LinearLayout;

    .line 87
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/InCallMediaControl;->speakerAmplification:Landroid/widget/SeekBar;

    iget-wide v2, p0, Lcom/weirdvoice/ui/incall/InCallMediaControl;->max:D

    iget-wide v4, p0, Lcom/weirdvoice/ui/incall/InCallMediaControl;->subdivision:D

    mul-double/2addr v2, v4

    mul-double/2addr v2, v6

    double-to-int v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 88
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/InCallMediaControl;->microAmplification:Landroid/widget/SeekBar;

    iget-wide v2, p0, Lcom/weirdvoice/ui/incall/InCallMediaControl;->max:D

    iget-wide v4, p0, Lcom/weirdvoice/ui/incall/InCallMediaControl;->subdivision:D

    mul-double/2addr v2, v4

    mul-double/2addr v2, v6

    double-to-int v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 90
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/InCallMediaControl;->speakerAmplification:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 91
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/InCallMediaControl;->microAmplification:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 93
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/InCallMediaControl;->saveButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/InCallMediaControl;->echoCancellation:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 97
    const v0, 0x7f0b005c

    invoke-virtual {p0, v0}, Lcom/weirdvoice/ui/incall/InCallMediaControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/weirdvoice/ui/incall/InCallMediaControl;->rxProgress:Landroid/widget/ProgressBar;

    .line 98
    const v0, 0x7f0b005a

    invoke-virtual {p0, v0}, Lcom/weirdvoice/ui/incall/InCallMediaControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/weirdvoice/ui/incall/InCallMediaControl;->txProgress:Landroid/widget/ProgressBar;

    .line 99
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    .line 221
    sparse-switch p1, :sswitch_data_0

    .line 243
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    :cond_0
    :goto_0
    :sswitch_0
    return v2

    .line 225
    :sswitch_1
    iget-object v3, p0, Lcom/weirdvoice/ui/incall/InCallMediaControl;->speakerAmplification:Landroid/widget/SeekBar;

    if-eqz v3, :cond_0

    .line 226
    const/16 v3, 0x19

    if-ne p1, v3, :cond_1

    const/4 v1, -0x1

    .line 227
    .local v1, "step":I
    :goto_1
    iget-object v3, p0, Lcom/weirdvoice/ui/incall/InCallMediaControl;->speakerAmplification:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    add-int v0, v3, v1

    .line 228
    .local v0, "newValue":I
    if-ltz v0, :cond_0

    iget-object v3, p0, Lcom/weirdvoice/ui/incall/InCallMediaControl;->speakerAmplification:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getMax()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 229
    iget-object v3, p0, Lcom/weirdvoice/ui/incall/InCallMediaControl;->speakerAmplification:Landroid/widget/SeekBar;

    invoke-virtual {v3, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0

    .end local v0    # "newValue":I
    .end local v1    # "step":I
    :cond_1
    move v1, v2

    .line 226
    goto :goto_1

    .line 221
    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x6 -> :sswitch_0
        0x18 -> :sswitch_1
        0x19 -> :sswitch_1
        0x54 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 248
    sparse-switch p1, :sswitch_data_0

    .line 256
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 254
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 248
    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x6 -> :sswitch_0
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x54 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 131
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 133
    :try_start_0
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/InCallMediaControl;->sipConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/weirdvoice/ui/incall/InCallMediaControl;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 138
    :goto_0
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/InCallMediaControl;->quitTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/InCallMediaControl;->quitTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 140
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/InCallMediaControl;->quitTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 141
    iput-object v1, p0, Lcom/weirdvoice/ui/incall/InCallMediaControl;->quitTimer:Ljava/util/Timer;

    .line 144
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/InCallMediaControl;->callStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/weirdvoice/ui/incall/InCallMediaControl;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 149
    :goto_1
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/InCallMediaControl;->monitorThread:Lcom/weirdvoice/ui/incall/InCallMediaControl$MonitorThread;

    if-eqz v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/InCallMediaControl;->monitorThread:Lcom/weirdvoice/ui/incall/InCallMediaControl$MonitorThread;

    invoke-virtual {v0}, Lcom/weirdvoice/ui/incall/InCallMediaControl$MonitorThread;->markFinished()V

    .line 151
    iput-object v1, p0, Lcom/weirdvoice/ui/incall/InCallMediaControl;->monitorThread:Lcom/weirdvoice/ui/incall/InCallMediaControl$MonitorThread;

    .line 153
    :cond_1
    iput-object v1, p0, Lcom/weirdvoice/ui/incall/InCallMediaControl;->sipService:Lcom/weirdvoice/api/ISipService;

    .line 154
    return-void

    .line 145
    :catch_0
    move-exception v0

    goto :goto_1

    .line 134
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 7
    .param p1, "arg0"    # Landroid/widget/SeekBar;
    .param p2, "value"    # I
    .param p3, "arg2"    # Z

    .prologue
    .line 317
    const-string v5, "inCallMediaCtrl"

    const-string v6, "Progress has changed"

    invoke-static {v5, v6}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    iget-object v5, p0, Lcom/weirdvoice/ui/incall/InCallMediaControl;->sipService:Lcom/weirdvoice/api/ISipService;

    if-eqz v5, :cond_0

    .line 320
    :try_start_0
    invoke-direct {p0, p2}, Lcom/weirdvoice/ui/incall/InCallMediaControl;->progressUnitToValue(I)F

    move-result v2

    .line 322
    .local v2, "newValue":F
    iget-object v5, p0, Lcom/weirdvoice/ui/incall/InCallMediaControl;->sipService:Lcom/weirdvoice/api/ISipService;

    invoke-interface {v5}, Lcom/weirdvoice/api/ISipService;->getCurrentMediaState()Lcom/weirdvoice/api/MediaState;

    move-result-object v5

    iget-boolean v4, v5, Lcom/weirdvoice/api/MediaState;->isBluetoothScoOn:Z

    .line 323
    .local v4, "useBT":Z
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getId()I

    move-result v3

    .line 324
    .local v3, "sId":I
    const v5, 0x7f0b00fd

    if-ne v3, v5, :cond_3

    .line 325
    iget-object v5, p0, Lcom/weirdvoice/ui/incall/InCallMediaControl;->sipService:Lcom/weirdvoice/api/ISipService;

    const/4 v6, 0x0

    invoke-interface {v5, v6, v2}, Lcom/weirdvoice/api/ISipService;->confAdjustTxLevel(IF)V

    .line 326
    if-eqz v4, :cond_2

    const-string v1, "snd_bt_speaker_level"

    .line 327
    .local v1, "key":Ljava/lang/String;
    :goto_0
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {p0, v1, v5}, Lcom/weirdvoice/api/SipConfigManager;->setPreferenceFloatValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Float;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "newValue":F
    .end local v3    # "sId":I
    .end local v4    # "useBT":Z
    :cond_0
    :goto_1
    iget-boolean v5, p0, Lcom/weirdvoice/ui/incall/InCallMediaControl;->isAutoClose:Z

    if-eqz v5, :cond_1

    .line 343
    const/16 v5, 0xbb8

    invoke-virtual {p0, v5}, Lcom/weirdvoice/ui/incall/InCallMediaControl;->delayedQuit(I)V

    .line 345
    :cond_1
    return-void

    .line 326
    .restart local v2    # "newValue":F
    .restart local v3    # "sId":I
    .restart local v4    # "useBT":Z
    :cond_2
    :try_start_1
    const-string v1, "snd_speaker_level"

    goto :goto_0

    .line 328
    :cond_3
    const v5, 0x7f0b00fe

    if-ne v3, v5, :cond_0

    .line 329
    iget-object v5, p0, Lcom/weirdvoice/ui/incall/InCallMediaControl;->sipService:Lcom/weirdvoice/api/ISipService;

    const/4 v6, 0x0

    invoke-interface {v5, v6, v2}, Lcom/weirdvoice/api/ISipService;->confAdjustRxLevel(IF)V

    .line 330
    if-eqz v4, :cond_4

    const-string v1, "snd_bt_mic_level"

    .line 331
    .restart local v1    # "key":Ljava/lang/String;
    :goto_2
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {p0, v1, v5}, Lcom/weirdvoice/api/SipConfigManager;->setPreferenceFloatValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Float;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 333
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "newValue":F
    .end local v3    # "sId":I
    .end local v4    # "useBT":Z
    :catch_0
    move-exception v0

    .line 334
    .local v0, "e":Landroid/os/RemoteException;
    const-string v5, "inCallMediaCtrl"

    const-string v6, "Impossible to set mic/speaker level"

    invoke-static {v5, v6, v0}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 330
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v2    # "newValue":F
    .restart local v3    # "sId":I
    .restart local v4    # "useBT":Z
    :cond_4
    :try_start_2
    const-string v1, "snd_mic_level"
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 104
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 105
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.weirdvoice.service.SipService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 107
    .local v1, "sipServiceIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/weirdvoice/ui/incall/InCallMediaControl;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    iget-object v2, p0, Lcom/weirdvoice/ui/incall/InCallMediaControl;->sipConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v1, v2, v5}, Lcom/weirdvoice/ui/incall/InCallMediaControl;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 111
    invoke-virtual {p0}, Lcom/weirdvoice/ui/incall/InCallMediaControl;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 112
    .local v0, "direction":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    if-ne v0, v5, :cond_2

    .line 113
    :cond_0
    iput-boolean v5, p0, Lcom/weirdvoice/ui/incall/InCallMediaControl;->isAutoClose:Z

    .line 114
    iget-object v2, p0, Lcom/weirdvoice/ui/incall/InCallMediaControl;->okBar:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 115
    const/16 v2, 0xbb8

    invoke-virtual {p0, v2}, Lcom/weirdvoice/ui/incall/InCallMediaControl;->delayedQuit(I)V

    .line 121
    :goto_0
    iget-object v2, p0, Lcom/weirdvoice/ui/incall/InCallMediaControl;->callStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.weirdvoice.service.CALL_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Lcom/weirdvoice/ui/incall/InCallMediaControl;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 122
    iget-object v2, p0, Lcom/weirdvoice/ui/incall/InCallMediaControl;->monitorThread:Lcom/weirdvoice/ui/incall/InCallMediaControl$MonitorThread;

    if-nez v2, :cond_1

    .line 123
    new-instance v2, Lcom/weirdvoice/ui/incall/InCallMediaControl$MonitorThread;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/weirdvoice/ui/incall/InCallMediaControl$MonitorThread;-><init>(Lcom/weirdvoice/ui/incall/InCallMediaControl;Lcom/weirdvoice/ui/incall/InCallMediaControl$MonitorThread;)V

    iput-object v2, p0, Lcom/weirdvoice/ui/incall/InCallMediaControl;->monitorThread:Lcom/weirdvoice/ui/incall/InCallMediaControl$MonitorThread;

    .line 124
    iget-object v2, p0, Lcom/weirdvoice/ui/incall/InCallMediaControl;->monitorThread:Lcom/weirdvoice/ui/incall/InCallMediaControl$MonitorThread;

    invoke-virtual {v2}, Lcom/weirdvoice/ui/incall/InCallMediaControl$MonitorThread;->start()V

    .line 127
    :cond_1
    return-void

    .line 117
    :cond_2
    iget-object v2, p0, Lcom/weirdvoice/ui/incall/InCallMediaControl;->okBar:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 118
    iput-boolean v4, p0, Lcom/weirdvoice/ui/incall/InCallMediaControl;->isAutoClose:Z

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "arg0"    # Landroid/widget/SeekBar;

    .prologue
    .line 350
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "arg0"    # Landroid/widget/SeekBar;

    .prologue
    .line 355
    return-void
.end method
