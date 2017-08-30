.class Lorg/abtollc/service/ABTOSipService$1$1;
.super Lorg/abtollc/service/ABTOSipService$SipRunnable;
.source "ABTOSipService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/abtollc/service/ABTOSipService$1;->updateCallOptions(ILandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/abtollc/service/ABTOSipService$1;

.field final synthetic val$callId:I

.field final synthetic val$options:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lorg/abtollc/service/ABTOSipService$1;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "this$1"    # Lorg/abtollc/service/ABTOSipService$1;

    .prologue
    .line 119
    iput-object p1, p0, Lorg/abtollc/service/ABTOSipService$1$1;->this$1:Lorg/abtollc/service/ABTOSipService$1;

    iput p2, p0, Lorg/abtollc/service/ABTOSipService$1$1;->val$callId:I

    iput-object p3, p0, Lorg/abtollc/service/ABTOSipService$1$1;->val$options:Landroid/os/Bundle;

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
    .line 122
    # getter for: Lorg/abtollc/service/ABTOSipService;->pjService:Lorg/abtollc/voip/SipService;
    invoke-static {}, Lorg/abtollc/service/ABTOSipService;->access$000()Lorg/abtollc/voip/SipService;

    move-result-object v0

    iget v1, p0, Lorg/abtollc/service/ABTOSipService$1$1;->val$callId:I

    iget-object v2, p0, Lorg/abtollc/service/ABTOSipService$1$1;->val$options:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Lorg/abtollc/voip/SipService;->updateCallOptions(ILandroid/os/Bundle;)I

    .line 123
    return-void
.end method
