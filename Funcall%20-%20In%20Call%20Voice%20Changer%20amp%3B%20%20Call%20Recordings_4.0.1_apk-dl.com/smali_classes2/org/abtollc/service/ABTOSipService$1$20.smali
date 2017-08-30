.class Lorg/abtollc/service/ABTOSipService$1$20;
.super Lorg/abtollc/service/ABTOSipService$SipRunnable;
.source "ABTOSipService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/abtollc/service/ABTOSipService$1;->confAdjustTxLevel(IF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/abtollc/service/ABTOSipService$1;

.field final synthetic val$port:I

.field final synthetic val$value:F


# direct methods
.method constructor <init>(Lorg/abtollc/service/ABTOSipService$1;IF)V
    .locals 0
    .param p1, "this$1"    # Lorg/abtollc/service/ABTOSipService$1;

    .prologue
    .line 613
    iput-object p1, p0, Lorg/abtollc/service/ABTOSipService$1$20;->this$1:Lorg/abtollc/service/ABTOSipService$1;

    iput p2, p0, Lorg/abtollc/service/ABTOSipService$1$20;->val$port:I

    iput p3, p0, Lorg/abtollc/service/ABTOSipService$1$20;->val$value:F

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
    .line 616
    # getter for: Lorg/abtollc/service/ABTOSipService;->pjService:Lorg/abtollc/voip/SipService;
    invoke-static {}, Lorg/abtollc/service/ABTOSipService;->access$000()Lorg/abtollc/voip/SipService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 620
    :goto_0
    return-void

    .line 619
    :cond_0
    # getter for: Lorg/abtollc/service/ABTOSipService;->pjService:Lorg/abtollc/voip/SipService;
    invoke-static {}, Lorg/abtollc/service/ABTOSipService;->access$000()Lorg/abtollc/voip/SipService;

    move-result-object v0

    iget v1, p0, Lorg/abtollc/service/ABTOSipService$1$20;->val$port:I

    iget v2, p0, Lorg/abtollc/service/ABTOSipService$1$20;->val$value:F

    invoke-virtual {v0, v1, v2}, Lorg/abtollc/voip/SipService;->confAdjustTxLevel(IF)V

    goto :goto_0
.end method
