.class Lcom/weirdvoice/pjsip/PjSipService$2;
.super Lcom/weirdvoice/service/SipService$SipRunnable;
.source "PjSipService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/weirdvoice/pjsip/PjSipService;->refreshCallMediaState(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/weirdvoice/pjsip/PjSipService;

.field private final synthetic val$callId:I


# direct methods
.method constructor <init>(Lcom/weirdvoice/pjsip/PjSipService;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/weirdvoice/pjsip/PjSipService$2;->this$0:Lcom/weirdvoice/pjsip/PjSipService;

    iput p2, p0, Lcom/weirdvoice/pjsip/PjSipService$2;->val$callId:I

    .line 1809
    invoke-direct {p0}, Lcom/weirdvoice/service/SipService$SipRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public doRun()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/weirdvoice/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 1812
    iget-object v0, p0, Lcom/weirdvoice/pjsip/PjSipService$2;->this$0:Lcom/weirdvoice/pjsip/PjSipService;

    # getter for: Lcom/weirdvoice/pjsip/PjSipService;->created:Z
    invoke-static {v0}, Lcom/weirdvoice/pjsip/PjSipService;->access$0(Lcom/weirdvoice/pjsip/PjSipService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/weirdvoice/pjsip/PjSipService$2;->this$0:Lcom/weirdvoice/pjsip/PjSipService;

    iget-object v0, v0, Lcom/weirdvoice/pjsip/PjSipService;->userAgentReceiver:Lcom/weirdvoice/pjsip/UAStateReceiver;

    if-eqz v0, :cond_0

    .line 1813
    iget-object v0, p0, Lcom/weirdvoice/pjsip/PjSipService$2;->this$0:Lcom/weirdvoice/pjsip/PjSipService;

    iget-object v0, v0, Lcom/weirdvoice/pjsip/PjSipService;->userAgentReceiver:Lcom/weirdvoice/pjsip/UAStateReceiver;

    iget v1, p0, Lcom/weirdvoice/pjsip/PjSipService$2;->val$callId:I

    invoke-virtual {v0, v1}, Lcom/weirdvoice/pjsip/UAStateReceiver;->updateCallMediaState(I)V

    .line 1815
    :cond_0
    return-void
.end method
