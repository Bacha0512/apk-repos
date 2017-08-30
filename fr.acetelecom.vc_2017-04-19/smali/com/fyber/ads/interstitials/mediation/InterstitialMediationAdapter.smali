.class public abstract Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Lcom/fyber/mediation/MediationAdapter;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field protected static final CREATIVE_TYPE_KEY:Ljava/lang/String; = "creative_type"

.field public static final ERROR_NO_PLACEMENT_ID:Ljava/lang/String; = "no_placement_id"

.field protected static final TPN_PLACEMENT_ID_KEY:Ljava/lang/String; = "tpn_placement_id"


# instance fields
.field protected adapter:Lcom/fyber/mediation/MediationAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field protected asyncCallable:Lcom/fyber/utils/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fyber/utils/c",
            "<",
            "Lcom/fyber/ads/interstitials/InterstitialAd;",
            "Lcom/fyber/exceptions/a;",
            ">;"
        }
    .end annotation
.end field

.field protected internalInterstitialAd:Lcom/fyber/ads/interstitials/b/a;


# direct methods
.method public constructor <init>(Lcom/fyber/mediation/MediationAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;->adapter:Lcom/fyber/mediation/MediationAdapter;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/fyber/ads/interstitials/b/a;)Ljava/util/concurrent/Future;
    .locals 2
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

    iput-object p2, p0, Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;->internalInterstitialAd:Lcom/fyber/ads/interstitials/b/a;

    new-instance v0, Lcom/fyber/utils/c;

    invoke-direct {v0}, Lcom/fyber/utils/c;-><init>()V

    iput-object v0, p0, Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;->asyncCallable:Lcom/fyber/utils/c;

    invoke-static {}, Lcom/fyber/Fyber;->getConfigs()Lcom/fyber/Fyber$a;

    move-result-object v0

    iget-object v1, p0, Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;->asyncCallable:Lcom/fyber/utils/c;

    invoke-virtual {v0, v1}, Lcom/fyber/Fyber$a;->a(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;->checkForAds(Landroid/content/Context;)V

    return-object v0
.end method

.method public final a(Landroid/app/Activity;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;->show(Landroid/app/Activity;)V

    return-void
.end method

.method protected abstract checkForAds(Landroid/content/Context;)V
.end method

.method protected getContextData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;->internalInterstitialAd:Lcom/fyber/ads/interstitials/b/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;->internalInterstitialAd:Lcom/fyber/ads/interstitials/b/a;

    invoke-virtual {v0}, Lcom/fyber/ads/interstitials/b/a;->getContextData()Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method

.method protected getCreativeType()Lcom/fyber/ads/interstitials/a/a;
    .locals 3

    iget-object v0, p0, Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;->internalInterstitialAd:Lcom/fyber/ads/interstitials/b/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;->internalInterstitialAd:Lcom/fyber/ads/interstitials/b/a;

    invoke-virtual {v0}, Lcom/fyber/ads/interstitials/b/a;->getContextData()Ljava/util/Map;

    move-result-object v0

    const-string v1, "creative_type"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    :goto_0
    if-nez v1, :cond_1

    sget-object v0, Lcom/fyber/ads/interstitials/a/a;->c:Lcom/fyber/ads/interstitials/a/a;

    :goto_1
    return-object v0

    :cond_0
    const-string v0, ""

    move-object v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_2
    :goto_2
    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/fyber/ads/interstitials/a/a;->c:Lcom/fyber/ads/interstitials/a/a;

    goto :goto_1

    :sswitch_0
    const-string v2, "video"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    goto :goto_2

    :sswitch_1
    const-string v2, "static"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :pswitch_0
    sget-object v0, Lcom/fyber/ads/interstitials/a/a;->a:Lcom/fyber/ads/interstitials/a/a;

    goto :goto_1

    :pswitch_1
    sget-object v0, Lcom/fyber/ads/interstitials/a/a;->b:Lcom/fyber/ads/interstitials/a/a;

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        -0x35323192 -> :sswitch_1
        0x6b0147b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected interstitialClicked()V
    .locals 1

    iget-object v0, p0, Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;->internalInterstitialAd:Lcom/fyber/ads/interstitials/b/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;->internalInterstitialAd:Lcom/fyber/ads/interstitials/b/a;

    invoke-virtual {v0}, Lcom/fyber/ads/interstitials/b/a;->b()V

    :cond_0
    return-void
.end method

.method protected interstitialClosed()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;->interstitialClosed(Ljava/lang/String;)V

    return-void
.end method

.method protected interstitialClosed(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;->interstitialClosed(Ljava/lang/String;Lcom/fyber/ads/interstitials/InterstitialAdCloseReason;)V

    return-void
.end method

.method protected interstitialClosed(Ljava/lang/String;Lcom/fyber/ads/interstitials/InterstitialAdCloseReason;)V
    .locals 1

    iget-object v0, p0, Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;->internalInterstitialAd:Lcom/fyber/ads/interstitials/b/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;->internalInterstitialAd:Lcom/fyber/ads/interstitials/b/a;

    invoke-virtual {v0, p1, p2}, Lcom/fyber/ads/interstitials/b/a;->a(Ljava/lang/String;Lcom/fyber/ads/interstitials/InterstitialAdCloseReason;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;->internalInterstitialAd:Lcom/fyber/ads/interstitials/b/a;

    :cond_0
    return-void
.end method

.method protected interstitialError(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;->interstitialError(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected interstitialError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;->internalInterstitialAd:Lcom/fyber/ads/interstitials/b/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;->internalInterstitialAd:Lcom/fyber/ads/interstitials/b/a;

    invoke-virtual {v0, p1, p2}, Lcom/fyber/ads/interstitials/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;->internalInterstitialAd:Lcom/fyber/ads/interstitials/b/a;

    return-void
.end method

.method protected interstitialShown()V
    .locals 1

    iget-object v0, p0, Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;->internalInterstitialAd:Lcom/fyber/ads/interstitials/b/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;->internalInterstitialAd:Lcom/fyber/ads/interstitials/b/a;

    invoke-virtual {v0}, Lcom/fyber/ads/interstitials/b/a;->a()V

    :cond_0
    return-void
.end method

.method protected setAdAvailable()V
    .locals 2

    iget-object v0, p0, Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;->asyncCallable:Lcom/fyber/utils/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;->internalInterstitialAd:Lcom/fyber/ads/interstitials/b/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;->internalInterstitialAd:Lcom/fyber/ads/interstitials/b/a;

    invoke-virtual {v0}, Lcom/fyber/ads/interstitials/b/a;->getAd()Lcom/fyber/ads/Ad;

    move-result-object v0

    check-cast v0, Lcom/fyber/ads/interstitials/InterstitialAd;

    iget-object v1, p0, Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;->asyncCallable:Lcom/fyber/utils/c;

    invoke-virtual {v1, v0}, Lcom/fyber/utils/c;->a(Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;->asyncCallable:Lcom/fyber/utils/c;

    return-void
.end method

.method protected setAdError(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p1}, Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;->setAdError(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected setAdError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;->asyncCallable:Lcom/fyber/utils/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;->asyncCallable:Lcom/fyber/utils/c;

    new-instance v1, Lcom/fyber/exceptions/a;

    invoke-direct {v1, p1, p2}, Lcom/fyber/exceptions/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/fyber/utils/c;->a(Ljava/lang/Exception;)V

    :cond_0
    iput-object v2, p0, Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;->asyncCallable:Lcom/fyber/utils/c;

    iput-object v2, p0, Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;->internalInterstitialAd:Lcom/fyber/ads/interstitials/b/a;

    return-void
.end method

.method protected setAdNotAvailable()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;->asyncCallable:Lcom/fyber/utils/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;->asyncCallable:Lcom/fyber/utils/c;

    invoke-virtual {v0, v1}, Lcom/fyber/utils/c;->a(Ljava/lang/Object;)V

    :cond_0
    iput-object v1, p0, Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;->asyncCallable:Lcom/fyber/utils/c;

    iput-object v1, p0, Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;->internalInterstitialAd:Lcom/fyber/ads/interstitials/b/a;

    return-void
.end method

.method protected abstract show(Landroid/app/Activity;)V
.end method
