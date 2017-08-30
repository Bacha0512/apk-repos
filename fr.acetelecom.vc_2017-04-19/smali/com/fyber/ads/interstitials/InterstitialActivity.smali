.class public Lcom/fyber/ads/interstitials/InterstitialActivity;
.super Landroid/app/Activity;

# interfaces
.implements Lcom/fyber/ads/interstitials/InterstitialAdListener;


# static fields
.field public static final AD_STATUS:Ljava/lang/String; = "AD_STATUS"

.field public static final ERROR_MESSAGE:Ljava/lang/String; = "ERROR_MESSAGE"


# instance fields
.field private a:Lcom/fyber/mediation/MediationUserActivityListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected finishInterstitialActivity(Lcom/fyber/ads/interstitials/InterstitialAdCloseReason;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "AD_STATUS"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-static {p2}, Lcom/fyber/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ERROR_MESSAGE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/fyber/ads/interstitials/InterstitialActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/fyber/ads/interstitials/InterstitialActivity;->finish()V

    return-void
.end method

.method public onAdClicked(Lcom/fyber/ads/interstitials/InterstitialAd;)V
    .locals 0

    return-void
.end method

.method public onAdClosed(Lcom/fyber/ads/interstitials/InterstitialAd;Lcom/fyber/ads/interstitials/InterstitialAdCloseReason;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/fyber/ads/interstitials/InterstitialActivity;->finishInterstitialActivity(Lcom/fyber/ads/interstitials/InterstitialAdCloseReason;Ljava/lang/String;)V

    return-void
.end method

.method public onAdError(Lcom/fyber/ads/interstitials/InterstitialAd;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/fyber/ads/interstitials/InterstitialAdCloseReason;->ReasonError:Lcom/fyber/ads/interstitials/InterstitialAdCloseReason;

    invoke-virtual {p0, v0, p2}, Lcom/fyber/ads/interstitials/InterstitialActivity;->finishInterstitialActivity(Lcom/fyber/ads/interstitials/InterstitialAdCloseReason;Ljava/lang/String;)V

    return-void
.end method

.method public onAdShown(Lcom/fyber/ads/interstitials/InterstitialAd;)V
    .locals 0

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    iget-object v0, p0, Lcom/fyber/ads/interstitials/InterstitialActivity;->a:Lcom/fyber/mediation/MediationUserActivityListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fyber/ads/interstitials/InterstitialActivity;->a:Lcom/fyber/mediation/MediationUserActivityListener;

    invoke-interface {v0}, Lcom/fyber/mediation/MediationUserActivityListener;->notifyOnBackPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/fyber/ads/interstitials/InterstitialActivity;->requestWindowFeature(I)Z

    invoke-static {}, Lcom/fyber/ads/interstitials/b/b;->a()Lcom/fyber/ads/internal/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/ads/internal/c;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/fyber/ads/interstitials/b/b;->b()Lcom/fyber/ads/interstitials/b/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/fyber/ads/interstitials/b/a;->a(Lcom/fyber/ads/interstitials/InterstitialAdListener;)V

    invoke-virtual {v0, p0}, Lcom/fyber/ads/interstitials/b/a;->b(Landroid/app/Activity;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/fyber/ads/internal/c;->a:Lcom/fyber/ads/internal/c;

    invoke-static {v0}, Lcom/fyber/ads/interstitials/b/b;->a(Lcom/fyber/ads/internal/c;)Z

    const-string v0, "Unknown internal issue. Please try again later."

    invoke-virtual {p0, v1, v0}, Lcom/fyber/ads/interstitials/InterstitialActivity;->onAdError(Lcom/fyber/ads/interstitials/InterstitialAd;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "There\'s no Ad available to be shown currently."

    invoke-virtual {p0, v1, v0}, Lcom/fyber/ads/interstitials/InterstitialActivity;->onAdError(Lcom/fyber/ads/interstitials/InterstitialAd;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    iget-object v0, p0, Lcom/fyber/ads/interstitials/InterstitialActivity;->a:Lcom/fyber/mediation/MediationUserActivityListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fyber/ads/interstitials/InterstitialActivity;->a:Lcom/fyber/mediation/MediationUserActivityListener;

    invoke-interface {v0}, Lcom/fyber/mediation/MediationUserActivityListener;->notifyOnUserLeft()V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 1

    iget-object v0, p0, Lcom/fyber/ads/interstitials/InterstitialActivity;->a:Lcom/fyber/mediation/MediationUserActivityListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fyber/ads/interstitials/InterstitialActivity;->a:Lcom/fyber/mediation/MediationUserActivityListener;

    invoke-interface {v0}, Lcom/fyber/mediation/MediationUserActivityListener;->notifyOnUserLeft()V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    return-void
.end method

.method public setMarketPlaceInterstitialListener(Lcom/fyber/mediation/MediationUserActivityListener;)V
    .locals 1

    iget-object v0, p0, Lcom/fyber/ads/interstitials/InterstitialActivity;->a:Lcom/fyber/mediation/MediationUserActivityListener;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/fyber/ads/interstitials/InterstitialActivity;->a:Lcom/fyber/mediation/MediationUserActivityListener;

    :cond_0
    return-void
.end method
