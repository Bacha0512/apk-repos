.class Lorg/abtollc/service/receiver/DynamicReceiver4$2;
.super Ljava/util/TimerTask;
.source "DynamicReceiver4.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/abtollc/service/receiver/DynamicReceiver4;->startMonitoring()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/abtollc/service/receiver/DynamicReceiver4;


# direct methods
.method constructor <init>(Lorg/abtollc/service/receiver/DynamicReceiver4;)V
    .locals 0
    .param p1, "this$0"    # Lorg/abtollc/service/receiver/DynamicReceiver4;

    .prologue
    .line 219
    iput-object p1, p0, Lorg/abtollc/service/receiver/DynamicReceiver4$2;->this$0:Lorg/abtollc/service/receiver/DynamicReceiver4;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 222
    iget-object v2, p0, Lorg/abtollc/service/receiver/DynamicReceiver4$2;->this$0:Lorg/abtollc/service/receiver/DynamicReceiver4;

    # invokes: Lorg/abtollc/service/receiver/DynamicReceiver4;->dumpRoutes()Ljava/lang/String;
    invoke-static {v2}, Lorg/abtollc/service/receiver/DynamicReceiver4;->access$100(Lorg/abtollc/service/receiver/DynamicReceiver4;)Ljava/lang/String;

    move-result-object v0

    .line 224
    .local v0, "currentRoutes":Ljava/lang/String;
    iget-object v2, p0, Lorg/abtollc/service/receiver/DynamicReceiver4$2;->this$0:Lorg/abtollc/service/receiver/DynamicReceiver4;

    # getter for: Lorg/abtollc/service/receiver/DynamicReceiver4;->mRoutes:Ljava/lang/String;
    invoke-static {v2}, Lorg/abtollc/service/receiver/DynamicReceiver4;->access$200(Lorg/abtollc/service/receiver/DynamicReceiver4;)Ljava/lang/String;

    move-result-object v3

    monitor-enter v3

    .line 225
    :try_start_0
    iget-object v2, p0, Lorg/abtollc/service/receiver/DynamicReceiver4$2;->this$0:Lorg/abtollc/service/receiver/DynamicReceiver4;

    # getter for: Lorg/abtollc/service/receiver/DynamicReceiver4;->mRoutes:Ljava/lang/String;
    invoke-static {v2}, Lorg/abtollc/service/receiver/DynamicReceiver4;->access$200(Lorg/abtollc/service/receiver/DynamicReceiver4;)Ljava/lang/String;

    move-result-object v1

    .line 226
    .local v1, "oldRoutes":Ljava/lang/String;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 228
    const-string v2, "DynamicReceiver"

    const-string v3, "Route changed"

    invoke-static {v2, v3}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    iget-object v2, p0, Lorg/abtollc/service/receiver/DynamicReceiver4$2;->this$0:Lorg/abtollc/service/receiver/DynamicReceiver4;

    # getter for: Lorg/abtollc/service/receiver/DynamicReceiver4;->service:Lorg/abtollc/service/ABTOSipService;
    invoke-static {v2}, Lorg/abtollc/service/receiver/DynamicReceiver4;->access$400(Lorg/abtollc/service/receiver/DynamicReceiver4;)Lorg/abtollc/service/ABTOSipService;

    move-result-object v2

    invoke-virtual {v2}, Lorg/abtollc/service/ABTOSipService;->getExecutor()Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;

    move-result-object v2

    new-instance v3, Lorg/abtollc/service/receiver/DynamicReceiver4$2$1;

    invoke-direct {v3, p0}, Lorg/abtollc/service/receiver/DynamicReceiver4$2$1;-><init>(Lorg/abtollc/service/receiver/DynamicReceiver4$2;)V

    invoke-virtual {v2, v3}, Lorg/abtollc/service/ABTOSipService$SipServiceExecutor;->execute(Ljava/lang/Runnable;)V

    .line 236
    :cond_0
    return-void

    .line 226
    .end local v1    # "oldRoutes":Ljava/lang/String;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
