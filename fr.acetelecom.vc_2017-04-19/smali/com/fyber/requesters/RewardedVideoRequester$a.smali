.class final Lcom/fyber/requesters/RewardedVideoRequester$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/fyber/ads/videos/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/requesters/RewardedVideoRequester;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/fyber/requesters/RewardedVideoRequester;


# direct methods
.method private constructor <init>(Lcom/fyber/requesters/RewardedVideoRequester;)V
    .locals 0

    iput-object p1, p0, Lcom/fyber/requesters/RewardedVideoRequester$a;->a:Lcom/fyber/requesters/RewardedVideoRequester;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/fyber/requesters/RewardedVideoRequester;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/fyber/requesters/RewardedVideoRequester$a;-><init>(Lcom/fyber/requesters/RewardedVideoRequester;)V

    return-void
.end method


# virtual methods
.method public final didChangeStatus(Lcom/fyber/ads/videos/c$a;)V
    .locals 2

    sget-object v0, Lcom/fyber/ads/videos/c$a;->e:Lcom/fyber/ads/videos/c$a;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/fyber/requesters/RewardedVideoRequester$a;->a:Lcom/fyber/requesters/RewardedVideoRequester;

    sget-object v1, Lcom/fyber/requesters/RequestError;->ERROR_REQUESTING_ADS:Lcom/fyber/requesters/RequestError;

    invoke-virtual {v0, v1}, Lcom/fyber/requesters/RewardedVideoRequester;->a(Lcom/fyber/requesters/RequestError;)V

    :cond_0
    return-void
.end method

.method public final didReceiveOffers(Z)V
    .locals 2

    iget-object v0, p0, Lcom/fyber/requesters/RewardedVideoRequester$a;->a:Lcom/fyber/requesters/RewardedVideoRequester;

    new-instance v1, Lcom/fyber/requesters/RewardedVideoRequester$a$1;

    invoke-direct {v1, p0, p1}, Lcom/fyber/requesters/RewardedVideoRequester$a$1;-><init>(Lcom/fyber/requesters/RewardedVideoRequester$a;Z)V

    invoke-virtual {v0, v1}, Lcom/fyber/requesters/RewardedVideoRequester;->a(Lcom/fyber/utils/d;)V

    return-void
.end method
