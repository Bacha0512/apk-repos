.class public Lcom/fyber/ads/interstitials/InterstitialAd;
.super Lcom/fyber/ads/Ad;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fyber/ads/Ad",
        "<",
        "Lcom/fyber/ads/interstitials/InterstitialAd;",
        "Lcom/fyber/ads/interstitials/InterstitialAdListener;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/fyber/ads/internal/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/fyber/ads/internal/b",
            "<",
            "Lcom/fyber/ads/interstitials/InterstitialAdListener;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/fyber/ads/Ad;-><init>(Ljava/lang/String;Lcom/fyber/ads/internal/b;)V

    return-void
.end method


# virtual methods
.method public canStart()Z
    .locals 1

    invoke-static {p0}, Lcom/fyber/ads/interstitials/b/b;->a(Lcom/fyber/ads/interstitials/InterstitialAd;)Z

    move-result v0

    return v0
.end method

.method public getAdFormat()Lcom/fyber/ads/AdFormat;
    .locals 1

    sget-object v0, Lcom/fyber/ads/AdFormat;->INTERSTITIAL:Lcom/fyber/ads/AdFormat;

    return-object v0
.end method

.method public start(Landroid/app/Activity;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/fyber/ads/interstitials/b/b;->a(Lcom/fyber/ads/interstitials/InterstitialAd;Landroid/app/Activity;)V

    return-void
.end method
