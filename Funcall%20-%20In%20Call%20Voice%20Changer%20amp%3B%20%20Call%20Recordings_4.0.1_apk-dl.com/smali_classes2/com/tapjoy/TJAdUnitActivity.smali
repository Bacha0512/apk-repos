.class public Lcom/tapjoy/TJAdUnitActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/TJAdUnitActivity$a;
    }
.end annotation


# static fields
.field private static a:Lcom/tapjoy/TJAdUnitActivity;


# instance fields
.field private b:Lcom/tapjoy/TJAdUnit;

.field private c:Lcom/tapjoy/TJPlacementData;

.field private d:Lcom/tapjoy/TJAdUnitActivity$a;

.field private e:Lcom/tapjoy/TJAdUnitSaveStateData;

.field private f:Landroid/widget/RelativeLayout;

.field private g:Lcom/tapjoy/TJCloseButton;

.field private h:Landroid/widget/ProgressBar;

.field private i:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 46
    new-instance v0, Lcom/tapjoy/TJAdUnitSaveStateData;

    invoke-direct {v0}, Lcom/tapjoy/TJAdUnitSaveStateData;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->e:Lcom/tapjoy/TJAdUnitSaveStateData;

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->f:Landroid/widget/RelativeLayout;

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/TJAdUnitActivity;->i:Z

    .line 333
    return-void
.end method

.method static synthetic a(Lcom/tapjoy/TJAdUnitActivity;)Lcom/tapjoy/TJAdUnit;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->b:Lcom/tapjoy/TJAdUnit;

    return-object v0
.end method

.method static a()V
    .locals 2

    .prologue
    .line 384
    sget-object v0, Lcom/tapjoy/TJAdUnitActivity;->a:Lcom/tapjoy/TJAdUnitActivity;

    .line 385
    if-eqz v0, :cond_0

    .line 386
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJAdUnitActivity;->handleClose(Z)V

    .line 388
    :cond_0
    return-void
.end method


# virtual methods
.method public handleClose()V
    .locals 1

    .prologue
    .line 219
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tapjoy/TJAdUnitActivity;->handleClose(Z)V

    .line 220
    return-void
.end method

.method public handleClose(Z)V
    .locals 4
    .param p1, "shouldForceClose"    # Z

    .prologue
    .line 226
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->b:Lcom/tapjoy/TJAdUnit;

    invoke-virtual {v0}, Lcom/tapjoy/TJAdUnit;->getCloseRequested()Z

    move-result v0

    if-nez v0, :cond_0

    .line 227
    const-string v0, "TJAdUnitActivity"

    const-string v1, "closeRequested"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->b:Lcom/tapjoy/TJAdUnit;

    invoke-virtual {v0, p1}, Lcom/tapjoy/TJAdUnit;->closeRequested(Z)V

    .line 234
    new-instance v0, Lcom/tapjoy/TJAdUnitActivity$1;

    invoke-direct {v0, p0}, Lcom/tapjoy/TJAdUnitActivity$1;-><init>(Lcom/tapjoy/TJAdUnitActivity;)V

    .line 244
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    .line 245
    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 247
    :cond_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 377
    const/16 v0, 0x147

    if-ne p1, v0, :cond_0

    if-eqz p3, :cond_0

    const-string v0, "placement_data"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->b:Lcom/tapjoy/TJAdUnit;

    if-eqz v0, :cond_0

    .line 378
    const-string v0, "placement_data"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/TJPlacementData;

    .line 379
    iget-object v1, p0, Lcom/tapjoy/TJAdUnitActivity;->b:Lcom/tapjoy/TJAdUnit;

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacementData;->getCallbackID()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Lcom/tapjoy/TJAdUnit;->invokeBridgeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 381
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/tapjoy/TJAdUnitActivity;->handleClose()V

    .line 216
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 367
    invoke-virtual {p0}, Lcom/tapjoy/TJAdUnitActivity;->handleClose()V

    .line 368
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v8, 0xd

    const/4 v7, -0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 56
    const-string v0, "TJAdUnitActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TJAdUnitActivity onCreate: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    sput-object p0, Lcom/tapjoy/TJAdUnitActivity;->a:Lcom/tapjoy/TJAdUnitActivity;

    .line 61
    if-eqz p1, :cond_0

    .line 62
    const-string v0, "ad_unit_bundle"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/TJAdUnitSaveStateData;

    iput-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->e:Lcom/tapjoy/TJAdUnitSaveStateData;

    .line 66
    :cond_0
    invoke-virtual {p0}, Lcom/tapjoy/TJAdUnitActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 67
    if-eqz v0, :cond_9

    const-string v1, "placement_data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 68
    const-string v1, "placement_data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/TJPlacementData;

    iput-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->c:Lcom/tapjoy/TJPlacementData;

    .line 77
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->c:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacementData;->getContentViewId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 78
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->c:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacementData;->getContentViewId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/tapjoy/TapjoyConnectCore;->viewWillOpen(Ljava/lang/String;I)V

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->c:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacementData;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/TJPlacementManager;->a(Ljava/lang/String;)Lcom/tapjoy/TJCorePlacement;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 83
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->c:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacementData;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/TJPlacementManager;->a(Ljava/lang/String;)Lcom/tapjoy/TJCorePlacement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/TJCorePlacement;->getAdUnit()Lcom/tapjoy/TJAdUnit;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->b:Lcom/tapjoy/TJAdUnit;

    .line 84
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->b:Lcom/tapjoy/TJAdUnit;

    invoke-virtual {v0, p0}, Lcom/tapjoy/TJAdUnit;->setContext(Landroid/content/Context;)V

    .line 91
    :goto_0
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->b:Lcom/tapjoy/TJAdUnit;

    invoke-virtual {v0}, Lcom/tapjoy/TJAdUnit;->isAdUnitConstructed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 92
    const-string v0, "TJAdUnitActivity"

    const-string v1, "No content loaded for ad unit -- loading now"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->b:Lcom/tapjoy/TJAdUnit;

    iget-object v1, p0, Lcom/tapjoy/TJAdUnitActivity;->c:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJAdUnit;->load(Lcom/tapjoy/TJPlacementData;)V

    .line 97
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_b

    .line 98
    const v0, 0x1030005

    invoke-virtual {p0, v0}, Lcom/tapjoy/TJAdUnitActivity;->setTheme(I)V

    .line 106
    :goto_1
    invoke-virtual {p0}, Lcom/tapjoy/TJAdUnitActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 109
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->isUnitTestMode()Z

    move-result v0

    if-nez v0, :cond_3

    .line 110
    new-instance v0, Lcom/tapjoy/TJAdUnitActivity$a;

    invoke-direct {v0, p0, v5}, Lcom/tapjoy/TJAdUnitActivity$a;-><init>(Lcom/tapjoy/TJAdUnitActivity;B)V

    iput-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->d:Lcom/tapjoy/TJAdUnitActivity$a;

    .line 111
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->d:Lcom/tapjoy/TJAdUnitActivity$a;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/tapjoy/TJAdUnitActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 115
    :cond_3
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 116
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->f:Landroid/widget/RelativeLayout;

    .line 117
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 121
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->b:Lcom/tapjoy/TJAdUnit;

    invoke-virtual {v0}, Lcom/tapjoy/TJAdUnit;->getBackgroundWebView()Lcom/tapjoy/mraid/view/BasicWebView;

    move-result-object v2

    .line 122
    invoke-virtual {v2, v1}, Lcom/tapjoy/mraid/view/BasicWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    invoke-virtual {v2}, Lcom/tapjoy/mraid/view/BasicWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 126
    invoke-virtual {v2}, Lcom/tapjoy/mraid/view/BasicWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 130
    :cond_4
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->b:Lcom/tapjoy/TJAdUnit;

    invoke-virtual {v0}, Lcom/tapjoy/TJAdUnit;->getWebView()Lcom/tapjoy/mraid/view/MraidView;

    move-result-object v3

    .line 131
    invoke-virtual {v3, v1}, Lcom/tapjoy/mraid/view/MraidView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 134
    invoke-virtual {v3}, Lcom/tapjoy/mraid/view/MraidView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 135
    invoke-virtual {v3}, Lcom/tapjoy/mraid/view/MraidView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 138
    :cond_5
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->b:Lcom/tapjoy/TJAdUnit;

    invoke-virtual {v0}, Lcom/tapjoy/TJAdUnit;->getVideoView()Landroid/widget/VideoView;

    move-result-object v1

    .line 139
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 140
    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 141
    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    invoke-virtual {v1}, Landroid/widget/VideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 145
    invoke-virtual {v1}, Landroid/widget/VideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 149
    :cond_6
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 152
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 155
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 158
    new-instance v0, Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    const v2, 0x101007a

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->h:Landroid/widget/ProgressBar;

    .line 161
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->c:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacementData;->hasProgressSpinner()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 162
    invoke-virtual {p0, v6}, Lcom/tapjoy/TJAdUnitActivity;->setProgressSpinnerVisibility(Z)V

    .line 168
    :goto_2
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 169
    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 170
    iget-object v1, p0, Lcom/tapjoy/TJAdUnitActivity;->h:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 171
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->f:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/tapjoy/TJAdUnitActivity;->h:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 174
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->b:Lcom/tapjoy/TJAdUnit;

    invoke-virtual {v0}, Lcom/tapjoy/TJAdUnit;->getWebView()Lcom/tapjoy/mraid/view/MraidView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/mraid/view/MraidView;->isMraid()Z

    move-result v0

    if-nez v0, :cond_7

    .line 175
    new-instance v0, Lcom/tapjoy/TJCloseButton;

    invoke-direct {v0, p0}, Lcom/tapjoy/TJCloseButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->g:Lcom/tapjoy/TJCloseButton;

    .line 176
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->g:Lcom/tapjoy/TJCloseButton;

    invoke-virtual {v0, p0}, Lcom/tapjoy/TJCloseButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->f:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/tapjoy/TJAdUnitActivity;->g:Lcom/tapjoy/TJCloseButton;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 180
    :cond_7
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/tapjoy/TJAdUnitActivity;->setContentView(Landroid/view/View;)V

    .line 182
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->b:Lcom/tapjoy/TJAdUnit;

    invoke-virtual {v0, v6}, Lcom/tapjoy/TJAdUnit;->setVisible(Z)V

    .line 185
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->c:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacementData;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/TJPlacementManager;->a(Ljava/lang/String;)Lcom/tapjoy/TJCorePlacement;

    move-result-object v0

    .line 186
    if-eqz v0, :cond_8

    .line 187
    invoke-virtual {v0}, Lcom/tapjoy/TJCorePlacement;->f()V

    .line 189
    :cond_8
    :goto_3
    return-void

    .line 71
    :cond_9
    const-string v0, "TJAdUnitActivity"

    new-instance v1, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object v2, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->SDK_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    const-string v3, "Failed to launch AdUnit Activity"

    invoke-direct {v1, v2, v3}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    .line 72
    invoke-virtual {p0}, Lcom/tapjoy/TJAdUnitActivity;->finish()V

    goto :goto_3

    .line 87
    :cond_a
    new-instance v0, Lcom/tapjoy/TJAdUnit;

    invoke-direct {v0, p0}, Lcom/tapjoy/TJAdUnit;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->b:Lcom/tapjoy/TJAdUnit;

    goto/16 :goto_0

    .line 100
    :cond_b
    invoke-virtual {p0, v6}, Lcom/tapjoy/TJAdUnitActivity;->requestWindowFeature(I)Z

    .line 101
    invoke-virtual {p0}, Lcom/tapjoy/TJAdUnitActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    const/16 v2, 0x400

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFlags(II)V

    .line 102
    invoke-virtual {p0}, Lcom/tapjoy/TJAdUnitActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x1000000

    const/high16 v2, 0x1000000

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFlags(II)V

    goto/16 :goto_1

    .line 164
    :cond_c
    invoke-virtual {p0, v5}, Lcom/tapjoy/TJAdUnitActivity;->setProgressSpinnerVisibility(Z)V

    goto/16 :goto_2
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 251
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 252
    const/4 v0, 0x0

    sput-object v0, Lcom/tapjoy/TJAdUnitActivity;->a:Lcom/tapjoy/TJAdUnitActivity;

    .line 254
    const-string v0, "TJAdUnitActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->b:Lcom/tapjoy/TJAdUnit;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->b:Lcom/tapjoy/TJAdUnit;

    invoke-virtual {v0}, Lcom/tapjoy/TJAdUnit;->destroy()V

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->d:Lcom/tapjoy/TJAdUnitActivity$a;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->isUnitTestMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 261
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->d:Lcom/tapjoy/TJAdUnitActivity$a;

    invoke-virtual {p0, v0}, Lcom/tapjoy/TJAdUnitActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 263
    :cond_1
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->c:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacementData;->isBaseActivity()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 265
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->c:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacementData;->getContentViewId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 266
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->c:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacementData;->getContentViewId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->viewDidClose(Ljava/lang/String;)V

    .line 270
    :cond_2
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->c:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacementData;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/TJPlacementManager;->a(Ljava/lang/String;)Lcom/tapjoy/TJCorePlacement;

    move-result-object v0

    .line 271
    if-eqz v0, :cond_3

    .line 272
    invoke-virtual {v0}, Lcom/tapjoy/TJCorePlacement;->e()V

    .line 275
    :cond_3
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 304
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 305
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->b:Lcom/tapjoy/TJAdUnit;

    invoke-virtual {v0}, Lcom/tapjoy/TJAdUnit;->pauseVideo()Z

    .line 306
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 279
    const-string v0, "TJAdUnitActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 283
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->b:Lcom/tapjoy/TJAdUnit;

    invoke-virtual {v0}, Lcom/tapjoy/TJAdUnit;->isLockedOrientation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->b:Lcom/tapjoy/TJAdUnit;

    invoke-virtual {v0}, Lcom/tapjoy/TJAdUnit;->getOrientation()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tapjoy/TJAdUnitActivity;->setRequestedOrientation(I)V

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->b:Lcom/tapjoy/TJAdUnit;

    iget-object v1, p0, Lcom/tapjoy/TJAdUnitActivity;->e:Lcom/tapjoy/TJAdUnitSaveStateData;

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJAdUnit;->resume(Lcom/tapjoy/TJAdUnitSaveStateData;)V

    .line 288
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 310
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 312
    const-string v0, "TJAdUnitActivity"

    const-string v1, "onSaveInstanceState"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->e:Lcom/tapjoy/TJAdUnitSaveStateData;

    iget-object v1, p0, Lcom/tapjoy/TJAdUnitActivity;->b:Lcom/tapjoy/TJAdUnit;

    invoke-virtual {v1}, Lcom/tapjoy/TJAdUnit;->getVideoSeekTime()I

    move-result v1

    iput v1, v0, Lcom/tapjoy/TJAdUnitSaveStateData;->seekTime:I

    .line 316
    const-string v0, "ad_unit_bundle"

    iget-object v1, p0, Lcom/tapjoy/TJAdUnitActivity;->e:Lcom/tapjoy/TJAdUnitSaveStateData;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 317
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 292
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 293
    invoke-static {}, Lcom/tapjoy/internal/fu;->a()Lcom/tapjoy/internal/fu;

    move-result-object v0

    .line 1958
    iget-boolean v0, v0, Lcom/tapjoy/internal/fu;->n:Z

    .line 293
    if-eqz v0, :cond_0

    .line 294
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/TJAdUnitActivity;->i:Z

    .line 295
    invoke-static {p0}, Lcom/tapjoy/internal/fi;->a(Landroid/app/Activity;)V

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->c:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacementData;->isBaseActivity()Z

    move-result v0

    if-nez v0, :cond_1

    .line 298
    const/4 v0, -0x1

    invoke-virtual {p0}, Lcom/tapjoy/TJAdUnitActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tapjoy/TJAdUnitActivity;->setResult(ILandroid/content/Intent;)V

    .line 300
    :cond_1
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 321
    iget-boolean v0, p0, Lcom/tapjoy/TJAdUnitActivity;->i:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 322
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/TJAdUnitActivity;->i:Z

    .line 323
    invoke-static {p0}, Lcom/tapjoy/internal/fi;->b(Landroid/app/Activity;)V

    .line 326
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 327
    return-void
.end method

.method public setCloseButtonVisibility(Z)V
    .locals 2
    .param p1, "visibility"    # Z

    .prologue
    .line 195
    if-eqz p1, :cond_0

    .line 196
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->g:Lcom/tapjoy/TJCloseButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJCloseButton;->setVisibility(I)V

    .line 200
    :goto_0
    return-void

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->g:Lcom/tapjoy/TJCloseButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJCloseButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public setProgressSpinnerVisibility(Z)V
    .locals 2
    .param p1, "visibility"    # Z

    .prologue
    .line 206
    if-eqz p1, :cond_0

    .line 207
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->h:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 211
    :goto_0
    return-void

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->h:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.method public showErrorDialog()V
    .locals 3

    .prologue
    .line 349
    invoke-virtual {p0}, Lcom/tapjoy/TJAdUnitActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 351
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "An error occured. Please try again later."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "OK"

    new-instance v2, Lcom/tapjoy/TJAdUnitActivity$2;

    invoke-direct {v2, p0}, Lcom/tapjoy/TJAdUnitActivity$2;-><init>(Lcom/tapjoy/TJAdUnitActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 358
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 360
    :cond_0
    return-void
.end method
