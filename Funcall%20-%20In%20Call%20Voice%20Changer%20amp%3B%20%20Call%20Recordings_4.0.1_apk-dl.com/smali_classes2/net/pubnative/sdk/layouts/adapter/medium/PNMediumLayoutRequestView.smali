.class public Lnet/pubnative/sdk/layouts/adapter/medium/PNMediumLayoutRequestView;
.super Lnet/pubnative/sdk/layouts/PNMediumLayoutView;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mBodyView:Landroid/widget/RelativeLayout;

.field protected mCallToAction:Landroid/widget/TextView;

.field protected mContentInfoView:Landroid/widget/RelativeLayout;

.field protected mDescription:Landroid/widget/TextView;

.field protected mFooterView:Landroid/widget/RelativeLayout;

.field protected mHeaderView:Landroid/widget/RelativeLayout;

.field protected mIcon:Landroid/widget/ImageView;

.field protected mRootView:Landroid/widget/RelativeLayout;

.field protected mTitle:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lnet/pubnative/sdk/layouts/adapter/medium/PNMediumLayoutRequestView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/pubnative/sdk/layouts/adapter/medium/PNMediumLayoutRequestView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lnet/pubnative/sdk/layouts/PNMediumLayoutView;-><init>(Landroid/content/Context;)V

    .line 57
    return-void
.end method


# virtual methods
.method protected getBodyContentParams()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 226
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public loadWithAd(Landroid/content/Context;Lnet/pubnative/sdk/core/request/PNAdModel;)V
    .locals 3

    .prologue
    .line 232
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lnet/pubnative/sdk/R$layout;->pubnative_asset_group_5:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/medium/PNMediumLayoutRequestView;->mRootView:Landroid/widget/RelativeLayout;

    .line 234
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/medium/PNMediumLayoutRequestView;->mRootView:Landroid/widget/RelativeLayout;

    sget v1, Lnet/pubnative/sdk/R$id;->pubnative_header:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/medium/PNMediumLayoutRequestView;->mHeaderView:Landroid/widget/RelativeLayout;

    .line 235
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/medium/PNMediumLayoutRequestView;->mRootView:Landroid/widget/RelativeLayout;

    sget v1, Lnet/pubnative/sdk/R$id;->pubnative_body:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/medium/PNMediumLayoutRequestView;->mBodyView:Landroid/widget/RelativeLayout;

    .line 236
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/medium/PNMediumLayoutRequestView;->mRootView:Landroid/widget/RelativeLayout;

    sget v1, Lnet/pubnative/sdk/R$id;->pubnative_footer:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/medium/PNMediumLayoutRequestView;->mFooterView:Landroid/widget/RelativeLayout;

    .line 238
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/medium/PNMediumLayoutRequestView;->mHeaderView:Landroid/widget/RelativeLayout;

    sget v1, Lnet/pubnative/sdk/R$id;->pubnative_icon:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/medium/PNMediumLayoutRequestView;->mIcon:Landroid/widget/ImageView;

    .line 239
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/medium/PNMediumLayoutRequestView;->mHeaderView:Landroid/widget/RelativeLayout;

    sget v1, Lnet/pubnative/sdk/R$id;->pubnative_title:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/medium/PNMediumLayoutRequestView;->mTitle:Landroid/widget/TextView;

    .line 240
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/medium/PNMediumLayoutRequestView;->mFooterView:Landroid/widget/RelativeLayout;

    sget v1, Lnet/pubnative/sdk/R$id;->pubnative_description:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/medium/PNMediumLayoutRequestView;->mDescription:Landroid/widget/TextView;

    .line 241
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/medium/PNMediumLayoutRequestView;->mFooterView:Landroid/widget/RelativeLayout;

    sget v1, Lnet/pubnative/sdk/R$id;->pubnative_callToAction:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/medium/PNMediumLayoutRequestView;->mCallToAction:Landroid/widget/TextView;

    .line 243
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/medium/PNMediumLayoutRequestView;->mRootView:Landroid/widget/RelativeLayout;

    sget v1, Lnet/pubnative/sdk/R$id;->pubnative_content_info_container:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/medium/PNMediumLayoutRequestView;->mContentInfoView:Landroid/widget/RelativeLayout;

    .line 246
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/medium/PNMediumLayoutRequestView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Lnet/pubnative/sdk/core/request/PNAdModel;->withTitle(Landroid/widget/TextView;)Lnet/pubnative/sdk/core/request/PNAdModel;

    move-result-object v0

    iget-object v1, p0, Lnet/pubnative/sdk/layouts/adapter/medium/PNMediumLayoutRequestView;->mDescription:Landroid/widget/TextView;

    .line 247
    invoke-virtual {v0, v1}, Lnet/pubnative/sdk/core/request/PNAdModel;->withDescription(Landroid/widget/TextView;)Lnet/pubnative/sdk/core/request/PNAdModel;

    move-result-object v0

    iget-object v1, p0, Lnet/pubnative/sdk/layouts/adapter/medium/PNMediumLayoutRequestView;->mCallToAction:Landroid/widget/TextView;

    .line 248
    invoke-virtual {v0, v1}, Lnet/pubnative/sdk/core/request/PNAdModel;->withCallToAction(Landroid/widget/TextView;)Lnet/pubnative/sdk/core/request/PNAdModel;

    move-result-object v0

    iget-object v1, p0, Lnet/pubnative/sdk/layouts/adapter/medium/PNMediumLayoutRequestView;->mBodyView:Landroid/widget/RelativeLayout;

    .line 249
    invoke-virtual {v0, v1}, Lnet/pubnative/sdk/core/request/PNAdModel;->withBanner(Landroid/view/ViewGroup;)Lnet/pubnative/sdk/core/request/PNAdModel;

    move-result-object v0

    iget-object v1, p0, Lnet/pubnative/sdk/layouts/adapter/medium/PNMediumLayoutRequestView;->mIcon:Landroid/widget/ImageView;

    .line 250
    invoke-virtual {v0, v1}, Lnet/pubnative/sdk/core/request/PNAdModel;->withIcon(Landroid/widget/ImageView;)Lnet/pubnative/sdk/core/request/PNAdModel;

    move-result-object v0

    iget-object v1, p0, Lnet/pubnative/sdk/layouts/adapter/medium/PNMediumLayoutRequestView;->mContentInfoView:Landroid/widget/RelativeLayout;

    .line 251
    invoke-virtual {v0, v1}, Lnet/pubnative/sdk/core/request/PNAdModel;->withContentInfoContainer(Landroid/view/ViewGroup;)Lnet/pubnative/sdk/core/request/PNAdModel;

    .line 252
    return-void
.end method

.method public setAdBackgroundColor(I)V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/medium/PNMediumLayoutRequestView;->mRootView:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/medium/PNMediumLayoutRequestView;->mRootView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 64
    :cond_0
    return-void
.end method

.method public setBannerPosition(Lnet/pubnative/sdk/layouts/PNMediumLayoutView$BannerPosition;)V
    .locals 8

    .prologue
    const/16 v7, 0xa

    const/4 v6, 0x0

    const/4 v5, 0x3

    .line 178
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/medium/PNMediumLayoutRequestView;->mHeaderView:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/medium/PNMediumLayoutRequestView;->mBodyView:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/medium/PNMediumLayoutRequestView;->mFooterView:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/medium/PNMediumLayoutRequestView;->mHeaderView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 181
    iget-object v1, p0, Lnet/pubnative/sdk/layouts/adapter/medium/PNMediumLayoutRequestView;->mBodyView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 182
    iget-object v2, p0, Lnet/pubnative/sdk/layouts/adapter/medium/PNMediumLayoutRequestView;->mFooterView:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 184
    sget-object v3, Lnet/pubnative/sdk/layouts/adapter/medium/PNMediumLayoutRequestView$1;->$SwitchMap$net$pubnative$sdk$layouts$PNMediumLayoutView$BannerPosition:[I

    invoke-virtual {p1}, Lnet/pubnative/sdk/layouts/PNMediumLayoutView$BannerPosition;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 218
    :goto_0
    iget-object v3, p0, Lnet/pubnative/sdk/layouts/adapter/medium/PNMediumLayoutRequestView;->mHeaderView:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 219
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/medium/PNMediumLayoutRequestView;->mBodyView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 220
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/medium/PNMediumLayoutRequestView;->mFooterView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 222
    :cond_0
    return-void

    .line 187
    :pswitch_0
    invoke-virtual {v1, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 188
    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 190
    invoke-virtual {v0, v7, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 191
    iget-object v3, p0, Lnet/pubnative/sdk/layouts/adapter/medium/PNMediumLayoutRequestView;->mBodyView:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getId()I

    move-result v3

    invoke-virtual {v0, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 193
    iget-object v3, p0, Lnet/pubnative/sdk/layouts/adapter/medium/PNMediumLayoutRequestView;->mHeaderView:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getId()I

    move-result v3

    invoke-virtual {v2, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 197
    :pswitch_1
    invoke-virtual {v0, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 198
    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 200
    invoke-virtual {v1, v7, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 201
    iget-object v3, p0, Lnet/pubnative/sdk/layouts/adapter/medium/PNMediumLayoutRequestView;->mHeaderView:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getId()I

    move-result v3

    invoke-virtual {v1, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 203
    iget-object v3, p0, Lnet/pubnative/sdk/layouts/adapter/medium/PNMediumLayoutRequestView;->mBodyView:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getId()I

    move-result v3

    invoke-virtual {v2, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 207
    :pswitch_2
    invoke-virtual {v0, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 208
    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 210
    iget-object v3, p0, Lnet/pubnative/sdk/layouts/adapter/medium/PNMediumLayoutRequestView;->mHeaderView:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getId()I

    move-result v3

    invoke-virtual {v2, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 212
    invoke-virtual {v1, v7, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 213
    iget-object v3, p0, Lnet/pubnative/sdk/layouts/adapter/medium/PNMediumLayoutRequestView;->mFooterView:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getId()I

    move-result v3

    invoke-virtual {v1, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 184
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setCallToActionBackgroundColor(I)V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/medium/PNMediumLayoutRequestView;->mCallToAction:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/medium/PNMediumLayoutRequestView;->mCallToAction:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 116
    :cond_0
    return-void
.end method

.method public setCallToActionTextColor(I)V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/medium/PNMediumLayoutRequestView;->mCallToAction:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/medium/PNMediumLayoutRequestView;->mCallToAction:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 123
    :cond_0
    return-void
.end method

.method public setCallToActionTextFont(Landroid/graphics/Typeface;)V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/medium/PNMediumLayoutRequestView;->mCallToAction:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/medium/PNMediumLayoutRequestView;->mCallToAction:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 137
    :cond_0
    return-void
.end method

.method public setCallToActionTextSize(F)V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/medium/PNMediumLayoutRequestView;->mCallToAction:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/medium/PNMediumLayoutRequestView;->mCallToAction:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 130
    :cond_0
    return-void
.end method

.method public setDescriptionTextColor(I)V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/medium/PNMediumLayoutRequestView;->mDescription:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/medium/PNMediumLayoutRequestView;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 94
    :cond_0
    return-void
.end method

.method public setDescriptionTextFont(Landroid/graphics/Typeface;)V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/medium/PNMediumLayoutRequestView;->mDescription:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/medium/PNMediumLayoutRequestView;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 108
    :cond_0
    return-void
.end method

.method public setDescriptionTextSize(F)V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/medium/PNMediumLayoutRequestView;->mDescription:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/medium/PNMediumLayoutRequestView;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 101
    :cond_0
    return-void
.end method

.method public setIconPosition(Lnet/pubnative/sdk/layouts/PNMediumLayoutView$IconPosition;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/16 v6, 0xb

    const/16 v5, 0x9

    const/4 v4, 0x0

    .line 141
    sget-object v0, Lnet/pubnative/sdk/layouts/adapter/medium/PNMediumLayoutRequestView;->TAG:Ljava/lang/String;

    const-string v1, "setIconPosition"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/medium/PNMediumLayoutRequestView;->mIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/medium/PNMediumLayoutRequestView;->mTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/medium/PNMediumLayoutRequestView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 146
    iget-object v1, p0, Lnet/pubnative/sdk/layouts/adapter/medium/PNMediumLayoutRequestView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 148
    sget-object v2, Lnet/pubnative/sdk/layouts/adapter/medium/PNMediumLayoutRequestView$1;->$SwitchMap$net$pubnative$sdk$layouts$PNMediumLayoutView$IconPosition:[I

    invoke-virtual {p1}, Lnet/pubnative/sdk/layouts/PNMediumLayoutView$IconPosition;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 171
    :goto_0
    iget-object v2, p0, Lnet/pubnative/sdk/layouts/adapter/medium/PNMediumLayoutRequestView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/medium/PNMediumLayoutRequestView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 174
    :cond_0
    return-void

    .line 150
    :pswitch_0
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 151
    invoke-virtual {v0, v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 153
    invoke-virtual {v1, v7, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 154
    iget-object v2, p0, Lnet/pubnative/sdk/layouts/adapter/medium/PNMediumLayoutRequestView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getId()I

    move-result v2

    invoke-virtual {v1, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 155
    invoke-virtual {v1, v6, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 156
    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    .line 160
    :pswitch_1
    invoke-virtual {v0, v6, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 161
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 163
    iget-object v2, p0, Lnet/pubnative/sdk/layouts/adapter/medium/PNMediumLayoutRequestView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getId()I

    move-result v2

    invoke-virtual {v1, v7, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 164
    invoke-virtual {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 165
    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 166
    invoke-virtual {v1, v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 148
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setTitleTextColor(I)V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/medium/PNMediumLayoutRequestView;->mTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/medium/PNMediumLayoutRequestView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 72
    :cond_0
    return-void
.end method

.method public setTitleTextFont(Landroid/graphics/Typeface;)V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/medium/PNMediumLayoutRequestView;->mTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/medium/PNMediumLayoutRequestView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 86
    :cond_0
    return-void
.end method

.method public setTitleTextSize(F)V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/medium/PNMediumLayoutRequestView;->mTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/medium/PNMediumLayoutRequestView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 79
    :cond_0
    return-void
.end method
