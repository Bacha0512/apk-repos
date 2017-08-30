.class final Lcom/fyber/ads/videos/b$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fyber/ads/videos/b;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/fyber/ads/videos/b;


# direct methods
.method constructor <init>(Lcom/fyber/ads/videos/b;)V
    .locals 0

    iput-object p1, p0, Lcom/fyber/ads/videos/b$3;->a:Lcom/fyber/ads/videos/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    const-string v0, "RewardedVideoClient"

    const-string v1, "Unknown message what field"

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    :sswitch_0
    iget-object v0, p0, Lcom/fyber/ads/videos/b$3;->a:Lcom/fyber/ads/videos/b;

    invoke-static {v0}, Lcom/fyber/ads/videos/b;->b(Lcom/fyber/ads/videos/b;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/fyber/ads/videos/b$3;->a:Lcom/fyber/ads/videos/b;

    invoke-static {v1}, Lcom/fyber/ads/videos/b;->b(Lcom/fyber/ads/videos/b;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-static {}, Lcom/fyber/utils/i;->d()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fyber/ads/videos/b$3;->a:Lcom/fyber/ads/videos/b;

    invoke-static {v0}, Lcom/fyber/ads/videos/b;->c(Lcom/fyber/ads/videos/b;)Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/fyber/ads/videos/b$3;->a:Lcom/fyber/ads/videos/b;

    invoke-static {v0}, Lcom/fyber/ads/videos/b;->d(Lcom/fyber/ads/videos/b;)Landroid/webkit/WebViewClient;

    iget-object v0, p0, Lcom/fyber/ads/videos/b$3;->a:Lcom/fyber/ads/videos/b;

    invoke-static {v0}, Lcom/fyber/ads/videos/b;->e(Lcom/fyber/ads/videos/b;)Lcom/fyber/ads/videos/RewardedVideoActivity;

    iget-object v0, p0, Lcom/fyber/ads/videos/b$3;->a:Lcom/fyber/ads/videos/b;

    invoke-static {v0}, Lcom/fyber/ads/videos/b;->f(Lcom/fyber/ads/videos/b;)Lcom/fyber/requesters/VirtualCurrencyRequester;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fyber/ads/videos/b$3;->a:Lcom/fyber/ads/videos/b;

    invoke-static {v0}, Lcom/fyber/ads/videos/b;->g(Lcom/fyber/ads/videos/b;)Landroid/content/Context;

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/fyber/ads/videos/b$3;->a:Lcom/fyber/ads/videos/b;

    invoke-static {v0}, Lcom/fyber/ads/videos/b;->h(Lcom/fyber/ads/videos/b;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7b -> :sswitch_0
        0x20a -> :sswitch_1
    .end sparse-switch
.end method
