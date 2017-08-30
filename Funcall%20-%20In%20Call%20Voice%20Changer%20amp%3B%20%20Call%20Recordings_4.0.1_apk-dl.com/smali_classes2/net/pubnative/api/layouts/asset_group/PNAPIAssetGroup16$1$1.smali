.class Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup16$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/pubnative/api/core/utils/PNAPIImageDownloader$Listener;


# instance fields
.field final synthetic this$1:Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup16$1;


# direct methods
.method constructor <init>(Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup16$1;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup16$1$1;->this$1:Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup16$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageFailed(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup16$1$1;->this$1:Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup16$1;

    iget-object v0, v0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup16$1;->this$0:Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup16;

    invoke-virtual {v0, p2}, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup16;->invokeOnLoadFail(Ljava/lang/Exception;)V

    .line 60
    return-void
.end method

.method public onImageLoad(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup16$1$1;->this$1:Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup16$1;

    iget-object v0, v0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup16$1;->this$0:Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup16;

    iget-object v0, v0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup16;->mBanner:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 54
    iget-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup16$1$1;->this$1:Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup16$1;

    iget-object v0, v0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup16$1;->this$0:Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup16;

    invoke-virtual {v0}, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup16;->invokeOnLoadFinish()V

    .line 55
    return-void
.end method
