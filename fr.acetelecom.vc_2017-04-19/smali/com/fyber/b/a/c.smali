.class public final Lcom/fyber/b/a/c;
.super Lcom/fyber/b/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fyber/b/a/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fyber/b/b",
        "<",
        "Lcom/fyber/ads/banners/a/d;",
        "Lcom/fyber/ads/banners/BannerAd;",
        ">;"
    }
.end annotation


# instance fields
.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fyber/ads/banners/NetworkBannerSize;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/fyber/b/a/c$a;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/fyber/b/b;-><init>(Lcom/fyber/b/b$a;)V

    invoke-static {p1}, Lcom/fyber/b/a/c$a;->a(Lcom/fyber/b/a/c$a;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/b/a/c;->e:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fyber/b/a/c;->d:Z

    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 1

    const/16 v0, 0xf

    return v0
.end method

.method protected final a(Ljava/lang/String;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/fyber/ads/banners/a/d;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fyber/b/a/c;->b:Lcom/fyber/utils/u;

    invoke-static {v0, p1}, Lcom/fyber/b/a/d;->a(Lcom/fyber/utils/u;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Ljava/util/List;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fyber/ads/banners/a/d;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/fyber/ads/banners/BannerAd;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/fyber/b/a/a$a;

    iget-object v1, p0, Lcom/fyber/b/a/c;->e:Ljava/util/List;

    invoke-direct {v0, p1, v1}, Lcom/fyber/b/a/a$a;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/fyber/b/a/a$a;->a()Lcom/fyber/b/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/fyber/b/a/c;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v1}, Lcom/fyber/b/a/a;->a(Ljava/lang/ref/WeakReference;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic a(Lcom/fyber/ads/Ad;)V
    .locals 1

    check-cast p1, Lcom/fyber/ads/banners/BannerAd;

    iget-object v0, p0, Lcom/fyber/b/a/c;->a:Lcom/fyber/requesters/Callback;

    check-cast v0, Lcom/fyber/requesters/AdRequestCallback;

    invoke-interface {v0, p1}, Lcom/fyber/requesters/AdRequestCallback;->onAdAvailable(Lcom/fyber/ads/Ad;)V

    return-void
.end method

.method protected final a(Lcom/fyber/ads/internal/c;)V
    .locals 0

    invoke-static {p1}, Lcom/fyber/ads/banners/a/a;->a(Lcom/fyber/ads/internal/c;)Z

    return-void
.end method

.method protected final a(Ljava/lang/String;Lcom/fyber/ads/internal/a;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/fyber/b/a/b$a;

    invoke-direct {v0, p2}, Lcom/fyber/b/a/b$a;-><init>(Lcom/fyber/ads/internal/a;)V

    invoke-virtual {v0, p3}, Lcom/fyber/b/a/b$a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fyber/b/a/b$a;

    invoke-virtual {v0, p1}, Lcom/fyber/b/a/b$a;->a(Ljava/lang/String;)Lcom/fyber/b/e;

    move-result-object v0

    check-cast v0, Lcom/fyber/b/a/b;

    invoke-virtual {v0}, Lcom/fyber/b/a/b;->b()V

    return-void
.end method

.method protected final b()I
    .locals 1

    const/16 v0, 0x14

    return v0
.end method

.method protected final c()V
    .locals 2

    iget-object v0, p0, Lcom/fyber/b/a/c;->a:Lcom/fyber/requesters/Callback;

    check-cast v0, Lcom/fyber/requesters/AdRequestCallback;

    sget-object v1, Lcom/fyber/ads/AdFormat;->BANNER:Lcom/fyber/ads/AdFormat;

    invoke-interface {v0, v1}, Lcom/fyber/requesters/AdRequestCallback;->onAdNotAvailable(Lcom/fyber/ads/AdFormat;)V

    return-void
.end method
