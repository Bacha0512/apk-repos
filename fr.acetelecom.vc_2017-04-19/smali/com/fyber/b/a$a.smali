.class public abstract Lcom/fyber/b/a$a;
.super Lcom/fyber/b/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/fyber/b/e;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/fyber/b/e$a",
        "<TT;TU;>;"
    }
.end annotation


# instance fields
.field protected a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/fyber/ads/internal/a;)V
    .locals 3

    invoke-virtual {p1}, Lcom/fyber/ads/internal/a;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fyber/b/e$a;-><init>(Ljava/lang/String;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/fyber/b/a$a;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/fyber/b/a$a;->c:Lcom/fyber/utils/u;

    const-string v1, "ad_format"

    invoke-virtual {p0}, Lcom/fyber/b/a$a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/fyber/utils/u;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/fyber/utils/u;

    move-result-object v0

    const-string v1, "rewarded"

    invoke-virtual {p0}, Lcom/fyber/b/a$a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/fyber/utils/u;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/fyber/utils/u;

    return-void
.end method


# virtual methods
.method public final a(Lcom/fyber/ads/internal/InternalAd;)Lcom/fyber/b/e;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fyber/ads/internal/InternalAd;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fyber/b/a$a;->c:Lcom/fyber/utils/u;

    invoke-virtual {p1}, Lcom/fyber/ads/internal/InternalAd;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fyber/utils/u;->a(Ljava/lang/String;)Lcom/fyber/utils/u;

    move-result-object v0

    invoke-virtual {p1}, Lcom/fyber/ads/internal/InternalAd;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fyber/utils/u;->b(Ljava/lang/String;)Lcom/fyber/utils/u;

    move-result-object v0

    const-string v1, "ad_id"

    invoke-virtual {p1}, Lcom/fyber/ads/internal/InternalAd;->getAdId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/fyber/utils/u;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/fyber/utils/u;

    move-result-object v0

    const-string v1, "provider_type"

    invoke-virtual {p1}, Lcom/fyber/ads/internal/InternalAd;->getProviderType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/fyber/utils/u;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/fyber/utils/u;

    move-result-object v0

    invoke-virtual {p1}, Lcom/fyber/ads/internal/InternalAd;->getTrackingParameters()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fyber/utils/u;->a(Ljava/util/Map;)Lcom/fyber/utils/u;

    iget-object v0, p0, Lcom/fyber/b/a$a;->d:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v3, " for ad_id=%s and provider_type=%s "

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/fyber/ads/internal/InternalAd;->getAdId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {p1}, Lcom/fyber/ads/internal/InternalAd;->getProviderType()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fyber/b/a$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/fyber/b/a$a;->f()Lcom/fyber/b/e;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Lcom/fyber/b/e;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fyber/b/a$a;->c:Lcom/fyber/utils/u;

    invoke-virtual {v0, p1}, Lcom/fyber/utils/u;->a(Ljava/lang/String;)Lcom/fyber/utils/u;

    iget-object v0, p0, Lcom/fyber/b/a$a;->d:Ljava/lang/StringBuilder;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, " with request_id=%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/fyber/b/a$a;->f()Lcom/fyber/b/e;

    move-result-object v0

    return-object v0
.end method

.method protected abstract a()Ljava/lang/String;
.end method

.method protected abstract b()Ljava/lang/String;
.end method

.method protected abstract c()Ljava/lang/String;
.end method

.method protected final d()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TU;"
        }
    .end annotation

    return-object p0
.end method
