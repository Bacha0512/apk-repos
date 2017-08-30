.class Lcom/weirdvoice/service/SipService$1$30;
.super Lcom/weirdvoice/service/SipService$SipRunnable;
.source "SipService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/weirdvoice/service/SipService$1;->updateCallOptions(ILandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/weirdvoice/service/SipService$1;

.field private final synthetic val$callId:I

.field private final synthetic val$options:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/weirdvoice/service/SipService$1;ILandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/weirdvoice/service/SipService$1$30;->this$1:Lcom/weirdvoice/service/SipService$1;

    iput p2, p0, Lcom/weirdvoice/service/SipService$1$30;->val$callId:I

    iput-object p3, p0, Lcom/weirdvoice/service/SipService$1$30;->val$options:Landroid/os/Bundle;

    .line 864
    invoke-direct {p0}, Lcom/weirdvoice/service/SipService$SipRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method protected doRun()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/weirdvoice/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 867
    # getter for: Lcom/weirdvoice/service/SipService;->pjService:Lcom/weirdvoice/pjsip/PjSipService;
    invoke-static {}, Lcom/weirdvoice/service/SipService;->access$0()Lcom/weirdvoice/pjsip/PjSipService;

    move-result-object v0

    iget v1, p0, Lcom/weirdvoice/service/SipService$1$30;->val$callId:I

    iget-object v2, p0, Lcom/weirdvoice/service/SipService$1$30;->val$options:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Lcom/weirdvoice/pjsip/PjSipService;->updateCallOptions(ILandroid/os/Bundle;)I

    .line 868
    return-void
.end method
