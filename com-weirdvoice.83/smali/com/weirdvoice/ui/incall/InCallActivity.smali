.class public Lcom/weirdvoice/ui/incall/InCallActivity;
.super Lcom/actionbarsherlock/app/SherlockFragmentActivity;
.source "InCallActivity.java"

# interfaces
.implements Lcom/weirdvoice/ui/incall/IOnCallActionTrigger;
.implements Lcom/weirdvoice/ui/incall/locker/IOnLeftRightChoice;
.implements Lcom/weirdvoice/ui/incall/CallProximityManager$ProximityDirector;
.implements Lcom/weirdvoice/ui/incall/DtmfDialogFragment$OnDtmfListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/weirdvoice/ui/incall/InCallActivity$CallsAdapter;,
        Lcom/weirdvoice/ui/incall/InCallActivity$QuitTimerTask;,
        Lcom/weirdvoice/ui/incall/InCallActivity$ShowZRTPInfoRunnable;,
        Lcom/weirdvoice/ui/incall/InCallActivity$UpdateUIFromCallRunnable;,
        Lcom/weirdvoice/ui/incall/InCallActivity$UpdateUIFromMediaRunnable;,
        Lcom/weirdvoice/ui/incall/InCallActivity$UpdateVideoPreviewRunnable;
    }
.end annotation


# static fields
.field private static final CALL_ID:Ljava/lang/String; = "call_id"

.field private static final PICKUP_SIP_URI_NEW_CALL:I = 0x1

.field private static final PICKUP_SIP_URI_XFER:I = 0x0

.field private static final QUIT_DELAY:I = 0xbb8

.field private static final THIS_FILE:Ljava/lang/String; = "InCallActivity"


# instance fields
.field private activeCallsAdapter:Lcom/weirdvoice/ui/incall/InCallActivity$CallsAdapter;

.field private activeCallsGrid:Lcom/weirdvoice/ui/incall/InCallInfoGrid;

.field private callMutex:Ljava/lang/Object;

.field private callStateReceiver:Landroid/content/BroadcastReceiver;

.field private callsInfo:[Lcom/weirdvoice/api/SipCallSession;

.field private cameraPreview:Landroid/view/SurfaceView;

.field private connection:Landroid/content/ServiceConnection;

.field private dialFeedback:Lcom/weirdvoice/utils/DialingFeedback;

.field private heldCallsAdapter:Lcom/weirdvoice/ui/incall/InCallActivity$CallsAdapter;

.field private heldCallsGrid:Lcom/weirdvoice/ui/incall/InCallInfoGrid;

.field private inCallAnswerControls:Lcom/weirdvoice/ui/incall/locker/InCallAnswerControls;

.field private inCallControls:Lcom/weirdvoice/ui/incall/InCallControls;

.field private infoDialog:Landroid/app/AlertDialog;

.field private keyguardManager:Lcom/weirdvoice/utils/keyguard/KeyguardWrapper;

.field private lastMediaState:Lcom/weirdvoice/api/MediaState;

.field private mainFrame:Landroid/view/ViewGroup;

.field private powerManager:Landroid/os/PowerManager;

.field private prefsWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;

.field private proximityManager:Lcom/weirdvoice/ui/incall/CallProximityManager;

.field private quitTimer:Ljava/util/Timer;

.field private service:Lcom/weirdvoice/api/ISipService;

.field private serviceConnected:Z

.field private useAutoDetectSpeaker:Z

.field private videoWakeLock:Landroid/os/PowerManager$WakeLock;

.field private wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;-><init>()V

    .line 84
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->callMutex:Ljava/lang/Object;

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->callsInfo:[Lcom/weirdvoice/api/SipCallSession;

    .line 119
    iput-boolean v1, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->useAutoDetectSpeaker:Z

    .line 742
    new-instance v0, Lcom/weirdvoice/ui/incall/InCallActivity$1;

    invoke-direct {v0, p0}, Lcom/weirdvoice/ui/incall/InCallActivity$1;-><init>(Lcom/weirdvoice/ui/incall/InCallActivity;)V

    iput-object v0, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->callStateReceiver:Landroid/content/BroadcastReceiver;

    .line 786
    iput-boolean v1, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->serviceConnected:Z

    .line 788
    new-instance v0, Lcom/weirdvoice/ui/incall/InCallActivity$2;

    invoke-direct {v0, p0}, Lcom/weirdvoice/ui/incall/InCallActivity$2;-><init>(Lcom/weirdvoice/ui/incall/InCallActivity;)V

    iput-object v0, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->connection:Landroid/content/ServiceConnection;

    .line 77
    return-void
.end method

.method static synthetic access$10(Lcom/weirdvoice/ui/incall/InCallActivity;Lcom/weirdvoice/api/ISipService;)V
    .locals 0

    .prologue
    .line 787
    iput-object p1, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->service:Lcom/weirdvoice/api/ISipService;

    return-void
.end method

.method static synthetic access$11(Lcom/weirdvoice/ui/incall/InCallActivity;Z)V
    .locals 0

    .prologue
    .line 786
    iput-boolean p1, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->serviceConnected:Z

    return-void
.end method

.method static synthetic access$12(Lcom/weirdvoice/ui/incall/InCallActivity;)[Lcom/weirdvoice/api/SipCallSession;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->callsInfo:[Lcom/weirdvoice/api/SipCallSession;

    return-object v0
.end method

.method static synthetic access$13(Lcom/weirdvoice/ui/incall/InCallActivity;Lcom/weirdvoice/api/SipCallSession;Lcom/weirdvoice/api/SipCallSession;)Lcom/weirdvoice/api/SipCallSession;
    .locals 1

    .prologue
    .line 438
    invoke-direct {p0, p1, p2}, Lcom/weirdvoice/ui/incall/InCallActivity;->getPrioritaryCall(Lcom/weirdvoice/api/SipCallSession;Lcom/weirdvoice/api/SipCallSession;)Lcom/weirdvoice/api/SipCallSession;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$14(Lcom/weirdvoice/ui/incall/InCallActivity;)Lcom/weirdvoice/ui/incall/InCallControls;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->inCallControls:Lcom/weirdvoice/ui/incall/InCallControls;

    return-object v0
.end method

.method static synthetic access$15(Lcom/weirdvoice/ui/incall/InCallActivity;)Lcom/weirdvoice/ui/incall/locker/InCallAnswerControls;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->inCallAnswerControls:Lcom/weirdvoice/ui/incall/locker/InCallAnswerControls;

    return-object v0
.end method

.method static synthetic access$16(Lcom/weirdvoice/ui/incall/InCallActivity;)Lcom/weirdvoice/ui/incall/InCallInfoGrid;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->heldCallsGrid:Lcom/weirdvoice/ui/incall/InCallInfoGrid;

    return-object v0
.end method

.method static synthetic access$17(Lcom/weirdvoice/ui/incall/InCallActivity;)Lcom/weirdvoice/ui/incall/InCallActivity$CallsAdapter;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->activeCallsAdapter:Lcom/weirdvoice/ui/incall/InCallActivity$CallsAdapter;

    return-object v0
.end method

.method static synthetic access$18(Lcom/weirdvoice/ui/incall/InCallActivity;)Lcom/weirdvoice/ui/incall/InCallActivity$CallsAdapter;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->heldCallsAdapter:Lcom/weirdvoice/ui/incall/InCallActivity$CallsAdapter;

    return-object v0
.end method

.method static synthetic access$19(Lcom/weirdvoice/ui/incall/InCallActivity;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$20(Lcom/weirdvoice/ui/incall/InCallActivity;)V
    .locals 0

    .prologue
    .line 629
    invoke-direct {p0}, Lcom/weirdvoice/ui/incall/InCallActivity;->delayedQuit()V

    return-void
.end method

.method static synthetic access$21(Lcom/weirdvoice/ui/incall/InCallActivity;)Lcom/weirdvoice/ui/incall/CallProximityManager;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->proximityManager:Lcom/weirdvoice/ui/incall/CallProximityManager;

    return-object v0
.end method

.method static synthetic access$5(Lcom/weirdvoice/ui/incall/InCallActivity;)Lcom/weirdvoice/api/ISipService;
    .locals 1

    .prologue
    .line 787
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->service:Lcom/weirdvoice/api/ISipService;

    return-object v0
.end method

.method static synthetic access$6(Lcom/weirdvoice/ui/incall/InCallActivity;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->callMutex:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$7(Lcom/weirdvoice/ui/incall/InCallActivity;[Lcom/weirdvoice/api/SipCallSession;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->callsInfo:[Lcom/weirdvoice/api/SipCallSession;

    return-void
.end method

.method static synthetic access$8(Lcom/weirdvoice/ui/incall/InCallActivity;)Lcom/weirdvoice/api/MediaState;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->lastMediaState:Lcom/weirdvoice/api/MediaState;

    return-object v0
.end method

.method static synthetic access$9(Lcom/weirdvoice/ui/incall/InCallActivity;Lcom/weirdvoice/api/MediaState;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->lastMediaState:Lcom/weirdvoice/api/MediaState;

    return-void
.end method

.method private applyTheme()V
    .locals 1

    .prologue
    .line 372
    invoke-static {p0}, Lcom/weirdvoice/utils/Theme;->getCurrentTheme(Landroid/content/Context;)Lcom/weirdvoice/utils/Theme;

    move-result-object v0

    .line 376
    .local v0, "t":Lcom/weirdvoice/utils/Theme;
    return-void
.end method

.method private attachVideoPreview()V
    .locals 0

    .prologue
    .line 338
    return-void
.end method

.method private declared-synchronized delayedQuit()V
    .locals 4

    .prologue
    .line 631
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 632
    const-string v0, "InCallActivity"

    const-string v1, "Releasing wake up lock"

    invoke-static {v0, v1}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 636
    :cond_0
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->proximityManager:Lcom/weirdvoice/ui/incall/CallProximityManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/weirdvoice/ui/incall/CallProximityManager;->release(I)V

    .line 638
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->activeCallsGrid:Lcom/weirdvoice/ui/incall/InCallInfoGrid;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/weirdvoice/ui/incall/InCallInfoGrid;->setVisibility(I)V

    .line 639
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->inCallControls:Lcom/weirdvoice/ui/incall/InCallControls;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/weirdvoice/ui/incall/InCallControls;->setVisibility(I)V

    .line 641
    const-string v0, "InCallActivity"

    const-string v1, "Start quit timer"

    invoke-static {v0, v1}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->quitTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 643
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->quitTimer:Ljava/util/Timer;

    new-instance v1, Lcom/weirdvoice/ui/incall/InCallActivity$QuitTimerTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/weirdvoice/ui/incall/InCallActivity$QuitTimerTask;-><init>(Lcom/weirdvoice/ui/incall/InCallActivity;Lcom/weirdvoice/ui/incall/InCallActivity$QuitTimerTask;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 647
    :goto_0
    monitor-exit p0

    return-void

    .line 645
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/weirdvoice/ui/incall/InCallActivity;->finish()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 631
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private detachVideoPreview()V
    .locals 0

    .prologue
    .line 350
    return-void
.end method

.method private getActiveCallInfo()Lcom/weirdvoice/api/SipCallSession;
    .locals 5

    .prologue
    .line 422
    const/4 v1, 0x0

    .line 423
    .local v1, "currentCallInfo":Lcom/weirdvoice/api/SipCallSession;
    iget-object v2, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->callsInfo:[Lcom/weirdvoice/api/SipCallSession;

    if-nez v2, :cond_0

    .line 424
    const/4 v2, 0x0

    .line 429
    :goto_0
    return-object v2

    .line 426
    :cond_0
    iget-object v3, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->callsInfo:[Lcom/weirdvoice/api/SipCallSession;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_1
    if-lt v2, v4, :cond_1

    move-object v2, v1

    .line 429
    goto :goto_0

    .line 426
    :cond_1
    aget-object v0, v3, v2

    .line 427
    .local v0, "callInfo":Lcom/weirdvoice/api/SipCallSession;
    invoke-direct {p0, v0, v1}, Lcom/weirdvoice/ui/incall/InCallActivity;->getPrioritaryCall(Lcom/weirdvoice/api/SipCallSession;Lcom/weirdvoice/api/SipCallSession;)Lcom/weirdvoice/api/SipCallSession;

    move-result-object v1

    .line 426
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private getPrioritaryCall(Lcom/weirdvoice/api/SipCallSession;Lcom/weirdvoice/api/SipCallSession;)Lcom/weirdvoice/api/SipCallSession;
    .locals 4
    .param p1, "call1"    # Lcom/weirdvoice/api/SipCallSession;
    .param p2, "call2"    # Lcom/weirdvoice/api/SipCallSession;

    .prologue
    .line 440
    if-nez p1, :cond_1

    .line 459
    .end local p2    # "call2":Lcom/weirdvoice/api/SipCallSession;
    :cond_0
    :goto_0
    return-object p2

    .line 442
    .restart local p2    # "call2":Lcom/weirdvoice/api/SipCallSession;
    :cond_1
    if-nez p2, :cond_2

    move-object p2, p1

    .line 443
    goto :goto_0

    .line 446
    :cond_2
    invoke-virtual {p1}, Lcom/weirdvoice/api/SipCallSession;->isAfterEnded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 448
    invoke-virtual {p2}, Lcom/weirdvoice/api/SipCallSession;->isAfterEnded()Z

    move-result v0

    if-eqz v0, :cond_3

    move-object p2, p1

    .line 449
    goto :goto_0

    .line 452
    :cond_3
    invoke-virtual {p1}, Lcom/weirdvoice/api/SipCallSession;->isLocalHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 454
    invoke-virtual {p2}, Lcom/weirdvoice/api/SipCallSession;->isLocalHeld()Z

    move-result v0

    if-eqz v0, :cond_4

    move-object p2, p1

    .line 455
    goto :goto_0

    .line 459
    :cond_4
    invoke-virtual {p1}, Lcom/weirdvoice/api/SipCallSession;->getCallStart()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/weirdvoice/api/SipCallSession;->getCallStart()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    move-object p2, p1

    goto :goto_0
.end method

.method private showDialpad(I)V
    .locals 3
    .param p1, "callId"    # I

    .prologue
    .line 658
    invoke-static {p1}, Lcom/weirdvoice/ui/incall/DtmfDialogFragment;->newInstance(I)Lcom/weirdvoice/ui/incall/DtmfDialogFragment;

    move-result-object v0

    .line 659
    .local v0, "newFragment":Lcom/weirdvoice/ui/incall/DtmfDialogFragment;
    invoke-virtual {p0}, Lcom/weirdvoice/ui/incall/InCallActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v0, v1, v2}, Lcom/weirdvoice/ui/incall/DtmfDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 660
    return-void
.end method


# virtual methods
.method public OnDtmf(III)V
    .locals 3
    .param p1, "callId"    # I
    .param p2, "keyCode"    # I
    .param p3, "dialTone"    # I

    .prologue
    .line 666
    iget-object v1, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->proximityManager:Lcom/weirdvoice/ui/incall/CallProximityManager;

    invoke-virtual {v1}, Lcom/weirdvoice/ui/incall/CallProximityManager;->restartTimer()V

    .line 668
    iget-object v1, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->service:Lcom/weirdvoice/api/ISipService;

    if-eqz v1, :cond_0

    .line 669
    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 671
    :try_start_0
    iget-object v1, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->service:Lcom/weirdvoice/api/ISipService;

    invoke-interface {v1, p1, p2}, Lcom/weirdvoice/api/ISipService;->sendDtmf(II)I

    .line 672
    iget-object v1, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->dialFeedback:Lcom/weirdvoice/utils/DialingFeedback;

    invoke-virtual {v1, p3}, Lcom/weirdvoice/utils/DialingFeedback;->giveFeedback(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 679
    :cond_0
    :goto_0
    return-void

    .line 673
    :catch_0
    move-exception v0

    .line 674
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "InCallActivity"

    const-string v2, "Was not able to send dtmf tone"

    invoke-static {v1, v2, v0}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v6, -0x1

    const/4 v5, -0x1

    .line 381
    packed-switch p1, :pswitch_data_0

    .line 412
    invoke-super {p0, p1, p2, p3}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 413
    :cond_0
    :goto_0
    return-void

    .line 383
    :pswitch_0
    if-ne p2, v5, :cond_0

    iget-object v4, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->service:Lcom/weirdvoice/api/ISipService;

    if-eqz v4, :cond_0

    .line 384
    const-string v4, "android.intent.extra.PHONE_NUMBER"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 385
    .local v3, "callee":Ljava/lang/String;
    const-string v4, "call_id"

    invoke-virtual {p3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 386
    .local v2, "callId":I
    if-eq v2, v5, :cond_0

    .line 388
    :try_start_0
    iget-object v4, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->service:Lcom/weirdvoice/api/ISipService;

    invoke-interface {v4, v2, v3}, Lcom/weirdvoice/api/ISipService;->xfer(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 389
    :catch_0
    move-exception v4

    goto :goto_0

    .line 396
    .end local v2    # "callId":I
    .end local v3    # "callee":Ljava/lang/String;
    :pswitch_1
    if-ne p2, v5, :cond_0

    iget-object v4, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->service:Lcom/weirdvoice/api/ISipService;

    if-eqz v4, :cond_0

    .line 397
    const-string v4, "android.intent.extra.PHONE_NUMBER"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 398
    .restart local v3    # "callee":Ljava/lang/String;
    const-string v4, "id"

    invoke-virtual {p3, v4, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 400
    .local v0, "accountId":J
    cmp-long v4, v0, v6

    if-eqz v4, :cond_0

    .line 402
    :try_start_1
    iget-object v4, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->service:Lcom/weirdvoice/api/ISipService;

    long-to-int v5, v0

    invoke-interface {v4, v3, v5}, Lcom/weirdvoice/api/ISipService;->makeCall(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 403
    :catch_1
    move-exception v4

    goto :goto_0

    .line 381
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 362
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 368
    new-instance v0, Lcom/weirdvoice/ui/incall/InCallActivity$UpdateUIFromCallRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/weirdvoice/ui/incall/InCallActivity$UpdateUIFromCallRunnable;-><init>(Lcom/weirdvoice/ui/incall/InCallActivity;Lcom/weirdvoice/ui/incall/InCallActivity$UpdateUIFromCallRunnable;)V

    invoke-virtual {p0, v0}, Lcom/weirdvoice/ui/incall/InCallActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 369
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 133
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 135
    const-string v2, "InCallActivity"

    const-string v3, "Create in call"

    invoke-static {v2, v3}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const v2, 0x7f030044

    invoke-virtual {p0, v2}, Lcom/weirdvoice/ui/incall/InCallActivity;->setContentView(I)V

    .line 138
    invoke-virtual {p0}, Lcom/weirdvoice/ui/incall/InCallActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "call_info"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/weirdvoice/api/SipCallSession;

    .line 139
    .local v0, "initialSession":Lcom/weirdvoice/api/SipCallSession;
    iget-object v3, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->callMutex:Ljava/lang/Object;

    monitor-enter v3

    .line 140
    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [Lcom/weirdvoice/api/SipCallSession;

    iput-object v2, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->callsInfo:[Lcom/weirdvoice/api/SipCallSession;

    .line 141
    iget-object v2, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->callsInfo:[Lcom/weirdvoice/api/SipCallSession;

    const/4 v4, 0x0

    aput-object v0, v2, v4

    .line 139
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/weirdvoice/service/SipService;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v3, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->connection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v2, v3, v5}, Lcom/weirdvoice/ui/incall/InCallActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 145
    new-instance v2, Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    invoke-direct {v2, p0}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    .line 149
    const-string v2, "power"

    invoke-virtual {p0, v2}, Lcom/weirdvoice/ui/incall/InCallActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->powerManager:Landroid/os/PowerManager;

    .line 150
    iget-object v2, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->powerManager:Landroid/os/PowerManager;

    const v3, 0x3000000a

    .line 152
    const-string v4, "com.weirdvoice.onIncomingCall"

    .line 150
    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 153
    iget-object v2, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v6}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 156
    invoke-virtual {p0, v5}, Lcom/weirdvoice/ui/incall/InCallActivity;->takeKeyEvents(Z)V

    .line 159
    const v2, 0x7f0b00f6

    invoke-virtual {p0, v2}, Lcom/weirdvoice/ui/incall/InCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->mainFrame:Landroid/view/ViewGroup;

    .line 160
    const v2, 0x7f0b00fb

    invoke-virtual {p0, v2}, Lcom/weirdvoice/ui/incall/InCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/weirdvoice/ui/incall/InCallControls;

    iput-object v2, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->inCallControls:Lcom/weirdvoice/ui/incall/InCallControls;

    .line 161
    const v2, 0x7f0b00fa

    invoke-virtual {p0, v2}, Lcom/weirdvoice/ui/incall/InCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/weirdvoice/ui/incall/locker/InCallAnswerControls;

    iput-object v2, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->inCallAnswerControls:Lcom/weirdvoice/ui/incall/locker/InCallAnswerControls;

    .line 162
    const v2, 0x7f0b00f8

    invoke-virtual {p0, v2}, Lcom/weirdvoice/ui/incall/InCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/weirdvoice/ui/incall/InCallInfoGrid;

    iput-object v2, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->activeCallsGrid:Lcom/weirdvoice/ui/incall/InCallInfoGrid;

    .line 163
    const v2, 0x7f0b00f9

    invoke-virtual {p0, v2}, Lcom/weirdvoice/ui/incall/InCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/weirdvoice/ui/incall/InCallInfoGrid;

    iput-object v2, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->heldCallsGrid:Lcom/weirdvoice/ui/incall/InCallInfoGrid;

    .line 166
    invoke-direct {p0}, Lcom/weirdvoice/ui/incall/InCallActivity;->attachVideoPreview()V

    .line 168
    iget-object v2, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->inCallControls:Lcom/weirdvoice/ui/incall/InCallControls;

    invoke-virtual {v2, p0}, Lcom/weirdvoice/ui/incall/InCallControls;->setOnTriggerListener(Lcom/weirdvoice/ui/incall/IOnCallActionTrigger;)V

    .line 169
    iget-object v2, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->inCallAnswerControls:Lcom/weirdvoice/ui/incall/locker/InCallAnswerControls;

    invoke-virtual {v2, p0}, Lcom/weirdvoice/ui/incall/locker/InCallAnswerControls;->setOnTriggerListener(Lcom/weirdvoice/ui/incall/IOnCallActionTrigger;)V

    .line 171
    iget-object v2, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->activeCallsAdapter:Lcom/weirdvoice/ui/incall/InCallActivity$CallsAdapter;

    if-nez v2, :cond_0

    .line 172
    new-instance v2, Lcom/weirdvoice/ui/incall/InCallActivity$CallsAdapter;

    invoke-direct {v2, p0, v5}, Lcom/weirdvoice/ui/incall/InCallActivity$CallsAdapter;-><init>(Lcom/weirdvoice/ui/incall/InCallActivity;Z)V

    iput-object v2, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->activeCallsAdapter:Lcom/weirdvoice/ui/incall/InCallActivity$CallsAdapter;

    .line 174
    :cond_0
    iget-object v2, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->activeCallsGrid:Lcom/weirdvoice/ui/incall/InCallInfoGrid;

    iget-object v3, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->activeCallsAdapter:Lcom/weirdvoice/ui/incall/InCallActivity$CallsAdapter;

    invoke-virtual {v2, v3}, Lcom/weirdvoice/ui/incall/InCallInfoGrid;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 177
    iget-object v2, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->heldCallsAdapter:Lcom/weirdvoice/ui/incall/InCallActivity$CallsAdapter;

    if-nez v2, :cond_1

    .line 178
    new-instance v2, Lcom/weirdvoice/ui/incall/InCallActivity$CallsAdapter;

    invoke-direct {v2, p0, v6}, Lcom/weirdvoice/ui/incall/InCallActivity$CallsAdapter;-><init>(Lcom/weirdvoice/ui/incall/InCallActivity;Z)V

    iput-object v2, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->heldCallsAdapter:Lcom/weirdvoice/ui/incall/InCallActivity$CallsAdapter;

    .line 180
    :cond_1
    iget-object v2, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->heldCallsGrid:Lcom/weirdvoice/ui/incall/InCallInfoGrid;

    iget-object v3, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->heldCallsAdapter:Lcom/weirdvoice/ui/incall/InCallActivity$CallsAdapter;

    invoke-virtual {v2, v3}, Lcom/weirdvoice/ui/incall/InCallInfoGrid;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 183
    const v2, 0x7f0b00fc

    invoke-virtual {p0, v2}, Lcom/weirdvoice/ui/incall/InCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/weirdvoice/ui/incall/locker/ScreenLocker;

    .line 184
    .local v1, "lockOverlay":Lcom/weirdvoice/ui/incall/locker/ScreenLocker;
    invoke-virtual {v1, p0}, Lcom/weirdvoice/ui/incall/locker/ScreenLocker;->setActivity(Landroid/app/Activity;)V

    .line 185
    invoke-virtual {v1, p0}, Lcom/weirdvoice/ui/incall/locker/ScreenLocker;->setOnLeftRightListener(Lcom/weirdvoice/ui/incall/locker/IOnLeftRightChoice;)V

    .line 202
    iget-object v2, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->callStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.weirdvoice.service.CALL_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Lcom/weirdvoice/ui/incall/InCallActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 203
    iget-object v2, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->callStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.weirdvoice.service.MEDIA_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Lcom/weirdvoice/ui/incall/InCallActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 204
    iget-object v2, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->callStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.weirdvoice.service.SHOW_SAS"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Lcom/weirdvoice/ui/incall/InCallActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 206
    new-instance v2, Lcom/weirdvoice/ui/incall/CallProximityManager;

    invoke-direct {v2, p0, p0, v1}, Lcom/weirdvoice/ui/incall/CallProximityManager;-><init>(Landroid/content/Context;Lcom/weirdvoice/ui/incall/CallProximityManager$ProximityDirector;Lcom/weirdvoice/ui/incall/locker/ScreenLocker;)V

    iput-object v2, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->proximityManager:Lcom/weirdvoice/ui/incall/CallProximityManager;

    .line 207
    invoke-static {p0}, Lcom/weirdvoice/utils/keyguard/KeyguardWrapper;->getKeyguardManager(Landroid/app/Activity;)Lcom/weirdvoice/utils/keyguard/KeyguardWrapper;

    move-result-object v2

    iput-object v2, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->keyguardManager:Lcom/weirdvoice/utils/keyguard/KeyguardWrapper;

    .line 209
    new-instance v2, Lcom/weirdvoice/utils/DialingFeedback;

    invoke-direct {v2, p0, v5}, Lcom/weirdvoice/utils/DialingFeedback;-><init>(Landroid/app/Activity;Z)V

    iput-object v2, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->dialFeedback:Lcom/weirdvoice/utils/DialingFeedback;

    .line 211
    iget-object v2, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    const-string v3, "prevent_screen_rotation"

    invoke-virtual {v2, v3}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 212
    invoke-virtual {p0, v5}, Lcom/weirdvoice/ui/incall/InCallActivity;->setRequestedOrientation(I)V

    .line 215
    :cond_2
    iget-object v2, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->quitTimer:Ljava/util/Timer;

    if-nez v2, :cond_3

    .line 216
    new-instance v2, Ljava/util/Timer;

    const-string v3, "Quit-timer"

    invoke-direct {v2, v3}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->quitTimer:Ljava/util/Timer;

    .line 220
    :cond_3
    iget-object v2, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    const-string v3, "auto_detect_speaker"

    invoke-virtual {v2, v3}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->useAutoDetectSpeaker:Z

    .line 222
    invoke-direct {p0}, Lcom/weirdvoice/ui/incall/InCallActivity;->applyTheme()V

    .line 223
    iget-object v2, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->proximityManager:Lcom/weirdvoice/ui/incall/CallProximityManager;

    invoke-virtual {v2}, Lcom/weirdvoice/ui/incall/CallProximityManager;->startTracking()V

    .line 225
    iget-object v2, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->inCallControls:Lcom/weirdvoice/ui/incall/InCallControls;

    invoke-virtual {v2, v0}, Lcom/weirdvoice/ui/incall/InCallControls;->setCallState(Lcom/weirdvoice/api/SipCallSession;)V

    .line 226
    iget-object v2, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->inCallAnswerControls:Lcom/weirdvoice/ui/incall/locker/InCallAnswerControls;

    invoke-virtual {v2, v0}, Lcom/weirdvoice/ui/incall/locker/InCallAnswerControls;->setCallState(Lcom/weirdvoice/api/SipCallSession;)V

    .line 227
    return-void

    .line 139
    .end local v1    # "lockOverlay":Lcom/weirdvoice/ui/incall/locker/ScreenLocker;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public bridge synthetic onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 269
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->infoDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->infoDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->quitTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 274
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->quitTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 275
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->quitTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 276
    iput-object v1, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->quitTimer:Ljava/util/Timer;

    .line 287
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->connection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/weirdvoice/ui/incall/InCallActivity;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 291
    :goto_0
    iput-object v1, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->service:Lcom/weirdvoice/api/ISipService;

    .line 292
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 293
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 295
    :cond_2
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->proximityManager:Lcom/weirdvoice/ui/incall/CallProximityManager;

    invoke-virtual {v0}, Lcom/weirdvoice/ui/incall/CallProximityManager;->stopTracking()V

    .line 296
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->proximityManager:Lcom/weirdvoice/ui/incall/CallProximityManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/weirdvoice/ui/incall/CallProximityManager;->release(I)V

    .line 298
    :try_start_1
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->callStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/weirdvoice/ui/incall/InCallActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 303
    :goto_1
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->activeCallsGrid:Lcom/weirdvoice/ui/incall/InCallInfoGrid;

    if-eqz v0, :cond_3

    .line 304
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->activeCallsGrid:Lcom/weirdvoice/ui/incall/InCallInfoGrid;

    invoke-virtual {v0}, Lcom/weirdvoice/ui/incall/InCallInfoGrid;->terminate()V

    .line 307
    :cond_3
    invoke-direct {p0}, Lcom/weirdvoice/ui/incall/InCallActivity;->detachVideoPreview()V

    .line 309
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onDestroy()V

    .line 310
    return-void

    .line 299
    :catch_0
    move-exception v0

    goto :goto_1

    .line 288
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public onDisplayVideo(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 558
    new-instance v0, Lcom/weirdvoice/ui/incall/InCallActivity$UpdateVideoPreviewRunnable;

    invoke-direct {v0, p0, p1}, Lcom/weirdvoice/ui/incall/InCallActivity$UpdateVideoPreviewRunnable;-><init>(Lcom/weirdvoice/ui/incall/InCallActivity;Z)V

    invoke-virtual {p0, v0}, Lcom/weirdvoice/ui/incall/InCallActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 559
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    .line 684
    const-string v4, "InCallActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Key down : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    sparse-switch p1, :sswitch_data_0

    .line 722
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    :cond_1
    :goto_0
    :sswitch_0
    return v3

    .line 691
    :sswitch_1
    const-string v4, "InCallActivity"

    const-string v5, "onKeyDown: Volume button pressed"

    invoke-static {v4, v5}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    const/4 v0, 0x1

    .line 693
    .local v0, "action":I
    const/16 v4, 0x19

    if-ne p1, v4, :cond_2

    .line 694
    const/4 v0, -0x1

    .line 698
    :cond_2
    invoke-direct {p0}, Lcom/weirdvoice/ui/incall/InCallActivity;->getActiveCallInfo()Lcom/weirdvoice/api/SipCallSession;

    move-result-object v1

    .line 700
    .local v1, "currentCallInfo":Lcom/weirdvoice/api/SipCallSession;
    if-nez v1, :cond_3

    iget-boolean v4, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->serviceConnected:Z

    if-nez v4, :cond_0

    .line 704
    :cond_3
    iget-object v4, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->service:Lcom/weirdvoice/api/ISipService;

    if-eqz v4, :cond_1

    .line 706
    :try_start_0
    iget-object v4, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->service:Lcom/weirdvoice/api/ISipService;

    const/4 v5, 0x1

    invoke-interface {v4, v1, v0, v5}, Lcom/weirdvoice/api/ISipService;->adjustVolume(Lcom/weirdvoice/api/SipCallSession;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 707
    :catch_0
    move-exception v2

    .line 708
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "InCallActivity"

    const-string v5, "Can\'t adjust volume"

    invoke-static {v4, v5, v2}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 715
    .end local v0    # "action":I
    .end local v1    # "currentCallInfo":Lcom/weirdvoice/api/SipCallSession;
    .end local v2    # "e":Landroid/os/RemoteException;
    :sswitch_2
    iget-object v3, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->inCallAnswerControls:Lcom/weirdvoice/ui/incall/locker/InCallAnswerControls;

    invoke-virtual {v3, p1, p2}, Lcom/weirdvoice/ui/incall/locker/InCallAnswerControls;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_0

    .line 685
    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_2
        0x6 -> :sswitch_2
        0x18 -> :sswitch_1
        0x19 -> :sswitch_1
        0x54 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 727
    const-string v0, "InCallActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Key up : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    sparse-switch p1, :sswitch_data_0

    .line 738
    invoke-super {p0, p1, p2}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 733
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 735
    :sswitch_1
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->inCallAnswerControls:Lcom/weirdvoice/ui/incall/locker/InCallAnswerControls;

    invoke-virtual {v0, p1, p2}, Lcom/weirdvoice/ui/incall/locker/InCallAnswerControls;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 728
    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x6 -> :sswitch_1
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x54 -> :sswitch_0
    .end sparse-switch
.end method

.method public onLeftRightChoice(I)V
    .locals 3
    .param p1, "whichHandle"    # I

    .prologue
    const/4 v2, 0x0

    .line 1058
    packed-switch p1, :pswitch_data_0

    .line 1072
    :goto_0
    return-void

    .line 1060
    :pswitch_0
    const-string v0, "InCallActivity"

    const-string v1, "We unlock"

    invoke-static {v0, v1}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1061
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->proximityManager:Lcom/weirdvoice/ui/incall/CallProximityManager;

    invoke-virtual {v0, v2}, Lcom/weirdvoice/ui/incall/CallProximityManager;->release(I)V

    .line 1062
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->proximityManager:Lcom/weirdvoice/ui/incall/CallProximityManager;

    invoke-virtual {v0}, Lcom/weirdvoice/ui/incall/CallProximityManager;->restartTimer()V

    goto :goto_0

    .line 1065
    :pswitch_1
    const-string v0, "InCallActivity"

    const-string v1, "We clear the call"

    invoke-static {v0, v1}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1066
    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/weirdvoice/ui/incall/InCallActivity;->getActiveCallInfo()Lcom/weirdvoice/api/SipCallSession;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/weirdvoice/ui/incall/InCallActivity;->onTrigger(ILcom/weirdvoice/api/SipCallSession;)V

    .line 1067
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->proximityManager:Lcom/weirdvoice/ui/incall/CallProximityManager;

    invoke-virtual {v0, v2}, Lcom/weirdvoice/ui/incall/CallProximityManager;->release(I)V

    goto :goto_0

    .line 1058
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 354
    invoke-virtual {p0, p1}, Lcom/weirdvoice/ui/incall/InCallActivity;->setIntent(Landroid/content/Intent;)V

    .line 356
    const-string v0, "InCallActivity"

    const-string v1, "New intent is launched"

    invoke-static {v0, v1}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 358
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 256
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onPause()V

    .line 257
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->dialFeedback:Lcom/weirdvoice/utils/DialingFeedback;

    invoke-virtual {v0}, Lcom/weirdvoice/utils/DialingFeedback;->pause()V

    .line 258
    return-void
.end method

.method public onProximityTrackingChanged(Z)V
    .locals 3
    .param p1, "acquired"    # Z

    .prologue
    .line 1374
    iget-boolean v1, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->useAutoDetectSpeaker:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->service:Lcom/weirdvoice/api/ISipService;

    if-eqz v1, :cond_1

    .line 1375
    if-eqz p1, :cond_2

    .line 1376
    iget-object v1, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->lastMediaState:Lcom/weirdvoice/api/MediaState;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->lastMediaState:Lcom/weirdvoice/api/MediaState;

    iget-boolean v1, v1, Lcom/weirdvoice/api/MediaState;->isSpeakerphoneOn:Z

    if-eqz v1, :cond_1

    .line 1378
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->service:Lcom/weirdvoice/api/ISipService;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/weirdvoice/api/ISipService;->setSpeakerphoneOn(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1393
    :cond_1
    :goto_0
    return-void

    .line 1379
    :catch_0
    move-exception v0

    .line 1380
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "InCallActivity"

    const-string v2, "Can\'t run speaker change"

    invoke-static {v1, v2}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1384
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    iget-object v1, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->lastMediaState:Lcom/weirdvoice/api/MediaState;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->lastMediaState:Lcom/weirdvoice/api/MediaState;

    iget-boolean v1, v1, Lcom/weirdvoice/api/MediaState;->isSpeakerphoneOn:Z

    if-nez v1, :cond_1

    .line 1386
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->service:Lcom/weirdvoice/api/ISipService;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/weirdvoice/api/ISipService;->setSpeakerphoneOn(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1387
    :catch_1
    move-exception v0

    .line 1388
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v1, "InCallActivity"

    const-string v2, "Can\'t run speaker change"

    invoke-static {v1, v2}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 240
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onResume()V

    .line 247
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->dialFeedback:Lcom/weirdvoice/utils/DialingFeedback;

    invoke-virtual {v0}, Lcom/weirdvoice/utils/DialingFeedback;->resume()V

    .line 250
    new-instance v0, Lcom/weirdvoice/ui/incall/InCallActivity$UpdateUIFromCallRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/weirdvoice/ui/incall/InCallActivity$UpdateUIFromCallRunnable;-><init>(Lcom/weirdvoice/ui/incall/InCallActivity;Lcom/weirdvoice/ui/incall/InCallActivity$UpdateUIFromCallRunnable;)V

    invoke-virtual {p0, v0}, Lcom/weirdvoice/ui/incall/InCallActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 252
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 232
    const-string v0, "InCallActivity"

    const-string v1, "Start in call"

    invoke-static {v0, v1}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onStart()V

    .line 235
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->keyguardManager:Lcom/weirdvoice/utils/keyguard/KeyguardWrapper;

    invoke-virtual {v0}, Lcom/weirdvoice/utils/keyguard/KeyguardWrapper;->unlock()V

    .line 236
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 262
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onStop()V

    .line 263
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->keyguardManager:Lcom/weirdvoice/utils/keyguard/KeyguardWrapper;

    invoke-virtual {v0}, Lcom/weirdvoice/utils/keyguard/KeyguardWrapper;->lock()V

    .line 264
    return-void
.end method

.method public onTrigger(ILcom/weirdvoice/api/SipCallSession;)V
    .locals 11
    .param p1, "whichAction"    # I
    .param p2, "call"    # Lcom/weirdvoice/api/SipCallSession;

    .prologue
    const/4 v10, 0x5

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 821
    if-eq p1, v8, :cond_0

    const/4 v6, 0x4

    if-eq p1, v6, :cond_0

    if-eq p1, v7, :cond_0

    .line 822
    if-eq p1, v4, :cond_0

    const/16 v6, 0xb

    if-eq p1, v6, :cond_0

    .line 823
    const/16 v6, 0xc

    if-eq p1, v6, :cond_0

    const/16 v6, 0x11

    if-eq p1, v6, :cond_0

    .line 824
    const/16 v6, 0x12

    if-eq p1, v6, :cond_0

    const/16 v6, 0x13

    if-eq p1, v6, :cond_0

    .line 825
    const/16 v6, 0xf

    if-eq p1, v6, :cond_0

    const/16 v6, 0x10

    if-eq p1, v6, :cond_0

    .line 826
    const/16 v6, 0x14

    if-eq p1, v6, :cond_0

    const/16 v6, 0x15

    if-ne p1, v6, :cond_3

    .line 828
    :cond_0
    if-nez p2, :cond_2

    .line 829
    const-string v4, "InCallActivity"

    const-string v5, "Try to do an action on a null call !!!"

    invoke-static {v4, v5}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1052
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 832
    :cond_2
    invoke-virtual {p2}, Lcom/weirdvoice/api/SipCallSession;->getCallId()I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_3

    .line 833
    const-string v4, "InCallActivity"

    const-string v5, "Try to do an action on an invalid call !!!"

    invoke-static {v4, v5}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 839
    :cond_3
    iget-object v6, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->proximityManager:Lcom/weirdvoice/ui/incall/CallProximityManager;

    invoke-virtual {v6}, Lcom/weirdvoice/ui/incall/CallProximityManager;->restartTimer()V

    .line 842
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 882
    :pswitch_1
    :try_start_0
    iget-object v4, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->service:Lcom/weirdvoice/api/ISipService;

    if-eqz v4, :cond_1

    .line 883
    iget-object v4, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->service:Lcom/weirdvoice/api/ISipService;

    invoke-virtual {p2}, Lcom/weirdvoice/api/SipCallSession;->getCallId()I

    move-result v5

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lcom/weirdvoice/api/ISipService;->hangup(II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1049
    :catch_0
    move-exception v1

    .line 1050
    .local v1, "e":Landroid/os/RemoteException;
    const-string v4, "InCallActivity"

    const-string v5, "Was not able to call service method"

    invoke-static {v4, v5, v1}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 844
    .end local v1    # "e":Landroid/os/RemoteException;
    :pswitch_2
    :try_start_1
    iget-object v4, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->service:Lcom/weirdvoice/api/ISipService;

    if-eqz v4, :cond_1

    .line 845
    const-string v4, "InCallActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Answer call "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/weirdvoice/api/SipCallSession;->getCallId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    const/4 v3, 0x0

    .line 850
    .local v3, "shouldHoldOthers":Z
    invoke-virtual {p2}, Lcom/weirdvoice/api/SipCallSession;->isBeforeConfirmed()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 851
    const/4 v3, 0x1

    .line 854
    :cond_4
    iget-object v4, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->service:Lcom/weirdvoice/api/ISipService;

    invoke-virtual {p2}, Lcom/weirdvoice/api/SipCallSession;->getCallId()I

    move-result v6

    const/16 v7, 0xc8

    invoke-interface {v4, v6, v7}, Lcom/weirdvoice/api/ISipService;->answer(II)I

    .line 858
    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->callsInfo:[Lcom/weirdvoice/api/SipCallSession;

    if-eqz v4, :cond_1

    .line 859
    iget-object v4, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->callsInfo:[Lcom/weirdvoice/api/SipCallSession;

    array-length v6, v4

    :goto_1
    if-ge v5, v6, :cond_1

    aget-object v0, v4, v5

    .line 861
    .local v0, "callInfo":Lcom/weirdvoice/api/SipCallSession;
    invoke-virtual {v0}, Lcom/weirdvoice/api/SipCallSession;->getCallState()I

    move-result v7

    if-ne v10, v7, :cond_5

    .line 862
    invoke-virtual {v0}, Lcom/weirdvoice/api/SipCallSession;->isLocalHeld()Z

    move-result v7

    if-nez v7, :cond_5

    .line 863
    invoke-virtual {v0}, Lcom/weirdvoice/api/SipCallSession;->getCallId()I

    move-result v7

    invoke-virtual {p2}, Lcom/weirdvoice/api/SipCallSession;->getCallId()I

    move-result v8

    if-eq v7, v8, :cond_5

    .line 865
    const-string v7, "InCallActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Hold call "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/weirdvoice/api/SipCallSession;->getCallId()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    iget-object v7, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->service:Lcom/weirdvoice/api/ISipService;

    invoke-virtual {v0}, Lcom/weirdvoice/api/SipCallSession;->getCallId()I

    move-result v8

    invoke-interface {v7, v8}, Lcom/weirdvoice/api/ISipService;->hold(I)I

    .line 859
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 875
    .end local v0    # "callInfo":Lcom/weirdvoice/api/SipCallSession;
    .end local v3    # "shouldHoldOthers":Z
    :pswitch_3
    iget-object v4, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->service:Lcom/weirdvoice/api/ISipService;

    if-eqz v4, :cond_1

    .line 876
    iget-object v4, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->service:Lcom/weirdvoice/api/ISipService;

    invoke-virtual {p2}, Lcom/weirdvoice/api/SipCallSession;->getCallId()I

    move-result v5

    const/16 v6, 0x1e6

    invoke-interface {v4, v5, v6}, Lcom/weirdvoice/api/ISipService;->hangup(II)I

    goto/16 :goto_0

    .line 889
    :pswitch_4
    iget-object v6, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->service:Lcom/weirdvoice/api/ISipService;

    if-eqz v6, :cond_1

    .line 890
    iget-object v6, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->service:Lcom/weirdvoice/api/ISipService;

    if-ne p1, v10, :cond_6

    :goto_2
    invoke-interface {v6, v4}, Lcom/weirdvoice/api/ISipService;->setMicrophoneMute(Z)V

    goto/16 :goto_0

    :cond_6
    move v4, v5

    goto :goto_2

    .line 896
    :pswitch_5
    iget-object v6, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->service:Lcom/weirdvoice/api/ISipService;

    if-eqz v6, :cond_1

    .line 897
    const-string v6, "InCallActivity"

    const-string v7, "Manually switch to speaker"

    invoke-static {v6, v7}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 898
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->useAutoDetectSpeaker:Z

    .line 899
    iget-object v6, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->service:Lcom/weirdvoice/api/ISipService;

    const/16 v7, 0x9

    if-ne p1, v7, :cond_7

    :goto_3
    invoke-interface {v6, v4}, Lcom/weirdvoice/api/ISipService;->setSpeakerphoneOn(Z)V

    goto/16 :goto_0

    :cond_7
    move v4, v5

    goto :goto_3

    .line 905
    :pswitch_6
    iget-object v6, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->service:Lcom/weirdvoice/api/ISipService;

    if-eqz v6, :cond_1

    .line 906
    iget-object v6, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->service:Lcom/weirdvoice/api/ISipService;

    const/4 v7, 0x7

    if-ne p1, v7, :cond_8

    :goto_4
    invoke-interface {v6, v4}, Lcom/weirdvoice/api/ISipService;->setBluetoothOn(Z)V

    goto/16 :goto_0

    :cond_8
    move v4, v5

    goto :goto_4

    .line 911
    :pswitch_7
    invoke-virtual {p2}, Lcom/weirdvoice/api/SipCallSession;->getCallId()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/weirdvoice/ui/incall/InCallActivity;->showDialpad(I)V

    goto/16 :goto_0

    .line 943
    :pswitch_8
    iget-object v4, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->service:Lcom/weirdvoice/api/ISipService;

    if-eqz v4, :cond_1

    .line 946
    invoke-virtual {p2}, Lcom/weirdvoice/api/SipCallSession;->getMediaStatus()I

    move-result v4

    if-eq v4, v8, :cond_9

    .line 947
    invoke-virtual {p2}, Lcom/weirdvoice/api/SipCallSession;->getMediaStatus()I

    move-result v4

    if-nez v4, :cond_a

    .line 948
    :cond_9
    iget-object v4, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->service:Lcom/weirdvoice/api/ISipService;

    invoke-virtual {p2}, Lcom/weirdvoice/api/SipCallSession;->getCallId()I

    move-result v5

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Lcom/weirdvoice/api/ISipService;->reinvite(IZ)I

    goto/16 :goto_0

    .line 950
    :cond_a
    iget-object v4, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->service:Lcom/weirdvoice/api/ISipService;

    invoke-virtual {p2}, Lcom/weirdvoice/api/SipCallSession;->getCallId()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/weirdvoice/api/ISipService;->hold(I)I

    goto/16 :goto_0

    .line 956
    :pswitch_9
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/weirdvoice/ui/incall/InCallMediaControl;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v4}, Lcom/weirdvoice/ui/incall/InCallActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1014
    :pswitch_a
    iget-object v4, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->service:Lcom/weirdvoice/api/ISipService;

    if-eqz v4, :cond_1

    .line 1017
    iget-object v4, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->service:Lcom/weirdvoice/api/ISipService;

    invoke-virtual {p2}, Lcom/weirdvoice/api/SipCallSession;->getCallId()I

    move-result v5

    const/4 v6, 0x3

    invoke-interface {v4, v5, v6}, Lcom/weirdvoice/api/ISipService;->startRecording(II)V

    goto/16 :goto_0

    .line 1022
    :pswitch_b
    iget-object v4, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->service:Lcom/weirdvoice/api/ISipService;

    if-eqz v4, :cond_1

    .line 1023
    iget-object v4, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->service:Lcom/weirdvoice/api/ISipService;

    invoke-virtual {p2}, Lcom/weirdvoice/api/SipCallSession;->getCallId()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/weirdvoice/api/ISipService;->stopRecording(I)V

    goto/16 :goto_0

    .line 1029
    :pswitch_c
    iget-object v6, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->service:Lcom/weirdvoice/api/ISipService;

    if-eqz v6, :cond_1

    .line 1030
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1031
    .local v2, "opts":Landroid/os/Bundle;
    const-string v6, "opt_call_video"

    const/16 v7, 0x14

    if-ne p1, v7, :cond_b

    :goto_5
    invoke-virtual {v2, v6, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1032
    iget-object v4, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->service:Lcom/weirdvoice/api/ISipService;

    invoke-virtual {p2}, Lcom/weirdvoice/api/SipCallSession;->getCallId()I

    move-result v5

    invoke-interface {v4, v5, v2}, Lcom/weirdvoice/api/ISipService;->updateCallOptions(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_b
    move v4, v5

    .line 1031
    goto :goto_5

    .line 1037
    .end local v2    # "opts":Landroid/os/Bundle;
    :pswitch_d
    iget-object v4, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->service:Lcom/weirdvoice/api/ISipService;

    if-eqz v4, :cond_1

    .line 1038
    iget-object v4, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->service:Lcom/weirdvoice/api/ISipService;

    invoke-virtual {p2}, Lcom/weirdvoice/api/SipCallSession;->getCallId()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/weirdvoice/api/ISipService;->zrtpSASVerified(I)V

    goto/16 :goto_0

    .line 1043
    :pswitch_e
    iget-object v4, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->service:Lcom/weirdvoice/api/ISipService;

    if-eqz v4, :cond_1

    .line 1044
    iget-object v4, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->service:Lcom/weirdvoice/api/ISipService;

    invoke-virtual {p2}, Lcom/weirdvoice/api/SipCallSession;->getCallId()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/weirdvoice/api/ISipService;->zrtpSASRevoke(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 842
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_4
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_7
        :pswitch_c
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method public shouldActivateProximity()Z
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1333
    iget-object v4, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->lastMediaState:Lcom/weirdvoice/api/MediaState;

    if-eqz v4, :cond_2

    .line 1334
    iget-object v4, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->lastMediaState:Lcom/weirdvoice/api/MediaState;

    iget-boolean v4, v4, Lcom/weirdvoice/api/MediaState;->isBluetoothScoOn:Z

    if-eqz v4, :cond_1

    .line 1369
    :cond_0
    :goto_0
    return v5

    .line 1337
    :cond_1
    iget-object v4, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->lastMediaState:Lcom/weirdvoice/api/MediaState;

    iget-boolean v4, v4, Lcom/weirdvoice/api/MediaState;->isSpeakerphoneOn:Z

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->useAutoDetectSpeaker:Z

    if-eqz v4, :cond_0

    .line 1343
    :cond_2
    iget-object v4, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->callsInfo:[Lcom/weirdvoice/api/SipCallSession;

    if-eqz v4, :cond_0

    .line 1347
    const/4 v2, 0x1

    .line 1348
    .local v2, "isValidCallState":Z
    const/4 v1, 0x0

    .line 1349
    .local v1, "count":I
    iget-object v8, p0, Lcom/weirdvoice/ui/incall/InCallActivity;->callsInfo:[Lcom/weirdvoice/api/SipCallSession;

    array-length v9, v8

    move v7, v5

    :goto_1
    if-lt v7, v9, :cond_3

    .line 1365
    if-eqz v1, :cond_0

    move v5, v2

    .line 1369
    goto :goto_0

    .line 1349
    :cond_3
    aget-object v0, v8, v7

    .line 1350
    .local v0, "callInfo":Lcom/weirdvoice/api/SipCallSession;
    invoke-virtual {v0}, Lcom/weirdvoice/api/SipCallSession;->mediaHasVideo()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1353
    invoke-virtual {v0}, Lcom/weirdvoice/api/SipCallSession;->isAfterEnded()Z

    move-result v4

    if-nez v4, :cond_5

    .line 1354
    invoke-virtual {v0}, Lcom/weirdvoice/api/SipCallSession;->getCallState()I

    move-result v3

    .line 1357
    .local v3, "state":I
    const/4 v4, 0x5

    if-eq v3, v4, :cond_6

    .line 1358
    const/4 v4, 0x4

    if-eq v3, v4, :cond_6

    .line 1359
    if-eq v3, v6, :cond_6

    .line 1360
    const/4 v4, 0x3

    if-ne v3, v4, :cond_4

    invoke-virtual {v0}, Lcom/weirdvoice/api/SipCallSession;->isIncoming()Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_4
    move v4, v5

    :goto_2
    and-int/2addr v2, v4

    .line 1362
    add-int/lit8 v1, v1, 0x1

    .line 1349
    .end local v3    # "state":I
    :cond_5
    add-int/lit8 v4, v7, 0x1

    move v7, v4

    goto :goto_1

    .restart local v3    # "state":I
    :cond_6
    move v4, v6

    .line 1360
    goto :goto_2
.end method

.method public bridge synthetic startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-super/range {p0 .. p6}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    return-void
.end method

.method public bridge synthetic startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-super/range {p0 .. p7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void
.end method
