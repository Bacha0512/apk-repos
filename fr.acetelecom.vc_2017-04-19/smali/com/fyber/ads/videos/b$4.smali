.class final Lcom/fyber/ads/videos/b$4;
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
.field final synthetic a:Lcom/fyber/a/a;

.field final synthetic b:Lcom/fyber/ads/videos/b;


# direct methods
.method constructor <init>(Lcom/fyber/ads/videos/b;Lcom/fyber/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/fyber/ads/videos/b$4;->b:Lcom/fyber/ads/videos/b;

    iput-object p2, p0, Lcom/fyber/ads/videos/b$4;->a:Lcom/fyber/a/a;

    invoke-direct {p0}, Lcom/fyber/utils/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lcom/fyber/ads/videos/b$4;->b:Lcom/fyber/ads/videos/b;

    iget-object v1, p0, Lcom/fyber/ads/videos/b$4;->a:Lcom/fyber/a/a;

    invoke-static {v0, v1}, Lcom/fyber/ads/videos/b;->a(Lcom/fyber/ads/videos/b;Lcom/fyber/a/a;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/fyber/ads/videos/b$4;->b:Lcom/fyber/ads/videos/b;

    invoke-static {v1}, Lcom/fyber/ads/videos/b;->i(Lcom/fyber/ads/videos/b;)Ljava/util/Map;

    const-string v1, "RewardedVideoClient"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Loading URL: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/fyber/ads/videos/b$4;->b:Lcom/fyber/ads/videos/b;

    invoke-static {v1, v0}, Lcom/fyber/ads/videos/b;->b(Lcom/fyber/ads/videos/b;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fyber/ads/videos/b$4;->b:Lcom/fyber/ads/videos/b;

    invoke-static {v0}, Lcom/fyber/ads/videos/b;->j(Lcom/fyber/ads/videos/b;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
