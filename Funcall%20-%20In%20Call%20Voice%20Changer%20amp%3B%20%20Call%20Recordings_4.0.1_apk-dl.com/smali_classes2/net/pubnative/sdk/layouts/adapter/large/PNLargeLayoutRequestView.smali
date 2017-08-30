.class public Lnet/pubnative/sdk/layouts/adapter/large/PNLargeLayoutRequestView;
.super Lnet/pubnative/sdk/layouts/PNLayoutView;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mBody:Landroid/widget/RelativeLayout;

.field protected mCallToAction:Landroid/widget/TextView;

.field protected mContentInfoView:Landroid/widget/RelativeLayout;

.field protected mDescription:Landroid/widget/TextView;

.field protected mHeader:Landroid/widget/RelativeLayout;

.field protected mIcon:Landroid/widget/ImageView;

.field protected mRating:Landroid/widget/RatingBar;

.field protected mRootView:Landroid/widget/RelativeLayout;

.field protected mTitle:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lnet/pubnative/sdk/layouts/adapter/large/PNLargeLayoutRequestView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/pubnative/sdk/layouts/adapter/large/PNLargeLayoutRequestView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lnet/pubnative/sdk/layouts/PNLayoutView;-><init>(Landroid/content/Context;)V

    .line 58
    return-void
.end method


# virtual methods
.method public loadWithAd(Landroid/content/Context;Lnet/pubnative/sdk/core/request/PNAdModel;)V
    .locals 3

    .prologue
    .line 142
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lnet/pubnative/sdk/R$layout;->pubnative_asset_group_14:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/large/PNLargeLayoutRequestView;->mRootView:Landroid/widget/RelativeLayout;

    .line 144
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/large/PNLargeLayoutRequestView;->mRootView:Landroid/widget/RelativeLayout;

    sget v1, Lnet/pubnative/sdk/R$id;->pubnative_body:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/large/PNLargeLayoutRequestView;->mBody:Landroid/widget/RelativeLayout;

    .line 146
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/large/PNLargeLayoutRequestView;->mRootView:Landroid/widget/RelativeLayout;

    sget v1, Lnet/pubnative/sdk/R$id;->pubnative_header:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/large/PNLargeLayoutRequestView;->mHeader:Landroid/widget/RelativeLayout;

    .line 148
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/large/PNLargeLayoutRequestView;->mBody:Landroid/widget/RelativeLayout;

    sget v1, Lnet/pubnative/sdk/R$id;->pubnative_icon:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/large/PNLargeLayoutRequestView;->mIcon:Landroid/widget/ImageView;

    .line 149
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/large/PNLargeLayoutRequestView;->mBody:Landroid/widget/RelativeLayout;

    sget v1, Lnet/pubnative/sdk/R$id;->pubnative_rating:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RatingBar;

    iput-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/large/PNLargeLayoutRequestView;->mRating:Landroid/widget/RatingBar;

    .line 150
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/large/PNLargeLayoutRequestView;->mBody:Landroid/widget/RelativeLayout;

    sget v1, Lnet/pubnative/sdk/R$id;->pubnative_title:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/large/PNLargeLayoutRequestView;->mTitle:Landroid/widget/TextView;

    .line 152
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/large/PNLargeLayoutRequestView;->mRootView:Landroid/widget/RelativeLayout;

    sget v1, Lnet/pubnative/sdk/R$id;->pubnative_description:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/large/PNLargeLayoutRequestView;->mDescription:Landroid/widget/TextView;

    .line 153
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/large/PNLargeLayoutRequestView;->mRootView:Landroid/widget/RelativeLayout;

    sget v1, Lnet/pubnative/sdk/R$id;->pubnative_callToAction:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/large/PNLargeLayoutRequestView;->mCallToAction:Landroid/widget/TextView;

    .line 155
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/large/PNLargeLayoutRequestView;->mRootView:Landroid/widget/RelativeLayout;

    sget v1, Lnet/pubnative/sdk/R$id;->pubnative_content_info_container:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/large/PNLargeLayoutRequestView;->mContentInfoView:Landroid/widget/RelativeLayout;

    .line 158
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/large/PNLargeLayoutRequestView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Lnet/pubnative/sdk/core/request/PNAdModel;->withTitle(Landroid/widget/TextView;)Lnet/pubnative/sdk/core/request/PNAdModel;

    move-result-object v0

    iget-object v1, p0, Lnet/pubnative/sdk/layouts/adapter/large/PNLargeLayoutRequestView;->mRating:Landroid/widget/RatingBar;

    .line 159
    invoke-virtual {v0, v1}, Lnet/pubnative/sdk/core/request/PNAdModel;->withRating(Landroid/widget/RatingBar;)Lnet/pubnative/sdk/core/request/PNAdModel;

    move-result-object v0

    iget-object v1, p0, Lnet/pubnative/sdk/layouts/adapter/large/PNLargeLayoutRequestView;->mDescription:Landroid/widget/TextView;

    .line 160
    invoke-virtual {v0, v1}, Lnet/pubnative/sdk/core/request/PNAdModel;->withDescription(Landroid/widget/TextView;)Lnet/pubnative/sdk/core/request/PNAdModel;

    move-result-object v0

    iget-object v1, p0, Lnet/pubnative/sdk/layouts/adapter/large/PNLargeLayoutRequestView;->mCallToAction:Landroid/widget/TextView;

    .line 161
    invoke-virtual {v0, v1}, Lnet/pubnative/sdk/core/request/PNAdModel;->withCallToAction(Landroid/widget/TextView;)Lnet/pubnative/sdk/core/request/PNAdModel;

    move-result-object v0

    iget-object v1, p0, Lnet/pubnative/sdk/layouts/adapter/large/PNLargeLayoutRequestView;->mIcon:Landroid/widget/ImageView;

    .line 162
    invoke-virtual {v0, v1}, Lnet/pubnative/sdk/core/request/PNAdModel;->withIcon(Landroid/widget/ImageView;)Lnet/pubnative/sdk/core/request/PNAdModel;

    move-result-object v0

    iget-object v1, p0, Lnet/pubnative/sdk/layouts/adapter/large/PNLargeLayoutRequestView;->mHeader:Landroid/widget/RelativeLayout;

    .line 163
    invoke-virtual {v0, v1}, Lnet/pubnative/sdk/core/request/PNAdModel;->withBanner(Landroid/view/ViewGroup;)Lnet/pubnative/sdk/core/request/PNAdModel;

    move-result-object v0

    iget-object v1, p0, Lnet/pubnative/sdk/layouts/adapter/large/PNLargeLayoutRequestView;->mContentInfoView:Landroid/widget/RelativeLayout;

    .line 164
    invoke-virtual {v0, v1}, Lnet/pubnative/sdk/core/request/PNAdModel;->withContentInfoContainer(Landroid/view/ViewGroup;)Lnet/pubnative/sdk/core/request/PNAdModel;

    .line 165
    return-void
.end method

.method public setAdBackgroundColor(I)V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/large/PNLargeLayoutRequestView;->mRootView:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/large/PNLargeLayoutRequestView;->mRootView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 65
    :cond_0
    return-void
.end method

.method public setCallToActionBackgroundColor(I)V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/large/PNLargeLayoutRequestView;->mCallToAction:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/large/PNLargeLayoutRequestView;->mCallToAction:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 117
    :cond_0
    return-void
.end method

.method public setCallToActionTextColor(I)V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/large/PNLargeLayoutRequestView;->mCallToAction:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/large/PNLargeLayoutRequestView;->mCallToAction:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 124
    :cond_0
    return-void
.end method

.method public setCallToActionTextFont(Landroid/graphics/Typeface;)V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/large/PNLargeLayoutRequestView;->mCallToAction:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/large/PNLargeLayoutRequestView;->mCallToAction:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 138
    :cond_0
    return-void
.end method

.method public setCallToActionTextSize(F)V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/large/PNLargeLayoutRequestView;->mCallToAction:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/large/PNLargeLayoutRequestView;->mCallToAction:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 131
    :cond_0
    return-void
.end method

.method public setDescriptionTextColor(I)V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/large/PNLargeLayoutRequestView;->mDescription:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/large/PNLargeLayoutRequestView;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 95
    :cond_0
    return-void
.end method

.method public setDescriptionTextFont(Landroid/graphics/Typeface;)V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/large/PNLargeLayoutRequestView;->mDescription:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/large/PNLargeLayoutRequestView;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 109
    :cond_0
    return-void
.end method

.method public setDescriptionTextSize(F)V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/large/PNLargeLayoutRequestView;->mDescription:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/large/PNLargeLayoutRequestView;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 102
    :cond_0
    return-void
.end method

.method public setTitleTextColor(I)V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/large/PNLargeLayoutRequestView;->mTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/large/PNLargeLayoutRequestView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 73
    :cond_0
    return-void
.end method

.method public setTitleTextFont(Landroid/graphics/Typeface;)V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/large/PNLargeLayoutRequestView;->mTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/large/PNLargeLayoutRequestView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 87
    :cond_0
    return-void
.end method

.method public setTitleTextSize(F)V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/large/PNLargeLayoutRequestView;->mTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/large/PNLargeLayoutRequestView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 80
    :cond_0
    return-void
.end method
