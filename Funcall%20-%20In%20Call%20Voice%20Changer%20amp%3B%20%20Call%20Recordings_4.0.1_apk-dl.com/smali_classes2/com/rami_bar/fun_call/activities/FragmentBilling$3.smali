.class Lcom/rami_bar/fun_call/activities/FragmentBilling$3;
.super Ljava/lang/Object;
.source "FragmentBilling.java"

# interfaces
.implements Lcom/android/vending/billing/util/IabHelper$OnIabSetupFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rami_bar/fun_call/activities/FragmentBilling;->handleIAP()V
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
    .line 224
    iput-object p1, p0, Lcom/rami_bar/fun_call/activities/FragmentBilling$3;->this$0:Lcom/rami_bar/fun_call/activities/FragmentBilling;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIabSetupFinished(Lcom/android/vending/billing/util/IabResult;)V
    .locals 6
    .param p1, "result"    # Lcom/android/vending/billing/util/IabResult;

    .prologue
    const/4 v4, 0x1

    .line 226
    invoke-virtual {p1}, Lcom/android/vending/billing/util/IabResult;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_1

    .line 227
    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/FragmentBilling$3;->this$0:Lcom/rami_bar/fun_call/activities/FragmentBilling;

    invoke-virtual {v1}, Lcom/rami_bar/fun_call/activities/FragmentBilling;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/rami_bar/fun_call/activities/FragmentBilling$3;->this$0:Lcom/rami_bar/fun_call/activities/FragmentBilling;

    const v3, 0x7f09007a

    invoke-virtual {v2, v3}, Lcom/rami_bar/fun_call/activities/FragmentBilling;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 231
    :cond_1
    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/FragmentBilling$3;->this$0:Lcom/rami_bar/fun_call/activities/FragmentBilling;

    iget-object v1, v1, Lcom/rami_bar/fun_call/activities/FragmentBilling;->mHelper:Lcom/android/vending/billing/util/IabHelper;

    if-eqz v1, :cond_0

    .line 237
    :try_start_0
    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/FragmentBilling$3;->this$0:Lcom/rami_bar/fun_call/activities/FragmentBilling;

    iget-object v1, v1, Lcom/rami_bar/fun_call/activities/FragmentBilling;->mHelper:Lcom/android/vending/billing/util/IabHelper;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/rami_bar/fun_call/activities/FragmentBilling$3;->this$0:Lcom/rami_bar/fun_call/activities/FragmentBilling;

    # getter for: Lcom/rami_bar/fun_call/activities/FragmentBilling;->skuList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/rami_bar/fun_call/activities/FragmentBilling;->access$100(Lcom/rami_bar/fun_call/activities/FragmentBilling;)Ljava/util/ArrayList;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/rami_bar/fun_call/activities/FragmentBilling$3;->this$0:Lcom/rami_bar/fun_call/activities/FragmentBilling;

    iget-object v5, v5, Lcom/rami_bar/fun_call/activities/FragmentBilling;->mGotInventoryListener:Lcom/android/vending/billing/util/IabHelper$QueryInventoryFinishedListener;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/vending/billing/util/IabHelper;->queryInventoryAsync(ZLjava/util/List;Ljava/util/List;Lcom/android/vending/billing/util/IabHelper$QueryInventoryFinishedListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 238
    :catch_0
    move-exception v0

    .line 239
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
