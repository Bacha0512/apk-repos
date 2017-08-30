.class public final Lcom/fyber/b/b/a;
.super Lcom/fyber/b/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fyber/b/b/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fyber/b/d",
        "<",
        "Lcom/fyber/ads/interstitials/InterstitialAd;",
        "Lcom/fyber/ads/interstitials/InterstitialAd;",
        "Lcom/fyber/ads/interstitials/b/a;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fyber/ads/interstitials/b/a;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/fyber/b/d;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;Lcom/fyber/ads/internal/InternalAd;)Lcom/fyber/ads/Ad;
    .locals 0

    check-cast p1, Lcom/fyber/ads/interstitials/InterstitialAd;

    check-cast p2, Lcom/fyber/ads/interstitials/b/a;

    invoke-static {p2}, Lcom/fyber/ads/interstitials/b/b;->a(Lcom/fyber/ads/interstitials/b/a;)V

    return-object p1
.end method

.method protected final synthetic a(Lcom/fyber/ads/internal/InternalAd;)Ljava/util/concurrent/Future;
    .locals 2

    check-cast p1, Lcom/fyber/ads/interstitials/b/a;

    iget-object v0, p0, Lcom/fyber/b/b/a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/fyber/mediation/b;->a:Lcom/fyber/mediation/b;

    invoke-virtual {v1, v0, p1}, Lcom/fyber/mediation/b;->a(Landroid/content/Context;Lcom/fyber/ads/interstitials/b/a;)Ljava/util/concurrent/Future;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "InterstitialAdsProcessorOperation"

    const-string v1, "There was no context. Not proceeding with the request..."

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final a(Lcom/fyber/ads/internal/InternalAd;Lcom/fyber/ads/internal/a;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/fyber/b/b/b$a;

    invoke-direct {v0, p2}, Lcom/fyber/b/b/b$a;-><init>(Lcom/fyber/ads/internal/a;)V

    invoke-virtual {v0, p3}, Lcom/fyber/b/b/b$a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fyber/b/b/b$a;

    invoke-virtual {v0, p1}, Lcom/fyber/b/b/b$a;->a(Lcom/fyber/ads/internal/InternalAd;)Lcom/fyber/b/e;

    move-result-object v0

    check-cast v0, Lcom/fyber/b/b/b;

    invoke-virtual {v0}, Lcom/fyber/b/b/b;->b()V

    return-void
.end method

.method protected final b()Ljava/lang/String;
    .locals 1

    const-string v0, "InterstitialAdsProcessorOperation"

    return-object v0
.end method

.method protected final c()I
    .locals 1

    sget v0, Lcom/fyber/mediation/a;->b:I

    return v0
.end method
