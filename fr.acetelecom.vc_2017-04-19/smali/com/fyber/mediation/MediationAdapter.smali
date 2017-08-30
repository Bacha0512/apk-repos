.class public abstract Lcom/fyber/mediation/MediationAdapter;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a([Ljava/lang/Object;[Ljava/lang/Class;)V
    .locals 3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x4

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/fyber/Fyber;->getConfigs()Lcom/fyber/Fyber$a;

    move-result-object v1

    new-instance v2, Lcom/fyber/mediation/MediationAdapter$1;

    invoke-direct {v2, p0, v0, p2, p1}, Lcom/fyber/mediation/MediationAdapter$1;-><init>(Lcom/fyber/mediation/MediationAdapter;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/fyber/Fyber$a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static getConfiguration(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getConfiguration(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "TT;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    invoke-static {p0, p1, p3}, Lcom/fyber/mediation/MediationAdapter;->getConfiguration(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-object p2

    :cond_0
    move-object p2, v0

    goto :goto_0
.end method


# virtual methods
.method public final a(I)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-object v2, Lcom/fyber/mediation/MediationAdapter$2;->a:[I

    add-int/lit8 v3, p1, -0x1

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/fyber/mediation/MediationAdapter;->getVideoMediationAdapter()Lcom/fyber/ads/videos/mediation/RewardedVideoMediationAdapter;

    move-result-object v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/fyber/mediation/MediationAdapter;->getInterstitialMediationAdapter()Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;

    move-result-object v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/fyber/mediation/MediationAdapter;->getBannerMediationAdapter()Lcom/fyber/ads/banners/mediation/BannerMediationAdapter;

    move-result-object v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public abstract getBannerMediationAdapter()Lcom/fyber/ads/banners/mediation/BannerMediationAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/fyber/ads/banners/mediation/BannerMediationAdapter",
            "<+",
            "Lcom/fyber/mediation/MediationAdapter;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getInterstitialMediationAdapter()Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter",
            "<+",
            "Lcom/fyber/mediation/MediationAdapter;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract getListeners()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method protected getUserId()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/fyber/Fyber;->getConfigs()Lcom/fyber/Fyber$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/Fyber$a;->e()Lcom/fyber/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/a/a;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getVersion()Ljava/lang/String;
.end method

.method public abstract getVideoMediationAdapter()Lcom/fyber/ads/videos/mediation/RewardedVideoMediationAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/fyber/ads/videos/mediation/RewardedVideoMediationAdapter",
            "<+",
            "Lcom/fyber/mediation/MediationAdapter;",
            ">;"
        }
    .end annotation
.end method

.method protected isPrecachingDisabled()Z
    .locals 1

    invoke-static {}, Lcom/fyber/cache/CacheManager;->a()Lcom/fyber/cache/CacheManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/cache/CacheManager;->e()Z

    move-result v0

    return v0
.end method

.method protected varargs notifyListeners([Ljava/lang/Object;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    array-length v1, p1

    new-array v1, v1, [Ljava/lang/Class;

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/fyber/mediation/MediationAdapter;->a([Ljava/lang/Object;[Ljava/lang/Class;)V

    return-void

    :cond_1
    new-array v0, v0, [Ljava/lang/Class;

    goto :goto_1
.end method

.method protected notifyListeners([Ljava/lang/Object;[Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/fyber/mediation/MediationAdapter;->a([Ljava/lang/Object;[Ljava/lang/Class;)V

    return-void
.end method

.method public abstract startAdapter(Landroid/app/Activity;Ljava/util/Map;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation
.end method
