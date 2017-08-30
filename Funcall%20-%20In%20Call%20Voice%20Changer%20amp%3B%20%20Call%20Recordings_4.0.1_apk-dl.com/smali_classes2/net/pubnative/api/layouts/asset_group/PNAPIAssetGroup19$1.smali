.class Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup19$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/pubnative/api/core/utils/PNAPIImageDownloader$Listener;


# instance fields
.field final synthetic this$0:Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup19;


# direct methods
.method constructor <init>(Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup19;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup19$1;->this$0:Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup19;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageFailed(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup19$1;->this$0:Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup19;

    invoke-virtual {v0, p2}, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup19;->invokeOnLoadFail(Ljava/lang/Exception;)V

    .line 71
    return-void
.end method

.method public onImageLoad(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4

    .prologue
    .line 54
    iget-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup19$1;->this$0:Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup19;

    iget-object v0, v0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup19;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 55
    new-instance v0, Lnet/pubnative/player/VASTParser;

    iget-object v1, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup19$1;->this$0:Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup19;

    invoke-virtual {v1}, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup19;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/pubnative/player/VASTParser;-><init>(Landroid/content/Context;)V

    new-instance v1, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup19$1$1;

    invoke-direct {v1, p0}, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup19$1$1;-><init>(Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup19$1;)V

    invoke-virtual {v0, v1}, Lnet/pubnative/player/VASTParser;->setListener(Lnet/pubnative/player/VASTParser$Listener;)Lnet/pubnative/player/VASTParser;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup19$1;->this$0:Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup19;

    iget-object v3, v3, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup19;->mAdModel:Lnet/pubnative/api/core/request/model/PNAPIAdModel;

    .line 65
    invoke-virtual {v3}, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->getVast()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lnet/pubnative/player/VASTParser;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 66
    return-void
.end method
