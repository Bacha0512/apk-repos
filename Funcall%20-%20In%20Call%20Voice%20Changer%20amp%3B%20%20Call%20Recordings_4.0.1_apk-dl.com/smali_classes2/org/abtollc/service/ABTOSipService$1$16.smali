.class Lorg/abtollc/service/ABTOSipService$1$16;
.super Lorg/abtollc/service/ABTOSipService$SipRunnable;
.source "ABTOSipService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/abtollc/service/ABTOSipService$1;->setBluetoothOn(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/abtollc/service/ABTOSipService$1;

.field final synthetic val$on:Z


# direct methods
.method constructor <init>(Lorg/abtollc/service/ABTOSipService$1;Z)V
    .locals 0
    .param p1, "this$1"    # Lorg/abtollc/service/ABTOSipService$1;

    .prologue
    .line 556
    iput-object p1, p0, Lorg/abtollc/service/ABTOSipService$1$16;->this$1:Lorg/abtollc/service/ABTOSipService$1;

    iput-boolean p2, p0, Lorg/abtollc/service/ABTOSipService$1$16;->val$on:Z

    invoke-direct {p0}, Lorg/abtollc/service/ABTOSipService$SipRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method protected doRun()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/abtollc/service/ABTOSipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 559
    # getter for: Lorg/abtollc/service/ABTOSipService;->pjService:Lorg/abtollc/voip/SipService;
    invoke-static {}, Lorg/abtollc/service/ABTOSipService;->access$000()Lorg/abtollc/voip/SipService;

    move-result-object v0

    iget-boolean v1, p0, Lorg/abtollc/service/ABTOSipService$1$16;->val$on:Z

    invoke-virtual {v0, v1}, Lorg/abtollc/voip/SipService;->setBluetoothOn(Z)V

    .line 560
    return-void
.end method
