.class Lcom/weirdvoice/service/SipService$ServicePhoneStateReceiver$1;
.super Lcom/weirdvoice/service/SipService$SipRunnable;
.source "SipService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/weirdvoice/service/SipService$ServicePhoneStateReceiver;->onCallStateChanged(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/weirdvoice/service/SipService$ServicePhoneStateReceiver;

.field private final synthetic val$incomingNumber:Ljava/lang/String;

.field private final synthetic val$state:I


# direct methods
.method constructor <init>(Lcom/weirdvoice/service/SipService$ServicePhoneStateReceiver;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/weirdvoice/service/SipService$ServicePhoneStateReceiver$1;->this$1:Lcom/weirdvoice/service/SipService$ServicePhoneStateReceiver;

    iput p2, p0, Lcom/weirdvoice/service/SipService$ServicePhoneStateReceiver$1;->val$state:I

    iput-object p3, p0, Lcom/weirdvoice/service/SipService$ServicePhoneStateReceiver$1;->val$incomingNumber:Ljava/lang/String;

    .line 1001
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
    .line 1005
    # getter for: Lcom/weirdvoice/service/SipService;->pjService:Lcom/weirdvoice/pjsip/PjSipService;
    invoke-static {}, Lcom/weirdvoice/service/SipService;->access$0()Lcom/weirdvoice/pjsip/PjSipService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1006
    # getter for: Lcom/weirdvoice/service/SipService;->pjService:Lcom/weirdvoice/pjsip/PjSipService;
    invoke-static {}, Lcom/weirdvoice/service/SipService;->access$0()Lcom/weirdvoice/pjsip/PjSipService;

    move-result-object v0

    iget v1, p0, Lcom/weirdvoice/service/SipService$ServicePhoneStateReceiver$1;->val$state:I

    iget-object v2, p0, Lcom/weirdvoice/service/SipService$ServicePhoneStateReceiver$1;->val$incomingNumber:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/weirdvoice/pjsip/PjSipService;->onGSMStateChanged(ILjava/lang/String;)V

    .line 1008
    :cond_0
    return-void
.end method
