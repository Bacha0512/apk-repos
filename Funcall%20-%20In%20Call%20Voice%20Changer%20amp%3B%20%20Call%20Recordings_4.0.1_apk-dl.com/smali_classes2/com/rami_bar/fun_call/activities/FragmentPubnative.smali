.class public Lcom/rami_bar/fun_call/activities/FragmentPubnative;
.super Landroid/support/v4/app/Fragment;
.source "FragmentPubnative.java"


# static fields
.field public static final APP_TOKEN_PUB_NATIVE:Ljava/lang/String; = "3a706732347c4471920a20e61edae12b"


# instance fields
.field private ad_call_to_action:Landroid/widget/Button;

.field private mAdModel:Lnet/pubnative/sdk/core/request/PNAdModel;

.field private mAdViewContainer:Landroid/widget/RelativeLayout;

.field private mBanner:Landroid/widget/RelativeLayout;

.field private mContentInfo:Landroid/view/ViewGroup;

.field private mCreated:Z

.field private mDescription:Landroid/widget/TextView;

.field private mIcon:Landroid/widget/ImageView;

.field private mRating:Landroid/widget/RatingBar;

.field private mTitle:Landroid/widget/TextView;

.field private srl_refresh:Landroid/support/v4/widget/SwipeRefreshLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/rami_bar/fun_call/activities/FragmentPubnative;)Landroid/support/v4/widget/SwipeRefreshLayout;
    .locals 1
    .param p0, "x0"    # Lcom/rami_bar/fun_call/activities/FragmentPubnative;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentPubnative;->srl_refresh:Landroid/support/v4/widget/SwipeRefreshLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/rami_bar/fun_call/activities/FragmentPubnative;Lnet/pubnative/sdk/core/request/PNAdModel;)V
    .locals 0
    .param p0, "x0"    # Lcom/rami_bar/fun_call/activities/FragmentPubnative;
    .param p1, "x1"    # Lnet/pubnative/sdk/core/request/PNAdModel;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/rami_bar/fun_call/activities/FragmentPubnative;->handleAd(Lnet/pubnative/sdk/core/request/PNAdModel;)V

    return-void
.end method

.method private getViewsIds(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 79
    const v0, 0x7f10016e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SwipeRefreshLayout;

    iput-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentPubnative;->srl_refresh:Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 80
    const v0, 0x7f10016f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentPubnative;->mAdViewContainer:Landroid/widget/RelativeLayout;

    .line 81
    const v0, 0x7f100178

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentPubnative;->mContentInfo:Landroid/view/ViewGroup;

    .line 82
    const v0, 0x7f100171

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentPubnative;->mTitle:Landroid/widget/TextView;

    .line 83
    const v0, 0x7f100177

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentPubnative;->mDescription:Landroid/widget/TextView;

    .line 84
    const v0, 0x7f100172

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RatingBar;

    iput-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentPubnative;->mRating:Landroid/widget/RatingBar;

    .line 85
    const v0, 0x7f100170

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentPubnative;->mIcon:Landroid/widget/ImageView;

    .line 86
    const v0, 0x7f100176

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentPubnative;->mBanner:Landroid/widget/RelativeLayout;

    .line 87
    const v0, 0x7f100175

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentPubnative;->ad_call_to_action:Landroid/widget/Button;

    .line 88
    return-void
.end method

.method private handleAd(Lnet/pubnative/sdk/core/request/PNAdModel;)V
    .locals 2
    .param p1, "ad"    # Lnet/pubnative/sdk/core/request/PNAdModel;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/rami_bar/fun_call/activities/FragmentPubnative;->mAdModel:Lnet/pubnative/sdk/core/request/PNAdModel;

    .line 120
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentPubnative;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Lnet/pubnative/sdk/core/request/PNAdModel;->withTitle(Landroid/widget/TextView;)Lnet/pubnative/sdk/core/request/PNAdModel;

    move-result-object v0

    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/FragmentPubnative;->mDescription:Landroid/widget/TextView;

    .line 121
    invoke-virtual {v0, v1}, Lnet/pubnative/sdk/core/request/PNAdModel;->withDescription(Landroid/widget/TextView;)Lnet/pubnative/sdk/core/request/PNAdModel;

    move-result-object v0

    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/FragmentPubnative;->mIcon:Landroid/widget/ImageView;

    .line 122
    invoke-virtual {v0, v1}, Lnet/pubnative/sdk/core/request/PNAdModel;->withIcon(Landroid/widget/ImageView;)Lnet/pubnative/sdk/core/request/PNAdModel;

    move-result-object v0

    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/FragmentPubnative;->mBanner:Landroid/widget/RelativeLayout;

    .line 123
    invoke-virtual {v0, v1}, Lnet/pubnative/sdk/core/request/PNAdModel;->withBanner(Landroid/view/ViewGroup;)Lnet/pubnative/sdk/core/request/PNAdModel;

    move-result-object v0

    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/FragmentPubnative;->mRating:Landroid/widget/RatingBar;

    .line 124
    invoke-virtual {v0, v1}, Lnet/pubnative/sdk/core/request/PNAdModel;->withRating(Landroid/widget/RatingBar;)Lnet/pubnative/sdk/core/request/PNAdModel;

    move-result-object v0

    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/FragmentPubnative;->mContentInfo:Landroid/view/ViewGroup;

    .line 125
    invoke-virtual {v0, v1}, Lnet/pubnative/sdk/core/request/PNAdModel;->withContentInfoContainer(Landroid/view/ViewGroup;)Lnet/pubnative/sdk/core/request/PNAdModel;

    move-result-object v0

    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/FragmentPubnative;->ad_call_to_action:Landroid/widget/Button;

    .line 126
    invoke-virtual {v0, v1}, Lnet/pubnative/sdk/core/request/PNAdModel;->withCallToAction(Landroid/widget/Button;)Lnet/pubnative/sdk/core/request/PNAdModel;

    move-result-object v0

    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/FragmentPubnative;->mAdViewContainer:Landroid/widget/RelativeLayout;

    .line 127
    invoke-virtual {v0, v1}, Lnet/pubnative/sdk/core/request/PNAdModel;->startTracking(Landroid/view/ViewGroup;)V

    .line 129
    new-instance v0, Lcom/rami_bar/fun_call/activities/FragmentPubnative$3;

    invoke-direct {v0, p0}, Lcom/rami_bar/fun_call/activities/FragmentPubnative$3;-><init>(Lcom/rami_bar/fun_call/activities/FragmentPubnative;)V

    invoke-virtual {p1, v0}, Lnet/pubnative/sdk/core/request/PNAdModel;->setListener(Lnet/pubnative/sdk/core/request/PNAdModel$Listener;)V

    .line 140
    return-void
.end method

.method private handleCallbacks()V
    .locals 0

    .prologue
    .line 73
    return-void
.end method

.method private setDataToViews()V
    .locals 5

    .prologue
    .line 91
    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/FragmentPubnative;->srl_refresh:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 92
    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/FragmentPubnative;->srl_refresh:Landroid/support/v4/widget/SwipeRefreshLayout;

    new-instance v2, Lcom/rami_bar/fun_call/activities/FragmentPubnative$1;

    invoke-direct {v2, p0}, Lcom/rami_bar/fun_call/activities/FragmentPubnative$1;-><init>(Lcom/rami_bar/fun_call/activities/FragmentPubnative;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->post(Ljava/lang/Runnable;)Z

    .line 99
    new-instance v0, Lnet/pubnative/sdk/core/request/PNRequest;

    invoke-direct {v0}, Lnet/pubnative/sdk/core/request/PNRequest;-><init>()V

    .line 100
    .local v0, "request":Lnet/pubnative/sdk/core/request/PNRequest;
    invoke-virtual {p0}, Lcom/rami_bar/fun_call/activities/FragmentPubnative;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "3a706732347c4471920a20e61edae12b"

    const-string v3, "NativeAd"

    new-instance v4, Lcom/rami_bar/fun_call/activities/FragmentPubnative$2;

    invoke-direct {v4, p0}, Lcom/rami_bar/fun_call/activities/FragmentPubnative$2;-><init>(Lcom/rami_bar/fun_call/activities/FragmentPubnative;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lnet/pubnative/sdk/core/request/PNRequest;->start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lnet/pubnative/sdk/core/request/PNRequest$Listener;)V

    .line 116
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 38
    const v1, 0x7f04003f

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 40
    .local v0, "v":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/rami_bar/fun_call/activities/FragmentPubnative;->getViewsIds(Landroid/view/View;)V

    .line 42
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/FragmentPubnative;->setDataToViews()V

    .line 44
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/rami_bar/fun_call/activities/FragmentPubnative;->mCreated:Z

    .line 46
    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 61
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 63
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentPubnative;->mAdModel:Lnet/pubnative/sdk/core/request/PNAdModel;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentPubnative;->mAdModel:Lnet/pubnative/sdk/core/request/PNAdModel;

    invoke-virtual {v0}, Lnet/pubnative/sdk/core/request/PNAdModel;->stopTracking()V

    .line 66
    :cond_0
    return-void
.end method

.method public setMenuVisibility(Z)V
    .locals 1
    .param p1, "menuVisible"    # Z

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->setMenuVisibility(Z)V

    .line 54
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/rami_bar/fun_call/activities/FragmentPubnative;->mCreated:Z

    if-eqz v0, :cond_0

    .line 55
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/FragmentPubnative;->setDataToViews()V

    .line 57
    :cond_0
    return-void
.end method
