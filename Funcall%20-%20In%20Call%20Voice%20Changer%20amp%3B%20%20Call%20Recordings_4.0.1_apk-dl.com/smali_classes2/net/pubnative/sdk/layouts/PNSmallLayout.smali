.class public Lnet/pubnative/sdk/layouts/PNSmallLayout;
.super Lnet/pubnative/sdk/layouts/PNLayout;
.source "SourceFile"

# interfaces
.implements Lnet/pubnative/sdk/layouts/adapter/PNLayoutAdapter$LoadListener;
.implements Lnet/pubnative/sdk/layouts/adapter/PNLayoutAdapter$TrackListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mAdapter:Lnet/pubnative/sdk/layouts/adapter/PNLayoutFeedAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lnet/pubnative/sdk/layouts/PNSmallLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/pubnative/sdk/layouts/PNSmallLayout;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lnet/pubnative/sdk/layouts/PNLayout;-><init>()V

    return-void
.end method


# virtual methods
.method public getView(Landroid/content/Context;)Lnet/pubnative/sdk/layouts/PNSmallLayoutView;
    .locals 3

    .prologue
    .line 22
    const/4 v0, 0x0

    .line 23
    iget-object v1, p0, Lnet/pubnative/sdk/layouts/PNSmallLayout;->mAdapter:Lnet/pubnative/sdk/layouts/adapter/PNLayoutFeedAdapter;

    if-nez v1, :cond_0

    .line 24
    sget-object v1, Lnet/pubnative/sdk/layouts/PNSmallLayout;->TAG:Ljava/lang/String;

    const-string v2, "Error: Ad not loaded, or failed during load, please reload it again"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    :goto_0
    return-object v0

    .line 26
    :cond_0
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/PNSmallLayout;->mAdapter:Lnet/pubnative/sdk/layouts/adapter/PNLayoutFeedAdapter;

    invoke-virtual {v0, p1}, Lnet/pubnative/sdk/layouts/adapter/PNLayoutFeedAdapter;->getView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnet/pubnative/sdk/layouts/PNSmallLayoutView;

    goto :goto_0
.end method

.method public onAdapterLoadFail(Lnet/pubnative/sdk/layouts/adapter/PNLayoutAdapter;Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 66
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lnet/pubnative/sdk/core/exceptions/PNException;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {p1}, Lnet/pubnative/sdk/layouts/adapter/PNLayoutAdapter;->getElapsedTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2}, Lnet/pubnative/sdk/layouts/PNSmallLayout;->trackUnreachableNetwork(JLjava/lang/Exception;)V

    .line 71
    :goto_0
    invoke-virtual {p0}, Lnet/pubnative/sdk/layouts/PNSmallLayout;->getNextNetwork()V

    .line 72
    return-void

    .line 69
    :cond_0
    invoke-virtual {p1}, Lnet/pubnative/sdk/layouts/adapter/PNLayoutAdapter;->getElapsedTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2}, Lnet/pubnative/sdk/layouts/PNSmallLayout;->trackAttemptedNetwork(JLjava/lang/Exception;)V

    goto :goto_0
.end method

.method public onAdapterLoadFinished(Lnet/pubnative/sdk/layouts/adapter/PNLayoutAdapter;)V
    .locals 2

    .prologue
    .line 59
    invoke-virtual {p1}, Lnet/pubnative/sdk/layouts/adapter/PNLayoutAdapter;->getElapsedTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lnet/pubnative/sdk/layouts/PNSmallLayout;->trackSuccededNetwork(J)V

    .line 60
    check-cast p1, Lnet/pubnative/sdk/layouts/adapter/PNLayoutFeedAdapter;

    iput-object p1, p0, Lnet/pubnative/sdk/layouts/PNSmallLayout;->mAdapter:Lnet/pubnative/sdk/layouts/adapter/PNLayoutFeedAdapter;

    .line 61
    invoke-virtual {p0}, Lnet/pubnative/sdk/layouts/PNSmallLayout;->invokeFinish()V

    .line 62
    return-void
.end method

.method public onAdapterTrackClick()V
    .locals 0

    .prologue
    .line 83
    invoke-virtual {p0}, Lnet/pubnative/sdk/layouts/PNSmallLayout;->invokeClick()V

    .line 84
    return-void
.end method

.method public onAdapterTrackImpression()V
    .locals 0

    .prologue
    .line 78
    invoke-virtual {p0}, Lnet/pubnative/sdk/layouts/PNSmallLayout;->invokeImpression()V

    .line 79
    return-void
.end method

.method protected onPubnativeNetworkLayoutWaterfallLoadFail(Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 103
    invoke-virtual {p0, p1}, Lnet/pubnative/sdk/layouts/PNSmallLayout;->invokeFail(Ljava/lang/Exception;)V

    .line 104
    return-void
.end method

.method protected onPubnativeNetworkLayoutWaterfallLoadFinish(Z)V
    .locals 1

    .prologue
    .line 92
    if-eqz p1, :cond_0

    iget-object v0, p0, Lnet/pubnative/sdk/layouts/PNSmallLayout;->mAdapter:Lnet/pubnative/sdk/layouts/adapter/PNLayoutFeedAdapter;

    if-nez v0, :cond_0

    .line 93
    sget-object v0, Lnet/pubnative/sdk/core/exceptions/PNException;->PLACEMENT_PACING_CAP:Lnet/pubnative/sdk/core/exceptions/PNException;

    invoke-virtual {p0, v0}, Lnet/pubnative/sdk/layouts/PNSmallLayout;->invokeFail(Ljava/lang/Exception;)V

    .line 99
    :goto_0
    return-void

    .line 94
    :cond_0
    if-eqz p1, :cond_1

    .line 95
    invoke-virtual {p0}, Lnet/pubnative/sdk/layouts/PNSmallLayout;->invokeFinish()V

    goto :goto_0

    .line 97
    :cond_1
    invoke-virtual {p0}, Lnet/pubnative/sdk/layouts/PNSmallLayout;->getNextNetwork()V

    goto :goto_0
.end method

.method protected onPubnativeNetworkLayoutWaterfallNextNetwork(Ljava/util/Map;)V
    .locals 3

    .prologue
    .line 108
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/PNSmallLayout;->mPlacement:Lnet/pubnative/sdk/core/config/PNPlacement;

    invoke-virtual {v0}, Lnet/pubnative/sdk/core/config/PNPlacement;->getCurrentNetwork()Lnet/pubnative/sdk/core/config/model/PNNetworkModel;

    move-result-object v0

    invoke-static {v0}, Lnet/pubnative/sdk/layouts/adapter/small/PNSmallLayoutAdapterFactory;->getAdapter(Lnet/pubnative/sdk/core/config/model/PNNetworkModel;)Lnet/pubnative/sdk/layouts/adapter/PNLayoutAdapter;

    move-result-object v0

    .line 109
    if-nez v0, :cond_0

    .line 110
    const-wide/16 v0, 0x0

    sget-object v2, Lnet/pubnative/sdk/core/exceptions/PNException;->ADAPTER_TYPE_NOT_IMPLEMENTED:Lnet/pubnative/sdk/core/exceptions/PNException;

    invoke-virtual {p0, v0, v1, v2}, Lnet/pubnative/sdk/layouts/PNSmallLayout;->trackUnreachableNetwork(JLjava/lang/Exception;)V

    .line 111
    invoke-virtual {p0}, Lnet/pubnative/sdk/layouts/PNSmallLayout;->getNextNetwork()V

    .line 118
    :goto_0
    return-void

    .line 113
    :cond_0
    iget-object v1, p0, Lnet/pubnative/sdk/layouts/PNSmallLayout;->mPlacement:Lnet/pubnative/sdk/core/config/PNPlacement;

    invoke-virtual {v1}, Lnet/pubnative/sdk/core/config/PNPlacement;->getCurrentNetwork()Lnet/pubnative/sdk/core/config/model/PNNetworkModel;

    move-result-object v1

    invoke-virtual {v1}, Lnet/pubnative/sdk/core/config/model/PNNetworkModel;->isCPACacheEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lnet/pubnative/sdk/layouts/adapter/PNLayoutAdapter;->setCPICacheEnabled(Z)V

    .line 114
    iget-object v1, p0, Lnet/pubnative/sdk/layouts/PNSmallLayout;->mInsight:Lnet/pubnative/sdk/core/insights/model/PNInsightModel;

    invoke-virtual {v0, v1}, Lnet/pubnative/sdk/layouts/adapter/PNLayoutAdapter;->setInsight(Lnet/pubnative/sdk/core/insights/model/PNInsightModel;)V

    .line 115
    invoke-virtual {v0, p0}, Lnet/pubnative/sdk/layouts/adapter/PNLayoutAdapter;->setLoadListener(Lnet/pubnative/sdk/layouts/adapter/PNLayoutAdapter$LoadListener;)V

    .line 116
    iget-object v1, p0, Lnet/pubnative/sdk/layouts/PNSmallLayout;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lnet/pubnative/sdk/layouts/PNSmallLayout;->mPlacement:Lnet/pubnative/sdk/core/config/PNPlacement;

    invoke-virtual {v2}, Lnet/pubnative/sdk/core/config/PNPlacement;->getCurrentNetwork()Lnet/pubnative/sdk/core/config/model/PNNetworkModel;

    move-result-object v2

    invoke-virtual {v2}, Lnet/pubnative/sdk/core/config/model/PNNetworkModel;->getTimeout()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lnet/pubnative/sdk/layouts/adapter/PNLayoutAdapter;->execute(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public startTrackingView()V
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/PNSmallLayout;->mAdapter:Lnet/pubnative/sdk/layouts/adapter/PNLayoutFeedAdapter;

    if-nez v0, :cond_0

    .line 34
    sget-object v0, Lnet/pubnative/sdk/layouts/PNSmallLayout;->TAG:Ljava/lang/String;

    const-string v1, "Error: Ad not loaded, or failed during load, please reload it again"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    :goto_0
    return-void

    .line 36
    :cond_0
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/PNSmallLayout;->mAdapter:Lnet/pubnative/sdk/layouts/adapter/PNLayoutFeedAdapter;

    invoke-virtual {v0, p0}, Lnet/pubnative/sdk/layouts/adapter/PNLayoutFeedAdapter;->setTrackListener(Lnet/pubnative/sdk/layouts/adapter/PNLayoutAdapter$TrackListener;)V

    .line 37
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/PNSmallLayout;->mAdapter:Lnet/pubnative/sdk/layouts/adapter/PNLayoutFeedAdapter;

    invoke-virtual {v0}, Lnet/pubnative/sdk/layouts/adapter/PNLayoutFeedAdapter;->startTracking()V

    goto :goto_0
.end method

.method public stopTrackingView()V
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/PNSmallLayout;->mAdapter:Lnet/pubnative/sdk/layouts/adapter/PNLayoutFeedAdapter;

    if-nez v0, :cond_0

    .line 44
    sget-object v0, Lnet/pubnative/sdk/layouts/PNSmallLayout;->TAG:Ljava/lang/String;

    const-string v1, "Error: Ad not loaded, or failed during load, please reload it again"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :goto_0
    return-void

    .line 46
    :cond_0
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/PNSmallLayout;->mAdapter:Lnet/pubnative/sdk/layouts/adapter/PNLayoutFeedAdapter;

    invoke-virtual {v0}, Lnet/pubnative/sdk/layouts/adapter/PNLayoutFeedAdapter;->stopTracking()V

    .line 47
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/PNSmallLayout;->mAdapter:Lnet/pubnative/sdk/layouts/adapter/PNLayoutFeedAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/pubnative/sdk/layouts/adapter/PNLayoutFeedAdapter;->setTrackListener(Lnet/pubnative/sdk/layouts/adapter/PNLayoutAdapter$TrackListener;)V

    goto :goto_0
.end method
