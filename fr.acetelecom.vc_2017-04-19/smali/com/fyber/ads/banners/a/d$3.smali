.class final Lcom/fyber/ads/banners/a/d$3;
.super Lcom/fyber/utils/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fyber/ads/banners/a/d;->a(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/fyber/ads/banners/a/d;


# direct methods
.method constructor <init>(Lcom/fyber/ads/banners/a/d;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/fyber/ads/banners/a/d$3;->b:Lcom/fyber/ads/banners/a/d;

    iput-object p2, p0, Lcom/fyber/ads/banners/a/d$3;->a:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/fyber/utils/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lcom/fyber/ads/banners/a/d$3;->b:Lcom/fyber/ads/banners/a/d;

    invoke-static {v0}, Lcom/fyber/ads/banners/a/d;->a(Lcom/fyber/ads/banners/a/d;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fyber/ads/banners/a/d$3;->b:Lcom/fyber/ads/banners/a/d;

    invoke-static {v0}, Lcom/fyber/ads/banners/a/d;->a(Lcom/fyber/ads/banners/a/d;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/fyber/ads/banners/a/d$3;->b:Lcom/fyber/ads/banners/a/d;

    invoke-static {v1}, Lcom/fyber/ads/banners/a/d;->c(Lcom/fyber/ads/banners/a/d;)Lcom/fyber/ads/banners/mediation/BannerWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fyber/ads/banners/mediation/BannerWrapper;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_0
    iget-object v0, p0, Lcom/fyber/ads/banners/a/d$3;->b:Lcom/fyber/ads/banners/a/d;

    sget-object v1, Lcom/fyber/ads/internal/a;->f:Lcom/fyber/ads/internal/a;

    invoke-virtual {v0, v1}, Lcom/fyber/ads/banners/a/d;->a(Lcom/fyber/ads/internal/a;)V

    iget-object v0, p0, Lcom/fyber/ads/banners/a/d$3;->b:Lcom/fyber/ads/banners/a/d;

    iget-object v1, p0, Lcom/fyber/ads/banners/a/d$3;->b:Lcom/fyber/ads/banners/a/d;

    invoke-static {v1}, Lcom/fyber/ads/banners/a/d;->c(Lcom/fyber/ads/banners/a/d;)Lcom/fyber/ads/banners/mediation/BannerWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fyber/ads/banners/mediation/BannerWrapper;->getView()Landroid/view/View;

    invoke-virtual {v0}, Lcom/fyber/ads/banners/a/d;->a()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/fyber/ads/banners/a/d$3;->b:Lcom/fyber/ads/banners/a/d;

    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/fyber/ads/banners/a/d$3;->a:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/fyber/ads/banners/a/d;->a(Lcom/fyber/ads/banners/a/d;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    iget-object v3, p0, Lcom/fyber/ads/banners/a/d$3;->b:Lcom/fyber/ads/banners/a/d;

    invoke-static {v3}, Lcom/fyber/ads/banners/a/d;->d(Lcom/fyber/ads/banners/a/d;)I

    move-result v3

    or-int/lit8 v3, v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget-object v1, p0, Lcom/fyber/ads/banners/a/d$3;->b:Lcom/fyber/ads/banners/a/d;

    invoke-static {v1}, Lcom/fyber/ads/banners/a/d;->c(Lcom/fyber/ads/banners/a/d;)Lcom/fyber/ads/banners/mediation/BannerWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fyber/ads/banners/mediation/BannerWrapper;->getView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/fyber/ads/banners/a/d$3;->b:Lcom/fyber/ads/banners/a/d;

    invoke-static {v2}, Lcom/fyber/ads/banners/a/d;->b(Lcom/fyber/ads/banners/a/d;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/fyber/ads/banners/a/d$3;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/fyber/ads/banners/a/d$3;->b:Lcom/fyber/ads/banners/a/d;

    invoke-static {v2}, Lcom/fyber/ads/banners/a/d;->b(Lcom/fyber/ads/banners/a/d;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method
