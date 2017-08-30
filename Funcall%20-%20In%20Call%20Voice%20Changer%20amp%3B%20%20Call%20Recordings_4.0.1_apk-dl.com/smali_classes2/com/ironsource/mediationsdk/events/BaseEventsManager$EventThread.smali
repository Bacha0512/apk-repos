.class Lcom/ironsource/mediationsdk/events/BaseEventsManager$EventThread;
.super Landroid/os/HandlerThread;
.source "BaseEventsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/mediationsdk/events/BaseEventsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventThread"
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;


# direct methods
.method public constructor <init>(Lcom/ironsource/mediationsdk/events/BaseEventsManager;Ljava/lang/String;)V
    .locals 0
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 426
    iput-object p1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$EventThread;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    .line 427
    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 428
    return-void
.end method


# virtual methods
.method public postTask(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 431
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$EventThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 432
    return-void
.end method

.method public prepareHandler()V
    .locals 2

    .prologue
    .line 435
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/events/BaseEventsManager$EventThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$EventThread;->mHandler:Landroid/os/Handler;

    .line 436
    return-void
.end method
