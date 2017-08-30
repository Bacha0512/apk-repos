.class Lcom/ironsource/mediationsdk/events/BaseEventsManager$2$1;
.super Ljava/lang/Object;
.source "BaseEventsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;->onEventsSenderResult(Ljava/util/ArrayList;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;

.field final synthetic val$extraData:Ljava/util/ArrayList;

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;ZLjava/util/ArrayList;)V
    .locals 0
    .param p1, "this$1"    # Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2$1;->this$1:Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;

    iput-boolean p2, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2$1;->val$success:Z

    iput-object p3, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2$1;->val$extraData:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 179
    iget-boolean v2, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2$1;->val$success:Z

    if-eqz v2, :cond_1

    .line 181
    iget-object v2, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2$1;->this$1:Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;

    iget-object v2, v2, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    iget-object v2, v2, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mDbStorage:Lcom/ironsource/eventsmodule/DataBaseEventsStorage;

    iget-object v3, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2$1;->this$1:Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;

    iget-object v3, v3, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    iget-object v3, v3, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mEventType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/ironsource/eventsmodule/DataBaseEventsStorage;->loadEvents(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 182
    .local v0, "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ironsource/eventsmodule/EventData;>;"
    iget-object v2, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2$1;->this$1:Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;

    iget-object v2, v2, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v4, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2$1;->this$1:Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;

    iget-object v4, v4, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    iget-object v4, v4, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mLocalEvents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mTotalEvents:I

    .line 194
    .end local v0    # "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ironsource/eventsmodule/EventData;>;"
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    iget-object v2, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2$1;->val$extraData:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 187
    iget-object v2, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2$1;->this$1:Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;

    iget-object v2, v2, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    iget-object v2, v2, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mDbStorage:Lcom/ironsource/eventsmodule/DataBaseEventsStorage;

    iget-object v3, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2$1;->val$extraData:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2$1;->this$1:Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;

    iget-object v4, v4, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    iget-object v4, v4, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mEventType:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/ironsource/eventsmodule/DataBaseEventsStorage;->saveEvents(Ljava/util/List;Ljava/lang/String;)V

    .line 189
    iget-object v2, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2$1;->this$1:Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;

    iget-object v2, v2, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    iget-object v2, v2, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mDbStorage:Lcom/ironsource/eventsmodule/DataBaseEventsStorage;

    iget-object v3, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2$1;->this$1:Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;

    iget-object v3, v3, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    iget-object v3, v3, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mEventType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/ironsource/eventsmodule/DataBaseEventsStorage;->loadEvents(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 191
    .local v1, "storedEvents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ironsource/eventsmodule/EventData;>;"
    iget-object v2, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2$1;->this$1:Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;

    iget-object v2, v2, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v4, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2$1;->this$1:Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;

    iget-object v4, v4, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    iget-object v4, v4, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mLocalEvents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mTotalEvents:I

    goto :goto_0
.end method
