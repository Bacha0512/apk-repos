.class public Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter;
.super Lnet/pubnative/sdk/layouts/adapter/PNLayoutFullscreenAdapter;
.source "SourceFile"

# interfaces
.implements Lnet/pubnative/api/layouts/PNAPILayout$LoadListener;
.implements Lnet/pubnative/api/layouts/PNAPILayoutView$Listener;
.implements Lnet/pubnative/sdk/core/request/PNAdModel$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;
    }
.end annotation


# instance fields
.field protected mCachedView:Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;

.field protected mFullScreenView:Landroid/widget/RelativeLayout;

.field protected mLayout:Lnet/pubnative/api/layouts/PNAPILayout;

.field protected mLayoutView:Lnet/pubnative/api/layouts/PNAPILayoutView;

.field protected mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lnet/pubnative/sdk/layouts/adapter/PNLayoutFullscreenAdapter;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter;)V
    .locals 0

    .prologue
    .line 48
    invoke-virtual {p0}, Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter;->invokeLoadSuccess()V

    return-void
.end method

.method static synthetic access$100(Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter;->invokeLoadFail(Ljava/lang/Exception;)V

    return-void
.end method


# virtual methods
.method protected fetch()V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter;->mLayout:Lnet/pubnative/api/layouts/PNAPILayout;

    new-instance v1, Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter$2;

    invoke-direct {v1, p0}, Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter$2;-><init>(Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter;)V

    invoke-virtual {v0, v1}, Lnet/pubnative/api/layouts/PNAPILayout;->fetch(Lnet/pubnative/api/layouts/PNAPILayout$FetchListener;)V

    .line 153
    return-void
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter;->mLayoutView:Lnet/pubnative/api/layouts/PNAPILayoutView;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter;->mLayoutView:Lnet/pubnative/api/layouts/PNAPILayoutView;

    invoke-virtual {v0}, Lnet/pubnative/api/layouts/PNAPILayoutView;->stopTracking()V

    .line 129
    :cond_0
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter;->mFullScreenView:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter;->mFullScreenView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 132
    :cond_1
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_2

    .line 133
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter;->mFullScreenView:Landroid/widget/RelativeLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter;->mWindowManager:Landroid/view/WindowManager;

    .line 136
    :cond_2
    invoke-virtual {p0}, Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter;->invokeHide()V

    .line 137
    return-void
.end method

.method public onPNAdClick(Lnet/pubnative/sdk/core/request/PNAdModel;)V
    .locals 0

    .prologue
    .line 200
    invoke-virtual {p0}, Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter;->invokeClick()V

    .line 201
    return-void
.end method

.method public onPNAdImpression(Lnet/pubnative/sdk/core/request/PNAdModel;)V
    .locals 0

    .prologue
    .line 195
    invoke-virtual {p0}, Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter;->invokeImpression()V

    .line 196
    return-void
.end method

.method public onPubnativeLayoutLoadFail(Lnet/pubnative/api/layouts/PNAPILayout;Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 170
    iget-boolean v0, p0, Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter;->mIsCPICacheEnabled:Z

    if-eqz v0, :cond_1

    .line 171
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryCPICache;->get(Landroid/content/Context;)Lnet/pubnative/api/core/request/model/PNAPIAdModel;

    move-result-object v0

    .line 172
    if-nez v0, :cond_0

    .line 173
    invoke-virtual {p0, p2}, Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter;->invokeLoadFail(Ljava/lang/Exception;)V

    .line 181
    :goto_0
    return-void

    .line 175
    :cond_0
    iget-object v1, p0, Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter;->mLayout:Lnet/pubnative/api/layouts/PNAPILayout;

    invoke-virtual {v1, v0}, Lnet/pubnative/api/layouts/PNAPILayout;->setAdModel(Lnet/pubnative/api/core/request/model/PNAPIAdModel;)V

    .line 176
    invoke-virtual {p0}, Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter;->fetch()V

    goto :goto_0

    .line 179
    :cond_1
    invoke-virtual {p0, p2}, Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter;->invokeLoadFail(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onPubnativeLayoutLoadFinish(Lnet/pubnative/api/layouts/PNAPILayout;Lnet/pubnative/api/core/request/model/PNAPIAdModel;)V
    .locals 1

    .prologue
    .line 158
    iget-boolean v0, p0, Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter;->mIsCPICacheEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->isRevenueModelCPA()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryCPICache;->get(Landroid/content/Context;)Lnet/pubnative/api/core/request/model/PNAPIAdModel;

    move-result-object v0

    .line 160
    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter;->mLayout:Lnet/pubnative/api/layouts/PNAPILayout;

    invoke-virtual {v0, p2}, Lnet/pubnative/api/layouts/PNAPILayout;->setAdModel(Lnet/pubnative/api/core/request/model/PNAPIAdModel;)V

    .line 164
    :cond_0
    invoke-virtual {p0}, Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter;->fetch()V

    .line 165
    return-void
.end method

.method public onPubnativeLayoutViewClick(Lnet/pubnative/api/layouts/PNAPILayoutView;)V
    .locals 0

    .prologue
    .line 190
    invoke-virtual {p0}, Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter;->invokeClick()V

    .line 191
    return-void
.end method

.method public onPubnativeLayoutViewImpressionConfirmed(Lnet/pubnative/api/layouts/PNAPILayoutView;)V
    .locals 0

    .prologue
    .line 185
    invoke-virtual {p0}, Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter;->invokeImpression()V

    .line 186
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

    .line 60
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 61
    :cond_0
    sget-object v0, Lnet/pubnative/sdk/core/exceptions/PNException;->ADAPTER_ILLEGAL_ARGUMENTS:Lnet/pubnative/sdk/core/exceptions/PNException;

    invoke-virtual {p0, v0}, Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter;->invokeLoadFail(Ljava/lang/Exception;)V

    .line 82
    :goto_0
    return-void

    .line 64
    :cond_1
    iput-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter;->mCachedView:Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;

    .line 65
    iput-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter;->mLayoutView:Lnet/pubnative/api/layouts/PNAPILayoutView;

    .line 66
    new-instance v0, Lnet/pubnative/api/layouts/PNAPILayout;

    invoke-direct {v0}, Lnet/pubnative/api/layouts/PNAPILayout;-><init>()V

    iput-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter;->mLayout:Lnet/pubnative/api/layouts/PNAPILayout;

    .line 67
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

    .line 68
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 69
    iget-object v3, p0, Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter;->mLayout:Lnet/pubnative/api/layouts/PNAPILayout;

    invoke-virtual {v3, v0, v1}, Lnet/pubnative/api/layouts/PNAPILayout;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 71
    :cond_2
    sget-object v0, Lnet/pubnative/sdk/core/PNSettings;->targeting:Lnet/pubnative/sdk/core/request/PNAdTargetingModel;

    if-eqz v0, :cond_3

    .line 72
    sget-object v0, Lnet/pubnative/sdk/core/PNSettings;->targeting:Lnet/pubnative/sdk/core/request/PNAdTargetingModel;

    invoke-virtual {v0}, Lnet/pubnative/sdk/core/request/PNAdTargetingModel;->toDictionary()Ljava/util/Map;

    move-result-object v2

    .line 73
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

    .line 74
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 75
    iget-object v4, p0, Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter;->mLayout:Lnet/pubnative/api/layouts/PNAPILayout;

    invoke-virtual {v4, v0, v1}, Lnet/pubnative/api/layouts/PNAPILayout;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 78
    :cond_3
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter;->mLayout:Lnet/pubnative/api/layouts/PNAPILayout;

    sget-boolean v1, Lnet/pubnative/sdk/core/PNSettings;->isTestModeEnabled:Z

    invoke-virtual {v0, v1}, Lnet/pubnative/api/layouts/PNAPILayout;->setTestMode(Z)V

    .line 79
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter;->mLayout:Lnet/pubnative/api/layouts/PNAPILayout;

    sget-boolean v1, Lnet/pubnative/sdk/core/PNSettings;->isCoppaModeEnabled:Z

    invoke-virtual {v0, v1}, Lnet/pubnative/api/layouts/PNAPILayout;->setCoppaMode(Z)V

    .line 80
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter;->mLayout:Lnet/pubnative/api/layouts/PNAPILayout;

    sget-object v1, Lnet/pubnative/api/layouts/PNAPILayout$Size;->LARGE:Lnet/pubnative/api/layouts/PNAPILayout$Size;

    invoke-virtual {v0, p1, v1, p0}, Lnet/pubnative/api/layouts/PNAPILayout;->load(Landroid/content/Context;Lnet/pubnative/api/layouts/PNAPILayout$Size;Lnet/pubnative/api/layouts/PNAPILayout$LoadListener;)V

    goto :goto_0
.end method

.method public show()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 87
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter;->mWindowManager:Landroid/view/WindowManager;

    .line 88
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 89
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 90
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 91
    const/16 v1, 0x400

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 93
    new-instance v1, Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter$1;

    iget-object v2, p0, Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter$1;-><init>(Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter;Landroid/content/Context;)V

    iput-object v1, p0, Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter;->mFullScreenView:Landroid/widget/RelativeLayout;

    .line 105
    iget-object v1, p0, Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter;->mLayoutView:Lnet/pubnative/api/layouts/PNAPILayoutView;

    if-eqz v1, :cond_0

    .line 106
    new-instance v1, Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;

    iget-object v2, p0, Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;-><init>(Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter;Landroid/content/Context;)V

    iput-object v1, p0, Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter;->mCachedView:Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;

    .line 107
    iget-object v1, p0, Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter;->mCachedView:Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;

    iget-object v2, p0, Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter;->mLayoutView:Lnet/pubnative/api/layouts/PNAPILayoutView;

    invoke-virtual {v1, v2}, Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;->loadWithView(Landroid/view/View;)V

    .line 110
    :cond_0
    iget-object v1, p0, Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter;->mCachedView:Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;

    if-eqz v1, :cond_1

    .line 111
    iget-object v1, p0, Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter;->mFullScreenView:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter;->mCachedView:Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter$PNLibraryAdapterView;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 114
    :cond_1
    iget-object v1, p0, Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter;->mFullScreenView:Landroid/widget/RelativeLayout;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter;->mLayoutView:Lnet/pubnative/api/layouts/PNAPILayoutView;

    if-eqz v0, :cond_2

    .line 116
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter;->mLayoutView:Lnet/pubnative/api/layouts/PNAPILayoutView;

    invoke-virtual {v0, p0}, Lnet/pubnative/api/layouts/PNAPILayoutView;->setListener(Lnet/pubnative/api/layouts/PNAPILayoutView$Listener;)V

    .line 117
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter;->mLayoutView:Lnet/pubnative/api/layouts/PNAPILayoutView;

    invoke-virtual {v0}, Lnet/pubnative/api/layouts/PNAPILayoutView;->startTracking()V

    .line 120
    :cond_2
    invoke-virtual {p0}, Lnet/pubnative/sdk/layouts/adapter/large/PubnativeLibraryNetworkAdapter;->invokeShow()V

    .line 122
    return-void
.end method
