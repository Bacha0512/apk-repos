.class public abstract Lnet/pubnative/sdk/layouts/adapter/PNLayoutAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/pubnative/sdk/layouts/adapter/PNLayoutAdapter$TrackListener;,
        Lnet/pubnative/sdk/layouts/adapter/PNLayoutAdapter$LoadListener;,
        Lnet/pubnative/sdk/layouts/adapter/PNLayoutAdapter$PubnativeNetworkAdapterRunnable;
    }
.end annotation


# static fields
.field protected static final DEFAULT_ERROR:Ljava/lang/String; = "unknown"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mHandler:Landroid/os/Handler;

.field protected mInsight:Lnet/pubnative/sdk/core/insights/model/PNInsightModel;

.field protected mIsCPICacheEnabled:Z

.field protected mLoadListener:Lnet/pubnative/sdk/layouts/adapter/PNLayoutAdapter$LoadListener;

.field protected mNetworkData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mRequestStartTimeStamp:J

.field protected mTimeoutRunnable:Lnet/pubnative/sdk/layouts/adapter/PNLayoutAdapter$PubnativeNetworkAdapterRunnable;

.field protected mTrackListener:Lnet/pubnative/sdk/layouts/adapter/PNLayoutAdapter$TrackListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lnet/pubnative/sdk/layouts/adapter/PNLayoutAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/pubnative/sdk/layouts/adapter/PNLayoutAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected cancelTimeout()V
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/PNLayoutAdapter;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/PNLayoutAdapter;->mTimeoutRunnable:Lnet/pubnative/sdk/layouts/adapter/PNLayoutAdapter$PubnativeNetworkAdapterRunnable;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/PNLayoutAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lnet/pubnative/sdk/layouts/adapter/PNLayoutAdapter;->mTimeoutRunnable:Lnet/pubnative/sdk/layouts/adapter/PNLayoutAdapter$PubnativeNetworkAdapterRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 174
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/PNLayoutAdapter;->mHandler:Landroid/os/Handler;

    .line 176
    :cond_0
    return-void
.end method

.method public execute(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 154
    iput-object p1, p0, Lnet/pubnative/sdk/layouts/adapter/PNLayoutAdapter;->mContext:Landroid/content/Context;

    .line 155
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/pubnative/sdk/layouts/adapter/PNLayoutAdapter;->mRequestStartTimeStamp:J

    .line 156
    invoke-virtual {p0, p2}, Lnet/pubnative/sdk/layouts/adapter/PNLayoutAdapter;->startTimeout(I)V

    .line 157
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/PNLayoutAdapter;->mNetworkData:Ljava/util/Map;

    invoke-virtual {p0, p1, v0}, Lnet/pubnative/sdk/layouts/adapter/PNLayoutAdapter;->request(Landroid/content/Context;Ljava/util/Map;)V

    .line 158
    return-void
.end method

.method public getElapsedTime()J
    .locals 4

    .prologue
    .line 112
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lnet/pubnative/sdk/layouts/adapter/PNLayoutAdapter;->mRequestStartTimeStamp:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method protected invokeClick()V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/PNLayoutAdapter;->mTrackListener:Lnet/pubnative/sdk/layouts/adapter/PNLayoutAdapter$TrackListener;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/PNLayoutAdapter;->mTrackListener:Lnet/pubnative/sdk/layouts/adapter/PNLayoutAdapter$TrackListener;

    invoke-interface {v0}, Lnet/pubnative/sdk/layouts/adapter/PNLayoutAdapter$TrackListener;->onAdapterTrackClick()V

    .line 147
    :cond_0
    return-void
.end method

.method protected invokeImpression()V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/PNLayoutAdapter;->mTrackListener:Lnet/pubnative/sdk/layouts/adapter/PNLayoutAdapter$TrackListener;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/PNLayoutAdapter;->mTrackListener:Lnet/pubnative/sdk/layouts/adapter/PNLayoutAdapter$TrackListener;

    invoke-interface {v0}, Lnet/pubnative/sdk/layouts/adapter/PNLayoutAdapter$TrackListener;->onAdapterTrackImpression()V

    .line 141
    :cond_0
    return-void
.end method

.method protected invokeLoadFail(Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 129
    invoke-virtual {p0}, Lnet/pubnative/sdk/layouts/adapter/PNLayoutAdapter;->cancelTimeout()V

    .line 130
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/PNLayoutAdapter;->mLoadListener:Lnet/pubnative/sdk/layouts/adapter/PNLayoutAdapter$LoadListener;

    .line 131
    const/4 v1, 0x0

    iput-object v1, p0, Lnet/pubnative/sdk/layouts/adapter/PNLayoutAdapter;->mLoadListener:Lnet/pubnative/sdk/layouts/adapter/PNLayoutAdapter$LoadListener;

    .line 132
    if-eqz v0, :cond_0

    .line 133
    invoke-interface {v0, p0, p1}, Lnet/pubnative/sdk/layouts/adapter/PNLayoutAdapter$LoadListener;->onAdapterLoadFail(Lnet/pubnative/sdk/layouts/adapter/PNLayoutAdapter;Ljava/lang/Exception;)V

    .line 135
    :cond_0
    return-void
.end method

.method protected invokeLoadSuccess()V
    .locals 2

    .prologue
    .line 120
    invoke-virtual {p0}, Lnet/pubnative/sdk/layouts/adapter/PNLayoutAdapter;->cancelTimeout()V

    .line 121
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/PNLayoutAdapter;->mLoadListener:Lnet/pubnative/sdk/layouts/adapter/PNLayoutAdapter$LoadListener;

    .line 122
    const/4 v1, 0x0

    iput-object v1, p0, Lnet/pubnative/sdk/layouts/adapter/PNLayoutAdapter;->mLoadListener:Lnet/pubnative/sdk/layouts/adapter/PNLayoutAdapter$LoadListener;

    .line 123
    if-eqz v0, :cond_0

    .line 124
    invoke-interface {v0, p0}, Lnet/pubnative/sdk/layouts/adapter/PNLayoutAdapter$LoadListener;->onAdapterLoadFinished(Lnet/pubnative/sdk/layouts/adapter/PNLayoutAdapter;)V

    .line 126
    :cond_0
    return-void
.end method

.method protected onTimeout()V
    .locals 1

    .prologue
    .line 180
    sget-object v0, Lnet/pubnative/sdk/core/exceptions/PNException;->ADAPTER_TIMEOUT:Lnet/pubnative/sdk/core/exceptions/PNException;

    invoke-virtual {p0, v0}, Lnet/pubnative/sdk/layouts/adapter/PNLayoutAdapter;->invokeLoadFail(Ljava/lang/Exception;)V

    .line 181
    return-void
.end method

.method protected abstract request(Landroid/content/Context;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public setCPICacheEnabled(Z)V
    .locals 0

    .prologue
    .line 103
    iput-boolean p1, p0, Lnet/pubnative/sdk/layouts/adapter/PNLayoutAdapter;->mIsCPICacheEnabled:Z

    .line 104
    return-void
.end method

.method public setInsight(Lnet/pubnative/sdk/core/insights/model/PNInsightModel;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lnet/pubnative/sdk/layouts/adapter/PNLayoutAdapter;->mInsight:Lnet/pubnative/sdk/core/insights/model/PNInsightModel;

    .line 86
    return-void
.end method

.method public setLoadListener(Lnet/pubnative/sdk/layouts/adapter/PNLayoutAdapter$LoadListener;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lnet/pubnative/sdk/layouts/adapter/PNLayoutAdapter;->mLoadListener:Lnet/pubnative/sdk/layouts/adapter/PNLayoutAdapter$LoadListener;

    .line 64
    return-void
.end method

.method public setNetworkData(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 94
    iput-object p1, p0, Lnet/pubnative/sdk/layouts/adapter/PNLayoutAdapter;->mNetworkData:Ljava/util/Map;

    .line 95
    return-void
.end method

.method public setTrackListener(Lnet/pubnative/sdk/layouts/adapter/PNLayoutAdapter$TrackListener;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lnet/pubnative/sdk/layouts/adapter/PNLayoutAdapter;->mTrackListener:Lnet/pubnative/sdk/layouts/adapter/PNLayoutAdapter$TrackListener;

    .line 73
    return-void
.end method

.method protected startTimeout(I)V
    .locals 4

    .prologue
    .line 164
    if-lez p1, :cond_0

    .line 165
    new-instance v0, Lnet/pubnative/sdk/layouts/adapter/PNLayoutAdapter$PubnativeNetworkAdapterRunnable;

    invoke-direct {v0, p0}, Lnet/pubnative/sdk/layouts/adapter/PNLayoutAdapter$PubnativeNetworkAdapterRunnable;-><init>(Lnet/pubnative/sdk/layouts/adapter/PNLayoutAdapter;)V

    iput-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/PNLayoutAdapter;->mTimeoutRunnable:Lnet/pubnative/sdk/layouts/adapter/PNLayoutAdapter$PubnativeNetworkAdapterRunnable;

    .line 166
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/PNLayoutAdapter;->mHandler:Landroid/os/Handler;

    .line 167
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/PNLayoutAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lnet/pubnative/sdk/layouts/adapter/PNLayoutAdapter;->mTimeoutRunnable:Lnet/pubnative/sdk/layouts/adapter/PNLayoutAdapter$PubnativeNetworkAdapterRunnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 169
    :cond_0
    return-void
.end method
