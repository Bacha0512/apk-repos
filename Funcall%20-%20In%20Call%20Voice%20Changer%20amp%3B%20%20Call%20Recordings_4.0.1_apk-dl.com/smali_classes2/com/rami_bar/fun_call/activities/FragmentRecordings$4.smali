.class Lcom/rami_bar/fun_call/activities/FragmentRecordings$4;
.super Ljava/lang/Object;
.source "FragmentRecordings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rami_bar/fun_call/activities/FragmentRecordings;->openDialog(Lcom/rami_bar/fun_call/objects/receive/Recordings$Recording;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rami_bar/fun_call/activities/FragmentRecordings;

.field final synthetic val$mDialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/rami_bar/fun_call/activities/FragmentRecordings;Landroid/app/Dialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/rami_bar/fun_call/activities/FragmentRecordings;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/rami_bar/fun_call/activities/FragmentRecordings$4;->this$0:Lcom/rami_bar/fun_call/activities/FragmentRecordings;

    iput-object p2, p0, Lcom/rami_bar/fun_call/activities/FragmentRecordings$4;->val$mDialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 170
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rami_bar/fun_call/objects/receive/Recordings$Recording;

    .line 171
    .local v0, "recording":Lcom/rami_bar/fun_call/objects/receive/Recordings$Recording;
    if-nez v0, :cond_0

    .line 176
    :goto_0
    return-void

    .line 173
    :cond_0
    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/FragmentRecordings$4;->this$0:Lcom/rami_bar/fun_call/activities/FragmentRecordings;

    invoke-virtual {v1}, Lcom/rami_bar/fun_call/activities/FragmentRecordings;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/rami_bar/fun_call/activities/ActivityMain;

    iget-object v2, v0, Lcom/rami_bar/fun_call/objects/receive/Recordings$Recording;->dialout_num:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/rami_bar/fun_call/activities/ActivityMain;->callNumber(Ljava/lang/String;)V

    .line 174
    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/FragmentRecordings$4;->val$mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 175
    sget-object v1, Lcom/rami_bar/fun_call/utiles/MyApp;->tracker:Lcom/google/android/gms/analytics/Tracker;

    new-instance v2, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    const-string v3, "call"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    const-string v3, "click"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    goto :goto_0
.end method
