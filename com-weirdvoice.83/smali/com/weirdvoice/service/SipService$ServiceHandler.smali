.class Lcom/weirdvoice/service/SipService$ServiceHandler;
.super Landroid/os/Handler;
.source "SipService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/weirdvoice/service/SipService;
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
            "Lcom/weirdvoice/service/SipService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/weirdvoice/service/SipService;)V
    .locals 1
    .param p1, "sipService"    # Lcom/weirdvoice/service/SipService;

    .prologue
    .line 1672
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1673
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/weirdvoice/service/SipService$ServiceHandler;->s:Ljava/lang/ref/WeakReference;

    .line 1674
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1678
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1679
    iget-object v1, p0, Lcom/weirdvoice/service/SipService$ServiceHandler;->s:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/weirdvoice/service/SipService;

    .line 1680
    .local v0, "sipService":Lcom/weirdvoice/service/SipService;
    if-nez v0, :cond_0

    .line 1690
    :cond_0
    return-void
.end method
