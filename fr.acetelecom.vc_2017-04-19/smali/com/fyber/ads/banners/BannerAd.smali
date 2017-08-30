.class public Lcom/fyber/ads/banners/BannerAd;
.super Lcom/fyber/ads/Ad;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fyber/ads/Ad",
        "<",
        "Lcom/fyber/ads/banners/BannerAd;",
        "Lcom/fyber/ads/banners/BannerAdListener;",
        ">;"
    }
.end annotation


# static fields
.field public static final POSITION_BOTTOM:I = 0x50

.field public static final POSITION_TOP:I = 0x30


# instance fields
.field private c:Lcom/fyber/ads/banners/a/c;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/fyber/ads/internal/b;Lcom/fyber/ads/banners/a/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/fyber/ads/internal/b",
            "<",
            "Lcom/fyber/ads/banners/BannerAdListener;",
            ">;",
            "Lcom/fyber/ads/banners/a/c;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/fyber/ads/Ad;-><init>(Ljava/lang/String;Lcom/fyber/ads/internal/b;)V

    iput-object p3, p0, Lcom/fyber/ads/banners/BannerAd;->c:Lcom/fyber/ads/banners/a/c;

    return-void
.end method


# virtual methods
.method public canStart()Z
    .locals 1

    iget-object v0, p0, Lcom/fyber/ads/banners/BannerAd;->c:Lcom/fyber/ads/banners/a/c;

    invoke-interface {v0}, Lcom/fyber/ads/banners/a/c;->g()Z

    move-result v0

    return v0
.end method

.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/fyber/ads/banners/BannerAd;->c:Lcom/fyber/ads/banners/a/c;

    invoke-interface {v0}, Lcom/fyber/ads/banners/a/c;->f()V

    return-void
.end method

.method public displayAtBottom()Lcom/fyber/ads/banners/BannerAd;
    .locals 1

    const/16 v0, 0x50

    invoke-virtual {p0, v0}, Lcom/fyber/ads/banners/BannerAd;->withPosition(I)Lcom/fyber/ads/banners/BannerAd;

    move-result-object v0

    return-object v0
.end method

.method public displayAtTop()Lcom/fyber/ads/banners/BannerAd;
    .locals 1

    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Lcom/fyber/ads/banners/BannerAd;->withPosition(I)Lcom/fyber/ads/banners/BannerAd;

    move-result-object v0

    return-object v0
.end method

.method public displayInView(Landroid/view/ViewGroup;)Lcom/fyber/ads/banners/BannerAd;
    .locals 1

    iget-object v0, p0, Lcom/fyber/ads/banners/BannerAd;->c:Lcom/fyber/ads/banners/a/c;

    invoke-interface {v0, p1}, Lcom/fyber/ads/banners/a/c;->a(Landroid/view/ViewGroup;)V

    return-object p0
.end method

.method public getAdFormat()Lcom/fyber/ads/AdFormat;
    .locals 1

    sget-object v0, Lcom/fyber/ads/AdFormat;->BANNER:Lcom/fyber/ads/AdFormat;

    return-object v0
.end method

.method public hide()V
    .locals 1

    iget-object v0, p0, Lcom/fyber/ads/banners/BannerAd;->c:Lcom/fyber/ads/banners/a/c;

    invoke-interface {v0}, Lcom/fyber/ads/banners/a/c;->d()V

    return-void
.end method

.method public show()V
    .locals 1

    iget-object v0, p0, Lcom/fyber/ads/banners/BannerAd;->c:Lcom/fyber/ads/banners/a/c;

    invoke-interface {v0}, Lcom/fyber/ads/banners/a/c;->e()V

    return-void
.end method

.method public start(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/fyber/ads/banners/BannerAd;->c:Lcom/fyber/ads/banners/a/c;

    invoke-interface {v0, p1}, Lcom/fyber/ads/banners/a/c;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public withPosition(I)Lcom/fyber/ads/banners/BannerAd;
    .locals 1

    iget-object v0, p0, Lcom/fyber/ads/banners/BannerAd;->c:Lcom/fyber/ads/banners/a/c;

    invoke-interface {v0, p1}, Lcom/fyber/ads/banners/a/c;->a(I)V

    return-object p0
.end method
