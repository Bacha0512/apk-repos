.class Lcom/rami_bar/fun_call/activities/FragmentOffers$4;
.super Ljava/lang/Object;
.source "FragmentOffers.java"

# interfaces
.implements Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rami_bar/fun_call/activities/FragmentOffers;->ironsourceConnect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rami_bar/fun_call/activities/FragmentOffers;


# direct methods
.method constructor <init>(Lcom/rami_bar/fun_call/activities/FragmentOffers;)V
    .locals 0
    .param p1, "this$0"    # Lcom/rami_bar/fun_call/activities/FragmentOffers;

    .prologue
    .line 278
    iput-object p1, p0, Lcom/rami_bar/fun_call/activities/FragmentOffers$4;->this$0:Lcom/rami_bar/fun_call/activities/FragmentOffers;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRewardedVideoAdClosed()V
    .locals 0

    .prologue
    .line 287
    return-void
.end method

.method public onRewardedVideoAdEnded()V
    .locals 0

    .prologue
    .line 308
    return-void
.end method

.method public onRewardedVideoAdOpened()V
    .locals 0

    .prologue
    .line 282
    return-void
.end method

.method public onRewardedVideoAdRewarded(Lcom/ironsource/mediationsdk/model/Placement;)V
    .locals 0
    .param p1, "placement"    # Lcom/ironsource/mediationsdk/model/Placement;

    .prologue
    .line 313
    return-void
.end method

.method public onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 0
    .param p1, "ironSourceError"    # Lcom/ironsource/mediationsdk/logger/IronSourceError;

    .prologue
    .line 318
    return-void
.end method

.method public onRewardedVideoAdStarted()V
    .locals 0

    .prologue
    .line 303
    return-void
.end method

.method public onRewardedVideoAvailabilityChanged(Z)V
    .locals 2
    .param p1, "b"    # Z

    .prologue
    .line 291
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentOffers$4;->this$0:Lcom/rami_bar/fun_call/activities/FragmentOffers;

    # setter for: Lcom/rami_bar/fun_call/activities/FragmentOffers;->mRewardedVideoAvailable:Z
    invoke-static {v0, p1}, Lcom/rami_bar/fun_call/activities/FragmentOffers;->access$502(Lcom/rami_bar/fun_call/activities/FragmentOffers;Z)Z

    .line 292
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentOffers$4;->this$0:Lcom/rami_bar/fun_call/activities/FragmentOffers;

    invoke-virtual {v0}, Lcom/rami_bar/fun_call/activities/FragmentOffers;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/rami_bar/fun_call/activities/FragmentOffers$4$1;

    invoke-direct {v1, p0}, Lcom/rami_bar/fun_call/activities/FragmentOffers$4$1;-><init>(Lcom/rami_bar/fun_call/activities/FragmentOffers$4;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 298
    return-void
.end method
