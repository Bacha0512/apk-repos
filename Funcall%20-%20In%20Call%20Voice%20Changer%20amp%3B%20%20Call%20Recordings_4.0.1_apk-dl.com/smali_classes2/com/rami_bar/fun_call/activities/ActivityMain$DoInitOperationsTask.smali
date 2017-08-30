.class Lcom/rami_bar/fun_call/activities/ActivityMain$DoInitOperationsTask;
.super Landroid/os/AsyncTask;
.source "ActivityMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rami_bar/fun_call/activities/ActivityMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DoInitOperationsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rami_bar/fun_call/activities/ActivityMain;


# direct methods
.method private constructor <init>(Lcom/rami_bar/fun_call/activities/ActivityMain;)V
    .locals 0

    .prologue
    .line 1305
    iput-object p1, p0, Lcom/rami_bar/fun_call/activities/ActivityMain$DoInitOperationsTask;->this$0:Lcom/rami_bar/fun_call/activities/ActivityMain;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/rami_bar/fun_call/activities/ActivityMain;Lcom/rami_bar/fun_call/activities/ActivityMain$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/rami_bar/fun_call/activities/ActivityMain;
    .param p2, "x1"    # Lcom/rami_bar/fun_call/activities/ActivityMain$1;

    .prologue
    .line 1305
    invoke-direct {p0, p1}, Lcom/rami_bar/fun_call/activities/ActivityMain$DoInitOperationsTask;-><init>(Lcom/rami_bar/fun_call/activities/ActivityMain;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1305
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/rami_bar/fun_call/activities/ActivityMain$DoInitOperationsTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "urls"    # [Ljava/lang/Void;

    .prologue
    .line 1307
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityMain$DoInitOperationsTask;->this$0:Lcom/rami_bar/fun_call/activities/ActivityMain;

    # invokes: Lcom/rami_bar/fun_call/activities/ActivityMain;->initMediaVoices()V
    invoke-static {v0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->access$2700(Lcom/rami_bar/fun_call/activities/ActivityMain;)V

    .line 1309
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1305
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/rami_bar/fun_call/activities/ActivityMain$DoInitOperationsTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 1314
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityMain$DoInitOperationsTask;->this$0:Lcom/rami_bar/fun_call/activities/ActivityMain;

    # invokes: Lcom/rami_bar/fun_call/activities/ActivityMain;->initSDKs()V
    invoke-static {v0}, Lcom/rami_bar/fun_call/activities/ActivityMain;->access$2800(Lcom/rami_bar/fun_call/activities/ActivityMain;)V

    .line 1315
    return-void
.end method
