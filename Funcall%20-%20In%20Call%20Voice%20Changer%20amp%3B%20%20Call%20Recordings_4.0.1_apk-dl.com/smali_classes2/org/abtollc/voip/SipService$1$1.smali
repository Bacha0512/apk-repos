.class Lorg/abtollc/voip/SipService$1$1;
.super Lorg/abtollc/service/ABTOSipService$SipRunnable;
.source "SipService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/abtollc/voip/SipService$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/abtollc/voip/SipService$1;


# direct methods
.method constructor <init>(Lorg/abtollc/voip/SipService$1;)V
    .locals 0
    .param p1, "this$1"    # Lorg/abtollc/voip/SipService$1;

    .prologue
    .line 1672
    iput-object p1, p0, Lorg/abtollc/voip/SipService$1$1;->this$1:Lorg/abtollc/voip/SipService$1;

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
    .line 1675
    const-string v0, "SipService"

    const-string v1, "Running pending DTMF send"

    invoke-static {v0, v1}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1676
    iget-object v0, p0, Lorg/abtollc/voip/SipService$1$1;->this$1:Lorg/abtollc/voip/SipService$1;

    iget-object v0, v0, Lorg/abtollc/voip/SipService$1;->this$0:Lorg/abtollc/voip/SipService;

    iget-object v1, p0, Lorg/abtollc/voip/SipService$1$1;->this$1:Lorg/abtollc/voip/SipService$1;

    iget v1, v1, Lorg/abtollc/voip/SipService$1;->val$callId:I

    invoke-virtual {v0, v1}, Lorg/abtollc/voip/SipService;->sendPendingDtmf(I)V

    .line 1677
    return-void
.end method
