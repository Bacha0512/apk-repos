.class final Lcom/fyber/ads/videos/b$8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/ads/videos/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/fyber/requesters/VirtualCurrencyRequester;

.field final synthetic b:Lcom/fyber/ads/videos/b;


# direct methods
.method constructor <init>(Lcom/fyber/ads/videos/b;Lcom/fyber/requesters/VirtualCurrencyRequester;)V
    .locals 0

    iput-object p1, p0, Lcom/fyber/ads/videos/b$8;->b:Lcom/fyber/ads/videos/b;

    iput-object p2, p0, Lcom/fyber/ads/videos/b$8;->a:Lcom/fyber/requesters/VirtualCurrencyRequester;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/fyber/ads/videos/b$8;->b:Lcom/fyber/ads/videos/b;

    invoke-static {v0}, Lcom/fyber/ads/videos/b;->k(Lcom/fyber/ads/videos/b;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fyber/ads/videos/b$8;->a:Lcom/fyber/requesters/VirtualCurrencyRequester;

    iget-object v1, p0, Lcom/fyber/ads/videos/b$8;->b:Lcom/fyber/ads/videos/b;

    invoke-static {v1}, Lcom/fyber/ads/videos/b;->k(Lcom/fyber/ads/videos/b;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fyber/requesters/VirtualCurrencyRequester;->request(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/fyber/ads/videos/b$8;->b:Lcom/fyber/ads/videos/b;

    invoke-static {v0}, Lcom/fyber/ads/videos/b;->p(Lcom/fyber/ads/videos/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fyber/ads/videos/b$8;->b:Lcom/fyber/ads/videos/b;

    invoke-static {v0}, Lcom/fyber/ads/videos/b;->q(Lcom/fyber/ads/videos/b;)Lcom/fyber/requesters/VirtualCurrencyRequester;

    iget-object v0, p0, Lcom/fyber/ads/videos/b$8;->b:Lcom/fyber/ads/videos/b;

    invoke-static {v0}, Lcom/fyber/ads/videos/b;->g(Lcom/fyber/ads/videos/b;)Landroid/content/Context;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "RewardedVideoClient"

    const-string v1, "There\'s no context available to perform a VCS request"

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
