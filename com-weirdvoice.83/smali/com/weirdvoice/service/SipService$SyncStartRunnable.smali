.class Lcom/weirdvoice/service/SipService$SyncStartRunnable;
.super Lcom/weirdvoice/service/SipService$ReturnRunnable;
.source "SipService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/weirdvoice/service/SipService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SyncStartRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/weirdvoice/service/SipService;


# direct methods
.method constructor <init>(Lcom/weirdvoice/service/SipService;)V
    .locals 0

    .prologue
    .line 1863
    iput-object p1, p0, Lcom/weirdvoice/service/SipService$SyncStartRunnable;->this$0:Lcom/weirdvoice/service/SipService;

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
    .line 1866
    iget-object v0, p0, Lcom/weirdvoice/service/SipService$SyncStartRunnable;->this$0:Lcom/weirdvoice/service/SipService;

    # invokes: Lcom/weirdvoice/service/SipService;->startSipStack()V
    invoke-static {v0}, Lcom/weirdvoice/service/SipService;->access$9(Lcom/weirdvoice/service/SipService;)V

    .line 1867
    const/4 v0, 0x0

    return-object v0
.end method
