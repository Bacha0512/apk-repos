.class public abstract Lnet/pubnative/sdk/core/adapter/request/PNAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/pubnative/sdk/core/adapter/request/PNAdapter$PubnativeNetworkAdapterRunnable;,
        Lnet/pubnative/sdk/core/adapter/request/PNAdapter$LoadListener;
    }
.end annotation


# static fields
.field protected static final DEFAULT_ERROR:Ljava/lang/String; = "Unknown"

.field private static TAG:Ljava/lang/String;


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mData:Ljava/util/Map;

.field protected mExtras:Ljava/util/Map;
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

.field protected mHandler:Landroid/os/Handler;

.field protected mInsight:Lnet/pubnative/sdk/core/insights/model/PNInsightModel;

.field protected mIsCPICacheEnabled:Z

.field protected mIsParallelRequest:Z

.field protected mLoadListener:Lnet/pubnative/sdk/core/adapter/request/PNAdapter$LoadListener;

.field protected mNetworkName:Ljava/lang/String;

.field protected mRequestStartTimeStamp:J

.field protected mTimeoutRunnable:Lnet/pubnative/sdk/core/adapter/request/PNAdapter$PubnativeNetworkAdapterRunnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lnet/pubnative/sdk/core/adapter/request/PNAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/pubnative/sdk/core/adapter/request/PNAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lnet/pubnative/sdk/core/adapter/request/PNAdapter;->mData:Ljava/util/Map;

    .line 101
    return-void
.end method


# virtual methods
.method protected cancelTimeout()V
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lnet/pubnative/sdk/core/adapter/request/PNAdapter;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/pubnative/sdk/core/adapter/request/PNAdapter;->mTimeoutRunnable:Lnet/pubnative/sdk/core/adapter/request/PNAdapter$PubnativeNetworkAdapterRunnable;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lnet/pubnative/sdk/core/adapter/request/PNAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lnet/pubnative/sdk/core/adapter/request/PNAdapter;->mTimeoutRunnable:Lnet/pubnative/sdk/core/adapter/request/PNAdapter$PubnativeNetworkAdapterRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 194
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/pubnative/sdk/core/adapter/request/PNAdapter;->mHandler:Landroid/os/Handler;

    .line 196
    :cond_0
    return-void
.end method

.method public execute(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 174
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/pubnative/sdk/core/adapter/request/PNAdapter;->mRequestStartTimeStamp:J

    .line 175
    iput-object p1, p0, Lnet/pubnative/sdk/core/adapter/request/PNAdapter;->mContext:Landroid/content/Context;

    .line 176
    invoke-virtual {p0, p2}, Lnet/pubnative/sdk/core/adapter/request/PNAdapter;->startTimeout(I)V

    .line 177
    invoke-virtual {p0, p1}, Lnet/pubnative/sdk/core/adapter/request/PNAdapter;->request(Landroid/content/Context;)V

    .line 178
    return-void
.end method

.method public getElapsedTime()J
    .locals 4

    .prologue
    .line 163
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lnet/pubnative/sdk/core/adapter/request/PNAdapter;->mRequestStartTimeStamp:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method protected invokeLoadFail(Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 218
    invoke-virtual {p0}, Lnet/pubnative/sdk/core/adapter/request/PNAdapter;->cancelTimeout()V

    .line 219
    iget-object v0, p0, Lnet/pubnative/sdk/core/adapter/request/PNAdapter;->mLoadListener:Lnet/pubnative/sdk/core/adapter/request/PNAdapter$LoadListener;

    .line 220
    const/4 v1, 0x0

    iput-object v1, p0, Lnet/pubnative/sdk/core/adapter/request/PNAdapter;->mLoadListener:Lnet/pubnative/sdk/core/adapter/request/PNAdapter$LoadListener;

    .line 221
    if-eqz v0, :cond_0

    .line 222
    invoke-interface {v0, p0, p1}, Lnet/pubnative/sdk/core/adapter/request/PNAdapter$LoadListener;->onAdapterLoadFail(Lnet/pubnative/sdk/core/adapter/request/PNAdapter;Ljava/lang/Exception;)V

    .line 224
    :cond_0
    return-void
.end method

.method protected invokeLoadFinish(Lnet/pubnative/sdk/core/request/PNAdModel;)V
    .locals 4

    .prologue
    .line 206
    invoke-virtual {p0}, Lnet/pubnative/sdk/core/adapter/request/PNAdapter;->cancelTimeout()V

    .line 207
    iget-object v0, p0, Lnet/pubnative/sdk/core/adapter/request/PNAdapter;->mLoadListener:Lnet/pubnative/sdk/core/adapter/request/PNAdapter$LoadListener;

    .line 208
    const/4 v1, 0x0

    iput-object v1, p0, Lnet/pubnative/sdk/core/adapter/request/PNAdapter;->mLoadListener:Lnet/pubnative/sdk/core/adapter/request/PNAdapter$LoadListener;

    .line 209
    if-eqz v0, :cond_1

    .line 210
    invoke-interface {v0, p0, p1}, Lnet/pubnative/sdk/core/adapter/request/PNAdapter$LoadListener;->onAdapterLoadFinish(Lnet/pubnative/sdk/core/adapter/request/PNAdapter;Lnet/pubnative/sdk/core/request/PNAdModel;)V

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    iget-object v0, p0, Lnet/pubnative/sdk/core/adapter/request/PNAdapter;->mInsight:Lnet/pubnative/sdk/core/insights/model/PNInsightModel;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lnet/pubnative/sdk/core/adapter/request/PNAdapter;->mInsight:Lnet/pubnative/sdk/core/insights/model/PNInsightModel;

    iget-object v1, p0, Lnet/pubnative/sdk/core/adapter/request/PNAdapter;->mNetworkName:Ljava/lang/String;

    invoke-virtual {p0}, Lnet/pubnative/sdk/core/adapter/request/PNAdapter;->getElapsedTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lnet/pubnative/sdk/core/insights/model/PNInsightModel;->sendRescueInsight(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method public isParallelRequest()Z
    .locals 1

    .prologue
    .line 145
    iget-boolean v0, p0, Lnet/pubnative/sdk/core/adapter/request/PNAdapter;->mIsParallelRequest:Z

    return v0
.end method

.method protected onTimeout()V
    .locals 1

    .prologue
    .line 199
    sget-object v0, Lnet/pubnative/sdk/core/exceptions/PNException;->ADAPTER_TIMEOUT:Lnet/pubnative/sdk/core/exceptions/PNException;

    invoke-virtual {p0, v0}, Lnet/pubnative/sdk/core/adapter/request/PNAdapter;->invokeLoadFail(Ljava/lang/Exception;)V

    .line 200
    return-void
.end method

.method protected abstract request(Landroid/content/Context;)V
.end method

.method public setCPICacheEnabled(Z)V
    .locals 0

    .prologue
    .line 127
    iput-boolean p1, p0, Lnet/pubnative/sdk/core/adapter/request/PNAdapter;->mIsCPICacheEnabled:Z

    .line 128
    return-void
.end method

.method public setExtras(Ljava/util/Map;)V
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
    .line 118
    iput-object p1, p0, Lnet/pubnative/sdk/core/adapter/request/PNAdapter;->mExtras:Ljava/util/Map;

    .line 119
    return-void
.end method

.method public setInsight(Lnet/pubnative/sdk/core/insights/model/PNInsightModel;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lnet/pubnative/sdk/core/adapter/request/PNAdapter;->mInsight:Lnet/pubnative/sdk/core/insights/model/PNInsightModel;

    .line 155
    return-void
.end method

.method public setLoadListener(Lnet/pubnative/sdk/core/adapter/request/PNAdapter$LoadListener;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lnet/pubnative/sdk/core/adapter/request/PNAdapter;->mLoadListener:Lnet/pubnative/sdk/core/adapter/request/PNAdapter$LoadListener;

    .line 110
    return-void
.end method

.method public setParallelRequestMode(Z)V
    .locals 0

    .prologue
    .line 136
    iput-boolean p1, p0, Lnet/pubnative/sdk/core/adapter/request/PNAdapter;->mIsParallelRequest:Z

    .line 137
    return-void
.end method

.method protected startTimeout(I)V
    .locals 4

    .prologue
    .line 184
    if-lez p1, :cond_0

    .line 185
    new-instance v0, Lnet/pubnative/sdk/core/adapter/request/PNAdapter$PubnativeNetworkAdapterRunnable;

    invoke-direct {v0, p0}, Lnet/pubnative/sdk/core/adapter/request/PNAdapter$PubnativeNetworkAdapterRunnable;-><init>(Lnet/pubnative/sdk/core/adapter/request/PNAdapter;)V

    iput-object v0, p0, Lnet/pubnative/sdk/core/adapter/request/PNAdapter;->mTimeoutRunnable:Lnet/pubnative/sdk/core/adapter/request/PNAdapter$PubnativeNetworkAdapterRunnable;

    .line 186
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lnet/pubnative/sdk/core/adapter/request/PNAdapter;->mHandler:Landroid/os/Handler;

    .line 187
    iget-object v0, p0, Lnet/pubnative/sdk/core/adapter/request/PNAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lnet/pubnative/sdk/core/adapter/request/PNAdapter;->mTimeoutRunnable:Lnet/pubnative/sdk/core/adapter/request/PNAdapter$PubnativeNetworkAdapterRunnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 189
    :cond_0
    return-void
.end method
