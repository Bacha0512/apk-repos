.class public Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup20;
.super Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup;
.source "SourceFile"

# interfaces
.implements Lnet/pubnative/api/core/request/model/PNAPIAdModel$Listener;
.implements Lnet/pubnative/player/VASTPlayer$Listener;


# instance fields
.field protected mBody:Landroid/widget/RelativeLayout;

.field protected mCallToAction:Landroid/widget/TextView;

.field protected mContentInfo:Landroid/widget/RelativeLayout;

.field protected mDescription:Landroid/widget/TextView;

.field protected mHeader:Landroid/widget/RelativeLayout;

.field protected mIcon:Landroid/widget/ImageView;

.field protected mIdMap:Lnet/pubnative/api/layouts/PNAPILayoutView$IDMap;

.field protected mPlayer:Lnet/pubnative/player/VASTPlayer;

.field protected mRoot:Landroid/widget/RelativeLayout;

.field protected mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup;-><init>(Landroid/content/Context;)V

    .line 34
    return-void
.end method


# virtual methods
.method public getIDMap()Lnet/pubnative/api/layouts/PNAPILayoutView$IDMap;
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup20;->mIdMap:Lnet/pubnative/api/layouts/PNAPILayoutView$IDMap;

    if-nez v0, :cond_0

    .line 110
    new-instance v0, Lnet/pubnative/api/layouts/PNAPILayoutView$IDMap;

    invoke-direct {v0, p0}, Lnet/pubnative/api/layouts/PNAPILayoutView$IDMap;-><init>(Lnet/pubnative/api/layouts/PNAPILayoutView;)V

    iput-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup20;->mIdMap:Lnet/pubnative/api/layouts/PNAPILayoutView$IDMap;

    .line 111
    iget-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup20;->mIdMap:Lnet/pubnative/api/layouts/PNAPILayoutView$IDMap;

    iget-object v1, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup20;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getId()I

    move-result v1

    iput v1, v0, Lnet/pubnative/api/layouts/PNAPILayoutView$IDMap;->title:I

    .line 112
    iget-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup20;->mIdMap:Lnet/pubnative/api/layouts/PNAPILayoutView$IDMap;

    iget-object v1, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup20;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getId()I

    move-result v1

    iput v1, v0, Lnet/pubnative/api/layouts/PNAPILayoutView$IDMap;->description:I

    .line 113
    iget-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup20;->mIdMap:Lnet/pubnative/api/layouts/PNAPILayoutView$IDMap;

    iget-object v1, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup20;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getId()I

    move-result v1

    iput v1, v0, Lnet/pubnative/api/layouts/PNAPILayoutView$IDMap;->icon:I

    .line 114
    iget-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup20;->mIdMap:Lnet/pubnative/api/layouts/PNAPILayoutView$IDMap;

    iget-object v1, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup20;->mCallToAction:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getId()I

    move-result v1

    iput v1, v0, Lnet/pubnative/api/layouts/PNAPILayoutView$IDMap;->callToAction:I

    .line 116
    :cond_0
    iget-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup20;->mIdMap:Lnet/pubnative/api/layouts/PNAPILayoutView$IDMap;

    return-object v0
.end method

.method public load()V
    .locals 3

    .prologue
    .line 39
    invoke-virtual {p0}, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup20;->loadView()V

    .line 40
    iget-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup20;->mTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup20;->mAdModel:Lnet/pubnative/api/core/request/model/PNAPIAdModel;

    invoke-virtual {v1}, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    iget-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup20;->mDescription:Landroid/widget/TextView;

    iget-object v1, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup20;->mAdModel:Lnet/pubnative/api/core/request/model/PNAPIAdModel;

    invoke-virtual {v1}, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    iget-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup20;->mCallToAction:Landroid/widget/TextView;

    iget-object v1, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup20;->mAdModel:Lnet/pubnative/api/core/request/model/PNAPIAdModel;

    invoke-virtual {v1}, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->getCtaText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    iget-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup20;->mPlayer:Lnet/pubnative/player/VASTPlayer;

    invoke-virtual {v0, p0}, Lnet/pubnative/player/VASTPlayer;->setListener(Lnet/pubnative/player/VASTPlayer$Listener;)V

    .line 45
    new-instance v0, Lnet/pubnative/api/core/utils/PNAPIImageDownloader;

    invoke-direct {v0}, Lnet/pubnative/api/core/utils/PNAPIImageDownloader;-><init>()V

    .line 46
    iget-object v1, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup20;->mAdModel:Lnet/pubnative/api/core/request/model/PNAPIAdModel;

    invoke-virtual {v1}, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->getIconUrl()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup20$1;

    invoke-direct {v2, p0}, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup20$1;-><init>(Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup20;)V

    invoke-virtual {v0, v1, v2}, Lnet/pubnative/api/core/utils/PNAPIImageDownloader;->load(Ljava/lang/String;Lnet/pubnative/api/core/utils/PNAPIImageDownloader$Listener;)V

    .line 70
    iget-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup20;->mAdModel:Lnet/pubnative/api/core/request/model/PNAPIAdModel;

    iget-object v1, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup20;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->getContentInfo(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    .line 71
    if-eqz v0, :cond_0

    .line 72
    iget-object v1, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup20;->mContentInfo:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 74
    :cond_0
    return-void
.end method

.method protected loadView()V
    .locals 3

    .prologue
    .line 78
    invoke-virtual {p0}, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup20;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lnet/pubnative/sdk/R$layout;->pubnative_asset_group_20:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup20;->mRoot:Landroid/widget/RelativeLayout;

    .line 80
    iget-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup20;->mRoot:Landroid/widget/RelativeLayout;

    sget v1, Lnet/pubnative/sdk/R$id;->pubnative_header:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup20;->mHeader:Landroid/widget/RelativeLayout;

    .line 81
    iget-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup20;->mRoot:Landroid/widget/RelativeLayout;

    sget v1, Lnet/pubnative/sdk/R$id;->pubnative_body:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup20;->mBody:Landroid/widget/RelativeLayout;

    .line 83
    iget-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup20;->mBody:Landroid/widget/RelativeLayout;

    sget v1, Lnet/pubnative/sdk/R$id;->pubnative_title:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup20;->mTitle:Landroid/widget/TextView;

    .line 84
    iget-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup20;->mBody:Landroid/widget/RelativeLayout;

    sget v1, Lnet/pubnative/sdk/R$id;->pubnative_icon:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup20;->mIcon:Landroid/widget/ImageView;

    .line 85
    iget-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup20;->mHeader:Landroid/widget/RelativeLayout;

    sget v1, Lnet/pubnative/sdk/R$id;->pubnative_player:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnet/pubnative/player/VASTPlayer;

    iput-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup20;->mPlayer:Lnet/pubnative/player/VASTPlayer;

    .line 87
    iget-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup20;->mRoot:Landroid/widget/RelativeLayout;

    sget v1, Lnet/pubnative/sdk/R$id;->pubnative_description:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup20;->mDescription:Landroid/widget/TextView;

    .line 88
    iget-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup20;->mRoot:Landroid/widget/RelativeLayout;

    sget v1, Lnet/pubnative/sdk/R$id;->pubnative_callToAction:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup20;->mCallToAction:Landroid/widget/TextView;

    .line 89
    iget-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup20;->mRoot:Landroid/widget/RelativeLayout;

    sget v1, Lnet/pubnative/sdk/R$id;->pubnative_content_info_container:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup20;->mContentInfo:Landroid/widget/RelativeLayout;

    .line 90
    return-void
.end method

.method public onPNAPIAdModelClick(Lnet/pubnative/api/core/request/model/PNAPIAdModel;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 126
    invoke-virtual {p0}, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup20;->invokeOnClick()V

    .line 127
    return-void
.end method

.method public onPNAPIAdModelImpression(Lnet/pubnative/api/core/request/model/PNAPIAdModel;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 121
    invoke-virtual {p0}, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup20;->invokeOnImpressionConfirmed()V

    .line 122
    return-void
.end method

.method public onPNAPIAdModelOpenOffer(Lnet/pubnative/api/core/request/model/PNAPIAdModel;)V
    .locals 0

    .prologue
    .line 132
    return-void
.end method

.method public onVASTPlayerFail(Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 141
    invoke-virtual {p0, p1}, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup20;->invokeOnLoadFail(Ljava/lang/Exception;)V

    .line 142
    return-void
.end method

.method public onVASTPlayerLoadFinish()V
    .locals 0

    .prologue
    .line 136
    invoke-virtual {p0}, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup20;->invokeOnLoadFinish()V

    .line 137
    return-void
.end method

.method public onVASTPlayerOpenOffer()V
    .locals 0

    .prologue
    .line 156
    invoke-virtual {p0}, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup20;->invokeOnClick()V

    .line 157
    return-void
.end method

.method public onVASTPlayerPlaybackFinish()V
    .locals 0

    .prologue
    .line 152
    return-void
.end method

.method public onVASTPlayerPlaybackStart()V
    .locals 0

    .prologue
    .line 147
    return-void
.end method

.method public startTracking()V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup20;->mPlayer:Lnet/pubnative/player/VASTPlayer;

    invoke-virtual {v0}, Lnet/pubnative/player/VASTPlayer;->play()V

    .line 96
    iget-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup20;->mAdModel:Lnet/pubnative/api/core/request/model/PNAPIAdModel;

    iget-object v1, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup20;->mRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1, p0}, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->startTracking(Landroid/view/View;Lnet/pubnative/api/core/request/model/PNAPIAdModel$Listener;)V

    .line 97
    return-void
.end method

.method public stopTracking()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup20;->mPlayer:Lnet/pubnative/player/VASTPlayer;

    invoke-virtual {v0}, Lnet/pubnative/player/VASTPlayer;->stop()V

    .line 103
    iget-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup20;->mAdModel:Lnet/pubnative/api/core/request/model/PNAPIAdModel;

    invoke-virtual {v0}, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->stopTracking()V

    .line 104
    return-void
.end method
