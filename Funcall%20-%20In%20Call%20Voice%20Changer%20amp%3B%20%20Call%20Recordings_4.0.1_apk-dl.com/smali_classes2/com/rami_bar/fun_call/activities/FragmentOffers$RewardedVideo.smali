.class Lcom/rami_bar/fun_call/activities/FragmentOffers$RewardedVideo;
.super Ljava/lang/Object;
.source "FragmentOffers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rami_bar/fun_call/activities/FragmentOffers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RewardedVideo"
.end annotation


# instance fields
.field public advertiser:Ljava/lang/String;

.field final synthetic this$0:Lcom/rami_bar/fun_call/activities/FragmentOffers;

.field private tran_id:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field private user_id:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/rami_bar/fun_call/activities/FragmentOffers;)V
    .locals 2

    .prologue
    .line 355
    iput-object p1, p0, Lcom/rami_bar/fun_call/activities/FragmentOffers$RewardedVideo;->this$0:Lcom/rami_bar/fun_call/activities/FragmentOffers;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 356
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentOffers$RewardedVideo;->this$0:Lcom/rami_bar/fun_call/activities/FragmentOffers;

    invoke-virtual {v0}, Lcom/rami_bar/fun_call/activities/FragmentOffers;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/rami_bar/fun_call/utiles/SharedUser;->getInstance(Landroid/content/Context;)Lcom/rami_bar/fun_call/utiles/SharedUser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rami_bar/fun_call/utiles/SharedUser;->getEmail()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentOffers$RewardedVideo;->user_id:Ljava/lang/String;

    .line 357
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentOffers$RewardedVideo;->tran_id:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/rami_bar/fun_call/activities/FragmentOffers;Lcom/rami_bar/fun_call/activities/FragmentOffers$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/rami_bar/fun_call/activities/FragmentOffers;
    .param p2, "x1"    # Lcom/rami_bar/fun_call/activities/FragmentOffers$1;

    .prologue
    .line 355
    invoke-direct {p0, p1}, Lcom/rami_bar/fun_call/activities/FragmentOffers$RewardedVideo;-><init>(Lcom/rami_bar/fun_call/activities/FragmentOffers;)V

    return-void
.end method
