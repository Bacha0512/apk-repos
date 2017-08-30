.class Lcom/rami_bar/fun_call/activities/FragmentOffers$4$1;
.super Ljava/lang/Object;
.source "FragmentOffers.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rami_bar/fun_call/activities/FragmentOffers$4;->onRewardedVideoAvailabilityChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/rami_bar/fun_call/activities/FragmentOffers$4;


# direct methods
.method constructor <init>(Lcom/rami_bar/fun_call/activities/FragmentOffers$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/rami_bar/fun_call/activities/FragmentOffers$4;

    .prologue
    .line 292
    iput-object p1, p0, Lcom/rami_bar/fun_call/activities/FragmentOffers$4$1;->this$1:Lcom/rami_bar/fun_call/activities/FragmentOffers$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentOffers$4$1;->this$1:Lcom/rami_bar/fun_call/activities/FragmentOffers$4;

    iget-object v0, v0, Lcom/rami_bar/fun_call/activities/FragmentOffers$4;->this$0:Lcom/rami_bar/fun_call/activities/FragmentOffers;

    # invokes: Lcom/rami_bar/fun_call/activities/FragmentOffers;->setAdsListView()V
    invoke-static {v0}, Lcom/rami_bar/fun_call/activities/FragmentOffers;->access$600(Lcom/rami_bar/fun_call/activities/FragmentOffers;)V

    .line 296
    return-void
.end method
