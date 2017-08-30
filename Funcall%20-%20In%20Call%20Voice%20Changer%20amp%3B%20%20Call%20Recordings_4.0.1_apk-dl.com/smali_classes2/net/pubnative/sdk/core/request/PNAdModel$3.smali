.class Lnet/pubnative/sdk/core/request/PNAdModel$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/pubnative/api/core/utils/PNAPIImageDownloader$Listener;


# instance fields
.field final synthetic this$0:Lnet/pubnative/sdk/core/request/PNAdModel;


# direct methods
.method constructor <init>(Lnet/pubnative/sdk/core/request/PNAdModel;)V
    .locals 0

    .prologue
    .line 434
    iput-object p1, p0, Lnet/pubnative/sdk/core/request/PNAdModel$3;->this$0:Lnet/pubnative/sdk/core/request/PNAdModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageFailed(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3

    .prologue
    .line 443
    # getter for: Lnet/pubnative/sdk/core/request/PNAdModel;->TAG:Ljava/lang/String;
    invoke-static {}, Lnet/pubnative/sdk/core/request/PNAdModel;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Asset download error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 444
    iget-object v0, p0, Lnet/pubnative/sdk/core/request/PNAdModel$3;->this$0:Lnet/pubnative/sdk/core/request/PNAdModel;

    invoke-virtual {v0, p2}, Lnet/pubnative/sdk/core/request/PNAdModel;->invokeFetchFail(Ljava/lang/Exception;)V

    .line 445
    return-void
.end method

.method public onImageLoad(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lnet/pubnative/sdk/core/request/PNAdModel$3;->this$0:Lnet/pubnative/sdk/core/request/PNAdModel;

    invoke-virtual {v0, p1, p2}, Lnet/pubnative/sdk/core/request/PNAdModel;->cacheAsset(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 438
    iget-object v0, p0, Lnet/pubnative/sdk/core/request/PNAdModel$3;->this$0:Lnet/pubnative/sdk/core/request/PNAdModel;

    invoke-virtual {v0}, Lnet/pubnative/sdk/core/request/PNAdModel;->checkFetchProgress()V

    .line 439
    return-void
.end method
