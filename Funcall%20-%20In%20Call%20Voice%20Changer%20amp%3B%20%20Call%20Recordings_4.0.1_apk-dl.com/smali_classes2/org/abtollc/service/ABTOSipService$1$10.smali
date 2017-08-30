.class Lorg/abtollc/service/ABTOSipService$1$10;
.super Lorg/abtollc/service/ABTOSipService$ReturnRunnable;
.source "ABTOSipService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/abtollc/service/ABTOSipService$1;->xfer(ILjava/lang/String;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/abtollc/service/ABTOSipService$1;

.field final synthetic val$callId:I

.field final synthetic val$callee:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/abtollc/service/ABTOSipService$1;ILjava/lang/String;)V
    .locals 1
    .param p1, "this$1"    # Lorg/abtollc/service/ABTOSipService$1;

    .prologue
    .line 428
    iput-object p1, p0, Lorg/abtollc/service/ABTOSipService$1$10;->this$1:Lorg/abtollc/service/ABTOSipService$1;

    iput p2, p0, Lorg/abtollc/service/ABTOSipService$1$10;->val$callId:I

    iput-object p3, p0, Lorg/abtollc/service/ABTOSipService$1$10;->val$callee:Ljava/lang/String;

    iget-object v0, p1, Lorg/abtollc/service/ABTOSipService$1;->this$0:Lorg/abtollc/service/ABTOSipService;

    invoke-direct {p0, v0}, Lorg/abtollc/service/ABTOSipService$ReturnRunnable;-><init>(Lorg/abtollc/service/ABTOSipService;)V

    return-void
.end method


# virtual methods
.method protected runWithReturn()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/abtollc/service/ABTOSipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 431
    # getter for: Lorg/abtollc/service/ABTOSipService;->pjService:Lorg/abtollc/voip/SipService;
    invoke-static {}, Lorg/abtollc/service/ABTOSipService;->access$000()Lorg/abtollc/voip/SipService;

    move-result-object v0

    iget v1, p0, Lorg/abtollc/service/ABTOSipService$1$10;->val$callId:I

    iget-object v2, p0, Lorg/abtollc/service/ABTOSipService$1$10;->val$callee:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/abtollc/voip/SipService;->callXfer(ILjava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
