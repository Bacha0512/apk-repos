.class Lorg/abtollc/service/ABTOSipService$ServiceHandler;
.super Landroid/os/Handler;
.source "ABTOSipService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/abtollc/service/ABTOSipService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ServiceHandler"
.end annotation


# instance fields
.field s:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lorg/abtollc/service/ABTOSipService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/abtollc/service/ABTOSipService;)V
    .locals 1
    .param p1, "sipService"    # Lorg/abtollc/service/ABTOSipService;

    .prologue
    .line 2345
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2346
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/abtollc/service/ABTOSipService$ServiceHandler;->s:Ljava/lang/ref/WeakReference;

    .line 2347
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    .line 2351
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2352
    iget-object v1, p0, Lorg/abtollc/service/ABTOSipService$ServiceHandler;->s:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/abtollc/service/ABTOSipService;

    .line 2353
    .local v0, "sipService":Lorg/abtollc/service/ABTOSipService;
    if-nez v0, :cond_1

    .line 2363
    :cond_0
    :goto_0
    return-void

    .line 2356
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    if-nez v1, :cond_0

    .line 2357
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_2

    .line 2358
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2360
    :cond_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
