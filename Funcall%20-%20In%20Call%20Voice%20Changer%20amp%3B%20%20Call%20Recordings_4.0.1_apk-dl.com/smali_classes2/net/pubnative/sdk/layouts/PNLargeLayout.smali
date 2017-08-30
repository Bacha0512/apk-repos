.class public Lnet/pubnative/sdk/layouts/PNLargeLayout;
.super Lnet/pubnative/sdk/layouts/PNLayout;
.source "SourceFile"

# interfaces
.implements Lnet/pubnative/sdk/layouts/adapter/PNLayoutAdapter$LoadListener;
.implements Lnet/pubnative/sdk/layouts/adapter/PNLayoutAdapter$TrackListener;
.implements Lnet/pubnative/sdk/layouts/adapter/PNLayoutFullscreenAdapter$ViewListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/pubnative/sdk/layouts/PNLargeLayout$ViewListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected isShown:Z

.field protected mAdapter:Lnet/pubnative/sdk/layouts/adapter/PNLayoutFullscreenAdapter;

.field protected mViewListener:Lnet/pubnative/sdk/layouts/PNLargeLayout$ViewListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lnet/pubnative/sdk/layouts/PNLargeLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/pubnative/sdk/layouts/PNLargeLayout;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lnet/pubnative/sdk/layouts/PNLayout;-><init>()V

    return-void
.end method


# virtual methods
.method public hide()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 83
    invoke-virtual {p0}, Lnet/pubnative/sdk/layouts/PNLargeLayout;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lnet/pubnative/sdk/layouts/PNLargeLayout;->isShown:Z

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/PNLargeLayout;->mAdapter:Lnet/pubnative/sdk/layouts/adapter/PNLayoutFullscreenAdapter;

    invoke-virtual {v0}, Lnet/pubnative/sdk/layouts/adapter/PNLayoutFullscreenAdapter;->hide()V

    .line 85
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/PNLargeLayout;->mAdapter:Lnet/pubnative/sdk/layouts/adapter/PNLayoutFullscreenAdapter;

    invoke-virtual {v0, v1}, Lnet/pubnative/sdk/layouts/adapter/PNLayoutFullscreenAdapter;->setViewListener(Lnet/pubnative/sdk/layouts/adapter/PNLayoutFullscreenAdapter$ViewListener;)V

    .line 86
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/PNLargeLayout;->mAdapter:Lnet/pubnative/sdk/layouts/adapter/PNLayoutFullscreenAdapter;

    invoke-virtual {v0, v1}, Lnet/pubnative/sdk/layouts/adapter/PNLayoutFullscreenAdapter;->setTrackListener(Lnet/pubnative/sdk/layouts/adapter/PNLayoutAdapter$TrackListener;)V

    .line 90
    :goto_0
    return-void

    .line 88
    :cond_0
    sget-object v0, Lnet/pubnative/sdk/layouts/PNLargeLayout;->TAG:Ljava/lang/String;

    const-string v1, "This layout is not loaded or shown, did you forgot to load or show it before?"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected invokeHide()V
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/pubnative/sdk/layouts/PNLargeLayout;->isShown:Z

    .line 150
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/PNLargeLayout;->mViewListener:Lnet/pubnative/sdk/layouts/PNLargeLayout$ViewListener;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/PNLargeLayout;->mViewListener:Lnet/pubnative/sdk/layouts/PNLargeLayout$ViewListener;

    invoke-interface {v0, p0}, Lnet/pubnative/sdk/layouts/PNLargeLayout$ViewListener;->onPNLayoutViewHidden(Lnet/pubnative/sdk/layouts/PNLayout;)V

    .line 153
    :cond_0
    return-void
.end method

.method protected invokeShow()V
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/pubnative/sdk/layouts/PNLargeLayout;->isShown:Z

    .line 143
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/PNLargeLayout;->mViewListener:Lnet/pubnative/sdk/layouts/PNLargeLayout$ViewListener;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/PNLargeLayout;->mViewListener:Lnet/pubnative/sdk/layouts/PNLargeLayout$ViewListener;

    invoke-interface {v0, p0}, Lnet/pubnative/sdk/layouts/PNLargeLayout$ViewListener;->onPNLayoutViewShown(Lnet/pubnative/sdk/layouts/PNLayout;)V

    .line 146
    :cond_0
    return-void
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/PNLargeLayout;->mAdapter:Lnet/pubnative/sdk/layouts/adapter/PNLayoutFullscreenAdapter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAdapterLoadFail(Lnet/pubnative/sdk/layouts/adapter/PNLayoutAdapter;Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 106
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lnet/pubnative/sdk/core/exceptions/PNException;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {p1}, Lnet/pubnative/sdk/layouts/adapter/PNLayoutAdapter;->getElapsedTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2}, Lnet/pubnative/sdk/layouts/PNLargeLayout;->trackUnreachableNetwork(JLjava/lang/Exception;)V

    .line 111
    :goto_0
    invoke-virtual {p0}, Lnet/pubnative/sdk/layouts/PNLargeLayout;->getNextNetwork()V

    .line 112
    return-void

    .line 109
    :cond_0
    invoke-virtual {p1}, Lnet/pubnative/sdk/layouts/adapter/PNLayoutAdapter;->getElapsedTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2}, Lnet/pubnative/sdk/layouts/PNLargeLayout;->trackAttemptedNetwork(JLjava/lang/Exception;)V

    goto :goto_0
.end method

.method public onAdapterLoadFinished(Lnet/pubnative/sdk/layouts/adapter/PNLayoutAdapter;)V
    .locals 2

    .prologue
    .line 99
    invoke-virtual {p1}, Lnet/pubnative/sdk/layouts/adapter/PNLayoutAdapter;->getElapsedTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lnet/pubnative/sdk/layouts/PNLargeLayout;->trackSuccededNetwork(J)V

    .line 100
    check-cast p1, Lnet/pubnative/sdk/layouts/adapter/PNLayoutFullscreenAdapter;

    iput-object p1, p0, Lnet/pubnative/sdk/layouts/PNLargeLayout;->mAdapter:Lnet/pubnative/sdk/layouts/adapter/PNLayoutFullscreenAdapter;

    .line 101
    invoke-virtual {p0}, Lnet/pubnative/sdk/layouts/PNLargeLayout;->invokeFinish()V

    .line 102
    return-void
.end method

.method public onAdapterTrackClick()V
    .locals 0

    .prologue
    .line 123
    invoke-virtual {p0}, Lnet/pubnative/sdk/layouts/PNLargeLayout;->invokeClick()V

    .line 124
    return-void
.end method

.method public onAdapterTrackImpression()V
    .locals 0

    .prologue
    .line 118
    invoke-virtual {p0}, Lnet/pubnative/sdk/layouts/PNLargeLayout;->invokeImpression()V

    .line 119
    return-void
.end method

.method public onAdapterViewHide()V
    .locals 0

    .prologue
    .line 135
    invoke-virtual {p0}, Lnet/pubnative/sdk/layouts/PNLargeLayout;->invokeHide()V

    .line 136
    return-void
.end method

.method public onAdapterViewShow()V
    .locals 0

    .prologue
    .line 130
    invoke-virtual {p0}, Lnet/pubnative/sdk/layouts/PNLargeLayout;->invokeShow()V

    .line 131
    return-void
.end method

.method protected onPubnativeNetworkLayoutWaterfallLoadFail(Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 171
    invoke-virtual {p0, p1}, Lnet/pubnative/sdk/layouts/PNLargeLayout;->invokeFail(Ljava/lang/Exception;)V

    .line 172
    return-void
.end method

.method protected onPubnativeNetworkLayoutWaterfallLoadFinish(Z)V
    .locals 1

    .prologue
    .line 160
    if-eqz p1, :cond_0

    iget-object v0, p0, Lnet/pubnative/sdk/layouts/PNLargeLayout;->mAdapter:Lnet/pubnative/sdk/layouts/adapter/PNLayoutFullscreenAdapter;

    if-nez v0, :cond_0

    .line 161
    sget-object v0, Lnet/pubnative/sdk/core/exceptions/PNException;->PLACEMENT_PACING_CAP:Lnet/pubnative/sdk/core/exceptions/PNException;

    invoke-virtual {p0, v0}, Lnet/pubnative/sdk/layouts/PNLargeLayout;->invokeFail(Ljava/lang/Exception;)V

    .line 167
    :goto_0
    return-void

    .line 162
    :cond_0
    if-eqz p1, :cond_1

    .line 163
    invoke-virtual {p0}, Lnet/pubnative/sdk/layouts/PNLargeLayout;->invokeFinish()V

    goto :goto_0

    .line 165
    :cond_1
    invoke-virtual {p0}, Lnet/pubnative/sdk/layouts/PNLargeLayout;->getNextNetwork()V

    goto :goto_0
.end method

.method protected onPubnativeNetworkLayoutWaterfallNextNetwork(Ljava/util/Map;)V
    .locals 3

    .prologue
    .line 176
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/PNLargeLayout;->mPlacement:Lnet/pubnative/sdk/core/config/PNPlacement;

    invoke-virtual {v0}, Lnet/pubnative/sdk/core/config/PNPlacement;->getCurrentNetwork()Lnet/pubnative/sdk/core/config/model/PNNetworkModel;

    move-result-object v0

    invoke-static {v0}, Lnet/pubnative/sdk/layouts/adapter/large/PNLargeLayoutAdapterFactory;->getAdapter(Lnet/pubnative/sdk/core/config/model/PNNetworkModel;)Lnet/pubnative/sdk/layouts/adapter/PNLayoutAdapter;

    move-result-object v0

    .line 177
    if-nez v0, :cond_0

    .line 178
    const-wide/16 v0, 0x0

    sget-object v2, Lnet/pubnative/sdk/core/exceptions/PNException;->ADAPTER_TYPE_NOT_IMPLEMENTED:Lnet/pubnative/sdk/core/exceptions/PNException;

    invoke-virtual {p0, v0, v1, v2}, Lnet/pubnative/sdk/layouts/PNLargeLayout;->trackUnreachableNetwork(JLjava/lang/Exception;)V

    .line 179
    invoke-virtual {p0}, Lnet/pubnative/sdk/layouts/PNLargeLayout;->getNextNetwork()V

    .line 186
    :goto_0
    return-void

    .line 181
    :cond_0
    iget-object v1, p0, Lnet/pubnative/sdk/layouts/PNLargeLayout;->mPlacement:Lnet/pubnative/sdk/core/config/PNPlacement;

    invoke-virtual {v1}, Lnet/pubnative/sdk/core/config/PNPlacement;->getCurrentNetwork()Lnet/pubnative/sdk/core/config/model/PNNetworkModel;

    move-result-object v1

    invoke-virtual {v1}, Lnet/pubnative/sdk/core/config/model/PNNetworkModel;->isCPACacheEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lnet/pubnative/sdk/layouts/adapter/PNLayoutAdapter;->setCPICacheEnabled(Z)V

    .line 182
    iget-object v1, p0, Lnet/pubnative/sdk/layouts/PNLargeLayout;->mInsight:Lnet/pubnative/sdk/core/insights/model/PNInsightModel;

    invoke-virtual {v0, v1}, Lnet/pubnative/sdk/layouts/adapter/PNLayoutAdapter;->setInsight(Lnet/pubnative/sdk/core/insights/model/PNInsightModel;)V

    .line 183
    invoke-virtual {v0, p0}, Lnet/pubnative/sdk/layouts/adapter/PNLayoutAdapter;->setLoadListener(Lnet/pubnative/sdk/layouts/adapter/PNLayoutAdapter$LoadListener;)V

    .line 184
    iget-object v1, p0, Lnet/pubnative/sdk/layouts/PNLargeLayout;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lnet/pubnative/sdk/layouts/PNLargeLayout;->mPlacement:Lnet/pubnative/sdk/core/config/PNPlacement;

    invoke-virtual {v2}, Lnet/pubnative/sdk/core/config/PNPlacement;->getCurrentNetwork()Lnet/pubnative/sdk/core/config/model/PNNetworkModel;

    move-result-object v2

    invoke-virtual {v2}, Lnet/pubnative/sdk/core/config/model/PNNetworkModel;->getTimeout()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lnet/pubnative/sdk/layouts/adapter/PNLayoutAdapter;->execute(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public setViewListener(Lnet/pubnative/sdk/layouts/PNLargeLayout$ViewListener;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lnet/pubnative/sdk/layouts/PNLargeLayout;->mViewListener:Lnet/pubnative/sdk/layouts/PNLargeLayout$ViewListener;

    .line 57
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 73
    invoke-virtual {p0}, Lnet/pubnative/sdk/layouts/PNLargeLayout;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/PNLargeLayout;->mAdapter:Lnet/pubnative/sdk/layouts/adapter/PNLayoutFullscreenAdapter;

    invoke-virtual {v0, p0}, Lnet/pubnative/sdk/layouts/adapter/PNLayoutFullscreenAdapter;->setViewListener(Lnet/pubnative/sdk/layouts/adapter/PNLayoutFullscreenAdapter$ViewListener;)V

    .line 75
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/PNLargeLayout;->mAdapter:Lnet/pubnative/sdk/layouts/adapter/PNLayoutFullscreenAdapter;

    invoke-virtual {v0, p0}, Lnet/pubnative/sdk/layouts/adapter/PNLayoutFullscreenAdapter;->setTrackListener(Lnet/pubnative/sdk/layouts/adapter/PNLayoutAdapter$TrackListener;)V

    .line 76
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/PNLargeLayout;->mAdapter:Lnet/pubnative/sdk/layouts/adapter/PNLayoutFullscreenAdapter;

    invoke-virtual {v0}, Lnet/pubnative/sdk/layouts/adapter/PNLayoutFullscreenAdapter;->show()V

    .line 80
    :goto_0
    return-void

    .line 78
    :cond_0
    sget-object v0, Lnet/pubnative/sdk/layouts/PNLargeLayout;->TAG:Ljava/lang/String;

    const-string v1, "This layout is not loaded, did you forgot to load it before?"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
