.class Lcom/rami_bar/fun_call/activities/FragmentRecordings$6;
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
    .line 210
    iput-object p1, p0, Lcom/rami_bar/fun_call/activities/FragmentRecordings$6;->this$0:Lcom/rami_bar/fun_call/activities/FragmentRecordings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 213
    iget-object v3, p0, Lcom/rami_bar/fun_call/activities/FragmentRecordings$6;->this$0:Lcom/rami_bar/fun_call/activities/FragmentRecordings;

    # invokes: Lcom/rami_bar/fun_call/activities/FragmentRecordings;->handlePurchasedCredit(Landroid/view/View;)Lcom/rami_bar/fun_call/objects/receive/Recordings$Recording;
    invoke-static {v3, p1}, Lcom/rami_bar/fun_call/activities/FragmentRecordings;->access$100(Lcom/rami_bar/fun_call/activities/FragmentRecordings;Landroid/view/View;)Lcom/rami_bar/fun_call/objects/receive/Recordings$Recording;

    move-result-object v1

    .line 214
    .local v1, "recording":Lcom/rami_bar/fun_call/objects/receive/Recordings$Recording;
    if-nez v1, :cond_0

    .line 231
    :goto_0
    return-void

    .line 216
    :cond_0
    sget-object v3, Lcom/rami_bar/fun_call/utiles/MyApp;->tracker:Lcom/google/android/gms/analytics/Tracker;

    new-instance v4, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v4}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v4

    const-string v5, "share"

    invoke-virtual {v4, v5}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v4

    const-string v5, "click"

    invoke-virtual {v4, v5}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 218
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/rami_bar/fun_call/utiles/Constants;->APPLICATION_FOLDER:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/rami_bar/fun_call/objects/receive/Recordings$Recording;->uniqueid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".mp3"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 219
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 220
    iget-object v3, p0, Lcom/rami_bar/fun_call/activities/FragmentRecordings$6;->this$0:Lcom/rami_bar/fun_call/activities/FragmentRecordings;

    # invokes: Lcom/rami_bar/fun_call/activities/FragmentRecordings;->shareFile(Ljava/io/File;)V
    invoke-static {v3, v0}, Lcom/rami_bar/fun_call/activities/FragmentRecordings;->access$500(Lcom/rami_bar/fun_call/activities/FragmentRecordings;Ljava/io/File;)V

    goto :goto_0

    .line 224
    :cond_1
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

    iget-object v4, p0, Lcom/rami_bar/fun_call/activities/FragmentRecordings$6;->this$0:Lcom/rami_bar/fun_call/activities/FragmentRecordings;

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

    .line 225
    .local v2, "url":Ljava/lang/String;
    new-instance v3, Lcom/rami_bar/fun_call/utiles/DownloadFile;

    iget-object v4, p0, Lcom/rami_bar/fun_call/activities/FragmentRecordings$6;->this$0:Lcom/rami_bar/fun_call/activities/FragmentRecordings;

    invoke-virtual {v4}, Lcom/rami_bar/fun_call/activities/FragmentRecordings;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    iget-object v5, v1, Lcom/rami_bar/fun_call/objects/receive/Recordings$Recording;->uniqueid:Ljava/lang/String;

    new-instance v6, Lcom/rami_bar/fun_call/activities/FragmentRecordings$6$1;

    invoke-direct {v6, p0}, Lcom/rami_bar/fun_call/activities/FragmentRecordings$6$1;-><init>(Lcom/rami_bar/fun_call/activities/FragmentRecordings$6;)V

    invoke-direct {v3, v4, v5, v6}, Lcom/rami_bar/fun_call/utiles/DownloadFile;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/rami_bar/fun_call/utiles/DownloadFile$DownloadFileInterface;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    .line 230
    invoke-virtual {v3, v4}, Lcom/rami_bar/fun_call/utiles/DownloadFile;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0
.end method
