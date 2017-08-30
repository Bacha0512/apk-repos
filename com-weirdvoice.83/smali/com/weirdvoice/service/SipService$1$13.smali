.class Lcom/weirdvoice/service/SipService$1$13;
.super Lcom/weirdvoice/service/SipService$ReturnRunnable;
.source "SipService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/weirdvoice/service/SipService$1;->reinvite(IZ)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/weirdvoice/service/SipService$1;

.field private final synthetic val$callId:I

.field private final synthetic val$unhold:Z


# direct methods
.method constructor <init>(Lcom/weirdvoice/service/SipService$1;Lcom/weirdvoice/service/SipService;IZ)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/weirdvoice/service/SipService$1$13;->this$1:Lcom/weirdvoice/service/SipService$1;

    iput p3, p0, Lcom/weirdvoice/service/SipService$1$13;->val$callId:I

    iput-boolean p4, p0, Lcom/weirdvoice/service/SipService$1$13;->val$unhold:Z

    .line 447
    invoke-direct {p0, p2}, Lcom/weirdvoice/service/SipService$ReturnRunnable;-><init>(Lcom/weirdvoice/service/SipService;)V

    return-void
.end method


# virtual methods
.method protected runWithReturn()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/weirdvoice/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 450
    # getter for: Lcom/weirdvoice/service/SipService;->pjService:Lcom/weirdvoice/pjsip/PjSipService;
    invoke-static {}, Lcom/weirdvoice/service/SipService;->access$0()Lcom/weirdvoice/pjsip/PjSipService;

    move-result-object v0

    iget v1, p0, Lcom/weirdvoice/service/SipService$1$13;->val$callId:I

    iget-boolean v2, p0, Lcom/weirdvoice/service/SipService$1$13;->val$unhold:Z

    invoke-virtual {v0, v1, v2}, Lcom/weirdvoice/pjsip/PjSipService;->callReinvite(IZ)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
