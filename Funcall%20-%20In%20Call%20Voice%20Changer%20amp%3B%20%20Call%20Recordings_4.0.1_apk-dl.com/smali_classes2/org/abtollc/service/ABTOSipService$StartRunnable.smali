.class Lorg/abtollc/service/ABTOSipService$StartRunnable;
.super Lorg/abtollc/service/ABTOSipService$SipRunnable;
.source "ABTOSipService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/abtollc/service/ABTOSipService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StartRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/abtollc/service/ABTOSipService;


# direct methods
.method constructor <init>(Lorg/abtollc/service/ABTOSipService;)V
    .locals 0
    .param p1, "this$0"    # Lorg/abtollc/service/ABTOSipService;

    .prologue
    .line 2532
    iput-object p1, p0, Lorg/abtollc/service/ABTOSipService$StartRunnable;->this$0:Lorg/abtollc/service/ABTOSipService;

    invoke-direct {p0}, Lorg/abtollc/service/ABTOSipService$SipRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method protected doRun()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/abtollc/service/ABTOSipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 2535
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$StartRunnable;->this$0:Lorg/abtollc/service/ABTOSipService;

    # invokes: Lorg/abtollc/service/ABTOSipService;->startSipStack()V
    invoke-static {v0}, Lorg/abtollc/service/ABTOSipService;->access$900(Lorg/abtollc/service/ABTOSipService;)V

    .line 2536
    return-void
.end method
