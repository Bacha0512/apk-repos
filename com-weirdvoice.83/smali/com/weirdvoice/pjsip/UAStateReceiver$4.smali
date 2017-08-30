.class Lcom/weirdvoice/pjsip/UAStateReceiver$4;
.super Lcom/weirdvoice/service/SipService$SipRunnable;
.source "UAStateReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/weirdvoice/pjsip/UAStateReceiver;->sendPendingDtmf(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/weirdvoice/pjsip/UAStateReceiver;

.field private final synthetic val$callId:I


# direct methods
.method constructor <init>(Lcom/weirdvoice/pjsip/UAStateReceiver;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/weirdvoice/pjsip/UAStateReceiver$4;->this$0:Lcom/weirdvoice/pjsip/UAStateReceiver;

    iput p2, p0, Lcom/weirdvoice/pjsip/UAStateReceiver$4;->val$callId:I

    .line 1139
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
    .line 1142
    iget-object v0, p0, Lcom/weirdvoice/pjsip/UAStateReceiver$4;->this$0:Lcom/weirdvoice/pjsip/UAStateReceiver;

    # getter for: Lcom/weirdvoice/pjsip/UAStateReceiver;->pjService:Lcom/weirdvoice/pjsip/PjSipService;
    invoke-static {v0}, Lcom/weirdvoice/pjsip/UAStateReceiver;->access$4(Lcom/weirdvoice/pjsip/UAStateReceiver;)Lcom/weirdvoice/pjsip/PjSipService;

    move-result-object v0

    iget v1, p0, Lcom/weirdvoice/pjsip/UAStateReceiver$4;->val$callId:I

    invoke-virtual {v0, v1}, Lcom/weirdvoice/pjsip/PjSipService;->sendPendingDtmf(I)V

    .line 1143
    return-void
.end method
