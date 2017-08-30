.class Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;
.super Ljava/lang/Object;
.source "BaseEventsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/mediationsdk/events/BaseEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

.field final synthetic val$event:Lcom/ironsource/eventsmodule/EventData;


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/events/BaseEventsManager;Lcom/ironsource/eventsmodule/EventData;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    iput-object p2, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->val$event:Lcom/ironsource/eventsmodule/EventData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 99
    iget-object v3, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->val$event:Lcom/ironsource/eventsmodule/EventData;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    iget-boolean v3, v3, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mIsEventsEnabled:Z

    if-nez v3, :cond_1

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    iget-object v3, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    iget-object v4, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->val$event:Lcom/ironsource/eventsmodule/EventData;

    invoke-virtual {v3, v4}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->shouldEventBeLogged(Lcom/ironsource/eventsmodule/EventData;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 106
    iget-object v3, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    iget-object v4, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->val$event:Lcom/ironsource/eventsmodule/EventData;

    invoke-virtual {v3, v4}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->getSessionDepth(Lcom/ironsource/eventsmodule/EventData;)I

    move-result v1

    .line 108
    .local v1, "sessionDepth":I
    iget-object v3, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    iget-object v4, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->val$event:Lcom/ironsource/eventsmodule/EventData;

    invoke-virtual {v3, v4}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->increaseSessionDepthIfNeeded(Lcom/ironsource/eventsmodule/EventData;)Z

    move-result v2

    .line 109
    .local v2, "shouldUseNewDepth":Z
    if-eqz v2, :cond_2

    .line 110
    iget-object v3, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    iget-object v4, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->val$event:Lcom/ironsource/eventsmodule/EventData;

    invoke-virtual {v3, v4}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->getSessionDepth(Lcom/ironsource/eventsmodule/EventData;)I

    move-result v1

    .line 111
    :cond_2
    iget-object v3, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->val$event:Lcom/ironsource/eventsmodule/EventData;

    const-string v4, "sessionDepth"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/ironsource/eventsmodule/EventData;->addToAdditionalData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 113
    iget-object v3, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    iget-object v4, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->val$event:Lcom/ironsource/eventsmodule/EventData;

    invoke-virtual {v3, v4}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->shouldExtractCurrentPlacement(Lcom/ironsource/eventsmodule/EventData;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 114
    iget-object v3, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    iget-object v4, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->val$event:Lcom/ironsource/eventsmodule/EventData;

    invoke-virtual {v3, v4}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->setCurrentPlacement(Lcom/ironsource/eventsmodule/EventData;)V

    .line 121
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    iget-object v3, v3, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mLocalEvents:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->val$event:Lcom/ironsource/eventsmodule/EventData;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    iget-object v3, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    iget v4, v3, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mTotalEvents:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mTotalEvents:I

    .line 125
    .end local v1    # "sessionDepth":I
    .end local v2    # "shouldUseNewDepth":Z
    :cond_4
    iget-object v3, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    iget-object v4, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->val$event:Lcom/ironsource/eventsmodule/EventData;

    invoke-virtual {v3, v4}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->isTopPriorityEvent(Lcom/ironsource/eventsmodule/EventData;)Z

    move-result v0

    .line 127
    .local v0, "isTopPriority":Z
    iget-object v3, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    iget-boolean v3, v3, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mHadTopPriorityEvent:Z

    if-nez v3, :cond_5

    if-eqz v0, :cond_5

    .line 128
    iget-object v3, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mHadTopPriorityEvent:Z

    .line 130
    :cond_5
    iget-object v3, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    iget-object v3, v3, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mDbStorage:Lcom/ironsource/eventsmodule/DataBaseEventsStorage;

    if-eqz v3, :cond_0

    .line 132
    iget-object v3, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->shouldSendEvents()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 133
    iget-object v3, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    # invokes: Lcom/ironsource/mediationsdk/events/BaseEventsManager;->sendEvents()V
    invoke-static {v3}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->access$000(Lcom/ironsource/mediationsdk/events/BaseEventsManager;)V

    goto :goto_0

    .line 116
    .end local v0    # "isTopPriority":Z
    .restart local v1    # "sessionDepth":I
    .restart local v2    # "shouldUseNewDepth":Z
    :cond_6
    iget-object v3, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    iget-object v4, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->val$event:Lcom/ironsource/eventsmodule/EventData;

    invoke-virtual {v4}, Lcom/ironsource/eventsmodule/EventData;->getEventId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->getCurrentPlacement(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    iget-object v4, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->val$event:Lcom/ironsource/eventsmodule/EventData;

    invoke-virtual {v3, v4}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->shouldIncludeCurrentPlacement(Lcom/ironsource/eventsmodule/EventData;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 117
    iget-object v3, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->val$event:Lcom/ironsource/eventsmodule/EventData;

    const-string v4, "placement"

    iget-object v5, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    iget-object v6, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->val$event:Lcom/ironsource/eventsmodule/EventData;

    invoke-virtual {v6}, Lcom/ironsource/eventsmodule/EventData;->getEventId()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->getCurrentPlacement(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/ironsource/eventsmodule/EventData;->addToAdditionalData(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 134
    .end local v1    # "sessionDepth":I
    .end local v2    # "shouldUseNewDepth":Z
    .restart local v0    # "isTopPriority":Z
    :cond_7
    iget-object v3, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    iget-object v4, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    iget-object v4, v4, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mLocalEvents:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->shouldBackupEventsToDb(Ljava/util/ArrayList;)Z

    move-result v3

    if-nez v3, :cond_8

    if-eqz v0, :cond_0

    .line 135
    :cond_8
    iget-object v3, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->backupEventsToDb()V

    goto/16 :goto_0
.end method
