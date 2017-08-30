.class public Lnet/pubnative/sdk/core/request/PNRequestCache;
.super Lnet/pubnative/sdk/core/request/PNRequest;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lnet/pubnative/sdk/core/request/PNRequest;-><init>()V

    return-void
.end method


# virtual methods
.method protected cache()V
    .locals 0

    .prologue
    .line 65
    return-void
.end method

.method protected canUseCache(Lnet/pubnative/sdk/core/config/model/PNNetworkModel;)Z
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method protected getRequestTimeout(Lnet/pubnative/sdk/core/config/model/PNNetworkModel;)I
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    .line 37
    if-eqz p1, :cond_0

    .line 38
    invoke-virtual {p1}, Lnet/pubnative/sdk/core/config/model/PNNetworkModel;->getAdCacheTimeout()I

    move-result v0

    .line 40
    :cond_0
    return v0
.end method

.method protected isCaching()Z
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x1

    return v0
.end method

.method protected request(Lnet/pubnative/sdk/core/adapter/request/PNAdapter;Lnet/pubnative/sdk/core/config/model/PNNetworkModel;Ljava/util/Map;)V
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p2}, Lnet/pubnative/sdk/core/config/model/PNNetworkModel;->isAdCacheEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    invoke-super {p0, p1, p2, p3}, Lnet/pubnative/sdk/core/request/PNRequest;->request(Lnet/pubnative/sdk/core/adapter/request/PNAdapter;Lnet/pubnative/sdk/core/config/model/PNNetworkModel;Ljava/util/Map;)V

    .line 75
    :goto_0
    return-void

    .line 73
    :cond_0
    invoke-virtual {p0}, Lnet/pubnative/sdk/core/request/PNRequestCache;->getNextNetwork()V

    goto :goto_0
.end method

.method protected sendRequestInsight()V
    .locals 3

    .prologue
    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 58
    const-string v1, "fetchAssets"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v1, p0, Lnet/pubnative/sdk/core/request/PNRequestCache;->mInsight:Lnet/pubnative/sdk/core/insights/model/PNInsightModel;

    invoke-virtual {v1, v0}, Lnet/pubnative/sdk/core/insights/model/PNInsightModel;->sendRequestInsight(Ljava/util/Map;)V

    .line 60
    return-void
.end method
