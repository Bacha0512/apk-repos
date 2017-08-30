.class public Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryAdModel;
.super Lnet/pubnative/sdk/core/request/PNAdModel;
.source "SourceFile"

# interfaces
.implements Lnet/pubnative/api/core/request/model/PNAPIAdModel$Listener;


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field protected mAdModel:Lnet/pubnative/api/core/request/model/PNAPIAdModel;

.field protected mTrackingExtras:Ljava/util/Map;
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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryAdModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryAdModel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lnet/pubnative/api/core/request/model/PNAPIAdModel;)V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryAdModel;-><init>(Landroid/content/Context;Lnet/pubnative/api/core/request/model/PNAPIAdModel;Ljava/util/Map;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lnet/pubnative/api/core/request/model/PNAPIAdModel;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lnet/pubnative/api/core/request/model/PNAPIAdModel;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lnet/pubnative/sdk/core/request/PNAdModel;-><init>(Landroid/content/Context;)V

    .line 48
    iput-object p2, p0, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryAdModel;->mAdModel:Lnet/pubnative/api/core/request/model/PNAPIAdModel;

    .line 49
    iput-object p3, p0, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryAdModel;->mTrackingExtras:Ljava/util/Map;

    .line 50
    return-void
.end method


# virtual methods
.method public getBannerUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 87
    const/4 v0, 0x0

    .line 88
    iget-object v1, p0, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryAdModel;->mAdModel:Lnet/pubnative/api/core/request/model/PNAPIAdModel;

    if-eqz v1, :cond_0

    .line 89
    iget-object v0, p0, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryAdModel;->mAdModel:Lnet/pubnative/api/core/request/model/PNAPIAdModel;

    invoke-virtual {v0}, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->getBannerUrl()Ljava/lang/String;

    move-result-object v0

    .line 91
    :cond_0
    return-object v0
.end method

.method public getCallToAction()Ljava/lang/String;
    .locals 2

    .prologue
    .line 96
    const/4 v0, 0x0

    .line 97
    iget-object v1, p0, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryAdModel;->mAdModel:Lnet/pubnative/api/core/request/model/PNAPIAdModel;

    if-eqz v1, :cond_0

    .line 98
    iget-object v0, p0, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryAdModel;->mAdModel:Lnet/pubnative/api/core/request/model/PNAPIAdModel;

    invoke-virtual {v0}, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->getCtaText()Ljava/lang/String;

    move-result-object v0

    .line 100
    :cond_0
    return-object v0
.end method

.method protected getContentInfoClickUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryAdModel;->mAdModel:Lnet/pubnative/api/core/request/model/PNAPIAdModel;

    invoke-virtual {v0}, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->getContentInfoClickUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getContentInfoImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryAdModel;->mAdModel:Lnet/pubnative/api/core/request/model/PNAPIAdModel;

    invoke-virtual {v0}, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->getContentInfoIconUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentInfoView()Landroid/view/View;
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryAdModel;->mAdModel:Lnet/pubnative/api/core/request/model/PNAPIAdModel;

    iget-object v1, p0, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryAdModel;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->getContentInfo(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 2

    .prologue
    .line 69
    const/4 v0, 0x0

    .line 70
    iget-object v1, p0, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryAdModel;->mAdModel:Lnet/pubnative/api/core/request/model/PNAPIAdModel;

    if-eqz v1, :cond_0

    .line 71
    iget-object v0, p0, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryAdModel;->mAdModel:Lnet/pubnative/api/core/request/model/PNAPIAdModel;

    invoke-virtual {v0}, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->getDescription()Ljava/lang/String;

    move-result-object v0

    .line 73
    :cond_0
    return-object v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 78
    const/4 v0, 0x0

    .line 79
    iget-object v1, p0, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryAdModel;->mAdModel:Lnet/pubnative/api/core/request/model/PNAPIAdModel;

    if-eqz v1, :cond_0

    .line 80
    iget-object v0, p0, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryAdModel;->mAdModel:Lnet/pubnative/api/core/request/model/PNAPIAdModel;

    invoke-virtual {v0}, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    .line 82
    :cond_0
    return-object v0
.end method

.method public getStarRating()F
    .locals 2

    .prologue
    .line 105
    const/4 v0, 0x0

    .line 106
    iget-object v1, p0, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryAdModel;->mAdModel:Lnet/pubnative/api/core/request/model/PNAPIAdModel;

    if-eqz v1, :cond_0

    .line 107
    iget-object v0, p0, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryAdModel;->mAdModel:Lnet/pubnative/api/core/request/model/PNAPIAdModel;

    invoke-virtual {v0}, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->getRating()I

    move-result v0

    int-to-float v0, v0

    .line 109
    :cond_0
    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 60
    const/4 v0, 0x0

    .line 61
    iget-object v1, p0, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryAdModel;->mAdModel:Lnet/pubnative/api/core/request/model/PNAPIAdModel;

    if-eqz v1, :cond_0

    .line 62
    iget-object v0, p0, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryAdModel;->mAdModel:Lnet/pubnative/api/core/request/model/PNAPIAdModel;

    invoke-virtual {v0}, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 64
    :cond_0
    return-object v0
.end method

.method public onPNAPIAdModelClick(Lnet/pubnative/api/core/request/model/PNAPIAdModel;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 157
    invoke-virtual {p0}, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryAdModel;->invokeClick()V

    .line 158
    return-void
.end method

.method public onPNAPIAdModelImpression(Lnet/pubnative/api/core/request/model/PNAPIAdModel;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 152
    invoke-virtual {p0}, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryAdModel;->invokeImpressionConfirmed()V

    .line 153
    return-void
.end method

.method public onPNAPIAdModelOpenOffer(Lnet/pubnative/api/core/request/model/PNAPIAdModel;)V
    .locals 0

    .prologue
    .line 162
    return-void
.end method

.method public startTracking(Landroid/view/ViewGroup;)V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryAdModel;->mAdModel:Lnet/pubnative/api/core/request/model/PNAPIAdModel;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 135
    iget-object v0, p0, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryAdModel;->mAdModel:Lnet/pubnative/api/core/request/model/PNAPIAdModel;

    iget-object v1, p0, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryAdModel;->mTrackingExtras:Ljava/util/Map;

    invoke-virtual {v0, p1, p1, v1, p0}, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->startTracking(Landroid/view/View;Landroid/view/View;Ljava/util/Map;Lnet/pubnative/api/core/request/model/PNAPIAdModel$Listener;)V

    .line 137
    :cond_0
    return-void
.end method

.method public stopTracking()V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryAdModel;->mAdModel:Lnet/pubnative/api/core/request/model/PNAPIAdModel;

    invoke-virtual {v0}, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->stopTracking()V

    .line 142
    return-void
.end method
