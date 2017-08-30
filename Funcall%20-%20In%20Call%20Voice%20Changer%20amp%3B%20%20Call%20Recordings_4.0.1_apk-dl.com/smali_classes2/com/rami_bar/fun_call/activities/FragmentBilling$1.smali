.class Lcom/rami_bar/fun_call/activities/FragmentBilling$1;
.super Ljava/lang/Object;
.source "FragmentBilling.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rami_bar/fun_call/activities/FragmentBilling;->handleCallbacks()V
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
    .line 102
    iput-object p1, p0, Lcom/rami_bar/fun_call/activities/FragmentBilling$1;->this$0:Lcom/rami_bar/fun_call/activities/FragmentBilling;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentBilling$1;->this$0:Lcom/rami_bar/fun_call/activities/FragmentBilling;

    invoke-virtual {v0}, Lcom/rami_bar/fun_call/activities/FragmentBilling;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "http://smarturl.it/e9zs2m"

    invoke-static {v0, v1}, Lcom/rami_bar/fun_call/utiles/Functions;->openURL(Landroid/app/Activity;Ljava/lang/String;)V

    .line 106
    sget-object v0, Lcom/rami_bar/fun_call/utiles/MyApp;->tracker:Lcom/google/android/gms/analytics/Tracker;

    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    const-string v2, "BillingHelp"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    const-string v2, "click"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 107
    return-void
.end method
