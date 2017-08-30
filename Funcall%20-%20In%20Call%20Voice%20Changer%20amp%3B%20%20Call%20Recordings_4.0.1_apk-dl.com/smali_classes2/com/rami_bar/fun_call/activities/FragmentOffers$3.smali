.class Lcom/rami_bar/fun_call/activities/FragmentOffers$3;
.super Ljava/lang/Object;
.source "FragmentOffers.java"

# interfaces
.implements Lcom/tapjoy/TJConnectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rami_bar/fun_call/activities/FragmentOffers;->tapjoyConnect()V
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
    .line 218
    iput-object p1, p0, Lcom/rami_bar/fun_call/activities/FragmentOffers$3;->this$0:Lcom/rami_bar/fun_call/activities/FragmentOffers;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectFailure()V
    .locals 2

    .prologue
    .line 269
    const-string v0, ""

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    return-void
.end method

.method public onConnectSuccess()V
    .locals 3

    .prologue
    .line 221
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentOffers$3;->this$0:Lcom/rami_bar/fun_call/activities/FragmentOffers;

    invoke-virtual {v0}, Lcom/rami_bar/fun_call/activities/FragmentOffers;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/rami_bar/fun_call/utiles/SharedUser;->getInstance(Landroid/content/Context;)Lcom/rami_bar/fun_call/utiles/SharedUser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rami_bar/fun_call/utiles/SharedUser;->getEmail()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/Tapjoy;->setUserID(Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentOffers$3;->this$0:Lcom/rami_bar/fun_call/activities/FragmentOffers;

    const-string v1, "offerwall"

    new-instance v2, Lcom/rami_bar/fun_call/activities/FragmentOffers$3$1;

    invoke-direct {v2, p0}, Lcom/rami_bar/fun_call/activities/FragmentOffers$3$1;-><init>(Lcom/rami_bar/fun_call/activities/FragmentOffers$3;)V

    invoke-static {v1, v2}, Lcom/tapjoy/Tapjoy;->getPlacement(Ljava/lang/String;Lcom/tapjoy/TJPlacementListener;)Lcom/tapjoy/TJPlacement;

    move-result-object v1

    # setter for: Lcom/rami_bar/fun_call/activities/FragmentOffers;->tjPlacement:Lcom/tapjoy/TJPlacement;
    invoke-static {v0, v1}, Lcom/rami_bar/fun_call/activities/FragmentOffers;->access$302(Lcom/rami_bar/fun_call/activities/FragmentOffers;Lcom/tapjoy/TJPlacement;)Lcom/tapjoy/TJPlacement;

    .line 264
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentOffers$3;->this$0:Lcom/rami_bar/fun_call/activities/FragmentOffers;

    # getter for: Lcom/rami_bar/fun_call/activities/FragmentOffers;->tjPlacement:Lcom/tapjoy/TJPlacement;
    invoke-static {v0}, Lcom/rami_bar/fun_call/activities/FragmentOffers;->access$300(Lcom/rami_bar/fun_call/activities/FragmentOffers;)Lcom/tapjoy/TJPlacement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacement;->requestContent()V

    .line 265
    return-void
.end method
