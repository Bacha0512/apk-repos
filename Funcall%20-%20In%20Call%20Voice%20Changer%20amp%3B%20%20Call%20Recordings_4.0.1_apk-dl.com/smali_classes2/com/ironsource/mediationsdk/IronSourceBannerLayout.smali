.class public Lcom/ironsource/mediationsdk/IronSourceBannerLayout;
.super Landroid/widget/FrameLayout;
.source "IronSourceBannerLayout.java"

# interfaces
.implements Lcom/ironsource/mediationsdk/BannerAdaptersListener;


# instance fields
.field private isAdLoaded:Z

.field private isDestoyed:Z

.field private isImpressionReported:Z

.field private mActivity:Landroid/app/Activity;

.field private mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

.field private mBannerListener:Lcom/ironsource/mediationsdk/sdk/BannerListener;

.field private mBannerManager:Lcom/ironsource/mediationsdk/sdk/BannerManagerListener;

.field private mBannerView:Landroid/view/View;

.field private mPlacementName:Ljava/lang/String;

.field private mSize:Lcom/ironsource/mediationsdk/EBannerSize;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/ironsource/mediationsdk/EBannerSize;Lcom/ironsource/mediationsdk/sdk/BannerManagerListener;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "size"    # Lcom/ironsource/mediationsdk/EBannerSize;
    .param p3, "bannerManager"    # Lcom/ironsource/mediationsdk/sdk/BannerManagerListener;

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 34
    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->isImpressionReported:Z

    .line 35
    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->isAdLoaded:Z

    .line 37
    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->isDestoyed:Z

    .line 41
    iput-object p3, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mBannerManager:Lcom/ironsource/mediationsdk/sdk/BannerManagerListener;

    .line 42
    iput-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mActivity:Landroid/app/Activity;

    .line 43
    if-nez p2, :cond_0

    .line 44
    sget-object p2, Lcom/ironsource/mediationsdk/EBannerSize;->BANNER:Lcom/ironsource/mediationsdk/EBannerSize;

    .line 46
    :cond_0
    iput-object p2, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mSize:Lcom/ironsource/mediationsdk/EBannerSize;

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)Z
    .locals 1
    .param p0, "x0"    # Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->isAdLoaded:Z

    return v0
.end method

.method static synthetic access$100(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->reportBannerImpression()V

    return-void
.end method

.method private declared-synchronized reportBannerImpression()V
    .locals 2

    .prologue
    .line 329
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->isImpressionReported:Z

    if-nez v0, :cond_0

    .line 330
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->isImpressionReported:Z

    .line 331
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mPlacementName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/utils/CappingManager;->incrementShowCounter(Landroid/content/Context;Ljava/lang/String;)V

    .line 332
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mBannerManager:Lcom/ironsource/mediationsdk/sdk/BannerManagerListener;

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mBannerManager:Lcom/ironsource/mediationsdk/sdk/BannerManagerListener;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    invoke-interface {v0, v1, p0}, Lcom/ironsource/mediationsdk/sdk/BannerManagerListener;->onBannerImpression(Lcom/ironsource/mediationsdk/AbstractAdapter;Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 336
    :cond_0
    monitor-exit p0

    return-void

    .line 329
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized resetBannerImpression()V
    .locals 1

    .prologue
    .line 324
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->isImpressionReported:Z

    .line 325
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->isAdLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 326
    monitor-exit p0

    return-void

    .line 324
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private shoudIgnoreThisCallback(Lcom/ironsource/mediationsdk/AbstractAdapter;)Z
    .locals 2
    .param p1, "adapter"    # Lcom/ironsource/mediationsdk/AbstractAdapter;

    .prologue
    .line 320
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public attachAdapterToBanner(Lcom/ironsource/mediationsdk/AbstractAdapter;Landroid/view/View;)V
    .locals 2
    .param p1, "adapter"    # Lcom/ironsource/mediationsdk/AbstractAdapter;
    .param p2, "bannerView"    # Landroid/view/View;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    .line 51
    iput-object p2, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mBannerView:Landroid/view/View;

    .line 52
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->resetBannerImpression()V

    .line 54
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/ironsource/mediationsdk/IronSourceBannerLayout$1;

    invoke-direct {v1, p0}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout$1;-><init>(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 69
    return-void
.end method

.method protected destroyBanner()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->isDestoyed:Z

    .line 74
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->destroyBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)V

    .line 77
    :cond_0
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->resetBannerImpression()V

    .line 79
    iput-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mBannerManager:Lcom/ironsource/mediationsdk/sdk/BannerManagerListener;

    .line 80
    iput-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mBannerListener:Lcom/ironsource/mediationsdk/sdk/BannerListener;

    .line 81
    iput-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mActivity:Landroid/app/Activity;

    .line 82
    iput-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mSize:Lcom/ironsource/mediationsdk/EBannerSize;

    .line 83
    iput-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mPlacementName:Ljava/lang/String;

    .line 84
    iput-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mBannerView:Landroid/view/View;

    .line 85
    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getBannerListener()Lcom/ironsource/mediationsdk/sdk/BannerListener;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mBannerListener:Lcom/ironsource/mediationsdk/sdk/BannerListener;

    return-object v0
.end method

.method public getBannerView()Landroid/view/View;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mBannerView:Landroid/view/View;

    return-object v0
.end method

.method public getPlacementName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mPlacementName:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()Lcom/ironsource/mediationsdk/EBannerSize;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mSize:Lcom/ironsource/mediationsdk/EBannerSize;

    return-object v0
.end method

.method public isDestoyed()Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->isDestoyed:Z

    return v0
.end method

.method public onBannerAdClicked(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    .locals 8
    .param p1, "adapter"    # Lcom/ironsource/mediationsdk/AbstractAdapter;

    .prologue
    .line 234
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->shoudIgnoreThisCallback(Lcom/ironsource/mediationsdk/AbstractAdapter;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v4

    sget-object v5, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onBannerAdClicked() | internal | adapter: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 239
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    .line 238
    invoke-virtual {v4, v5, v6, v7}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 242
    sget-object v4, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->BANNER:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-static {p1, v4}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getProviderAdditionalData(Lcom/ironsource/mediationsdk/AbstractAdapter;Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)Lorg/json/JSONObject;

    move-result-object v1

    .line 244
    .local v1, "data":Lorg/json/JSONObject;
    :try_start_0
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->getSize()Lcom/ironsource/mediationsdk/EBannerSize;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/EBannerSize;->getValue()I

    move-result v0

    .line 245
    .local v0, "bannerSizeData":I
    const-string v4, "bannerAdSize"

    invoke-virtual {v1, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    .end local v0    # "bannerSizeData":I
    :goto_1
    new-instance v3, Lcom/ironsource/eventsmodule/EventData;

    const/16 v4, 0x198

    invoke-direct {v3, v4, v1}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 251
    .local v3, "event":Lcom/ironsource/eventsmodule/EventData;
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    .line 253
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mBannerManager:Lcom/ironsource/mediationsdk/sdk/BannerManagerListener;

    if-eqz v4, :cond_2

    .line 254
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mBannerManager:Lcom/ironsource/mediationsdk/sdk/BannerManagerListener;

    invoke-interface {v4, p1}, Lcom/ironsource/mediationsdk/sdk/BannerManagerListener;->onBannerAdClicked(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 256
    :cond_2
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mBannerListener:Lcom/ironsource/mediationsdk/sdk/BannerListener;

    if-eqz v4, :cond_0

    .line 257
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v4

    sget-object v5, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v6, "onBannerAdClicked()"

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 258
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mBannerListener:Lcom/ironsource/mediationsdk/sdk/BannerListener;

    invoke-interface {v4}, Lcom/ironsource/mediationsdk/sdk/BannerListener;->onBannerAdClicked()V

    goto :goto_0

    .line 246
    .end local v3    # "event":Lcom/ironsource/eventsmodule/EventData;
    :catch_0
    move-exception v2

    .line 247
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public onBannerAdLeftApplication(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    .locals 4
    .param p1, "adapter"    # Lcom/ironsource/mediationsdk/AbstractAdapter;

    .prologue
    .line 302
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->shoudIgnoreThisCallback(Lcom/ironsource/mediationsdk/AbstractAdapter;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 316
    :cond_0
    :goto_0
    return-void

    .line 306
    :cond_1
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBannerAdLeftApplication() | internal | adapter: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 307
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 306
    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 309
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mBannerManager:Lcom/ironsource/mediationsdk/sdk/BannerManagerListener;

    if-eqz v0, :cond_2

    .line 310
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mBannerManager:Lcom/ironsource/mediationsdk/sdk/BannerManagerListener;

    invoke-interface {v0, p1}, Lcom/ironsource/mediationsdk/sdk/BannerManagerListener;->onBannerAdLeftApplication(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 312
    :cond_2
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mBannerListener:Lcom/ironsource/mediationsdk/sdk/BannerListener;

    if-eqz v0, :cond_0

    .line 313
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "onBannerAdLeftApplication()"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 314
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mBannerListener:Lcom/ironsource/mediationsdk/sdk/BannerListener;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/BannerListener;->onBannerAdLeftApplication()V

    goto :goto_0
.end method

.method public onBannerAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    .locals 9
    .param p1, "error"    # Lcom/ironsource/mediationsdk/logger/IronSourceError;
    .param p2, "adapter"    # Lcom/ironsource/mediationsdk/AbstractAdapter;

    .prologue
    const/4 v8, 0x0

    .line 193
    invoke-direct {p0, p2}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->shoudIgnoreThisCallback(Lcom/ironsource/mediationsdk/AbstractAdapter;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 198
    :cond_1
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v4

    sget-object v5, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onBannerAdLoadFailed() | internal | adapter: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 199
    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    .line 198
    invoke-virtual {v4, v5, v6, v7}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 203
    iput-object v8, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    .line 205
    :try_start_0
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mBannerView:Landroid/view/View;

    if-eqz v4, :cond_2

    .line 206
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mBannerView:Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->removeView(Landroid/view/View;)V

    .line 207
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mBannerView:Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 213
    :cond_2
    :goto_1
    sget-object v4, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->BANNER:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-static {p2, v4}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getProviderAdditionalData(Lcom/ironsource/mediationsdk/AbstractAdapter;Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)Lorg/json/JSONObject;

    move-result-object v1

    .line 215
    .local v1, "data":Lorg/json/JSONObject;
    :try_start_1
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->getSize()Lcom/ironsource/mediationsdk/EBannerSize;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/EBannerSize;->getValue()I

    move-result v0

    .line 216
    .local v0, "bannerSizeData":I
    const-string v4, "status"

    const-string v5, "false"

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 217
    const-string v4, "errorCode"

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 218
    const-string v4, "bannerAdSize"

    invoke-virtual {v1, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 223
    .end local v0    # "bannerSizeData":I
    :goto_2
    new-instance v3, Lcom/ironsource/eventsmodule/EventData;

    const/16 v4, 0x197

    invoke-direct {v3, v4, v1}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 224
    .local v3, "event":Lcom/ironsource/eventsmodule/EventData;
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    .line 226
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mBannerManager:Lcom/ironsource/mediationsdk/sdk/BannerManagerListener;

    if-eqz v4, :cond_0

    .line 227
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mBannerManager:Lcom/ironsource/mediationsdk/sdk/BannerManagerListener;

    invoke-interface {v4, p1, p2}, Lcom/ironsource/mediationsdk/sdk/BannerManagerListener;->onBannerAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    goto :goto_0

    .line 219
    .end local v3    # "event":Lcom/ironsource/eventsmodule/EventData;
    :catch_0
    move-exception v2

    .line 220
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 209
    .end local v1    # "data":Lorg/json/JSONObject;
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v4

    goto :goto_1
.end method

.method public onBannerAdLoaded(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    .locals 12
    .param p1, "adapter"    # Lcom/ironsource/mediationsdk/AbstractAdapter;

    .prologue
    const/16 v11, 0x197

    const/4 v10, 0x1

    .line 143
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->shoudIgnoreThisCallback(Lcom/ironsource/mediationsdk/AbstractAdapter;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-boolean v6, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->isAdLoaded:Z

    if-eqz v6, :cond_1

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v6

    sget-object v7, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onBannerAdLoaded() | internal | adapter: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 148
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    .line 147
    invoke-virtual {v6, v7, v8, v9}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 152
    sget-object v6, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->BANNER:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-static {p1, v6}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getProviderAdditionalData(Lcom/ironsource/mediationsdk/AbstractAdapter;Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)Lorg/json/JSONObject;

    move-result-object v4

    .line 153
    .local v4, "providerData":Lorg/json/JSONObject;
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData()Lorg/json/JSONObject;

    move-result-object v2

    .line 156
    .local v2, "mediationData":Lorg/json/JSONObject;
    :try_start_0
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->getSize()Lcom/ironsource/mediationsdk/EBannerSize;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/EBannerSize;->getValue()I

    move-result v0

    .line 157
    .local v0, "bannerSizeData":I
    const-string v6, "status"

    const-string v7, "true"

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 158
    const-string v6, "status"

    const-string v7, "true"

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 160
    const-string v6, "bannerAdSize"

    invoke-virtual {v4, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 161
    const-string v6, "bannerAdSize"

    invoke-virtual {v2, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    .end local v0    # "bannerSizeData":I
    :goto_1
    new-instance v5, Lcom/ironsource/eventsmodule/EventData;

    invoke-direct {v5, v11, v4}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 167
    .local v5, "providerEvent":Lcom/ironsource/eventsmodule/EventData;
    new-instance v3, Lcom/ironsource/eventsmodule/EventData;

    invoke-direct {v3, v11, v2}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 169
    .local v3, "mediationEvent":Lcom/ironsource/eventsmodule/EventData;
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    .line 170
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    .line 172
    iput-boolean v10, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->isAdLoaded:Z

    .line 174
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->isShown()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 175
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->reportBannerImpression()V

    .line 178
    :cond_2
    iget-object v6, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mBannerManager:Lcom/ironsource/mediationsdk/sdk/BannerManagerListener;

    if-eqz v6, :cond_3

    .line 179
    iget-object v6, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mBannerManager:Lcom/ironsource/mediationsdk/sdk/BannerManagerListener;

    invoke-interface {v6, p1}, Lcom/ironsource/mediationsdk/sdk/BannerManagerListener;->onBannerAdLoaded(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 181
    :cond_3
    iget-object v6, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mBannerListener:Lcom/ironsource/mediationsdk/sdk/BannerListener;

    if-eqz v6, :cond_0

    .line 182
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v6

    sget-object v7, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v8, "onBannerAdLoaded()"

    invoke-virtual {v6, v7, v8, v10}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 185
    iget-object v6, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mBannerListener:Lcom/ironsource/mediationsdk/sdk/BannerListener;

    invoke-interface {v6}, Lcom/ironsource/mediationsdk/sdk/BannerListener;->onBannerAdLoaded()V

    goto/16 :goto_0

    .line 162
    .end local v3    # "mediationEvent":Lcom/ironsource/eventsmodule/EventData;
    .end local v5    # "providerEvent":Lcom/ironsource/eventsmodule/EventData;
    :catch_0
    move-exception v1

    .line 163
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public onBannerAdScreenDismissed(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    .locals 4
    .param p1, "adapter"    # Lcom/ironsource/mediationsdk/AbstractAdapter;

    .prologue
    .line 283
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->shoudIgnoreThisCallback(Lcom/ironsource/mediationsdk/AbstractAdapter;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 287
    :cond_1
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBannerAdScreenDismissed() | internal | adapter: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 288
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 287
    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 291
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mBannerManager:Lcom/ironsource/mediationsdk/sdk/BannerManagerListener;

    if-eqz v0, :cond_2

    .line 292
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mBannerManager:Lcom/ironsource/mediationsdk/sdk/BannerManagerListener;

    invoke-interface {v0, p1}, Lcom/ironsource/mediationsdk/sdk/BannerManagerListener;->onBannerAdScreenDismissed(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 294
    :cond_2
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mBannerListener:Lcom/ironsource/mediationsdk/sdk/BannerListener;

    if-eqz v0, :cond_0

    .line 295
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "onBannerAdScreenDismissed()"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 296
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mBannerListener:Lcom/ironsource/mediationsdk/sdk/BannerListener;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/BannerListener;->onBannerAdScreenDismissed()V

    goto :goto_0
.end method

.method public onBannerAdScreenPresented(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    .locals 4
    .param p1, "adapter"    # Lcom/ironsource/mediationsdk/AbstractAdapter;

    .prologue
    .line 264
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->shoudIgnoreThisCallback(Lcom/ironsource/mediationsdk/AbstractAdapter;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 268
    :cond_1
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBannerAdScreenPresented() | internal | adapter: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 269
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 268
    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 272
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mBannerManager:Lcom/ironsource/mediationsdk/sdk/BannerManagerListener;

    if-eqz v0, :cond_2

    .line 273
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mBannerManager:Lcom/ironsource/mediationsdk/sdk/BannerManagerListener;

    invoke-interface {v0, p1}, Lcom/ironsource/mediationsdk/sdk/BannerManagerListener;->onBannerAdScreenPresented(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 275
    :cond_2
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mBannerListener:Lcom/ironsource/mediationsdk/sdk/BannerListener;

    if-eqz v0, :cond_0

    .line 276
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "onBannerAdScreenPresented()"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 277
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mBannerListener:Lcom/ironsource/mediationsdk/sdk/BannerListener;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/BannerListener;->onBannerAdScreenPresented()V

    goto :goto_0
.end method

.method public removeBannerListener()V
    .locals 4

    .prologue
    .line 132
    const-string v0, "removeBannerListener()"

    .line 133
    .local v0, "logMessage":Ljava/lang/String;
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v1

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 134
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mBannerListener:Lcom/ironsource/mediationsdk/sdk/BannerListener;

    .line 135
    return-void
.end method

.method public setBannerListener(Lcom/ironsource/mediationsdk/sdk/BannerListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/ironsource/mediationsdk/sdk/BannerListener;

    .prologue
    .line 123
    const-string v0, "setBannerListener()"

    .line 124
    .local v0, "logMessage":Ljava/lang/String;
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v1

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 125
    iput-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mBannerListener:Lcom/ironsource/mediationsdk/sdk/BannerListener;

    .line 126
    return-void
.end method

.method public setPlacementName(Ljava/lang/String;)V
    .locals 0
    .param p1, "placementName"    # Ljava/lang/String;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mPlacementName:Ljava/lang/String;

    .line 109
    return-void
.end method
