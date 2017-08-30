.class Lorg/abtollc/voip/UAStateReceiver$4;
.super Lorg/abtollc/service/ABTOSipService$SipRunnable;
.source "UAStateReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/abtollc/voip/UAStateReceiver;->sendPendingDtmf(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/abtollc/voip/UAStateReceiver;

.field final synthetic val$callId:I


# direct methods
.method constructor <init>(Lorg/abtollc/voip/UAStateReceiver;I)V
    .locals 0
    .param p1, "this$0"    # Lorg/abtollc/voip/UAStateReceiver;

    .prologue
    .line 1383
    iput-object p1, p0, Lorg/abtollc/voip/UAStateReceiver$4;->this$0:Lorg/abtollc/voip/UAStateReceiver;

    iput p2, p0, Lorg/abtollc/voip/UAStateReceiver$4;->val$callId:I

    invoke-direct {p0}, Lorg/abtollc/service/ABTOSipService$SipRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method protected doRun()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/abtollc/service/ABTOSipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 1386
    iget-object v0, p0, Lorg/abtollc/voip/UAStateReceiver$4;->this$0:Lorg/abtollc/voip/UAStateReceiver;

    # getter for: Lorg/abtollc/voip/UAStateReceiver;->pjService:Lorg/abtollc/voip/SipService;
    invoke-static {v0}, Lorg/abtollc/voip/UAStateReceiver;->access$000(Lorg/abtollc/voip/UAStateReceiver;)Lorg/abtollc/voip/SipService;

    move-result-object v0

    iget v1, p0, Lorg/abtollc/voip/UAStateReceiver$4;->val$callId:I

    invoke-virtual {v0, v1}, Lorg/abtollc/voip/SipService;->sendPendingDtmf(I)V

    .line 1387
    return-void
.end method
