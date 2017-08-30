.class Lcom/weirdvoice/service/receiver/DynamicReceiver4$2;
.super Ljava/util/TimerTask;
.source "DynamicReceiver4.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/weirdvoice/service/receiver/DynamicReceiver4;->startMonitoring()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/weirdvoice/service/receiver/DynamicReceiver4;


# direct methods
.method constructor <init>(Lcom/weirdvoice/service/receiver/DynamicReceiver4;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/weirdvoice/service/receiver/DynamicReceiver4$2;->this$0:Lcom/weirdvoice/service/receiver/DynamicReceiver4;

    .line 278
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/weirdvoice/service/receiver/DynamicReceiver4$2;)Lcom/weirdvoice/service/receiver/DynamicReceiver4;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/weirdvoice/service/receiver/DynamicReceiver4$2;->this$0:Lcom/weirdvoice/service/receiver/DynamicReceiver4;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 281
    iget-object v2, p0, Lcom/weirdvoice/service/receiver/DynamicReceiver4$2;->this$0:Lcom/weirdvoice/service/receiver/DynamicReceiver4;

    # invokes: Lcom/weirdvoice/service/receiver/DynamicReceiver4;->dumpRoutes()Ljava/lang/String;
    invoke-static {v2}, Lcom/weirdvoice/service/receiver/DynamicReceiver4;->access$1(Lcom/weirdvoice/service/receiver/DynamicReceiver4;)Ljava/lang/String;

    move-result-object v0

    .line 283
    .local v0, "currentRoutes":Ljava/lang/String;
    iget-object v2, p0, Lcom/weirdvoice/service/receiver/DynamicReceiver4$2;->this$0:Lcom/weirdvoice/service/receiver/DynamicReceiver4;

    # getter for: Lcom/weirdvoice/service/receiver/DynamicReceiver4;->mRoutes:Ljava/lang/String;
    invoke-static {v2}, Lcom/weirdvoice/service/receiver/DynamicReceiver4;->access$2(Lcom/weirdvoice/service/receiver/DynamicReceiver4;)Ljava/lang/String;

    move-result-object v3

    monitor-enter v3

    .line 284
    :try_start_0
    iget-object v2, p0, Lcom/weirdvoice/service/receiver/DynamicReceiver4$2;->this$0:Lcom/weirdvoice/service/receiver/DynamicReceiver4;

    # getter for: Lcom/weirdvoice/service/receiver/DynamicReceiver4;->mRoutes:Ljava/lang/String;
    invoke-static {v2}, Lcom/weirdvoice/service/receiver/DynamicReceiver4;->access$2(Lcom/weirdvoice/service/receiver/DynamicReceiver4;)Ljava/lang/String;

    move-result-object v1

    .line 283
    .local v1, "oldRoutes":Ljava/lang/String;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 287
    const-string v2, "DynamicReceiver"

    const-string v3, "Route changed"

    invoke-static {v2, v3}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    iget-object v2, p0, Lcom/weirdvoice/service/receiver/DynamicReceiver4$2;->this$0:Lcom/weirdvoice/service/receiver/DynamicReceiver4;

    # getter for: Lcom/weirdvoice/service/receiver/DynamicReceiver4;->service:Lcom/weirdvoice/service/SipService;
    invoke-static {v2}, Lcom/weirdvoice/service/receiver/DynamicReceiver4;->access$3(Lcom/weirdvoice/service/receiver/DynamicReceiver4;)Lcom/weirdvoice/service/SipService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/weirdvoice/service/SipService;->getExecutor()Lcom/weirdvoice/service/SipService$SipServiceExecutor;

    move-result-object v2

    new-instance v3, Lcom/weirdvoice/service/receiver/DynamicReceiver4$2$1;

    invoke-direct {v3, p0}, Lcom/weirdvoice/service/receiver/DynamicReceiver4$2$1;-><init>(Lcom/weirdvoice/service/receiver/DynamicReceiver4$2;)V

    invoke-virtual {v2, v3}, Lcom/weirdvoice/service/SipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 295
    :cond_0
    return-void

    .line 283
    .end local v1    # "oldRoutes":Ljava/lang/String;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
