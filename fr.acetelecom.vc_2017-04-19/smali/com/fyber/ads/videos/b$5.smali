.class final Lcom/fyber/ads/videos/b$5;
.super Lcom/fyber/utils/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/ads/videos/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/fyber/ads/videos/RewardedVideoActivity;

.field final synthetic b:Lcom/fyber/ads/videos/b;


# direct methods
.method constructor <init>(Lcom/fyber/ads/videos/b;Lcom/fyber/ads/videos/RewardedVideoActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/fyber/ads/videos/b$5;->b:Lcom/fyber/ads/videos/b;

    iput-object p2, p0, Lcom/fyber/ads/videos/b$5;->a:Lcom/fyber/ads/videos/RewardedVideoActivity;

    invoke-direct {p0}, Lcom/fyber/utils/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    const/4 v3, -0x1

    iget-object v0, p0, Lcom/fyber/ads/videos/b$5;->a:Lcom/fyber/ads/videos/RewardedVideoActivity;

    iget-object v1, p0, Lcom/fyber/ads/videos/b$5;->b:Lcom/fyber/ads/videos/b;

    invoke-static {v1}, Lcom/fyber/ads/videos/b;->b(Lcom/fyber/ads/videos/b;)Landroid/webkit/WebView;

    move-result-object v1

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Lcom/fyber/ads/videos/RewardedVideoActivity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
