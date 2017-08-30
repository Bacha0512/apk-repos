.class final Lnet/pubnative/sdk/core/request/PNCacheManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/pubnative/sdk/core/request/PNRequest$Listener;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPNRequestLoadFail(Lnet/pubnative/sdk/core/request/PNRequest;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 83
    return-void
.end method

.method public onPNRequestLoadFinish(Lnet/pubnative/sdk/core/request/PNRequest;Lnet/pubnative/sdk/core/request/PNAdModel;)V
    .locals 3

    .prologue
    .line 74
    iget-object v0, p1, Lnet/pubnative/sdk/core/request/PNRequest;->mPlacement:Lnet/pubnative/sdk/core/config/PNPlacement;

    invoke-virtual {v0}, Lnet/pubnative/sdk/core/config/PNPlacement;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lnet/pubnative/sdk/core/request/PNRequest;->mPlacement:Lnet/pubnative/sdk/core/config/PNPlacement;

    .line 75
    invoke-virtual {v1}, Lnet/pubnative/sdk/core/config/PNPlacement;->getCurrentNetworkIndex()I

    move-result v1

    iget-object v2, p1, Lnet/pubnative/sdk/core/request/PNRequest;->mPlacement:Lnet/pubnative/sdk/core/config/PNPlacement;

    .line 76
    invoke-virtual {v2}, Lnet/pubnative/sdk/core/config/PNPlacement;->getCurrentNetwork()Lnet/pubnative/sdk/core/config/model/PNNetworkModel;

    move-result-object v2

    invoke-virtual {v2}, Lnet/pubnative/sdk/core/config/model/PNNetworkModel;->getCacheExpirationTime()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 74
    invoke-static {v0, v1, v2, p2}, Lnet/pubnative/sdk/core/request/PNCacheManager;->cacheAd(Ljava/lang/String;ILjava/lang/Integer;Lnet/pubnative/sdk/core/request/PNAdModel;)V

    .line 78
    return-void
.end method
