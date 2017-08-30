.class public abstract Lcom/weirdvoice/service/SipService$ReturnRunnable;
.super Lcom/weirdvoice/service/SipService$SipRunnable;
.source "SipService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/weirdvoice/service/SipService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "ReturnRunnable"
.end annotation


# instance fields
.field private resultObject:Ljava/lang/Object;

.field private runSemaphore:Ljava/util/concurrent/Semaphore;

.field final synthetic this$0:Lcom/weirdvoice/service/SipService;


# direct methods
.method public constructor <init>(Lcom/weirdvoice/service/SipService;)V
    .locals 2

    .prologue
    .line 1975
    iput-object p1, p0, Lcom/weirdvoice/service/SipService$ReturnRunnable;->this$0:Lcom/weirdvoice/service/SipService;

    .line 1976
    invoke-direct {p0}, Lcom/weirdvoice/service/SipService$SipRunnable;-><init>()V

    .line 1977
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/weirdvoice/service/SipService$ReturnRunnable;->runSemaphore:Ljava/util/concurrent/Semaphore;

    .line 1978
    return-void
.end method

.method private setResult(Ljava/lang/Object;)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1997
    iput-object p1, p0, Lcom/weirdvoice/service/SipService$ReturnRunnable;->resultObject:Ljava/lang/Object;

    .line 1998
    iget-object v0, p0, Lcom/weirdvoice/service/SipService$ReturnRunnable;->runSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1999
    return-void
.end method


# virtual methods
.method public doRun()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/weirdvoice/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 1993
    invoke-virtual {p0}, Lcom/weirdvoice/service/SipService$ReturnRunnable;->runWithReturn()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/weirdvoice/service/SipService$ReturnRunnable;->setResult(Ljava/lang/Object;)V

    .line 1994
    return-void
.end method

.method public getResult()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 1982
    :try_start_0
    iget-object v1, p0, Lcom/weirdvoice/service/SipService$ReturnRunnable;->runSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1986
    :goto_0
    iget-object v1, p0, Lcom/weirdvoice/service/SipService$ReturnRunnable;->resultObject:Ljava/lang/Object;

    return-object v1

    .line 1983
    :catch_0
    move-exception v0

    .line 1984
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "SIP SRV"

    const-string v2, "Can\'t acquire run semaphore... problem..."

    invoke-static {v1, v2}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected abstract runWithReturn()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/weirdvoice/service/SipService$SameThreadException;
        }
    .end annotation
.end method
