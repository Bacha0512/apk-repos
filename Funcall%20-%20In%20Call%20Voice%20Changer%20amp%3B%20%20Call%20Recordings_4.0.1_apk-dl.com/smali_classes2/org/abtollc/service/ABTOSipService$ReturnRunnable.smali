.class public abstract Lorg/abtollc/service/ABTOSipService$ReturnRunnable;
.super Lorg/abtollc/service/ABTOSipService$SipRunnable;
.source "ABTOSipService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/abtollc/service/ABTOSipService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "ReturnRunnable"
.end annotation


# instance fields
.field private resultObject:Ljava/lang/Object;

.field private runSemaphore:Ljava/util/concurrent/Semaphore;

.field final synthetic this$0:Lorg/abtollc/service/ABTOSipService;


# direct methods
.method public constructor <init>(Lorg/abtollc/service/ABTOSipService;)V
    .locals 2
    .param p1, "this$0"    # Lorg/abtollc/service/ABTOSipService;

    .prologue
    .line 2645
    iput-object p1, p0, Lorg/abtollc/service/ABTOSipService$ReturnRunnable;->this$0:Lorg/abtollc/service/ABTOSipService;

    .line 2646
    invoke-direct {p0}, Lorg/abtollc/service/ABTOSipService$SipRunnable;-><init>()V

    .line 2647
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lorg/abtollc/service/ABTOSipService$ReturnRunnable;->runSemaphore:Ljava/util/concurrent/Semaphore;

    .line 2648
    return-void
.end method

.method private setResult(Ljava/lang/Object;)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2667
    iput-object p1, p0, Lorg/abtollc/service/ABTOSipService$ReturnRunnable;->resultObject:Ljava/lang/Object;

    .line 2668
    iget-object v0, p0, Lorg/abtollc/service/ABTOSipService$ReturnRunnable;->runSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 2669
    return-void
.end method


# virtual methods
.method public doRun()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/abtollc/service/ABTOSipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 2663
    invoke-virtual {p0}, Lorg/abtollc/service/ABTOSipService$ReturnRunnable;->runWithReturn()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/abtollc/service/ABTOSipService$ReturnRunnable;->setResult(Ljava/lang/Object;)V

    .line 2664
    return-void
.end method

.method public getResult()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 2652
    :try_start_0
    iget-object v1, p0, Lorg/abtollc/service/ABTOSipService$ReturnRunnable;->runSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2656
    :goto_0
    iget-object v1, p0, Lorg/abtollc/service/ABTOSipService$ReturnRunnable;->resultObject:Ljava/lang/Object;

    return-object v1

    .line 2653
    :catch_0
    move-exception v0

    .line 2654
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "SIP SRV"

    const-string v2, "Can\'t acquire run semaphore... problem..."

    invoke-static {v1, v2}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected abstract runWithReturn()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/abtollc/service/ABTOSipService$SameThreadException;
        }
    .end annotation
.end method
