.class public Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup15;
.super Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup;
.source "SourceFile"

# interfaces
.implements Lnet/pubnative/api/core/request/model/PNAPIAdModel$Listener;
.implements Lnet/pubnative/player/VASTPlayer$Listener;


# instance fields
.field protected mContentInfo:Landroid/widget/RelativeLayout;

.field protected mIdMap:Lnet/pubnative/api/layouts/PNAPILayoutView$IDMap;

.field protected mPlayer:Lnet/pubnative/player/VASTPlayer;

.field protected mRoot:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup;-><init>(Landroid/content/Context;)V

    .line 24
    return-void
.end method


# virtual methods
.method public getIDMap()Lnet/pubnative/api/layouts/PNAPILayoutView$IDMap;
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    return-object v0
.end method

.method public load()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 29
    invoke-virtual {p0}, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup15;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lnet/pubnative/sdk/R$layout;->pubnative_asset_group_15:I

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup15;->mRoot:Landroid/widget/RelativeLayout;

    .line 30
    iget-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup15;->mRoot:Landroid/widget/RelativeLayout;

    sget v1, Lnet/pubnative/sdk/R$id;->pubnative_player:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnet/pubnative/player/VASTPlayer;

    iput-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup15;->mPlayer:Lnet/pubnative/player/VASTPlayer;

    .line 31
    iget-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup15;->mRoot:Landroid/widget/RelativeLayout;

    sget v1, Lnet/pubnative/sdk/R$id;->pubnative_content_info_container:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup15;->mContentInfo:Landroid/widget/RelativeLayout;

    .line 33
    iget-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup15;->mPlayer:Lnet/pubnative/player/VASTPlayer;

    invoke-virtual {v0, p0}, Lnet/pubnative/player/VASTPlayer;->setListener(Lnet/pubnative/player/VASTPlayer$Listener;)V

    .line 35
    new-instance v0, Lnet/pubnative/player/VASTParser;

    invoke-virtual {p0}, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup15;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/pubnative/player/VASTParser;-><init>(Landroid/content/Context;)V

    new-instance v1, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup15$1;

    invoke-direct {v1, p0}, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup15$1;-><init>(Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup15;)V

    invoke-virtual {v0, v1}, Lnet/pubnative/player/VASTParser;->setListener(Lnet/pubnative/player/VASTParser$Listener;)Lnet/pubnative/player/VASTParser;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup15;->mAdModel:Lnet/pubnative/api/core/request/model/PNAPIAdModel;

    .line 45
    invoke-virtual {v3}, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->getVast()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lnet/pubnative/player/VASTParser;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 47
    iget-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup15;->mAdModel:Lnet/pubnative/api/core/request/model/PNAPIAdModel;

    iget-object v1, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup15;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->getContentInfo(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    .line 48
    if-eqz v0, :cond_0

    .line 49
    iget-object v1, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup15;->mContentInfo:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 51
    :cond_0
    return-void
.end method

.method public onPNAPIAdModelClick(Lnet/pubnative/api/core/request/model/PNAPIAdModel;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 80
    invoke-virtual {p0}, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup15;->invokeOnClick()V

    .line 81
    return-void
.end method

.method public onPNAPIAdModelImpression(Lnet/pubnative/api/core/request/model/PNAPIAdModel;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 75
    invoke-virtual {p0}, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup15;->invokeOnImpressionConfirmed()V

    .line 76
    return-void
.end method

.method public onPNAPIAdModelOpenOffer(Lnet/pubnative/api/core/request/model/PNAPIAdModel;)V
    .locals 0

    .prologue
    .line 86
    return-void
.end method

.method public onVASTPlayerFail(Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup15;->invokeOnLoadFail(Ljava/lang/Exception;)V

    .line 96
    return-void
.end method

.method public onVASTPlayerLoadFinish()V
    .locals 0

    .prologue
    .line 90
    invoke-virtual {p0}, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup15;->invokeOnLoadFinish()V

    .line 91
    return-void
.end method

.method public onVASTPlayerOpenOffer()V
    .locals 0

    .prologue
    .line 110
    invoke-virtual {p0}, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup15;->invokeOnClick()V

    .line 111
    return-void
.end method

.method public onVASTPlayerPlaybackFinish()V
    .locals 0

    .prologue
    .line 106
    return-void
.end method

.method public onVASTPlayerPlaybackStart()V
    .locals 0

    .prologue
    .line 101
    return-void
.end method

.method public startTracking()V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup15;->mAdModel:Lnet/pubnative/api/core/request/model/PNAPIAdModel;

    iget-object v1, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup15;->mRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1, p0}, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->startTracking(Landroid/view/View;Lnet/pubnative/api/core/request/model/PNAPIAdModel$Listener;)V

    .line 57
    iget-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup15;->mPlayer:Lnet/pubnative/player/VASTPlayer;

    invoke-virtual {v0}, Lnet/pubnative/player/VASTPlayer;->play()V

    .line 58
    return-void
.end method

.method public stopTracking()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup15;->mPlayer:Lnet/pubnative/player/VASTPlayer;

    invoke-virtual {v0}, Lnet/pubnative/player/VASTPlayer;->stop()V

    .line 64
    iget-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup15;->mAdModel:Lnet/pubnative/api/core/request/model/PNAPIAdModel;

    invoke-virtual {v0}, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->stopTracking()V

    .line 65
    return-void
.end method
