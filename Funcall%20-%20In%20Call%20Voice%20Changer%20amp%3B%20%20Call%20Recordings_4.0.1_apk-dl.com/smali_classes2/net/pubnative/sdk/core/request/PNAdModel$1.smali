.class Lnet/pubnative/sdk/core/request/PNAdModel$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/pubnative/sdk/core/request/PNAdModel$FetchListener;


# instance fields
.field final synthetic this$0:Lnet/pubnative/sdk/core/request/PNAdModel;

.field final synthetic val$banner:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lnet/pubnative/sdk/core/request/PNAdModel;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lnet/pubnative/sdk/core/request/PNAdModel$1;->this$0:Lnet/pubnative/sdk/core/request/PNAdModel;

    iput-object p2, p0, Lnet/pubnative/sdk/core/request/PNAdModel$1;->val$banner:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFetchFail(Lnet/pubnative/sdk/core/request/PNAdModel;Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 175
    # getter for: Lnet/pubnative/sdk/core/request/PNAdModel;->TAG:Ljava/lang/String;
    invoke-static {}, Lnet/pubnative/sdk/core/request/PNAdModel;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "error fetching assets"

    invoke-static {v0, v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 176
    return-void
.end method

.method public onFetchFinish(Lnet/pubnative/sdk/core/request/PNAdModel;)V
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lnet/pubnative/sdk/core/request/PNAdModel$1;->this$0:Lnet/pubnative/sdk/core/request/PNAdModel;

    iget-object v1, p0, Lnet/pubnative/sdk/core/request/PNAdModel$1;->this$0:Lnet/pubnative/sdk/core/request/PNAdModel;

    invoke-virtual {v1}, Lnet/pubnative/sdk/core/request/PNAdModel;->getBannerUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/pubnative/sdk/core/request/PNAdModel;->getAsset(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 170
    iget-object v1, p0, Lnet/pubnative/sdk/core/request/PNAdModel$1;->val$banner:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 171
    return-void
.end method
