.class Lcom/rami_bar/fun_call/activities/FragmentBilling$2;
.super Ljava/lang/Object;
.source "FragmentBilling.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rami_bar/fun_call/activities/FragmentBilling;->setBillingListView(Ljava/util/ArrayList;)V
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
    .line 153
    iput-object p1, p0, Lcom/rami_bar/fun_call/activities/FragmentBilling$2;->this$0:Lcom/rami_bar/fun_call/activities/FragmentBilling;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
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
    .line 156
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/rami_bar/fun_call/objects/receive/Billing;

    .line 159
    .local v7, "item":Lcom/rami_bar/fun_call/objects/receive/Billing;
    :try_start_0
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentBilling$2;->this$0:Lcom/rami_bar/fun_call/activities/FragmentBilling;

    iget-object v0, v0, Lcom/rami_bar/fun_call/activities/FragmentBilling;->mHelper:Lcom/android/vending/billing/util/IabHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentBilling$2;->this$0:Lcom/rami_bar/fun_call/activities/FragmentBilling;

    iget-object v0, v0, Lcom/rami_bar/fun_call/activities/FragmentBilling;->mHelper:Lcom/android/vending/billing/util/IabHelper;

    invoke-virtual {v0}, Lcom/android/vending/billing/util/IabHelper;->flagEndAsync()V

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentBilling$2;->this$0:Lcom/rami_bar/fun_call/activities/FragmentBilling;

    iget-object v0, v0, Lcom/rami_bar/fun_call/activities/FragmentBilling;->mHelper:Lcom/android/vending/billing/util/IabHelper;

    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/FragmentBilling$2;->this$0:Lcom/rami_bar/fun_call/activities/FragmentBilling;

    invoke-virtual {v1}, Lcom/rami_bar/fun_call/activities/FragmentBilling;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, v7, Lcom/rami_bar/fun_call/objects/receive/Billing;->sku:Ljava/lang/String;

    const/16 v3, 0x3e9

    new-instance v4, Lcom/rami_bar/fun_call/activities/FragmentBilling$2$1;

    invoke-direct {v4, p0}, Lcom/rami_bar/fun_call/activities/FragmentBilling$2$1;-><init>(Lcom/rami_bar/fun_call/activities/FragmentBilling$2;)V

    iget-object v5, p0, Lcom/rami_bar/fun_call/activities/FragmentBilling$2;->this$0:Lcom/rami_bar/fun_call/activities/FragmentBilling;

    .line 188
    invoke-virtual {v5}, Lcom/rami_bar/fun_call/activities/FragmentBilling;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/rami_bar/fun_call/utiles/SharedUser;->getInstance(Landroid/content/Context;)Lcom/rami_bar/fun_call/utiles/SharedUser;

    move-result-object v5

    invoke-virtual {v5}, Lcom/rami_bar/fun_call/utiles/SharedUser;->getEmail()Ljava/lang/String;

    move-result-object v5

    .line 160
    invoke-virtual/range {v0 .. v5}, Lcom/android/vending/billing/util/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/android/vending/billing/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    .line 189
    sget-object v0, Lcom/rami_bar/fun_call/utiles/MyApp;->tracker:Lcom/google/android/gms/analytics/Tracker;

    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    const-string v2, "billing"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    iget-object v2, v7, Lcom/rami_bar/fun_call/objects/receive/Billing;->sku:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :goto_0
    return-void

    .line 190
    :catch_0
    move-exception v6

    .line 191
    .local v6, "e":Ljava/lang/Exception;
    sget-object v0, Lcom/rami_bar/fun_call/utiles/MyApp;->tracker:Lcom/google/android/gms/analytics/Tracker;

    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    const-string v2, "billing"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    const-string v2, "error"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 192
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentBilling$2;->this$0:Lcom/rami_bar/fun_call/activities/FragmentBilling;

    # getter for: Lcom/rami_bar/fun_call/activities/FragmentBilling;->tv_billing_help:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/rami_bar/fun_call/activities/FragmentBilling;->access$000(Lcom/rami_bar/fun_call/activities/FragmentBilling;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v0}, Lcom/rami_bar/fun_call/activities/FragmentBilling;->showViewFromBottom(Landroid/view/View;)V

    goto :goto_0
.end method
