.class final Lcom/fyber/ads/videos/b$9$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/fyber/ads/videos/mediation/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fyber/ads/videos/b$9;->a(Ljava/lang/String;Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/fyber/ads/videos/b$9;


# direct methods
.method constructor <init>(Lcom/fyber/ads/videos/b$9;)V
    .locals 0

    iput-object p1, p0, Lcom/fyber/ads/videos/b$9$2;->a:Lcom/fyber/ads/videos/b$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/fyber/ads/videos/mediation/TPNVideoEvent;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/fyber/ads/videos/mediation/TPNVideoEvent;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/fyber/ads/videos/mediation/TPNVideoEvent;->Started:Lcom/fyber/ads/videos/mediation/TPNVideoEvent;

    if-ne p3, v0, :cond_0

    iget-object v0, p0, Lcom/fyber/ads/videos/b$9$2;->a:Lcom/fyber/ads/videos/b$9;

    iget-object v0, v0, Lcom/fyber/ads/videos/b$9;->a:Lcom/fyber/ads/videos/b;

    const-string v1, "STARTED"

    invoke-static {v0, v1}, Lcom/fyber/ads/videos/b;->c(Lcom/fyber/ads/videos/b;Ljava/lang/String;)V

    :cond_0
    const-string v0, "%s(\'play\', {tpn:\'%s\', id:%s, result:\'%s\', adapter_version:\'%s\'})"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "javascript:Sponsorpay.MBE.SDKInterface.notify"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    const-string v3, "id"

    invoke-interface {p4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p3, v1, v2

    const/4 v2, 0x4

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "RewardedVideoClient"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Notifying - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/fyber/ads/videos/b$9$2;->a:Lcom/fyber/ads/videos/b$9;

    iget-object v1, v1, Lcom/fyber/ads/videos/b$9;->a:Lcom/fyber/ads/videos/b;

    invoke-static {v1, v0}, Lcom/fyber/ads/videos/b;->b(Lcom/fyber/ads/videos/b;Ljava/lang/String;)V

    return-void
.end method
