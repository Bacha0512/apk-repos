.class public final Lcom/fyber/ads/interstitials/b/a;
.super Lcom/fyber/ads/internal/InternalAd;

# interfaces
.implements Lcom/fyber/ads/internal/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fyber/ads/internal/InternalAd",
        "<",
        "Lcom/fyber/ads/interstitials/b/a;",
        "Lcom/fyber/ads/interstitials/InterstitialAd;",
        ">;",
        "Lcom/fyber/ads/internal/b",
        "<",
        "Lcom/fyber/ads/interstitials/InterstitialAdListener;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Lcom/fyber/ads/interstitials/InterstitialAdListener;

.field private c:Lcom/fyber/ads/interstitials/InterstitialAdListener;

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/fyber/ads/internal/InternalAd;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v0, p0, Lcom/fyber/ads/interstitials/b/a;->d:Z

    iput-boolean v0, p0, Lcom/fyber/ads/interstitials/b/a;->e:Z

    return-void
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/fyber/ads/interstitials/InterstitialActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private a(Lcom/fyber/ads/internal/a;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/fyber/b/b/b$a;

    invoke-direct {v0, p1}, Lcom/fyber/b/b/b$a;-><init>(Lcom/fyber/ads/internal/a;)V

    invoke-virtual {v0, p2}, Lcom/fyber/b/b/b$a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fyber/b/b/b$a;

    invoke-virtual {v0, p0}, Lcom/fyber/b/b/b$a;->a(Lcom/fyber/ads/internal/InternalAd;)Lcom/fyber/b/e;

    move-result-object v0

    check-cast v0, Lcom/fyber/b/b/b;

    invoke-virtual {v0}, Lcom/fyber/b/b/b;->b()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-boolean v0, p0, Lcom/fyber/ads/interstitials/b/a;->e:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fyber/ads/interstitials/b/a;->e:Z

    sget-object v0, Lcom/fyber/ads/internal/a;->f:Lcom/fyber/ads/internal/a;

    invoke-virtual {p0, v0}, Lcom/fyber/ads/interstitials/b/a;->a(Lcom/fyber/ads/internal/a;)V

    iget-object v0, p0, Lcom/fyber/ads/interstitials/b/a;->c:Lcom/fyber/ads/interstitials/InterstitialAdListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/fyber/ads/interstitials/b/a;->c:Lcom/fyber/ads/interstitials/InterstitialAdListener;

    iget-object v0, p0, Lcom/fyber/ads/interstitials/b/a;->a:Lcom/fyber/ads/Ad;

    check-cast v0, Lcom/fyber/ads/interstitials/InterstitialAd;

    invoke-interface {v1, v0}, Lcom/fyber/ads/interstitials/InterstitialAdListener;->onAdShown(Lcom/fyber/ads/interstitials/InterstitialAd;)V

    :cond_0
    return-void
.end method

.method protected final a(Lcom/fyber/ads/internal/a;)V
    .locals 1

    new-instance v0, Lcom/fyber/b/b/b$a;

    invoke-direct {v0, p1}, Lcom/fyber/b/b/b$a;-><init>(Lcom/fyber/ads/internal/a;)V

    invoke-virtual {v0, p0}, Lcom/fyber/b/b/b$a;->a(Lcom/fyber/ads/internal/InternalAd;)Lcom/fyber/b/e;

    move-result-object v0

    check-cast v0, Lcom/fyber/b/b/b;

    invoke-virtual {v0}, Lcom/fyber/b/b/b;->b()V

    return-void
.end method

.method public final a(Lcom/fyber/ads/interstitials/InterstitialAdListener;)V
    .locals 0

    iput-object p1, p0, Lcom/fyber/ads/interstitials/b/a;->b:Lcom/fyber/ads/interstitials/InterstitialAdListener;

    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/fyber/ads/interstitials/InterstitialAdListener;

    iput-object p1, p0, Lcom/fyber/ads/interstitials/b/a;->c:Lcom/fyber/ads/interstitials/InterstitialAdListener;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/fyber/ads/interstitials/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/fyber/ads/interstitials/InterstitialAdCloseReason;)V
    .locals 2

    sget-object v0, Lcom/fyber/ads/internal/c;->a:Lcom/fyber/ads/internal/c;

    invoke-static {v0}, Lcom/fyber/ads/interstitials/b/b;->a(Lcom/fyber/ads/internal/c;)Z

    if-nez p2, :cond_0

    iget-boolean v0, p0, Lcom/fyber/ads/interstitials/b/a;->d:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/fyber/ads/interstitials/InterstitialAdCloseReason;->ReasonUserClickedOnAd:Lcom/fyber/ads/interstitials/InterstitialAdCloseReason;

    :goto_0
    iget-boolean v1, p0, Lcom/fyber/ads/interstitials/b/a;->e:Z

    if-nez v1, :cond_5

    sget-object v0, Lcom/fyber/ads/interstitials/InterstitialAdCloseReason;->ReasonUnknown:Lcom/fyber/ads/interstitials/InterstitialAdCloseReason;

    move-object p2, v0

    :cond_0
    :goto_1
    iget-boolean v0, p0, Lcom/fyber/ads/interstitials/b/a;->e:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/fyber/ads/interstitials/b/a;->d:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/fyber/ads/internal/a;->i:Lcom/fyber/ads/internal/a;

    invoke-direct {p0, v0, p1}, Lcom/fyber/ads/interstitials/b/a;->a(Lcom/fyber/ads/internal/a;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/fyber/ads/interstitials/b/a;->b:Lcom/fyber/ads/interstitials/InterstitialAdListener;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/fyber/ads/interstitials/b/a;->b:Lcom/fyber/ads/interstitials/InterstitialAdListener;

    iget-object v0, p0, Lcom/fyber/ads/interstitials/b/a;->a:Lcom/fyber/ads/Ad;

    check-cast v0, Lcom/fyber/ads/interstitials/InterstitialAd;

    invoke-interface {v1, v0, p2}, Lcom/fyber/ads/interstitials/InterstitialAdListener;->onAdClosed(Lcom/fyber/ads/interstitials/InterstitialAd;Lcom/fyber/ads/interstitials/InterstitialAdCloseReason;)V

    :cond_2
    iget-object v0, p0, Lcom/fyber/ads/interstitials/b/a;->c:Lcom/fyber/ads/interstitials/InterstitialAdListener;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/fyber/ads/interstitials/b/a;->c:Lcom/fyber/ads/interstitials/InterstitialAdListener;

    iget-object v0, p0, Lcom/fyber/ads/interstitials/b/a;->a:Lcom/fyber/ads/Ad;

    check-cast v0, Lcom/fyber/ads/interstitials/InterstitialAd;

    invoke-interface {v1, v0, p2}, Lcom/fyber/ads/interstitials/InterstitialAdListener;->onAdClosed(Lcom/fyber/ads/interstitials/InterstitialAd;Lcom/fyber/ads/interstitials/InterstitialAdCloseReason;)V

    :cond_3
    return-void

    :cond_4
    sget-object v0, Lcom/fyber/ads/interstitials/InterstitialAdCloseReason;->ReasonUserClosedAd:Lcom/fyber/ads/interstitials/InterstitialAdCloseReason;

    goto :goto_0

    :cond_5
    move-object p2, v0

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/fyber/ads/internal/c;->a:Lcom/fyber/ads/internal/c;

    invoke-static {v0}, Lcom/fyber/ads/interstitials/b/b;->a(Lcom/fyber/ads/internal/c;)Z

    sget-object v0, Lcom/fyber/ads/internal/a;->j:Lcom/fyber/ads/internal/a;

    invoke-direct {p0, v0, p2}, Lcom/fyber/ads/interstitials/b/a;->a(Lcom/fyber/ads/internal/a;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fyber/ads/interstitials/b/a;->b:Lcom/fyber/ads/interstitials/InterstitialAdListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/fyber/ads/interstitials/b/a;->b:Lcom/fyber/ads/interstitials/InterstitialAdListener;

    iget-object v0, p0, Lcom/fyber/ads/interstitials/b/a;->a:Lcom/fyber/ads/Ad;

    check-cast v0, Lcom/fyber/ads/interstitials/InterstitialAd;

    invoke-interface {v1, v0, p1}, Lcom/fyber/ads/interstitials/InterstitialAdListener;->onAdError(Lcom/fyber/ads/interstitials/InterstitialAd;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/fyber/ads/interstitials/b/a;->c:Lcom/fyber/ads/interstitials/InterstitialAdListener;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/fyber/ads/interstitials/b/a;->c:Lcom/fyber/ads/interstitials/InterstitialAdListener;

    iget-object v0, p0, Lcom/fyber/ads/interstitials/b/a;->a:Lcom/fyber/ads/Ad;

    check-cast v0, Lcom/fyber/ads/interstitials/InterstitialAd;

    invoke-interface {v1, v0, p1}, Lcom/fyber/ads/interstitials/InterstitialAdListener;->onAdError(Lcom/fyber/ads/interstitials/InterstitialAd;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final b()V
    .locals 2

    iget-boolean v0, p0, Lcom/fyber/ads/interstitials/b/a;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fyber/ads/interstitials/b/a;->d:Z

    sget-object v0, Lcom/fyber/ads/internal/a;->h:Lcom/fyber/ads/internal/a;

    invoke-virtual {p0, v0}, Lcom/fyber/ads/interstitials/b/a;->a(Lcom/fyber/ads/internal/a;)V

    iget-object v0, p0, Lcom/fyber/ads/interstitials/b/a;->c:Lcom/fyber/ads/interstitials/InterstitialAdListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/fyber/ads/interstitials/b/a;->c:Lcom/fyber/ads/interstitials/InterstitialAdListener;

    iget-object v0, p0, Lcom/fyber/ads/interstitials/b/a;->a:Lcom/fyber/ads/Ad;

    check-cast v0, Lcom/fyber/ads/interstitials/InterstitialAd;

    invoke-interface {v1, v0}, Lcom/fyber/ads/interstitials/InterstitialAdListener;->onAdClicked(Lcom/fyber/ads/interstitials/InterstitialAd;)V

    :cond_0
    return-void
.end method

.method public final b(Landroid/app/Activity;)V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/fyber/ads/internal/c;->d:Lcom/fyber/ads/internal/c;

    invoke-static {v0}, Lcom/fyber/ads/interstitials/b/b;->a(Lcom/fyber/ads/internal/c;)Z

    invoke-static {v1}, Lcom/fyber/ads/interstitials/b/b;->a(Lcom/fyber/ads/interstitials/b/a;)V

    iget-boolean v0, p0, Lcom/fyber/ads/interstitials/b/a;->e:Z

    if-eqz v0, :cond_1

    const-string v0, "The Ad was already shown."

    invoke-virtual {p0, v0, v1}, Lcom/fyber/ads/interstitials/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/fyber/mediation/b;->a:Lcom/fyber/mediation/b;

    invoke-virtual {v0, p1, p0}, Lcom/fyber/mediation/b;->a(Landroid/app/Activity;Lcom/fyber/ads/interstitials/b/a;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "The current network is not available"

    invoke-virtual {p0, v0, v1}, Lcom/fyber/ads/interstitials/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final synthetic h()Lcom/fyber/ads/Ad;
    .locals 2

    new-instance v0, Lcom/fyber/ads/interstitials/InterstitialAd;

    invoke-virtual {p0}, Lcom/fyber/ads/interstitials/b/a;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/fyber/ads/interstitials/InterstitialAd;-><init>(Ljava/lang/String;Lcom/fyber/ads/internal/b;)V

    return-object v0
.end method
