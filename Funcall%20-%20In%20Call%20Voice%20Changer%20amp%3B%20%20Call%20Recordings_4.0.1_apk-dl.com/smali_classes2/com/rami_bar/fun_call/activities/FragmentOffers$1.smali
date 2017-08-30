.class Lcom/rami_bar/fun_call/activities/FragmentOffers$1;
.super Ljava/lang/Object;
.source "FragmentOffers.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rami_bar/fun_call/activities/FragmentOffers;->handleCallbacks()V
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
    .line 102
    iput-object p1, p0, Lcom/rami_bar/fun_call/activities/FragmentOffers$1;->this$0:Lcom/rami_bar/fun_call/activities/FragmentOffers;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 105
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rami_bar/fun_call/objects/receive/JsonGetCallerInfo$Offer;

    .line 107
    .local v0, "item":Lcom/rami_bar/fun_call/objects/receive/JsonGetCallerInfo$Offer;
    iget-object v2, v0, Lcom/rami_bar/fun_call/objects/receive/JsonGetCallerInfo$Offer;->action:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 118
    :goto_1
    return-void

    .line 107
    :sswitch_0
    const-string v3, "tapjoy_offerwall"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_1
    const-string v3, "ironsource_offerwall"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v3, "ironsource_videos"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    .line 109
    :pswitch_0
    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/FragmentOffers$1;->this$0:Lcom/rami_bar/fun_call/activities/FragmentOffers;

    # invokes: Lcom/rami_bar/fun_call/activities/FragmentOffers;->onTapJoyOfferwall()V
    invoke-static {v1}, Lcom/rami_bar/fun_call/activities/FragmentOffers;->access$000(Lcom/rami_bar/fun_call/activities/FragmentOffers;)V

    goto :goto_1

    .line 112
    :pswitch_1
    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/FragmentOffers$1;->this$0:Lcom/rami_bar/fun_call/activities/FragmentOffers;

    # invokes: Lcom/rami_bar/fun_call/activities/FragmentOffers;->onIronsourceOfferwall()V
    invoke-static {v1}, Lcom/rami_bar/fun_call/activities/FragmentOffers;->access$100(Lcom/rami_bar/fun_call/activities/FragmentOffers;)V

    goto :goto_1

    .line 115
    :pswitch_2
    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/FragmentOffers$1;->this$0:Lcom/rami_bar/fun_call/activities/FragmentOffers;

    # invokes: Lcom/rami_bar/fun_call/activities/FragmentOffers;->onIronsourceVideo()V
    invoke-static {v1}, Lcom/rami_bar/fun_call/activities/FragmentOffers;->access$200(Lcom/rami_bar/fun_call/activities/FragmentOffers;)V

    goto :goto_1

    .line 107
    :sswitch_data_0
    .sparse-switch
        -0x60c2a3cc -> :sswitch_2
        -0x59240348 -> :sswitch_0
        0xa043fca -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
