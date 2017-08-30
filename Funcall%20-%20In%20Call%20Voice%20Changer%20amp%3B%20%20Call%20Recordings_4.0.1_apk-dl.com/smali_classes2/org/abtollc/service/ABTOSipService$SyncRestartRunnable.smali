.class Lorg/abtollc/service/ABTOSipService$SyncRestartRunnable;
.super Lorg/abtollc/service/ABTOSipService$ReturnRunnable;
.source "ABTOSipService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/abtollc/service/ABTOSipService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SyncRestartRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/abtollc/service/ABTOSipService;


# direct methods
.method constructor <init>(Lorg/abtollc/service/ABTOSipService;)V
    .locals 0
    .param p1, "this$0"    # Lorg/abtollc/service/ABTOSipService;

    .prologue
    .line 2573
    iput-object p1, p0, Lorg/abtollc/service/ABTOSipService$SyncRestartRunnable;->this$0:Lorg/abtollc/service/ABTOSipService;

    invoke-direct {p0, p1}, Lorg/abtollc/service/ABTOSipService$ReturnRunnable;-><init>(Lorg/abtollc/service/ABTOSipService;)V

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
    .line 2576
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$SyncRestartRunnable;->this$0:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v0}, Lorg/abtollc/service/ABTOSipService;->stopSipStack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2577
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$SyncRestartRunnable;->this$0:Lorg/abtollc/service/ABTOSipService;

    # invokes: Lorg/abtollc/service/ABTOSipService;->startSipStack()V
    invoke-static {v0}, Lorg/abtollc/service/ABTOSipService;->access$900(Lorg/abtollc/service/ABTOSipService;)V

    .line 2581
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 2579
    :cond_0
    const-string v0, "SIP SRV"

    const-string v1, "Can\'t stop ... so do not restart ! "

    invoke-static {v0, v1}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
