.class Lorg/abtollc/voip/UAStateReceiver$2;
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
    .line 1324
    iput-object p1, p0, Lorg/abtollc/voip/UAStateReceiver$2;->this$0:Lorg/abtollc/voip/UAStateReceiver;

    iput-object p2, p0, Lorg/abtollc/voip/UAStateReceiver$2;->val$callInfo:Lorg/abtollc/api/SipCallSession;

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
    .line 1328
    iget-object v0, p0, Lorg/abtollc/voip/UAStateReceiver$2;->this$0:Lorg/abtollc/voip/UAStateReceiver;

    # getter for: Lorg/abtollc/voip/UAStateReceiver;->pjService:Lorg/abtollc/voip/SipService;
    invoke-static {v0}, Lorg/abtollc/voip/UAStateReceiver;->access$000(Lorg/abtollc/voip/UAStateReceiver;)Lorg/abtollc/voip/SipService;

    move-result-object v0

    iget-object v1, p0, Lorg/abtollc/voip/UAStateReceiver$2;->val$callInfo:Lorg/abtollc/api/SipCallSession;

    invoke-virtual {v1}, Lorg/abtollc/api/SipCallSession;->getCallId()I

    move-result v1

    sget-object v2, Lorg/abtollc/jni/pjsip_status_code;->PJSIP_SC_OK:Lorg/abtollc/jni/pjsip_status_code;

    invoke-virtual {v2}, Lorg/abtollc/jni/pjsip_status_code;->swigValue()I

    move-result v2

    iget-object v3, p0, Lorg/abtollc/voip/UAStateReceiver$2;->val$callInfo:Lorg/abtollc/api/SipCallSession;

    invoke-virtual {v3}, Lorg/abtollc/api/SipCallSession;->mediaHasVideo()Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/abtollc/voip/SipService;->callAnswer(IIZ)I

    .line 1329
    return-void
.end method
