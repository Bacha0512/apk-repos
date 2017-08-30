.class Lcom/weirdvoice/service/SipService$1$12;
.super Lcom/weirdvoice/service/SipService$ReturnRunnable;
.source "SipService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/weirdvoice/service/SipService$1;->hold(I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/weirdvoice/service/SipService$1;

.field private final synthetic val$callId:I


# direct methods
.method constructor <init>(Lcom/weirdvoice/service/SipService$1;Lcom/weirdvoice/service/SipService;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/weirdvoice/service/SipService$1$12;->this$1:Lcom/weirdvoice/service/SipService$1;

    iput p3, p0, Lcom/weirdvoice/service/SipService$1$12;->val$callId:I

    .line 430
    invoke-direct {p0, p2}, Lcom/weirdvoice/service/SipService$ReturnRunnable;-><init>(Lcom/weirdvoice/service/SipService;)V

    return-void
.end method


# virtual methods
.method protected runWithReturn()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/weirdvoice/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 433
    # getter for: Lcom/weirdvoice/service/SipService;->pjService:Lcom/weirdvoice/pjsip/PjSipService;
    invoke-static {}, Lcom/weirdvoice/service/SipService;->access$0()Lcom/weirdvoice/pjsip/PjSipService;

    move-result-object v0

    iget v1, p0, Lcom/weirdvoice/service/SipService$1$12;->val$callId:I

    invoke-virtual {v0, v1}, Lcom/weirdvoice/pjsip/PjSipService;->callHold(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
