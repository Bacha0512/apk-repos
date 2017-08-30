.class public Lnet/pubnative/sdk/layouts/PNMediumLayout;
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
    .line 38
    const-class v0, Lnet/pubnative/sdk/layouts/PNMediumLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/pubnative/sdk/layouts/PNMediumLayout;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lnet/pubnative/sdk/layouts/PNLayout;-><init>()V

    return-void
.end method


# virtual methods
.method public getView(Landroid/content/Context;)Lnet/pubnative/sdk/layouts/PNMediumLayoutView;
    .locals 3

    .prologue
    .line 43
    const/4 v0, 0x0

    .line 44
    iget-object v1, p0, Lnet/pubnative/sdk/layouts/PNMediumLayout;->mAdapter:Lnet/pubnative/sdk/layouts/adapter/PNLayoutFeedAdapter;

    if-nez v1, :cond_0

    .line 45
    sget-object v1, Lnet/pubnative/sdk/layouts/PNMediumLayout;->TAG:Ljava/lang/String;

    const-string v2, "Error: Ad not loaded, or failed during load, please reload it again"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :goto_0
    return-object v0

    .line 47
    :cond_0
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/PNMediumLayout;->mAdapter:Lnet/pubnative/sdk/layouts/adapter/PNLayoutFeedAdapter;

    invoke-virtual {v0, p1}, Lnet/pubnative/sdk/layouts/adapter/PNLayoutFeedAdapter;->getView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnet/pubnative/sdk/layouts/PNMediumLayoutView;

    goto :goto_0
.end method

.method public onAdapterLoadFail(Lnet/pubnative/sdk/layouts/adapter/PNLayoutAdapter;Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 84
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lnet/pubnative/sdk/core/exceptions/PNException;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {p1}, Lnet/pubnative/sdk/layouts/adapter/PNLayoutAdapter;->getElapsedTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2}, Lnet/pubnative/sdk/layouts/PNMediumLayout;->trackUnreachableNetwork(JLjava/lang/Exception;)V

    .line 89
    :goto_0
    invoke-virtual {p0}, Lnet/pubnative/sdk/layouts/PNMediumLayout;->getNextNetwork()V

    .line 90
    return-void

    .line 87
    :cond_0
    invoke-virtual {p1}, Lnet/pubnative/sdk/layouts/adapter/PNLayoutAdapter;->getElapsedTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2}, Lnet/pubnative/sdk/layouts/PNMediumLayout;->trackAttemptedNetwork(JLjava/lang/Exception;)V

    goto :goto_0
.end method

.method public onAdapterLoadFinished(Lnet/pubnative/sdk/layouts/adapter/PNLayoutAdapter;)V
    .locals 2

    .prologue
    .line 77
    invoke-virtual {p1}, Lnet/pubnative/sdk/layouts/adapter/PNLayoutAdapter;->getElapsedTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lnet/pubnative/sdk/layouts/PNMediumLayout;->trackSuccededNetwork(J)V

    .line 78
    check-cast p1, Lnet/pubnative/sdk/layouts/adapter/PNLayoutFeedAdapter;

    iput-object p1, p0, Lnet/pubnative/sdk/layouts/PNMediumLayout;->mAdapter:Lnet/pubnative/sdk/layouts/adapter/PNLayoutFeedAdapter;

    .line 79
    invoke-virtual {p0}, Lnet/pubnative/sdk/layouts/PNMediumLayout;->invokeFinish()V

    .line 80
    return-void
.end method

.method public onAdapterTrackClick()V
    .locals 0

    .prologue
    .line 101
    invoke-virtual {p0}, Lnet/pubnative/sdk/layouts/PNMediumLayout;->invokeClick()V

    .line 102
    return-void
.end method

.method public onAdapterTrackImpression()V
    .locals 0

    .prologue
    .line 96
    invoke-virtual {p0}, Lnet/pubnative/sdk/layouts/PNMediumLayout;->invokeImpression()V

    .line 97
    return-void
.end method

.method protected onPubnativeNetworkLayoutWaterfallLoadFail(Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 121
    invoke-virtual {p0, p1}, Lnet/pubnative/sdk/layouts/PNMediumLayout;->invokeFail(Ljava/lang/Exception;)V

    .line 122
    return-void
.end method

.method protected onPubnativeNetworkLayoutWaterfallLoadFinish(Z)V
    .locals 1

    .prologue
    .line 110
    if-eqz p1, :cond_0

    iget-object v0, p0, Lnet/pubnative/sdk/layouts/PNMediumLayout;->mAdapter:Lnet/pubnative/sdk/layouts/adapter/PNLayoutFeedAdapter;

    if-nez v0, :cond_0

    .line 111
    sget-object v0, Lnet/pubnative/sdk/core/exceptions/PNException;->PLACEMENT_PACING_CAP:Lnet/pubnative/sdk/core/exceptions/PNException;

    invoke-virtual {p0, v0}, Lnet/pubnative/sdk/layouts/PNMediumLayout;->invokeFail(Ljava/lang/Exception;)V

    .line 117
    :goto_0
    return-void

    .line 112
    :cond_0
    if-eqz p1, :cond_1

    .line 113
    invoke-virtual {p0}, Lnet/pubnative/sdk/layouts/PNMediumLayout;->invokeFinish()V

    goto :goto_0

    .line 115
    :cond_1
    invoke-virtual {p0}, Lnet/pubnative/sdk/layouts/PNMediumLayout;->getNextNetwork()V

    goto :goto_0
.end method

.method protected onPubnativeNetworkLayoutWaterfallNextNetwork(Ljava/util/Map;)V
    .locals 3

    .prologue
    .line 126
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/PNMediumLayout;->mPlacement:Lnet/pubnative/sdk/core/config/PNPlacement;

    invoke-virtual {v0}, Lnet/pubnative/sdk/core/config/PNPlacement;->getCurrentNetwork()Lnet/pubnative/sdk/core/config/model/PNNetworkModel;

    move-result-object v0

    invoke-static {v0}, Lnet/pubnative/sdk/layouts/adapter/medium/PNMediumLayoutAdapterFactory;->getAdapter(Lnet/pubnative/sdk/core/config/model/PNNetworkModel;)Lnet/pubnative/sdk/layouts/adapter/PNLayoutAdapter;

    move-result-object v0

    .line 127
    if-nez v0, :cond_0

    .line 128
    const-wide/16 v0, 0x0

    sget-object v2, Lnet/pubnative/sdk/core/exceptions/PNException;->ADAPTER_TYPE_NOT_IMPLEMENTED:Lnet/pubnative/sdk/core/exceptions/PNException;

    invoke-virtual {p0, v0, v1, v2}, Lnet/pubnative/sdk/layouts/PNMediumLayout;->trackUnreachableNetwork(JLjava/lang/Exception;)V

    .line 129
    invoke-virtual {p0}, Lnet/pubnative/sdk/layouts/PNMediumLayout;->getNextNetwork()V

    .line 136
    :goto_0
    return-void

    .line 131
    :cond_0
    iget-object v1, p0, Lnet/pubnative/sdk/layouts/PNMediumLayout;->mPlacement:Lnet/pubnative/sdk/core/config/PNPlacement;

    invoke-virtual {v1}, Lnet/pubnative/sdk/core/config/PNPlacement;->getCurrentNetwork()Lnet/pubnative/sdk/core/config/model/PNNetworkModel;

    move-result-object v1

    invoke-virtual {v1}, Lnet/pubnative/sdk/core/config/model/PNNetworkModel;->isCPACacheEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lnet/pubnative/sdk/layouts/adapter/PNLayoutAdapter;->setCPICacheEnabled(Z)V

    .line 132
    iget-object v1, p0, Lnet/pubnative/sdk/layouts/PNMediumLayout;->mInsight:Lnet/pubnative/sdk/core/insights/model/PNInsightModel;

    invoke-virtual {v0, v1}, Lnet/pubnative/sdk/layouts/adapter/PNLayoutAdapter;->setInsight(Lnet/pubnative/sdk/core/insights/model/PNInsightModel;)V

    .line 133
    invoke-virtual {v0, p0}, Lnet/pubnative/sdk/layouts/adapter/PNLayoutAdapter;->setLoadListener(Lnet/pubnative/sdk/layouts/adapter/PNLayoutAdapter$LoadListener;)V

    .line 134
    iget-object v1, p0, Lnet/pubnative/sdk/layouts/PNMediumLayout;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lnet/pubnative/sdk/layouts/PNMediumLayout;->mPlacement:Lnet/pubnative/sdk/core/config/PNPlacement;

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
    .line 53
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/PNMediumLayout;->mAdapter:Lnet/pubnative/sdk/layouts/adapter/PNLayoutFeedAdapter;

    if-nez v0, :cond_0

    .line 54
    sget-object v0, Lnet/pubnative/sdk/layouts/PNMediumLayout;->TAG:Ljava/lang/String;

    const-string v1, "Error: Ad not loaded, or failed during load, please reload it again"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :goto_0
    return-void

    .line 56
    :cond_0
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/PNMediumLayout;->mAdapter:Lnet/pubnative/sdk/layouts/adapter/PNLayoutFeedAdapter;

    invoke-virtual {v0, p0}, Lnet/pubnative/sdk/layouts/adapter/PNLayoutFeedAdapter;->setTrackListener(Lnet/pubnative/sdk/layouts/adapter/PNLayoutAdapter$TrackListener;)V

    .line 57
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/PNMediumLayout;->mAdapter:Lnet/pubnative/sdk/layouts/adapter/PNLayoutFeedAdapter;

    invoke-virtual {v0}, Lnet/pubnative/sdk/layouts/adapter/PNLayoutFeedAdapter;->startTracking()V

    goto :goto_0
.end method

.method public stopTrackingView()V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/PNMediumLayout;->mAdapter:Lnet/pubnative/sdk/layouts/adapter/PNLayoutFeedAdapter;

    if-nez v0, :cond_0

    .line 63
    sget-object v0, Lnet/pubnative/sdk/layouts/PNMediumLayout;->TAG:Ljava/lang/String;

    const-string v1, "Error: Ad not loaded, or failed during load, please reload it again"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :goto_0
    return-void

    .line 65
    :cond_0
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/PNMediumLayout;->mAdapter:Lnet/pubnative/sdk/layouts/adapter/PNLayoutFeedAdapter;

    invoke-virtual {v0}, Lnet/pubnative/sdk/layouts/adapter/PNLayoutFeedAdapter;->stopTracking()V

    .line 66
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/PNMediumLayout;->mAdapter:Lnet/pubnative/sdk/layouts/adapter/PNLayoutFeedAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/pubnative/sdk/layouts/adapter/PNLayoutFeedAdapter;->setTrackListener(Lnet/pubnative/sdk/layouts/adapter/PNLayoutAdapter$TrackListener;)V

    goto :goto_0
.end method
