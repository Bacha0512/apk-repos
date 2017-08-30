.class Lcom/weirdvoice/pjsip/UAStateReceiver$2;
.super Lcom/weirdvoice/service/SipService$SipRunnable;
.source "UAStateReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/weirdvoice/pjsip/UAStateReceiver;->handleHeadsetButton()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/weirdvoice/pjsip/UAStateReceiver;

.field private final synthetic val$callInfo:Lcom/weirdvoice/api/SipCallSession;


# direct methods
.method constructor <init>(Lcom/weirdvoice/pjsip/UAStateReceiver;Lcom/weirdvoice/api/SipCallSession;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/weirdvoice/pjsip/UAStateReceiver$2;->this$0:Lcom/weirdvoice/pjsip/UAStateReceiver;

    iput-object p2, p0, Lcom/weirdvoice/pjsip/UAStateReceiver$2;->val$callInfo:Lcom/weirdvoice/api/SipCallSession;

    .line 1078
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
    .line 1082
    iget-object v0, p0, Lcom/weirdvoice/pjsip/UAStateReceiver$2;->this$0:Lcom/weirdvoice/pjsip/UAStateReceiver;

    # getter for: Lcom/weirdvoice/pjsip/UAStateReceiver;->pjService:Lcom/weirdvoice/pjsip/PjSipService;
    invoke-static {v0}, Lcom/weirdvoice/pjsip/UAStateReceiver;->access$4(Lcom/weirdvoice/pjsip/UAStateReceiver;)Lcom/weirdvoice/pjsip/PjSipService;

    move-result-object v0

    iget-object v1, p0, Lcom/weirdvoice/pjsip/UAStateReceiver$2;->val$callInfo:Lcom/weirdvoice/api/SipCallSession;

    invoke-virtual {v1}, Lcom/weirdvoice/api/SipCallSession;->getCallId()I

    move-result v1

    .line 1083
    sget-object v2, Lorg/pjsip/pjsua/pjsip_status_code;->PJSIP_SC_OK:Lorg/pjsip/pjsua/pjsip_status_code;

    invoke-virtual {v2}, Lorg/pjsip/pjsua/pjsip_status_code;->swigValue()I

    move-result v2

    .line 1082
    invoke-virtual {v0, v1, v2}, Lcom/weirdvoice/pjsip/PjSipService;->callAnswer(II)I

    .line 1084
    return-void
.end method
