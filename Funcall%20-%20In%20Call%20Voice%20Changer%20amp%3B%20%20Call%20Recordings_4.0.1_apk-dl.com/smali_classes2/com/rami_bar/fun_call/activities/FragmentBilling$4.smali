.class Lcom/rami_bar/fun_call/activities/FragmentBilling$4;
.super Ljava/lang/Object;
.source "FragmentBilling.java"

# interfaces
.implements Lcom/android/vending/billing/util/IabHelper$QueryInventoryFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rami_bar/fun_call/activities/FragmentBilling;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rami_bar/fun_call/activities/FragmentBilling;


# direct methods
.method constructor <init>(Lcom/rami_bar/fun_call/activities/FragmentBilling;)V
    .locals 0
    .param p1, "this$0"    # Lcom/rami_bar/fun_call/activities/FragmentBilling;

    .prologue
    .line 265
    iput-object p1, p0, Lcom/rami_bar/fun_call/activities/FragmentBilling$4;->this$0:Lcom/rami_bar/fun_call/activities/FragmentBilling;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryInventoryFinished(Lcom/android/vending/billing/util/IabResult;Lcom/android/vending/billing/util/Inventory;)V
    .locals 9
    .param p1, "result"    # Lcom/android/vending/billing/util/IabResult;
    .param p2, "inventory"    # Lcom/android/vending/billing/util/Inventory;

    .prologue
    const v8, 0x7f09007a

    const/4 v7, 0x1

    .line 267
    iget-object v5, p0, Lcom/rami_bar/fun_call/activities/FragmentBilling$4;->this$0:Lcom/rami_bar/fun_call/activities/FragmentBilling;

    iget-object v5, v5, Lcom/rami_bar/fun_call/activities/FragmentBilling;->mHelper:Lcom/android/vending/billing/util/IabHelper;

    if-nez v5, :cond_0

    .line 268
    iget-object v5, p0, Lcom/rami_bar/fun_call/activities/FragmentBilling$4;->this$0:Lcom/rami_bar/fun_call/activities/FragmentBilling;

    invoke-virtual {v5}, Lcom/rami_bar/fun_call/activities/FragmentBilling;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    iget-object v6, p0, Lcom/rami_bar/fun_call/activities/FragmentBilling$4;->this$0:Lcom/rami_bar/fun_call/activities/FragmentBilling;

    invoke-virtual {v6, v8}, Lcom/rami_bar/fun_call/activities/FragmentBilling;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 269
    sget-object v5, Lcom/rami_bar/fun_call/utiles/MyApp;->tracker:Lcom/google/android/gms/analytics/Tracker;

    new-instance v6, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v6}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v6

    const-string v7, "error"

    invoke-virtual {v6, v7}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v6

    const-string v7, "onQueryInventoryFinished: mHelper = null"

    invoke-virtual {v6, v7}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 270
    iget-object v5, p0, Lcom/rami_bar/fun_call/activities/FragmentBilling$4;->this$0:Lcom/rami_bar/fun_call/activities/FragmentBilling;

    # getter for: Lcom/rami_bar/fun_call/activities/FragmentBilling;->tv_billing_help:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/rami_bar/fun_call/activities/FragmentBilling;->access$000(Lcom/rami_bar/fun_call/activities/FragmentBilling;)Landroid/widget/TextView;

    move-result-object v5

    invoke-static {v5}, Lcom/rami_bar/fun_call/activities/FragmentBilling;->showViewFromBottom(Landroid/view/View;)V

    .line 314
    :goto_0
    return-void

    .line 274
    :cond_0
    if-nez p1, :cond_1

    .line 275
    iget-object v5, p0, Lcom/rami_bar/fun_call/activities/FragmentBilling$4;->this$0:Lcom/rami_bar/fun_call/activities/FragmentBilling;

    invoke-virtual {v5}, Lcom/rami_bar/fun_call/activities/FragmentBilling;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    iget-object v6, p0, Lcom/rami_bar/fun_call/activities/FragmentBilling$4;->this$0:Lcom/rami_bar/fun_call/activities/FragmentBilling;

    invoke-virtual {v6, v8}, Lcom/rami_bar/fun_call/activities/FragmentBilling;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 276
    sget-object v5, Lcom/rami_bar/fun_call/utiles/MyApp;->tracker:Lcom/google/android/gms/analytics/Tracker;

    new-instance v6, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v6}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v6

    const-string v7, "error"

    invoke-virtual {v6, v7}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v6

    const-string v7, "onQueryInventoryFinished: result = null"

    invoke-virtual {v6, v7}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 277
    iget-object v5, p0, Lcom/rami_bar/fun_call/activities/FragmentBilling$4;->this$0:Lcom/rami_bar/fun_call/activities/FragmentBilling;

    # getter for: Lcom/rami_bar/fun_call/activities/FragmentBilling;->tv_billing_help:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/rami_bar/fun_call/activities/FragmentBilling;->access$000(Lcom/rami_bar/fun_call/activities/FragmentBilling;)Landroid/widget/TextView;

    move-result-object v5

    invoke-static {v5}, Lcom/rami_bar/fun_call/activities/FragmentBilling;->showViewFromBottom(Landroid/view/View;)V

    goto :goto_0

    .line 280
    :cond_1
    invoke-virtual {p1}, Lcom/android/vending/billing/util/IabResult;->isFailure()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 281
    iget-object v5, p0, Lcom/rami_bar/fun_call/activities/FragmentBilling$4;->this$0:Lcom/rami_bar/fun_call/activities/FragmentBilling;

    invoke-virtual {v5}, Lcom/rami_bar/fun_call/activities/FragmentBilling;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    iget-object v6, p0, Lcom/rami_bar/fun_call/activities/FragmentBilling$4;->this$0:Lcom/rami_bar/fun_call/activities/FragmentBilling;

    invoke-virtual {v6, v8}, Lcom/rami_bar/fun_call/activities/FragmentBilling;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 282
    sget-object v5, Lcom/rami_bar/fun_call/utiles/MyApp;->tracker:Lcom/google/android/gms/analytics/Tracker;

    new-instance v6, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v6}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v6

    const-string v7, "error"

    invoke-virtual {v6, v7}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onQueryInventoryFinished: isFailure"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/android/vending/billing/util/IabResult;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 283
    iget-object v5, p0, Lcom/rami_bar/fun_call/activities/FragmentBilling$4;->this$0:Lcom/rami_bar/fun_call/activities/FragmentBilling;

    # getter for: Lcom/rami_bar/fun_call/activities/FragmentBilling;->tv_billing_help:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/rami_bar/fun_call/activities/FragmentBilling;->access$000(Lcom/rami_bar/fun_call/activities/FragmentBilling;)Landroid/widget/TextView;

    move-result-object v5

    invoke-static {v5}, Lcom/rami_bar/fun_call/activities/FragmentBilling;->showViewFromBottom(Landroid/view/View;)V

    goto/16 :goto_0

    .line 286
    :cond_2
    if-nez p2, :cond_3

    .line 287
    iget-object v5, p0, Lcom/rami_bar/fun_call/activities/FragmentBilling$4;->this$0:Lcom/rami_bar/fun_call/activities/FragmentBilling;

    invoke-virtual {v5}, Lcom/rami_bar/fun_call/activities/FragmentBilling;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    iget-object v6, p0, Lcom/rami_bar/fun_call/activities/FragmentBilling$4;->this$0:Lcom/rami_bar/fun_call/activities/FragmentBilling;

    invoke-virtual {v6, v8}, Lcom/rami_bar/fun_call/activities/FragmentBilling;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 288
    sget-object v5, Lcom/rami_bar/fun_call/utiles/MyApp;->tracker:Lcom/google/android/gms/analytics/Tracker;

    new-instance v6, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v6}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v6

    const-string v7, "error"

    invoke-virtual {v6, v7}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v6

    const-string v7, "onQueryInventoryFinished: inventory = null"

    invoke-virtual {v6, v7}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 289
    iget-object v5, p0, Lcom/rami_bar/fun_call/activities/FragmentBilling$4;->this$0:Lcom/rami_bar/fun_call/activities/FragmentBilling;

    # getter for: Lcom/rami_bar/fun_call/activities/FragmentBilling;->tv_billing_help:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/rami_bar/fun_call/activities/FragmentBilling;->access$000(Lcom/rami_bar/fun_call/activities/FragmentBilling;)Landroid/widget/TextView;

    move-result-object v5

    invoke-static {v5}, Lcom/rami_bar/fun_call/activities/FragmentBilling;->showViewFromBottom(Landroid/view/View;)V

    goto/16 :goto_0

    .line 294
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 295
    .local v1, "billing_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/rami_bar/fun_call/objects/receive/Billing;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v5, p0, Lcom/rami_bar/fun_call/activities/FragmentBilling$4;->this$0:Lcom/rami_bar/fun_call/activities/FragmentBilling;

    # getter for: Lcom/rami_bar/fun_call/activities/FragmentBilling;->skuList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/rami_bar/fun_call/activities/FragmentBilling;->access$100(Lcom/rami_bar/fun_call/activities/FragmentBilling;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_6

    .line 296
    iget-object v5, p0, Lcom/rami_bar/fun_call/activities/FragmentBilling$4;->this$0:Lcom/rami_bar/fun_call/activities/FragmentBilling;

    # getter for: Lcom/rami_bar/fun_call/activities/FragmentBilling;->skuList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/rami_bar/fun_call/activities/FragmentBilling;->access$100(Lcom/rami_bar/fun_call/activities/FragmentBilling;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p2, v5}, Lcom/android/vending/billing/util/Inventory;->getSkuDetails(Ljava/lang/String;)Lcom/android/vending/billing/util/SkuDetails;

    move-result-object v4

    .line 297
    .local v4, "skuDetails":Lcom/android/vending/billing/util/SkuDetails;
    if-eqz v4, :cond_4

    .line 298
    new-instance v0, Lcom/rami_bar/fun_call/objects/receive/Billing;

    invoke-direct {v0}, Lcom/rami_bar/fun_call/objects/receive/Billing;-><init>()V

    .line 299
    .local v0, "billing":Lcom/rami_bar/fun_call/objects/receive/Billing;
    iget-object v5, p0, Lcom/rami_bar/fun_call/activities/FragmentBilling$4;->this$0:Lcom/rami_bar/fun_call/activities/FragmentBilling;

    # getter for: Lcom/rami_bar/fun_call/activities/FragmentBilling;->skuList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/rami_bar/fun_call/activities/FragmentBilling;->access$100(Lcom/rami_bar/fun_call/activities/FragmentBilling;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p2, v5}, Lcom/android/vending/billing/util/Inventory;->getSkuDetails(Ljava/lang/String;)Lcom/android/vending/billing/util/SkuDetails;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/vending/billing/util/SkuDetails;->getDescription()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/rami_bar/fun_call/objects/receive/Billing;->decription:Ljava/lang/String;

    .line 300
    iget-object v5, p0, Lcom/rami_bar/fun_call/activities/FragmentBilling$4;->this$0:Lcom/rami_bar/fun_call/activities/FragmentBilling;

    # getter for: Lcom/rami_bar/fun_call/activities/FragmentBilling;->skuList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/rami_bar/fun_call/activities/FragmentBilling;->access$100(Lcom/rami_bar/fun_call/activities/FragmentBilling;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p2, v5}, Lcom/android/vending/billing/util/Inventory;->getSkuDetails(Ljava/lang/String;)Lcom/android/vending/billing/util/SkuDetails;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/vending/billing/util/SkuDetails;->getPrice()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/rami_bar/fun_call/objects/receive/Billing;->price:Ljava/lang/String;

    .line 301
    iget-object v5, p0, Lcom/rami_bar/fun_call/activities/FragmentBilling$4;->this$0:Lcom/rami_bar/fun_call/activities/FragmentBilling;

    # getter for: Lcom/rami_bar/fun_call/activities/FragmentBilling;->skuList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/rami_bar/fun_call/activities/FragmentBilling;->access$100(Lcom/rami_bar/fun_call/activities/FragmentBilling;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p2, v5}, Lcom/android/vending/billing/util/Inventory;->getSkuDetails(Ljava/lang/String;)Lcom/android/vending/billing/util/SkuDetails;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/vending/billing/util/SkuDetails;->getSku()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/rami_bar/fun_call/objects/receive/Billing;->sku:Ljava/lang/String;

    .line 302
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    .end local v0    # "billing":Lcom/rami_bar/fun_call/objects/receive/Billing;
    :cond_4
    iget-object v5, p0, Lcom/rami_bar/fun_call/activities/FragmentBilling$4;->this$0:Lcom/rami_bar/fun_call/activities/FragmentBilling;

    # getter for: Lcom/rami_bar/fun_call/activities/FragmentBilling;->skuList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/rami_bar/fun_call/activities/FragmentBilling;->access$100(Lcom/rami_bar/fun_call/activities/FragmentBilling;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p2, v5}, Lcom/android/vending/billing/util/Inventory;->hasPurchase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 307
    :try_start_0
    iget-object v5, p0, Lcom/rami_bar/fun_call/activities/FragmentBilling$4;->this$0:Lcom/rami_bar/fun_call/activities/FragmentBilling;

    iget-object v6, v5, Lcom/rami_bar/fun_call/activities/FragmentBilling;->mHelper:Lcom/android/vending/billing/util/IabHelper;

    iget-object v5, p0, Lcom/rami_bar/fun_call/activities/FragmentBilling$4;->this$0:Lcom/rami_bar/fun_call/activities/FragmentBilling;

    # getter for: Lcom/rami_bar/fun_call/activities/FragmentBilling;->skuList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/rami_bar/fun_call/activities/FragmentBilling;->access$100(Lcom/rami_bar/fun_call/activities/FragmentBilling;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p2, v5}, Lcom/android/vending/billing/util/Inventory;->getPurchase(Ljava/lang/String;)Lcom/android/vending/billing/util/Purchase;

    move-result-object v5

    iget-object v7, p0, Lcom/rami_bar/fun_call/activities/FragmentBilling$4;->this$0:Lcom/rami_bar/fun_call/activities/FragmentBilling;

    iget-object v7, v7, Lcom/rami_bar/fun_call/activities/FragmentBilling;->mConsumeFinishedListener:Lcom/android/vending/billing/util/IabHelper$OnConsumeFinishedListener;

    invoke-virtual {v6, v5, v7}, Lcom/android/vending/billing/util/IabHelper;->consumeAsync(Lcom/android/vending/billing/util/Purchase;Lcom/android/vending/billing/util/IabHelper$OnConsumeFinishedListener;)V
    :try_end_0
    .catch Lcom/android/vending/billing/util/IabHelper$IabAsyncInProgressException; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    :cond_5
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 308
    :catch_0
    move-exception v2

    .line 309
    .local v2, "e":Lcom/android/vending/billing/util/IabHelper$IabAsyncInProgressException;
    invoke-virtual {v2}, Lcom/android/vending/billing/util/IabHelper$IabAsyncInProgressException;->printStackTrace()V

    goto :goto_2

    .line 313
    .end local v2    # "e":Lcom/android/vending/billing/util/IabHelper$IabAsyncInProgressException;
    .end local v4    # "skuDetails":Lcom/android/vending/billing/util/SkuDetails;
    :cond_6
    iget-object v5, p0, Lcom/rami_bar/fun_call/activities/FragmentBilling$4;->this$0:Lcom/rami_bar/fun_call/activities/FragmentBilling;

    # invokes: Lcom/rami_bar/fun_call/activities/FragmentBilling;->setBillingListView(Ljava/util/ArrayList;)V
    invoke-static {v5, v1}, Lcom/rami_bar/fun_call/activities/FragmentBilling;->access$200(Lcom/rami_bar/fun_call/activities/FragmentBilling;Ljava/util/ArrayList;)V

    goto/16 :goto_0
.end method
