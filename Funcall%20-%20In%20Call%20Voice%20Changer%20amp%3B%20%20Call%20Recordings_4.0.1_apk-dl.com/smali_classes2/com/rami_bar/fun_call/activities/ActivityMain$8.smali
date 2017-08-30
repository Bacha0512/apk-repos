.class Lcom/rami_bar/fun_call/activities/ActivityMain$8;
.super Landroid/os/AsyncTask;
.source "ActivityMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rami_bar/fun_call/activities/ActivityMain;->registerInBackground()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rami_bar/fun_call/activities/ActivityMain;


# direct methods
.method constructor <init>(Lcom/rami_bar/fun_call/activities/ActivityMain;)V
    .locals 0
    .param p1, "this$0"    # Lcom/rami_bar/fun_call/activities/ActivityMain;

    .prologue
    .line 930
    iput-object p1, p0, Lcom/rami_bar/fun_call/activities/ActivityMain$8;->this$0:Lcom/rami_bar/fun_call/activities/ActivityMain;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 930
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/rami_bar/fun_call/activities/ActivityMain$8;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 7
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 935
    :try_start_0
    iget-object v2, p0, Lcom/rami_bar/fun_call/activities/ActivityMain$8;->this$0:Lcom/rami_bar/fun_call/activities/ActivityMain;

    iget-object v2, v2, Lcom/rami_bar/fun_call/activities/ActivityMain;->gcm:Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    if-nez v2, :cond_0

    .line 936
    iget-object v2, p0, Lcom/rami_bar/fun_call/activities/ActivityMain$8;->this$0:Lcom/rami_bar/fun_call/activities/ActivityMain;

    iget-object v3, p0, Lcom/rami_bar/fun_call/activities/ActivityMain$8;->this$0:Lcom/rami_bar/fun_call/activities/ActivityMain;

    # invokes: Lcom/rami_bar/fun_call/activities/ActivityMain;->getActivity()Landroid/app/Activity;
    invoke-static {v3}, Lcom/rami_bar/fun_call/activities/ActivityMain;->access$500(Lcom/rami_bar/fun_call/activities/ActivityMain;)Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    move-result-object v3

    iput-object v3, v2, Lcom/rami_bar/fun_call/activities/ActivityMain;->gcm:Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    .line 938
    :cond_0
    iget-object v2, p0, Lcom/rami_bar/fun_call/activities/ActivityMain$8;->this$0:Lcom/rami_bar/fun_call/activities/ActivityMain;

    iget-object v3, p0, Lcom/rami_bar/fun_call/activities/ActivityMain$8;->this$0:Lcom/rami_bar/fun_call/activities/ActivityMain;

    iget-object v3, v3, Lcom/rami_bar/fun_call/activities/ActivityMain;->gcm:Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/rami_bar/fun_call/activities/ActivityMain$8;->this$0:Lcom/rami_bar/fun_call/activities/ActivityMain;

    iget-object v6, v6, Lcom/rami_bar/fun_call/activities/ActivityMain;->SENDER_ID:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->register([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/rami_bar/fun_call/activities/ActivityMain;->regid:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/rami_bar/fun_call/activities/ActivityMain;->access$902(Lcom/rami_bar/fun_call/activities/ActivityMain;Ljava/lang/String;)Ljava/lang/String;

    .line 939
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Device registered, registration ID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/rami_bar/fun_call/activities/ActivityMain$8;->this$0:Lcom/rami_bar/fun_call/activities/ActivityMain;

    # getter for: Lcom/rami_bar/fun_call/activities/ActivityMain;->regid:Ljava/lang/String;
    invoke-static {v3}, Lcom/rami_bar/fun_call/activities/ActivityMain;->access$900(Lcom/rami_bar/fun_call/activities/ActivityMain;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 941
    .local v1, "msg":Ljava/lang/String;
    iget-object v2, p0, Lcom/rami_bar/fun_call/activities/ActivityMain$8;->this$0:Lcom/rami_bar/fun_call/activities/ActivityMain;

    # invokes: Lcom/rami_bar/fun_call/activities/ActivityMain;->sendRegistrationIdToBackend()V
    invoke-static {v2}, Lcom/rami_bar/fun_call/activities/ActivityMain;->access$1000(Lcom/rami_bar/fun_call/activities/ActivityMain;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 946
    :goto_0
    return-object v1

    .line 943
    .end local v1    # "msg":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 944
    .local v0, "ex":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "msg":Ljava/lang/String;
    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 930
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/rami_bar/fun_call/activities/ActivityMain$8;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 951
    return-void
.end method
