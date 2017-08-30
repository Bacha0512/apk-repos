.class Lorg/abtollc/service/ABTOSipService$1$11;
.super Lorg/abtollc/service/ABTOSipService$ReturnRunnable;
.source "ABTOSipService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/abtollc/service/ABTOSipService$1;->xferReplace(III)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/abtollc/service/ABTOSipService$1;

.field final synthetic val$callId:I

.field final synthetic val$options:I

.field final synthetic val$otherCallId:I


# direct methods
.method constructor <init>(Lorg/abtollc/service/ABTOSipService$1;III)V
    .locals 1
    .param p1, "this$1"    # Lorg/abtollc/service/ABTOSipService$1;

    .prologue
    .line 442
    iput-object p1, p0, Lorg/abtollc/service/ABTOSipService$1$11;->this$1:Lorg/abtollc/service/ABTOSipService$1;

    iput p2, p0, Lorg/abtollc/service/ABTOSipService$1$11;->val$callId:I

    iput p3, p0, Lorg/abtollc/service/ABTOSipService$1$11;->val$otherCallId:I

    iput p4, p0, Lorg/abtollc/service/ABTOSipService$1$11;->val$options:I

    iget-object v0, p1, Lorg/abtollc/service/ABTOSipService$1;->this$0:Lorg/abtollc/service/ABTOSipService;

    invoke-direct {p0, v0}, Lorg/abtollc/service/ABTOSipService$ReturnRunnable;-><init>(Lorg/abtollc/service/ABTOSipService;)V

    return-void
.end method


# virtual methods
.method protected runWithReturn()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/abtollc/service/ABTOSipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 445
    # getter for: Lorg/abtollc/service/ABTOSipService;->pjService:Lorg/abtollc/voip/SipService;
    invoke-static {}, Lorg/abtollc/service/ABTOSipService;->access$000()Lorg/abtollc/voip/SipService;

    move-result-object v0

    iget v1, p0, Lorg/abtollc/service/ABTOSipService$1$11;->val$callId:I

    iget v2, p0, Lorg/abtollc/service/ABTOSipService$1$11;->val$otherCallId:I

    iget v3, p0, Lorg/abtollc/service/ABTOSipService$1$11;->val$options:I

    invoke-virtual {v0, v1, v2, v3}, Lorg/abtollc/voip/SipService;->callXferReplace(III)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
