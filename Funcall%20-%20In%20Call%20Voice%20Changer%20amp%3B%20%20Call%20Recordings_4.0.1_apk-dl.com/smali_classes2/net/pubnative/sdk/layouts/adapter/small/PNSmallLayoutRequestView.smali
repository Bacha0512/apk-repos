.class public Lnet/pubnative/sdk/layouts/adapter/small/PNSmallLayoutRequestView;
.super Lnet/pubnative/sdk/layouts/PNSmallLayoutView;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mBodyView:Landroid/widget/RelativeLayout;

.field protected mCallToAction:Landroid/widget/TextView;

.field protected mContentInfoView:Landroid/widget/RelativeLayout;

.field protected mCurrentIconPosition:Lnet/pubnative/sdk/layouts/PNSmallLayoutView$IconPosition;

.field protected mIcon:Landroid/widget/ImageView;

.field protected mRootView:Landroid/widget/RelativeLayout;

.field protected mTitle:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lnet/pubnative/sdk/layouts/adapter/small/PNSmallLayoutContainerView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/pubnative/sdk/layouts/adapter/small/PNSmallLayoutRequestView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lnet/pubnative/sdk/layouts/PNSmallLayoutView;-><init>(Landroid/content/Context;)V

    .line 49
    sget-object v0, Lnet/pubnative/sdk/layouts/PNSmallLayoutView$IconPosition;->LEFT:Lnet/pubnative/sdk/layouts/PNSmallLayoutView$IconPosition;

    iput-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/small/PNSmallLayoutRequestView;->mCurrentIconPosition:Lnet/pubnative/sdk/layouts/PNSmallLayoutView$IconPosition;

    .line 54
    return-void
.end method


# virtual methods
.method public loadWithAd(Landroid/content/Context;Lnet/pubnative/sdk/core/request/PNAdModel;)V
    .locals 3

    .prologue
    .line 162
    invoke-virtual {p0}, Lnet/pubnative/sdk/layouts/adapter/small/PNSmallLayoutRequestView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lnet/pubnative/sdk/R$layout;->pubnative_asset_group_1:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/small/PNSmallLayoutRequestView;->mRootView:Landroid/widget/RelativeLayout;

    .line 164
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/small/PNSmallLayoutRequestView;->mRootView:Landroid/widget/RelativeLayout;

    sget v1, Lnet/pubnative/sdk/R$id;->pubnative_icon:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/small/PNSmallLayoutRequestView;->mIcon:Landroid/widget/ImageView;

    .line 165
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/small/PNSmallLayoutRequestView;->mRootView:Landroid/widget/RelativeLayout;

    sget v1, Lnet/pubnative/sdk/R$id;->pubnative_callToAction:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/small/PNSmallLayoutRequestView;->mCallToAction:Landroid/widget/TextView;

    .line 167
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/small/PNSmallLayoutRequestView;->mRootView:Landroid/widget/RelativeLayout;

    sget v1, Lnet/pubnative/sdk/R$id;->pubnative_body:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/small/PNSmallLayoutRequestView;->mBodyView:Landroid/widget/RelativeLayout;

    .line 168
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/small/PNSmallLayoutRequestView;->mBodyView:Landroid/widget/RelativeLayout;

    sget v1, Lnet/pubnative/sdk/R$id;->pubnative_title:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/small/PNSmallLayoutRequestView;->mTitle:Landroid/widget/TextView;

    .line 170
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/small/PNSmallLayoutRequestView;->mRootView:Landroid/widget/RelativeLayout;

    sget v1, Lnet/pubnative/sdk/R$id;->pubnative_content_info_container:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/small/PNSmallLayoutRequestView;->mContentInfoView:Landroid/widget/RelativeLayout;

    .line 173
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/small/PNSmallLayoutRequestView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Lnet/pubnative/sdk/core/request/PNAdModel;->withIcon(Landroid/widget/ImageView;)Lnet/pubnative/sdk/core/request/PNAdModel;

    move-result-object v0

    iget-object v1, p0, Lnet/pubnative/sdk/layouts/adapter/small/PNSmallLayoutRequestView;->mTitle:Landroid/widget/TextView;

    .line 174
    invoke-virtual {v0, v1}, Lnet/pubnative/sdk/core/request/PNAdModel;->withTitle(Landroid/widget/TextView;)Lnet/pubnative/sdk/core/request/PNAdModel;

    move-result-object v0

    iget-object v1, p0, Lnet/pubnative/sdk/layouts/adapter/small/PNSmallLayoutRequestView;->mCallToAction:Landroid/widget/TextView;

    .line 175
    invoke-virtual {v0, v1}, Lnet/pubnative/sdk/core/request/PNAdModel;->withCallToAction(Landroid/widget/TextView;)Lnet/pubnative/sdk/core/request/PNAdModel;

    move-result-object v0

    iget-object v1, p0, Lnet/pubnative/sdk/layouts/adapter/small/PNSmallLayoutRequestView;->mContentInfoView:Landroid/widget/RelativeLayout;

    .line 176
    invoke-virtual {v0, v1}, Lnet/pubnative/sdk/core/request/PNAdModel;->withContentInfoContainer(Landroid/view/ViewGroup;)Lnet/pubnative/sdk/core/request/PNAdModel;

    .line 177
    return-void
.end method

.method public setAdBackgroundColor(I)V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/small/PNSmallLayoutRequestView;->mRootView:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/small/PNSmallLayoutRequestView;->mRootView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 61
    :cond_0
    return-void
.end method

.method public setCallToActionBackgroundColor(I)V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/small/PNSmallLayoutRequestView;->mCallToAction:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/small/PNSmallLayoutRequestView;->mCallToAction:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 91
    :cond_0
    return-void
.end method

.method public setCallToActionTextColor(I)V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/small/PNSmallLayoutRequestView;->mCallToAction:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/small/PNSmallLayoutRequestView;->mCallToAction:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 98
    :cond_0
    return-void
.end method

.method public setCallToActionTextFont(Landroid/graphics/Typeface;)V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/small/PNSmallLayoutRequestView;->mCallToAction:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/small/PNSmallLayoutRequestView;->mCallToAction:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 112
    :cond_0
    return-void
.end method

.method public setCallToActionTextSize(F)V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/small/PNSmallLayoutRequestView;->mCallToAction:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/small/PNSmallLayoutRequestView;->mCallToAction:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 105
    :cond_0
    return-void
.end method

.method public setIconPosition(Lnet/pubnative/sdk/layouts/PNSmallLayoutView$IconPosition;)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/16 v7, 0xb

    const/16 v6, 0x9

    const/4 v5, 0x0

    .line 116
    sget-object v0, Lnet/pubnative/sdk/layouts/adapter/small/PNSmallLayoutRequestView;->TAG:Ljava/lang/String;

    const-string v1, "setIconPosition"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/small/PNSmallLayoutRequestView;->mIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/small/PNSmallLayoutRequestView;->mBodyView:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 120
    iput-object p1, p0, Lnet/pubnative/sdk/layouts/adapter/small/PNSmallLayoutRequestView;->mCurrentIconPosition:Lnet/pubnative/sdk/layouts/PNSmallLayoutView$IconPosition;

    .line 122
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/small/PNSmallLayoutRequestView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 123
    iget-object v1, p0, Lnet/pubnative/sdk/layouts/adapter/small/PNSmallLayoutRequestView;->mBodyView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 124
    iget-object v2, p0, Lnet/pubnative/sdk/layouts/adapter/small/PNSmallLayoutRequestView;->mContentInfoView:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 126
    sget-object v3, Lnet/pubnative/sdk/layouts/adapter/small/PNSmallLayoutRequestView$1;->$SwitchMap$net$pubnative$sdk$layouts$PNSmallLayoutView$IconPosition:[I

    invoke-virtual {p1}, Lnet/pubnative/sdk/layouts/PNSmallLayoutView$IconPosition;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 155
    :goto_0
    iget-object v2, p0, Lnet/pubnative/sdk/layouts/adapter/small/PNSmallLayoutRequestView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/small/PNSmallLayoutRequestView;->mBodyView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    :cond_0
    return-void

    .line 128
    :pswitch_0
    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 129
    invoke-virtual {v0, v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 131
    invoke-virtual {v2, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 132
    invoke-virtual {v2, v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 134
    invoke-virtual {v1, v8, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 135
    iget-object v2, p0, Lnet/pubnative/sdk/layouts/adapter/small/PNSmallLayoutRequestView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getId()I

    move-result v2

    invoke-virtual {v1, v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 136
    invoke-virtual {v1, v7, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 137
    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    .line 141
    :pswitch_1
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 142
    invoke-virtual {v0, v7, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 144
    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 145
    invoke-virtual {v2, v7, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 147
    iget-object v2, p0, Lnet/pubnative/sdk/layouts/adapter/small/PNSmallLayoutRequestView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getId()I

    move-result v2

    invoke-virtual {v1, v8, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 148
    invoke-virtual {v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 149
    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 150
    invoke-virtual {v1, v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 126
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
    .line 66
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/small/PNSmallLayoutRequestView;->mTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/small/PNSmallLayoutRequestView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 69
    :cond_0
    return-void
.end method

.method public setTitleTextFont(Landroid/graphics/Typeface;)V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/small/PNSmallLayoutRequestView;->mTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/small/PNSmallLayoutRequestView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 83
    :cond_0
    return-void
.end method

.method public setTitleTextSize(F)V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/small/PNSmallLayoutRequestView;->mTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/small/PNSmallLayoutRequestView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 76
    :cond_0
    return-void
.end method
