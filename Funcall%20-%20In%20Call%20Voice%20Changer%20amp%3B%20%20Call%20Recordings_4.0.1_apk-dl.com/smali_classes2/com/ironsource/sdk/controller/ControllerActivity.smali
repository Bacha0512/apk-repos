.class public Lcom/ironsource/sdk/controller/ControllerActivity;
.super Landroid/app/Activity;
.source "ControllerActivity.java"

# interfaces
.implements Lcom/ironsource/sdk/listeners/OnWebViewChangeListener;
.implements Lcom/ironsource/sdk/controller/VideoEventsListener;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final WEB_VIEW_VIEW_ID:I = 0x1


# instance fields
.field final MATCH_PARENT_LAYOUT_PARAMS:Landroid/widget/RelativeLayout$LayoutParams;

.field private calledFromOnCreate:Z

.field public currentRequestedRotation:I

.field private final decorViewSettings:Ljava/lang/Runnable;

.field private mContainer:Landroid/widget/RelativeLayout;

.field private mIsImmersive:Z

.field private mProductType:Ljava/lang/String;

.field private mState:Lcom/ironsource/sdk/data/AdUnitsState;

.field private mUiThreadHandler:Landroid/os/Handler;

.field private mWebViewController:Lcom/ironsource/sdk/controller/IronSourceWebView;

.field private mWebViewFrameContainer:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/ironsource/sdk/controller/ControllerActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ironsource/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 40
    iput v1, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->currentRequestedRotation:I

    .line 49
    iput-boolean v2, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mIsImmersive:Z

    .line 54
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mUiThreadHandler:Landroid/os/Handler;

    .line 59
    new-instance v0, Lcom/ironsource/sdk/controller/ControllerActivity$1;

    invoke-direct {v0, p0}, Lcom/ironsource/sdk/controller/ControllerActivity$1;-><init>(Lcom/ironsource/sdk/controller/ControllerActivity;)V

    iput-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->decorViewSettings:Ljava/lang/Runnable;

    .line 65
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->MATCH_PARENT_LAYOUT_PARAMS:Landroid/widget/RelativeLayout$LayoutParams;

    .line 70
    iput-boolean v2, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->calledFromOnCreate:Z

    return-void
.end method

.method static synthetic access$000(Lcom/ironsource/sdk/controller/ControllerActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/ControllerActivity;

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mIsImmersive:Z

    return v0
.end method

.method static synthetic access$100(Lcom/ironsource/sdk/controller/ControllerActivity;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/ControllerActivity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->decorViewSettings:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/ironsource/sdk/controller/ControllerActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/ControllerActivity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mUiThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private cancelScreenOn()V
    .locals 1

    .prologue
    .line 321
    new-instance v0, Lcom/ironsource/sdk/controller/ControllerActivity$4;

    invoke-direct {v0, p0}, Lcom/ironsource/sdk/controller/ControllerActivity$4;-><init>(Lcom/ironsource/sdk/controller/ControllerActivity;)V

    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/controller/ControllerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 328
    return-void
.end method

.method private handleOrientationState(Ljava/lang/String;I)V
    .locals 2
    .param p1, "orientation"    # Ljava/lang/String;
    .param p2, "rotation"    # I

    .prologue
    .line 170
    if-eqz p1, :cond_0

    .line 172
    const-string v0, "landscape"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 174
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/ControllerActivity;->setInitiateLandscapeOrientation()V

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    const-string v0, "portrait"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 178
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/ControllerActivity;->setInitiatePortraitOrientation()V

    goto :goto_0

    .line 180
    :cond_2
    const-string v0, "device"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 182
    invoke-static {p0}, Lcom/ironsource/environment/DeviceStatus;->isDeviceOrientationLocked(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/controller/ControllerActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 187
    :cond_3
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/ControllerActivity;->getRequestedOrientation()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 188
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/controller/ControllerActivity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method private hideActivityTitle()V
    .locals 1

    .prologue
    .line 302
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/controller/ControllerActivity;->requestWindowFeature(I)Z

    .line 303
    return-void
.end method

.method private hideActivtiyStatusBar()V
    .locals 2

    .prologue
    const/16 v1, 0x400

    .line 306
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/ControllerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 308
    return-void
.end method

.method private initOrientationState()V
    .locals 5

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/ControllerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 155
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "orientation_set_flag"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 157
    .local v1, "orientation":Ljava/lang/String;
    const-string v3, "rotation_set_flag"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 160
    .local v2, "rotation":I
    invoke-direct {p0, v1, v2}, Lcom/ironsource/sdk/controller/ControllerActivity;->handleOrientationState(Ljava/lang/String;I)V

    .line 161
    return-void
.end method

.method private keepScreenOn()V
    .locals 1

    .prologue
    .line 311
    new-instance v0, Lcom/ironsource/sdk/controller/ControllerActivity$3;

    invoke-direct {v0, p0}, Lcom/ironsource/sdk/controller/ControllerActivity$3;-><init>(Lcom/ironsource/sdk/controller/ControllerActivity;)V

    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/controller/ControllerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 318
    return-void
.end method

.method private removeWebViewContainerView()V
    .locals 3

    .prologue
    .line 257
    iget-object v2, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mContainer:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_0

    .line 258
    iget-object v2, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mWebViewFrameContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 259
    .local v0, "parent":Landroid/view/ViewGroup;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 260
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 261
    iget-object v2, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mWebViewFrameContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 264
    .end local v0    # "parent":Landroid/view/ViewGroup;
    .end local v1    # "view":Landroid/view/View;
    :cond_0
    return-void
.end method

.method private setInitiateLandscapeOrientation()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 335
    invoke-static {p0}, Lcom/ironsource/environment/DeviceStatus;->getApplicationRotation(Landroid/content/Context;)I

    move-result v0

    .line 337
    .local v0, "rotation":I
    sget-object v1, Lcom/ironsource/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    const-string v2, "setInitiateLandscapeOrientation"

    invoke-static {v1, v2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    if-nez v0, :cond_0

    .line 340
    sget-object v1, Lcom/ironsource/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    const-string v2, "ROTATION_0"

    invoke-static {v1, v2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    invoke-virtual {p0, v3}, Lcom/ironsource/sdk/controller/ControllerActivity;->setRequestedOrientation(I)V

    .line 354
    :goto_0
    return-void

    .line 342
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 343
    sget-object v1, Lcom/ironsource/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    const-string v2, "ROTATION_180"

    invoke-static {v1, v2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    invoke-virtual {p0, v4}, Lcom/ironsource/sdk/controller/ControllerActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 345
    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 346
    sget-object v1, Lcom/ironsource/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    const-string v2, "ROTATION_270 Right Landscape"

    invoke-static {v1, v2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    invoke-virtual {p0, v4}, Lcom/ironsource/sdk/controller/ControllerActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 348
    :cond_2
    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 349
    sget-object v1, Lcom/ironsource/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    const-string v2, "ROTATION_90 Left Landscape"

    invoke-static {v1, v2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    invoke-virtual {p0, v3}, Lcom/ironsource/sdk/controller/ControllerActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 352
    :cond_3
    sget-object v1, Lcom/ironsource/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    const-string v2, "No Rotation"

    invoke-static {v1, v2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setInitiatePortraitOrientation()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 361
    invoke-static {p0}, Lcom/ironsource/environment/DeviceStatus;->getApplicationRotation(Landroid/content/Context;)I

    move-result v0

    .line 363
    .local v0, "rotation":I
    sget-object v1, Lcom/ironsource/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    const-string v2, "setInitiatePortraitOrientation"

    invoke-static {v1, v2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    if-nez v0, :cond_0

    .line 366
    sget-object v1, Lcom/ironsource/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    const-string v2, "ROTATION_0"

    invoke-static {v1, v2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    invoke-virtual {p0, v3}, Lcom/ironsource/sdk/controller/ControllerActivity;->setRequestedOrientation(I)V

    .line 380
    :goto_0
    return-void

    .line 368
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 369
    sget-object v1, Lcom/ironsource/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    const-string v2, "ROTATION_180"

    invoke-static {v1, v2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Lcom/ironsource/sdk/controller/ControllerActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 371
    :cond_1
    if-ne v0, v3, :cond_2

    .line 372
    sget-object v1, Lcom/ironsource/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    const-string v2, "ROTATION_270 Right Landscape"

    invoke-static {v1, v2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    invoke-virtual {p0, v3}, Lcom/ironsource/sdk/controller/ControllerActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 374
    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 375
    sget-object v1, Lcom/ironsource/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    const-string v2, "ROTATION_90 Left Landscape"

    invoke-static {v1, v2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    invoke-virtual {p0, v3}, Lcom/ironsource/sdk/controller/ControllerActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 378
    :cond_3
    sget-object v1, Lcom/ironsource/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    const-string v2, "No Rotation"

    invoke-static {v1, v2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onBackButtonPressed()Z
    .locals 1

    .prologue
    .line 278
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/ControllerActivity;->onBackPressed()V

    .line 279
    const/4 v0, 0x1

    return v0
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 285
    sget-object v1, Lcom/ironsource/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    const-string v2, "onBackPressed"

    invoke-static {v1, v2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    invoke-static {}, Lcom/ironsource/sdk/handlers/BackButtonHandler;->getInstance()Lcom/ironsource/sdk/handlers/BackButtonHandler;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/ironsource/sdk/handlers/BackButtonHandler;->handleBackButton(Landroid/app/Activity;)Z

    move-result v0

    .line 289
    .local v0, "isHandled":Z
    if-nez v0, :cond_0

    .line 290
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 292
    :cond_0
    return-void
.end method

.method public onCloseRequested()V
    .locals 0

    .prologue
    .line 268
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/ControllerActivity;->finish()V

    .line 269
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    .line 78
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 80
    sget-object v4, Lcom/ironsource/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    const-string v5, "onCreate"

    invoke-static {v4, v5}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/ControllerActivity;->hideActivityTitle()V

    .line 86
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/ControllerActivity;->hideActivtiyStatusBar()V

    .line 89
    invoke-static {p0}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getInstance(Landroid/app/Activity;)Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;

    move-result-object v1

    .line 90
    .local v1, "ssaPubAgt":Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;
    invoke-virtual {v1}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getWebViewController()Lcom/ironsource/sdk/controller/IronSourceWebView;

    move-result-object v4

    iput-object v4, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mWebViewController:Lcom/ironsource/sdk/controller/IronSourceWebView;

    .line 91
    iget-object v4, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mWebViewController:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v4, v6}, Lcom/ironsource/sdk/controller/IronSourceWebView;->setId(I)V

    .line 94
    iget-object v4, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mWebViewController:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v4, p0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->setOnWebViewControllerChangeListener(Lcom/ironsource/sdk/listeners/OnWebViewChangeListener;)V

    .line 95
    iget-object v4, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mWebViewController:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v4, p0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->setVideoEventsListener(Lcom/ironsource/sdk/controller/VideoEventsListener;)V

    .line 97
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/ControllerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 98
    .local v0, "intent":Landroid/content/Intent;
    const-string v4, "productType"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mProductType:Ljava/lang/String;

    .line 99
    const-string v4, "immersive"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mIsImmersive:Z

    .line 101
    iget-boolean v4, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mIsImmersive:Z

    if-eqz v4, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/ControllerActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/ironsource/sdk/controller/ControllerActivity$2;

    invoke-direct {v5, p0}, Lcom/ironsource/sdk/controller/ControllerActivity$2;-><init>(Lcom/ironsource/sdk/controller/ControllerActivity;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 113
    iget-object v4, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->decorViewSettings:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Lcom/ironsource/sdk/controller/ControllerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 117
    :cond_0
    iget-object v4, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mProductType:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v4}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mProductType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 118
    if-eqz p1, :cond_4

    .line 119
    const-string v4, "state"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/ironsource/sdk/data/AdUnitsState;

    .line 120
    .local v2, "state":Lcom/ironsource/sdk/data/AdUnitsState;
    if-eqz v2, :cond_1

    .line 121
    iput-object v2, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mState:Lcom/ironsource/sdk/data/AdUnitsState;

    .line 122
    iget-object v4, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mWebViewController:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v4, v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->restoreState(Lcom/ironsource/sdk/data/AdUnitsState;)V

    .line 124
    :cond_1
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/ControllerActivity;->finish()V

    .line 131
    .end local v2    # "state":Lcom/ironsource/sdk/data/AdUnitsState;
    :cond_2
    :goto_0
    new-instance v4, Landroid/widget/RelativeLayout;

    invoke-direct {v4, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mContainer:Landroid/widget/RelativeLayout;

    .line 132
    iget-object v4, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mContainer:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->MATCH_PARENT_LAYOUT_PARAMS:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, v4, v5}, Lcom/ironsource/sdk/controller/ControllerActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 136
    iget-object v4, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mWebViewController:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v4}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getLayout()Landroid/widget/FrameLayout;

    move-result-object v4

    iput-object v4, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mWebViewFrameContainer:Landroid/widget/FrameLayout;

    .line 138
    iget-object v4, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 139
    .local v3, "view":Landroid/view/View;
    if-nez v3, :cond_3

    .line 141
    iget-object v4, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mWebViewFrameContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 142
    iput-boolean v6, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->calledFromOnCreate:Z

    .line 143
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/ControllerActivity;->finish()V

    .line 147
    :cond_3
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/ControllerActivity;->initOrientationState()V

    .line 149
    return-void

    .line 127
    .end local v3    # "view":Landroid/view/View;
    :cond_4
    iget-object v4, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mWebViewController:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v4}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getSavedState()Lcom/ironsource/sdk/data/AdUnitsState;

    move-result-object v4

    iput-object v4, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mState:Lcom/ironsource/sdk/data/AdUnitsState;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 242
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 243
    sget-object v0, Lcom/ironsource/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    iget-boolean v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->calledFromOnCreate:Z

    if-eqz v0, :cond_0

    .line 246
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/ControllerActivity;->removeWebViewContainerView()V

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mWebViewController:Lcom/ironsource/sdk/controller/IronSourceWebView;

    if-eqz v0, :cond_1

    .line 250
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mWebViewController:Lcom/ironsource/sdk/controller/IronSourceWebView;

    sget-object v1, Lcom/ironsource/sdk/controller/IronSourceWebView$State;->Gone:Lcom/ironsource/sdk/controller/IronSourceWebView$State;

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->setState(Lcom/ironsource/sdk/controller/IronSourceWebView$State;)V

    .line 251
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mWebViewController:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->removeVideoEventsListener()V

    .line 254
    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 384
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mWebViewController:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->inCustomView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mWebViewController:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->hideCustomView()V

    .line 387
    const/4 v0, 0x1

    .line 394
    :goto_0
    return v0

    .line 390
    :cond_0
    iget-boolean v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mIsImmersive:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x19

    if-eq p1, v0, :cond_1

    const/16 v0, 0x18

    if-ne p1, v0, :cond_2

    .line 391
    :cond_1
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mUiThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->decorViewSettings:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 392
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mUiThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->decorViewSettings:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 394
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onOrientationChanged(Ljava/lang/String;I)V
    .locals 0
    .param p1, "orientation"    # Ljava/lang/String;
    .param p2, "rotation"    # I

    .prologue
    .line 273
    invoke-direct {p0, p1, p2}, Lcom/ironsource/sdk/controller/ControllerActivity;->handleOrientationState(Ljava/lang/String;I)V

    .line 274
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 225
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 226
    sget-object v0, Lcom/ironsource/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/controller/ControllerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x0

    .line 229
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 231
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mWebViewController:Lcom/ironsource/sdk/controller/IronSourceWebView;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mWebViewController:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v0, p0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->unregisterConnectionReceiver(Landroid/content/Context;)V

    .line 233
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mWebViewController:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->pause()V

    .line 234
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mWebViewController:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v1, 0x0

    const-string v2, "main"

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->viewableChange(ZLjava/lang/String;)V

    .line 237
    :cond_0
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/ControllerActivity;->removeWebViewContainerView()V

    .line 238
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 206
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 207
    sget-object v0, Lcom/ironsource/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mContainer:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mWebViewFrameContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->MATCH_PARENT_LAYOUT_PARAMS:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 211
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mWebViewController:Lcom/ironsource/sdk/controller/IronSourceWebView;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mWebViewController:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v0, p0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->registerConnectionReceiver(Landroid/content/Context;)V

    .line 213
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mWebViewController:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->resume()V

    .line 214
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mWebViewController:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v1, 0x1

    const-string v2, "main"

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->viewableChange(ZLjava/lang/String;)V

    .line 217
    :cond_0
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/controller/ControllerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    .line 218
    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 221
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 196
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 198
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mProductType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v0}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mProductType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mState:Lcom/ironsource/sdk/data/AdUnitsState;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/data/AdUnitsState;->setShouldRestore(Z)V

    .line 200
    const-string v0, "state"

    iget-object v1, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mState:Lcom/ironsource/sdk/data/AdUnitsState;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 202
    :cond_0
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 2

    .prologue
    .line 296
    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    .line 298
    sget-object v0, Lcom/ironsource/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    const-string v1, "onUserLeaveHint"

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    return-void
.end method

.method public onVideoEnded()V
    .locals 1

    .prologue
    .line 432
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/controller/ControllerActivity;->toggleKeepScreen(Z)V

    .line 433
    return-void
.end method

.method public onVideoPaused()V
    .locals 1

    .prologue
    .line 422
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/controller/ControllerActivity;->toggleKeepScreen(Z)V

    .line 423
    return-void
.end method

.method public onVideoResumed()V
    .locals 1

    .prologue
    .line 427
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/controller/ControllerActivity;->toggleKeepScreen(Z)V

    .line 428
    return-void
.end method

.method public onVideoStarted()V
    .locals 1

    .prologue
    .line 417
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/controller/ControllerActivity;->toggleKeepScreen(Z)V

    .line 418
    return-void
.end method

.method public onVideoStopped()V
    .locals 1

    .prologue
    .line 437
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/controller/ControllerActivity;->toggleKeepScreen(Z)V

    .line 438
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    .prologue
    .line 408
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 410
    iget-boolean v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->mIsImmersive:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 411
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->decorViewSettings:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/controller/ControllerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 413
    :cond_0
    return-void
.end method

.method public setRequestedOrientation(I)V
    .locals 3
    .param p1, "requestedOrientation"    # I

    .prologue
    .line 399
    iget v0, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->currentRequestedRotation:I

    if-eq v0, p1, :cond_0

    .line 400
    sget-object v0, Lcom/ironsource/sdk/controller/ControllerActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Rotation: Req = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Curr = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->currentRequestedRotation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    iput p1, p0, Lcom/ironsource/sdk/controller/ControllerActivity;->currentRequestedRotation:I

    .line 402
    invoke-super {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 404
    :cond_0
    return-void
.end method

.method public toggleKeepScreen(Z)V
    .locals 0
    .param p1, "screenOn"    # Z

    .prologue
    .line 441
    if-eqz p1, :cond_0

    .line 442
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/ControllerActivity;->keepScreenOn()V

    .line 447
    :goto_0
    return-void

    .line 445
    :cond_0
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/ControllerActivity;->cancelScreenOn()V

    goto :goto_0
.end method
