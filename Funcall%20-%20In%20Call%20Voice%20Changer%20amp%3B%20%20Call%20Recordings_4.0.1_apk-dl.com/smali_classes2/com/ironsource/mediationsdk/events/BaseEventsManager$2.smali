.class Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;
.super Ljava/lang/Object;
.source "BaseEventsManager.java"

# interfaces
.implements Lcom/ironsource/eventsmodule/IEventsSenderResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/mediationsdk/events/BaseEventsManager;->sendEvents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/events/BaseEventsManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onEventsSenderResult(Ljava/util/ArrayList;Z)V
    .locals 2
    .param p2, "success"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ironsource/eventsmodule/EventData;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 176
    .local p1, "extraData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ironsource/eventsmodule/EventData;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    # getter for: Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mEventThread:Lcom/ironsource/mediationsdk/events/BaseEventsManager$EventThread;
    invoke-static {v0}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->access$100(Lcom/ironsource/mediationsdk/events/BaseEventsManager;)Lcom/ironsource/mediationsdk/events/BaseEventsManager$EventThread;

    move-result-object v0

    new-instance v1, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2$1;-><init>(Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;ZLjava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/events/BaseEventsManager$EventThread;->postTask(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    monitor-exit p0

    return-void

    .line 176
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
