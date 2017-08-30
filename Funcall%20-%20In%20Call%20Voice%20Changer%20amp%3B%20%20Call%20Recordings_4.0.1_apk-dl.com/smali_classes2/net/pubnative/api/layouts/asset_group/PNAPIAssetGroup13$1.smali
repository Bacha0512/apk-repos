.class Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup13$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/pubnative/api/core/utils/PNAPIImageDownloader$Listener;


# instance fields
.field final synthetic this$0:Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup13;


# direct methods
.method constructor <init>(Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup13;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup13$1;->this$0:Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageFailed(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup13$1;->this$0:Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup13;

    invoke-virtual {v0, p2}, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup13;->invokeOnLoadFail(Ljava/lang/Exception;)V

    .line 46
    return-void
.end method

.method public onImageLoad(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup13$1;->this$0:Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup13;

    iget-object v0, v0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup13;->mBanner:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 40
    iget-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup13$1;->this$0:Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup13;

    invoke-virtual {v0}, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup13;->invokeOnLoadFinish()V

    .line 41
    return-void
.end method
