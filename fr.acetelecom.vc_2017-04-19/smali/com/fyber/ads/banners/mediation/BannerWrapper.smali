.class public abstract Lcom/fyber/ads/banners/mediation/BannerWrapper;
.super Ljava/lang/Object;


# instance fields
.field private bannerEventListener:Lcom/fyber/ads/banners/a/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract destroy()V
.end method

.method public abstract getView()Landroid/view/View;
.end method

.method public onBannerClick()V
    .locals 1

    iget-object v0, p0, Lcom/fyber/ads/banners/mediation/BannerWrapper;->bannerEventListener:Lcom/fyber/ads/banners/a/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fyber/ads/banners/mediation/BannerWrapper;->bannerEventListener:Lcom/fyber/ads/banners/a/b;

    invoke-virtual {p0}, Lcom/fyber/ads/banners/mediation/BannerWrapper;->getView()Landroid/view/View;

    invoke-interface {v0}, Lcom/fyber/ads/banners/a/b;->b()V

    :cond_0
    return-void
.end method

.method public onBannerError(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/fyber/ads/banners/mediation/BannerWrapper;->bannerEventListener:Lcom/fyber/ads/banners/a/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fyber/ads/banners/mediation/BannerWrapper;->bannerEventListener:Lcom/fyber/ads/banners/a/b;

    invoke-virtual {p0}, Lcom/fyber/ads/banners/mediation/BannerWrapper;->getView()Landroid/view/View;

    invoke-interface {v0, p1}, Lcom/fyber/ads/banners/a/b;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onBannerLeftApplication()V
    .locals 1

    iget-object v0, p0, Lcom/fyber/ads/banners/mediation/BannerWrapper;->bannerEventListener:Lcom/fyber/ads/banners/a/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fyber/ads/banners/mediation/BannerWrapper;->bannerEventListener:Lcom/fyber/ads/banners/a/b;

    invoke-virtual {p0}, Lcom/fyber/ads/banners/mediation/BannerWrapper;->getView()Landroid/view/View;

    invoke-interface {v0}, Lcom/fyber/ads/banners/a/b;->c()V

    :cond_0
    return-void
.end method

.method public onBannerLoaded()V
    .locals 1

    iget-object v0, p0, Lcom/fyber/ads/banners/mediation/BannerWrapper;->bannerEventListener:Lcom/fyber/ads/banners/a/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fyber/ads/banners/mediation/BannerWrapper;->bannerEventListener:Lcom/fyber/ads/banners/a/b;

    invoke-virtual {p0}, Lcom/fyber/ads/banners/mediation/BannerWrapper;->getView()Landroid/view/View;

    invoke-interface {v0}, Lcom/fyber/ads/banners/a/b;->a()V

    :cond_0
    return-void
.end method

.method public setBannerEventListener(Lcom/fyber/ads/banners/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/fyber/ads/banners/mediation/BannerWrapper;->bannerEventListener:Lcom/fyber/ads/banners/a/b;

    return-void
.end method
