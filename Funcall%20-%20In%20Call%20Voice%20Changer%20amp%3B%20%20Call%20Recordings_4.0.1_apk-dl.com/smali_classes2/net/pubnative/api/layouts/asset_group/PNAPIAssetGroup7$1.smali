.class Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup7$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/pubnative/api/core/utils/PNAPIImageDownloader$Listener;


# instance fields
.field final synthetic this$0:Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup7;


# direct methods
.method constructor <init>(Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup7;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup7$1;->this$0:Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageFailed(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup7$1;->this$0:Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup7;

    invoke-virtual {v0, p2}, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup7;->invokeOnLoadFail(Ljava/lang/Exception;)V

    .line 42
    return-void
.end method

.method public onImageLoad(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup7$1;->this$0:Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup7;

    iget-object v0, v0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup7;->mBanner:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 36
    iget-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup7$1;->this$0:Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup7;

    invoke-virtual {v0}, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup7;->invokeOnLoadFinish()V

    .line 37
    return-void
.end method
