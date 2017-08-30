.class Lcom/rami_bar/fun_call/activities/FragmentRecordings$6$1;
.super Ljava/lang/Object;
.source "FragmentRecordings.java"

# interfaces
.implements Lcom/rami_bar/fun_call/utiles/DownloadFile$DownloadFileInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rami_bar/fun_call/activities/FragmentRecordings$6;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/rami_bar/fun_call/activities/FragmentRecordings$6;


# direct methods
.method constructor <init>(Lcom/rami_bar/fun_call/activities/FragmentRecordings$6;)V
    .locals 0
    .param p1, "this$1"    # Lcom/rami_bar/fun_call/activities/FragmentRecordings$6;

    .prologue
    .line 225
    iput-object p1, p0, Lcom/rami_bar/fun_call/activities/FragmentRecordings$6$1;->this$1:Lcom/rami_bar/fun_call/activities/FragmentRecordings$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFileDownloaded(Ljava/io/File;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 228
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentRecordings$6$1;->this$1:Lcom/rami_bar/fun_call/activities/FragmentRecordings$6;

    iget-object v0, v0, Lcom/rami_bar/fun_call/activities/FragmentRecordings$6;->this$0:Lcom/rami_bar/fun_call/activities/FragmentRecordings;

    # invokes: Lcom/rami_bar/fun_call/activities/FragmentRecordings;->shareFile(Ljava/io/File;)V
    invoke-static {v0, p1}, Lcom/rami_bar/fun_call/activities/FragmentRecordings;->access$500(Lcom/rami_bar/fun_call/activities/FragmentRecordings;Ljava/io/File;)V

    .line 229
    return-void
.end method
