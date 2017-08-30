.class public Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup3;
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

.field protected mFooter:Landroid/widget/RelativeLayout;

.field protected mHeader:Landroid/widget/RelativeLayout;

.field protected mIcon:Landroid/widget/ImageView;

.field protected mIdMap:Lnet/pubnative/api/layouts/PNAPILayoutView$IDMap;

.field protected mPlayer:Lnet/pubnative/player/VASTPlayer;

.field protected mRating:Landroid/widget/RatingBar;

.field protected mRoot:Landroid/widget/RelativeLayout;

.field protected mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup;-><init>(Landroid/content/Context;)V

    .line 39
    return-void
.end method


# virtual methods
.method public getIDMap()Lnet/pubnative/api/layouts/PNAPILayoutView$IDMap;
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup3;->mIdMap:Lnet/pubnative/api/layouts/PNAPILayoutView$IDMap;

    if-nez v0, :cond_0

    .line 121
    new-instance v0, Lnet/pubnative/api/layouts/PNAPILayoutView$IDMap;

    invoke-direct {v0, p0}, Lnet/pubnative/api/layouts/PNAPILayoutView$IDMap;-><init>(Lnet/pubnative/api/layouts/PNAPILayoutView;)V

    iput-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup3;->mIdMap:Lnet/pubnative/api/layouts/PNAPILayoutView$IDMap;

    .line 122
    iget-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup3;->mIdMap:Lnet/pubnative/api/layouts/PNAPILayoutView$IDMap;

    iget-object v1, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup3;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getId()I

    move-result v1

    iput v1, v0, Lnet/pubnative/api/layouts/PNAPILayoutView$IDMap;->title:I

    .line 123
    iget-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup3;->mIdMap:Lnet/pubnative/api/layouts/PNAPILayoutView$IDMap;

    iget-object v1, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup3;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getId()I

    move-result v1

    iput v1, v0, Lnet/pubnative/api/layouts/PNAPILayoutView$IDMap;->description:I

    .line 124
    iget-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup3;->mIdMap:Lnet/pubnative/api/layouts/PNAPILayoutView$IDMap;

    iget-object v1, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup3;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getId()I

    move-result v1

    iput v1, v0, Lnet/pubnative/api/layouts/PNAPILayoutView$IDMap;->icon:I

    .line 125
    iget-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup3;->mIdMap:Lnet/pubnative/api/layouts/PNAPILayoutView$IDMap;

    iget-object v1, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup3;->mRating:Landroid/widget/RatingBar;

    invoke-virtual {v1}, Landroid/widget/RatingBar;->getId()I

    move-result v1

    iput v1, v0, Lnet/pubnative/api/layouts/PNAPILayoutView$IDMap;->starRating:I

    .line 126
    iget-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup3;->mIdMap:Lnet/pubnative/api/layouts/PNAPILayoutView$IDMap;

    iget-object v1, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup3;->mCallToAction:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getId()I

    move-result v1

    iput v1, v0, Lnet/pubnative/api/layouts/PNAPILayoutView$IDMap;->callToAction:I

    .line 128
    :cond_0
    iget-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup3;->mIdMap:Lnet/pubnative/api/layouts/PNAPILayoutView$IDMap;

    return-object v0
.end method

.method public load()V
    .locals 3

    .prologue
    .line 44
    invoke-virtual {p0}, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup3;->loadView()V

    .line 45
    iget-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup3;->mTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup3;->mAdModel:Lnet/pubnative/api/core/request/model/PNAPIAdModel;

    invoke-virtual {v1}, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    iget-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup3;->mRating:Landroid/widget/RatingBar;

    iget-object v1, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup3;->mAdModel:Lnet/pubnative/api/core/request/model/PNAPIAdModel;

    invoke-virtual {v1}, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->getRating()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setRating(F)V

    .line 48
    iget-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup3;->mDescription:Landroid/widget/TextView;

    iget-object v1, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup3;->mAdModel:Lnet/pubnative/api/core/request/model/PNAPIAdModel;

    invoke-virtual {v1}, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup3;->mCallToAction:Landroid/widget/TextView;

    iget-object v1, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup3;->mAdModel:Lnet/pubnative/api/core/request/model/PNAPIAdModel;

    invoke-virtual {v1}, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->getCtaText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    iget-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup3;->mPlayer:Lnet/pubnative/player/VASTPlayer;

    invoke-virtual {v0, p0}, Lnet/pubnative/player/VASTPlayer;->setListener(Lnet/pubnative/player/VASTPlayer$Listener;)V

    .line 52
    iget-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup3;->mPlayer:Lnet/pubnative/player/VASTPlayer;

    invoke-virtual {v0}, Lnet/pubnative/player/VASTPlayer;->onMuteClick()V

    .line 54
    new-instance v0, Lnet/pubnative/api/core/utils/PNAPIImageDownloader;

    invoke-direct {v0}, Lnet/pubnative/api/core/utils/PNAPIImageDownloader;-><init>()V

    .line 55
    iget-object v1, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup3;->mAdModel:Lnet/pubnative/api/core/request/model/PNAPIAdModel;

    invoke-virtual {v1}, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->getIconUrl()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup3$1;

    invoke-direct {v2, p0}, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup3$1;-><init>(Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup3;)V

    invoke-virtual {v0, v1, v2}, Lnet/pubnative/api/core/utils/PNAPIImageDownloader;->load(Ljava/lang/String;Lnet/pubnative/api/core/utils/PNAPIImageDownloader$Listener;)V

    .line 79
    iget-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup3;->mAdModel:Lnet/pubnative/api/core/request/model/PNAPIAdModel;

    iget-object v1, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup3;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->getContentInfo(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    .line 80
    if-eqz v0, :cond_0

    .line 81
    iget-object v1, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup3;->mContentInfo:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 83
    :cond_0
    return-void
.end method

.method protected loadView()V
    .locals 3

    .prologue
    .line 87
    invoke-virtual {p0}, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup3;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lnet/pubnative/sdk/R$layout;->pubnative_asset_group_3:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup3;->mRoot:Landroid/widget/RelativeLayout;

    .line 89
    iget-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup3;->mRoot:Landroid/widget/RelativeLayout;

    sget v1, Lnet/pubnative/sdk/R$id;->pubnative_header:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup3;->mHeader:Landroid/widget/RelativeLayout;

    .line 90
    iget-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup3;->mRoot:Landroid/widget/RelativeLayout;

    sget v1, Lnet/pubnative/sdk/R$id;->pubnative_body:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup3;->mBody:Landroid/widget/RelativeLayout;

    .line 91
    iget-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup3;->mRoot:Landroid/widget/RelativeLayout;

    sget v1, Lnet/pubnative/sdk/R$id;->pubnative_footer:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup3;->mFooter:Landroid/widget/RelativeLayout;

    .line 93
    iget-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup3;->mHeader:Landroid/widget/RelativeLayout;

    sget v1, Lnet/pubnative/sdk/R$id;->pubnative_title:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup3;->mTitle:Landroid/widget/TextView;

    .line 94
    iget-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup3;->mHeader:Landroid/widget/RelativeLayout;

    sget v1, Lnet/pubnative/sdk/R$id;->pubnative_icon:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup3;->mIcon:Landroid/widget/ImageView;

    .line 95
    iget-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup3;->mHeader:Landroid/widget/RelativeLayout;

    sget v1, Lnet/pubnative/sdk/R$id;->pubnative_rating:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RatingBar;

    iput-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup3;->mRating:Landroid/widget/RatingBar;

    .line 97
    iget-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup3;->mBody:Landroid/widget/RelativeLayout;

    sget v1, Lnet/pubnative/sdk/R$id;->pubnative_player:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnet/pubnative/player/VASTPlayer;

    iput-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup3;->mPlayer:Lnet/pubnative/player/VASTPlayer;

    .line 99
    iget-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup3;->mFooter:Landroid/widget/RelativeLayout;

    sget v1, Lnet/pubnative/sdk/R$id;->pubnative_description:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup3;->mDescription:Landroid/widget/TextView;

    .line 100
    iget-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup3;->mFooter:Landroid/widget/RelativeLayout;

    sget v1, Lnet/pubnative/sdk/R$id;->pubnative_callToAction:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup3;->mCallToAction:Landroid/widget/TextView;

    .line 101
    iget-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup3;->mRoot:Landroid/widget/RelativeLayout;

    sget v1, Lnet/pubnative/sdk/R$id;->pubnative_content_info_container:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup3;->mContentInfo:Landroid/widget/RelativeLayout;

    .line 102
    return-void
.end method

.method public onPNAPIAdModelClick(Lnet/pubnative/api/core/request/model/PNAPIAdModel;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 138
    invoke-virtual {p0}, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup3;->invokeOnClick()V

    .line 139
    return-void
.end method

.method public onPNAPIAdModelImpression(Lnet/pubnative/api/core/request/model/PNAPIAdModel;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 133
    invoke-virtual {p0}, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup3;->invokeOnImpressionConfirmed()V

    .line 134
    return-void
.end method

.method public onPNAPIAdModelOpenOffer(Lnet/pubnative/api/core/request/model/PNAPIAdModel;)V
    .locals 0

    .prologue
    .line 144
    return-void
.end method

.method public onVASTPlayerFail(Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 153
    invoke-virtual {p0, p1}, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup3;->invokeOnLoadFail(Ljava/lang/Exception;)V

    .line 154
    return-void
.end method

.method public onVASTPlayerLoadFinish()V
    .locals 0

    .prologue
    .line 148
    invoke-virtual {p0}, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup3;->invokeOnLoadFinish()V

    .line 149
    return-void
.end method

.method public onVASTPlayerOpenOffer()V
    .locals 0

    .prologue
    .line 168
    invoke-virtual {p0}, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup3;->invokeOnClick()V

    .line 169
    return-void
.end method

.method public onVASTPlayerPlaybackFinish()V
    .locals 0

    .prologue
    .line 164
    return-void
.end method

.method public onVASTPlayerPlaybackStart()V
    .locals 0

    .prologue
    .line 159
    return-void
.end method

.method public startTracking()V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup3;->mAdModel:Lnet/pubnative/api/core/request/model/PNAPIAdModel;

    iget-object v1, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup3;->mRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1, p0}, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->startTracking(Landroid/view/View;Lnet/pubnative/api/core/request/model/PNAPIAdModel$Listener;)V

    .line 108
    iget-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup3;->mPlayer:Lnet/pubnative/player/VASTPlayer;

    invoke-virtual {v0}, Lnet/pubnative/player/VASTPlayer;->play()V

    .line 109
    return-void
.end method

.method public stopTracking()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup3;->mPlayer:Lnet/pubnative/player/VASTPlayer;

    invoke-virtual {v0}, Lnet/pubnative/player/VASTPlayer;->stop()V

    .line 114
    iget-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup3;->mAdModel:Lnet/pubnative/api/core/request/model/PNAPIAdModel;

    invoke-virtual {v0}, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->stopTracking()V

    .line 115
    return-void
.end method
