.class public abstract Lnet/pubnative/sdk/layouts/PNLayout;
.super Lnet/pubnative/sdk/layouts/PNLayoutWaterfall;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/pubnative/sdk/layouts/PNLayout$TrackListener;,
        Lnet/pubnative/sdk/layouts/PNLayout$LoadListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mLoadListener:Lnet/pubnative/sdk/layouts/PNLayout$LoadListener;

.field protected mTrackListener:Lnet/pubnative/sdk/layouts/PNLayout$TrackListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lnet/pubnative/sdk/layouts/PNLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/pubnative/sdk/layouts/PNLayout;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lnet/pubnative/sdk/layouts/PNLayoutWaterfall;-><init>()V

    return-void
.end method


# virtual methods
.method protected invokeClick()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/PNLayout;->mInsight:Lnet/pubnative/sdk/core/insights/model/PNInsightModel;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/PNLayout;->mInsight:Lnet/pubnative/sdk/core/insights/model/PNInsightModel;

    invoke-virtual {v0}, Lnet/pubnative/sdk/core/insights/model/PNInsightModel;->sendClickInsight()V

    .line 77
    :cond_0
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/PNLayout;->mTrackListener:Lnet/pubnative/sdk/layouts/PNLayout$TrackListener;

    if-eqz v0, :cond_1

    .line 78
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/PNLayout;->mTrackListener:Lnet/pubnative/sdk/layouts/PNLayout$TrackListener;

    invoke-interface {v0, p0}, Lnet/pubnative/sdk/layouts/PNLayout$TrackListener;->onPNLayoutTrackClick(Lnet/pubnative/sdk/layouts/PNLayout;)V

    .line 80
    :cond_1
    return-void
.end method

.method protected invokeFail(Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/PNLayout;->mLoadListener:Lnet/pubnative/sdk/layouts/PNLayout$LoadListener;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/PNLayout;->mLoadListener:Lnet/pubnative/sdk/layouts/PNLayout$LoadListener;

    invoke-interface {v0, p0, p1}, Lnet/pubnative/sdk/layouts/PNLayout$LoadListener;->onPNLayoutLoadFail(Lnet/pubnative/sdk/layouts/PNLayout;Ljava/lang/Exception;)V

    .line 62
    :cond_0
    return-void
.end method

.method protected invokeFinish()V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/PNLayout;->mLoadListener:Lnet/pubnative/sdk/layouts/PNLayout$LoadListener;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/PNLayout;->mLoadListener:Lnet/pubnative/sdk/layouts/PNLayout$LoadListener;

    invoke-interface {v0, p0}, Lnet/pubnative/sdk/layouts/PNLayout$LoadListener;->onPNLayoutLoadFinish(Lnet/pubnative/sdk/layouts/PNLayout;)V

    .line 56
    :cond_0
    return-void
.end method

.method protected invokeImpression()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/PNLayout;->mInsight:Lnet/pubnative/sdk/core/insights/model/PNInsightModel;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/PNLayout;->mInsight:Lnet/pubnative/sdk/core/insights/model/PNInsightModel;

    invoke-virtual {v0}, Lnet/pubnative/sdk/core/insights/model/PNInsightModel;->sendImpressionInsight()V

    .line 68
    :cond_0
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/PNLayout;->mTrackListener:Lnet/pubnative/sdk/layouts/PNLayout$TrackListener;

    if-eqz v0, :cond_1

    .line 69
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/PNLayout;->mTrackListener:Lnet/pubnative/sdk/layouts/PNLayout$TrackListener;

    invoke-interface {v0, p0}, Lnet/pubnative/sdk/layouts/PNLayout$TrackListener;->onPNLayoutTrackImpression(Lnet/pubnative/sdk/layouts/PNLayout;)V

    .line 71
    :cond_1
    return-void
.end method

.method public load(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/PNLayout;->mLoadListener:Lnet/pubnative/sdk/layouts/PNLayout$LoadListener;

    if-nez v0, :cond_0

    .line 39
    sget-object v0, Lnet/pubnative/sdk/layouts/PNLayout;->TAG:Ljava/lang/String;

    const-string v1, "load - Error: listener was not set, have you configured one using setLoadListener()?"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 42
    :cond_1
    sget-object v0, Lnet/pubnative/sdk/layouts/PNLayout;->TAG:Ljava/lang/String;

    const-string v1, "Error: placement was null or emtpy and required"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    sget-object v0, Lnet/pubnative/sdk/core/exceptions/PNException;->REQUEST_PARAMETERS_INVALID:Lnet/pubnative/sdk/core/exceptions/PNException;

    invoke-virtual {p0, v0}, Lnet/pubnative/sdk/layouts/PNLayout;->invokeFail(Ljava/lang/Exception;)V

    .line 47
    :goto_0
    return-void

    .line 45
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lnet/pubnative/sdk/layouts/PNLayout;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setLoadListener(Lnet/pubnative/sdk/layouts/PNLayout$LoadListener;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lnet/pubnative/sdk/layouts/PNLayout;->mLoadListener:Lnet/pubnative/sdk/layouts/PNLayout$LoadListener;

    .line 84
    return-void
.end method

.method public setTrackListener(Lnet/pubnative/sdk/layouts/PNLayout$TrackListener;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lnet/pubnative/sdk/layouts/PNLayout;->mTrackListener:Lnet/pubnative/sdk/layouts/PNLayout$TrackListener;

    .line 88
    return-void
.end method
