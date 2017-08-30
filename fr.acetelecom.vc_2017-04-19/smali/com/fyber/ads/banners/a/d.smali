.class public final Lcom/fyber/ads/banners/a/d;
.super Lcom/fyber/ads/internal/InternalAd;

# interfaces
.implements Lcom/fyber/ads/banners/a/b;
.implements Lcom/fyber/ads/banners/a/c;
.implements Lcom/fyber/ads/internal/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fyber/ads/internal/InternalAd",
        "<",
        "Lcom/fyber/ads/banners/a/d;",
        "Lcom/fyber/ads/banners/BannerAd;",
        ">;",
        "Lcom/fyber/ads/banners/a/b;",
        "Lcom/fyber/ads/banners/a/c;",
        "Lcom/fyber/ads/internal/b",
        "<",
        "Lcom/fyber/ads/banners/BannerAdListener;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Lcom/fyber/ads/banners/BannerAdListener;

.field private c:Ljava/util/concurrent/atomic/AtomicInteger;

.field private d:Landroid/widget/FrameLayout;

.field private e:Landroid/view/ViewGroup;

.field private f:Lcom/fyber/ads/banners/mediation/BannerWrapper;

.field private g:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcom/fyber/ads/internal/InternalAd;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/fyber/ads/banners/a/d;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v0, 0x50

    iput v0, p0, Lcom/fyber/ads/banners/a/d;->g:I

    return-void
.end method

.method static synthetic a(Lcom/fyber/ads/banners/a/d;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/fyber/ads/banners/a/d;->e:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic a(Lcom/fyber/ads/banners/a/d;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;
    .locals 0

    iput-object p1, p0, Lcom/fyber/ads/banners/a/d;->d:Landroid/widget/FrameLayout;

    return-object p1
.end method

.method static synthetic b(Lcom/fyber/ads/banners/a/d;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/fyber/ads/banners/a/d;->d:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 1

    const-string v0, "InternalBannerAd"

    invoke-static {v0, p1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "The \"destroy()\" method appears to have been already called"

    invoke-virtual {p0, v0}, Lcom/fyber/ads/banners/a/d;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/fyber/ads/banners/a/d;)Lcom/fyber/ads/banners/mediation/BannerWrapper;
    .locals 1

    iget-object v0, p0, Lcom/fyber/ads/banners/a/d;->f:Lcom/fyber/ads/banners/mediation/BannerWrapper;

    return-object v0
.end method

.method static synthetic d(Lcom/fyber/ads/banners/a/d;)I
    .locals 1

    iget v0, p0, Lcom/fyber/ads/banners/a/d;->g:I

    return v0
.end method

.method static synthetic e(Lcom/fyber/ads/banners/a/d;)Lcom/fyber/ads/banners/mediation/BannerWrapper;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fyber/ads/banners/a/d;->f:Lcom/fyber/ads/banners/mediation/BannerWrapper;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/fyber/ads/banners/a/d;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/fyber/ads/internal/a;->g:Lcom/fyber/ads/internal/a;

    const-string v1, "position"

    iget-object v2, p0, Lcom/fyber/ads/banners/a/d;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    new-instance v2, Lcom/fyber/b/a/b$a;

    invoke-direct {v2, v0}, Lcom/fyber/b/a/b$a;-><init>(Lcom/fyber/ads/internal/a;)V

    invoke-virtual {v2, v1}, Lcom/fyber/b/a/b$a;->a(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fyber/b/a/b$a;

    invoke-virtual {v0, p0}, Lcom/fyber/b/a/b$a;->a(Lcom/fyber/ads/internal/InternalAd;)Lcom/fyber/b/e;

    move-result-object v0

    check-cast v0, Lcom/fyber/b/a/b;

    invoke-virtual {v0}, Lcom/fyber/b/a/b;->b()V

    :cond_0
    iget-object v0, p0, Lcom/fyber/ads/banners/a/d;->b:Lcom/fyber/ads/banners/BannerAdListener;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/fyber/ads/banners/a/d;->b:Lcom/fyber/ads/banners/BannerAdListener;

    iget-object v0, p0, Lcom/fyber/ads/banners/a/d;->a:Lcom/fyber/ads/Ad;

    check-cast v0, Lcom/fyber/ads/banners/BannerAd;

    invoke-interface {v1, v0}, Lcom/fyber/ads/banners/BannerAdListener;->onAdLoaded(Lcom/fyber/ads/banners/BannerAd;)V

    :cond_1
    return-void
.end method

.method public final a(I)V
    .locals 1

    iget-object v0, p0, Lcom/fyber/ads/banners/a/d;->f:Lcom/fyber/ads/banners/mediation/BannerWrapper;

    if-nez v0, :cond_1

    const-string v0, "This BannerAd appears to have been already destroyed"

    invoke-direct {p0, v0}, Lcom/fyber/ads/banners/a/d;->b(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x50

    if-eq p1, v0, :cond_2

    const/16 v0, 0x30

    if-ne p1, v0, :cond_0

    :cond_2
    iput p1, p0, Lcom/fyber/ads/banners/a/d;->g:I

    goto :goto_0
.end method

.method public final a(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/fyber/ads/banners/a/d;->f:Lcom/fyber/ads/banners/mediation/BannerWrapper;

    if-nez v0, :cond_0

    const-string v0, "There\'s no BannerWrapper for this BannerAd - this banner will not be shown"

    invoke-direct {p0, v0}, Lcom/fyber/ads/banners/a/d;->b(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/fyber/ads/banners/a/a;->a()Lcom/fyber/ads/internal/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/ads/internal/c;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/fyber/ads/internal/c;->d:Lcom/fyber/ads/internal/c;

    invoke-static {v0}, Lcom/fyber/ads/banners/a/a;->a(Lcom/fyber/ads/internal/c;)Z

    invoke-static {}, Lcom/fyber/Fyber;->getConfigs()Lcom/fyber/Fyber$a;

    new-instance v0, Lcom/fyber/ads/banners/a/d$3;

    invoke-direct {v0, p0, p1}, Lcom/fyber/ads/banners/a/d$3;-><init>(Lcom/fyber/ads/banners/a/d;Landroid/app/Activity;)V

    invoke-static {v0}, Lcom/fyber/Fyber$a;->a(Lcom/fyber/utils/d;)V

    goto :goto_0

    :cond_1
    const-string v0, "A banner is already being displayed"

    invoke-virtual {p0, v0}, Lcom/fyber/ads/banners/a/d;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Landroid/view/ViewGroup;)V
    .locals 1

    iget-object v0, p0, Lcom/fyber/ads/banners/a/d;->f:Lcom/fyber/ads/banners/mediation/BannerWrapper;

    if-nez v0, :cond_0

    const-string v0, "This BannerAd appears to have been already destroyed"

    invoke-direct {p0, v0}, Lcom/fyber/ads/banners/a/d;->b(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/fyber/ads/banners/a/d;->e:Landroid/view/ViewGroup;

    goto :goto_0
.end method

.method public final a(Lcom/fyber/ads/banners/mediation/BannerWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/fyber/ads/banners/a/d;->f:Lcom/fyber/ads/banners/mediation/BannerWrapper;

    return-void
.end method

.method protected final a(Lcom/fyber/ads/internal/a;)V
    .locals 1

    new-instance v0, Lcom/fyber/b/a/b$a;

    invoke-direct {v0, p1}, Lcom/fyber/b/a/b$a;-><init>(Lcom/fyber/ads/internal/a;)V

    invoke-virtual {v0, p0}, Lcom/fyber/b/a/b$a;->a(Lcom/fyber/ads/internal/InternalAd;)Lcom/fyber/b/e;

    move-result-object v0

    check-cast v0, Lcom/fyber/b/a/b;

    invoke-virtual {v0}, Lcom/fyber/b/a/b;->b()V

    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/fyber/ads/banners/BannerAdListener;

    iput-object p1, p0, Lcom/fyber/ads/banners/a/d;->b:Lcom/fyber/ads/banners/BannerAdListener;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/fyber/ads/internal/a;->j:Lcom/fyber/ads/internal/a;

    invoke-virtual {p0, v0}, Lcom/fyber/ads/banners/a/d;->a(Lcom/fyber/ads/internal/a;)V

    iget-object v0, p0, Lcom/fyber/ads/banners/a/d;->b:Lcom/fyber/ads/banners/BannerAdListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/fyber/ads/banners/a/d;->b:Lcom/fyber/ads/banners/BannerAdListener;

    iget-object v0, p0, Lcom/fyber/ads/banners/a/d;->a:Lcom/fyber/ads/Ad;

    check-cast v0, Lcom/fyber/ads/banners/BannerAd;

    invoke-interface {v1, v0, p1}, Lcom/fyber/ads/banners/BannerAdListener;->onAdError(Lcom/fyber/ads/banners/BannerAd;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    sget-object v0, Lcom/fyber/ads/internal/a;->h:Lcom/fyber/ads/internal/a;

    invoke-virtual {p0, v0}, Lcom/fyber/ads/banners/a/d;->a(Lcom/fyber/ads/internal/a;)V

    iget-object v0, p0, Lcom/fyber/ads/banners/a/d;->b:Lcom/fyber/ads/banners/BannerAdListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/fyber/ads/banners/a/d;->b:Lcom/fyber/ads/banners/BannerAdListener;

    iget-object v0, p0, Lcom/fyber/ads/banners/a/d;->a:Lcom/fyber/ads/Ad;

    check-cast v0, Lcom/fyber/ads/banners/BannerAd;

    invoke-interface {v1, v0}, Lcom/fyber/ads/banners/BannerAdListener;->onAdClicked(Lcom/fyber/ads/banners/BannerAd;)V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lcom/fyber/ads/banners/a/d;->b:Lcom/fyber/ads/banners/BannerAdListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/fyber/ads/banners/a/d;->b:Lcom/fyber/ads/banners/BannerAdListener;

    iget-object v0, p0, Lcom/fyber/ads/banners/a/d;->a:Lcom/fyber/ads/Ad;

    check-cast v0, Lcom/fyber/ads/banners/BannerAd;

    invoke-interface {v1, v0}, Lcom/fyber/ads/banners/BannerAdListener;->onAdLeftApplication(Lcom/fyber/ads/banners/BannerAd;)V

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lcom/fyber/ads/banners/a/d;->f:Lcom/fyber/ads/banners/mediation/BannerWrapper;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/fyber/Fyber;->getConfigs()Lcom/fyber/Fyber$a;

    new-instance v0, Lcom/fyber/ads/banners/a/d$1;

    invoke-direct {v0, p0}, Lcom/fyber/ads/banners/a/d$1;-><init>(Lcom/fyber/ads/banners/a/d;)V

    invoke-static {v0}, Lcom/fyber/Fyber$a;->a(Lcom/fyber/utils/d;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "This BannerAd appears to have been already destroyed"

    invoke-direct {p0, v0}, Lcom/fyber/ads/banners/a/d;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lcom/fyber/ads/banners/a/d;->f:Lcom/fyber/ads/banners/mediation/BannerWrapper;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/fyber/Fyber;->getConfigs()Lcom/fyber/Fyber$a;

    new-instance v0, Lcom/fyber/ads/banners/a/d$2;

    invoke-direct {v0, p0}, Lcom/fyber/ads/banners/a/d$2;-><init>(Lcom/fyber/ads/banners/a/d;)V

    invoke-static {v0}, Lcom/fyber/Fyber$a;->a(Lcom/fyber/utils/d;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "This BannerAd appears to have been already destroyed"

    invoke-direct {p0, v0}, Lcom/fyber/ads/banners/a/d;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final f()V
    .locals 2

    iget-object v0, p0, Lcom/fyber/ads/banners/a/d;->f:Lcom/fyber/ads/banners/mediation/BannerWrapper;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/fyber/Fyber;->getConfigs()Lcom/fyber/Fyber$a;

    new-instance v0, Lcom/fyber/ads/banners/a/d$4;

    invoke-direct {v0, p0}, Lcom/fyber/ads/banners/a/d$4;-><init>(Lcom/fyber/ads/banners/a/d;)V

    invoke-static {v0}, Lcom/fyber/Fyber$a;->a(Lcom/fyber/utils/d;)V

    const-string v0, "InternalBannerAd"

    const-string v1, "\"destroy()\" has been called on this BannerAd instance"

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "\"destroy()\" was already called on this BannerAd instance"

    invoke-direct {p0, v0}, Lcom/fyber/ads/banners/a/d;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final g()Z
    .locals 1

    iget-object v0, p0, Lcom/fyber/ads/banners/a/d;->f:Lcom/fyber/ads/banners/mediation/BannerWrapper;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/fyber/ads/banners/a/a;->a()Lcom/fyber/ads/internal/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/ads/internal/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final synthetic h()Lcom/fyber/ads/Ad;
    .locals 2

    new-instance v0, Lcom/fyber/ads/banners/BannerAd;

    invoke-virtual {p0}, Lcom/fyber/ads/banners/a/d;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0, p0}, Lcom/fyber/ads/banners/BannerAd;-><init>(Ljava/lang/String;Lcom/fyber/ads/internal/b;Lcom/fyber/ads/banners/a/c;)V

    return-object v0
.end method
