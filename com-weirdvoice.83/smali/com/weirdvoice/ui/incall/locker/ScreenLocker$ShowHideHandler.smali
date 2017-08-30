.class Lcom/weirdvoice/ui/incall/locker/ScreenLocker$ShowHideHandler;
.super Landroid/os/Handler;
.source "ScreenLocker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/weirdvoice/ui/incall/locker/ScreenLocker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ShowHideHandler"
.end annotation


# instance fields
.field sc:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/weirdvoice/ui/incall/locker/ScreenLocker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/weirdvoice/ui/incall/locker/ScreenLocker;)V
    .locals 1
    .param p1, "screenLocker"    # Lcom/weirdvoice/ui/incall/locker/ScreenLocker;

    .prologue
    .line 186
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 187
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/weirdvoice/ui/incall/locker/ScreenLocker$ShowHideHandler;->sc:Ljava/lang/ref/WeakReference;

    .line 188
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 190
    iget-object v1, p0, Lcom/weirdvoice/ui/incall/locker/ScreenLocker$ShowHideHandler;->sc:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/weirdvoice/ui/incall/locker/ScreenLocker;

    .line 191
    .local v0, "screenLocker":Lcom/weirdvoice/ui/incall/locker/ScreenLocker;
    if-nez v0, :cond_0

    .line 204
    :goto_0
    return-void

    .line 194
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 202
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 196
    :pswitch_0
    invoke-virtual {v0}, Lcom/weirdvoice/ui/incall/locker/ScreenLocker;->show()V

    goto :goto_0

    .line 199
    :pswitch_1
    invoke-virtual {v0}, Lcom/weirdvoice/ui/incall/locker/ScreenLocker;->hide()V

    goto :goto_0

    .line 194
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
