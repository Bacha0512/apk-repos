.class public abstract Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup;
.super Lnet/pubnative/api/layouts/PNAPILayoutView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup$LoadListener;
    }
.end annotation


# instance fields
.field protected mAdModel:Lnet/pubnative/api/core/request/model/PNAPIAdModel;

.field protected mContext:Landroid/content/Context;

.field protected mLoadListener:Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup$LoadListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lnet/pubnative/api/layouts/PNAPILayoutView;-><init>(Landroid/content/Context;)V

    .line 14
    iput-object p1, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup;->mContext:Landroid/content/Context;

    .line 15
    return-void
.end method


# virtual methods
.method protected invokeOnLoadFail(Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup;->mLoadListener:Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup$LoadListener;

    .line 39
    const/4 v1, 0x0

    iput-object v1, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup;->mLoadListener:Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup$LoadListener;

    .line 40
    if-eqz v0, :cond_0

    .line 41
    invoke-interface {v0, p0, p1}, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup$LoadListener;->onPubnativeAssetGroupLoadFail(Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup;Ljava/lang/Exception;)V

    .line 43
    :cond_0
    return-void
.end method

.method protected invokeOnLoadFinish()V
    .locals 2

    .prologue
    .line 30
    iget-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup;->mLoadListener:Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup$LoadListener;

    .line 31
    const/4 v1, 0x0

    iput-object v1, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup;->mLoadListener:Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup$LoadListener;

    .line 32
    if-eqz v0, :cond_0

    .line 33
    invoke-interface {v0, p0}, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup$LoadListener;->onPubnativeAssetGroupLoadFinish(Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup;)V

    .line 35
    :cond_0
    return-void
.end method

.method public abstract load()V
.end method

.method public setLoadListener(Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup$LoadListener;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup;->mLoadListener:Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup$LoadListener;

    .line 50
    return-void
.end method
