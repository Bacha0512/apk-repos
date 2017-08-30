.class public abstract Lnet/pubnative/sdk/core/request/PNAdModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/pubnative/sdk/core/request/PNAdModel$FetchListener;,
        Lnet/pubnative/sdk/core/request/PNAdModel$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mBannerView:Landroid/view/ViewGroup;

.field protected mCachedAssets:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field protected mCallToActionView:Landroid/view/View;

.field protected mContentInfoView:Landroid/view/ViewGroup;

.field protected mContext:Landroid/content/Context;

.field protected mDescriptionView:Landroid/widget/TextView;

.field protected mFetchListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/pubnative/sdk/core/request/PNAdModel$FetchListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mIconView:Landroid/widget/ImageView;

.field protected mInsightModel:Lnet/pubnative/sdk/core/insights/model/PNInsightModel;

.field protected mListener:Lnet/pubnative/sdk/core/request/PNAdModel$Listener;

.field protected mRatingView:Landroid/widget/RatingBar;

.field protected mRemainingCacheableAssets:I

.field protected mTitleView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lnet/pubnative/sdk/core/request/PNAdModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/pubnative/sdk/core/request/PNAdModel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object v0, p0, Lnet/pubnative/sdk/core/request/PNAdModel;->mContext:Landroid/content/Context;

    .line 52
    iput-object v0, p0, Lnet/pubnative/sdk/core/request/PNAdModel;->mListener:Lnet/pubnative/sdk/core/request/PNAdModel$Listener;

    .line 53
    iput-object v0, p0, Lnet/pubnative/sdk/core/request/PNAdModel;->mFetchListeners:Ljava/util/List;

    .line 55
    iput-object v0, p0, Lnet/pubnative/sdk/core/request/PNAdModel;->mInsightModel:Lnet/pubnative/sdk/core/insights/model/PNInsightModel;

    .line 57
    iput-object v0, p0, Lnet/pubnative/sdk/core/request/PNAdModel;->mTitleView:Landroid/widget/TextView;

    .line 58
    iput-object v0, p0, Lnet/pubnative/sdk/core/request/PNAdModel;->mDescriptionView:Landroid/widget/TextView;

    .line 59
    iput-object v0, p0, Lnet/pubnative/sdk/core/request/PNAdModel;->mIconView:Landroid/widget/ImageView;

    .line 60
    iput-object v0, p0, Lnet/pubnative/sdk/core/request/PNAdModel;->mBannerView:Landroid/view/ViewGroup;

    .line 61
    iput-object v0, p0, Lnet/pubnative/sdk/core/request/PNAdModel;->mRatingView:Landroid/widget/RatingBar;

    .line 62
    iput-object v0, p0, Lnet/pubnative/sdk/core/request/PNAdModel;->mCallToActionView:Landroid/view/View;

    .line 63
    iput-object v0, p0, Lnet/pubnative/sdk/core/request/PNAdModel;->mContentInfoView:Landroid/view/ViewGroup;

    .line 65
    iput-object v0, p0, Lnet/pubnative/sdk/core/request/PNAdModel;->mCachedAssets:Landroid/util/LruCache;

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lnet/pubnative/sdk/core/request/PNAdModel;->mRemainingCacheableAssets:I

    .line 125
    iput-object p1, p0, Lnet/pubnative/sdk/core/request/PNAdModel;->mContext:Landroid/content/Context;

    .line 126
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lnet/pubnative/sdk/core/request/PNAdModel;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected cacheAsset(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 451
    iget-object v0, p0, Lnet/pubnative/sdk/core/request/PNAdModel;->mCachedAssets:Landroid/util/LruCache;

    if-nez v0, :cond_0

    .line 452
    new-instance v0, Landroid/util/LruCache;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lnet/pubnative/sdk/core/request/PNAdModel;->mCachedAssets:Landroid/util/LruCache;

    .line 455
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    .line 456
    iget-object v0, p0, Lnet/pubnative/sdk/core/request/PNAdModel;->mCachedAssets:Landroid/util/LruCache;

    invoke-virtual {v0, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    :cond_1
    return-void
.end method

.method protected checkFetchProgress()V
    .locals 1

    .prologue
    .line 461
    iget v0, p0, Lnet/pubnative/sdk/core/request/PNAdModel;->mRemainingCacheableAssets:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lnet/pubnative/sdk/core/request/PNAdModel;->mRemainingCacheableAssets:I

    .line 462
    iget v0, p0, Lnet/pubnative/sdk/core/request/PNAdModel;->mRemainingCacheableAssets:I

    if-nez v0, :cond_0

    .line 463
    invoke-virtual {p0}, Lnet/pubnative/sdk/core/request/PNAdModel;->invokeFetchFinish()V

    .line 465
    :cond_0
    return-void
.end method

.method protected fetchAsset(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 431
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 432
    invoke-virtual {p0}, Lnet/pubnative/sdk/core/request/PNAdModel;->checkFetchProgress()V

    .line 448
    :goto_0
    return-void

    .line 434
    :cond_0
    new-instance v0, Lnet/pubnative/api/core/utils/PNAPIImageDownloader;

    invoke-direct {v0}, Lnet/pubnative/api/core/utils/PNAPIImageDownloader;-><init>()V

    new-instance v1, Lnet/pubnative/sdk/core/request/PNAdModel$3;

    invoke-direct {v1, p0}, Lnet/pubnative/sdk/core/request/PNAdModel$3;-><init>(Lnet/pubnative/sdk/core/request/PNAdModel;)V

    invoke-virtual {v0, p1, v1}, Lnet/pubnative/api/core/utils/PNAPIImageDownloader;->load(Ljava/lang/String;Lnet/pubnative/api/core/utils/PNAPIImageDownloader$Listener;)V

    goto :goto_0
.end method

.method protected fetchAssets(Lnet/pubnative/sdk/core/request/PNAdModel$FetchListener;)V
    .locals 2

    .prologue
    .line 414
    iget-object v0, p0, Lnet/pubnative/sdk/core/request/PNAdModel;->mFetchListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 415
    const/4 v0, 0x2

    iput v0, p0, Lnet/pubnative/sdk/core/request/PNAdModel;->mRemainingCacheableAssets:I

    .line 416
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/pubnative/sdk/core/request/PNAdModel;->mFetchListeners:Ljava/util/List;

    .line 417
    iget-object v0, p0, Lnet/pubnative/sdk/core/request/PNAdModel;->mFetchListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 419
    invoke-virtual {p0}, Lnet/pubnative/sdk/core/request/PNAdModel;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/pubnative/sdk/core/request/PNAdModel;->fetchAsset(Ljava/lang/String;)V

    .line 420
    invoke-virtual {p0}, Lnet/pubnative/sdk/core/request/PNAdModel;->getBannerUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/pubnative/sdk/core/request/PNAdModel;->fetchAsset(Ljava/lang/String;)V

    .line 421
    sget-object v0, Lnet/pubnative/sdk/core/request/PNAdModel;->TAG:Ljava/lang/String;

    const-string v1, "LoadListener is not set"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    :goto_0
    return-void

    .line 423
    :cond_0
    iget-object v0, p0, Lnet/pubnative/sdk/core/request/PNAdModel;->mFetchListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected getAsset(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 468
    const/4 v0, 0x0

    .line 469
    iget-object v1, p0, Lnet/pubnative/sdk/core/request/PNAdModel;->mCachedAssets:Landroid/util/LruCache;

    if-eqz v1, :cond_0

    .line 470
    iget-object v0, p0, Lnet/pubnative/sdk/core/request/PNAdModel;->mCachedAssets:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 472
    :cond_0
    return-object v0
.end method

.method public getBanner()Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 155
    invoke-virtual {p0}, Lnet/pubnative/sdk/core/request/PNAdModel;->getBannerUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/pubnative/sdk/core/request/PNAdModel;->getAsset(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 157
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lnet/pubnative/sdk/core/request/PNAdModel;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 158
    iget-object v2, p0, Lnet/pubnative/sdk/core/request/PNAdModel;->mBannerView:Landroid/view/ViewGroup;

    if-nez v2, :cond_0

    .line 159
    new-instance v2, Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lnet/pubnative/sdk/core/request/PNAdModel;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lnet/pubnative/sdk/core/request/PNAdModel;->mBannerView:Landroid/view/ViewGroup;

    .line 160
    iget-object v2, p0, Lnet/pubnative/sdk/core/request/PNAdModel;->mBannerView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1, v4, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 163
    :cond_0
    if-nez v0, :cond_1

    .line 166
    new-instance v0, Lnet/pubnative/sdk/core/request/PNAdModel$1;

    invoke-direct {v0, p0, v1}, Lnet/pubnative/sdk/core/request/PNAdModel$1;-><init>(Lnet/pubnative/sdk/core/request/PNAdModel;Landroid/widget/ImageView;)V

    invoke-virtual {p0, v0}, Lnet/pubnative/sdk/core/request/PNAdModel;->fetchAssets(Lnet/pubnative/sdk/core/request/PNAdModel$FetchListener;)V

    .line 184
    :goto_0
    iget-object v0, p0, Lnet/pubnative/sdk/core/request/PNAdModel;->mBannerView:Landroid/view/ViewGroup;

    return-object v0

    .line 181
    :cond_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method protected getBannerUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 256
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getCallToAction()Ljava/lang/String;
.end method

.method protected getContentInfoClickUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 248
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getContentInfoImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 252
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getContentInfoView()Landroid/view/View;
.end method

.method public abstract getDescription()Ljava/lang/String;
.end method

.method public getIcon()Landroid/view/View;
    .locals 3

    .prologue
    .line 194
    invoke-virtual {p0}, Lnet/pubnative/sdk/core/request/PNAdModel;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/pubnative/sdk/core/request/PNAdModel;->getAsset(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 196
    iget-object v1, p0, Lnet/pubnative/sdk/core/request/PNAdModel;->mIconView:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    .line 197
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lnet/pubnative/sdk/core/request/PNAdModel;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lnet/pubnative/sdk/core/request/PNAdModel;->mIconView:Landroid/widget/ImageView;

    .line 200
    :cond_0
    if-nez v0, :cond_1

    .line 202
    new-instance v0, Lnet/pubnative/sdk/core/request/PNAdModel$2;

    invoke-direct {v0, p0}, Lnet/pubnative/sdk/core/request/PNAdModel$2;-><init>(Lnet/pubnative/sdk/core/request/PNAdModel;)V

    invoke-virtual {p0, v0}, Lnet/pubnative/sdk/core/request/PNAdModel;->fetchAssets(Lnet/pubnative/sdk/core/request/PNAdModel$FetchListener;)V

    .line 219
    :goto_0
    iget-object v0, p0, Lnet/pubnative/sdk/core/request/PNAdModel;->mIconView:Landroid/widget/ImageView;

    return-object v0

    .line 216
    :cond_1
    iget-object v1, p0, Lnet/pubnative/sdk/core/request/PNAdModel;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method protected getIconUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 260
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getStarRating()F
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method protected invokeClick()V
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lnet/pubnative/sdk/core/request/PNAdModel;->mInsightModel:Lnet/pubnative/sdk/core/insights/model/PNInsightModel;

    if-eqz v0, :cond_0

    .line 490
    iget-object v0, p0, Lnet/pubnative/sdk/core/request/PNAdModel;->mInsightModel:Lnet/pubnative/sdk/core/insights/model/PNInsightModel;

    invoke-virtual {v0}, Lnet/pubnative/sdk/core/insights/model/PNInsightModel;->sendClickInsight()V

    .line 492
    :cond_0
    iget-object v0, p0, Lnet/pubnative/sdk/core/request/PNAdModel;->mListener:Lnet/pubnative/sdk/core/request/PNAdModel$Listener;

    if-eqz v0, :cond_1

    .line 493
    iget-object v0, p0, Lnet/pubnative/sdk/core/request/PNAdModel;->mListener:Lnet/pubnative/sdk/core/request/PNAdModel$Listener;

    invoke-interface {v0, p0}, Lnet/pubnative/sdk/core/request/PNAdModel$Listener;->onPNAdClick(Lnet/pubnative/sdk/core/request/PNAdModel;)V

    .line 495
    :cond_1
    return-void
.end method

.method protected invokeFetchFail(Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 510
    iget-object v0, p0, Lnet/pubnative/sdk/core/request/PNAdModel;->mFetchListeners:Ljava/util/List;

    .line 511
    const/4 v1, 0x0

    iput-object v1, p0, Lnet/pubnative/sdk/core/request/PNAdModel;->mFetchListeners:Ljava/util/List;

    .line 512
    if-eqz v0, :cond_1

    .line 513
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/pubnative/sdk/core/request/PNAdModel$FetchListener;

    .line 514
    if-eqz v0, :cond_0

    .line 515
    invoke-interface {v0, p0, p1}, Lnet/pubnative/sdk/core/request/PNAdModel$FetchListener;->onFetchFail(Lnet/pubnative/sdk/core/request/PNAdModel;Ljava/lang/Exception;)V

    goto :goto_0

    .line 519
    :cond_1
    return-void
.end method

.method protected invokeFetchFinish()V
    .locals 2

    .prologue
    .line 498
    iget-object v0, p0, Lnet/pubnative/sdk/core/request/PNAdModel;->mFetchListeners:Ljava/util/List;

    .line 499
    const/4 v1, 0x0

    iput-object v1, p0, Lnet/pubnative/sdk/core/request/PNAdModel;->mFetchListeners:Ljava/util/List;

    .line 500
    if-eqz v0, :cond_1

    .line 501
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/pubnative/sdk/core/request/PNAdModel$FetchListener;

    .line 502
    if-eqz v0, :cond_0

    .line 503
    invoke-interface {v0, p0}, Lnet/pubnative/sdk/core/request/PNAdModel$FetchListener;->onFetchFinish(Lnet/pubnative/sdk/core/request/PNAdModel;)V

    goto :goto_0

    .line 507
    :cond_1
    return-void
.end method

.method protected invokeImpressionConfirmed()V
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Lnet/pubnative/sdk/core/request/PNAdModel;->mInsightModel:Lnet/pubnative/sdk/core/insights/model/PNInsightModel;

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lnet/pubnative/sdk/core/request/PNAdModel;->mInsightModel:Lnet/pubnative/sdk/core/insights/model/PNInsightModel;

    invoke-virtual {v0}, Lnet/pubnative/sdk/core/insights/model/PNInsightModel;->sendImpressionInsight()V

    .line 483
    :cond_0
    iget-object v0, p0, Lnet/pubnative/sdk/core/request/PNAdModel;->mListener:Lnet/pubnative/sdk/core/request/PNAdModel$Listener;

    if-eqz v0, :cond_1

    .line 484
    iget-object v0, p0, Lnet/pubnative/sdk/core/request/PNAdModel;->mListener:Lnet/pubnative/sdk/core/request/PNAdModel$Listener;

    invoke-interface {v0, p0}, Lnet/pubnative/sdk/core/request/PNAdModel$Listener;->onPNAdImpression(Lnet/pubnative/sdk/core/request/PNAdModel;)V

    .line 486
    :cond_1
    return-void
.end method

.method public setInsightModel(Lnet/pubnative/sdk/core/insights/model/PNInsightModel;)V
    .locals 3

    .prologue
    .line 397
    iput-object p1, p0, Lnet/pubnative/sdk/core/request/PNAdModel;->mInsightModel:Lnet/pubnative/sdk/core/insights/model/PNInsightModel;

    .line 399
    iget-object v0, p0, Lnet/pubnative/sdk/core/request/PNAdModel;->mInsightModel:Lnet/pubnative/sdk/core/insights/model/PNInsightModel;

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lnet/pubnative/sdk/core/request/PNAdModel;->mInsightModel:Lnet/pubnative/sdk/core/insights/model/PNInsightModel;

    invoke-virtual {v0}, Lnet/pubnative/sdk/core/insights/model/PNInsightModel;->getData()Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;

    move-result-object v0

    .line 401
    const-string v1, "icon"

    iget-object v2, v0, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;->ad_format_code:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 402
    invoke-virtual {p0}, Lnet/pubnative/sdk/core/request/PNAdModel;->getIconUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;->creative_url:Ljava/lang/String;

    .line 406
    :goto_0
    invoke-virtual {p1, v0}, Lnet/pubnative/sdk/core/insights/model/PNInsightModel;->setData(Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;)V

    .line 408
    :cond_0
    return-void

    .line 404
    :cond_1
    invoke-virtual {p0}, Lnet/pubnative/sdk/core/request/PNAdModel;->getBannerUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;->creative_url:Ljava/lang/String;

    goto :goto_0
.end method

.method public setListener(Lnet/pubnative/sdk/core/request/PNAdModel$Listener;)V
    .locals 2

    .prologue
    .line 120
    sget-object v0, Lnet/pubnative/sdk/core/request/PNAdModel;->TAG:Ljava/lang/String;

    const-string v1, "setLoadListener"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iput-object p1, p0, Lnet/pubnative/sdk/core/request/PNAdModel;->mListener:Lnet/pubnative/sdk/core/request/PNAdModel$Listener;

    .line 122
    return-void
.end method

.method public abstract startTracking(Landroid/view/ViewGroup;)V
.end method

.method public abstract stopTracking()V
.end method

.method public withBanner(Landroid/view/ViewGroup;)Lnet/pubnative/sdk/core/request/PNAdModel;
    .locals 1

    .prologue
    .line 316
    if-eqz p1, :cond_0

    .line 317
    invoke-virtual {p0}, Lnet/pubnative/sdk/core/request/PNAdModel;->getBanner()Landroid/view/View;

    move-result-object v0

    .line 318
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 319
    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 321
    :cond_0
    return-object p0
.end method

.method public withCallToAction(Landroid/widget/Button;)Lnet/pubnative/sdk/core/request/PNAdModel;
    .locals 2

    .prologue
    .line 345
    iput-object p1, p0, Lnet/pubnative/sdk/core/request/PNAdModel;->mCallToActionView:Landroid/view/View;

    .line 346
    iget-object v0, p0, Lnet/pubnative/sdk/core/request/PNAdModel;->mCallToActionView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lnet/pubnative/sdk/core/request/PNAdModel;->mCallToActionView:Landroid/view/View;

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {p0}, Lnet/pubnative/sdk/core/request/PNAdModel;->getCallToAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 349
    :cond_0
    return-object p0
.end method

.method public withCallToAction(Landroid/widget/TextView;)Lnet/pubnative/sdk/core/request/PNAdModel;
    .locals 2

    .prologue
    .line 359
    iput-object p1, p0, Lnet/pubnative/sdk/core/request/PNAdModel;->mCallToActionView:Landroid/view/View;

    .line 360
    iget-object v0, p0, Lnet/pubnative/sdk/core/request/PNAdModel;->mCallToActionView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lnet/pubnative/sdk/core/request/PNAdModel;->mCallToActionView:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lnet/pubnative/sdk/core/request/PNAdModel;->getCallToAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 363
    :cond_0
    return-object p0
.end method

.method public withContentInfoContainer(Landroid/view/ViewGroup;)Lnet/pubnative/sdk/core/request/PNAdModel;
    .locals 2

    .prologue
    .line 367
    iput-object p1, p0, Lnet/pubnative/sdk/core/request/PNAdModel;->mContentInfoView:Landroid/view/ViewGroup;

    .line 368
    invoke-virtual {p0}, Lnet/pubnative/sdk/core/request/PNAdModel;->getContentInfoView()Landroid/view/View;

    move-result-object v0

    .line 369
    iget-object v1, p0, Lnet/pubnative/sdk/core/request/PNAdModel;->mContentInfoView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 370
    iget-object v1, p0, Lnet/pubnative/sdk/core/request/PNAdModel;->mContentInfoView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 372
    :cond_0
    return-object p0
.end method

.method public withDescription(Landroid/widget/TextView;)Lnet/pubnative/sdk/core/request/PNAdModel;
    .locals 2

    .prologue
    .line 288
    iput-object p1, p0, Lnet/pubnative/sdk/core/request/PNAdModel;->mDescriptionView:Landroid/widget/TextView;

    .line 289
    iget-object v0, p0, Lnet/pubnative/sdk/core/request/PNAdModel;->mDescriptionView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lnet/pubnative/sdk/core/request/PNAdModel;->mDescriptionView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lnet/pubnative/sdk/core/request/PNAdModel;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    :cond_0
    return-object p0
.end method

.method public withIcon(Landroid/widget/ImageView;)Lnet/pubnative/sdk/core/request/PNAdModel;
    .locals 1

    .prologue
    .line 302
    iput-object p1, p0, Lnet/pubnative/sdk/core/request/PNAdModel;->mIconView:Landroid/widget/ImageView;

    .line 303
    iget-object v0, p0, Lnet/pubnative/sdk/core/request/PNAdModel;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 304
    invoke-virtual {p0}, Lnet/pubnative/sdk/core/request/PNAdModel;->getIcon()Landroid/view/View;

    .line 306
    :cond_0
    return-object p0
.end method

.method public withRating(Landroid/widget/RatingBar;)Lnet/pubnative/sdk/core/request/PNAdModel;
    .locals 2

    .prologue
    .line 331
    iput-object p1, p0, Lnet/pubnative/sdk/core/request/PNAdModel;->mRatingView:Landroid/widget/RatingBar;

    .line 332
    iget-object v0, p0, Lnet/pubnative/sdk/core/request/PNAdModel;->mRatingView:Landroid/widget/RatingBar;

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lnet/pubnative/sdk/core/request/PNAdModel;->mRatingView:Landroid/widget/RatingBar;

    invoke-virtual {p0}, Lnet/pubnative/sdk/core/request/PNAdModel;->getStarRating()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setRating(F)V

    .line 335
    :cond_0
    return-object p0
.end method

.method public withTitle(Landroid/widget/TextView;)Lnet/pubnative/sdk/core/request/PNAdModel;
    .locals 2

    .prologue
    .line 274
    iput-object p1, p0, Lnet/pubnative/sdk/core/request/PNAdModel;->mTitleView:Landroid/widget/TextView;

    .line 275
    iget-object v0, p0, Lnet/pubnative/sdk/core/request/PNAdModel;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lnet/pubnative/sdk/core/request/PNAdModel;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lnet/pubnative/sdk/core/request/PNAdModel;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    :cond_0
    return-object p0
.end method
