.class Lorg/abtollc/voip/UAStateReceiver$3;
.super Lorg/abtollc/service/ABTOSipService$SipRunnable;
.source "UAStateReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/abtollc/voip/UAStateReceiver;->handleHeadsetButton()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/abtollc/voip/UAStateReceiver;

.field final synthetic val$callInfo:Lorg/abtollc/api/SipCallSession;


# direct methods
.method constructor <init>(Lorg/abtollc/voip/UAStateReceiver;Lorg/abtollc/api/SipCallSession;)V
    .locals 0
    .param p1, "this$0"    # Lorg/abtollc/voip/UAStateReceiver;

    .prologue
    .line 1345
    iput-object p1, p0, Lorg/abtollc/voip/UAStateReceiver$3;->this$0:Lorg/abtollc/voip/UAStateReceiver;

    iput-object p2, p0, Lorg/abtollc/voip/UAStateReceiver$3;->val$callInfo:Lorg/abtollc/api/SipCallSession;

    invoke-direct {p0}, Lorg/abtollc/service/ABTOSipService$SipRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method protected doRun()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/abtollc/service/ABTOSipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 1348
    iget-object v1, p0, Lorg/abtollc/voip/UAStateReceiver$3;->this$0:Lorg/abtollc/voip/UAStateReceiver;

    # getter for: Lorg/abtollc/voip/UAStateReceiver;->pjService:Lorg/abtollc/voip/SipService;
    invoke-static {v1}, Lorg/abtollc/voip/UAStateReceiver;->access$000(Lorg/abtollc/voip/UAStateReceiver;)Lorg/abtollc/voip/SipService;

    move-result-object v1

    iget-object v1, v1, Lorg/abtollc/voip/SipService;->prefsWrapper:Lorg/abtollc/utils/PreferencesProviderWrapper;

    invoke-virtual {v1}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getHeadsetAction()I

    move-result v0

    .line 1349
    .local v0, "preferedAction":I
    if-nez v0, :cond_1

    .line 1350
    iget-object v1, p0, Lorg/abtollc/voip/UAStateReceiver$3;->this$0:Lorg/abtollc/voip/UAStateReceiver;

    # getter for: Lorg/abtollc/voip/UAStateReceiver;->pjService:Lorg/abtollc/voip/SipService;
    invoke-static {v1}, Lorg/abtollc/voip/UAStateReceiver;->access$000(Lorg/abtollc/voip/UAStateReceiver;)Lorg/abtollc/voip/SipService;

    move-result-object v1

    iget-object v2, p0, Lorg/abtollc/voip/UAStateReceiver$3;->val$callInfo:Lorg/abtollc/api/SipCallSession;

    invoke-virtual {v2}, Lorg/abtollc/api/SipCallSession;->getCallId()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/abtollc/voip/SipService;->callHangup(II)I

    .line 1356
    :cond_0
    :goto_0
    return-void

    .line 1351
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 1352
    iget-object v1, p0, Lorg/abtollc/voip/UAStateReceiver$3;->this$0:Lorg/abtollc/voip/UAStateReceiver;

    # getter for: Lorg/abtollc/voip/UAStateReceiver;->pjService:Lorg/abtollc/voip/SipService;
    invoke-static {v1}, Lorg/abtollc/voip/UAStateReceiver;->access$000(Lorg/abtollc/voip/UAStateReceiver;)Lorg/abtollc/voip/SipService;

    move-result-object v1

    iget-object v2, p0, Lorg/abtollc/voip/UAStateReceiver$3;->val$callInfo:Lorg/abtollc/api/SipCallSession;

    invoke-virtual {v2}, Lorg/abtollc/api/SipCallSession;->getCallId()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/abtollc/voip/SipService;->callHold(I)I

    goto :goto_0

    .line 1353
    :cond_2
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1354
    iget-object v1, p0, Lorg/abtollc/voip/UAStateReceiver$3;->this$0:Lorg/abtollc/voip/UAStateReceiver;

    # getter for: Lorg/abtollc/voip/UAStateReceiver;->pjService:Lorg/abtollc/voip/SipService;
    invoke-static {v1}, Lorg/abtollc/voip/UAStateReceiver;->access$000(Lorg/abtollc/voip/UAStateReceiver;)Lorg/abtollc/voip/SipService;

    move-result-object v1

    iget-object v1, v1, Lorg/abtollc/voip/SipService;->mediaManager:Lorg/abtollc/service/MediaManager;

    invoke-virtual {v1}, Lorg/abtollc/service/MediaManager;->toggleMute()V

    goto :goto_0
.end method
