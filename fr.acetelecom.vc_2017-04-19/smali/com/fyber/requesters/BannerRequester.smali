.class public Lcom/fyber/requesters/BannerRequester;
.super Lcom/fyber/requesters/Requester;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fyber/requesters/Requester",
        "<",
        "Lcom/fyber/requesters/BannerRequester;",
        ">;"
    }
.end annotation


# instance fields
.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fyber/ads/banners/NetworkBannerSize;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/fyber/requesters/Callback;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/fyber/requesters/Requester;-><init>(Lcom/fyber/requesters/Callback;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fyber/requesters/BannerRequester;->d:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>(Lcom/fyber/requesters/Requester;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/fyber/requesters/Requester;-><init>(Lcom/fyber/requesters/Requester;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fyber/requesters/BannerRequester;->d:Ljava/util/ArrayList;

    return-void
.end method

.method public static create(Lcom/fyber/requesters/AdRequestCallback;)Lcom/fyber/requesters/BannerRequester;
    .locals 1

    new-instance v0, Lcom/fyber/requesters/BannerRequester;

    invoke-direct {v0, p0}, Lcom/fyber/requesters/BannerRequester;-><init>(Lcom/fyber/requesters/Callback;)V

    return-object v0
.end method

.method public static from(Lcom/fyber/requesters/Requester;)Lcom/fyber/requesters/BannerRequester;
    .locals 1

    new-instance v0, Lcom/fyber/requesters/BannerRequester;

    invoke-direct {v0, p0}, Lcom/fyber/requesters/BannerRequester;-><init>(Lcom/fyber/requesters/Requester;)V

    return-object v0
.end method


# virtual methods
.method protected final a()Z
    .locals 1

    iget-object v0, p0, Lcom/fyber/requesters/BannerRequester;->a:Lcom/fyber/requesters/Callback;

    instance-of v0, v0, Lcom/fyber/requesters/AdRequestCallback;

    return v0
.end method

.method protected final bridge synthetic b()Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public request(Landroid/content/Context;)V
    .locals 5

    invoke-virtual {p0, p1}, Lcom/fyber/requesters/BannerRequester;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/fyber/ads/banners/a/a;->a()Lcom/fyber/ads/internal/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/ads/internal/c;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/fyber/ads/internal/c;->b:Lcom/fyber/ads/internal/c;

    invoke-static {v0}, Lcom/fyber/ads/banners/a/a;->a(Lcom/fyber/ads/internal/c;)Z

    const-string v0, "CUSTOM_PARAMS_KEY"

    invoke-virtual {p0, v0}, Lcom/fyber/requesters/BannerRequester;->d(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    const-string v0, "PLACEMENT_ID_KEY"

    invoke-virtual {p0, v0}, Lcom/fyber/requesters/BannerRequester;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/fyber/requesters/a/a;

    iget-object v0, p0, Lcom/fyber/requesters/BannerRequester;->a:Lcom/fyber/requesters/Callback;

    check-cast v0, Lcom/fyber/requesters/AdRequestCallback;

    iget-object v4, p0, Lcom/fyber/requesters/BannerRequester;->c:Landroid/os/Handler;

    invoke-direct {v3, v0, v4}, Lcom/fyber/requesters/a/a;-><init>(Lcom/fyber/requesters/AdRequestCallback;Landroid/os/Handler;)V

    new-instance v0, Lcom/fyber/b/a/c$a;

    invoke-direct {v0}, Lcom/fyber/b/a/c$a;-><init>()V

    invoke-virtual {v0, v3}, Lcom/fyber/b/a/c$a;->a(Lcom/fyber/requesters/Callback;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fyber/b/a/c$a;

    invoke-virtual {v0, v1}, Lcom/fyber/b/a/c$a;->a(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fyber/b/a/c$a;

    invoke-virtual {v0, v2}, Lcom/fyber/b/a/c$a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fyber/b/a/c$a;

    iget-object v1, p0, Lcom/fyber/requesters/BannerRequester;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/fyber/b/a/c$a;->a(Ljava/util/ArrayList;)Lcom/fyber/b/a/c$a;

    move-result-object v0

    new-instance v1, Lcom/fyber/b/a/c;

    invoke-direct {v1, v0}, Lcom/fyber/b/a/c;-><init>(Lcom/fyber/b/a/c$a;)V

    invoke-virtual {v1, p1}, Lcom/fyber/b/a/c;->a(Landroid/content/Context;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/fyber/requesters/RequestError;->UNABLE_TO_REQUEST_ADS:Lcom/fyber/requesters/RequestError;

    invoke-virtual {p0, v0}, Lcom/fyber/requesters/BannerRequester;->a(Lcom/fyber/requesters/RequestError;)V

    goto :goto_0
.end method

.method public withNetworkSize(Lcom/fyber/ads/banners/NetworkBannerSize;)Lcom/fyber/requesters/BannerRequester;
    .locals 1

    iget-object v0, p0, Lcom/fyber/requesters/BannerRequester;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
