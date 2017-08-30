.class public abstract Lcom/ironsource/mediationsdk/events/BaseEventsManager;
.super Ljava/lang/Object;
.source "BaseEventsManager.java"

# interfaces
.implements Lcom/ironsource/eventsmodule/IEventsManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/mediationsdk/events/BaseEventsManager$EventThread;
    }
.end annotation


# static fields
.field public static final KEY_SESSION_DEPTH:Ljava/lang/String; = "sessionDepth"


# instance fields
.field final DATABASE_NAME:Ljava/lang/String;

.field final DATABASE_VERSION:I

.field final DEFAULT_BACKUP_THRESHOLD:I

.field final DEFAULT_MAX_EVENTS_PER_BATCH:I

.field final DEFAULT_MAX_NUMBER_OF_EVENTS:I

.field final KEY_PLACEMENT:Ljava/lang/String;

.field final KEY_PROVIDER:Ljava/lang/String;

.field private final MEDIATION_ABT:Ljava/lang/String;

.field protected mAdUnitType:I

.field protected mBackupThreshold:I

.field protected mCurrentPlacement:Ljava/lang/String;

.field protected mDbStorage:Lcom/ironsource/eventsmodule/DataBaseEventsStorage;

.field private mEventThread:Lcom/ironsource/mediationsdk/events/BaseEventsManager$EventThread;

.field protected mEventType:Ljava/lang/String;

.field protected mFormatter:Lcom/ironsource/mediationsdk/events/AbstractEventsFormatter;

.field protected mFormatterType:Ljava/lang/String;

.field protected mHadTopPriorityEvent:Z

.field protected mHasServerResponse:Z

.field protected mIsEventsEnabled:Z

.field protected mLocalEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ironsource/eventsmodule/EventData;",
            ">;"
        }
    .end annotation
.end field

.field protected mMaxEventsPerBatch:I

.field protected mMaxNumberOfEvents:I

.field protected mOptOutEvents:[I

.field private mSegment:Lcom/ironsource/mediationsdk/IronSourceSegment;

.field private mServerSegmentData:Lcom/ironsource/mediationsdk/model/ServerSegmetData;

.field protected mTotalEvents:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0x1388

    const/16 v2, 0x64

    const/4 v1, 0x1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput v1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->DEFAULT_BACKUP_THRESHOLD:I

    .line 33
    iput v2, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->DEFAULT_MAX_NUMBER_OF_EVENTS:I

    .line 34
    iput v3, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->DEFAULT_MAX_EVENTS_PER_BATCH:I

    .line 36
    const/4 v0, 0x5

    iput v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->DATABASE_VERSION:I

    .line 37
    const-string v0, "supersonic_sdk.db"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->DATABASE_NAME:Ljava/lang/String;

    .line 40
    const-string v0, "provider"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->KEY_PROVIDER:Ljava/lang/String;

    .line 41
    const-string v0, "placement"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->KEY_PLACEMENT:Ljava/lang/String;

    .line 42
    const-string v0, "abt"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->MEDIATION_ABT:Ljava/lang/String;

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mHadTopPriorityEvent:Z

    .line 54
    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mIsEventsEnabled:Z

    .line 57
    iput v2, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mMaxNumberOfEvents:I

    .line 58
    iput v3, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mMaxEventsPerBatch:I

    .line 59
    iput v1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mBackupThreshold:I

    return-void
.end method

.method static synthetic access$000(Lcom/ironsource/mediationsdk/events/BaseEventsManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->sendEvents()V

    return-void
.end method

.method static synthetic access$100(Lcom/ironsource/mediationsdk/events/BaseEventsManager;)Lcom/ironsource/mediationsdk/events/BaseEventsManager$EventThread;
    .locals 1
    .param p0, "x0"    # Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mEventThread:Lcom/ironsource/mediationsdk/events/BaseEventsManager$EventThread;

    return-object v0
.end method

.method private sendEvents()V
    .locals 10

    .prologue
    const/4 v8, 0x0

    .line 147
    iput-boolean v8, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mHadTopPriorityEvent:Z

    .line 149
    iget-object v6, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mDbStorage:Lcom/ironsource/eventsmodule/DataBaseEventsStorage;

    iget-object v7, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mEventType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/ironsource/eventsmodule/DataBaseEventsStorage;->loadEvents(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 150
    .local v5, "storedEvents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ironsource/eventsmodule/EventData;>;"
    iget-object v6, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mLocalEvents:Ljava/util/ArrayList;

    iget v7, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mMaxEventsPerBatch:I

    invoke-virtual {p0, v6, v5, v7}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->initCombinedEventList(Ljava/util/ArrayList;Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v1

    .line 152
    .local v1, "combinedEventList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ironsource/eventsmodule/EventData;>;"
    iget-object v6, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mLocalEvents:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 153
    iget-object v6, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mDbStorage:Lcom/ironsource/eventsmodule/DataBaseEventsStorage;

    iget-object v7, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mEventType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/ironsource/eventsmodule/DataBaseEventsStorage;->clearEvents(Ljava/lang/String;)V

    .line 154
    iput v8, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mTotalEvents:I

    .line 156
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 157
    invoke-static {}, Lcom/ironsource/mediationsdk/sdk/GeneralProperties;->getProperties()Lcom/ironsource/mediationsdk/sdk/GeneralProperties;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/sdk/GeneralProperties;->toJSON()Lorg/json/JSONObject;

    move-result-object v4

    .line 161
    .local v4, "generalProperties":Lorg/json/JSONObject;
    :try_start_0
    invoke-direct {p0, v4}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->updateSegmentsData(Lorg/json/JSONObject;)V

    .line 164
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getAbt()Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, "abt":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 166
    const-string v6, "abt"

    invoke-virtual {v4, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    .end local v0    # "abt":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mFormatter:Lcom/ironsource/mediationsdk/events/AbstractEventsFormatter;

    invoke-virtual {v6, v1, v4}, Lcom/ironsource/mediationsdk/events/AbstractEventsFormatter;->format(Ljava/util/ArrayList;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    .line 173
    .local v2, "dataToSend":Ljava/lang/String;
    new-instance v6, Lcom/ironsource/eventsmodule/EventsSender;

    new-instance v7, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;

    invoke-direct {v7, p0}, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;-><init>(Lcom/ironsource/mediationsdk/events/BaseEventsManager;)V

    invoke-direct {v6, v7}, Lcom/ironsource/eventsmodule/EventsSender;-><init>(Lcom/ironsource/eventsmodule/IEventsSenderResultListener;)V

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v2, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mFormatter:Lcom/ironsource/mediationsdk/events/AbstractEventsFormatter;

    .line 199
    invoke-virtual {v9}, Lcom/ironsource/mediationsdk/events/AbstractEventsFormatter;->getEventsServerUrl()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    aput-object v1, v7, v8

    invoke-virtual {v6, v7}, Lcom/ironsource/eventsmodule/EventsSender;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 201
    .end local v2    # "dataToSend":Ljava/lang/String;
    .end local v4    # "generalProperties":Lorg/json/JSONObject;
    :cond_1
    return-void

    .line 168
    .restart local v4    # "generalProperties":Lorg/json/JSONObject;
    :catch_0
    move-exception v3

    .line 169
    .local v3, "ex":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private updateSegmentsData(Lorg/json/JSONObject;)V
    .locals 10
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 368
    :try_start_0
    iget-object v5, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mSegment:Lcom/ironsource/mediationsdk/IronSourceSegment;

    if-eqz v5, :cond_5

    .line 369
    iget-object v5, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mSegment:Lcom/ironsource/mediationsdk/IronSourceSegment;

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/IronSourceSegment;->getAge()I

    move-result v5

    if-lez v5, :cond_0

    .line 370
    const-string v5, "age"

    iget-object v6, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mSegment:Lcom/ironsource/mediationsdk/IronSourceSegment;

    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/IronSourceSegment;->getAge()I

    move-result v6

    invoke-virtual {p1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 371
    :cond_0
    iget-object v5, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mSegment:Lcom/ironsource/mediationsdk/IronSourceSegment;

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/IronSourceSegment;->getGender()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 372
    const-string v5, "gen"

    iget-object v6, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mSegment:Lcom/ironsource/mediationsdk/IronSourceSegment;

    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/IronSourceSegment;->getGender()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 373
    :cond_1
    iget-object v5, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mSegment:Lcom/ironsource/mediationsdk/IronSourceSegment;

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/IronSourceSegment;->getLevel()I

    move-result v5

    if-lez v5, :cond_2

    .line 374
    const-string v5, "lvl"

    iget-object v6, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mSegment:Lcom/ironsource/mediationsdk/IronSourceSegment;

    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/IronSourceSegment;->getLevel()I

    move-result v6

    invoke-virtual {p1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 375
    :cond_2
    iget-object v5, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mSegment:Lcom/ironsource/mediationsdk/IronSourceSegment;

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/IronSourceSegment;->getIsPaying()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 376
    const-string v5, "pay"

    iget-object v6, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mSegment:Lcom/ironsource/mediationsdk/IronSourceSegment;

    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/IronSourceSegment;->getIsPaying()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    invoke-virtual {p1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 377
    :cond_3
    iget-object v5, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mSegment:Lcom/ironsource/mediationsdk/IronSourceSegment;

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/IronSourceSegment;->getIapt()D

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmpl-double v5, v6, v8

    if-lez v5, :cond_4

    .line 378
    const-string v5, "iapt"

    iget-object v6, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mSegment:Lcom/ironsource/mediationsdk/IronSourceSegment;

    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/IronSourceSegment;->getIapt()D

    move-result-wide v6

    invoke-virtual {p1, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 379
    :cond_4
    iget-object v5, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mSegment:Lcom/ironsource/mediationsdk/IronSourceSegment;

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/IronSourceSegment;->getUcd()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_5

    .line 380
    const-string v5, "ucd"

    iget-object v6, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mSegment:Lcom/ironsource/mediationsdk/IronSourceSegment;

    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/IronSourceSegment;->getUcd()J

    move-result-wide v6

    invoke-virtual {p1, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 383
    :cond_5
    iget-object v5, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mServerSegmentData:Lcom/ironsource/mediationsdk/model/ServerSegmetData;

    if-eqz v5, :cond_7

    .line 384
    iget-object v5, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mServerSegmentData:Lcom/ironsource/mediationsdk/model/ServerSegmetData;

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/model/ServerSegmetData;->getSegmentId()Ljava/lang/String;

    move-result-object v2

    .line 385
    .local v2, "id":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 386
    const-string v5, "segmentId"

    invoke-virtual {p1, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 388
    :cond_6
    iget-object v5, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mServerSegmentData:Lcom/ironsource/mediationsdk/model/ServerSegmetData;

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/model/ServerSegmetData;->getCustomSegments()Lorg/json/JSONObject;

    move-result-object v0

    .line 389
    .local v0, "customs":Lorg/json/JSONObject;
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 390
    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 391
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 392
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 396
    .end local v0    # "customs":Lorg/json/JSONObject;
    .end local v2    # "id":Ljava/lang/String;
    .end local v3    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v4    # "key":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 397
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 400
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_7
    return-void
.end method


# virtual methods
.method protected backupEventsToDb()V
    .locals 3

    .prologue
    .line 286
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mDbStorage:Lcom/ironsource/eventsmodule/DataBaseEventsStorage;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mLocalEvents:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mEventType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/eventsmodule/DataBaseEventsStorage;->saveEvents(Ljava/util/List;Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mLocalEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 288
    return-void
.end method

.method protected abstract getCurrentPlacement(I)Ljava/lang/String;
.end method

.method protected getProviderNameForEvent(Lcom/ironsource/eventsmodule/EventData;)Ljava/lang/String;
    .locals 5
    .param p1, "event"    # Lcom/ironsource/eventsmodule/EventData;

    .prologue
    .line 340
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/ironsource/eventsmodule/EventData;->getAdditionalData()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 341
    .local v1, "eventData":Lorg/json/JSONObject;
    const-string v3, "provider"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 346
    .end local v1    # "eventData":Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 342
    :catch_0
    move-exception v0

    .line 343
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, ""

    goto :goto_0
.end method

.method protected abstract getSessionDepth(Lcom/ironsource/eventsmodule/EventData;)I
.end method

.method protected abstract increaseSessionDepthIfNeeded(Lcom/ironsource/eventsmodule/EventData;)Z
.end method

.method protected initCombinedEventList(Ljava/util/ArrayList;Ljava/util/ArrayList;I)Ljava/util/ArrayList;
    .locals 5
    .param p3, "maxSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ironsource/eventsmodule/EventData;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ironsource/eventsmodule/EventData;",
            ">;I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ironsource/eventsmodule/EventData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 204
    .local p1, "localEvents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ironsource/eventsmodule/EventData;>;"
    .local p2, "storedEvents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ironsource/eventsmodule/EventData;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 205
    .local v0, "allEvents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ironsource/eventsmodule/EventData;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 206
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 208
    new-instance v3, Lcom/ironsource/mediationsdk/events/BaseEventsManager$3;

    invoke-direct {v3, p0}, Lcom/ironsource/mediationsdk/events/BaseEventsManager$3;-><init>(Lcom/ironsource/mediationsdk/events/BaseEventsManager;)V

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 220
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gt v3, p3, :cond_0

    .line 221
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 227
    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ironsource/eventsmodule/EventData;>;"
    :goto_0
    return-object v2

    .line 223
    .end local v2    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ironsource/eventsmodule/EventData;>;"
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, p3}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 224
    .restart local v2    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ironsource/eventsmodule/EventData;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v0, p3, v3}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v1

    .line 225
    .local v1, "eventsToSave":Ljava/util/List;, "Ljava/util/List<Lcom/ironsource/eventsmodule/EventData;>;"
    iget-object v3, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mDbStorage:Lcom/ironsource/eventsmodule/DataBaseEventsStorage;

    iget-object v4, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mEventType:Ljava/lang/String;

    invoke-virtual {v3, v1, v4}, Lcom/ironsource/eventsmodule/DataBaseEventsStorage;->saveEvents(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected initState()V
    .locals 3

    .prologue
    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mLocalEvents:Ljava/util/ArrayList;

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mTotalEvents:I

    .line 73
    const-string v0, ""

    iput-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mCurrentPlacement:Ljava/lang/String;

    .line 74
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mFormatterType:Ljava/lang/String;

    iget v1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mAdUnitType:I

    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/events/EventsFormatterFactory;->getFormatter(Ljava/lang/String;I)Lcom/ironsource/mediationsdk/events/AbstractEventsFormatter;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mFormatter:Lcom/ironsource/mediationsdk/events/AbstractEventsFormatter;

    .line 75
    new-instance v0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$EventThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mEventType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "EventThread"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/ironsource/mediationsdk/events/BaseEventsManager$EventThread;-><init>(Lcom/ironsource/mediationsdk/events/BaseEventsManager;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mEventThread:Lcom/ironsource/mediationsdk/events/BaseEventsManager$EventThread;

    .line 76
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mEventThread:Lcom/ironsource/mediationsdk/events/BaseEventsManager$EventThread;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/events/BaseEventsManager$EventThread;->start()V

    .line 77
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mEventThread:Lcom/ironsource/mediationsdk/events/BaseEventsManager$EventThread;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/events/BaseEventsManager$EventThread;->prepareHandler()V

    .line 78
    return-void
.end method

.method protected abstract isTopPriorityEvent(Lcom/ironsource/eventsmodule/EventData;)Z
.end method

.method public declared-synchronized log(Lcom/ironsource/eventsmodule/EventData;)V
    .locals 2
    .param p1, "event"    # Lcom/ironsource/eventsmodule/EventData;

    .prologue
    .line 96
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mEventThread:Lcom/ironsource/mediationsdk/events/BaseEventsManager$EventThread;

    new-instance v1, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;-><init>(Lcom/ironsource/mediationsdk/events/BaseEventsManager;Lcom/ironsource/eventsmodule/EventData;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/events/BaseEventsManager$EventThread;->postTask(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    monitor-exit p0

    return-void

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public sendEventToUrl(Lcom/ironsource/eventsmodule/EventData;Ljava/lang/String;)V
    .locals 6
    .param p1, "eventData"    # Lcom/ironsource/eventsmodule/EventData;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 355
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 356
    .local v1, "singleEventArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ironsource/eventsmodule/EventData;>;"
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 358
    iget-object v2, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mFormatter:Lcom/ironsource/mediationsdk/events/AbstractEventsFormatter;

    invoke-static {}, Lcom/ironsource/mediationsdk/sdk/GeneralProperties;->getProperties()Lcom/ironsource/mediationsdk/sdk/GeneralProperties;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/sdk/GeneralProperties;->toJSON()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/ironsource/mediationsdk/events/AbstractEventsFormatter;->format(Ljava/util/ArrayList;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 359
    .local v0, "dataToSend":Ljava/lang/String;
    new-instance v2, Lcom/ironsource/eventsmodule/EventsSender;

    invoke-direct {v2}, Lcom/ironsource/eventsmodule/EventsSender;-><init>()V

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    const/4 v5, 0x0

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Lcom/ironsource/eventsmodule/EventsSender;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    .end local v0    # "dataToSend":Ljava/lang/String;
    .end local v1    # "singleEventArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ironsource/eventsmodule/EventData;>;"
    :goto_0
    return-void

    .line 361
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public setBackupThreshold(I)V
    .locals 0
    .param p1, "backupThreshold"    # I

    .prologue
    .line 239
    if-lez p1, :cond_0

    .line 240
    iput p1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mBackupThreshold:I

    .line 241
    :cond_0
    return-void
.end method

.method protected abstract setCurrentPlacement(Lcom/ironsource/eventsmodule/EventData;)V
.end method

.method public setEventsUrl(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1
    .param p1, "eventsUrl"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 263
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 264
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mFormatter:Lcom/ironsource/mediationsdk/events/AbstractEventsFormatter;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mFormatter:Lcom/ironsource/mediationsdk/events/AbstractEventsFormatter;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/events/AbstractEventsFormatter;->setEventsServerUrl(Ljava/lang/String;)V

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mEventType:Ljava/lang/String;

    invoke-static {p2, v0, p1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->saveDefaultEventsURL(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    :cond_1
    return-void
.end method

.method public setFormatterType(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1
    .param p1, "formatterType"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 273
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 274
    iput-object p1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mFormatterType:Ljava/lang/String;

    .line 275
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mEventType:Ljava/lang/String;

    invoke-static {p2, v0, p1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->saveDefaultEventsFormatterType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->verifyCurrentFormatter(Ljava/lang/String;)V

    .line 278
    :cond_0
    return-void
.end method

.method public setHasServerResponse(Z)V
    .locals 0
    .param p1, "hasResponse"    # Z

    .prologue
    .line 332
    iput-boolean p1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mHasServerResponse:Z

    .line 333
    return-void
.end method

.method public setIsEventsEnabled(Z)V
    .locals 0
    .param p1, "isEnabled"    # Z

    .prologue
    .line 282
    iput-boolean p1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mIsEventsEnabled:Z

    .line 283
    return-void
.end method

.method public setMaxEventsPerBatch(I)V
    .locals 0
    .param p1, "maxEventsPerBatch"    # I

    .prologue
    .line 251
    if-lez p1, :cond_0

    .line 252
    iput p1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mMaxEventsPerBatch:I

    .line 253
    :cond_0
    return-void
.end method

.method public setMaxNumberOfEvents(I)V
    .locals 0
    .param p1, "maxNumberOfEvents"    # I

    .prologue
    .line 245
    if-lez p1, :cond_0

    .line 246
    iput p1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mMaxNumberOfEvents:I

    .line 247
    :cond_0
    return-void
.end method

.method public setOptOutEvents([ILandroid/content/Context;)V
    .locals 1
    .param p1, "optOutEvents"    # [I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 257
    iput-object p1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mOptOutEvents:[I

    .line 258
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mEventType:Ljava/lang/String;

    invoke-static {p2, v0, p1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->saveDefaultOptOutEvents(Landroid/content/Context;Ljava/lang/String;[I)V

    .line 259
    return-void
.end method

.method public declared-synchronized setServerSegmentData(Lcom/ironsource/mediationsdk/model/ServerSegmetData;)V
    .locals 1
    .param p1, "serverSegment"    # Lcom/ironsource/mediationsdk/model/ServerSegmetData;

    .prologue
    .line 91
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mServerSegmentData:Lcom/ironsource/mediationsdk/model/ServerSegmetData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    monitor-exit p0

    return-void

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected shouldBackupEventsToDb(Ljava/util/ArrayList;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ironsource/eventsmodule/EventData;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 307
    .local p1, "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ironsource/eventsmodule/EventData;>;"
    const/4 v0, 0x0

    .line 309
    .local v0, "shouldBackup":Z
    if-eqz p1, :cond_0

    .line 310
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mBackupThreshold:I

    if-lt v1, v2, :cond_1

    const/4 v0, 0x1

    .line 312
    :cond_0
    :goto_0
    return v0

    .line 310
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected shouldEventBeLogged(Lcom/ironsource/eventsmodule/EventData;)Z
    .locals 4
    .param p1, "event"    # Lcom/ironsource/eventsmodule/EventData;

    .prologue
    .line 316
    const/4 v2, 0x1

    .line 318
    .local v2, "logEvent":Z
    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mOptOutEvents:[I

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mOptOutEvents:[I

    array-length v3, v3

    if-lez v3, :cond_0

    .line 319
    invoke-virtual {p1}, Lcom/ironsource/eventsmodule/EventData;->getEventId()I

    move-result v0

    .line 320
    .local v0, "eventId":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mOptOutEvents:[I

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 321
    iget-object v3, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mOptOutEvents:[I

    aget v3, v3, v1

    if-ne v0, v3, :cond_1

    .line 322
    const/4 v2, 0x0

    .line 328
    .end local v0    # "eventId":I
    .end local v1    # "i":I
    :cond_0
    return v2

    .line 320
    .restart local v0    # "eventId":I
    .restart local v1    # "i":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected abstract shouldExtractCurrentPlacement(Lcom/ironsource/eventsmodule/EventData;)Z
.end method

.method protected abstract shouldIncludeCurrentPlacement(Lcom/ironsource/eventsmodule/EventData;)Z
.end method

.method protected shouldSendEvents()Z
    .locals 3

    .prologue
    .line 296
    iget v1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mTotalEvents:I

    iget v2, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mMaxNumberOfEvents:I

    if-ge v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mHadTopPriorityEvent:Z

    if-eqz v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mHasServerResponse:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 297
    .local v0, "shouldSendEvents":Z
    :goto_0
    return v0

    .line 296
    .end local v0    # "shouldSendEvents":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized start(Landroid/content/Context;Lcom/ironsource/mediationsdk/IronSourceSegment;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "segment"    # Lcom/ironsource/mediationsdk/IronSourceSegment;

    .prologue
    .line 81
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mEventType:Ljava/lang/String;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mFormatterType:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getDefaultEventsFormatterType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mFormatterType:Ljava/lang/String;

    .line 82
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mFormatterType:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->verifyCurrentFormatter(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mFormatter:Lcom/ironsource/mediationsdk/events/AbstractEventsFormatter;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mEventType:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getDefaultEventsURL(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/events/AbstractEventsFormatter;->setEventsServerUrl(Ljava/lang/String;)V

    .line 84
    const-string v0, "supersonic_sdk.db"

    const/4 v1, 0x5

    invoke-static {p1, v0, v1}, Lcom/ironsource/eventsmodule/DataBaseEventsStorage;->getInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/ironsource/eventsmodule/DataBaseEventsStorage;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mDbStorage:Lcom/ironsource/eventsmodule/DataBaseEventsStorage;

    .line 85
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->backupEventsToDb()V

    .line 86
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mEventType:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getDefaultOptOutEvents(Landroid/content/Context;Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mOptOutEvents:[I

    .line 87
    iput-object p2, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mSegment:Lcom/ironsource/mediationsdk/IronSourceSegment;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    monitor-exit p0

    return-void

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public triggerEventsSend()V
    .locals 0

    .prologue
    .line 350
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->sendEvents()V

    .line 351
    return-void
.end method

.method protected verifyCurrentFormatter(Ljava/lang/String;)V
    .locals 1
    .param p1, "formatterType"    # Ljava/lang/String;

    .prologue
    .line 232
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mFormatter:Lcom/ironsource/mediationsdk/events/AbstractEventsFormatter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mFormatter:Lcom/ironsource/mediationsdk/events/AbstractEventsFormatter;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/events/AbstractEventsFormatter;->getFormatterType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 233
    :cond_0
    iget v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mAdUnitType:I

    invoke-static {p1, v0}, Lcom/ironsource/mediationsdk/events/EventsFormatterFactory;->getFormatter(Ljava/lang/String;I)Lcom/ironsource/mediationsdk/events/AbstractEventsFormatter;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mFormatter:Lcom/ironsource/mediationsdk/events/AbstractEventsFormatter;

    .line 235
    :cond_1
    return-void
.end method
