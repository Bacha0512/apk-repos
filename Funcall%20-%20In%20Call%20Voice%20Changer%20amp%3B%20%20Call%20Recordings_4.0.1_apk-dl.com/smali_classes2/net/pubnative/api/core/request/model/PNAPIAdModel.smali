.class public Lnet/pubnative/api/core/request/model/PNAPIAdModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Lnet/pubnative/URLDriller$Listener;
.implements Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/pubnative/api/core/request/model/PNAPIAdModel$Listener;
    }
.end annotation


# static fields
.field private static final DATA_CONTENTINFO_ICON_KEY:Ljava/lang/String; = "icon"

.field private static final DATA_CONTENTINFO_LINK_KEY:Ljava/lang/String; = "link"

.field private static final DATA_TRACKING_KEY:Ljava/lang/String; = "tracking"

.field private static TAG:Ljava/lang/String; = null

.field private static final URL_DRILLER_DEPTH:I = 0xf


# instance fields
.field private transient mAdView:Landroid/view/View;

.field protected mClickFinalURL:Ljava/lang/String;

.field private transient mClickableView:Landroid/view/View;

.field protected mData:Lnet/pubnative/api/core/request/model/api/PNAPIV3AdModel;

.field protected mIsClickCachingEnabled:Z

.field protected mIsClickInBackgroundEnabled:Z

.field protected mIsClickLoaderEnabled:Z

.field protected mIsClickPreparing:Z

.field private transient mIsImpressionConfirmed:Z

.field protected mIsWaitingForClickCache:Z

.field protected transient mListener:Lnet/pubnative/api/core/request/model/PNAPIAdModel$Listener;

.field private transient mLoadingView:Landroid/widget/RelativeLayout;

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

.field protected mUUID:Ljava/util/UUID;

.field protected mUsedAssets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const-class v0, Lnet/pubnative/api/core/request/model/PNAPIAdModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-boolean v0, p0, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->mIsWaitingForClickCache:Z

    .line 81
    iput-boolean v1, p0, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->mIsClickLoaderEnabled:Z

    .line 82
    iput-boolean v1, p0, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->mIsClickInBackgroundEnabled:Z

    .line 83
    iput-boolean v0, p0, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->mIsClickCachingEnabled:Z

    .line 84
    iput-boolean v0, p0, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->mIsClickPreparing:Z

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->mClickFinalURL:Ljava/lang/String;

    return-void
.end method

.method public static create(Lnet/pubnative/api/core/request/model/api/PNAPIV3AdModel;)Lnet/pubnative/api/core/request/model/PNAPIAdModel;
    .locals 1

    .prologue
    .line 121
    new-instance v0, Lnet/pubnative/api/core/request/model/PNAPIAdModel;

    invoke-direct {v0}, Lnet/pubnative/api/core/request/model/PNAPIAdModel;-><init>()V

    .line 122
    iput-object p0, v0, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->mData:Lnet/pubnative/api/core/request/model/api/PNAPIV3AdModel;

    .line 123
    return-object v0
.end method


# virtual methods
.method protected confirmBeacons(Ljava/lang/String;Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 638
    iget-object v0, p0, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->mData:Lnet/pubnative/api/core/request/model/api/PNAPIV3AdModel;

    if-nez v0, :cond_1

    .line 639
    sget-object v0, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->TAG:Ljava/lang/String;

    const-string v1, "confirmBeacons - Error: ad data not present"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    :cond_0
    return-void

    .line 643
    :cond_1
    iget-object v0, p0, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->mData:Lnet/pubnative/api/core/request/model/api/PNAPIV3AdModel;

    invoke-virtual {v0, p1}, Lnet/pubnative/api/core/request/model/api/PNAPIV3AdModel;->getBeacons(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 644
    if-eqz v0, :cond_0

    .line 648
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/pubnative/api/core/request/model/api/PNAPIV3DataModel;

    .line 649
    invoke-virtual {v0}, Lnet/pubnative/api/core/request/model/api/PNAPIV3DataModel;->getURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->injectExtras(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 650
    const-string v3, "js"

    invoke-virtual {v0, v3}, Lnet/pubnative/api/core/request/model/api/PNAPIV3DataModel;->getStringField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 651
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 653
    invoke-static {p2, v2}, Lnet/pubnative/api/core/tracking/PNAPITrackingManager;->track(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 654
    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 656
    :try_start_0
    new-instance v2, Lnet/pubnative/api/core/view/PNAPIWebView;

    invoke-direct {v2, p2}, Lnet/pubnative/api/core/view/PNAPIWebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Lnet/pubnative/api/core/view/PNAPIWebView;->loadBeacon(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 657
    :catch_0
    move-exception v0

    .line 658
    sget-object v2, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "confirmImpressionBeacons - JS Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected confirmClickBeacons(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 634
    const-string v0, "click"

    invoke-virtual {p0, v0, p1}, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->confirmBeacons(Ljava/lang/String;Landroid/content/Context;)V

    .line 635
    return-void
.end method

.method protected confirmImpressionBeacons(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 624
    iget-object v0, p0, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->mUsedAssets:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 625
    iget-object v0, p0, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->mUsedAssets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 626
    invoke-static {p1, v0}, Lnet/pubnative/api/core/tracking/PNAPITrackingManager;->track(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 630
    :cond_0
    const-string v0, "impression"

    invoke-virtual {p0, v0, p1}, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->confirmBeacons(Ljava/lang/String;Landroid/content/Context;)V

    .line 631
    return-void
.end method

.method public fetch()V
    .locals 0

    .prologue
    .line 419
    invoke-virtual {p0}, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->prepareClickURL()V

    .line 420
    return-void
.end method

.method public getAsset(Ljava/lang/String;)Lnet/pubnative/api/core/request/model/api/PNAPIV3DataModel;
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->getAsset(Ljava/lang/String;Z)Lnet/pubnative/api/core/request/model/api/PNAPIV3DataModel;

    move-result-object v0

    return-object v0
.end method

.method protected getAsset(Ljava/lang/String;Z)Lnet/pubnative/api/core/request/model/api/PNAPIV3DataModel;
    .locals 3

    .prologue
    .line 157
    const/4 v0, 0x0

    .line 158
    iget-object v1, p0, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->mData:Lnet/pubnative/api/core/request/model/api/PNAPIV3AdModel;

    if-nez v1, :cond_1

    .line 159
    sget-object v1, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->TAG:Ljava/lang/String;

    const-string v2, "getAsset - Error: ad data not present"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_0
    :goto_0
    return-object v0

    .line 161
    :cond_1
    iget-object v0, p0, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->mData:Lnet/pubnative/api/core/request/model/api/PNAPIV3AdModel;

    invoke-virtual {v0, p1}, Lnet/pubnative/api/core/request/model/api/PNAPIV3AdModel;->getAsset(Ljava/lang/String;)Lnet/pubnative/api/core/request/model/api/PNAPIV3DataModel;

    move-result-object v0

    .line 162
    if-eqz v0, :cond_0

    .line 163
    const-string v1, "tracking"

    invoke-virtual {v0, v1}, Lnet/pubnative/api/core/request/model/api/PNAPIV3DataModel;->getStringField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->recordAsset(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getAssetGroupId()I
    .locals 2

    .prologue
    .line 293
    const/4 v0, 0x0

    .line 294
    iget-object v1, p0, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->mData:Lnet/pubnative/api/core/request/model/api/PNAPIV3AdModel;

    if-eqz v1, :cond_0

    .line 295
    iget-object v0, p0, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->mData:Lnet/pubnative/api/core/request/model/api/PNAPIV3AdModel;

    iget v0, v0, Lnet/pubnative/api/core/request/model/api/PNAPIV3AdModel;->assetgroupid:I

    .line 297
    :cond_0
    return v0
.end method

.method public getAssetHtml(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 279
    const/4 v0, 0x0

    .line 280
    invoke-virtual {p0, p1}, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->getAsset(Ljava/lang/String;)Lnet/pubnative/api/core/request/model/api/PNAPIV3DataModel;

    move-result-object v1

    .line 281
    if-eqz v1, :cond_0

    .line 282
    invoke-virtual {v1}, Lnet/pubnative/api/core/request/model/api/PNAPIV3DataModel;->getHtml()Ljava/lang/String;

    move-result-object v0

    .line 284
    :cond_0
    return-object v0
.end method

.method public getAssetUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 270
    const/4 v0, 0x0

    .line 271
    invoke-virtual {p0, p1}, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->getAsset(Ljava/lang/String;)Lnet/pubnative/api/core/request/model/api/PNAPIV3DataModel;

    move-result-object v1

    .line 272
    if-eqz v1, :cond_0

    .line 273
    invoke-virtual {v1}, Lnet/pubnative/api/core/request/model/api/PNAPIV3DataModel;->getURL()Ljava/lang/String;

    move-result-object v0

    .line 275
    :cond_0
    return-object v0
.end method

.method public getBannerUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 255
    const/4 v0, 0x0

    .line 256
    const-string v1, "banner"

    invoke-virtual {p0, v1}, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->getAsset(Ljava/lang/String;)Lnet/pubnative/api/core/request/model/api/PNAPIV3DataModel;

    move-result-object v1

    .line 257
    if-eqz v1, :cond_0

    .line 258
    invoke-virtual {v1}, Lnet/pubnative/api/core/request/model/api/PNAPIV3DataModel;->getURL()Ljava/lang/String;

    move-result-object v0

    .line 260
    :cond_0
    return-object v0
.end method

.method public getClickUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 306
    const/4 v0, 0x0

    .line 307
    iget-object v1, p0, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->mData:Lnet/pubnative/api/core/request/model/api/PNAPIV3AdModel;

    if-eqz v1, :cond_0

    .line 308
    iget-object v0, p0, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->mData:Lnet/pubnative/api/core/request/model/api/PNAPIV3AdModel;

    iget-object v0, v0, Lnet/pubnative/api/core/request/model/api/PNAPIV3AdModel;->link:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->injectExtras(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 310
    :cond_0
    return-object v0
.end method

.method public getContentInfo(Landroid/content/Context;)Landroid/view/View;
    .locals 3

    .prologue
    .line 337
    const/4 v0, 0x0

    .line 338
    const-string v1, "contentinfo"

    invoke-virtual {p0, v1}, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->getMeta(Ljava/lang/String;)Lnet/pubnative/api/core/request/model/api/PNAPIV3DataModel;

    move-result-object v1

    .line 339
    if-nez p1, :cond_0

    .line 340
    sget-object v1, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->TAG:Ljava/lang/String;

    const-string v2, "getContentInfo - not a valid context"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :goto_0
    return-object v0

    .line 341
    :cond_0
    if-nez v1, :cond_1

    .line 342
    sget-object v1, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->TAG:Ljava/lang/String;

    const-string v2, "getContentInfo - contentInfo data not found"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 343
    :cond_1
    const-string v2, "icon"

    invoke-virtual {v1, v2}, Lnet/pubnative/api/core/request/model/api/PNAPIV3DataModel;->getStringField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 344
    sget-object v1, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->TAG:Ljava/lang/String;

    const-string v2, "getContentInfo - contentInfo icon not found"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 345
    :cond_2
    const-string v2, "link"

    invoke-virtual {v1, v2}, Lnet/pubnative/api/core/request/model/api/PNAPIV3DataModel;->getStringField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 346
    sget-object v1, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->TAG:Ljava/lang/String;

    const-string v2, "getContentInfo - contentInfo link not found"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 347
    :cond_3
    invoke-virtual {v1}, Lnet/pubnative/api/core/request/model/api/PNAPIV3DataModel;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 348
    sget-object v1, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->TAG:Ljava/lang/String;

    const-string v2, "getContentInfo - contentInfo text not found"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 350
    :cond_4
    new-instance v0, Lnet/pubnative/api/core/view/PNAPIContentInfoView;

    invoke-direct {v0, p1}, Lnet/pubnative/api/core/view/PNAPIContentInfoView;-><init>(Landroid/content/Context;)V

    .line 351
    const-string v2, "icon"

    invoke-virtual {v1, v2}, Lnet/pubnative/api/core/request/model/api/PNAPIV3DataModel;->getStringField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnet/pubnative/api/core/view/PNAPIContentInfoView;->setIconUrl(Ljava/lang/String;)V

    .line 352
    const-string v2, "link"

    invoke-virtual {v1, v2}, Lnet/pubnative/api/core/request/model/api/PNAPIV3DataModel;->getStringField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnet/pubnative/api/core/view/PNAPIContentInfoView;->setIconClickUrl(Ljava/lang/String;)V

    .line 353
    invoke-virtual {v1}, Lnet/pubnative/api/core/request/model/api/PNAPIV3DataModel;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/pubnative/api/core/view/PNAPIContentInfoView;->setContextText(Ljava/lang/String;)V

    .line 354
    new-instance v1, Lnet/pubnative/api/core/request/model/PNAPIAdModel$1;

    invoke-direct {v1, p0}, Lnet/pubnative/api/core/request/model/PNAPIAdModel$1;-><init>(Lnet/pubnative/api/core/request/model/PNAPIAdModel;)V

    invoke-virtual {v0, v1}, Lnet/pubnative/api/core/view/PNAPIContentInfoView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public getContentInfoClickUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 380
    const-string v0, "contentinfo"

    invoke-virtual {p0, v0}, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->getMeta(Ljava/lang/String;)Lnet/pubnative/api/core/request/model/api/PNAPIV3DataModel;

    move-result-object v0

    .line 381
    const-string v1, "link"

    invoke-virtual {v0, v1}, Lnet/pubnative/api/core/request/model/api/PNAPIV3DataModel;->getStringField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentInfoIconUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 370
    const-string v0, "contentinfo"

    invoke-virtual {p0, v0}, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->getMeta(Ljava/lang/String;)Lnet/pubnative/api/core/request/model/api/PNAPIV3DataModel;

    move-result-object v0

    .line 371
    const-string v1, "icon"

    invoke-virtual {v0, v1}, Lnet/pubnative/api/core/request/model/api/PNAPIV3DataModel;->getStringField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCtaText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 218
    const/4 v0, 0x0

    .line 219
    const-string v1, "cta"

    invoke-virtual {p0, v1}, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->getAsset(Ljava/lang/String;)Lnet/pubnative/api/core/request/model/api/PNAPIV3DataModel;

    move-result-object v1

    .line 220
    if-eqz v1, :cond_0

    .line 221
    invoke-virtual {v1}, Lnet/pubnative/api/core/request/model/api/PNAPIV3DataModel;->getText()Ljava/lang/String;

    move-result-object v0

    .line 223
    :cond_0
    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 2

    .prologue
    .line 204
    const/4 v0, 0x0

    .line 205
    const-string v1, "description"

    invoke-virtual {p0, v1}, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->getAsset(Ljava/lang/String;)Lnet/pubnative/api/core/request/model/api/PNAPIV3DataModel;

    move-result-object v1

    .line 206
    if-eqz v1, :cond_0

    .line 207
    invoke-virtual {v1}, Lnet/pubnative/api/core/request/model/api/PNAPIV3DataModel;->getText()Ljava/lang/String;

    move-result-object v0

    .line 209
    :cond_0
    return-object v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 232
    const/4 v0, 0x0

    .line 233
    const-string v1, "icon"

    invoke-virtual {p0, v1}, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->getAsset(Ljava/lang/String;)Lnet/pubnative/api/core/request/model/api/PNAPIV3DataModel;

    move-result-object v1

    .line 234
    if-eqz v1, :cond_0

    .line 235
    invoke-virtual {v1}, Lnet/pubnative/api/core/request/model/api/PNAPIV3DataModel;->getURL()Ljava/lang/String;

    move-result-object v0

    .line 237
    :cond_0
    return-object v0
.end method

.method protected getLoadingView()Landroid/widget/RelativeLayout;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 701
    iget-object v0, p0, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->mLoadingView:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    .line 702
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->mAdView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->mLoadingView:Landroid/widget/RelativeLayout;

    .line 703
    iget-object v0, p0, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->mLoadingView:Landroid/widget/RelativeLayout;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 704
    iget-object v0, p0, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->mLoadingView:Landroid/widget/RelativeLayout;

    const/16 v1, 0x4d

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 705
    iget-object v0, p0, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->mLoadingView:Landroid/widget/RelativeLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 706
    iget-object v0, p0, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->mLoadingView:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/ProgressBar;

    iget-object v2, p0, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->mAdView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 708
    :cond_0
    iget-object v0, p0, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->mLoadingView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getMeta(Ljava/lang/String;)Lnet/pubnative/api/core/request/model/api/PNAPIV3DataModel;
    .locals 3

    .prologue
    .line 137
    const/4 v0, 0x0

    .line 138
    iget-object v1, p0, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->mData:Lnet/pubnative/api/core/request/model/api/PNAPIV3AdModel;

    if-nez v1, :cond_0

    .line 139
    sget-object v1, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->TAG:Ljava/lang/String;

    const-string v2, "getMeta - Error: ad data not present"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :goto_0
    return-object v0

    .line 141
    :cond_0
    iget-object v0, p0, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->mData:Lnet/pubnative/api/core/request/model/api/PNAPIV3AdModel;

    invoke-virtual {v0, p1}, Lnet/pubnative/api/core/request/model/api/PNAPIV3AdModel;->getMeta(Ljava/lang/String;)Lnet/pubnative/api/core/request/model/api/PNAPIV3DataModel;

    move-result-object v0

    goto :goto_0
.end method

.method public getRating()I
    .locals 2

    .prologue
    .line 319
    const/4 v0, 0x0

    .line 320
    const-string v1, "rating"

    invoke-virtual {p0, v1}, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->getAsset(Ljava/lang/String;)Lnet/pubnative/api/core/request/model/api/PNAPIV3DataModel;

    move-result-object v1

    .line 321
    if-eqz v1, :cond_0

    .line 322
    invoke-virtual {v1}, Lnet/pubnative/api/core/request/model/api/PNAPIV3DataModel;->getNumber()Ljava/lang/Double;

    move-result-object v1

    .line 323
    if-eqz v1, :cond_0

    .line 324
    invoke-virtual {v1}, Ljava/lang/Double;->intValue()I

    move-result v0

    .line 327
    :cond_0
    return v0
.end method

.method protected getRootView()Landroid/view/ViewGroup;
    .locals 3

    .prologue
    .line 691
    const/4 v0, 0x0

    .line 692
    iget-object v1, p0, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->mAdView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 693
    sget-object v1, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->TAG:Ljava/lang/String;

    const-string v2, "getRootView - Error: not assigned ad view, cannot retrieve root view"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    :goto_0
    return-object v0

    .line 695
    :cond_0
    iget-object v0, p0, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->mAdView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 190
    const/4 v0, 0x0

    .line 191
    const-string v1, "title"

    invoke-virtual {p0, v1}, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->getAsset(Ljava/lang/String;)Lnet/pubnative/api/core/request/model/api/PNAPIV3DataModel;

    move-result-object v1

    .line 192
    if-eqz v1, :cond_0

    .line 193
    invoke-virtual {v1}, Lnet/pubnative/api/core/request/model/api/PNAPIV3DataModel;->getText()Ljava/lang/String;

    move-result-object v0

    .line 195
    :cond_0
    return-object v0
.end method

.method public getVast()Ljava/lang/String;
    .locals 2

    .prologue
    .line 241
    const/4 v0, 0x0

    .line 242
    const-string v1, "vast2"

    invoke-virtual {p0, v1}, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->getAsset(Ljava/lang/String;)Lnet/pubnative/api/core/request/model/api/PNAPIV3DataModel;

    move-result-object v1

    .line 243
    if-eqz v1, :cond_0

    .line 244
    const-string v0, "vast2"

    invoke-virtual {v1, v0}, Lnet/pubnative/api/core/request/model/api/PNAPIV3DataModel;->getStringField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 246
    :cond_0
    return-object v0
.end method

.method protected hideLoadingView()V
    .locals 2

    .prologue
    .line 681
    invoke-virtual {p0}, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->getLoadingView()Landroid/widget/RelativeLayout;

    move-result-object v0

    if-nez v0, :cond_0

    .line 682
    sget-object v0, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->TAG:Ljava/lang/String;

    const-string v1, "loading view is still not loaded, thus you cannot hide it"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    :goto_0
    return-void

    .line 683
    :cond_0
    iget-object v0, p0, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->mLoadingView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 684
    sget-object v0, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->TAG:Ljava/lang/String;

    const-string v1, "loading view is still not attached to any view"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 686
    :cond_1
    iget-object v0, p0, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->mLoadingView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->mLoadingView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected injectExtras(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 482
    .line 483
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->mTrackingExtras:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->mTrackingExtras:Ljava/util/Map;

    .line 485
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 486
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    .line 487
    iget-object v0, p0, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->mTrackingExtras:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 488
    iget-object v1, p0, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->mTrackingExtras:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 489
    invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 491
    :cond_0
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    .line 493
    :cond_1
    return-object p1
.end method

.method protected invokeOnClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 723
    iget-object v0, p0, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->mListener:Lnet/pubnative/api/core/request/model/PNAPIAdModel$Listener;

    if-eqz v0, :cond_0

    .line 724
    iget-object v0, p0, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->mListener:Lnet/pubnative/api/core/request/model/PNAPIAdModel$Listener;

    invoke-interface {v0, p0, p1}, Lnet/pubnative/api/core/request/model/PNAPIAdModel$Listener;->onPNAPIAdModelClick(Lnet/pubnative/api/core/request/model/PNAPIAdModel;Landroid/view/View;)V

    .line 726
    :cond_0
    return-void
.end method

.method protected invokeOnImpression(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 716
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->mIsImpressionConfirmed:Z

    .line 717
    iget-object v0, p0, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->mListener:Lnet/pubnative/api/core/request/model/PNAPIAdModel$Listener;

    if-eqz v0, :cond_0

    .line 718
    iget-object v0, p0, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->mListener:Lnet/pubnative/api/core/request/model/PNAPIAdModel$Listener;

    invoke-interface {v0, p0, p1}, Lnet/pubnative/api/core/request/model/PNAPIAdModel$Listener;->onPNAPIAdModelImpression(Lnet/pubnative/api/core/request/model/PNAPIAdModel;Landroid/view/View;)V

    .line 720
    :cond_0
    return-void
.end method

.method protected invokeOnOpenOffer()V
    .locals 1

    .prologue
    .line 729
    iget-object v0, p0, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->mListener:Lnet/pubnative/api/core/request/model/PNAPIAdModel$Listener;

    if-eqz v0, :cond_0

    .line 730
    iget-object v0, p0, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->mListener:Lnet/pubnative/api/core/request/model/PNAPIAdModel$Listener;

    invoke-interface {v0, p0}, Lnet/pubnative/api/core/request/model/PNAPIAdModel$Listener;->onPNAPIAdModelOpenOffer(Lnet/pubnative/api/core/request/model/PNAPIAdModel;)V

    .line 732
    :cond_0
    return-void
.end method

.method public isRevenueModelCPA()Z
    .locals 2

    .prologue
    .line 385
    const-string v0, "revenuemodel"

    invoke-virtual {p0, v0}, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->getMeta(Ljava/lang/String;)Lnet/pubnative/api/core/request/model/api/PNAPIV3DataModel;

    move-result-object v0

    .line 386
    if-eqz v0, :cond_0

    .line 387
    invoke-virtual {v0}, Lnet/pubnative/api/core/request/model/api/PNAPIV3DataModel;->getText()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cpa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 389
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onImpression(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 742
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->confirmImpressionBeacons(Landroid/content/Context;)V

    .line 743
    invoke-virtual {p0, p1}, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->invokeOnImpression(Landroid/view/View;)V

    .line 744
    return-void
.end method

.method protected onPrepareClickURLFinish(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 456
    iput-object p1, p0, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->mClickFinalURL:Ljava/lang/String;

    .line 457
    iput-boolean v1, p0, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->mIsClickPreparing:Z

    .line 458
    iget-boolean v0, p0, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->mIsWaitingForClickCache:Z

    if-eqz v0, :cond_0

    .line 460
    iput-boolean v1, p0, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->mIsWaitingForClickCache:Z

    .line 461
    invoke-virtual {p0}, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->openCachedClick()V

    .line 462
    invoke-virtual {p0}, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->hideLoadingView()V

    .line 464
    :cond_0
    return-void
.end method

.method public onURLDrillerFail(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 768
    iget-object v0, p0, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->mClickFinalURL:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 769
    invoke-virtual {p0, p1}, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->openURL(Ljava/lang/String;)V

    .line 771
    :cond_0
    invoke-virtual {p0}, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->hideLoadingView()V

    .line 772
    return-void
.end method

.method public onURLDrillerFinish(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 760
    iget-object v0, p0, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->mClickFinalURL:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 761
    invoke-virtual {p0, p1}, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->openURL(Ljava/lang/String;)V

    .line 763
    :cond_0
    invoke-virtual {p0}, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->hideLoadingView()V

    .line 764
    return-void
.end method

.method public onURLDrillerRedirect(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 756
    return-void
.end method

.method public onURLDrillerStart(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 752
    return-void
.end method

.method protected openCachedClick()V
    .locals 3

    .prologue
    .line 468
    new-instance v0, Lnet/pubnative/URLDriller;

    invoke-direct {v0}, Lnet/pubnative/URLDriller;-><init>()V

    .line 469
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lnet/pubnative/URLDriller;->setDrillSize(I)V

    .line 470
    invoke-static {}, Lnet/pubnative/api/core/utils/PNAPISystemUtils;->getWebViewUserAgent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/pubnative/URLDriller;->setUserAgent(Ljava/lang/String;)V

    .line 471
    invoke-virtual {v0, p0}, Lnet/pubnative/URLDriller;->setListener(Lnet/pubnative/URLDriller$Listener;)V

    .line 472
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->getClickUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&cached=true&uuid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->mUUID:Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/pubnative/URLDriller;->drill(Ljava/lang/String;)V

    .line 473
    iget-object v0, p0, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->mClickFinalURL:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->openURL(Ljava/lang/String;)V

    .line 474
    return-void
.end method

.method protected openURL(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 605
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 606
    sget-object v0, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: ending URL cannot be opened - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    :goto_0
    return-void

    .line 607
    :cond_0
    iget-object v0, p0, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->mClickableView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 608
    sget-object v0, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->TAG:Ljava/lang/String;

    const-string v1, "Error: clickable view not set"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 611
    :cond_1
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 612
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 613
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 614
    iget-object v0, p0, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->mClickableView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 615
    invoke-virtual {p0}, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->invokeOnOpenOffer()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 616
    :catch_0
    move-exception v0

    .line 617
    sget-object v1, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openURL: Error - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected prepareClickURL()V
    .locals 3

    .prologue
    .line 424
    invoke-virtual {p0}, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->isRevenueModelCPA()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->mIsClickCachingEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->mClickFinalURL:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->mIsClickPreparing:Z

    if-nez v0, :cond_0

    .line 425
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->mIsClickPreparing:Z

    .line 426
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->mUUID:Ljava/util/UUID;

    .line 427
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->getClickUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&uxc=true&uuid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->mUUID:Ljava/util/UUID;

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 428
    new-instance v1, Lnet/pubnative/URLDriller;

    invoke-direct {v1}, Lnet/pubnative/URLDriller;-><init>()V

    .line 429
    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Lnet/pubnative/URLDriller;->setDrillSize(I)V

    .line 430
    new-instance v2, Lnet/pubnative/api/core/request/model/PNAPIAdModel$2;

    invoke-direct {v2, p0}, Lnet/pubnative/api/core/request/model/PNAPIAdModel$2;-><init>(Lnet/pubnative/api/core/request/model/PNAPIAdModel;)V

    invoke-virtual {v1, v2}, Lnet/pubnative/URLDriller;->setListener(Lnet/pubnative/URLDriller$Listener;)V

    .line 450
    invoke-virtual {v1, v0}, Lnet/pubnative/URLDriller;->drill(Ljava/lang/String;)V

    .line 453
    :cond_0
    return-void
.end method

.method protected recordAsset(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 170
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 171
    iget-object v0, p0, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->mUsedAssets:Ljava/util/List;

    if-nez v0, :cond_0

    .line 172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->mUsedAssets:Ljava/util/List;

    .line 174
    :cond_0
    iget-object v0, p0, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->mUsedAssets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 175
    iget-object v0, p0, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->mUsedAssets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    :cond_1
    return-void
.end method

.method public setUseClickCaching(Z)V
    .locals 0

    .prologue
    .line 411
    iput-boolean p1, p0, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->mIsClickCachingEnabled:Z

    .line 412
    return-void
.end method

.method public setUseClickInBackground(Z)V
    .locals 0

    .prologue
    .line 407
    iput-boolean p1, p0, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->mIsClickInBackgroundEnabled:Z

    .line 408
    return-void
.end method

.method public setUseClickLoader(Z)V
    .locals 0

    .prologue
    .line 403
    iput-boolean p1, p0, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->mIsClickLoaderEnabled:Z

    .line 404
    return-void
.end method

.method protected showLoadingView()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 670
    invoke-virtual {p0}, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->getRootView()Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_0

    .line 671
    sget-object v0, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->TAG:Ljava/lang/String;

    const-string v1, "showLoadingView - Error: impossible to retrieve root view"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    :goto_0
    return-void

    .line 673
    :cond_0
    invoke-virtual {p0}, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->hideLoadingView()V

    .line 674
    invoke-virtual {p0}, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->getRootView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {p0}, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->getLoadingView()Landroid/widget/RelativeLayout;

    move-result-object v1

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public startTracking(Landroid/view/View;Landroid/view/View;Ljava/util/Map;Lnet/pubnative/api/core/request/model/PNAPIAdModel$Listener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lnet/pubnative/api/core/request/model/PNAPIAdModel$Listener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 519
    if-nez p4, :cond_0

    .line 520
    sget-object v0, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->TAG:Ljava/lang/String;

    const-string v1, "startTracking - listener is null, start tracking without callbacks"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    :cond_0
    iput-object p4, p0, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->mListener:Lnet/pubnative/api/core/request/model/PNAPIAdModel$Listener;

    .line 524
    iput-object p3, p0, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->mTrackingExtras:Ljava/util/Map;

    .line 526
    invoke-virtual {p0}, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->stopTracking()V

    .line 528
    invoke-virtual {p0, p1}, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->startTrackingImpression(Landroid/view/View;)V

    .line 529
    invoke-virtual {p0, p2}, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->startTrackingClicks(Landroid/view/View;)V

    .line 530
    return-void
.end method

.method public startTracking(Landroid/view/View;Landroid/view/View;Lnet/pubnative/api/core/request/model/PNAPIAdModel$Listener;)V
    .locals 1

    .prologue
    .line 507
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->startTracking(Landroid/view/View;Landroid/view/View;Ljava/util/Map;Lnet/pubnative/api/core/request/model/PNAPIAdModel$Listener;)V

    .line 508
    return-void
.end method

.method public startTracking(Landroid/view/View;Lnet/pubnative/api/core/request/model/PNAPIAdModel$Listener;)V
    .locals 0

    .prologue
    .line 503
    invoke-virtual {p0, p1, p1, p2}, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->startTracking(Landroid/view/View;Landroid/view/View;Lnet/pubnative/api/core/request/model/PNAPIAdModel$Listener;)V

    .line 504
    return-void
.end method

.method protected startTrackingClicks(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 544
    invoke-virtual {p0}, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->getClickUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 545
    sget-object v0, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->TAG:Ljava/lang/String;

    const-string v1, "click url is empty, clicks won\'t be tracked"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    :goto_0
    return-void

    .line 546
    :cond_0
    if-nez p1, :cond_1

    .line 547
    sget-object v0, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->TAG:Ljava/lang/String;

    const-string v1, "click view is null, clicks won\'t be tracked"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 549
    :cond_1
    invoke-virtual {p0}, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->prepareClickURL()V

    .line 550
    iput-object p1, p0, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->mClickableView:Landroid/view/View;

    .line 551
    iget-object v0, p0, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->mClickableView:Landroid/view/View;

    new-instance v1, Lnet/pubnative/api/core/request/model/PNAPIAdModel$3;

    invoke-direct {v1, p0}, Lnet/pubnative/api/core/request/model/PNAPIAdModel$3;-><init>(Lnet/pubnative/api/core/request/model/PNAPIAdModel;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method protected startTrackingImpression(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 533
    if-nez p1, :cond_0

    .line 534
    sget-object v0, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->TAG:Ljava/lang/String;

    const-string v1, "ad view is null, cannot start tracking"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    :goto_0
    return-void

    .line 535
    :cond_0
    iget-boolean v0, p0, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->mIsImpressionConfirmed:Z

    if-eqz v0, :cond_1

    .line 536
    sget-object v0, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->TAG:Ljava/lang/String;

    const-string v1, "impression is already confirmed, dropping impression tracking"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 538
    :cond_1
    iput-object p1, p0, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->mAdView:Landroid/view/View;

    .line 539
    invoke-static {p1, p0}, Lnet/pubnative/api/core/tracking/PNAPIImpressionManager;->startTrackingView(Landroid/view/View;Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker$Listener;)V

    goto :goto_0
.end method

.method public stopTracking()V
    .locals 0

    .prologue
    .line 590
    invoke-virtual {p0}, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->stopTrackingImpression()V

    .line 591
    invoke-virtual {p0}, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->stopTrackingClicks()V

    .line 592
    return-void
.end method

.method protected stopTrackingClicks()V
    .locals 2

    .prologue
    .line 599
    iget-object v0, p0, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->mClickableView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 600
    iget-object v0, p0, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->mClickableView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 602
    :cond_0
    return-void
.end method

.method protected stopTrackingImpression()V
    .locals 0

    .prologue
    .line 595
    invoke-static {p0}, Lnet/pubnative/api/core/tracking/PNAPIImpressionManager;->stopTrackingAll(Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker$Listener;)V

    .line 596
    return-void
.end method
