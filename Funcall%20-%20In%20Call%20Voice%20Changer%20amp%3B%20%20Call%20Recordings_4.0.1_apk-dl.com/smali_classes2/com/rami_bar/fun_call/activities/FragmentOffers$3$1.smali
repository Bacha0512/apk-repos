.class Lcom/rami_bar/fun_call/activities/FragmentOffers$3$1;
.super Ljava/lang/Object;
.source "FragmentOffers.java"

# interfaces
.implements Lcom/tapjoy/TJPlacementListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rami_bar/fun_call/activities/FragmentOffers$3;->onConnectSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/rami_bar/fun_call/activities/FragmentOffers$3;


# direct methods
.method constructor <init>(Lcom/rami_bar/fun_call/activities/FragmentOffers$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/rami_bar/fun_call/activities/FragmentOffers$3;

    .prologue
    .line 222
    iput-object p1, p0, Lcom/rami_bar/fun_call/activities/FragmentOffers$3$1;->this$1:Lcom/rami_bar/fun_call/activities/FragmentOffers$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentDismiss(Lcom/tapjoy/TJPlacement;)V
    .locals 0
    .param p1, "tjPlacement"    # Lcom/tapjoy/TJPlacement;

    .prologue
    .line 251
    invoke-virtual {p1}, Lcom/tapjoy/TJPlacement;->requestContent()V

    .line 252
    return-void
.end method

.method public onContentReady(Lcom/tapjoy/TJPlacement;)V
    .locals 2
    .param p1, "tjPlacement"    # Lcom/tapjoy/TJPlacement;

    .prologue
    .line 238
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentOffers$3$1;->this$1:Lcom/rami_bar/fun_call/activities/FragmentOffers$3;

    iget-object v0, v0, Lcom/rami_bar/fun_call/activities/FragmentOffers$3;->this$0:Lcom/rami_bar/fun_call/activities/FragmentOffers;

    # getter for: Lcom/rami_bar/fun_call/activities/FragmentOffers;->mTapjoyRequested:Z
    invoke-static {v0}, Lcom/rami_bar/fun_call/activities/FragmentOffers;->access$400(Lcom/rami_bar/fun_call/activities/FragmentOffers;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    invoke-virtual {p1}, Lcom/tapjoy/TJPlacement;->showContent()V

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentOffers$3$1;->this$1:Lcom/rami_bar/fun_call/activities/FragmentOffers$3;

    iget-object v0, v0, Lcom/rami_bar/fun_call/activities/FragmentOffers$3;->this$0:Lcom/rami_bar/fun_call/activities/FragmentOffers;

    const/4 v1, 0x0

    # setter for: Lcom/rami_bar/fun_call/activities/FragmentOffers;->mTapjoyRequested:Z
    invoke-static {v0, v1}, Lcom/rami_bar/fun_call/activities/FragmentOffers;->access$402(Lcom/rami_bar/fun_call/activities/FragmentOffers;Z)Z

    .line 242
    return-void
.end method

.method public onContentShow(Lcom/tapjoy/TJPlacement;)V
    .locals 2
    .param p1, "tjPlacement"    # Lcom/tapjoy/TJPlacement;

    .prologue
    .line 246
    const-string v0, "tapjoy"

    const-string v1, "onContentShow"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    return-void
.end method

.method public onPurchaseRequest(Lcom/tapjoy/TJPlacement;Lcom/tapjoy/TJActionRequest;Ljava/lang/String;)V
    .locals 2
    .param p1, "tjPlacement"    # Lcom/tapjoy/TJPlacement;
    .param p2, "tjActionRequest"    # Lcom/tapjoy/TJActionRequest;
    .param p3, "s"    # Ljava/lang/String;

    .prologue
    .line 256
    const-string v0, "tapjoy"

    const-string v1, "onPurchaseRequest"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    return-void
.end method

.method public onRequestFailure(Lcom/tapjoy/TJPlacement;Lcom/tapjoy/TJError;)V
    .locals 2
    .param p1, "tjPlacement"    # Lcom/tapjoy/TJPlacement;
    .param p2, "tjError"    # Lcom/tapjoy/TJError;

    .prologue
    .line 233
    const-string v0, "tapjoy"

    const-string v1, "onRequestFailure"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    return-void
.end method

.method public onRequestSuccess(Lcom/tapjoy/TJPlacement;)V
    .locals 2
    .param p1, "tjPlacement"    # Lcom/tapjoy/TJPlacement;

    .prologue
    .line 225
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentOffers$3$1;->this$1:Lcom/rami_bar/fun_call/activities/FragmentOffers$3;

    iget-object v0, v0, Lcom/rami_bar/fun_call/activities/FragmentOffers$3;->this$0:Lcom/rami_bar/fun_call/activities/FragmentOffers;

    # getter for: Lcom/rami_bar/fun_call/activities/FragmentOffers;->mTapjoyRequested:Z
    invoke-static {v0}, Lcom/rami_bar/fun_call/activities/FragmentOffers;->access$400(Lcom/rami_bar/fun_call/activities/FragmentOffers;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {p1}, Lcom/tapjoy/TJPlacement;->showContent()V

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentOffers$3$1;->this$1:Lcom/rami_bar/fun_call/activities/FragmentOffers$3;

    iget-object v0, v0, Lcom/rami_bar/fun_call/activities/FragmentOffers$3;->this$0:Lcom/rami_bar/fun_call/activities/FragmentOffers;

    const/4 v1, 0x0

    # setter for: Lcom/rami_bar/fun_call/activities/FragmentOffers;->mTapjoyRequested:Z
    invoke-static {v0, v1}, Lcom/rami_bar/fun_call/activities/FragmentOffers;->access$402(Lcom/rami_bar/fun_call/activities/FragmentOffers;Z)Z

    .line 229
    return-void
.end method

.method public onRewardRequest(Lcom/tapjoy/TJPlacement;Lcom/tapjoy/TJActionRequest;Ljava/lang/String;I)V
    .locals 2
    .param p1, "tjPlacement"    # Lcom/tapjoy/TJPlacement;
    .param p2, "tjActionRequest"    # Lcom/tapjoy/TJActionRequest;
    .param p3, "s"    # Ljava/lang/String;
    .param p4, "i"    # I

    .prologue
    .line 261
    const-string v0, "tapjoy"

    const-string v1, "onRewardRequest"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    return-void
.end method
