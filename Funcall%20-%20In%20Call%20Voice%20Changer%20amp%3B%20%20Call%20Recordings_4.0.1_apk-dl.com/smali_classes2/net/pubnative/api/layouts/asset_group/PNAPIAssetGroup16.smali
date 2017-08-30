.class public Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup16;
.super Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup;
.source "SourceFile"

# interfaces
.implements Lnet/pubnative/api/core/request/model/PNAPIAdModel$Listener;


# instance fields
.field protected mBanner:Landroid/widget/ImageView;

.field protected mBody:Landroid/widget/RelativeLayout;

.field protected mCallToAction:Landroid/widget/TextView;

.field protected mContentInfo:Landroid/widget/RelativeLayout;

.field protected mDescription:Landroid/widget/TextView;

.field protected mHeader:Landroid/widget/RelativeLayout;

.field protected mIcon:Landroid/widget/ImageView;

.field protected mIdMap:Lnet/pubnative/api/layouts/PNAPILayoutView$IDMap;

.field protected mRating:Landroid/widget/RatingBar;

.field protected mRoot:Landroid/widget/RelativeLayout;

.field protected mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup;-><init>(Landroid/content/Context;)V

    .line 33
    return-void
.end method


# virtual methods
.method public getIDMap()Lnet/pubnative/api/layouts/PNAPILayoutView$IDMap;
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup16;->mIdMap:Lnet/pubnative/api/layouts/PNAPILayoutView$IDMap;

    if-nez v0, :cond_0

    .line 109
    new-instance v0, Lnet/pubnative/api/layouts/PNAPILayoutView$IDMap;

    invoke-direct {v0, p0}, Lnet/pubnative/api/layouts/PNAPILayoutView$IDMap;-><init>(Lnet/pubnative/api/layouts/PNAPILayoutView;)V

    iput-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup16;->mIdMap:Lnet/pubnative/api/layouts/PNAPILayoutView$IDMap;

    .line 110
    iget-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup16;->mIdMap:Lnet/pubnative/api/layouts/PNAPILayoutView$IDMap;

    iget-object v1, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup16;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getId()I

    move-result v1

    iput v1, v0, Lnet/pubnative/api/layouts/PNAPILayoutView$IDMap;->title:I

    .line 111
    iget-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup16;->mIdMap:Lnet/pubnative/api/layouts/PNAPILayoutView$IDMap;

    iget-object v1, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup16;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getId()I

    move-result v1

    iput v1, v0, Lnet/pubnative/api/layouts/PNAPILayoutView$IDMap;->description:I

    .line 112
    iget-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup16;->mIdMap:Lnet/pubnative/api/layouts/PNAPILayoutView$IDMap;

    iget-object v1, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup16;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getId()I

    move-result v1

    iput v1, v0, Lnet/pubnative/api/layouts/PNAPILayoutView$IDMap;->icon:I

    .line 113
    iget-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup16;->mIdMap:Lnet/pubnative/api/layouts/PNAPILayoutView$IDMap;

    iget-object v1, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup16;->mBanner:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getId()I

    move-result v1

    iput v1, v0, Lnet/pubnative/api/layouts/PNAPILayoutView$IDMap;->banner:I

    .line 114
    iget-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup16;->mIdMap:Lnet/pubnative/api/layouts/PNAPILayoutView$IDMap;

    iget-object v1, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup16;->mRating:Landroid/widget/RatingBar;

    invoke-virtual {v1}, Landroid/widget/RatingBar;->getId()I

    move-result v1

    iput v1, v0, Lnet/pubnative/api/layouts/PNAPILayoutView$IDMap;->starRating:I

    .line 115
    iget-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup16;->mIdMap:Lnet/pubnative/api/layouts/PNAPILayoutView$IDMap;

    iget-object v1, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup16;->mCallToAction:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getId()I

    move-result v1

    iput v1, v0, Lnet/pubnative/api/layouts/PNAPILayoutView$IDMap;->callToAction:I

    .line 117
    :cond_0
    iget-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup16;->mIdMap:Lnet/pubnative/api/layouts/PNAPILayoutView$IDMap;

    return-object v0
.end method

.method public load()V
    .locals 3

    .prologue
    .line 38
    invoke-virtual {p0}, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup16;->loadView()V

    .line 39
    iget-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup16;->mTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup16;->mAdModel:Lnet/pubnative/api/core/request/model/PNAPIAdModel;

    invoke-virtual {v1}, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    iget-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup16;->mDescription:Landroid/widget/TextView;

    iget-object v1, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup16;->mAdModel:Lnet/pubnative/api/core/request/model/PNAPIAdModel;

    invoke-virtual {v1}, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    iget-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup16;->mCallToAction:Landroid/widget/TextView;

    iget-object v1, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup16;->mAdModel:Lnet/pubnative/api/core/request/model/PNAPIAdModel;

    invoke-virtual {v1}, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->getCtaText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    iget-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup16;->mRating:Landroid/widget/RatingBar;

    iget-object v1, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup16;->mAdModel:Lnet/pubnative/api/core/request/model/PNAPIAdModel;

    invoke-virtual {v1}, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->getRating()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setRating(F)V

    .line 44
    new-instance v0, Lnet/pubnative/api/core/utils/PNAPIImageDownloader;

    invoke-direct {v0}, Lnet/pubnative/api/core/utils/PNAPIImageDownloader;-><init>()V

    iget-object v1, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup16;->mAdModel:Lnet/pubnative/api/core/request/model/PNAPIAdModel;

    invoke-virtual {v1}, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->getIconUrl()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup16$1;

    invoke-direct {v2, p0}, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup16$1;-><init>(Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup16;)V

    invoke-virtual {v0, v1, v2}, Lnet/pubnative/api/core/utils/PNAPIImageDownloader;->load(Ljava/lang/String;Lnet/pubnative/api/core/utils/PNAPIImageDownloader$Listener;)V

    .line 70
    iget-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup16;->mAdModel:Lnet/pubnative/api/core/request/model/PNAPIAdModel;

    iget-object v1, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup16;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->getContentInfo(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    .line 71
    if-eqz v0, :cond_0

    .line 72
    iget-object v1, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup16;->mContentInfo:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 74
    :cond_0
    return-void
.end method

.method protected loadView()V
    .locals 3

    .prologue
    .line 78
    invoke-virtual {p0}, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup16;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lnet/pubnative/sdk/R$layout;->pubnative_asset_group_16:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup16;->mRoot:Landroid/widget/RelativeLayout;

    .line 80
    iget-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup16;->mRoot:Landroid/widget/RelativeLayout;

    sget v1, Lnet/pubnative/sdk/R$id;->pubnative_header:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup16;->mHeader:Landroid/widget/RelativeLayout;

    .line 81
    iget-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup16;->mRoot:Landroid/widget/RelativeLayout;

    sget v1, Lnet/pubnative/sdk/R$id;->pubnative_body:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup16;->mBody:Landroid/widget/RelativeLayout;

    .line 83
    iget-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup16;->mBody:Landroid/widget/RelativeLayout;

    sget v1, Lnet/pubnative/sdk/R$id;->pubnative_title:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup16;->mTitle:Landroid/widget/TextView;

    .line 84
    iget-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup16;->mBody:Landroid/widget/RelativeLayout;

    sget v1, Lnet/pubnative/sdk/R$id;->pubnative_icon:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup16;->mIcon:Landroid/widget/ImageView;

    .line 85
    iget-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup16;->mBody:Landroid/widget/RelativeLayout;

    sget v1, Lnet/pubnative/sdk/R$id;->pubnative_rating:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RatingBar;

    iput-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup16;->mRating:Landroid/widget/RatingBar;

    .line 86
    iget-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup16;->mHeader:Landroid/widget/RelativeLayout;

    sget v1, Lnet/pubnative/sdk/R$id;->pubnative_banner:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup16;->mBanner:Landroid/widget/ImageView;

    .line 88
    iget-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup16;->mRoot:Landroid/widget/RelativeLayout;

    sget v1, Lnet/pubnative/sdk/R$id;->pubnative_description:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup16;->mDescription:Landroid/widget/TextView;

    .line 89
    iget-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup16;->mRoot:Landroid/widget/RelativeLayout;

    sget v1, Lnet/pubnative/sdk/R$id;->pubnative_callToAction:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup16;->mCallToAction:Landroid/widget/TextView;

    .line 90
    iget-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup16;->mRoot:Landroid/widget/RelativeLayout;

    sget v1, Lnet/pubnative/sdk/R$id;->pubnative_content_info_container:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup16;->mContentInfo:Landroid/widget/RelativeLayout;

    .line 91
    return-void
.end method

.method public onPNAPIAdModelClick(Lnet/pubnative/api/core/request/model/PNAPIAdModel;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 127
    invoke-virtual {p0}, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup16;->invokeOnClick()V

    .line 128
    return-void
.end method

.method public onPNAPIAdModelImpression(Lnet/pubnative/api/core/request/model/PNAPIAdModel;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 122
    invoke-virtual {p0}, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup16;->invokeOnImpressionConfirmed()V

    .line 123
    return-void
.end method

.method public onPNAPIAdModelOpenOffer(Lnet/pubnative/api/core/request/model/PNAPIAdModel;)V
    .locals 0

    .prologue
    .line 133
    return-void
.end method

.method public startTracking()V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup16;->mAdModel:Lnet/pubnative/api/core/request/model/PNAPIAdModel;

    iget-object v1, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup16;->mRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1, p0}, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->startTracking(Landroid/view/View;Lnet/pubnative/api/core/request/model/PNAPIAdModel$Listener;)V

    .line 97
    return-void
.end method

.method public stopTracking()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup16;->mAdModel:Lnet/pubnative/api/core/request/model/PNAPIAdModel;

    invoke-virtual {v0}, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->stopTracking()V

    .line 103
    return-void
.end method
