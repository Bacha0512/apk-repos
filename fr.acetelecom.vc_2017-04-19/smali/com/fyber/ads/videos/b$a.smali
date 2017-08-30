.class final Lcom/fyber/ads/videos/b$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/fyber/c/d/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/ads/videos/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/os/Handler;

.field private b:D

.field private c:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fyber/ads/videos/b$a;->a:Landroid/os/Handler;

    return-void
.end method

.method private a(Lcom/fyber/c/d/a;)V
    .locals 4

    const-string v0, "%s(\'play\', {tpn:\'%s\', result:\'%s\', id:\'%s\'})"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "javascript:Sponsorpay.MBE.SDKInterface.notify"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "local"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/fyber/ads/videos/b$a;->c:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fyber/ads/videos/b$a;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 3

    const-string v0, "RewardedVideoClient"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "javascript client called with URL:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/fyber/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fyber/ads/videos/b$a;->a:Landroid/os/Handler;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x7b

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final a(I)V
    .locals 6

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    long-to-double v0, v0

    iput-wide v0, p0, Lcom/fyber/ads/videos/b$a;->b:D

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "%s(\'play\', {tpn:\'%s\', result:\'%s\', duration:\'%.2f\', id:\'%s\'})"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "javascript:Sponsorpay.MBE.SDKInterface.notify"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "local"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Lcom/fyber/c/d/a;->a:Lcom/fyber/c/d/a;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-wide v4, p0, Lcom/fyber/ads/videos/b$a;->b:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/fyber/ads/videos/b$a;->c:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fyber/ads/videos/b$a;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/fyber/ads/videos/b$a;->c:Ljava/lang/String;

    return-void
.end method

.method public final b()V
    .locals 1

    sget-object v0, Lcom/fyber/c/d/a;->c:Lcom/fyber/c/d/a;

    invoke-direct {p0, v0}, Lcom/fyber/ads/videos/b$a;->a(Lcom/fyber/c/d/a;)V

    return-void
.end method

.method public final b(I)V
    .locals 8

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    long-to-double v0, v0

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v3, "%s(\'play\', {tpn:\'%s\', result:\'%s\', currentTime:\'%.3f\', duration:\'%.2f\', id:\'%s\'})"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "javascript:Sponsorpay.MBE.SDKInterface.notify"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "local"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    sget-object v6, Lcom/fyber/c/d/a;->b:Lcom/fyber/c/d/a;

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x4

    iget-wide v6, p0, Lcom/fyber/ads/videos/b$a;->b:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/fyber/ads/videos/b$a;->c:Ljava/lang/String;

    aput-object v1, v4, v0

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fyber/ads/videos/b$a;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final c()V
    .locals 1

    sget-object v0, Lcom/fyber/c/d/a;->d:Lcom/fyber/c/d/a;

    invoke-direct {p0, v0}, Lcom/fyber/ads/videos/b$a;->a(Lcom/fyber/c/d/a;)V

    return-void
.end method

.method public final d()V
    .locals 1

    sget-object v0, Lcom/fyber/c/d/a;->e:Lcom/fyber/c/d/a;

    invoke-direct {p0, v0}, Lcom/fyber/ads/videos/b$a;->a(Lcom/fyber/c/d/a;)V

    return-void
.end method
