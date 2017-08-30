.class Lcom/weirdvoice/service/SipService$1$24;
.super Lcom/weirdvoice/service/SipService$SipRunnable;
.source "SipService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/weirdvoice/service/SipService$1;->zrtpSASVerified(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/weirdvoice/service/SipService$1;

.field private final synthetic val$callId:I


# direct methods
.method constructor <init>(Lcom/weirdvoice/service/SipService$1;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/weirdvoice/service/SipService$1$24;->this$1:Lcom/weirdvoice/service/SipService$1;

    iput p2, p0, Lcom/weirdvoice/service/SipService$1$24;->val$callId:I

    .line 732
    invoke-direct {p0}, Lcom/weirdvoice/service/SipService$SipRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method protected doRun()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/weirdvoice/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 735
    # getter for: Lcom/weirdvoice/service/SipService;->pjService:Lcom/weirdvoice/pjsip/PjSipService;
    invoke-static {}, Lcom/weirdvoice/service/SipService;->access$0()Lcom/weirdvoice/pjsip/PjSipService;

    move-result-object v0

    iget v1, p0, Lcom/weirdvoice/service/SipService$1$24;->val$callId:I

    invoke-virtual {v0, v1}, Lcom/weirdvoice/pjsip/PjSipService;->zrtpSASVerified(I)V

    .line 736
    # getter for: Lcom/weirdvoice/service/SipService;->pjService:Lcom/weirdvoice/pjsip/PjSipService;
    invoke-static {}, Lcom/weirdvoice/service/SipService;->access$0()Lcom/weirdvoice/pjsip/PjSipService;

    move-result-object v0

    iget-object v0, v0, Lcom/weirdvoice/pjsip/PjSipService;->zrtpReceiver:Lcom/weirdvoice/pjsip/ZrtpStateReceiver;

    iget v1, p0, Lcom/weirdvoice/service/SipService$1$24;->val$callId:I

    invoke-virtual {v0, v1}, Lcom/weirdvoice/pjsip/ZrtpStateReceiver;->updateZrtpInfos(I)V

    .line 737
    return-void
.end method
