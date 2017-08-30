.class interface abstract Lcom/rami_bar/fun_call/activities/FragmentOffers$RewardedVideoInterface;
.super Ljava/lang/Object;
.source "FragmentOffers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rami_bar/fun_call/activities/FragmentOffers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "RewardedVideoInterface"
.end annotation


# virtual methods
.method public abstract send(Lcom/rami_bar/fun_call/activities/FragmentOffers$RewardedVideo;)Lretrofit2/Call;
    .param p1    # Lcom/rami_bar/fun_call/activities/FragmentOffers$RewardedVideo;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/rami_bar/fun_call/activities/FragmentOffers$RewardedVideo;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lokhttp3/ResponseBody;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "advertisers/from_client.php"
    .end annotation
.end method
