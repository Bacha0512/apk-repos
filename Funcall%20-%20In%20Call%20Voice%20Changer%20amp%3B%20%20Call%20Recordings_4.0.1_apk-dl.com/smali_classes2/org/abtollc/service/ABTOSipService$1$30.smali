.class Lorg/abtollc/service/ABTOSipService$1$30;
.super Lorg/abtollc/service/ABTOSipService$SipRunnable;
.source "ABTOSipService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/abtollc/service/ABTOSipService$1;->playWaveFile(Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/abtollc/service/ABTOSipService$1;

.field final synthetic val$callId:I

.field final synthetic val$filePath:Ljava/lang/String;

.field final synthetic val$way:I


# direct methods
.method constructor <init>(Lorg/abtollc/service/ABTOSipService$1;Ljava/lang/String;II)V
    .locals 0
    .param p1, "this$1"    # Lorg/abtollc/service/ABTOSipService$1;

    .prologue
    .line 845
    iput-object p1, p0, Lorg/abtollc/service/ABTOSipService$1$30;->this$1:Lorg/abtollc/service/ABTOSipService$1;

    iput-object p2, p0, Lorg/abtollc/service/ABTOSipService$1$30;->val$filePath:Ljava/lang/String;

    iput p3, p0, Lorg/abtollc/service/ABTOSipService$1$30;->val$callId:I

    iput p4, p0, Lorg/abtollc/service/ABTOSipService$1$30;->val$way:I

    invoke-direct {p0}, Lorg/abtollc/service/ABTOSipService$SipRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method protected doRun()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/abtollc/service/ABTOSipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 848
    # getter for: Lorg/abtollc/service/ABTOSipService;->pjService:Lorg/abtollc/voip/SipService;
    invoke-static {}, Lorg/abtollc/service/ABTOSipService;->access$000()Lorg/abtollc/voip/SipService;

    move-result-object v0

    iget-object v1, p0, Lorg/abtollc/service/ABTOSipService$1$30;->val$filePath:Ljava/lang/String;

    iget v2, p0, Lorg/abtollc/service/ABTOSipService$1$30;->val$callId:I

    iget v3, p0, Lorg/abtollc/service/ABTOSipService$1$30;->val$way:I

    invoke-virtual {v0, v1, v2, v3}, Lorg/abtollc/voip/SipService;->playWaveFile(Ljava/lang/String;II)V

    .line 849
    return-void
.end method
