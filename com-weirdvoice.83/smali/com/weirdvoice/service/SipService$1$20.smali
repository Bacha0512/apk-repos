.class Lcom/weirdvoice/service/SipService$1$20;
.super Lcom/weirdvoice/service/SipService$SipRunnable;
.source "SipService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/weirdvoice/service/SipService$1;->startRecording(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/weirdvoice/service/SipService$1;

.field private final synthetic val$callId:I

.field private final synthetic val$way:I


# direct methods
.method constructor <init>(Lcom/weirdvoice/service/SipService$1;II)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/weirdvoice/service/SipService$1$20;->this$1:Lcom/weirdvoice/service/SipService$1;

    iput p2, p0, Lcom/weirdvoice/service/SipService$1$20;->val$callId:I

    iput p3, p0, Lcom/weirdvoice/service/SipService$1$20;->val$way:I

    .line 618
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
    .line 621
    # getter for: Lcom/weirdvoice/service/SipService;->pjService:Lcom/weirdvoice/pjsip/PjSipService;
    invoke-static {}, Lcom/weirdvoice/service/SipService;->access$0()Lcom/weirdvoice/pjsip/PjSipService;

    move-result-object v0

    iget v1, p0, Lcom/weirdvoice/service/SipService$1$20;->val$callId:I

    iget v2, p0, Lcom/weirdvoice/service/SipService$1$20;->val$way:I

    invoke-virtual {v0, v1, v2}, Lcom/weirdvoice/pjsip/PjSipService;->startRecording(II)V

    .line 622
    return-void
.end method
