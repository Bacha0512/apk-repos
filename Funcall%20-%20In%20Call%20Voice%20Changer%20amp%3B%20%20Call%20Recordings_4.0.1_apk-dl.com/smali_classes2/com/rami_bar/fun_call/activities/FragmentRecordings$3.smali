.class Lcom/rami_bar/fun_call/activities/FragmentRecordings$3;
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


# direct methods
.method constructor <init>(Lcom/rami_bar/fun_call/activities/FragmentRecordings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/rami_bar/fun_call/activities/FragmentRecordings;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/rami_bar/fun_call/activities/FragmentRecordings$3;->this$0:Lcom/rami_bar/fun_call/activities/FragmentRecordings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 156
    iget-object v2, p0, Lcom/rami_bar/fun_call/activities/FragmentRecordings$3;->this$0:Lcom/rami_bar/fun_call/activities/FragmentRecordings;

    # invokes: Lcom/rami_bar/fun_call/activities/FragmentRecordings;->handlePurchasedCredit(Landroid/view/View;)Lcom/rami_bar/fun_call/objects/receive/Recordings$Recording;
    invoke-static {v2, p1}, Lcom/rami_bar/fun_call/activities/FragmentRecordings;->access$100(Lcom/rami_bar/fun_call/activities/FragmentRecordings;Landroid/view/View;)Lcom/rami_bar/fun_call/objects/receive/Recordings$Recording;

    move-result-object v0

    .line 157
    .local v0, "recording":Lcom/rami_bar/fun_call/objects/receive/Recordings$Recording;
    if-nez v0, :cond_0

    .line 163
    :goto_0
    return-void

    .line 159
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/rami_bar/fun_call/utiles/Constants;->API_VOIP:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "download_recording.php?uniqueid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/rami_bar/fun_call/objects/receive/Recordings$Recording;->uniqueid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&user_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/rami_bar/fun_call/activities/FragmentRecordings$3;->this$0:Lcom/rami_bar/fun_call/activities/FragmentRecordings;

    invoke-virtual {v3}, Lcom/rami_bar/fun_call/activities/FragmentRecordings;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/rami_bar/fun_call/utiles/SharedUser;->getInstance(Landroid/content/Context;)Lcom/rami_bar/fun_call/utiles/SharedUser;

    move-result-object v3

    invoke-virtual {v3}, Lcom/rami_bar/fun_call/utiles/SharedUser;->getEmail()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 160
    .local v1, "url":Ljava/lang/String;
    iget-object v2, p0, Lcom/rami_bar/fun_call/activities/FragmentRecordings$3;->this$0:Lcom/rami_bar/fun_call/activities/FragmentRecordings;

    # invokes: Lcom/rami_bar/fun_call/activities/FragmentRecordings;->downloadFile(Lcom/rami_bar/fun_call/objects/receive/Recordings$Recording;Ljava/lang/String;)V
    invoke-static {v2, v0, v1}, Lcom/rami_bar/fun_call/activities/FragmentRecordings;->access$200(Lcom/rami_bar/fun_call/activities/FragmentRecordings;Lcom/rami_bar/fun_call/objects/receive/Recordings$Recording;Ljava/lang/String;)V

    .line 162
    sget-object v2, Lcom/rami_bar/fun_call/utiles/MyApp;->tracker:Lcom/google/android/gms/analytics/Tracker;

    new-instance v3, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v3

    const-string v4, "download"

    invoke-virtual {v3, v4}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v3

    const-string v4, "click"

    invoke-virtual {v3, v4}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    goto :goto_0
.end method
