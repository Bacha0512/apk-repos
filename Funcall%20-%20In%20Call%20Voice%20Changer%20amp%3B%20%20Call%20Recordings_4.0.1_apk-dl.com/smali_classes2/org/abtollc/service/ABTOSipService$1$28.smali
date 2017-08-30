.class Lorg/abtollc/service/ABTOSipService$1$28;
.super Lorg/abtollc/service/ABTOSipService$SipRunnable;
.source "ABTOSipService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/abtollc/service/ABTOSipService$1;->zrtpSASVerified(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/abtollc/service/ABTOSipService$1;

.field final synthetic val$callId:I


# direct methods
.method constructor <init>(Lorg/abtollc/service/ABTOSipService$1;I)V
    .locals 0
    .param p1, "this$1"    # Lorg/abtollc/service/ABTOSipService$1;

    .prologue
    .line 802
    iput-object p1, p0, Lorg/abtollc/service/ABTOSipService$1$28;->this$1:Lorg/abtollc/service/ABTOSipService$1;

    iput p2, p0, Lorg/abtollc/service/ABTOSipService$1$28;->val$callId:I

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
    .line 805
    # getter for: Lorg/abtollc/service/ABTOSipService;->pjService:Lorg/abtollc/voip/SipService;
    invoke-static {}, Lorg/abtollc/service/ABTOSipService;->access$000()Lorg/abtollc/voip/SipService;

    move-result-object v0

    iget v1, p0, Lorg/abtollc/service/ABTOSipService$1$28;->val$callId:I

    invoke-virtual {v0, v1}, Lorg/abtollc/voip/SipService;->zrtpSASVerified(I)V

    .line 806
    # getter for: Lorg/abtollc/service/ABTOSipService;->pjService:Lorg/abtollc/voip/SipService;
    invoke-static {}, Lorg/abtollc/service/ABTOSipService;->access$000()Lorg/abtollc/voip/SipService;

    move-result-object v0

    iget-object v0, v0, Lorg/abtollc/voip/SipService;->zrtpReceiver:Lorg/abtollc/voip/ZrtpStateReceiver;

    iget v1, p0, Lorg/abtollc/service/ABTOSipService$1$28;->val$callId:I

    invoke-virtual {v0, v1}, Lorg/abtollc/voip/ZrtpStateReceiver;->updateZrtpInfos(I)V

    .line 807
    return-void
.end method
