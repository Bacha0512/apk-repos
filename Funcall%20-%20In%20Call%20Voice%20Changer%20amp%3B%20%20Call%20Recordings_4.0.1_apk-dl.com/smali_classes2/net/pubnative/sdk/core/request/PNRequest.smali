.class public Lnet/pubnative/sdk/core/request/PNRequest;
.super Lnet/pubnative/sdk/core/request/PNWaterfall;
.source "SourceFile"

# interfaces
.implements Lnet/pubnative/sdk/core/adapter/request/PNAdapter$LoadListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/pubnative/sdk/core/request/PNRequest$Listener;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field protected mAd:Lnet/pubnative/sdk/core/request/PNAdModel;

.field protected mHandler:Landroid/os/Handler;

.field protected mIsCachingResourceEnabled:Z

.field protected mIsRunning:Z

.field protected mListener:Lnet/pubnative/sdk/core/request/PNRequest$Listener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lnet/pubnative/sdk/core/request/PNRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/pubnative/sdk/core/request/PNRequest;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Lnet/pubnative/sdk/core/request/PNWaterfall;-><init>()V

    .line 45
    iput-object v1, p0, Lnet/pubnative/sdk/core/request/PNRequest;->mListener:Lnet/pubnative/sdk/core/request/PNRequest$Listener;

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/pubnative/sdk/core/request/PNRequest;->mIsRunning:Z

    .line 47
    iput-object v1, p0, Lnet/pubnative/sdk/core/request/PNRequest;->mHandler:Landroid/os/Handler;

    .line 48
    iput-object v1, p0, Lnet/pubnative/sdk/core/request/PNRequest;->mAd:Lnet/pubnative/sdk/core/request/PNAdModel;

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/pubnative/sdk/core/request/PNRequest;->mIsCachingResourceEnabled:Z

    return-void
.end method


# virtual methods
.method protected cache()V
    .locals 4

    .prologue
    .line 209
    iget-object v0, p0, Lnet/pubnative/sdk/core/request/PNRequest;->mPlacement:Lnet/pubnative/sdk/core/config/PNPlacement;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/pubnative/sdk/core/request/PNRequest;->mPlacement:Lnet/pubnative/sdk/core/config/PNPlacement;

    invoke-virtual {v0}, Lnet/pubnative/sdk/core/config/PNPlacement;->isAdCacheEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lnet/pubnative/sdk/core/request/PNRequest;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lnet/pubnative/sdk/core/request/PNRequest;->mPlacement:Lnet/pubnative/sdk/core/config/PNPlacement;

    .line 211
    invoke-virtual {v1}, Lnet/pubnative/sdk/core/config/PNPlacement;->getAppToken()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnet/pubnative/sdk/core/request/PNRequest;->mPlacement:Lnet/pubnative/sdk/core/config/PNPlacement;

    .line 212
    invoke-virtual {v2}, Lnet/pubnative/sdk/core/config/PNPlacement;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lnet/pubnative/sdk/core/request/PNRequest;->mPlacement:Lnet/pubnative/sdk/core/config/PNPlacement;

    .line 213
    invoke-virtual {v3}, Lnet/pubnative/sdk/core/config/PNPlacement;->getConfig()Lnet/pubnative/sdk/core/config/model/PNConfigModel;

    move-result-object v3

    .line 210
    invoke-static {v0, v1, v2, v3}, Lnet/pubnative/sdk/core/request/PNCacheManager;->cachePlacement(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lnet/pubnative/sdk/core/config/model/PNConfigModel;)V

    .line 215
    :cond_0
    return-void
.end method

.method protected canUseCache(Lnet/pubnative/sdk/core/config/model/PNNetworkModel;)Z
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lnet/pubnative/sdk/core/request/PNRequest;->mPlacement:Lnet/pubnative/sdk/core/config/PNPlacement;

    invoke-virtual {v0}, Lnet/pubnative/sdk/core/config/PNPlacement;->isAdCacheEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {p1}, Lnet/pubnative/sdk/core/config/model/PNNetworkModel;->isAdCacheEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 170
    :goto_0
    return v0

    .line 171
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected doParalelRequests()V
    .locals 5

    .prologue
    .line 130
    const-class v0, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryNetworkAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lnet/pubnative/sdk/core/request/PNRequest;->getAllNetworks(Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v1

    .line 132
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 133
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/pubnative/sdk/core/config/model/PNNetworkModel;

    .line 134
    invoke-static {v0}, Lnet/pubnative/sdk/core/adapter/request/PNAdapterFactory;->create(Lnet/pubnative/sdk/core/config/model/PNNetworkModel;)Lnet/pubnative/sdk/core/adapter/request/PNAdapter;

    move-result-object v3

    .line 135
    if-eqz v3, :cond_0

    .line 136
    invoke-virtual {p0}, Lnet/pubnative/sdk/core/request/PNRequest;->getExtras()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {p0, v3, v0, v4}, Lnet/pubnative/sdk/core/request/PNRequest;->paralelRequest(Lnet/pubnative/sdk/core/adapter/request/PNAdapter;Lnet/pubnative/sdk/core/config/model/PNNetworkModel;Ljava/util/Map;)V

    goto :goto_0

    .line 139
    :cond_1
    return-void
.end method

.method protected getRequestTimeout(Lnet/pubnative/sdk/core/config/model/PNNetworkModel;)I
    .locals 1

    .prologue
    .line 201
    const/4 v0, 0x0

    .line 202
    if-eqz p1, :cond_0

    .line 203
    invoke-virtual {p1}, Lnet/pubnative/sdk/core/config/model/PNNetworkModel;->getTimeout()I

    move-result v0

    .line 205
    :cond_0
    return v0
.end method

.method protected invokeFail(Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 257
    invoke-virtual {p0}, Lnet/pubnative/sdk/core/request/PNRequest;->cache()V

    .line 258
    iget-object v0, p0, Lnet/pubnative/sdk/core/request/PNRequest;->mHandler:Landroid/os/Handler;

    new-instance v1, Lnet/pubnative/sdk/core/request/PNRequest$3;

    invoke-direct {v1, p0, p1}, Lnet/pubnative/sdk/core/request/PNRequest$3;-><init>(Lnet/pubnative/sdk/core/request/PNRequest;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 271
    return-void
.end method

.method protected invokeLoad(Lnet/pubnative/sdk/core/request/PNAdModel;)V
    .locals 2

    .prologue
    .line 240
    invoke-virtual {p0}, Lnet/pubnative/sdk/core/request/PNRequest;->cache()V

    .line 241
    iget-object v0, p0, Lnet/pubnative/sdk/core/request/PNRequest;->mHandler:Landroid/os/Handler;

    new-instance v1, Lnet/pubnative/sdk/core/request/PNRequest$2;

    invoke-direct {v1, p0, p1}, Lnet/pubnative/sdk/core/request/PNRequest$2;-><init>(Lnet/pubnative/sdk/core/request/PNRequest;Lnet/pubnative/sdk/core/request/PNAdModel;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 254
    return-void
.end method

.method protected isCaching()Z
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x0

    return v0
.end method

.method public onAdapterLoadFail(Lnet/pubnative/sdk/core/adapter/request/PNAdapter;Ljava/lang/Exception;)V
    .locals 4

    .prologue
    .line 305
    invoke-virtual {p1}, Lnet/pubnative/sdk/core/adapter/request/PNAdapter;->isParallelRequest()Z

    move-result v0

    if-nez v0, :cond_1

    .line 306
    const-wide/16 v0, -0x1

    .line 307
    if-eqz p1, :cond_0

    .line 308
    invoke-virtual {p1}, Lnet/pubnative/sdk/core/adapter/request/PNAdapter;->getElapsedTime()J

    move-result-wide v0

    .line 310
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lnet/pubnative/sdk/core/exceptions/PNException;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 311
    invoke-virtual {p0, v0, v1, p2}, Lnet/pubnative/sdk/core/request/PNRequest;->trackUnreachableNetwork(JLjava/lang/Exception;)V

    .line 315
    :goto_0
    invoke-virtual {p0}, Lnet/pubnative/sdk/core/request/PNRequest;->getNextNetwork()V

    .line 317
    :cond_1
    return-void

    .line 313
    :cond_2
    invoke-virtual {p0, v0, v1, p2}, Lnet/pubnative/sdk/core/request/PNRequest;->trackAttemptedNetwork(JLjava/lang/Exception;)V

    goto :goto_0
.end method

.method public onAdapterLoadFinish(Lnet/pubnative/sdk/core/adapter/request/PNAdapter;Lnet/pubnative/sdk/core/request/PNAdModel;)V
    .locals 3

    .prologue
    .line 281
    invoke-virtual {p1}, Lnet/pubnative/sdk/core/adapter/request/PNAdapter;->isParallelRequest()Z

    move-result v0

    if-nez v0, :cond_1

    .line 283
    const-wide/16 v0, -0x1

    .line 284
    if-eqz p1, :cond_0

    .line 285
    invoke-virtual {p1}, Lnet/pubnative/sdk/core/adapter/request/PNAdapter;->getElapsedTime()J

    move-result-wide v0

    .line 288
    :cond_0
    if-nez p2, :cond_2

    .line 289
    sget-object v2, Lnet/pubnative/sdk/core/exceptions/PNException;->ADAPTER_NO_FILL:Lnet/pubnative/sdk/core/exceptions/PNException;

    invoke-virtual {p0, v0, v1, v2}, Lnet/pubnative/sdk/core/request/PNRequest;->trackAttemptedNetwork(JLjava/lang/Exception;)V

    .line 290
    invoke-virtual {p0}, Lnet/pubnative/sdk/core/request/PNRequest;->getNextNetwork()V

    .line 300
    :cond_1
    :goto_0
    return-void

    .line 293
    :cond_2
    invoke-virtual {p0, v0, v1}, Lnet/pubnative/sdk/core/request/PNRequest;->trackSuccededNetwork(J)V

    .line 295
    iput-object p2, p0, Lnet/pubnative/sdk/core/request/PNRequest;->mAd:Lnet/pubnative/sdk/core/request/PNAdModel;

    .line 296
    iget-object v0, p0, Lnet/pubnative/sdk/core/request/PNRequest;->mAd:Lnet/pubnative/sdk/core/request/PNAdModel;

    iget-object v1, p0, Lnet/pubnative/sdk/core/request/PNRequest;->mInsight:Lnet/pubnative/sdk/core/insights/model/PNInsightModel;

    invoke-virtual {v0, v1}, Lnet/pubnative/sdk/core/request/PNAdModel;->setInsightModel(Lnet/pubnative/sdk/core/insights/model/PNInsightModel;)V

    .line 297
    iget-object v0, p0, Lnet/pubnative/sdk/core/request/PNRequest;->mAd:Lnet/pubnative/sdk/core/request/PNAdModel;

    invoke-virtual {p0, v0}, Lnet/pubnative/sdk/core/request/PNRequest;->onRequestLoad(Lnet/pubnative/sdk/core/request/PNAdModel;)V

    goto :goto_0
.end method

.method protected onRequestLoad(Lnet/pubnative/sdk/core/request/PNAdModel;)V
    .locals 1

    .prologue
    .line 219
    iget-boolean v0, p0, Lnet/pubnative/sdk/core/request/PNRequest;->mIsCachingResourceEnabled:Z

    if-eqz v0, :cond_0

    .line 220
    new-instance v0, Lnet/pubnative/sdk/core/request/PNRequest$1;

    invoke-direct {v0, p0}, Lnet/pubnative/sdk/core/request/PNRequest$1;-><init>(Lnet/pubnative/sdk/core/request/PNRequest;)V

    invoke-virtual {p1, v0}, Lnet/pubnative/sdk/core/request/PNAdModel;->fetchAssets(Lnet/pubnative/sdk/core/request/PNAdModel$FetchListener;)V

    .line 234
    :goto_0
    return-void

    .line 232
    :cond_0
    invoke-virtual {p0, p1}, Lnet/pubnative/sdk/core/request/PNRequest;->invokeLoad(Lnet/pubnative/sdk/core/request/PNAdModel;)V

    goto :goto_0
.end method

.method protected onWaterfallError(Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 147
    invoke-virtual {p0, p1}, Lnet/pubnative/sdk/core/request/PNRequest;->invokeFail(Ljava/lang/Exception;)V

    .line 148
    return-void
.end method

.method protected onWaterfallLoadFinish(Z)V
    .locals 1

    .prologue
    .line 116
    if-eqz p1, :cond_0

    iget-object v0, p0, Lnet/pubnative/sdk/core/request/PNRequest;->mAd:Lnet/pubnative/sdk/core/request/PNAdModel;

    if-nez v0, :cond_0

    .line 117
    sget-object v0, Lnet/pubnative/sdk/core/exceptions/PNException;->PLACEMENT_PACING_CAP:Lnet/pubnative/sdk/core/exceptions/PNException;

    invoke-virtual {p0, v0}, Lnet/pubnative/sdk/core/request/PNRequest;->invokeFail(Ljava/lang/Exception;)V

    .line 126
    :goto_0
    return-void

    .line 118
    :cond_0
    if-eqz p1, :cond_1

    .line 119
    iget-object v0, p0, Lnet/pubnative/sdk/core/request/PNRequest;->mAd:Lnet/pubnative/sdk/core/request/PNAdModel;

    invoke-virtual {p0, v0}, Lnet/pubnative/sdk/core/request/PNRequest;->onRequestLoad(Lnet/pubnative/sdk/core/request/PNAdModel;)V

    goto :goto_0

    .line 121
    :cond_1
    invoke-virtual {p0}, Lnet/pubnative/sdk/core/request/PNRequest;->isCaching()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lnet/pubnative/sdk/core/request/PNRequest;->mPlacement:Lnet/pubnative/sdk/core/config/PNPlacement;

    invoke-virtual {v0}, Lnet/pubnative/sdk/core/config/PNPlacement;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/pubnative/sdk/core/request/PNCacheManager;->isPlacementCached(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 122
    :cond_2
    invoke-virtual {p0}, Lnet/pubnative/sdk/core/request/PNRequest;->doParalelRequests()V

    .line 124
    :cond_3
    invoke-virtual {p0}, Lnet/pubnative/sdk/core/request/PNRequest;->getNextNetwork()V

    goto :goto_0
.end method

.method protected onWaterfallNextNetwork(Lnet/pubnative/sdk/core/adapter/request/PNAdapter;Ljava/util/Map;)V
    .locals 3

    .prologue
    .line 152
    iget-object v0, p0, Lnet/pubnative/sdk/core/request/PNRequest;->mPlacement:Lnet/pubnative/sdk/core/config/PNPlacement;

    invoke-virtual {v0}, Lnet/pubnative/sdk/core/config/PNPlacement;->getCurrentNetwork()Lnet/pubnative/sdk/core/config/model/PNNetworkModel;

    move-result-object v0

    .line 153
    invoke-virtual {p0, v0}, Lnet/pubnative/sdk/core/request/PNRequest;->canUseCache(Lnet/pubnative/sdk/core/config/model/PNNetworkModel;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 154
    iget-object v1, p0, Lnet/pubnative/sdk/core/request/PNRequest;->mPlacement:Lnet/pubnative/sdk/core/config/PNPlacement;

    invoke-virtual {v1}, Lnet/pubnative/sdk/core/config/PNPlacement;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnet/pubnative/sdk/core/request/PNRequest;->mPlacement:Lnet/pubnative/sdk/core/config/PNPlacement;

    invoke-virtual {v2}, Lnet/pubnative/sdk/core/config/PNPlacement;->getCurrentNetworkIndex()I

    move-result v2

    invoke-static {v1, v2}, Lnet/pubnative/sdk/core/request/PNCacheManager;->getCachedAd(Ljava/lang/String;I)Lnet/pubnative/sdk/core/request/PNAdModelCache;

    move-result-object v1

    .line 155
    if-nez v1, :cond_0

    .line 157
    invoke-virtual {p0}, Lnet/pubnative/sdk/core/request/PNRequest;->getNextNetwork()V

    .line 167
    :goto_0
    return-void

    .line 158
    :cond_0
    invoke-virtual {v1}, Lnet/pubnative/sdk/core/request/PNAdModelCache;->isValid()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 159
    iget-object v0, v1, Lnet/pubnative/sdk/core/request/PNAdModelCache;->ad:Lnet/pubnative/sdk/core/request/PNAdModel;

    invoke-virtual {p0, v0}, Lnet/pubnative/sdk/core/request/PNRequest;->onRequestLoad(Lnet/pubnative/sdk/core/request/PNAdModel;)V

    goto :goto_0

    .line 162
    :cond_1
    invoke-virtual {p0, p1, v0, p2}, Lnet/pubnative/sdk/core/request/PNRequest;->request(Lnet/pubnative/sdk/core/adapter/request/PNAdapter;Lnet/pubnative/sdk/core/config/model/PNNetworkModel;Ljava/util/Map;)V

    goto :goto_0

    .line 165
    :cond_2
    invoke-virtual {p0, p1, v0, p2}, Lnet/pubnative/sdk/core/request/PNRequest;->request(Lnet/pubnative/sdk/core/adapter/request/PNAdapter;Lnet/pubnative/sdk/core/config/model/PNNetworkModel;Ljava/util/Map;)V

    goto :goto_0
.end method

.method protected paralelRequest(Lnet/pubnative/sdk/core/adapter/request/PNAdapter;Lnet/pubnative/sdk/core/config/model/PNNetworkModel;Ljava/util/Map;)V
    .locals 1

    .prologue
    .line 175
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lnet/pubnative/sdk/core/request/PNRequest;->request(Lnet/pubnative/sdk/core/adapter/request/PNAdapter;Lnet/pubnative/sdk/core/config/model/PNNetworkModel;Ljava/util/Map;Z)V

    .line 176
    return-void
.end method

.method protected request(Lnet/pubnative/sdk/core/adapter/request/PNAdapter;Lnet/pubnative/sdk/core/config/model/PNNetworkModel;Ljava/util/Map;)V
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lnet/pubnative/sdk/core/request/PNRequest;->request(Lnet/pubnative/sdk/core/adapter/request/PNAdapter;Lnet/pubnative/sdk/core/config/model/PNNetworkModel;Ljava/util/Map;Z)V

    .line 180
    return-void
.end method

.method protected request(Lnet/pubnative/sdk/core/adapter/request/PNAdapter;Lnet/pubnative/sdk/core/config/model/PNNetworkModel;Ljava/util/Map;Z)V
    .locals 3

    .prologue
    .line 183
    if-nez p1, :cond_1

    .line 184
    if-nez p4, :cond_0

    .line 185
    const-wide/16 v0, 0x0

    sget-object v2, Lnet/pubnative/sdk/core/exceptions/PNException;->ADAPTER_TYPE_NOT_IMPLEMENTED:Lnet/pubnative/sdk/core/exceptions/PNException;

    invoke-virtual {p0, v0, v1, v2}, Lnet/pubnative/sdk/core/request/PNRequest;->trackUnreachableNetwork(JLjava/lang/Exception;)V

    .line 186
    invoke-virtual {p0}, Lnet/pubnative/sdk/core/request/PNRequest;->getNextNetwork()V

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    invoke-virtual {p2}, Lnet/pubnative/sdk/core/config/model/PNNetworkModel;->isCPACacheEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p4, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p1, v0}, Lnet/pubnative/sdk/core/adapter/request/PNAdapter;->setCPICacheEnabled(Z)V

    .line 192
    iget-object v0, p0, Lnet/pubnative/sdk/core/request/PNRequest;->mInsight:Lnet/pubnative/sdk/core/insights/model/PNInsightModel;

    invoke-virtual {p1, v0}, Lnet/pubnative/sdk/core/adapter/request/PNAdapter;->setInsight(Lnet/pubnative/sdk/core/insights/model/PNInsightModel;)V

    .line 193
    invoke-virtual {p1, p4}, Lnet/pubnative/sdk/core/adapter/request/PNAdapter;->setParallelRequestMode(Z)V

    .line 194
    invoke-virtual {p1, p3}, Lnet/pubnative/sdk/core/adapter/request/PNAdapter;->setExtras(Ljava/util/Map;)V

    .line 195
    invoke-virtual {p1, p0}, Lnet/pubnative/sdk/core/adapter/request/PNAdapter;->setLoadListener(Lnet/pubnative/sdk/core/adapter/request/PNAdapter$LoadListener;)V

    .line 196
    iget-object v0, p0, Lnet/pubnative/sdk/core/request/PNRequest;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2}, Lnet/pubnative/sdk/core/request/PNRequest;->getRequestTimeout(Lnet/pubnative/sdk/core/config/model/PNNetworkModel;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lnet/pubnative/sdk/core/adapter/request/PNAdapter;->execute(Landroid/content/Context;I)V

    goto :goto_0

    .line 191
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setCacheResources(Z)V
    .locals 0

    .prologue
    .line 108
    iput-boolean p1, p0, Lnet/pubnative/sdk/core/request/PNRequest;->mIsCachingResourceEnabled:Z

    .line 109
    return-void
.end method

.method public declared-synchronized start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lnet/pubnative/sdk/core/request/PNRequest$Listener;)V
    .locals 2

    .prologue
    .line 90
    monitor-enter p0

    if-nez p4, :cond_0

    .line 91
    :try_start_0
    sget-object v0, Lnet/pubnative/sdk/core/request/PNRequest;->TAG:Ljava/lang/String;

    const-string v1, "start - Error: listener not specified, dropping the call"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    :goto_0
    monitor-exit p0

    return-void

    .line 92
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lnet/pubnative/sdk/core/request/PNRequest;->mIsRunning:Z

    if-eqz v0, :cond_1

    .line 93
    sget-object v0, Lnet/pubnative/sdk/core/request/PNRequest;->TAG:Ljava/lang/String;

    const-string v1, "start - Error: request already loading, dropping the call"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 95
    :cond_1
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lnet/pubnative/sdk/core/request/PNRequest;->mIsRunning:Z

    .line 96
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lnet/pubnative/sdk/core/request/PNRequest;->mHandler:Landroid/os/Handler;

    .line 97
    iput-object p4, p0, Lnet/pubnative/sdk/core/request/PNRequest;->mListener:Lnet/pubnative/sdk/core/request/PNRequest$Listener;

    .line 98
    invoke-virtual {p0, p1, p2, p3}, Lnet/pubnative/sdk/core/request/PNRequest;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
