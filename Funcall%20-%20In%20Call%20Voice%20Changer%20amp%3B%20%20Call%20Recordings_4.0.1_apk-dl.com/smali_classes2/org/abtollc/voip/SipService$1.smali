.class Lorg/abtollc/voip/SipService$1;
.super Ljava/util/TimerTask;
.source "SipService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/abtollc/voip/SipService;->sendDtmf(ILjava/lang/String;)I
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
    .line 1669
    iput-object p1, p0, Lorg/abtollc/voip/SipService$1;->this$0:Lorg/abtollc/voip/SipService;

    iput p2, p0, Lorg/abtollc/voip/SipService$1;->val$callId:I

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1672
    iget-object v0, p0, Lorg/abtollc/voip/SipService$1;->this$0:Lorg/abtollc/voip/SipService;

    iget-object v0, v0, Lorg/abtollc/voip/SipService;->service:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v0}, Lorg/abtollc/service/ABTOSipService;->getExecutor()Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;

    move-result-object v0

    new-instance v1, Lorg/abtollc/voip/SipService$1$1;

    invoke-direct {v1, p0}, Lorg/abtollc/voip/SipService$1$1;-><init>(Lorg/abtollc/voip/SipService$1;)V

    invoke-virtual {v0, v1}, Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 1679
    return-void
.end method
