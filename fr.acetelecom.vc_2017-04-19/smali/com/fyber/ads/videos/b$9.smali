.class final Lcom/fyber/ads/videos/b$9;
.super Lcom/fyber/utils/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/ads/videos/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/fyber/ads/videos/b;


# direct methods
.method constructor <init>(Lcom/fyber/ads/videos/b;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/fyber/ads/videos/b$9;->a:Lcom/fyber/ads/videos/b;

    invoke-direct {p0, p2}, Lcom/fyber/utils/z;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method protected final a()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/fyber/ads/videos/b$9;->a:Lcom/fyber/ads/videos/b;

    invoke-static {v0}, Lcom/fyber/ads/videos/b;->r(Lcom/fyber/ads/videos/b;)Lcom/fyber/ads/videos/RewardedVideoActivity;

    move-result-object v0

    return-object v0
.end method

.method protected final a(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/fyber/ads/videos/b$9;->a:Lcom/fyber/ads/videos/b;

    invoke-static {v0}, Lcom/fyber/ads/videos/b;->r(Lcom/fyber/ads/videos/b;)Lcom/fyber/ads/videos/RewardedVideoActivity;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, p1}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0, p2}, Lcom/fyber/ads/videos/b$9;->a(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method protected final a(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 5

    const/4 v3, -0x1

    const/4 v4, 0x1

    const-string v0, "requestOffers"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fyber/ads/videos/b$9;->a:Lcom/fyber/ads/videos/b;

    const-string v1, "n"

    invoke-virtual {p2, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/fyber/ads/videos/b;->a(Lcom/fyber/ads/videos/b;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "start"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/fyber/ads/videos/b$9;->a:Lcom/fyber/ads/videos/b;

    const-string v1, "status"

    invoke-virtual {p2, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fyber/ads/videos/b;->c(Lcom/fyber/ads/videos/b;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "validate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "tpn"

    invoke-virtual {p2, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "RewardedVideoClient"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "RewardedVideo client asks to validate a third party network: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v4}, Ljava/util/HashMap;-><init>(I)V

    const-string v2, "id"

    const-string v3, "id"

    invoke-virtual {p2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/fyber/mediation/b;->a:Lcom/fyber/mediation/b;

    iget-object v3, p0, Lcom/fyber/ads/videos/b$9;->a:Lcom/fyber/ads/videos/b;

    invoke-static {v3}, Lcom/fyber/ads/videos/b;->k(Lcom/fyber/ads/videos/b;)Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/fyber/ads/videos/b$9$1;

    invoke-direct {v4, p0}, Lcom/fyber/ads/videos/b$9$1;-><init>(Lcom/fyber/ads/videos/b$9;)V

    invoke-virtual {v2, v3, v0, v1, v4}, Lcom/fyber/mediation/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Lcom/fyber/ads/videos/mediation/a;)V

    goto :goto_0

    :cond_3
    const-string v0, "play"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "tpn"

    invoke-virtual {p2, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "local"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v0, p0, Lcom/fyber/ads/videos/b$9;->a:Lcom/fyber/ads/videos/b;

    invoke-static {v0}, Lcom/fyber/ads/videos/b;->r(Lcom/fyber/ads/videos/b;)Lcom/fyber/ads/videos/RewardedVideoActivity;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/fyber/ads/videos/b$9;->a:Lcom/fyber/ads/videos/b;

    invoke-static {v0}, Lcom/fyber/ads/videos/b;->s(Lcom/fyber/ads/videos/b;)Lcom/fyber/c/d/b;

    move-result-object v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/fyber/ads/videos/b$9;->a:Lcom/fyber/ads/videos/b;

    new-instance v1, Lcom/fyber/ads/videos/b$a;

    iget-object v2, p0, Lcom/fyber/ads/videos/b$9;->a:Lcom/fyber/ads/videos/b;

    invoke-static {v2}, Lcom/fyber/ads/videos/b;->t(Lcom/fyber/ads/videos/b;)Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/fyber/ads/videos/b$a;-><init>(Landroid/os/Handler;)V

    invoke-static {v0, v1}, Lcom/fyber/ads/videos/b;->a(Lcom/fyber/ads/videos/b;Lcom/fyber/c/d/b;)Lcom/fyber/c/d/b;

    :cond_4
    iget-object v0, p0, Lcom/fyber/ads/videos/b$9;->a:Lcom/fyber/ads/videos/b;

    new-instance v1, Lcom/fyber/c/d/d$a;

    invoke-direct {v1}, Lcom/fyber/c/d/d$a;-><init>()V

    iget-object v2, p0, Lcom/fyber/ads/videos/b$9;->a:Lcom/fyber/ads/videos/b;

    invoke-static {v2}, Lcom/fyber/ads/videos/b;->s(Lcom/fyber/ads/videos/b;)Lcom/fyber/c/d/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fyber/c/d/d$a;->a(Lcom/fyber/c/d/b;)Lcom/fyber/c/d/d$a;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {p2, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fyber/c/d/d$a;->a(Ljava/lang/String;)Lcom/fyber/c/d/d$a;

    move-result-object v1

    const-string v2, "clickThroughUrl"

    invoke-virtual {p2, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fyber/c/d/d$a;->b(Ljava/lang/String;)Lcom/fyber/c/d/d$a;

    move-result-object v1

    const-string v2, "alertMessage"

    invoke-virtual {p2, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fyber/c/d/d$a;->d(Ljava/lang/String;)Lcom/fyber/c/d/d$a;

    move-result-object v1

    const-string v2, "showAlert"

    invoke-virtual {p2, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fyber/c/d/d$a;->e(Ljava/lang/String;)Lcom/fyber/c/d/d$a;

    move-result-object v1

    iget-object v2, p0, Lcom/fyber/ads/videos/b$9;->a:Lcom/fyber/ads/videos/b;

    invoke-virtual {v1, v2}, Lcom/fyber/c/d/d$a;->a(Lcom/fyber/c/d/d$d;)Lcom/fyber/c/d/d$a;

    move-result-object v1

    new-instance v2, Lcom/fyber/ads/videos/a;

    invoke-direct {v2}, Lcom/fyber/ads/videos/a;-><init>()V

    invoke-virtual {v1, v2}, Lcom/fyber/c/d/d$a;->a(Lcom/fyber/c/d/d$b;)Lcom/fyber/c/d/d$a;

    move-result-object v1

    iget-object v2, p0, Lcom/fyber/ads/videos/b$9;->a:Lcom/fyber/ads/videos/b;

    invoke-static {v2}, Lcom/fyber/ads/videos/b;->r(Lcom/fyber/ads/videos/b;)Lcom/fyber/ads/videos/RewardedVideoActivity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fyber/c/d/d$a;->a(Landroid/app/Activity;)Lcom/fyber/c/d/d;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fyber/ads/videos/b;->a(Lcom/fyber/ads/videos/b;Lcom/fyber/c/d/d;)Lcom/fyber/c/d/d;

    iget-object v0, p0, Lcom/fyber/ads/videos/b$9;->a:Lcom/fyber/ads/videos/b;

    invoke-static {v0}, Lcom/fyber/ads/videos/b;->u(Lcom/fyber/ads/videos/b;)Lcom/fyber/c/d/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/c/d/d;->a()V

    iget-object v0, p0, Lcom/fyber/ads/videos/b$9;->a:Lcom/fyber/ads/videos/b;

    invoke-static {v0}, Lcom/fyber/ads/videos/b;->u(Lcom/fyber/ads/videos/b;)Lcom/fyber/c/d/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/c/d/d;->b()V

    iget-object v0, p0, Lcom/fyber/ads/videos/b$9;->a:Lcom/fyber/ads/videos/b;

    invoke-static {v0}, Lcom/fyber/ads/videos/b;->r(Lcom/fyber/ads/videos/b;)Lcom/fyber/ads/videos/RewardedVideoActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/fyber/ads/videos/b$9;->a:Lcom/fyber/ads/videos/b;

    invoke-static {v1}, Lcom/fyber/ads/videos/b;->u(Lcom/fyber/ads/videos/b;)Lcom/fyber/c/d/d;

    move-result-object v1

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Lcom/fyber/ads/videos/RewardedVideoActivity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    :cond_5
    const-string v0, "RewardedVideoClient"

    const-string v1, "There was an issue - we were unable to attach the video player. "

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v4}, Ljava/util/HashMap;-><init>(I)V

    const-string v2, "id"

    const-string v3, "id"

    invoke-virtual {p2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "RewardedVideoClient"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "RewardedVideo client asks to play an offer from a third party network:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/fyber/mediation/b;->a:Lcom/fyber/mediation/b;

    iget-object v3, p0, Lcom/fyber/ads/videos/b$9;->a:Lcom/fyber/ads/videos/b;

    invoke-static {v3}, Lcom/fyber/ads/videos/b;->r(Lcom/fyber/ads/videos/b;)Lcom/fyber/ads/videos/RewardedVideoActivity;

    move-result-object v3

    new-instance v4, Lcom/fyber/ads/videos/b$9$2;

    invoke-direct {v4, p0}, Lcom/fyber/ads/videos/b$9$2;-><init>(Lcom/fyber/ads/videos/b$9;)V

    invoke-virtual {v2, v3, v0, v1, v4}, Lcom/fyber/mediation/b;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/util/HashMap;Lcom/fyber/ads/videos/mediation/b;)V

    goto/16 :goto_0

    :cond_7
    const-string v0, "jud"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/fyber/user/User;->mapToString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fyber/utils/StringUtils;->nullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v0, ""

    :cond_8
    const-string v1, "javascript:Sponsorpay.MBE.SDKInterface.trigger(\'jud\', \'%s\')"

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "RewardedVideoClient"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "JUD tracking event will be called:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/fyber/ads/videos/b$9;->a:Lcom/fyber/ads/videos/b;

    invoke-static {v1, v0}, Lcom/fyber/ads/videos/b;->b(Lcom/fyber/ads/videos/b;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected final b()V
    .locals 2

    iget-object v0, p0, Lcom/fyber/ads/videos/b$9;->a:Lcom/fyber/ads/videos/b;

    const-string v1, "USER_ENGAGED"

    invoke-static {v0, v1}, Lcom/fyber/ads/videos/b;->c(Lcom/fyber/ads/videos/b;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fyber/ads/videos/b$9;->a:Lcom/fyber/ads/videos/b;

    sget-object v1, Lcom/fyber/ads/videos/c$a;->d:Lcom/fyber/ads/videos/c$a;

    invoke-static {v0, v1}, Lcom/fyber/ads/videos/b;->a(Lcom/fyber/ads/videos/b;Lcom/fyber/ads/videos/c$a;)V

    return-void
.end method

.method protected final c()V
    .locals 2

    iget-object v0, p0, Lcom/fyber/ads/videos/b$9;->a:Lcom/fyber/ads/videos/b;

    sget-object v1, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->ERROR_PLAY_STORE_UNAVAILABLE:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    invoke-static {v1}, Lcom/fyber/utils/t;->a(Lcom/fyber/Fyber$Settings$UIStringIdentifier;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fyber/ads/videos/b;->a(Lcom/fyber/ads/videos/b;Ljava/lang/String;)V

    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v3, -0x1

    const-string v0, "RewardedVideoClient"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onReceivedError url - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "market://"

    invoke-virtual {p4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "RewardedVideoClient"

    const-string v1, "discarding error - market:// url"

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/fyber/ads/videos/b$9;->a:Lcom/fyber/ads/videos/b;

    invoke-static {v0}, Lcom/fyber/ads/videos/b;->v(Lcom/fyber/ads/videos/b;)Lcom/fyber/ads/videos/d;

    move-result-object v0

    sget-object v1, Lcom/fyber/ads/videos/d;->b:Lcom/fyber/ads/videos/d;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/fyber/ads/videos/b$9;->a:Lcom/fyber/ads/videos/b;

    sget-object v1, Lcom/fyber/ads/videos/c$a;->e:Lcom/fyber/ads/videos/c$a;

    invoke-static {v0, v1}, Lcom/fyber/ads/videos/b;->a(Lcom/fyber/ads/videos/b;Lcom/fyber/ads/videos/c$a;)V

    iget-object v0, p0, Lcom/fyber/ads/videos/b$9;->a:Lcom/fyber/ads/videos/b;

    invoke-static {v0}, Lcom/fyber/ads/videos/b;->o(Lcom/fyber/ads/videos/b;)V

    :goto_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/fyber/utils/z;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/fyber/ads/videos/b$9;->a:Lcom/fyber/ads/videos/b;

    invoke-static {v0}, Lcom/fyber/ads/videos/b;->u(Lcom/fyber/ads/videos/b;)Lcom/fyber/c/d/d;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/fyber/ads/videos/b$9;->a:Lcom/fyber/ads/videos/b;

    invoke-static {v0}, Lcom/fyber/ads/videos/b;->u(Lcom/fyber/ads/videos/b;)Lcom/fyber/c/d/d;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3, v3}, Lcom/fyber/c/d/d;->onError(Landroid/media/MediaPlayer;II)Z

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/fyber/ads/videos/b$9;->a:Lcom/fyber/ads/videos/b;

    sget-object v1, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->RV_ERROR_DIALOG_MESSAGE_DEFAULT:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    invoke-static {v1}, Lcom/fyber/utils/t;->a(Lcom/fyber/Fyber$Settings$UIStringIdentifier;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fyber/ads/videos/b;->a(Lcom/fyber/ads/videos/b;Ljava/lang/String;)V

    goto :goto_1
.end method
