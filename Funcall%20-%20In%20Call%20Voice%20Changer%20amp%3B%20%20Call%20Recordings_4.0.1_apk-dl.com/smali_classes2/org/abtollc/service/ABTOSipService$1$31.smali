.class Lorg/abtollc/service/ABTOSipService$1$31;
.super Lorg/abtollc/service/ABTOSipService$ReturnRunnable;
.source "ABTOSipService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/abtollc/service/ABTOSipService$1;->showCallInfosDialog(I)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/abtollc/service/ABTOSipService$1;

.field final synthetic val$callId:I


# direct methods
.method constructor <init>(Lorg/abtollc/service/ABTOSipService$1;I)V
    .locals 1
    .param p1, "this$1"    # Lorg/abtollc/service/ABTOSipService$1;

    .prologue
    .line 877
    iput-object p1, p0, Lorg/abtollc/service/ABTOSipService$1$31;->this$1:Lorg/abtollc/service/ABTOSipService$1;

    iput p2, p0, Lorg/abtollc/service/ABTOSipService$1$31;->val$callId:I

    iget-object v0, p1, Lorg/abtollc/service/ABTOSipService$1;->this$0:Lorg/abtollc/service/ABTOSipService;

    invoke-direct {p0, v0}, Lorg/abtollc/service/ABTOSipService$ReturnRunnable;-><init>(Lorg/abtollc/service/ABTOSipService;)V

    return-void
.end method


# virtual methods
.method protected runWithReturn()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/abtollc/service/ABTOSipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 880
    iget v1, p0, Lorg/abtollc/service/ABTOSipService$1$31;->val$callId:I

    invoke-static {v1}, Lorg/abtollc/voip/SipCalls;->dumpCallInfo(I)Ljava/lang/String;

    move-result-object v0

    .line 881
    .local v0, "infos":Ljava/lang/String;
    const-string v1, "SIP SRV"

    invoke-static {v1, v0}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    return-object v0
.end method
