.class Lcom/rami_bar/fun_call/activities/FragmentBilling$2$1;
.super Ljava/lang/Object;
.source "FragmentBilling.java"

# interfaces
.implements Lcom/android/vending/billing/util/IabHelper$OnIabPurchaseFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rami_bar/fun_call/activities/FragmentBilling$2;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/rami_bar/fun_call/activities/FragmentBilling$2;


# direct methods
.method constructor <init>(Lcom/rami_bar/fun_call/activities/FragmentBilling$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/rami_bar/fun_call/activities/FragmentBilling$2;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/rami_bar/fun_call/activities/FragmentBilling$2$1;->this$1:Lcom/rami_bar/fun_call/activities/FragmentBilling$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIabPurchaseFinished(Lcom/android/vending/billing/util/IabResult;Lcom/android/vending/billing/util/Purchase;)V
    .locals 5
    .param p1, "result"    # Lcom/android/vending/billing/util/IabResult;
    .param p2, "purchase"    # Lcom/android/vending/billing/util/Purchase;

    .prologue
    const v4, 0x7f09007a

    const/4 v3, 0x1

    .line 163
    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/FragmentBilling$2$1;->this$1:Lcom/rami_bar/fun_call/activities/FragmentBilling$2;

    iget-object v1, v1, Lcom/rami_bar/fun_call/activities/FragmentBilling$2;->this$0:Lcom/rami_bar/fun_call/activities/FragmentBilling;

    iget-object v1, v1, Lcom/rami_bar/fun_call/activities/FragmentBilling;->mHelper:Lcom/android/vending/billing/util/IabHelper;

    if-nez v1, :cond_0

    .line 187
    :goto_0
    return-void

    .line 167
    :cond_0
    invoke-virtual {p1}, Lcom/android/vending/billing/util/IabResult;->isFailure()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 168
    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/FragmentBilling$2$1;->this$1:Lcom/rami_bar/fun_call/activities/FragmentBilling$2;

    iget-object v1, v1, Lcom/rami_bar/fun_call/activities/FragmentBilling$2;->this$0:Lcom/rami_bar/fun_call/activities/FragmentBilling;

    invoke-virtual {v1}, Lcom/rami_bar/fun_call/activities/FragmentBilling;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/rami_bar/fun_call/activities/FragmentBilling$2$1;->this$1:Lcom/rami_bar/fun_call/activities/FragmentBilling$2;

    iget-object v2, v2, Lcom/rami_bar/fun_call/activities/FragmentBilling$2;->this$0:Lcom/rami_bar/fun_call/activities/FragmentBilling;

    invoke-virtual {v2, v4}, Lcom/rami_bar/fun_call/activities/FragmentBilling;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 170
    sget-object v1, Lcom/rami_bar/fun_call/utiles/MyApp;->tracker:Lcom/google/android/gms/analytics/Tracker;

    new-instance v2, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    const-string v3, "error"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PurchaseFinishedisFailure"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/vending/billing/util/IabResult;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 171
    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/FragmentBilling$2$1;->this$1:Lcom/rami_bar/fun_call/activities/FragmentBilling$2;

    iget-object v1, v1, Lcom/rami_bar/fun_call/activities/FragmentBilling$2;->this$0:Lcom/rami_bar/fun_call/activities/FragmentBilling;

    # getter for: Lcom/rami_bar/fun_call/activities/FragmentBilling;->tv_billing_help:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/rami_bar/fun_call/activities/FragmentBilling;->access$000(Lcom/rami_bar/fun_call/activities/FragmentBilling;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v1}, Lcom/rami_bar/fun_call/activities/FragmentBilling;->showViewFromBottom(Landroid/view/View;)V

    goto :goto_0

    .line 174
    :cond_1
    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/FragmentBilling$2$1;->this$1:Lcom/rami_bar/fun_call/activities/FragmentBilling$2;

    iget-object v1, v1, Lcom/rami_bar/fun_call/activities/FragmentBilling$2;->this$0:Lcom/rami_bar/fun_call/activities/FragmentBilling;

    invoke-virtual {v1, p2}, Lcom/rami_bar/fun_call/activities/FragmentBilling;->verifyDeveloperPayload(Lcom/android/vending/billing/util/Purchase;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 175
    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/FragmentBilling$2$1;->this$1:Lcom/rami_bar/fun_call/activities/FragmentBilling$2;

    iget-object v1, v1, Lcom/rami_bar/fun_call/activities/FragmentBilling$2;->this$0:Lcom/rami_bar/fun_call/activities/FragmentBilling;

    invoke-virtual {v1}, Lcom/rami_bar/fun_call/activities/FragmentBilling;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/rami_bar/fun_call/activities/FragmentBilling$2$1;->this$1:Lcom/rami_bar/fun_call/activities/FragmentBilling$2;

    iget-object v2, v2, Lcom/rami_bar/fun_call/activities/FragmentBilling$2;->this$0:Lcom/rami_bar/fun_call/activities/FragmentBilling;

    invoke-virtual {v2, v4}, Lcom/rami_bar/fun_call/activities/FragmentBilling;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 177
    sget-object v1, Lcom/rami_bar/fun_call/utiles/MyApp;->tracker:Lcom/google/android/gms/analytics/Tracker;

    new-instance v2, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    const-string v3, "error"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    const-string v3, "verifyDeveloperPayload"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 178
    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/FragmentBilling$2$1;->this$1:Lcom/rami_bar/fun_call/activities/FragmentBilling$2;

    iget-object v1, v1, Lcom/rami_bar/fun_call/activities/FragmentBilling$2;->this$0:Lcom/rami_bar/fun_call/activities/FragmentBilling;

    # getter for: Lcom/rami_bar/fun_call/activities/FragmentBilling;->tv_billing_help:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/rami_bar/fun_call/activities/FragmentBilling;->access$000(Lcom/rami_bar/fun_call/activities/FragmentBilling;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v1}, Lcom/rami_bar/fun_call/activities/FragmentBilling;->showViewFromBottom(Landroid/view/View;)V

    goto/16 :goto_0

    .line 183
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/FragmentBilling$2$1;->this$1:Lcom/rami_bar/fun_call/activities/FragmentBilling$2;

    iget-object v1, v1, Lcom/rami_bar/fun_call/activities/FragmentBilling$2;->this$0:Lcom/rami_bar/fun_call/activities/FragmentBilling;

    iget-object v1, v1, Lcom/rami_bar/fun_call/activities/FragmentBilling;->mHelper:Lcom/android/vending/billing/util/IabHelper;

    iget-object v2, p0, Lcom/rami_bar/fun_call/activities/FragmentBilling$2$1;->this$1:Lcom/rami_bar/fun_call/activities/FragmentBilling$2;

    iget-object v2, v2, Lcom/rami_bar/fun_call/activities/FragmentBilling$2;->this$0:Lcom/rami_bar/fun_call/activities/FragmentBilling;

    iget-object v2, v2, Lcom/rami_bar/fun_call/activities/FragmentBilling;->mConsumeFinishedListener:Lcom/android/vending/billing/util/IabHelper$OnConsumeFinishedListener;

    invoke-virtual {v1, p2, v2}, Lcom/android/vending/billing/util/IabHelper;->consumeAsync(Lcom/android/vending/billing/util/Purchase;Lcom/android/vending/billing/util/IabHelper$OnConsumeFinishedListener;)V
    :try_end_0
    .catch Lcom/android/vending/billing/util/IabHelper$IabAsyncInProgressException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 184
    :catch_0
    move-exception v0

    .line 185
    .local v0, "e":Lcom/android/vending/billing/util/IabHelper$IabAsyncInProgressException;
    invoke-virtual {v0}, Lcom/android/vending/billing/util/IabHelper$IabAsyncInProgressException;->printStackTrace()V

    goto/16 :goto_0
.end method
