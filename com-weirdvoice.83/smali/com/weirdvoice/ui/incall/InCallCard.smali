.class public Lcom/weirdvoice/ui/incall/InCallCard;
.super Landroid/widget/FrameLayout;
.source "InCallCard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/actionbarsherlock/internal/view/menu/MenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/weirdvoice/ui/incall/InCallCard$ContactLoadedHandler;,
        Lcom/weirdvoice/ui/incall/InCallCard$LoadCallerInfoMessage;
    }
.end annotation


# static fields
.field private static final LOAD_CALLER_INFO:I = 0x0

.field private static final THIS_FILE:Ljava/lang/String; = "InCallCard"

.field private static maxRatio:F

.field private static minButtonRation:F

.field private static minRatio:F

.field private static final userHandler:Landroid/os/Handler;


# instance fields
.field private added:Z

.field private btnMenuBuilder:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

.field private cachedCanRecord:Z

.field private cachedInvState:I

.field private cachedIsHold:Z

.field private cachedIsRecording:Z

.field private cachedMediaState:I

.field private cachedRemoteUri:Ljava/lang/String;

.field private cachedVideo:Z

.field private cachedZrtpActive:Z

.field private cachedZrtpVerified:Z

.field private callInfo:Lcom/weirdvoice/api/SipCallSession;

.field private callSecureBar:Landroid/view/ViewGroup;

.field private callSecureText:Landroid/widget/TextView;

.field private callStatusText:Landroid/widget/TextView;

.field private canVideo:Z

.field private elapsedTime:Landroid/widget/Chronometer;

.field private endCallBar:Landroid/view/ViewGroup;

.field private final handler:Landroid/os/Handler;

.field private hasVideo:Z

.field private incallPlugins:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/weirdvoice/utils/ExtraPlugins$DynActivityPlugin;",
            ">;"
        }
    .end annotation
.end field

.field private mActionMenuPresenter:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;

.field private onTriggerListener:Lcom/weirdvoice/ui/incall/IOnCallActionTrigger;

.field private photo:Landroid/widget/ImageView;

.field private final postLayout:Ljava/lang/Runnable;

.field private prefs:Lcom/weirdvoice/utils/PreferencesProviderWrapper;

.field private remoteName:Landroid/widget/TextView;

.field private remoteSipAddress:Landroid/widget/TextView;

.field private renderView:Landroid/view/SurfaceView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 248
    const/high16 v0, 0x3f000000    # 0.5f

    sput v0, Lcom/weirdvoice/ui/incall/InCallCard;->minRatio:F

    .line 250
    const/high16 v0, 0x3fa00000    # 1.25f

    sput v0, Lcom/weirdvoice/ui/incall/InCallCard;->maxRatio:F

    .line 252
    const/high16 v0, 0x3f400000    # 0.75f

    sput v0, Lcom/weirdvoice/ui/incall/InCallCard;->minButtonRation:F

    .line 557
    new-instance v0, Lcom/weirdvoice/ui/incall/InCallCard$ContactLoadedHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/weirdvoice/ui/incall/InCallCard$ContactLoadedHandler;-><init>(Lcom/weirdvoice/ui/incall/InCallCard$ContactLoadedHandler;)V

    sput-object v0, Lcom/weirdvoice/ui/incall/InCallCard;->userHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 104
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    const-string v1, ""

    iput-object v1, p0, Lcom/weirdvoice/ui/incall/InCallCard;->cachedRemoteUri:Ljava/lang/String;

    .line 79
    const/4 v1, -0x1

    iput v1, p0, Lcom/weirdvoice/ui/incall/InCallCard;->cachedInvState:I

    .line 80
    const/4 v1, 0x4

    iput v1, p0, Lcom/weirdvoice/ui/incall/InCallCard;->cachedMediaState:I

    .line 81
    iput-boolean v2, p0, Lcom/weirdvoice/ui/incall/InCallCard;->cachedCanRecord:Z

    .line 82
    iput-boolean v2, p0, Lcom/weirdvoice/ui/incall/InCallCard;->cachedIsRecording:Z

    .line 83
    iput-boolean v2, p0, Lcom/weirdvoice/ui/incall/InCallCard;->cachedIsHold:Z

    .line 84
    iput-boolean v2, p0, Lcom/weirdvoice/ui/incall/InCallCard;->cachedVideo:Z

    .line 93
    iput-boolean v2, p0, Lcom/weirdvoice/ui/incall/InCallCard;->hasVideo:Z

    .line 94
    iput-boolean v2, p0, Lcom/weirdvoice/ui/incall/InCallCard;->canVideo:Z

    .line 144
    iput-boolean v2, p0, Lcom/weirdvoice/ui/incall/InCallCard;->added:Z

    .line 255
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/weirdvoice/ui/incall/InCallCard;->handler:Landroid/os/Handler;

    .line 256
    new-instance v1, Lcom/weirdvoice/ui/incall/InCallCard$1;

    invoke-direct {v1, p0}, Lcom/weirdvoice/ui/incall/InCallCard$1;-><init>(Lcom/weirdvoice/ui/incall/InCallCard;)V

    iput-object v1, p0, Lcom/weirdvoice/ui/incall/InCallCard;->postLayout:Ljava/lang/Runnable;

    .line 106
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 107
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f030041

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 109
    new-instance v1, Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    invoke-direct {v1, p1}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/weirdvoice/ui/incall/InCallCard;->prefs:Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    .line 110
    iget-object v1, p0, Lcom/weirdvoice/ui/incall/InCallCard;->prefs:Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    const-string v2, "use_video"

    invoke-virtual {v1, v2}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/weirdvoice/ui/incall/InCallCard;->canVideo:Z

    .line 111
    invoke-direct {p0}, Lcom/weirdvoice/ui/incall/InCallCard;->initControllerView()V

    .line 113
    const-string v1, "com.weirdvoice.sipcall.action.HANDLE_CALL_PLUGIN"

    invoke-static {p1, v1}, Lcom/weirdvoice/utils/ExtraPlugins;->getDynActivityPlugins(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/weirdvoice/ui/incall/InCallCard;->incallPlugins:Ljava/util/Map;

    .line 114
    return-void
.end method

.method static synthetic access$0()F
    .locals 1

    .prologue
    .line 248
    sget v0, Lcom/weirdvoice/ui/incall/InCallCard;->minRatio:F

    return v0
.end method

.method static synthetic access$1()F
    .locals 1

    .prologue
    .line 250
    sget v0, Lcom/weirdvoice/ui/incall/InCallCard;->maxRatio:F

    return v0
.end method

.method static synthetic access$2()F
    .locals 1

    .prologue
    .line 252
    sget v0, Lcom/weirdvoice/ui/incall/InCallCard;->minButtonRation:F

    return v0
.end method

.method static synthetic access$3(Lcom/weirdvoice/ui/incall/InCallCard;)Z
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/weirdvoice/ui/incall/InCallCard;->hasVideo:Z

    return v0
.end method

.method static synthetic access$4(Lcom/weirdvoice/ui/incall/InCallCard;)V
    .locals 0

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/weirdvoice/ui/incall/InCallCard;->updateMenuView()V

    return-void
.end method

.method static synthetic access$5(Lcom/weirdvoice/ui/incall/InCallCard;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/InCallCard;->photo:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$6(Lcom/weirdvoice/ui/incall/InCallCard;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/InCallCard;->remoteName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$7(Lcom/weirdvoice/ui/incall/InCallCard;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/InCallCard;->cachedRemoteUri:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 557
    sget-object v0, Lcom/weirdvoice/ui/incall/InCallCard;->userHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private dispatchTriggerEvent(I)V
    .locals 2
    .param p1, "whichHandle"    # I

    .prologue
    .line 601
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/InCallCard;->onTriggerListener:Lcom/weirdvoice/ui/incall/IOnCallActionTrigger;

    if-eqz v0, :cond_0

    .line 602
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/InCallCard;->onTriggerListener:Lcom/weirdvoice/ui/incall/IOnCallActionTrigger;

    iget-object v1, p0, Lcom/weirdvoice/ui/incall/InCallCard;->callInfo:Lcom/weirdvoice/api/SipCallSession;

    invoke-interface {v0, p1, v1}, Lcom/weirdvoice/ui/incall/IOnCallActionTrigger;->onTrigger(ILcom/weirdvoice/api/SipCallSession;)V

    .line 604
    :cond_0
    return-void
.end method

.method private initControllerView()V
    .locals 4

    .prologue
    .line 117
    const v2, 0x7f0b00e4

    invoke-virtual {p0, v2}, Lcom/weirdvoice/ui/incall/InCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/weirdvoice/ui/incall/InCallCard;->photo:Landroid/widget/ImageView;

    .line 118
    const v2, 0x7f0b00e7

    invoke-virtual {p0, v2}, Lcom/weirdvoice/ui/incall/InCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/weirdvoice/ui/incall/InCallCard;->remoteName:Landroid/widget/TextView;

    .line 119
    const v2, 0x7f0b00e8

    invoke-virtual {p0, v2}, Lcom/weirdvoice/ui/incall/InCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/weirdvoice/ui/incall/InCallCard;->remoteSipAddress:Landroid/widget/TextView;

    .line 120
    const v2, 0x7f0b00e9

    invoke-virtual {p0, v2}, Lcom/weirdvoice/ui/incall/InCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Chronometer;

    iput-object v2, p0, Lcom/weirdvoice/ui/incall/InCallCard;->elapsedTime:Landroid/widget/Chronometer;

    .line 121
    const v2, 0x7f0b00ea

    invoke-virtual {p0, v2}, Lcom/weirdvoice/ui/incall/InCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/weirdvoice/ui/incall/InCallCard;->callStatusText:Landroid/widget/TextView;

    .line 122
    const v2, 0x7f0b00eb

    invoke-virtual {p0, v2}, Lcom/weirdvoice/ui/incall/InCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/weirdvoice/ui/incall/InCallCard;->callSecureBar:Landroid/view/ViewGroup;

    .line 123
    const v2, 0x7f0b00ed

    invoke-virtual {p0, v2}, Lcom/weirdvoice/ui/incall/InCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/weirdvoice/ui/incall/InCallCard;->callSecureText:Landroid/widget/TextView;

    .line 124
    const v2, 0x7f0b00ee

    invoke-virtual {p0, v2}, Lcom/weirdvoice/ui/incall/InCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/weirdvoice/ui/incall/InCallCard;->endCallBar:Landroid/view/ViewGroup;

    .line 128
    const v2, 0x7f0b00ef

    invoke-virtual {p0, v2}, Lcom/weirdvoice/ui/incall/InCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 129
    .local v0, "btn":Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    new-instance v2, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    invoke-virtual {p0}, Lcom/weirdvoice/ui/incall/InCallCard;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/weirdvoice/ui/incall/InCallCard;->btnMenuBuilder:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    .line 132
    iget-object v2, p0, Lcom/weirdvoice/ui/incall/InCallCard;->btnMenuBuilder:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    invoke-virtual {v2, p0}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->setCallback(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder$Callback;)V

    .line 133
    new-instance v1, Lcom/actionbarsherlock/view/MenuInflater;

    invoke-virtual {p0}, Lcom/weirdvoice/ui/incall/InCallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/actionbarsherlock/view/MenuInflater;-><init>(Landroid/content/Context;)V

    .line 134
    .local v1, "inflater":Lcom/actionbarsherlock/view/MenuInflater;
    const v2, 0x7f0f0002

    iget-object v3, p0, Lcom/weirdvoice/ui/incall/InCallCard;->btnMenuBuilder:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    invoke-virtual {v1, v2, v3}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 136
    new-instance v2, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {p0}, Lcom/weirdvoice/ui/incall/InCallCard;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/weirdvoice/ui/incall/InCallCard;->mActionMenuPresenter:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;

    .line 137
    iget-object v2, p0, Lcom/weirdvoice/ui/incall/InCallCard;->mActionMenuPresenter:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->setReserveOverflow(Z)V

    .line 139
    iget-object v2, p0, Lcom/weirdvoice/ui/incall/InCallCard;->btnMenuBuilder:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    iget-object v3, p0, Lcom/weirdvoice/ui/incall/InCallCard;->mActionMenuPresenter:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v2, v3}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/actionbarsherlock/internal/view/menu/MenuPresenter;)V

    .line 141
    invoke-direct {p0}, Lcom/weirdvoice/ui/incall/InCallCard;->updateMenuView()V

    .line 142
    return-void
.end method

.method private setVisibleWithFade(Landroid/view/View;Z)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "in"    # Z

    .prologue
    const/16 v2, 0x8

    .line 616
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    if-eqz p2, :cond_1

    .line 629
    :cond_0
    :goto_0
    return-void

    .line 620
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-ne v1, v2, :cond_2

    if-eqz p2, :cond_0

    .line 625
    :cond_2
    invoke-virtual {p0}, Lcom/weirdvoice/ui/incall/InCallCard;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz p2, :cond_3

    const/high16 v1, 0x10a0000

    :goto_1
    invoke-static {v3, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 626
    .local v0, "anim":Landroid/view/animation/Animation;
    const-wide/16 v4, 0x3e8

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 627
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 628
    if-eqz p2, :cond_4

    const/4 v1, 0x0

    :goto_2
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 625
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :cond_3
    const v1, 0x10a0001

    goto :goto_1

    .restart local v0    # "anim":Landroid/view/animation/Animation;
    :cond_4
    move v1, v2

    .line 628
    goto :goto_2
.end method

.method private updateCallStateBar()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 394
    const/4 v0, -0x1

    .line 396
    .local v0, "stateText":I
    iget-object v1, p0, Lcom/weirdvoice/ui/incall/InCallCard;->callInfo:Lcom/weirdvoice/api/SipCallSession;

    invoke-virtual {v1}, Lcom/weirdvoice/api/SipCallSession;->isAfterEnded()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 398
    const v0, 0x7f0c0044

    .line 411
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/weirdvoice/ui/incall/InCallCard;->callInfo:Lcom/weirdvoice/api/SipCallSession;

    invoke-virtual {v1}, Lcom/weirdvoice/api/SipCallSession;->isBeforeConfirmed()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/weirdvoice/ui/incall/InCallCard;->callInfo:Lcom/weirdvoice/api/SipCallSession;

    invoke-virtual {v1}, Lcom/weirdvoice/api/SipCallSession;->isIncoming()Z

    move-result v1

    if-nez v1, :cond_2

    .line 412
    :cond_1
    iget-object v1, p0, Lcom/weirdvoice/ui/incall/InCallCard;->callInfo:Lcom/weirdvoice/api/SipCallSession;

    invoke-virtual {v1}, Lcom/weirdvoice/api/SipCallSession;->isAfterEnded()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 413
    :cond_2
    iget-object v1, p0, Lcom/weirdvoice/ui/incall/InCallCard;->endCallBar:Landroid/view/ViewGroup;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 418
    :goto_1
    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    .line 419
    iget-object v1, p0, Lcom/weirdvoice/ui/incall/InCallCard;->callStatusText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 420
    iget-object v1, p0, Lcom/weirdvoice/ui/incall/InCallCard;->callStatusText:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/weirdvoice/ui/incall/InCallCard;->setVisibleWithFade(Landroid/view/View;Z)V

    .line 426
    :goto_2
    return-void

    .line 399
    :cond_3
    iget-object v1, p0, Lcom/weirdvoice/ui/incall/InCallCard;->callInfo:Lcom/weirdvoice/api/SipCallSession;

    invoke-virtual {v1}, Lcom/weirdvoice/api/SipCallSession;->isLocalHeld()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/weirdvoice/ui/incall/InCallCard;->callInfo:Lcom/weirdvoice/api/SipCallSession;

    invoke-virtual {v1}, Lcom/weirdvoice/api/SipCallSession;->isRemoteHeld()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 401
    :cond_4
    const v0, 0x7f0c004d

    .line 402
    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/weirdvoice/ui/incall/InCallCard;->callInfo:Lcom/weirdvoice/api/SipCallSession;

    invoke-virtual {v1}, Lcom/weirdvoice/api/SipCallSession;->isBeforeConfirmed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 403
    iget-object v1, p0, Lcom/weirdvoice/ui/incall/InCallCard;->callInfo:Lcom/weirdvoice/api/SipCallSession;

    invoke-virtual {v1}, Lcom/weirdvoice/api/SipCallSession;->isIncoming()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 405
    const v0, 0x7f0c0046

    .line 406
    goto :goto_0

    .line 408
    :cond_6
    const v0, 0x7f0c0041

    goto :goto_0

    .line 415
    :cond_7
    iget-object v1, p0, Lcom/weirdvoice/ui/incall/InCallCard;->endCallBar:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    .line 422
    :cond_8
    iget-object v1, p0, Lcom/weirdvoice/ui/incall/InCallCard;->callStatusText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v3}, Lcom/weirdvoice/ui/incall/InCallCard;->setVisibleWithFade(Landroid/view/View;Z)V

    goto :goto_2
.end method

.method private updateElapsedTimer()V
    .locals 11

    .prologue
    const/16 v10, 0x8

    const/4 v5, 0x0

    .line 492
    iget-object v6, p0, Lcom/weirdvoice/ui/incall/InCallCard;->callInfo:Lcom/weirdvoice/api/SipCallSession;

    if-nez v6, :cond_0

    .line 493
    iget-object v6, p0, Lcom/weirdvoice/ui/incall/InCallCard;->elapsedTime:Landroid/widget/Chronometer;

    invoke-virtual {v6}, Landroid/widget/Chronometer;->stop()V

    .line 494
    iget-object v6, p0, Lcom/weirdvoice/ui/incall/InCallCard;->elapsedTime:Landroid/widget/Chronometer;

    invoke-virtual {v6, v5}, Landroid/widget/Chronometer;->setVisibility(I)V

    .line 545
    :goto_0
    return-void

    .line 498
    :cond_0
    iget-object v6, p0, Lcom/weirdvoice/ui/incall/InCallCard;->elapsedTime:Landroid/widget/Chronometer;

    iget-object v7, p0, Lcom/weirdvoice/ui/incall/InCallCard;->callInfo:Lcom/weirdvoice/api/SipCallSession;

    invoke-virtual {v7}, Lcom/weirdvoice/api/SipCallSession;->getConnectStart()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Landroid/widget/Chronometer;->setBase(J)V

    .line 500
    iget-object v6, p0, Lcom/weirdvoice/ui/incall/InCallCard;->callInfo:Lcom/weirdvoice/api/SipCallSession;

    invoke-virtual {v6}, Lcom/weirdvoice/api/SipCallSession;->getTransportSecureLevel()I

    move-result v3

    .line 501
    .local v3, "sigSecureLevel":I
    iget-object v6, p0, Lcom/weirdvoice/ui/incall/InCallCard;->callInfo:Lcom/weirdvoice/api/SipCallSession;

    invoke-virtual {v6}, Lcom/weirdvoice/api/SipCallSession;->isMediaSecure()Z

    move-result v6

    if-nez v6, :cond_4

    if-gtz v3, :cond_4

    move v0, v5

    .line 502
    .local v0, "isSecure":Z
    :goto_1
    iget-object v6, p0, Lcom/weirdvoice/ui/incall/InCallCard;->callSecureBar:Landroid/view/ViewGroup;

    invoke-direct {p0, v6, v0}, Lcom/weirdvoice/ui/incall/InCallCard;->setVisibleWithFade(Landroid/view/View;Z)V

    .line 503
    const-string v1, ""

    .line 504
    .local v1, "secureMsg":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 505
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 506
    .local v2, "secureTxtList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget v6, Lcom/weirdvoice/api/SipCallSession;->TRANSPORT_SECURE_TO_SERVER:I

    if-ne v3, v6, :cond_5

    .line 507
    invoke-virtual {p0}, Lcom/weirdvoice/ui/incall/InCallCard;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0c0053

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 511
    :cond_1
    :goto_2
    iget-object v6, p0, Lcom/weirdvoice/ui/incall/InCallCard;->callInfo:Lcom/weirdvoice/api/SipCallSession;

    invoke-virtual {v6}, Lcom/weirdvoice/api/SipCallSession;->isMediaSecure()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 512
    iget-object v6, p0, Lcom/weirdvoice/ui/incall/InCallCard;->callInfo:Lcom/weirdvoice/api/SipCallSession;

    invoke-virtual {v6}, Lcom/weirdvoice/api/SipCallSession;->getMediaSecureInfo()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 514
    :cond_2
    const-string v6, "\r\n"

    invoke-static {v6, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    .line 516
    .end local v2    # "secureTxtList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    iget-object v6, p0, Lcom/weirdvoice/ui/incall/InCallCard;->callSecureText:Landroid/widget/TextView;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 518
    iget-object v6, p0, Lcom/weirdvoice/ui/incall/InCallCard;->callInfo:Lcom/weirdvoice/api/SipCallSession;

    invoke-virtual {v6}, Lcom/weirdvoice/api/SipCallSession;->getCallState()I

    move-result v4

    .line 519
    .local v4, "state":I
    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 538
    :pswitch_0
    iget-object v6, p0, Lcom/weirdvoice/ui/incall/InCallCard;->elapsedTime:Landroid/widget/Chronometer;

    invoke-virtual {v6}, Landroid/widget/Chronometer;->stop()V

    .line 539
    iget-object v6, p0, Lcom/weirdvoice/ui/incall/InCallCard;->elapsedTime:Landroid/widget/Chronometer;

    invoke-virtual {v6, v5}, Landroid/widget/Chronometer;->setVisibility(I)V

    goto :goto_0

    .line 501
    .end local v0    # "isSecure":Z
    .end local v1    # "secureMsg":Ljava/lang/String;
    .end local v4    # "state":I
    :cond_4
    const/4 v0, 0x1

    goto :goto_1

    .line 508
    .restart local v0    # "isSecure":Z
    .restart local v1    # "secureMsg":Ljava/lang/String;
    .restart local v2    # "secureTxtList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    sget v6, Lcom/weirdvoice/api/SipCallSession;->TRANSPORT_SECURE_FULL:I

    if-ne v3, v6, :cond_1

    .line 509
    invoke-virtual {p0}, Lcom/weirdvoice/ui/incall/InCallCard;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0c0054

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 524
    .end local v2    # "secureTxtList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "state":I
    :pswitch_1
    iget-object v5, p0, Lcom/weirdvoice/ui/incall/InCallCard;->elapsedTime:Landroid/widget/Chronometer;

    invoke-virtual {v5, v10}, Landroid/widget/Chronometer;->setVisibility(I)V

    goto/16 :goto_0

    .line 527
    :pswitch_2
    const-string v6, "InCallCard"

    const-string v7, "we start the timer now "

    invoke-static {v6, v7}, Lcom/weirdvoice/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    iget-object v6, p0, Lcom/weirdvoice/ui/incall/InCallCard;->callInfo:Lcom/weirdvoice/api/SipCallSession;

    invoke-virtual {v6}, Lcom/weirdvoice/api/SipCallSession;->isLocalHeld()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 529
    iget-object v5, p0, Lcom/weirdvoice/ui/incall/InCallCard;->elapsedTime:Landroid/widget/Chronometer;

    invoke-virtual {v5}, Landroid/widget/Chronometer;->stop()V

    .line 530
    iget-object v5, p0, Lcom/weirdvoice/ui/incall/InCallCard;->elapsedTime:Landroid/widget/Chronometer;

    invoke-virtual {v5, v10}, Landroid/widget/Chronometer;->setVisibility(I)V

    goto/16 :goto_0

    .line 532
    :cond_6
    iget-object v6, p0, Lcom/weirdvoice/ui/incall/InCallCard;->elapsedTime:Landroid/widget/Chronometer;

    invoke-virtual {v6}, Landroid/widget/Chronometer;->start()V

    .line 533
    iget-object v6, p0, Lcom/weirdvoice/ui/incall/InCallCard;->elapsedTime:Landroid/widget/Chronometer;

    invoke-virtual {v6, v5}, Landroid/widget/Chronometer;->setVisibility(I)V

    goto/16 :goto_0

    .line 519
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private updateMenuView()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 146
    invoke-virtual {p0}, Lcom/weirdvoice/ui/incall/InCallCard;->getWidth()I

    move-result v3

    .line 147
    .local v3, "w":I
    if-gtz v3, :cond_0

    .line 148
    invoke-virtual {p0}, Lcom/weirdvoice/ui/incall/InCallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v3, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 150
    :cond_0
    add-int/lit8 v3, v3, -0x64

    .line 151
    iget-boolean v4, p0, Lcom/weirdvoice/ui/incall/InCallCard;->added:Z

    if-nez v4, :cond_1

    .line 152
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 153
    const/4 v4, -0x1

    const/4 v5, -0x2

    .line 152
    invoke-direct {v0, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 154
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const v4, 0x7f0b00e5

    invoke-virtual {p0, v4}, Lcom/weirdvoice/ui/incall/InCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 155
    .local v2, "menuViewWrapper":Landroid/view/ViewGroup;
    iget-object v4, p0, Lcom/weirdvoice/ui/incall/InCallCard;->mActionMenuPresenter:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v4, v6}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->setReserveOverflow(Z)V

    .line 156
    iget-object v4, p0, Lcom/weirdvoice/ui/incall/InCallCard;->mActionMenuPresenter:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v4, v3, v6}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->setWidthLimit(IZ)V

    .line 158
    iget-object v4, p0, Lcom/weirdvoice/ui/incall/InCallCard;->mActionMenuPresenter:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;

    const/16 v5, 0x14

    invoke-virtual {v4, v5}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->setItemLimit(I)V

    .line 159
    iget-object v4, p0, Lcom/weirdvoice/ui/incall/InCallCard;->mActionMenuPresenter:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v4, v2}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/actionbarsherlock/internal/view/menu/MenuView;

    move-result-object v1

    check-cast v1, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;

    .line 160
    .local v1, "menuView":Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;
    invoke-static {}, Lcom/actionbarsherlock/internal/utils/UtilityWrapper;->getInstance()Lcom/actionbarsherlock/internal/utils/UtilityWrapper;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Lcom/actionbarsherlock/internal/utils/UtilityWrapper;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 161
    invoke-virtual {v2, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    iput-boolean v6, p0, Lcom/weirdvoice/ui/incall/InCallCard;->added:Z

    .line 167
    .end local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v1    # "menuView":Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;
    .end local v2    # "menuViewWrapper":Landroid/view/ViewGroup;
    :goto_0
    return-void

    .line 164
    :cond_1
    iget-object v4, p0, Lcom/weirdvoice/ui/incall/InCallCard;->mActionMenuPresenter:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v4, v3, v6}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->setWidthLimit(IZ)V

    .line 165
    iget-object v4, p0, Lcom/weirdvoice/ui/incall/InCallCard;->mActionMenuPresenter:Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v4, v6}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->updateMenuView(Z)V

    goto :goto_0
.end method

.method private updateQuickActions()V
    .locals 14

    .prologue
    const v13, 0x7f0b005e

    const/4 v12, 0x3

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 303
    iget v9, p0, Lcom/weirdvoice/ui/incall/InCallCard;->cachedInvState:I

    iget-object v10, p0, Lcom/weirdvoice/ui/incall/InCallCard;->callInfo:Lcom/weirdvoice/api/SipCallSession;

    invoke-virtual {v10}, Lcom/weirdvoice/api/SipCallSession;->getCallState()I

    move-result v10

    if-ne v9, v10, :cond_1

    .line 304
    iget v9, p0, Lcom/weirdvoice/ui/incall/InCallCard;->cachedMediaState:I

    iget-object v10, p0, Lcom/weirdvoice/ui/incall/InCallCard;->callInfo:Lcom/weirdvoice/api/SipCallSession;

    invoke-virtual {v10}, Lcom/weirdvoice/api/SipCallSession;->getMediaStatus()I

    move-result v10

    if-ne v9, v10, :cond_1

    .line 305
    iget-boolean v9, p0, Lcom/weirdvoice/ui/incall/InCallCard;->cachedIsRecording:Z

    iget-object v10, p0, Lcom/weirdvoice/ui/incall/InCallCard;->callInfo:Lcom/weirdvoice/api/SipCallSession;

    invoke-virtual {v10}, Lcom/weirdvoice/api/SipCallSession;->isRecording()Z

    move-result v10

    if-ne v9, v10, :cond_1

    .line 306
    iget-boolean v9, p0, Lcom/weirdvoice/ui/incall/InCallCard;->cachedCanRecord:Z

    iget-object v10, p0, Lcom/weirdvoice/ui/incall/InCallCard;->callInfo:Lcom/weirdvoice/api/SipCallSession;

    invoke-virtual {v10}, Lcom/weirdvoice/api/SipCallSession;->canRecord()Z

    move-result v10

    if-ne v9, v10, :cond_1

    .line 307
    iget-boolean v9, p0, Lcom/weirdvoice/ui/incall/InCallCard;->cachedIsHold:Z

    iget-object v10, p0, Lcom/weirdvoice/ui/incall/InCallCard;->callInfo:Lcom/weirdvoice/api/SipCallSession;

    invoke-virtual {v10}, Lcom/weirdvoice/api/SipCallSession;->isLocalHeld()Z

    move-result v10

    if-ne v9, v10, :cond_1

    .line 308
    iget-boolean v9, p0, Lcom/weirdvoice/ui/incall/InCallCard;->cachedVideo:Z

    iget-object v10, p0, Lcom/weirdvoice/ui/incall/InCallCard;->callInfo:Lcom/weirdvoice/api/SipCallSession;

    invoke-virtual {v10}, Lcom/weirdvoice/api/SipCallSession;->mediaHasVideo()Z

    move-result v10

    if-ne v9, v10, :cond_1

    .line 309
    iget-boolean v9, p0, Lcom/weirdvoice/ui/incall/InCallCard;->cachedZrtpActive:Z

    iget-object v10, p0, Lcom/weirdvoice/ui/incall/InCallCard;->callInfo:Lcom/weirdvoice/api/SipCallSession;

    invoke-virtual {v10}, Lcom/weirdvoice/api/SipCallSession;->getHasZrtp()Z

    move-result v10

    if-ne v9, v10, :cond_1

    .line 310
    iget-boolean v9, p0, Lcom/weirdvoice/ui/incall/InCallCard;->cachedZrtpVerified:Z

    iget-object v10, p0, Lcom/weirdvoice/ui/incall/InCallCard;->callInfo:Lcom/weirdvoice/api/SipCallSession;

    invoke-virtual {v10}, Lcom/weirdvoice/api/SipCallSession;->isZrtpSASVerified()Z

    move-result v10

    if-ne v9, v10, :cond_1

    .line 312
    const-string v7, "InCallCard"

    const-string v8, "Nothing changed, ignore this update"

    invoke-static {v7, v8}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    :cond_0
    return-void

    .line 316
    :cond_1
    iget-object v9, p0, Lcom/weirdvoice/ui/incall/InCallCard;->callInfo:Lcom/weirdvoice/api/SipCallSession;

    invoke-virtual {v9}, Lcom/weirdvoice/api/SipCallSession;->isBeforeConfirmed()Z

    move-result v9

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/weirdvoice/ui/incall/InCallCard;->callInfo:Lcom/weirdvoice/api/SipCallSession;

    invoke-virtual {v9}, Lcom/weirdvoice/api/SipCallSession;->isIncoming()Z

    move-result v9

    if-eqz v9, :cond_8

    move v0, v7

    .line 317
    .local v0, "active":Z
    :goto_0
    iget-object v9, p0, Lcom/weirdvoice/ui/incall/InCallCard;->btnMenuBuilder:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    const v10, 0x7f0b0056

    invoke-virtual {v9, v10}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v9

    invoke-interface {v9, v0}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 318
    iget-object v9, p0, Lcom/weirdvoice/ui/incall/InCallCard;->btnMenuBuilder:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    const v10, 0x7f0b0054

    invoke-virtual {v9, v10}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v9

    invoke-interface {v9, v0}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 319
    iget-object v9, p0, Lcom/weirdvoice/ui/incall/InCallCard;->btnMenuBuilder:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    const v10, 0x7f0b0163

    invoke-virtual {v9, v10}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v9

    invoke-interface {v9, v0}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 321
    iget-object v9, p0, Lcom/weirdvoice/ui/incall/InCallCard;->callInfo:Lcom/weirdvoice/api/SipCallSession;

    invoke-virtual {v9}, Lcom/weirdvoice/api/SipCallSession;->isAfterEnded()Z

    move-result v9

    if-nez v9, :cond_9

    .line 322
    iget-object v9, p0, Lcom/weirdvoice/ui/incall/InCallCard;->callInfo:Lcom/weirdvoice/api/SipCallSession;

    invoke-virtual {v9}, Lcom/weirdvoice/api/SipCallSession;->isBeforeConfirmed()Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/weirdvoice/ui/incall/InCallCard;->callInfo:Lcom/weirdvoice/api/SipCallSession;

    invoke-virtual {v9}, Lcom/weirdvoice/api/SipCallSession;->isIncoming()Z

    move-result v9

    if-nez v9, :cond_9

    iget-object v9, p0, Lcom/weirdvoice/ui/incall/InCallCard;->callInfo:Lcom/weirdvoice/api/SipCallSession;

    .line 323
    invoke-virtual {v9}, Lcom/weirdvoice/api/SipCallSession;->isBeforeConfirmed()Z

    move-result v9

    if-eqz v9, :cond_9

    :cond_2
    move v0, v7

    .line 324
    :goto_1
    iget-object v9, p0, Lcom/weirdvoice/ui/incall/InCallCard;->btnMenuBuilder:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    const v10, 0x7f0b0164

    invoke-virtual {v9, v10}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v9

    invoke-interface {v9, v0}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 326
    iget-object v9, p0, Lcom/weirdvoice/ui/incall/InCallCard;->callInfo:Lcom/weirdvoice/api/SipCallSession;

    invoke-virtual {v9}, Lcom/weirdvoice/api/SipCallSession;->isAfterEnded()Z

    move-result v9

    if-nez v9, :cond_a

    iget-object v9, p0, Lcom/weirdvoice/ui/incall/InCallCard;->callInfo:Lcom/weirdvoice/api/SipCallSession;

    invoke-virtual {v9}, Lcom/weirdvoice/api/SipCallSession;->isBeforeConfirmed()Z

    move-result v9

    if-nez v9, :cond_a

    move v0, v7

    .line 327
    :goto_2
    iget-object v9, p0, Lcom/weirdvoice/ui/incall/InCallCard;->btnMenuBuilder:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    const v10, 0x7f0b0165

    invoke-virtual {v9, v10}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v9

    invoke-interface {v9, v8}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 328
    iget-object v9, p0, Lcom/weirdvoice/ui/incall/InCallCard;->btnMenuBuilder:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    const v10, 0x7f0b0166

    invoke-virtual {v9, v10}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v9

    invoke-interface {v9, v8}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 329
    iget-object v9, p0, Lcom/weirdvoice/ui/incall/InCallCard;->btnMenuBuilder:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    const v10, 0x7f0b0167

    invoke-virtual {v9, v10}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v9

    invoke-interface {v9, v0}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v10

    .line 330
    iget-object v9, p0, Lcom/weirdvoice/ui/incall/InCallCard;->callInfo:Lcom/weirdvoice/api/SipCallSession;

    invoke-virtual {v9}, Lcom/weirdvoice/api/SipCallSession;->isLocalHeld()Z

    move-result v9

    if-eqz v9, :cond_b

    const v9, 0x7f0c004e

    :goto_3
    invoke-interface {v10, v9}, Lcom/actionbarsherlock/view/MenuItem;->setTitle(I)Lcom/actionbarsherlock/view/MenuItem;

    .line 331
    iget-object v9, p0, Lcom/weirdvoice/ui/incall/InCallCard;->btnMenuBuilder:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    const v10, 0x7f0b016b

    invoke-virtual {v9, v10}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v10

    if-eqz v0, :cond_c

    iget-boolean v9, p0, Lcom/weirdvoice/ui/incall/InCallCard;->canVideo:Z

    if-eqz v9, :cond_c

    iget-object v9, p0, Lcom/weirdvoice/ui/incall/InCallCard;->callInfo:Lcom/weirdvoice/api/SipCallSession;

    invoke-virtual {v9}, Lcom/weirdvoice/api/SipCallSession;->mediaHasVideo()Z

    move-result v9

    if-nez v9, :cond_c

    move v9, v7

    :goto_4
    invoke-interface {v10, v9}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 335
    iget-object v9, p0, Lcom/weirdvoice/ui/incall/InCallCard;->callInfo:Lcom/weirdvoice/api/SipCallSession;

    invoke-virtual {v9}, Lcom/weirdvoice/api/SipCallSession;->isActive()Z

    move-result v0

    .line 336
    iget-object v9, p0, Lcom/weirdvoice/ui/incall/InCallCard;->callInfo:Lcom/weirdvoice/api/SipCallSession;

    invoke-virtual {v9}, Lcom/weirdvoice/api/SipCallSession;->getMediaStatus()I

    move-result v9

    if-eq v9, v7, :cond_d

    iget-object v9, p0, Lcom/weirdvoice/ui/incall/InCallCard;->callInfo:Lcom/weirdvoice/api/SipCallSession;

    invoke-virtual {v9}, Lcom/weirdvoice/api/SipCallSession;->getMediaStatus()I

    move-result v9

    if-eq v9, v12, :cond_d

    move v9, v8

    :goto_5
    and-int/2addr v0, v9

    .line 337
    iget-object v9, p0, Lcom/weirdvoice/ui/incall/InCallCard;->btnMenuBuilder:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    const v10, 0x7f0b016a

    invoke-virtual {v9, v10}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v9

    invoke-interface {v9, v0}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 340
    iget-object v9, p0, Lcom/weirdvoice/ui/incall/InCallCard;->callInfo:Lcom/weirdvoice/api/SipCallSession;

    invoke-virtual {v9}, Lcom/weirdvoice/api/SipCallSession;->isAfterEnded()Z

    move-result v9

    if-eqz v9, :cond_e

    move v0, v8

    .line 341
    :goto_6
    iget-object v9, p0, Lcom/weirdvoice/ui/incall/InCallCard;->btnMenuBuilder:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    const v10, 0x7f0b016c

    invoke-virtual {v9, v10}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v9

    invoke-interface {v9, v8}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 344
    invoke-static {}, Lcom/weirdvoice/utils/CustomDistribution;->supportCallRecord()Z

    move-result v0

    .line 345
    iget-object v9, p0, Lcom/weirdvoice/ui/incall/InCallCard;->callInfo:Lcom/weirdvoice/api/SipCallSession;

    invoke-virtual {v9}, Lcom/weirdvoice/api/SipCallSession;->isRecording()Z

    move-result v9

    if-nez v9, :cond_3

    iget-object v9, p0, Lcom/weirdvoice/ui/incall/InCallCard;->callInfo:Lcom/weirdvoice/api/SipCallSession;

    invoke-virtual {v9}, Lcom/weirdvoice/api/SipCallSession;->canRecord()Z

    move-result v9

    if-nez v9, :cond_3

    .line 346
    const/4 v0, 0x0

    .line 348
    :cond_3
    iget-object v9, p0, Lcom/weirdvoice/ui/incall/InCallCard;->callInfo:Lcom/weirdvoice/api/SipCallSession;

    invoke-virtual {v9}, Lcom/weirdvoice/api/SipCallSession;->isAfterEnded()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 349
    const/4 v0, 0x0

    .line 351
    :cond_4
    iget-object v9, p0, Lcom/weirdvoice/ui/incall/InCallCard;->btnMenuBuilder:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    const v10, 0x7f0b0168

    invoke-virtual {v9, v10}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v9

    invoke-interface {v9, v0}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v10

    .line 352
    iget-object v9, p0, Lcom/weirdvoice/ui/incall/InCallCard;->callInfo:Lcom/weirdvoice/api/SipCallSession;

    invoke-virtual {v9}, Lcom/weirdvoice/api/SipCallSession;->isRecording()Z

    move-result v9

    if-eqz v9, :cond_f

    const v9, 0x7f0c004a

    .line 351
    :goto_7
    invoke-interface {v10, v9}, Lcom/actionbarsherlock/view/MenuItem;->setTitle(I)Lcom/actionbarsherlock/view/MenuItem;

    .line 355
    iget-object v9, p0, Lcom/weirdvoice/ui/incall/InCallCard;->callInfo:Lcom/weirdvoice/api/SipCallSession;

    invoke-virtual {v9}, Lcom/weirdvoice/api/SipCallSession;->getHasZrtp()Z

    move-result v9

    if-eqz v9, :cond_10

    iget-object v9, p0, Lcom/weirdvoice/ui/incall/InCallCard;->callInfo:Lcom/weirdvoice/api/SipCallSession;

    invoke-virtual {v9}, Lcom/weirdvoice/api/SipCallSession;->isAfterEnded()Z

    move-result v9

    if-nez v9, :cond_10

    move v0, v7

    .line 356
    :goto_8
    iget-object v7, p0, Lcom/weirdvoice/ui/incall/InCallCard;->btnMenuBuilder:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    const v9, 0x7f0b0169

    invoke-virtual {v7, v9}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v0}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v9

    .line 357
    iget-object v7, p0, Lcom/weirdvoice/ui/incall/InCallCard;->callInfo:Lcom/weirdvoice/api/SipCallSession;

    invoke-virtual {v7}, Lcom/weirdvoice/api/SipCallSession;->isZrtpSASVerified()Z

    move-result v7

    if-eqz v7, :cond_11

    const v7, 0x7f0c0052

    .line 356
    :goto_9
    invoke-interface {v9, v7}, Lcom/actionbarsherlock/view/MenuItem;->setTitle(I)Lcom/actionbarsherlock/view/MenuItem;

    .line 362
    iget-object v7, p0, Lcom/weirdvoice/ui/incall/InCallCard;->btnMenuBuilder:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    invoke-virtual {v7, v13}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->removeGroup(I)V

    .line 363
    iget-object v7, p0, Lcom/weirdvoice/ui/incall/InCallCard;->incallPlugins:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_5
    :goto_a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/weirdvoice/utils/ExtraPlugins$DynActivityPlugin;

    .line 364
    .local v1, "callPlugin":Lcom/weirdvoice/utils/ExtraPlugins$DynActivityPlugin;
    const-string v9, "com.weirdvoice.sipcall.MIN_STATE"

    invoke-virtual {v1, v9, v12}, Lcom/weirdvoice/utils/ExtraPlugins$DynActivityPlugin;->getMetaDataInt(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 365
    .local v4, "minState":I
    const-string v9, "com.weirdvoice.sipcall.MAX_STATE"

    const/4 v10, 0x5

    invoke-virtual {v1, v9, v10}, Lcom/weirdvoice/utils/ExtraPlugins$DynActivityPlugin;->getMetaDataInt(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 366
    .local v3, "maxState":I
    const-string v9, "com.weirdvoice.sipcall.CALL_WAY"

    invoke-virtual {v1, v9, v12}, Lcom/weirdvoice/utils/ExtraPlugins$DynActivityPlugin;->getMetaDataInt(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 367
    .local v6, "way":I
    const-string v9, "InCallCard"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Can add plugin ? "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    iget-object v9, p0, Lcom/weirdvoice/ui/incall/InCallCard;->callInfo:Lcom/weirdvoice/api/SipCallSession;

    invoke-virtual {v9}, Lcom/weirdvoice/api/SipCallSession;->getCallState()I

    move-result v9

    if-lt v9, v4, :cond_5

    .line 371
    iget-object v9, p0, Lcom/weirdvoice/ui/incall/InCallCard;->callInfo:Lcom/weirdvoice/api/SipCallSession;

    invoke-virtual {v9}, Lcom/weirdvoice/api/SipCallSession;->getCallState()I

    move-result v9

    if-gt v9, v3, :cond_5

    .line 374
    iget-object v9, p0, Lcom/weirdvoice/ui/incall/InCallCard;->callInfo:Lcom/weirdvoice/api/SipCallSession;

    invoke-virtual {v9}, Lcom/weirdvoice/api/SipCallSession;->isIncoming()Z

    move-result v9

    if-eqz v9, :cond_6

    and-int/lit8 v9, v6, 0x1

    if-eqz v9, :cond_5

    .line 377
    :cond_6
    iget-object v9, p0, Lcom/weirdvoice/ui/incall/InCallCard;->callInfo:Lcom/weirdvoice/api/SipCallSession;

    invoke-virtual {v9}, Lcom/weirdvoice/api/SipCallSession;->isIncoming()Z

    move-result v9

    if-nez v9, :cond_7

    and-int/lit8 v9, v6, 0x2

    if-eqz v9, :cond_5

    .line 380
    :cond_7
    iget-object v9, p0, Lcom/weirdvoice/ui/incall/InCallCard;->btnMenuBuilder:Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/weirdvoice/utils/ExtraPlugins$DynActivityPlugin;->getName()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v13, v8, v8, v10}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->add(IIILjava/lang/CharSequence;)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v5

    .line 381
    .local v5, "pluginMenu":Lcom/actionbarsherlock/view/MenuItem;
    invoke-virtual {v1}, Lcom/weirdvoice/utils/ExtraPlugins$DynActivityPlugin;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 382
    .local v2, "it":Landroid/content/Intent;
    const-string v9, "call_info"

    new-instance v10, Lcom/weirdvoice/api/SipCallSession;

    iget-object v11, p0, Lcom/weirdvoice/ui/incall/InCallCard;->callInfo:Lcom/weirdvoice/api/SipCallSession;

    invoke-direct {v10, v11}, Lcom/weirdvoice/api/SipCallSession;-><init>(Lcom/weirdvoice/api/SipCallSession;)V

    invoke-virtual {v2, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 383
    invoke-interface {v5, v2}, Lcom/actionbarsherlock/view/MenuItem;->setIntent(Landroid/content/Intent;)Lcom/actionbarsherlock/view/MenuItem;

    goto/16 :goto_a

    .end local v0    # "active":Z
    .end local v1    # "callPlugin":Lcom/weirdvoice/utils/ExtraPlugins$DynActivityPlugin;
    .end local v2    # "it":Landroid/content/Intent;
    .end local v3    # "maxState":I
    .end local v4    # "minState":I
    .end local v5    # "pluginMenu":Lcom/actionbarsherlock/view/MenuItem;
    .end local v6    # "way":I
    :cond_8
    move v0, v8

    .line 316
    goto/16 :goto_0

    .restart local v0    # "active":Z
    :cond_9
    move v0, v8

    .line 321
    goto/16 :goto_1

    :cond_a
    move v0, v8

    .line 326
    goto/16 :goto_2

    .line 330
    :cond_b
    const v9, 0x7f0c004c

    goto/16 :goto_3

    :cond_c
    move v9, v8

    .line 331
    goto/16 :goto_4

    :cond_d
    move v9, v7

    .line 336
    goto/16 :goto_5

    :cond_e
    move v0, v7

    .line 340
    goto/16 :goto_6

    .line 352
    :cond_f
    const v9, 0x7f0c0049

    goto/16 :goto_7

    :cond_10
    move v0, v8

    .line 355
    goto/16 :goto_8

    .line 357
    :cond_11
    const v7, 0x7f0c0051

    goto/16 :goto_9
.end method

.method private updateRemoteName()V
    .locals 10

    .prologue
    .line 430
    iget-object v7, p0, Lcom/weirdvoice/ui/incall/InCallCard;->callInfo:Lcom/weirdvoice/api/SipCallSession;

    invoke-virtual {v7}, Lcom/weirdvoice/api/SipCallSession;->getRemoteContact()Ljava/lang/String;

    move-result-object v4

    .line 432
    .local v4, "tempRemoteUri":Ljava/lang/String;
    :try_start_0
    const-string v7, "_"

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 433
    .local v1, "parts":[Ljava/lang/String;
    array-length v7, v1

    add-int/lit8 v7, v7, -0x1

    aget-object v2, v1, v7

    .line 434
    .local v2, "secPart":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    const/4 v8, 0x0

    aget-object v8, v1, v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "@"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "@"

    invoke-virtual {v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 437
    .end local v1    # "parts":[Ljava/lang/String;
    .end local v2    # "secPart":Ljava/lang/String;
    :goto_0
    move-object v0, v4

    .line 440
    .local v0, "aRemoteUri":Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v7, p0, Lcom/weirdvoice/ui/incall/InCallCard;->cachedRemoteUri:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 441
    iput-object v0, p0, Lcom/weirdvoice/ui/incall/InCallCard;->cachedRemoteUri:Ljava/lang/String;

    .line 442
    iget-object v7, p0, Lcom/weirdvoice/ui/incall/InCallCard;->cachedRemoteUri:Ljava/lang/String;

    invoke-static {v7}, Lcom/weirdvoice/api/SipUri;->parseSipContact(Ljava/lang/String;)Lcom/weirdvoice/api/SipUri$ParsedSipContactInfos;

    move-result-object v6

    .line 443
    .local v6, "uriInfos":Lcom/weirdvoice/api/SipUri$ParsedSipContactInfos;
    invoke-static {v0}, Lcom/weirdvoice/api/SipUri;->getDisplayedSimpleContact(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 463
    .local v5, "text":Ljava/lang/String;
    iget-object v7, p0, Lcom/weirdvoice/ui/incall/InCallCard;->remoteName:Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 464
    iget-object v7, p0, Lcom/weirdvoice/ui/incall/InCallCard;->remoteSipAddress:Landroid/widget/TextView;

    iget-object v8, v6, Lcom/weirdvoice/api/SipUri$ParsedSipContactInfos;->userName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 466
    new-instance v3, Lcom/weirdvoice/ui/incall/InCallCard$2;

    invoke-direct {v3, p0}, Lcom/weirdvoice/ui/incall/InCallCard$2;-><init>(Lcom/weirdvoice/ui/incall/InCallCard;)V

    .line 479
    .local v3, "t":Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 484
    .end local v3    # "t":Ljava/lang/Thread;
    .end local v5    # "text":Ljava/lang/String;
    .end local v6    # "uriInfos":Lcom/weirdvoice/api/SipUri$ParsedSipContactInfos;
    :cond_0
    iget v7, p0, Lcom/weirdvoice/ui/incall/InCallCard;->cachedInvState:I

    iget-object v8, p0, Lcom/weirdvoice/ui/incall/InCallCard;->callInfo:Lcom/weirdvoice/api/SipCallSession;

    invoke-virtual {v8}, Lcom/weirdvoice/api/SipCallSession;->getCallState()I

    move-result v8

    if-ne v7, v8, :cond_1

    .line 485
    iget v7, p0, Lcom/weirdvoice/ui/incall/InCallCard;->cachedMediaState:I

    iget-object v8, p0, Lcom/weirdvoice/ui/incall/InCallCard;->callInfo:Lcom/weirdvoice/api/SipCallSession;

    invoke-virtual {v8}, Lcom/weirdvoice/api/SipCallSession;->getMediaStatus()I

    move-result v8

    if-ne v7, v8, :cond_1

    .line 488
    :cond_1
    return-void

    .line 435
    .end local v0    # "aRemoteUri":Ljava/lang/String;
    :catch_0
    move-exception v7

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 633
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 634
    .local v0, "id":I
    const v1, 0x7f0b00ef

    if-ne v0, v1, :cond_0

    .line 635
    iget-object v1, p0, Lcom/weirdvoice/ui/incall/InCallCard;->callInfo:Lcom/weirdvoice/api/SipCallSession;

    invoke-virtual {v1}, Lcom/weirdvoice/api/SipCallSession;->isBeforeConfirmed()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/weirdvoice/ui/incall/InCallCard;->callInfo:Lcom/weirdvoice/api/SipCallSession;

    invoke-virtual {v1}, Lcom/weirdvoice/api/SipCallSession;->isIncoming()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 636
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/weirdvoice/ui/incall/InCallCard;->dispatchTriggerEvent(I)V

    .line 641
    :cond_0
    :goto_0
    return-void

    .line 637
    :cond_1
    iget-object v1, p0, Lcom/weirdvoice/ui/incall/InCallCard;->callInfo:Lcom/weirdvoice/api/SipCallSession;

    invoke-virtual {v1}, Lcom/weirdvoice/api/SipCallSession;->isAfterEnded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 638
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/weirdvoice/ui/incall/InCallCard;->dispatchTriggerEvent(I)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 293
    if-eqz p1, :cond_0

    .line 294
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/InCallCard;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/weirdvoice/ui/incall/InCallCard;->postLayout:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 297
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 298
    return-void
.end method

.method public onMenuItemSelected(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 3
    .param p1, "menu"    # Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    const/4 v2, 0x1

    .line 645
    invoke-interface {p2}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    .line 646
    .local v0, "itemId":I
    const v1, 0x7f0b0056

    if-ne v0, v1, :cond_0

    .line 647
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/weirdvoice/ui/incall/InCallCard;->dispatchTriggerEvent(I)V

    move v1, v2

    .line 683
    :goto_0
    return v1

    .line 649
    :cond_0
    const v1, 0x7f0b0164

    if-ne v0, v1, :cond_1

    .line 650
    invoke-direct {p0, v2}, Lcom/weirdvoice/ui/incall/InCallCard;->dispatchTriggerEvent(I)V

    move v1, v2

    .line 651
    goto :goto_0

    .line 652
    :cond_1
    const v1, 0x7f0b0054

    if-ne v0, v1, :cond_2

    .line 653
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/weirdvoice/ui/incall/InCallCard;->dispatchTriggerEvent(I)V

    move v1, v2

    .line 654
    goto :goto_0

    .line 655
    :cond_2
    const v1, 0x7f0b0163

    if-ne v0, v1, :cond_3

    .line 656
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/weirdvoice/ui/incall/InCallCard;->dispatchTriggerEvent(I)V

    move v1, v2

    .line 657
    goto :goto_0

    .line 658
    :cond_3
    const v1, 0x7f0b016c

    if-ne v0, v1, :cond_4

    .line 659
    const/16 v1, 0xb

    invoke-direct {p0, v1}, Lcom/weirdvoice/ui/incall/InCallCard;->dispatchTriggerEvent(I)V

    move v1, v2

    .line 660
    goto :goto_0

    .line 661
    :cond_4
    const v1, 0x7f0b0167

    if-ne v0, v1, :cond_5

    .line 662
    const/16 v1, 0xc

    invoke-direct {p0, v1}, Lcom/weirdvoice/ui/incall/InCallCard;->dispatchTriggerEvent(I)V

    move v1, v2

    .line 663
    goto :goto_0

    .line 664
    :cond_5
    const v1, 0x7f0b0168

    if-ne v0, v1, :cond_7

    .line 665
    iget-object v1, p0, Lcom/weirdvoice/ui/incall/InCallCard;->callInfo:Lcom/weirdvoice/api/SipCallSession;

    invoke-virtual {v1}, Lcom/weirdvoice/api/SipCallSession;->isRecording()Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v1, 0x12

    :goto_1
    invoke-direct {p0, v1}, Lcom/weirdvoice/ui/incall/InCallCard;->dispatchTriggerEvent(I)V

    move v1, v2

    .line 666
    goto :goto_0

    .line 665
    :cond_6
    const/16 v1, 0x11

    goto :goto_1

    .line 667
    :cond_7
    const v1, 0x7f0b016a

    if-ne v0, v1, :cond_8

    .line 668
    const/16 v1, 0x13

    invoke-direct {p0, v1}, Lcom/weirdvoice/ui/incall/InCallCard;->dispatchTriggerEvent(I)V

    move v1, v2

    .line 669
    goto :goto_0

    .line 670
    :cond_8
    const v1, 0x7f0b016b

    if-ne v0, v1, :cond_a

    .line 671
    iget-object v1, p0, Lcom/weirdvoice/ui/incall/InCallCard;->callInfo:Lcom/weirdvoice/api/SipCallSession;

    invoke-virtual {v1}, Lcom/weirdvoice/api/SipCallSession;->mediaHasVideo()Z

    move-result v1

    if-eqz v1, :cond_9

    const/16 v1, 0x15

    :goto_2
    invoke-direct {p0, v1}, Lcom/weirdvoice/ui/incall/InCallCard;->dispatchTriggerEvent(I)V

    move v1, v2

    .line 672
    goto :goto_0

    .line 671
    :cond_9
    const/16 v1, 0x14

    goto :goto_2

    .line 673
    :cond_a
    const v1, 0x7f0b0165

    if-ne v0, v1, :cond_b

    .line 674
    const/16 v1, 0xf

    invoke-direct {p0, v1}, Lcom/weirdvoice/ui/incall/InCallCard;->dispatchTriggerEvent(I)V

    move v1, v2

    .line 675
    goto :goto_0

    .line 676
    :cond_b
    const v1, 0x7f0b0166

    if-ne v0, v1, :cond_c

    .line 677
    const/16 v1, 0x10

    invoke-direct {p0, v1}, Lcom/weirdvoice/ui/incall/InCallCard;->dispatchTriggerEvent(I)V

    move v1, v2

    .line 678
    goto/16 :goto_0

    .line 679
    :cond_c
    const v1, 0x7f0b0169

    if-ne v0, v1, :cond_e

    .line 680
    iget-object v1, p0, Lcom/weirdvoice/ui/incall/InCallCard;->callInfo:Lcom/weirdvoice/api/SipCallSession;

    invoke-virtual {v1}, Lcom/weirdvoice/api/SipCallSession;->isZrtpSASVerified()Z

    move-result v1

    if-eqz v1, :cond_d

    const/16 v1, 0x17

    :goto_3
    invoke-direct {p0, v1}, Lcom/weirdvoice/ui/incall/InCallCard;->dispatchTriggerEvent(I)V

    move v1, v2

    .line 681
    goto/16 :goto_0

    .line 680
    :cond_d
    const/16 v1, 0x16

    goto :goto_3

    .line 683
    :cond_e
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method public onMenuModeChange(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;)V
    .locals 0
    .param p1, "menu"    # Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    .prologue
    .line 689
    return-void
.end method

.method public declared-synchronized setCallState(Lcom/weirdvoice/api/SipCallSession;)V
    .locals 9
    .param p1, "aCallInfo"    # Lcom/weirdvoice/api/SipCallSession;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 170
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/weirdvoice/ui/incall/InCallCard;->callInfo:Lcom/weirdvoice/api/SipCallSession;

    .line 171
    iget-object v6, p0, Lcom/weirdvoice/ui/incall/InCallCard;->callInfo:Lcom/weirdvoice/api/SipCallSession;

    if-nez v6, :cond_1

    .line 172
    invoke-direct {p0}, Lcom/weirdvoice/ui/incall/InCallCard;->updateElapsedTimer()V

    .line 173
    const/4 v4, -0x1

    iput v4, p0, Lcom/weirdvoice/ui/incall/InCallCard;->cachedInvState:I

    .line 174
    const/4 v4, 0x4

    iput v4, p0, Lcom/weirdvoice/ui/incall/InCallCard;->cachedMediaState:I

    .line 175
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/weirdvoice/ui/incall/InCallCard;->cachedCanRecord:Z

    .line 176
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/weirdvoice/ui/incall/InCallCard;->cachedIsRecording:Z

    .line 177
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/weirdvoice/ui/incall/InCallCard;->cachedIsHold:Z

    .line 178
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/weirdvoice/ui/incall/InCallCard;->cachedVideo:Z

    .line 179
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/weirdvoice/ui/incall/InCallCard;->cachedZrtpActive:Z

    .line 180
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/weirdvoice/ui/incall/InCallCard;->cachedZrtpVerified:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 184
    :cond_1
    :try_start_1
    const-string v6, "InCallCard"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Set call state : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/weirdvoice/ui/incall/InCallCard;->callInfo:Lcom/weirdvoice/api/SipCallSession;

    invoke-virtual {v8}, Lcom/weirdvoice/api/SipCallSession;->getCallState()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-direct {p0}, Lcom/weirdvoice/ui/incall/InCallCard;->updateRemoteName()V

    .line 187
    invoke-direct {p0}, Lcom/weirdvoice/ui/incall/InCallCard;->updateCallStateBar()V

    .line 188
    invoke-direct {p0}, Lcom/weirdvoice/ui/incall/InCallCard;->updateQuickActions()V

    .line 189
    invoke-direct {p0}, Lcom/weirdvoice/ui/incall/InCallCard;->updateElapsedTimer()V

    .line 191
    iget-object v6, p0, Lcom/weirdvoice/ui/incall/InCallCard;->callInfo:Lcom/weirdvoice/api/SipCallSession;

    invoke-virtual {v6}, Lcom/weirdvoice/api/SipCallSession;->getCallState()I

    move-result v6

    iput v6, p0, Lcom/weirdvoice/ui/incall/InCallCard;->cachedInvState:I

    .line 192
    iget-object v6, p0, Lcom/weirdvoice/ui/incall/InCallCard;->callInfo:Lcom/weirdvoice/api/SipCallSession;

    invoke-virtual {v6}, Lcom/weirdvoice/api/SipCallSession;->getMediaStatus()I

    move-result v6

    iput v6, p0, Lcom/weirdvoice/ui/incall/InCallCard;->cachedMediaState:I

    .line 193
    iget-object v6, p0, Lcom/weirdvoice/ui/incall/InCallCard;->callInfo:Lcom/weirdvoice/api/SipCallSession;

    invoke-virtual {v6}, Lcom/weirdvoice/api/SipCallSession;->canRecord()Z

    move-result v6

    iput-boolean v6, p0, Lcom/weirdvoice/ui/incall/InCallCard;->cachedCanRecord:Z

    .line 194
    iget-object v6, p0, Lcom/weirdvoice/ui/incall/InCallCard;->callInfo:Lcom/weirdvoice/api/SipCallSession;

    invoke-virtual {v6}, Lcom/weirdvoice/api/SipCallSession;->isRecording()Z

    move-result v6

    iput-boolean v6, p0, Lcom/weirdvoice/ui/incall/InCallCard;->cachedIsRecording:Z

    .line 195
    iget-object v6, p0, Lcom/weirdvoice/ui/incall/InCallCard;->callInfo:Lcom/weirdvoice/api/SipCallSession;

    invoke-virtual {v6}, Lcom/weirdvoice/api/SipCallSession;->isLocalHeld()Z

    move-result v6

    iput-boolean v6, p0, Lcom/weirdvoice/ui/incall/InCallCard;->cachedIsHold:Z

    .line 196
    iget-object v6, p0, Lcom/weirdvoice/ui/incall/InCallCard;->callInfo:Lcom/weirdvoice/api/SipCallSession;

    invoke-virtual {v6}, Lcom/weirdvoice/api/SipCallSession;->mediaHasVideo()Z

    move-result v6

    iput-boolean v6, p0, Lcom/weirdvoice/ui/incall/InCallCard;->cachedVideo:Z

    .line 197
    iget-object v6, p0, Lcom/weirdvoice/ui/incall/InCallCard;->callInfo:Lcom/weirdvoice/api/SipCallSession;

    invoke-virtual {v6}, Lcom/weirdvoice/api/SipCallSession;->getHasZrtp()Z

    move-result v6

    iput-boolean v6, p0, Lcom/weirdvoice/ui/incall/InCallCard;->cachedZrtpActive:Z

    .line 198
    iget-object v6, p0, Lcom/weirdvoice/ui/incall/InCallCard;->callInfo:Lcom/weirdvoice/api/SipCallSession;

    invoke-virtual {v6}, Lcom/weirdvoice/api/SipCallSession;->isZrtpSASVerified()Z

    move-result v6

    iput-boolean v6, p0, Lcom/weirdvoice/ui/incall/InCallCard;->cachedZrtpVerified:Z

    .line 201
    iget-boolean v6, p0, Lcom/weirdvoice/ui/incall/InCallCard;->canVideo:Z

    if-eqz v6, :cond_3

    .line 202
    iget-object v6, p0, Lcom/weirdvoice/ui/incall/InCallCard;->callInfo:Lcom/weirdvoice/api/SipCallSession;

    invoke-virtual {v6}, Lcom/weirdvoice/api/SipCallSession;->getCallId()I

    move-result v6

    if-ltz v6, :cond_4

    iget-boolean v6, p0, Lcom/weirdvoice/ui/incall/InCallCard;->cachedVideo:Z

    if-eqz v6, :cond_4

    .line 203
    iget-object v6, p0, Lcom/weirdvoice/ui/incall/InCallCard;->renderView:Landroid/view/SurfaceView;

    if-nez v6, :cond_2

    .line 204
    invoke-virtual {p0}, Lcom/weirdvoice/ui/incall/InCallCard;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lorg/webrtc/videoengine/ViERenderer;->CreateRenderer(Landroid/content/Context;Z)Landroid/view/SurfaceView;

    move-result-object v6

    iput-object v6, p0, Lcom/weirdvoice/ui/incall/InCallCard;->renderView:Landroid/view/SurfaceView;

    .line 205
    iget-object v6, p0, Lcom/weirdvoice/ui/incall/InCallCard;->photo:Landroid/widget/ImageView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 206
    const v6, 0x7f0b00e3

    invoke-virtual {p0, v6}, Lcom/weirdvoice/ui/incall/InCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 207
    .local v0, "container":Landroid/widget/RelativeLayout;
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 208
    const/4 v6, -0x1

    .line 209
    const/4 v7, -0x1

    .line 207
    invoke-direct {v1, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 210
    .local v1, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v6, 0x5

    const/4 v7, -0x1

    invoke-virtual {v1, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 211
    const/4 v6, 0x7

    const/4 v7, -0x1

    invoke-virtual {v1, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 212
    const/4 v6, 0x6

    const/4 v7, -0x1

    invoke-virtual {v1, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 213
    const/4 v6, 0x2

    const v7, 0x7f0b00e5

    invoke-virtual {v1, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 214
    iget-object v6, p0, Lcom/weirdvoice/ui/incall/InCallCard;->renderView:Landroid/view/SurfaceView;

    invoke-virtual {v6, v1}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 215
    iget-object v6, p0, Lcom/weirdvoice/ui/incall/InCallCard;->renderView:Landroid/view/SurfaceView;

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;I)V

    .line 217
    const-string v6, "InCallCard"

    const-string v7, "Render window added"

    invoke-static {v6, v7}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    iget-object v6, p0, Lcom/weirdvoice/ui/incall/InCallCard;->callInfo:Lcom/weirdvoice/api/SipCallSession;

    invoke-virtual {v6}, Lcom/weirdvoice/api/SipCallSession;->getCallId()I

    move-result v6

    iget-object v7, p0, Lcom/weirdvoice/ui/incall/InCallCard;->renderView:Landroid/view/SurfaceView;

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lcom/weirdvoice/service/SipService;->setVideoWindow(ILandroid/view/SurfaceView;Z)V

    .line 220
    const v6, 0x7f0b00ee

    invoke-virtual {p0, v6}, Lcom/weirdvoice/ui/incall/InCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 221
    .local v3, "v":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 222
    .local v2, "lp2":Landroid/view/ViewGroup$LayoutParams;
    const/4 v6, -0x2

    iput v6, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 223
    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 225
    .end local v0    # "container":Landroid/widget/RelativeLayout;
    .end local v1    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v2    # "lp2":Landroid/view/ViewGroup$LayoutParams;
    .end local v3    # "v":Landroid/view/View;
    :cond_2
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/weirdvoice/ui/incall/InCallCard;->hasVideo:Z

    .line 234
    :cond_3
    :goto_1
    iget-object v6, p0, Lcom/weirdvoice/ui/incall/InCallCard;->onTriggerListener:Lcom/weirdvoice/ui/incall/IOnCallActionTrigger;

    if-eqz v6, :cond_0

    .line 235
    iget-object v6, p0, Lcom/weirdvoice/ui/incall/InCallCard;->onTriggerListener:Lcom/weirdvoice/ui/incall/IOnCallActionTrigger;

    iget-boolean v7, p0, Lcom/weirdvoice/ui/incall/InCallCard;->hasVideo:Z

    if-eqz v7, :cond_6

    iget-boolean v7, p0, Lcom/weirdvoice/ui/incall/InCallCard;->canVideo:Z

    if-eqz v7, :cond_6

    :goto_2
    invoke-interface {v6, v4}, Lcom/weirdvoice/ui/incall/IOnCallActionTrigger;->onDisplayVideo(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 170
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 227
    :cond_4
    :try_start_2
    iget-object v6, p0, Lcom/weirdvoice/ui/incall/InCallCard;->renderView:Landroid/view/SurfaceView;

    if-eqz v6, :cond_5

    .line 228
    iget-object v6, p0, Lcom/weirdvoice/ui/incall/InCallCard;->renderView:Landroid/view/SurfaceView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 229
    iget-object v6, p0, Lcom/weirdvoice/ui/incall/InCallCard;->photo:Landroid/widget/ImageView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 231
    :cond_5
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/weirdvoice/ui/incall/InCallCard;->hasVideo:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_6
    move v4, v5

    .line 235
    goto :goto_2
.end method

.method public setOnTriggerListener(Lcom/weirdvoice/ui/incall/IOnCallActionTrigger;)V
    .locals 0
    .param p1, "listener"    # Lcom/weirdvoice/ui/incall/IOnCallActionTrigger;

    .prologue
    .line 596
    iput-object p1, p0, Lcom/weirdvoice/ui/incall/InCallCard;->onTriggerListener:Lcom/weirdvoice/ui/incall/IOnCallActionTrigger;

    .line 597
    return-void
.end method

.method public terminate()V
    .locals 3

    .prologue
    .line 609
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/InCallCard;->callInfo:Lcom/weirdvoice/api/SipCallSession;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/weirdvoice/ui/incall/InCallCard;->renderView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    .line 610
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/InCallCard;->callInfo:Lcom/weirdvoice/api/SipCallSession;

    invoke-virtual {v0}, Lcom/weirdvoice/api/SipCallSession;->getCallId()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/weirdvoice/service/SipService;->setVideoWindow(ILandroid/view/SurfaceView;Z)V

    .line 612
    :cond_0
    return-void
.end method
