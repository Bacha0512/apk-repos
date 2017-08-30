.class public final Lcom/fyber/mediation/b;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/fyber/mediation/b;


# instance fields
.field private b:Z

.field private c:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/fyber/mediation/MediationAdapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/fyber/mediation/b;

    invoke-direct {v0}, Lcom/fyber/mediation/b;-><init>()V

    sput-object v0, Lcom/fyber/mediation/b;->a:Lcom/fyber/mediation/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fyber/mediation/b;->b:Z

    new-instance v0, Lcom/fyber/mediation/b$1;

    invoke-direct {v0, p0}, Lcom/fyber/mediation/b$1;-><init>(Lcom/fyber/mediation/b;)V

    iput-object v0, p0, Lcom/fyber/mediation/b;->d:Ljava/util/Map;

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fyber/mediation/b;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fyber/mediation/b;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fyber/mediation/MediationAdapter;

    invoke-virtual {v0}, Lcom/fyber/mediation/MediationAdapter;->getVersion()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method static synthetic a(Lcom/fyber/mediation/b;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/fyber/mediation/b;->d:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fyber/mediation/b;->c:Ljava/util/concurrent/Future;

    return-object v0
.end method

.method public final a(Landroid/content/Context;Lcom/fyber/ads/banners/a/d;Ljava/util/List;)Ljava/util/concurrent/Future;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/fyber/ads/banners/a/d;",
            "Ljava/util/List",
            "<",
            "Lcom/fyber/ads/banners/NetworkBannerSize;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/fyber/ads/banners/mediation/BannerWrapper;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p2}, Lcom/fyber/ads/banners/a/d;->getProviderType()Ljava/lang/String;

    move-result-object v3

    sget v0, Lcom/fyber/mediation/a;->c:I

    invoke-virtual {p0, v3, v0}, Lcom/fyber/mediation/b;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/fyber/mediation/b;->d:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fyber/mediation/MediationAdapter;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p3, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v5}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fyber/ads/banners/NetworkBannerSize;

    invoke-virtual {v1}, Lcom/fyber/ads/banners/NetworkBannerSize;->getNetwork()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v1}, Lcom/fyber/ads/banners/NetworkBannerSize;->getSize()Lcom/fyber/ads/banners/BannerSize;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v0}, Lcom/fyber/mediation/MediationAdapter;->getBannerMediationAdapter()Lcom/fyber/ads/banners/mediation/BannerMediationAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1, p2, v4}, Lcom/fyber/ads/banners/mediation/BannerMediationAdapter;->a(Landroid/content/Context;Lcom/fyber/ads/banners/a/d;Ljava/util/List;)Ljava/util/concurrent/Future;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_2
    move-object v0, v2

    goto :goto_0

    :cond_3
    move-object v0, v2

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Lcom/fyber/ads/interstitials/b/a;)Ljava/util/concurrent/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/fyber/ads/interstitials/b/a;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/fyber/ads/interstitials/InterstitialAd;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p2}, Lcom/fyber/ads/interstitials/b/a;->getProviderType()Ljava/lang/String;

    move-result-object v0

    sget v2, Lcom/fyber/mediation/a;->b:I

    invoke-virtual {p0, v0, v2}, Lcom/fyber/mediation/b;->a(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/fyber/mediation/b;->d:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fyber/mediation/MediationAdapter;

    invoke-virtual {v0}, Lcom/fyber/mediation/MediationAdapter;->getInterstitialMediationAdapter()Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;->a(Landroid/content/Context;Lcom/fyber/ads/interstitials/b/a;)Ljava/util/concurrent/Future;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final a(Landroid/app/Activity;)V
    .locals 3

    iget-boolean v0, p0, Lcom/fyber/mediation/b;->b:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fyber/mediation/b;->b:Z

    iget-object v0, p0, Lcom/fyber/mediation/b;->d:Ljava/util/Map;

    const-string v1, "Fyber"

    new-instance v2, Lcom/fyber/mediation/a/a;

    invoke-direct {v2}, Lcom/fyber/mediation/a/a;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/fyber/Fyber;->getConfigs()Lcom/fyber/Fyber$a;

    move-result-object v0

    new-instance v1, Lcom/fyber/mediation/b$2;

    invoke-direct {v1, p0, p1}, Lcom/fyber/mediation/b$2;-><init>(Lcom/fyber/mediation/b;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcom/fyber/Fyber$a;->a(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/mediation/b;->c:Ljava/util/concurrent/Future;

    goto :goto_0
.end method

.method public final a(Landroid/app/Activity;Ljava/lang/String;Ljava/util/HashMap;Lcom/fyber/ads/videos/mediation/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/fyber/ads/videos/mediation/b;",
            ")V"
        }
    .end annotation

    sget v0, Lcom/fyber/mediation/a;->a:I

    invoke-virtual {p0, p2, v0}, Lcom/fyber/mediation/b;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fyber/mediation/b;->d:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fyber/mediation/MediationAdapter;

    invoke-virtual {v0}, Lcom/fyber/mediation/MediationAdapter;->getVideoMediationAdapter()Lcom/fyber/ads/videos/mediation/RewardedVideoMediationAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/fyber/mediation/MediationAdapter;->getVideoMediationAdapter()Lcom/fyber/ads/videos/mediation/RewardedVideoMediationAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p4, p3}, Lcom/fyber/ads/videos/mediation/RewardedVideoMediationAdapter;->a(Landroid/app/Activity;Lcom/fyber/ads/videos/mediation/b;Ljava/util/Map;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p2}, Lcom/fyber/mediation/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/fyber/ads/videos/mediation/TPNVideoEvent;->AdapterNotIntegrated:Lcom/fyber/ads/videos/mediation/TPNVideoEvent;

    invoke-interface {p4, p2, v0, v1, p3}, Lcom/fyber/ads/videos/mediation/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/fyber/ads/videos/mediation/TPNVideoEvent;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Lcom/fyber/ads/videos/mediation/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/fyber/ads/videos/mediation/a;",
            ")V"
        }
    .end annotation

    sget v0, Lcom/fyber/mediation/a;->a:I

    invoke-virtual {p0, p2, v0}, Lcom/fyber/mediation/b;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fyber/mediation/b;->d:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fyber/mediation/MediationAdapter;

    invoke-virtual {v0}, Lcom/fyber/mediation/MediationAdapter;->getVideoMediationAdapter()Lcom/fyber/ads/videos/mediation/RewardedVideoMediationAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p4, p3}, Lcom/fyber/ads/videos/mediation/RewardedVideoMediationAdapter;->a(Landroid/content/Context;Lcom/fyber/ads/videos/mediation/a;Ljava/util/Map;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p2}, Lcom/fyber/mediation/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;->AdapterNotIntegrated:Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;

    invoke-interface {p4, p2, v0, v1, p3}, Lcom/fyber/ads/videos/mediation/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public final a(Landroid/app/Activity;Lcom/fyber/ads/interstitials/b/a;)Z
    .locals 2

    invoke-virtual {p2}, Lcom/fyber/ads/interstitials/b/a;->getProviderType()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/fyber/mediation/a;->b:I

    invoke-virtual {p0, v0, v1}, Lcom/fyber/mediation/b;->a(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/fyber/mediation/b;->d:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fyber/mediation/MediationAdapter;

    invoke-virtual {v0}, Lcom/fyber/mediation/MediationAdapter;->getInterstitialMediationAdapter()Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;->a(Landroid/app/Activity;)V

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;I)Z
    .locals 1

    iget-object v0, p0, Lcom/fyber/mediation/b;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fyber/mediation/MediationAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/fyber/mediation/MediationAdapter;->a(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    iget-boolean v0, p0, Lcom/fyber/mediation/b;->b:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/fyber/Fyber;->getConfigs()Lcom/fyber/Fyber$a;

    move-result-object v0

    new-instance v1, Lcom/fyber/mediation/b$3;

    invoke-direct {v1, p0}, Lcom/fyber/mediation/b$3;-><init>(Lcom/fyber/mediation/b;)V

    invoke-virtual {v0, v1}, Lcom/fyber/Fyber$a;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
