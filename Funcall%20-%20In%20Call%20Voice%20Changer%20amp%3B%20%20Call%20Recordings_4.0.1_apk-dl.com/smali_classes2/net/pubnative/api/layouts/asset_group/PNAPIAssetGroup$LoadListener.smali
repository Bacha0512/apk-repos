.class public interface abstract Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup$LoadListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LoadListener"
.end annotation


# virtual methods
.method public abstract onPubnativeAssetGroupLoadFail(Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup;Ljava/lang/Exception;)V
.end method

.method public abstract onPubnativeAssetGroupLoadFinish(Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup;)V
.end method
