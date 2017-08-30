.class final Lcom/fyber/ads/banners/a/d$4;
.super Lcom/fyber/utils/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fyber/ads/banners/a/d;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/fyber/ads/banners/a/d;


# direct methods
.method constructor <init>(Lcom/fyber/ads/banners/a/d;)V
    .locals 0

    iput-object p1, p0, Lcom/fyber/ads/banners/a/d$4;->a:Lcom/fyber/ads/banners/a/d;

    invoke-direct {p0}, Lcom/fyber/utils/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/fyber/ads/banners/a/d$4;->a:Lcom/fyber/ads/banners/a/d;

    invoke-static {v0}, Lcom/fyber/ads/banners/a/d;->c(Lcom/fyber/ads/banners/a/d;)Lcom/fyber/ads/banners/mediation/BannerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/ads/banners/mediation/BannerWrapper;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/fyber/ads/banners/a/d$4;->a:Lcom/fyber/ads/banners/a/d;

    invoke-static {v0}, Lcom/fyber/ads/banners/a/d;->b(Lcom/fyber/ads/banners/a/d;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/fyber/ads/banners/a/d$4;->a:Lcom/fyber/ads/banners/a/d;

    invoke-static {v0}, Lcom/fyber/ads/banners/a/d;->b(Lcom/fyber/ads/banners/a/d;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/fyber/ads/banners/a/d$4;->a:Lcom/fyber/ads/banners/a/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fyber/ads/banners/a/d;->a(Lcom/fyber/ads/banners/a/d;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;

    :cond_2
    iget-object v0, p0, Lcom/fyber/ads/banners/a/d$4;->a:Lcom/fyber/ads/banners/a/d;

    invoke-static {v0}, Lcom/fyber/ads/banners/a/d;->c(Lcom/fyber/ads/banners/a/d;)Lcom/fyber/ads/banners/mediation/BannerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/ads/banners/mediation/BannerWrapper;->destroy()V

    iget-object v0, p0, Lcom/fyber/ads/banners/a/d$4;->a:Lcom/fyber/ads/banners/a/d;

    invoke-static {v0}, Lcom/fyber/ads/banners/a/d;->e(Lcom/fyber/ads/banners/a/d;)Lcom/fyber/ads/banners/mediation/BannerWrapper;

    sget-object v0, Lcom/fyber/ads/internal/c;->a:Lcom/fyber/ads/internal/c;

    invoke-static {v0}, Lcom/fyber/ads/banners/a/a;->a(Lcom/fyber/ads/internal/c;)Z

    return-void
.end method
