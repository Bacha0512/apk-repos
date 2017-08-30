.class public final Lcom/fyber/b/b/d;
.super Lcom/fyber/b/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fyber/b/c",
        "<",
        "Lcom/fyber/ads/interstitials/b/a;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/fyber/utils/u;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/fyber/b/c;-><init>(Lcom/fyber/utils/u;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fyber/b/b/d;->a:Z

    return-void
.end method

.method public static a(Lcom/fyber/utils/u;Ljava/lang/String;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fyber/utils/u;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/fyber/ads/interstitials/b/a;",
            ">;>;"
        }
    .end annotation

    invoke-static {}, Lcom/fyber/Fyber;->getConfigs()Lcom/fyber/Fyber$a;

    move-result-object v0

    new-instance v1, Lcom/fyber/b/b/d;

    invoke-direct {v1, p0, p1}, Lcom/fyber/b/b/d;-><init>(Lcom/fyber/utils/u;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/fyber/Fyber$a;->a(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final synthetic a(Ljava/lang/String;Ljava/lang/String;)Lcom/fyber/ads/internal/InternalAd;
    .locals 2

    new-instance v0, Lcom/fyber/ads/interstitials/b/a;

    iget-object v1, p0, Lcom/fyber/b/b/d;->b:Ljava/lang/String;

    invoke-direct {v0, p1, p2, v1}, Lcom/fyber/ads/interstitials/b/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected final a_()Ljava/lang/String;
    .locals 1

    const-string v0, "InterstitialRequesterNetworkOperation"

    return-object v0
.end method

.method protected final bridge synthetic b(Ljava/io/IOException;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
