.class public abstract Lcom/fyber/ads/banners/mediation/BannerMediationAdapter;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Lcom/fyber/mediation/MediationAdapter;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected asyncCallable:Lcom/fyber/utils/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fyber/utils/c",
            "<",
            "Lcom/fyber/ads/banners/mediation/BannerWrapper;",
            "Lcom/fyber/ads/banners/mediation/a;",
            ">;"
        }
    .end annotation
.end field

.field protected internalBannerAd:Lcom/fyber/ads/banners/a/d;

.field protected mAdapter:Lcom/fyber/mediation/MediationAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/fyber/mediation/MediationAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fyber/ads/banners/mediation/BannerMediationAdapter;->mAdapter:Lcom/fyber/mediation/MediationAdapter;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/fyber/ads/banners/a/d;Ljava/util/List;)Ljava/util/concurrent/Future;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/fyber/ads/banners/a/d;",
            "Ljava/util/List",
            "<",
            "Lcom/fyber/ads/banners/BannerSize;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/fyber/ads/banners/mediation/BannerWrapper;",
            ">;"
        }
    .end annotation

    iput-object p2, p0, Lcom/fyber/ads/banners/mediation/BannerMediationAdapter;->internalBannerAd:Lcom/fyber/ads/banners/a/d;

    new-instance v0, Lcom/fyber/utils/c;

    invoke-direct {v0}, Lcom/fyber/utils/c;-><init>()V

    iput-object v0, p0, Lcom/fyber/ads/banners/mediation/BannerMediationAdapter;->asyncCallable:Lcom/fyber/utils/c;

    invoke-static {}, Lcom/fyber/Fyber;->getConfigs()Lcom/fyber/Fyber$a;

    move-result-object v0

    iget-object v1, p0, Lcom/fyber/ads/banners/mediation/BannerMediationAdapter;->asyncCallable:Lcom/fyber/utils/c;

    invoke-virtual {v0, v1}, Lcom/fyber/Fyber$a;->a(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-virtual {p0, p1, p3}, Lcom/fyber/ads/banners/mediation/BannerMediationAdapter;->checkForAds(Landroid/content/Context;Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/fyber/ads/banners/mediation/BannerMediationAdapter;->asyncCallable:Lcom/fyber/utils/c;

    new-instance v2, Lcom/fyber/ads/banners/mediation/a;

    const-string v3, "Unable to perform the request"

    invoke-direct {v2, v3}, Lcom/fyber/ads/banners/mediation/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/fyber/utils/c;->a(Ljava/lang/Exception;)V

    :cond_0
    return-object v0
.end method

.method protected abstract checkForAds(Landroid/content/Context;Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/fyber/ads/banners/BannerSize;",
            ">;)Z"
        }
    .end annotation
.end method

.method protected getContextData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fyber/ads/banners/mediation/BannerMediationAdapter;->internalBannerAd:Lcom/fyber/ads/banners/a/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fyber/ads/banners/mediation/BannerMediationAdapter;->internalBannerAd:Lcom/fyber/ads/banners/a/d;

    invoke-virtual {v0}, Lcom/fyber/ads/banners/a/d;->getContextData()Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method

.method protected setAdAvailable(Lcom/fyber/ads/banners/mediation/BannerWrapper;)V
    .locals 1

    iget-object v0, p0, Lcom/fyber/ads/banners/mediation/BannerMediationAdapter;->asyncCallable:Lcom/fyber/utils/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fyber/ads/banners/mediation/BannerMediationAdapter;->asyncCallable:Lcom/fyber/utils/c;

    invoke-virtual {v0, p1}, Lcom/fyber/utils/c;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected setAdError(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/fyber/ads/banners/mediation/BannerMediationAdapter;->asyncCallable:Lcom/fyber/utils/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fyber/ads/banners/mediation/BannerMediationAdapter;->asyncCallable:Lcom/fyber/utils/c;

    new-instance v1, Lcom/fyber/ads/banners/mediation/a;

    invoke-direct {v1, p1}, Lcom/fyber/ads/banners/mediation/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/fyber/utils/c;->a(Ljava/lang/Exception;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fyber/ads/banners/mediation/BannerMediationAdapter;->internalBannerAd:Lcom/fyber/ads/banners/a/d;

    return-void
.end method

.method protected setAdNotAvailable()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/fyber/ads/banners/mediation/BannerMediationAdapter;->asyncCallable:Lcom/fyber/utils/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fyber/ads/banners/mediation/BannerMediationAdapter;->asyncCallable:Lcom/fyber/utils/c;

    invoke-virtual {v0, v1}, Lcom/fyber/utils/c;->a(Ljava/lang/Object;)V

    :cond_0
    iput-object v1, p0, Lcom/fyber/ads/banners/mediation/BannerMediationAdapter;->internalBannerAd:Lcom/fyber/ads/banners/a/d;

    return-void
.end method
