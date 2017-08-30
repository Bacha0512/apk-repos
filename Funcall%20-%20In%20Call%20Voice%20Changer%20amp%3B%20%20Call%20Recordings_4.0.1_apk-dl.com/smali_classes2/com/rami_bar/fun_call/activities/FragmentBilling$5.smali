.class Lcom/rami_bar/fun_call/activities/FragmentBilling$5;
.super Ljava/lang/Object;
.source "FragmentBilling.java"

# interfaces
.implements Lcom/android/vending/billing/util/IabHelper$OnConsumeFinishedListener;


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
    .line 324
    iput-object p1, p0, Lcom/rami_bar/fun_call/activities/FragmentBilling$5;->this$0:Lcom/rami_bar/fun_call/activities/FragmentBilling;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsumeFinished(Lcom/android/vending/billing/util/Purchase;Lcom/android/vending/billing/util/IabResult;)V
    .locals 0
    .param p1, "purchase"    # Lcom/android/vending/billing/util/Purchase;
    .param p2, "result"    # Lcom/android/vending/billing/util/IabResult;

    .prologue
    .line 327
    return-void
.end method
