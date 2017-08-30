.class Lcom/rami_bar/fun_call/activities/FragmentRecordings$2;
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
    .line 135
    iput-object p1, p0, Lcom/rami_bar/fun_call/activities/FragmentRecordings$2;->this$0:Lcom/rami_bar/fun_call/activities/FragmentRecordings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 138
    iget-object v3, p0, Lcom/rami_bar/fun_call/activities/FragmentRecordings$2;->this$0:Lcom/rami_bar/fun_call/activities/FragmentRecordings;

    # invokes: Lcom/rami_bar/fun_call/activities/FragmentRecordings;->handlePurchasedCredit(Landroid/view/View;)Lcom/rami_bar/fun_call/objects/receive/Recordings$Recording;
    invoke-static {v3, p1}, Lcom/rami_bar/fun_call/activities/FragmentRecordings;->access$100(Lcom/rami_bar/fun_call/activities/FragmentRecordings;Landroid/view/View;)Lcom/rami_bar/fun_call/objects/receive/Recordings$Recording;

    move-result-object v1

    .line 139
    .local v1, "recording":Lcom/rami_bar/fun_call/objects/receive/Recordings$Recording;
    if-nez v1, :cond_0

    .line 149
    :goto_0
    return-void

    .line 141
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/rami_bar/fun_call/utiles/Constants;->API_VOIP:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "download_recording.php?uniqueid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/rami_bar/fun_call/objects/receive/Recordings$Recording;->uniqueid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&user_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/rami_bar/fun_call/activities/FragmentRecordings$2;->this$0:Lcom/rami_bar/fun_call/activities/FragmentRecordings;

    invoke-virtual {v4}, Lcom/rami_bar/fun_call/activities/FragmentRecordings;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/rami_bar/fun_call/utiles/SharedUser;->getInstance(Landroid/content/Context;)Lcom/rami_bar/fun_call/utiles/SharedUser;

    move-result-object v4

    invoke-virtual {v4}, Lcom/rami_bar/fun_call/utiles/SharedUser;->getEmail()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 142
    .local v2, "url":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/rami_bar/fun_call/activities/FragmentRecordings$2;->this$0:Lcom/rami_bar/fun_call/activities/FragmentRecordings;

    invoke-virtual {v3}, Lcom/rami_bar/fun_call/activities/FragmentRecordings;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lcom/rami_bar/fun_call/activities/ActivityPlaySound;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 143
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "url"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    iget-object v3, p0, Lcom/rami_bar/fun_call/activities/FragmentRecordings$2;->this$0:Lcom/rami_bar/fun_call/activities/FragmentRecordings;

    invoke-virtual {v3, v0}, Lcom/rami_bar/fun_call/activities/FragmentRecordings;->startActivity(Landroid/content/Intent;)V

    .line 146
    iget-object v3, p0, Lcom/rami_bar/fun_call/activities/FragmentRecordings$2;->this$0:Lcom/rami_bar/fun_call/activities/FragmentRecordings;

    # invokes: Lcom/rami_bar/fun_call/activities/FragmentRecordings;->downloadFile(Lcom/rami_bar/fun_call/objects/receive/Recordings$Recording;Ljava/lang/String;)V
    invoke-static {v3, v1, v2}, Lcom/rami_bar/fun_call/activities/FragmentRecordings;->access$200(Lcom/rami_bar/fun_call/activities/FragmentRecordings;Lcom/rami_bar/fun_call/objects/receive/Recordings$Recording;Ljava/lang/String;)V

    .line 148
    sget-object v3, Lcom/rami_bar/fun_call/utiles/MyApp;->tracker:Lcom/google/android/gms/analytics/Tracker;

    new-instance v4, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v4}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v4

    const-string v5, "play"

    invoke-virtual {v4, v5}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v4

    const-string v5, "click"

    invoke-virtual {v4, v5}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    goto :goto_0
.end method
