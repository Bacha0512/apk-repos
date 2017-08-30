.class public Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup21;
.super Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup;
.source "SourceFile"

# interfaces
.implements Lnet/pubnative/api/core/request/model/PNAPIAdModel$Listener;


# instance fields
.field protected mBanner:Landroid/webkit/WebView;

.field protected mContentInfo:Landroid/widget/RelativeLayout;

.field protected mRoot:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup;-><init>(Landroid/content/Context;)V

    .line 22
    return-void
.end method


# virtual methods
.method public getIDMap()Lnet/pubnative/api/layouts/PNAPILayoutView$IDMap;
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    return-object v0
.end method

.method public load()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 41
    invoke-virtual {p0}, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup21;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lnet/pubnative/sdk/R$layout;->pubnative_asset_group_21:I

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup21;->mRoot:Landroid/widget/RelativeLayout;

    .line 42
    iget-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup21;->mRoot:Landroid/widget/RelativeLayout;

    sget v1, Lnet/pubnative/sdk/R$id;->pubnative_banner:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup21;->mBanner:Landroid/webkit/WebView;

    .line 43
    iget-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup21;->mRoot:Landroid/widget/RelativeLayout;

    sget v1, Lnet/pubnative/sdk/R$id;->pubnative_content_info_container:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup21;->mContentInfo:Landroid/widget/RelativeLayout;

    .line 44
    iget-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup21;->mBanner:Landroid/webkit/WebView;

    new-instance v1, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup21$1;

    invoke-direct {v1, p0}, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup21$1;-><init>(Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup21;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 56
    iget-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup21;->mBanner:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 57
    iget-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup21;->mBanner:Landroid/webkit/WebView;

    iget-object v1, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup21;->mAdModel:Lnet/pubnative/api/core/request/model/PNAPIAdModel;

    const-string v2, "htmlbanner"

    invoke-virtual {v1, v2}, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->getAssetHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "text/html"

    const-string v3, "UTF-8"

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup21;->mAdModel:Lnet/pubnative/api/core/request/model/PNAPIAdModel;

    iget-object v1, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup21;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->getContentInfo(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    .line 60
    if-eqz v0, :cond_0

    .line 61
    iget-object v1, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup21;->mContentInfo:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 63
    :cond_0
    return-void
.end method

.method public onPNAPIAdModelClick(Lnet/pubnative/api/core/request/model/PNAPIAdModel;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 72
    invoke-virtual {p0}, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup21;->invokeOnClick()V

    .line 73
    return-void
.end method

.method public onPNAPIAdModelImpression(Lnet/pubnative/api/core/request/model/PNAPIAdModel;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 67
    invoke-virtual {p0}, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup21;->invokeOnImpressionConfirmed()V

    .line 68
    return-void
.end method

.method public onPNAPIAdModelOpenOffer(Lnet/pubnative/api/core/request/model/PNAPIAdModel;)V
    .locals 0

    .prologue
    .line 78
    return-void
.end method

.method public startTracking()V
    .locals 2

    .prologue
    .line 26
    iget-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup21;->mAdModel:Lnet/pubnative/api/core/request/model/PNAPIAdModel;

    iget-object v1, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup21;->mRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1, p0}, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->startTracking(Landroid/view/View;Lnet/pubnative/api/core/request/model/PNAPIAdModel$Listener;)V

    .line 27
    return-void
.end method

.method public stopTracking()V
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup21;->mAdModel:Lnet/pubnative/api/core/request/model/PNAPIAdModel;

    invoke-virtual {v0}, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->stopTracking()V

    .line 32
    return-void
.end method
