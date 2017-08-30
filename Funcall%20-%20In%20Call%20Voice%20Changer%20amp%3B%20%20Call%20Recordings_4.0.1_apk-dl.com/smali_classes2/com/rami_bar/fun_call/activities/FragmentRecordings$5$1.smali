.class Lcom/rami_bar/fun_call/activities/FragmentRecordings$5$1;
.super Ljava/lang/Object;
.source "FragmentRecordings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rami_bar/fun_call/activities/FragmentRecordings$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/rami_bar/fun_call/activities/FragmentRecordings$5;

.field final synthetic val$recording:Lcom/rami_bar/fun_call/objects/receive/Recordings$Recording;


# direct methods
.method constructor <init>(Lcom/rami_bar/fun_call/activities/FragmentRecordings$5;Lcom/rami_bar/fun_call/objects/receive/Recordings$Recording;)V
    .locals 0
    .param p1, "this$1"    # Lcom/rami_bar/fun_call/activities/FragmentRecordings$5;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/rami_bar/fun_call/activities/FragmentRecordings$5$1;->this$1:Lcom/rami_bar/fun_call/activities/FragmentRecordings$5;

    iput-object p2, p0, Lcom/rami_bar/fun_call/activities/FragmentRecordings$5$1;->val$recording:Lcom/rami_bar/fun_call/objects/receive/Recordings$Recording;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 190
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentRecordings$5$1;->this$1:Lcom/rami_bar/fun_call/activities/FragmentRecordings$5;

    iget-object v0, v0, Lcom/rami_bar/fun_call/activities/FragmentRecordings$5;->this$0:Lcom/rami_bar/fun_call/activities/FragmentRecordings;

    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/FragmentRecordings$5$1;->val$recording:Lcom/rami_bar/fun_call/objects/receive/Recordings$Recording;

    # invokes: Lcom/rami_bar/fun_call/activities/FragmentRecordings;->deleteRecording(Lcom/rami_bar/fun_call/objects/receive/Recordings$Recording;)V
    invoke-static {v0, v1}, Lcom/rami_bar/fun_call/activities/FragmentRecordings;->access$300(Lcom/rami_bar/fun_call/activities/FragmentRecordings;Lcom/rami_bar/fun_call/objects/receive/Recordings$Recording;)V

    .line 191
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 192
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentRecordings$5$1;->this$1:Lcom/rami_bar/fun_call/activities/FragmentRecordings$5;

    iget-object v0, v0, Lcom/rami_bar/fun_call/activities/FragmentRecordings$5;->this$0:Lcom/rami_bar/fun_call/activities/FragmentRecordings;

    # getter for: Lcom/rami_bar/fun_call/activities/FragmentRecordings;->adapter:Lcom/rami_bar/fun_call/adapters/RecordingsAdapter;
    invoke-static {v0}, Lcom/rami_bar/fun_call/activities/FragmentRecordings;->access$400(Lcom/rami_bar/fun_call/activities/FragmentRecordings;)Lcom/rami_bar/fun_call/adapters/RecordingsAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/FragmentRecordings$5$1;->val$recording:Lcom/rami_bar/fun_call/objects/receive/Recordings$Recording;

    invoke-virtual {v0, v1}, Lcom/rami_bar/fun_call/adapters/RecordingsAdapter;->remove(Ljava/lang/Object;)V

    .line 193
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentRecordings$5$1;->this$1:Lcom/rami_bar/fun_call/activities/FragmentRecordings$5;

    iget-object v0, v0, Lcom/rami_bar/fun_call/activities/FragmentRecordings$5;->val$mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 194
    sget-object v0, Lcom/rami_bar/fun_call/utiles/MyApp;->tracker:Lcom/google/android/gms/analytics/Tracker;

    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    const-string v2, "delete"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    const-string v2, "yes"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 195
    return-void
.end method
