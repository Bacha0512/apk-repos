.class Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup3$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/pubnative/player/VASTParser$Listener;


# instance fields
.field final synthetic this$1:Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup3$1;


# direct methods
.method constructor <init>(Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup3$1;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup3$1$1;->this$1:Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup3$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVASTParserError(I)V
    .locals 4

    .prologue
    .line 63
    iget-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup3$1$1;->this$1:Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup3$1;

    iget-object v0, v0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup3$1;->this$0:Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup3;

    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot load VAST, parsing error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup3;->invokeOnLoadFail(Ljava/lang/Exception;)V

    .line 64
    return-void
.end method

.method public onVASTParserFinished(Lnet/pubnative/player/model/VASTModel;)V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup3$1$1;->this$1:Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup3$1;

    iget-object v0, v0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup3$1;->this$0:Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup3;

    iget-object v0, v0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup3;->mPlayer:Lnet/pubnative/player/VASTPlayer;

    invoke-virtual {v0, p1}, Lnet/pubnative/player/VASTPlayer;->load(Lnet/pubnative/player/model/VASTModel;)V

    .line 69
    return-void
.end method
