.class Lcom/twilio/client/impl/analytics/RTCMonitor$1;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twilio/client/impl/analytics/RTCMonitor;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/twilio/client/impl/analytics/RTCMonitor;


# direct methods
.method constructor <init>(Lcom/twilio/client/impl/analytics/RTCMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/twilio/client/impl/analytics/RTCMonitor$1;->this$0:Lcom/twilio/client/impl/analytics/RTCMonitor;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/twilio/client/impl/analytics/RTCMonitor$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4

    const/4 v1, 0x0

    move-object v0, v1

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/twilio/client/impl/analytics/RTCMonitor$1;->this$0:Lcom/twilio/client/impl/analytics/RTCMonitor;

    # getter for: Lcom/twilio/client/impl/analytics/RTCMonitor;->started:Z
    invoke-static {v2}, Lcom/twilio/client/impl/analytics/RTCMonitor;->access$000(Lcom/twilio/client/impl/analytics/RTCMonitor;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/twilio/client/impl/analytics/RTCMonitor$1;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_1

    # getter for: Lcom/twilio/client/impl/analytics/RTCMonitor;->logger:Lcom/twilio/client/impl/logging/Logger;
    invoke-static {}, Lcom/twilio/client/impl/analytics/RTCMonitor;->access$100()Lcom/twilio/client/impl/logging/Logger;

    move-result-object v0

    const-string v2, "Stats recording thread has been cancelled."

    invoke-virtual {v0, v2}, Lcom/twilio/client/impl/logging/Logger;->d(Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-object v1

    :cond_1
    new-instance v2, Lcom/twilio/client/impl/analytics/RTCStatsSample;

    iget-object v3, p0, Lcom/twilio/client/impl/analytics/RTCMonitor$1;->this$0:Lcom/twilio/client/impl/analytics/RTCMonitor;

    # getter for: Lcom/twilio/client/impl/analytics/RTCMonitor;->rtcStatsProvider:Lcom/twilio/client/impl/analytics/RTCStatsProvider;
    invoke-static {v3}, Lcom/twilio/client/impl/analytics/RTCMonitor;->access$200(Lcom/twilio/client/impl/analytics/RTCMonitor;)Lcom/twilio/client/impl/analytics/RTCStatsProvider;

    move-result-object v3

    invoke-interface {v3}, Lcom/twilio/client/impl/analytics/RTCStatsProvider;->getStats()Lcom/twilio/client/impl/analytics/RTCStatsSample;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/twilio/client/impl/analytics/RTCStatsSample;-><init>(Lcom/twilio/client/impl/analytics/RTCStatsSample;Lcom/twilio/client/impl/analytics/RTCStatsSample;)V

    iget-object v0, p0, Lcom/twilio/client/impl/analytics/RTCMonitor$1;->this$0:Lcom/twilio/client/impl/analytics/RTCMonitor;

    # invokes: Lcom/twilio/client/impl/analytics/RTCMonitor;->setCurrentSample(Lcom/twilio/client/impl/analytics/RTCStatsSample;)V
    invoke-static {v0, v2}, Lcom/twilio/client/impl/analytics/RTCMonitor;->access$300(Lcom/twilio/client/impl/analytics/RTCMonitor;Lcom/twilio/client/impl/analytics/RTCStatsSample;)V

    iget-object v0, p0, Lcom/twilio/client/impl/analytics/RTCMonitor$1;->this$0:Lcom/twilio/client/impl/analytics/RTCMonitor;

    iget-object v2, p0, Lcom/twilio/client/impl/analytics/RTCMonitor$1;->this$0:Lcom/twilio/client/impl/analytics/RTCMonitor;

    # getter for: Lcom/twilio/client/impl/analytics/RTCMonitor;->currentSample:Lcom/twilio/client/impl/analytics/RTCStatsSample;
    invoke-static {v2}, Lcom/twilio/client/impl/analytics/RTCMonitor;->access$400(Lcom/twilio/client/impl/analytics/RTCMonitor;)Lcom/twilio/client/impl/analytics/RTCStatsSample;

    move-result-object v2

    # invokes: Lcom/twilio/client/impl/analytics/RTCMonitor;->monitor(Lcom/twilio/client/impl/analytics/RTCStatsSample;)V
    invoke-static {v0, v2}, Lcom/twilio/client/impl/analytics/RTCMonitor;->access$500(Lcom/twilio/client/impl/analytics/RTCMonitor;Lcom/twilio/client/impl/analytics/RTCStatsSample;)V

    iget-object v0, p0, Lcom/twilio/client/impl/analytics/RTCMonitor$1;->this$0:Lcom/twilio/client/impl/analytics/RTCMonitor;

    # getter for: Lcom/twilio/client/impl/analytics/RTCMonitor;->currentSample:Lcom/twilio/client/impl/analytics/RTCStatsSample;
    invoke-static {v0}, Lcom/twilio/client/impl/analytics/RTCMonitor;->access$400(Lcom/twilio/client/impl/analytics/RTCMonitor;)Lcom/twilio/client/impl/analytics/RTCStatsSample;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    # getter for: Lcom/twilio/client/impl/analytics/RTCMonitor;->logger:Lcom/twilio/client/impl/logging/Logger;
    invoke-static {}, Lcom/twilio/client/impl/analytics/RTCMonitor;->access$100()Lcom/twilio/client/impl/logging/Logger;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/twilio/client/impl/logging/Logger;->d(Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v0

    # getter for: Lcom/twilio/client/impl/analytics/RTCMonitor;->logger:Lcom/twilio/client/impl/logging/Logger;
    invoke-static {}, Lcom/twilio/client/impl/analytics/RTCMonitor;->access$100()Lcom/twilio/client/impl/logging/Logger;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/twilio/client/impl/logging/Logger;->e(Ljava/lang/String;)V

    goto :goto_1
.end method
