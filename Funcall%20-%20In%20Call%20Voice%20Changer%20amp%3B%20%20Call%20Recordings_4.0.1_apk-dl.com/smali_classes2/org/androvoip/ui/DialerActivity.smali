.class public Lorg/androvoip/ui/DialerActivity;
.super Landroid/app/Activity;
.source "DialerActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/androvoip/ui/DialerActivity$CounterRunnable;
    }
.end annotation


# static fields
.field public static dialer_context:Lorg/androvoip/ui/DialerActivity;


# instance fields
.field private audioManager:Landroid/media/AudioManager;

.field private counter:I

.field handler:Landroid/os/Handler;

.field private tv_call_timer:Landroid/widget/TextView;

.field private tv_status:Landroid/widget/TextView;

.field private wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 27
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/androvoip/ui/DialerActivity;->handler:Landroid/os/Handler;

    .line 19
    return-void
.end method

.method static synthetic access$0(Lorg/androvoip/ui/DialerActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lorg/androvoip/ui/DialerActivity;->tv_call_timer:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1(Lorg/androvoip/ui/DialerActivity;)I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lorg/androvoip/ui/DialerActivity;->counter:I

    return v0
.end method

.method static synthetic access$2(Lorg/androvoip/ui/DialerActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lorg/androvoip/ui/DialerActivity;->tv_status:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3(Lorg/androvoip/ui/DialerActivity;I)V
    .locals 0

    .prologue
    .line 26
    iput p1, p0, Lorg/androvoip/ui/DialerActivity;->counter:I

    return-void
.end method

.method private hangup()V
    .locals 2

    .prologue
    .line 151
    :try_start_0
    sget-object v1, Lorg/androvoip/ui/AndroVoIPActivity;->serviceConnection:Lorg/androvoip/iax2/IAX2ServiceAPI;

    invoke-interface {v1}, Lorg/androvoip/iax2/IAX2ServiceAPI;->hangup()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :goto_0
    invoke-virtual {p0}, Lorg/androvoip/ui/DialerActivity;->finish()V

    .line 157
    return-void

    .line 152
    :catch_0
    move-exception v0

    .line 154
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public hangupCall(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 95
    invoke-direct {p0}, Lorg/androvoip/ui/DialerActivity;->hangup()V

    .line 96
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 80
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    sget v0, Lorg/androvoip/R$layout;->dialer:I

    invoke-virtual {p0, v0}, Lorg/androvoip/ui/DialerActivity;->setContentView(I)V

    .line 35
    sget v0, Lorg/androvoip/R$id;->tv_status:I

    invoke-virtual {p0, v0}, Lorg/androvoip/ui/DialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/androvoip/ui/DialerActivity;->tv_status:Landroid/widget/TextView;

    .line 36
    sget v0, Lorg/androvoip/R$id;->tv_call_timer:I

    invoke-virtual {p0, v0}, Lorg/androvoip/ui/DialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/androvoip/ui/DialerActivity;->tv_call_timer:Landroid/widget/TextView;

    .line 37
    sput-object p0, Lorg/androvoip/ui/DialerActivity;->dialer_context:Lorg/androvoip/ui/DialerActivity;

    .line 38
    return-void
.end method

.method public onDTMF(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 100
    sget-object v0, Lorg/androvoip/iax2/IAX2Service;->call:Lcom/mexuar/corraleta/protocol/Call;

    const-string v1, "1"

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mexuar/corraleta/protocol/Call;->sendDTMF(C)V

    .line 101
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 43
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 44
    iget-object v0, p0, Lorg/androvoip/ui/DialerActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lorg/androvoip/ui/DialerActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 48
    :cond_0
    iget-object v0, p0, Lorg/androvoip/ui/DialerActivity;->audioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMode(I)V

    .line 49
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    .line 54
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 57
    :try_start_0
    const-class v3, Landroid/os/PowerManager;

    const-string v4, "PROXIMITY_SCREEN_OFF_WAKE_LOCK"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    .line 58
    .local v1, "field":I
    const-string v3, "power"

    invoke-virtual {p0, v3}, Lorg/androvoip/ui/DialerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 59
    .local v2, "powerManager":Landroid/os/PowerManager;
    invoke-virtual {p0}, Lorg/androvoip/ui/DialerActivity;->getLocalClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lorg/androvoip/ui/DialerActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 60
    iget-object v3, p0, Lorg/androvoip/ui/DialerActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 61
    invoke-virtual {p0}, Lorg/androvoip/ui/DialerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    iput-object v3, p0, Lorg/androvoip/ui/DialerActivity;->audioManager:Landroid/media/AudioManager;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_3

    .line 75
    .end local v1    # "field":I
    .end local v2    # "powerManager":Landroid/os/PowerManager;
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 65
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    .line 68
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_2
    move-exception v0

    .line 70
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 71
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0
.end method

.method public onSpeaker(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 84
    check-cast p1, Landroid/widget/ToggleButton;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lorg/androvoip/ui/DialerActivity;->audioManager:Landroid/media/AudioManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 91
    :goto_0
    return-void

    .line 89
    :cond_0
    iget-object v0, p0, Lorg/androvoip/ui/DialerActivity;->audioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    goto :goto_0
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 1
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 105
    new-instance v0, Lorg/androvoip/ui/DialerActivity$1;

    invoke-direct {v0, p0, p1}, Lorg/androvoip/ui/DialerActivity$1;-><init>(Lorg/androvoip/ui/DialerActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/androvoip/ui/DialerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 112
    return-void
.end method

.method public startCallTimer(I)V
    .locals 2
    .param p1, "time"    # I

    .prologue
    .line 116
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/androvoip/ui/DialerActivity$2;

    invoke-direct {v1, p0, p1}, Lorg/androvoip/ui/DialerActivity$2;-><init>(Lorg/androvoip/ui/DialerActivity;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 136
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 137
    return-void
.end method
