.class Lcom/weirdvoice/service/SipService$SyncStopRunnable;
.super Lcom/weirdvoice/service/SipService$ReturnRunnable;
.source "SipService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/weirdvoice/service/SipService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SyncStopRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/weirdvoice/service/SipService;


# direct methods
.method constructor <init>(Lcom/weirdvoice/service/SipService;)V
    .locals 0

    .prologue
    .line 1878
    iput-object p1, p0, Lcom/weirdvoice/service/SipService$SyncStopRunnable;->this$0:Lcom/weirdvoice/service/SipService;

    invoke-direct {p0, p1}, Lcom/weirdvoice/service/SipService$ReturnRunnable;-><init>(Lcom/weirdvoice/service/SipService;)V

    return-void
.end method


# virtual methods
.method protected runWithReturn()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/weirdvoice/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 1881
    iget-object v0, p0, Lcom/weirdvoice/service/SipService$SyncStopRunnable;->this$0:Lcom/weirdvoice/service/SipService;

    invoke-virtual {v0}, Lcom/weirdvoice/service/SipService;->stopSipStack()Z

    .line 1882
    const/4 v0, 0x0

    return-object v0
.end method
