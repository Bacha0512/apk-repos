.class public final Lcom/fyber/b/a/a;
.super Lcom/fyber/b/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fyber/b/a/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fyber/b/d",
        "<",
        "Lcom/fyber/ads/banners/mediation/BannerWrapper;",
        "Lcom/fyber/ads/banners/BannerAd;",
        "Lcom/fyber/ads/banners/a/d;",
        ">;"
    }
.end annotation


# instance fields
.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fyber/ads/banners/NetworkBannerSize;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fyber/ads/banners/a/d;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/fyber/ads/banners/NetworkBannerSize;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/fyber/b/d;-><init>(Ljava/util/List;)V

    iput-object p2, p0, Lcom/fyber/b/a/a;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method protected final synthetic a(Ljava/lang/Object;Lcom/fyber/ads/internal/InternalAd;)Lcom/fyber/ads/Ad;
    .locals 1

    check-cast p1, Lcom/fyber/ads/banners/mediation/BannerWrapper;

    check-cast p2, Lcom/fyber/ads/banners/a/d;

    invoke-virtual {p1, p2}, Lcom/fyber/ads/banners/mediation/BannerWrapper;->setBannerEventListener(Lcom/fyber/ads/banners/a/b;)V

    invoke-virtual {p2, p1}, Lcom/fyber/ads/banners/a/d;->a(Lcom/fyber/ads/banners/mediation/BannerWrapper;)V

    invoke-virtual {p2}, Lcom/fyber/ads/banners/a/d;->getAd()Lcom/fyber/ads/Ad;

    move-result-object v0

    check-cast v0, Lcom/fyber/ads/banners/BannerAd;

    return-object v0
.end method

.method protected final synthetic a(Lcom/fyber/ads/internal/InternalAd;)Ljava/util/concurrent/Future;
    .locals 3

    check-cast p1, Lcom/fyber/ads/banners/a/d;

    iget-object v0, p0, Lcom/fyber/b/a/a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/fyber/mediation/b;->a:Lcom/fyber/mediation/b;

    iget-object v2, p0, Lcom/fyber/b/a/a;->c:Ljava/util/List;

    invoke-virtual {v1, v0, p1, v2}, Lcom/fyber/mediation/b;->a(Landroid/content/Context;Lcom/fyber/ads/banners/a/d;Ljava/util/List;)Ljava/util/concurrent/Future;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "BannerAdsProcessorOperation"

    const-string v1, "There was no context. Not proceeding with the request..."

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final a(Lcom/fyber/ads/internal/InternalAd;Lcom/fyber/ads/internal/a;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/fyber/b/a/b$a;

    invoke-direct {v0, p2}, Lcom/fyber/b/a/b$a;-><init>(Lcom/fyber/ads/internal/a;)V

    invoke-virtual {v0, p3}, Lcom/fyber/b/a/b$a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fyber/b/a/b$a;

    invoke-virtual {v0, p1}, Lcom/fyber/b/a/b$a;->a(Lcom/fyber/ads/internal/InternalAd;)Lcom/fyber/b/e;

    move-result-object v0

    check-cast v0, Lcom/fyber/b/a/b;

    invoke-virtual {v0}, Lcom/fyber/b/a/b;->b()V

    return-void
.end method

.method protected final b()Ljava/lang/String;
    .locals 1

    const-string v0, "BannerAdsProcessorOperation"

    return-object v0
.end method

.method protected final c()I
    .locals 1

    sget v0, Lcom/fyber/mediation/a;->c:I

    return v0
.end method
