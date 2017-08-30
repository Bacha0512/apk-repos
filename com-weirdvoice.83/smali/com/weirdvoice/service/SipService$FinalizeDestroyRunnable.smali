.class Lcom/weirdvoice/service/SipService$FinalizeDestroyRunnable;
.super Lcom/weirdvoice/service/SipService$SipRunnable;
.source "SipService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/weirdvoice/service/SipService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FinalizeDestroyRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/weirdvoice/service/SipService;


# direct methods
.method constructor <init>(Lcom/weirdvoice/service/SipService;)V
    .locals 0

    .prologue
    .line 1918
    iput-object p1, p0, Lcom/weirdvoice/service/SipService$FinalizeDestroyRunnable;->this$0:Lcom/weirdvoice/service/SipService;

    invoke-direct {p0}, Lcom/weirdvoice/service/SipService$SipRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method protected doRun()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/weirdvoice/service/SipService$SameThreadException;
        }
    .end annotation

    .prologue
    .line 1922
    iget-object v0, p0, Lcom/weirdvoice/service/SipService$FinalizeDestroyRunnable;->this$0:Lcom/weirdvoice/service/SipService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/weirdvoice/service/SipService;->access$10(Lcom/weirdvoice/service/SipService;Lcom/weirdvoice/service/SipService$SipServiceExecutor;)V

    .line 1924
    const-string v0, "SIP SRV"

    const-string v1, "Destroy sip stack"

    invoke-static {v0, v1}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1926
    iget-object v0, p0, Lcom/weirdvoice/service/SipService$FinalizeDestroyRunnable;->this$0:Lcom/weirdvoice/service/SipService;

    # getter for: Lcom/weirdvoice/service/SipService;->sipWakeLock:Lcom/weirdvoice/service/SipWakeLock;
    invoke-static {v0}, Lcom/weirdvoice/service/SipService;->access$8(Lcom/weirdvoice/service/SipService;)Lcom/weirdvoice/service/SipWakeLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/weirdvoice/service/SipWakeLock;->reset()V

    .line 1928
    iget-object v0, p0, Lcom/weirdvoice/service/SipService$FinalizeDestroyRunnable;->this$0:Lcom/weirdvoice/service/SipService;

    invoke-virtual {v0}, Lcom/weirdvoice/service/SipService;->stopSipStack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1929
    iget-object v0, p0, Lcom/weirdvoice/service/SipService$FinalizeDestroyRunnable;->this$0:Lcom/weirdvoice/service/SipService;

    iget-object v0, v0, Lcom/weirdvoice/service/SipService;->notificationManager:Lcom/weirdvoice/service/SipNotifications;

    invoke-virtual {v0}, Lcom/weirdvoice/service/SipNotifications;->cancelAll()V

    .line 1930
    iget-object v0, p0, Lcom/weirdvoice/service/SipService$FinalizeDestroyRunnable;->this$0:Lcom/weirdvoice/service/SipService;

    iget-object v0, v0, Lcom/weirdvoice/service/SipService;->notificationManager:Lcom/weirdvoice/service/SipNotifications;

    invoke-virtual {v0}, Lcom/weirdvoice/service/SipNotifications;->cancelCalls()V

    .line 1945
    :goto_0
    const-string v0, "SIP SRV"

    const-string v1, "--- SIP SERVICE DESTROYED ---"

    invoke-static {v0, v1}, Lcom/weirdvoice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1946
    return-void

    .line 1932
    :cond_0
    const-string v0, "SIP SRV"

    const-string v1, "Somebody has stopped the service while there is an ongoing call !!!"

    invoke-static {v0, v1}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
