.class Lcom/ironsource/sdk/precache/DownloadManager$DownloadHandler;
.super Landroid/os/Handler;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/sdk/precache/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DownloadHandler"
.end annotation


# instance fields
.field mListener:Lcom/ironsource/sdk/precache/DownloadManager$OnPreCacheCompletion;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 114
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 129
    :goto_0
    return-void

    .line 117
    :pswitch_0
    iget-object v1, p0, Lcom/ironsource/sdk/precache/DownloadManager$DownloadHandler;->mListener:Lcom/ironsource/sdk/precache/DownloadManager$OnPreCacheCompletion;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/ironsource/sdk/data/SSAFile;

    invoke-interface {v1, v0}, Lcom/ironsource/sdk/precache/DownloadManager$OnPreCacheCompletion;->onFileDownloadSuccess(Lcom/ironsource/sdk/data/SSAFile;)V

    goto :goto_0

    .line 120
    :pswitch_1
    iget-object v1, p0, Lcom/ironsource/sdk/precache/DownloadManager$DownloadHandler;->mListener:Lcom/ironsource/sdk/precache/DownloadManager$OnPreCacheCompletion;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/ironsource/sdk/data/SSAFile;

    invoke-interface {v1, v0}, Lcom/ironsource/sdk/precache/DownloadManager$OnPreCacheCompletion;->onFileDownloadFail(Lcom/ironsource/sdk/data/SSAFile;)V

    goto :goto_0

    .line 114
    :pswitch_data_0
    .packed-switch 0x3f8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public release()V
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ironsource/sdk/precache/DownloadManager$DownloadHandler;->mListener:Lcom/ironsource/sdk/precache/DownloadManager$OnPreCacheCompletion;

    .line 132
    return-void
.end method

.method setOnPreCacheCompletion(Lcom/ironsource/sdk/precache/DownloadManager$OnPreCacheCompletion;)V
    .locals 1
    .param p1, "listener"    # Lcom/ironsource/sdk/precache/DownloadManager$OnPreCacheCompletion;

    .prologue
    .line 108
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 109
    :cond_0
    iput-object p1, p0, Lcom/ironsource/sdk/precache/DownloadManager$DownloadHandler;->mListener:Lcom/ironsource/sdk/precache/DownloadManager$OnPreCacheCompletion;

    .line 110
    return-void
.end method
