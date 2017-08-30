.class public final Lcom/fyber/b/b/c;
.super Lcom/fyber/b/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fyber/b/b/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fyber/b/b",
        "<",
        "Lcom/fyber/ads/interstitials/b/a;",
        "Lcom/fyber/ads/interstitials/InterstitialAd;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/fyber/b/b/c$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/fyber/b/b;-><init>(Lcom/fyber/b/b$a;)V

    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method protected final a(Ljava/lang/String;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/fyber/ads/interstitials/b/a;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fyber/b/b/c;->b:Lcom/fyber/utils/u;

    invoke-static {v0, p1}, Lcom/fyber/b/b/d;->a(Lcom/fyber/utils/u;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Ljava/util/List;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fyber/ads/interstitials/b/a;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/fyber/ads/interstitials/InterstitialAd;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/fyber/b/b/a$a;

    invoke-direct {v0, p1}, Lcom/fyber/b/b/a$a;-><init>(Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/fyber/b/b/a$a;->a()Lcom/fyber/b/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/fyber/b/b/c;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v1}, Lcom/fyber/b/b/a;->a(Ljava/lang/ref/WeakReference;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic a(Lcom/fyber/ads/Ad;)V
    .locals 3

    check-cast p1, Lcom/fyber/ads/interstitials/InterstitialAd;

    iget-object v0, p0, Lcom/fyber/b/b/c;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/fyber/b/b/c;->a:Lcom/fyber/requesters/Callback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fyber/b/b/c;->a:Lcom/fyber/requesters/Callback;

    instance-of v1, v1, Lcom/fyber/requesters/RequestCallback;

    if-eqz v1, :cond_1

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/fyber/ads/interstitials/InterstitialActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "EXTRA_AD_FORMAT"

    sget-object v2, Lcom/fyber/ads/AdFormat;->INTERSTITIAL:Lcom/fyber/ads/AdFormat;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/fyber/b/b/c;->a:Lcom/fyber/requesters/Callback;

    check-cast v0, Lcom/fyber/requesters/RequestCallback;

    invoke-interface {v0, v1}, Lcom/fyber/requesters/RequestCallback;->onAdAvailable(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/fyber/b/b/c;->a:Lcom/fyber/requesters/Callback;

    check-cast v0, Lcom/fyber/requesters/AdRequestCallback;

    invoke-interface {v0, p1}, Lcom/fyber/requesters/AdRequestCallback;->onAdAvailable(Lcom/fyber/ads/Ad;)V

    goto :goto_0
.end method

.method protected final a(Lcom/fyber/ads/internal/c;)V
    .locals 0

    invoke-static {p1}, Lcom/fyber/ads/interstitials/b/b;->a(Lcom/fyber/ads/internal/c;)Z

    return-void
.end method

.method protected final a(Ljava/lang/String;Lcom/fyber/ads/internal/a;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/fyber/b/b/b$a;

    invoke-direct {v0, p2}, Lcom/fyber/b/b/b$a;-><init>(Lcom/fyber/ads/internal/a;)V

    invoke-virtual {v0, p3}, Lcom/fyber/b/b/b$a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fyber/b/b/b$a;

    invoke-virtual {v0, p1}, Lcom/fyber/b/b/b$a;->a(Ljava/lang/String;)Lcom/fyber/b/e;

    move-result-object v0

    check-cast v0, Lcom/fyber/b/b/b;

    invoke-virtual {v0}, Lcom/fyber/b/b/b;->b()V

    return-void
.end method

.method protected final b()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method protected final c()V
    .locals 2

    iget-object v0, p0, Lcom/fyber/b/b/c;->a:Lcom/fyber/requesters/Callback;

    instance-of v0, v0, Lcom/fyber/requesters/RequestCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fyber/b/b/c;->a:Lcom/fyber/requesters/Callback;

    check-cast v0, Lcom/fyber/requesters/RequestCallback;

    sget-object v1, Lcom/fyber/ads/AdFormat;->INTERSTITIAL:Lcom/fyber/ads/AdFormat;

    invoke-interface {v0, v1}, Lcom/fyber/requesters/RequestCallback;->onAdNotAvailable(Lcom/fyber/ads/AdFormat;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/fyber/b/b/c;->a:Lcom/fyber/requesters/Callback;

    check-cast v0, Lcom/fyber/requesters/AdRequestCallback;

    sget-object v1, Lcom/fyber/ads/AdFormat;->INTERSTITIAL:Lcom/fyber/ads/AdFormat;

    invoke-interface {v0, v1}, Lcom/fyber/requesters/AdRequestCallback;->onAdNotAvailable(Lcom/fyber/ads/AdFormat;)V

    goto :goto_0
.end method
