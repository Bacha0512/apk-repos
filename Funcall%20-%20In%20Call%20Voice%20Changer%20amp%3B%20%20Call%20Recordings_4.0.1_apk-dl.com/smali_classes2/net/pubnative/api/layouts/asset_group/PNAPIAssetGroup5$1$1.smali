.class Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup5$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/pubnative/api/core/utils/PNAPIImageDownloader$Listener;


# instance fields
.field final synthetic this$1:Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup5$1;


# direct methods
.method constructor <init>(Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup5$1;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup5$1$1;->this$1:Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup5$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageFailed(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup5$1$1;->this$1:Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup5$1;

    iget-object v0, v0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup5$1;->this$0:Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup5;

    invoke-virtual {v0, p2}, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup5;->invokeOnLoadFail(Ljava/lang/Exception;)V

    .line 61
    return-void
.end method

.method public onImageLoad(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup5$1$1;->this$1:Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup5$1;

    iget-object v0, v0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup5$1;->this$0:Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup5;

    iget-object v0, v0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup5;->mBanner:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 55
    iget-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup5$1$1;->this$1:Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup5$1;

    iget-object v0, v0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup5$1;->this$0:Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup5;

    invoke-virtual {v0}, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup5;->invokeOnLoadFinish()V

    .line 56
    return-void
.end method
