.class Lorg/abtollc/service/ABTOSipService$ServicePhoneStateReceiver$1;
.super Lorg/abtollc/service/ABTOSipService$SipRunnable;
.source "ABTOSipService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/abtollc/service/ABTOSipService$ServicePhoneStateReceiver;->onCallStateChanged(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/abtollc/service/ABTOSipService$ServicePhoneStateReceiver;

.field final synthetic val$incomingNumber:Ljava/lang/String;

.field final synthetic val$state:I


# direct methods
.method constructor <init>(Lorg/abtollc/service/ABTOSipService$ServicePhoneStateReceiver;ILjava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lorg/abtollc/service/ABTOSipService$ServicePhoneStateReceiver;

    .prologue
    .line 1567
    iput-object p1, p0, Lorg/abtollc/service/ABTOSipService$ServicePhoneStateReceiver$1;->this$1:Lorg/abtollc/service/ABTOSipService$ServicePhoneStateReceiver;

    iput p2, p0, Lorg/abtollc/service/ABTOSipService$ServicePhoneStateReceiver$1;->val$state:I

    iput-object p3, p0, Lorg/abtollc/service/ABTOSipService$ServicePhoneStateReceiver$1;->val$incomingNumber:Ljava/lang/String;

    invoke-direct {p0}, Lorg/abtollc/service/ABTOSipService$SipRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method protected doRun()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/abtollc/service/ABTOSipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 1571
    # getter for: Lorg/abtollc/service/ABTOSipService;->pjService:Lorg/abtollc/voip/SipService;
    invoke-static {}, Lorg/abtollc/service/ABTOSipService;->access$000()Lorg/abtollc/voip/SipService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1572
    # getter for: Lorg/abtollc/service/ABTOSipService;->pjService:Lorg/abtollc/voip/SipService;
    invoke-static {}, Lorg/abtollc/service/ABTOSipService;->access$000()Lorg/abtollc/voip/SipService;

    move-result-object v0

    iget v1, p0, Lorg/abtollc/service/ABTOSipService$ServicePhoneStateReceiver$1;->val$state:I

    iget-object v2, p0, Lorg/abtollc/service/ABTOSipService$ServicePhoneStateReceiver$1;->val$incomingNumber:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/abtollc/voip/SipService;->onGSMStateChanged(ILjava/lang/String;)V

    .line 1574
    :cond_0
    return-void
.end method
