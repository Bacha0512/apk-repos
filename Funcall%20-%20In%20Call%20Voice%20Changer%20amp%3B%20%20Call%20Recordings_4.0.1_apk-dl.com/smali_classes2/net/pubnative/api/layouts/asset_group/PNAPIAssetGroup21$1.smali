.class Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup21$1;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup21;


# direct methods
.method constructor <init>(Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup21;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup21$1;->this$0:Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup21;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup21$1;->this$0:Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup21;

    invoke-virtual {v0}, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup21;->invokeOnLoadFinish()V

    .line 49
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 53
    iget-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup21$1;->this$0:Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup21;

    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup21;->invokeOnLoadFail(Ljava/lang/Exception;)V

    .line 54
    return-void
.end method
