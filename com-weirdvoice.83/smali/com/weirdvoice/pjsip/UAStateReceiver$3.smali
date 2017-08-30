.class Lcom/weirdvoice/pjsip/UAStateReceiver$3;
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
    iput-object p1, p0, Lcom/weirdvoice/pjsip/UAStateReceiver$3;->this$0:Lcom/weirdvoice/pjsip/UAStateReceiver;

    iput-object p2, p0, Lcom/weirdvoice/pjsip/UAStateReceiver$3;->val$callInfo:Lcom/weirdvoice/api/SipCallSession;

    .line 1100
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
    .line 1104
    iget-object v0, p0, Lcom/weirdvoice/pjsip/UAStateReceiver$3;->this$0:Lcom/weirdvoice/pjsip/UAStateReceiver;

    # getter for: Lcom/weirdvoice/pjsip/UAStateReceiver;->mPreferedHeadsetAction:I
    invoke-static {v0}, Lcom/weirdvoice/pjsip/UAStateReceiver;->access$12(Lcom/weirdvoice/pjsip/UAStateReceiver;)I

    move-result v0

    if-nez v0, :cond_1

    .line 1105
    iget-object v0, p0, Lcom/weirdvoice/pjsip/UAStateReceiver$3;->this$0:Lcom/weirdvoice/pjsip/UAStateReceiver;

    # getter for: Lcom/weirdvoice/pjsip/UAStateReceiver;->pjService:Lcom/weirdvoice/pjsip/PjSipService;
    invoke-static {v0}, Lcom/weirdvoice/pjsip/UAStateReceiver;->access$4(Lcom/weirdvoice/pjsip/UAStateReceiver;)Lcom/weirdvoice/pjsip/PjSipService;

    move-result-object v0

    iget-object v1, p0, Lcom/weirdvoice/pjsip/UAStateReceiver$3;->val$callInfo:Lcom/weirdvoice/api/SipCallSession;

    invoke-virtual {v1}, Lcom/weirdvoice/api/SipCallSession;->getCallId()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/weirdvoice/pjsip/PjSipService;->callHangup(II)I

    .line 1111
    :cond_0
    :goto_0
    return-void

    .line 1106
    :cond_1
    iget-object v0, p0, Lcom/weirdvoice/pjsip/UAStateReceiver$3;->this$0:Lcom/weirdvoice/pjsip/UAStateReceiver;

    # getter for: Lcom/weirdvoice/pjsip/UAStateReceiver;->mPreferedHeadsetAction:I
    invoke-static {v0}, Lcom/weirdvoice/pjsip/UAStateReceiver;->access$12(Lcom/weirdvoice/pjsip/UAStateReceiver;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 1107
    iget-object v0, p0, Lcom/weirdvoice/pjsip/UAStateReceiver$3;->this$0:Lcom/weirdvoice/pjsip/UAStateReceiver;

    # getter for: Lcom/weirdvoice/pjsip/UAStateReceiver;->pjService:Lcom/weirdvoice/pjsip/PjSipService;
    invoke-static {v0}, Lcom/weirdvoice/pjsip/UAStateReceiver;->access$4(Lcom/weirdvoice/pjsip/UAStateReceiver;)Lcom/weirdvoice/pjsip/PjSipService;

    move-result-object v0

    iget-object v1, p0, Lcom/weirdvoice/pjsip/UAStateReceiver$3;->val$callInfo:Lcom/weirdvoice/api/SipCallSession;

    invoke-virtual {v1}, Lcom/weirdvoice/api/SipCallSession;->getCallId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/weirdvoice/pjsip/PjSipService;->callHold(I)I

    goto :goto_0

    .line 1108
    :cond_2
    iget-object v0, p0, Lcom/weirdvoice/pjsip/UAStateReceiver$3;->this$0:Lcom/weirdvoice/pjsip/UAStateReceiver;

    # getter for: Lcom/weirdvoice/pjsip/UAStateReceiver;->mPreferedHeadsetAction:I
    invoke-static {v0}, Lcom/weirdvoice/pjsip/UAStateReceiver;->access$12(Lcom/weirdvoice/pjsip/UAStateReceiver;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1109
    iget-object v0, p0, Lcom/weirdvoice/pjsip/UAStateReceiver$3;->this$0:Lcom/weirdvoice/pjsip/UAStateReceiver;

    # getter for: Lcom/weirdvoice/pjsip/UAStateReceiver;->pjService:Lcom/weirdvoice/pjsip/PjSipService;
    invoke-static {v0}, Lcom/weirdvoice/pjsip/UAStateReceiver;->access$4(Lcom/weirdvoice/pjsip/UAStateReceiver;)Lcom/weirdvoice/pjsip/PjSipService;

    move-result-object v0

    iget-object v0, v0, Lcom/weirdvoice/pjsip/PjSipService;->mediaManager:Lcom/weirdvoice/service/MediaManager;

    invoke-virtual {v0}, Lcom/weirdvoice/service/MediaManager;->toggleMute()V

    goto :goto_0
.end method
