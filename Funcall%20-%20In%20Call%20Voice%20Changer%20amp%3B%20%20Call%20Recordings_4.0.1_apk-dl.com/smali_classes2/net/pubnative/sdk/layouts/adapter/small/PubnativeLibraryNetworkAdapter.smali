.class public Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter;
.super Lnet/pubnative/sdk/layouts/adapter/PNLayoutFeedAdapter;
.source "SourceFile"

# interfaces
.implements Lnet/pubnative/api/layouts/PNAPILayout$LoadListener;
.implements Lnet/pubnative/api/layouts/PNAPILayoutView$Listener;
.implements Lnet/pubnative/sdk/core/request/PNAdModel$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;
    }
.end annotation


# instance fields
.field protected mCachedView:Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;

.field protected mLayout:Lnet/pubnative/api/layouts/PNAPILayout;

.field protected mLayoutView:Lnet/pubnative/api/layouts/PNAPILayoutView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lnet/pubnative/sdk/layouts/adapter/PNLayoutFeedAdapter;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter;)V
    .locals 0

    .prologue
    .line 22
    invoke-virtual {p0}, Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter;->invokeLoadSuccess()V

    return-void
.end method

.method static synthetic access$100(Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter;->invokeLoadFail(Ljava/lang/Exception;)V

    return-void
.end method


# virtual methods
.method protected fetch()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter;->mLayout:Lnet/pubnative/api/layouts/PNAPILayout;

    new-instance v1, Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter$1;

    invoke-direct {v1, p0}, Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter$1;-><init>(Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter;)V

    invoke-virtual {v0, v1}, Lnet/pubnative/api/layouts/PNAPILayout;->fetch(Lnet/pubnative/api/layouts/PNAPILayout$FetchListener;)V

    .line 96
    return-void
.end method

.method public bridge synthetic getView(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter;->getView(Landroid/content/Context;)Lnet/pubnative/sdk/layouts/PNSmallLayoutView;

    move-result-object v0

    return-object v0
.end method

.method public getView(Landroid/content/Context;)Lnet/pubnative/sdk/layouts/PNSmallLayoutView;
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter;->mCachedView:Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter;->mLayoutView:Lnet/pubnative/api/layouts/PNAPILayoutView;

    if-eqz v0, :cond_0

    .line 76
    new-instance v0, Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;

    iget-object v1, p0, Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;-><init>(Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter;Landroid/content/Context;)V

    iput-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter;->mCachedView:Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;

    .line 77
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter;->mCachedView:Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;

    iget-object v1, p0, Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter;->mLayoutView:Lnet/pubnative/api/layouts/PNAPILayoutView;

    invoke-virtual {v0, v1}, Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;->loadWithView(Landroid/view/View;)V

    .line 79
    :cond_0
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter;->mCachedView:Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;

    return-object v0
.end method

.method public onPNAdClick(Lnet/pubnative/sdk/core/request/PNAdModel;)V
    .locals 0

    .prologue
    .line 142
    invoke-virtual {p0}, Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter;->invokeClick()V

    .line 143
    return-void
.end method

.method public onPNAdImpression(Lnet/pubnative/sdk/core/request/PNAdModel;)V
    .locals 0

    .prologue
    .line 137
    invoke-virtual {p0}, Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter;->invokeImpression()V

    .line 138
    return-void
.end method

.method public onPubnativeLayoutLoadFail(Lnet/pubnative/api/layouts/PNAPILayout;Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 112
    iget-boolean v0, p0, Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter;->mIsCPICacheEnabled:Z

    if-eqz v0, :cond_1

    .line 113
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryCPICache;->get(Landroid/content/Context;)Lnet/pubnative/api/core/request/model/PNAPIAdModel;

    move-result-object v0

    .line 114
    if-nez v0, :cond_0

    .line 115
    invoke-virtual {p0, p2}, Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter;->invokeLoadFail(Ljava/lang/Exception;)V

    .line 123
    :goto_0
    return-void

    .line 117
    :cond_0
    iget-object v1, p0, Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter;->mLayout:Lnet/pubnative/api/layouts/PNAPILayout;

    invoke-virtual {v1, v0}, Lnet/pubnative/api/layouts/PNAPILayout;->setAdModel(Lnet/pubnative/api/core/request/model/PNAPIAdModel;)V

    .line 118
    invoke-virtual {p0}, Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter;->fetch()V

    goto :goto_0

    .line 121
    :cond_1
    invoke-virtual {p0, p2}, Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter;->invokeLoadFail(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onPubnativeLayoutLoadFinish(Lnet/pubnative/api/layouts/PNAPILayout;Lnet/pubnative/api/core/request/model/PNAPIAdModel;)V
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter;->mIsCPICacheEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->isRevenueModelCPA()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryCPICache;->get(Landroid/content/Context;)Lnet/pubnative/api/core/request/model/PNAPIAdModel;

    move-result-object v0

    .line 103
    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter;->mLayout:Lnet/pubnative/api/layouts/PNAPILayout;

    invoke-virtual {v0, p2}, Lnet/pubnative/api/layouts/PNAPILayout;->setAdModel(Lnet/pubnative/api/core/request/model/PNAPIAdModel;)V

    .line 107
    :cond_0
    invoke-virtual {p0}, Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter;->fetch()V

    .line 108
    return-void
.end method

.method public onPubnativeLayoutViewClick(Lnet/pubnative/api/layouts/PNAPILayoutView;)V
    .locals 0

    .prologue
    .line 132
    invoke-virtual {p0}, Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter;->invokeClick()V

    .line 133
    return-void
.end method

.method public onPubnativeLayoutViewImpressionConfirmed(Lnet/pubnative/api/layouts/PNAPILayoutView;)V
    .locals 0

    .prologue
    .line 127
    invoke-virtual {p0}, Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter;->invokeImpression()V

    .line 128
    return-void
.end method

.method protected request(Landroid/content/Context;Ljava/util/Map;)V
    .locals 5
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

    .prologue
    const/4 v0, 0x0

    .line 31
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 32
    :cond_0
    sget-object v0, Lnet/pubnative/sdk/core/exceptions/PNException;->ADAPTER_ILLEGAL_ARGUMENTS:Lnet/pubnative/sdk/core/exceptions/PNException;

    invoke-virtual {p0, v0}, Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter;->invokeLoadFail(Ljava/lang/Exception;)V

    .line 54
    :goto_0
    return-void

    .line 35
    :cond_1
    iput-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter;->mCachedView:Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;

    .line 36
    iput-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter;->mLayoutView:Lnet/pubnative/api/layouts/PNAPILayoutView;

    .line 37
    new-instance v0, Lnet/pubnative/api/layouts/PNAPILayout;

    invoke-direct {v0}, Lnet/pubnative/api/layouts/PNAPILayout;-><init>()V

    iput-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter;->mLayout:Lnet/pubnative/api/layouts/PNAPILayout;

    .line 39
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 40
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 41
    iget-object v3, p0, Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter;->mLayout:Lnet/pubnative/api/layouts/PNAPILayout;

    invoke-virtual {v3, v0, v1}, Lnet/pubnative/api/layouts/PNAPILayout;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 43
    :cond_2
    sget-object v0, Lnet/pubnative/sdk/core/PNSettings;->targeting:Lnet/pubnative/sdk/core/request/PNAdTargetingModel;

    if-eqz v0, :cond_3

    .line 44
    sget-object v0, Lnet/pubnative/sdk/core/PNSettings;->targeting:Lnet/pubnative/sdk/core/request/PNAdTargetingModel;

    invoke-virtual {v0}, Lnet/pubnative/sdk/core/request/PNAdTargetingModel;->toDictionary()Ljava/util/Map;

    move-result-object v2

    .line 45
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 46
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 47
    iget-object v4, p0, Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter;->mLayout:Lnet/pubnative/api/layouts/PNAPILayout;

    invoke-virtual {v4, v0, v1}, Lnet/pubnative/api/layouts/PNAPILayout;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 50
    :cond_3
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter;->mLayout:Lnet/pubnative/api/layouts/PNAPILayout;

    sget-boolean v1, Lnet/pubnative/sdk/core/PNSettings;->isTestModeEnabled:Z

    invoke-virtual {v0, v1}, Lnet/pubnative/api/layouts/PNAPILayout;->setTestMode(Z)V

    .line 51
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter;->mLayout:Lnet/pubnative/api/layouts/PNAPILayout;

    sget-boolean v1, Lnet/pubnative/sdk/core/PNSettings;->isCoppaModeEnabled:Z

    invoke-virtual {v0, v1}, Lnet/pubnative/api/layouts/PNAPILayout;->setCoppaMode(Z)V

    .line 52
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter;->mLayout:Lnet/pubnative/api/layouts/PNAPILayout;

    sget-object v1, Lnet/pubnative/api/layouts/PNAPILayout$Size;->SMALL:Lnet/pubnative/api/layouts/PNAPILayout$Size;

    invoke-virtual {v0, p1, v1, p0}, Lnet/pubnative/api/layouts/PNAPILayout;->load(Landroid/content/Context;Lnet/pubnative/api/layouts/PNAPILayout$Size;Lnet/pubnative/api/layouts/PNAPILayout$LoadListener;)V

    goto :goto_0
.end method

.method public startTracking()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter;->mLayoutView:Lnet/pubnative/api/layouts/PNAPILayoutView;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter;->mLayoutView:Lnet/pubnative/api/layouts/PNAPILayoutView;

    invoke-virtual {v0, p0}, Lnet/pubnative/api/layouts/PNAPILayoutView;->setListener(Lnet/pubnative/api/layouts/PNAPILayoutView$Listener;)V

    .line 60
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter;->mLayoutView:Lnet/pubnative/api/layouts/PNAPILayoutView;

    invoke-virtual {v0}, Lnet/pubnative/api/layouts/PNAPILayoutView;->startTracking()V

    .line 62
    :cond_0
    return-void
.end method

.method public stopTracking()V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter;->mLayoutView:Lnet/pubnative/api/layouts/PNAPILayoutView;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter;->mLayoutView:Lnet/pubnative/api/layouts/PNAPILayoutView;

    invoke-virtual {v0}, Lnet/pubnative/api/layouts/PNAPILayoutView;->stopTracking()V

    .line 68
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/small/PubnativeLibraryNetworkAdapter;->mLayoutView:Lnet/pubnative/api/layouts/PNAPILayoutView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/pubnative/api/layouts/PNAPILayoutView;->setListener(Lnet/pubnative/api/layouts/PNAPILayoutView$Listener;)V

    .line 70
    :cond_0
    return-void
.end method
