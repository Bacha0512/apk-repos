.class Lorg/abtollc/voip/SipService$2;
.super Lorg/abtollc/service/ABTOSipService$SipRunnable;
.source "SipService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/abtollc/voip/SipService;->refreshCallMediaState(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/abtollc/voip/SipService;

.field final synthetic val$callId:I


# direct methods
.method constructor <init>(Lorg/abtollc/voip/SipService;I)V
    .locals 0
    .param p1, "this$0"    # Lorg/abtollc/voip/SipService;

    .prologue
    .line 2093
    iput-object p1, p0, Lorg/abtollc/voip/SipService$2;->this$0:Lorg/abtollc/voip/SipService;

    iput p2, p0, Lorg/abtollc/voip/SipService$2;->val$callId:I

    invoke-direct {p0}, Lorg/abtollc/service/ABTOSipService$SipRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public doRun()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/abtollc/service/ABTOSipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 2096
    iget-object v0, p0, Lorg/abtollc/voip/SipService$2;->this$0:Lorg/abtollc/voip/SipService;

    iget-boolean v0, v0, Lorg/abtollc/voip/SipService;->created:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/abtollc/voip/SipService$2;->this$0:Lorg/abtollc/voip/SipService;

    iget-object v0, v0, Lorg/abtollc/voip/SipService;->userAgentReceiver:Lorg/abtollc/voip/UAStateReceiver;

    if-eqz v0, :cond_0

    .line 2097
    iget-object v0, p0, Lorg/abtollc/voip/SipService$2;->this$0:Lorg/abtollc/voip/SipService;

    iget-object v0, v0, Lorg/abtollc/voip/SipService;->userAgentReceiver:Lorg/abtollc/voip/UAStateReceiver;

    iget v1, p0, Lorg/abtollc/voip/SipService$2;->val$callId:I

    invoke-virtual {v0, v1}, Lorg/abtollc/voip/UAStateReceiver;->updateCallMediaState(I)V

    .line 2099
    :cond_0
    return-void
.end method
