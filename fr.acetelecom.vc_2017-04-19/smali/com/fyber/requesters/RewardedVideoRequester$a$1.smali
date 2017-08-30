.class final Lcom/fyber/requesters/RewardedVideoRequester$a$1;
.super Lcom/fyber/utils/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fyber/requesters/RewardedVideoRequester$a;->didReceiveOffers(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/fyber/requesters/RewardedVideoRequester$a;


# direct methods
.method constructor <init>(Lcom/fyber/requesters/RewardedVideoRequester$a;Z)V
    .locals 0

    iput-object p1, p0, Lcom/fyber/requesters/RewardedVideoRequester$a$1;->b:Lcom/fyber/requesters/RewardedVideoRequester$a;

    iput-boolean p2, p0, Lcom/fyber/requesters/RewardedVideoRequester$a$1;->a:Z

    invoke-direct {p0}, Lcom/fyber/utils/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-boolean v0, p0, Lcom/fyber/requesters/RewardedVideoRequester$a$1;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fyber/requesters/RewardedVideoRequester$a$1;->b:Lcom/fyber/requesters/RewardedVideoRequester$a;

    iget-object v0, v0, Lcom/fyber/requesters/RewardedVideoRequester$a;->a:Lcom/fyber/requesters/RewardedVideoRequester;

    iget-object v0, v0, Lcom/fyber/requesters/RewardedVideoRequester;->a:Lcom/fyber/requesters/Callback;

    check-cast v0, Lcom/fyber/requesters/RequestCallback;

    iget-object v2, p0, Lcom/fyber/requesters/RewardedVideoRequester$a$1;->b:Lcom/fyber/requesters/RewardedVideoRequester$a;

    sget-object v1, Lcom/fyber/ads/videos/b;->a:Lcom/fyber/ads/videos/b;

    invoke-virtual {v1}, Lcom/fyber/ads/videos/b;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, v2, Lcom/fyber/requesters/RewardedVideoRequester$a;->a:Lcom/fyber/requesters/RewardedVideoRequester;

    invoke-static {v2}, Lcom/fyber/requesters/RewardedVideoRequester;->a(Lcom/fyber/requesters/RewardedVideoRequester;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/fyber/ads/videos/RewardedVideoActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "EXTRA_AD_FORMAT"

    sget-object v3, Lcom/fyber/ads/AdFormat;->REWARDED_VIDEO:Lcom/fyber/ads/AdFormat;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    :goto_0
    invoke-interface {v0, v1}, Lcom/fyber/requesters/RequestCallback;->onAdAvailable(Landroid/content/Intent;)V

    :goto_1
    return-void

    :cond_0
    const-string v1, "RewardedVideoRequester"

    const-string v2, "Undefined error"

    invoke-static {v1, v2}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/fyber/requesters/RewardedVideoRequester$a$1;->b:Lcom/fyber/requesters/RewardedVideoRequester$a;

    iget-object v0, v0, Lcom/fyber/requesters/RewardedVideoRequester$a;->a:Lcom/fyber/requesters/RewardedVideoRequester;

    iget-object v0, v0, Lcom/fyber/requesters/RewardedVideoRequester;->a:Lcom/fyber/requesters/Callback;

    check-cast v0, Lcom/fyber/requesters/RequestCallback;

    sget-object v1, Lcom/fyber/ads/AdFormat;->REWARDED_VIDEO:Lcom/fyber/ads/AdFormat;

    invoke-interface {v0, v1}, Lcom/fyber/requesters/RequestCallback;->onAdNotAvailable(Lcom/fyber/ads/AdFormat;)V

    goto :goto_1
.end method
