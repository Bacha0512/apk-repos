.class Lorg/abtollc/service/ABTOSipService$1$23;
.super Lorg/abtollc/service/ABTOSipService$SipRunnable;
.source "ABTOSipService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/abtollc/service/ABTOSipService$1;->startRecording(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/abtollc/service/ABTOSipService$1;

.field final synthetic val$callId:I

.field final synthetic val$filePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/abtollc/service/ABTOSipService$1;ILjava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lorg/abtollc/service/ABTOSipService$1;

    .prologue
    .line 681
    iput-object p1, p0, Lorg/abtollc/service/ABTOSipService$1$23;->this$1:Lorg/abtollc/service/ABTOSipService$1;

    iput p2, p0, Lorg/abtollc/service/ABTOSipService$1$23;->val$callId:I

    iput-object p3, p0, Lorg/abtollc/service/ABTOSipService$1$23;->val$filePath:Ljava/lang/String;

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
    .line 684
    # getter for: Lorg/abtollc/service/ABTOSipService;->pjService:Lorg/abtollc/voip/SipService;
    invoke-static {}, Lorg/abtollc/service/ABTOSipService;->access$000()Lorg/abtollc/voip/SipService;

    move-result-object v0

    iget v1, p0, Lorg/abtollc/service/ABTOSipService$1$23;->val$callId:I

    iget-object v2, p0, Lorg/abtollc/service/ABTOSipService$1$23;->val$filePath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/abtollc/voip/SipService;->startRecording(ILjava/lang/String;)V

    .line 685
    return-void
.end method
