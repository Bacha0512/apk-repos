.class public Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;
.super Lcom/ironsource/mediationsdk/events/BaseEventsManager;
.source "RewardedVideoEventsManager.java"


# static fields
.field private static sInstance:Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;


# instance fields
.field private mCurrentOWPlacment:Ljava/lang/String;

.field private mCurrentRVPlacment:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;-><init>()V

    .line 21
    const-string v0, "outcome"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->mFormatterType:Ljava/lang/String;

    .line 22
    const/4 v0, 0x3

    iput v0, p0, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->mAdUnitType:I

    .line 23
    const-string v0, "RV"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->mEventType:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->mCurrentRVPlacment:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->mCurrentOWPlacment:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;
    .locals 2

    .prologue
    .line 29
    const-class v1, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->sInstance:Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    invoke-direct {v0}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;-><init>()V

    sput-object v0, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->sInstance:Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    .line 31
    sget-object v0, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->sInstance:Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->initState()V

    .line 33
    :cond_0
    sget-object v0, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->sInstance:Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 29
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected getCurrentPlacement(I)Ljava/lang/String;
    .locals 1
    .param p1, "eventId"    # I

    .prologue
    .line 84
    const/16 v0, 0xf

    if-eq p1, v0, :cond_0

    const/16 v0, 0x12c

    if-lt p1, v0, :cond_1

    const/16 v0, 0x190

    if-ge p1, v0, :cond_1

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->mCurrentOWPlacment:Ljava/lang/String;

    .line 88
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->mCurrentRVPlacment:Ljava/lang/String;

    goto :goto_0
.end method

.method protected getSessionDepth(Lcom/ironsource/eventsmodule/EventData;)I
    .locals 3
    .param p1, "event"    # Lcom/ironsource/eventsmodule/EventData;

    .prologue
    .line 60
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->getInstance()Lcom/ironsource/mediationsdk/utils/SessionDepthManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->getSessionDepth(I)I

    move-result v0

    .line 61
    .local v0, "sessionDepth":I
    invoke-virtual {p1}, Lcom/ironsource/eventsmodule/EventData;->getEventId()I

    move-result v1

    const/16 v2, 0xf

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/ironsource/eventsmodule/EventData;->getEventId()I

    move-result v1

    const/16 v2, 0x12c

    if-lt v1, v2, :cond_1

    invoke-virtual {p1}, Lcom/ironsource/eventsmodule/EventData;->getEventId()I

    move-result v1

    const/16 v2, 0x190

    if-ge v1, v2, :cond_1

    .line 62
    :cond_0
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->getInstance()Lcom/ironsource/mediationsdk/utils/SessionDepthManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->getSessionDepth(I)I

    move-result v0

    .line 64
    :cond_1
    return v0
.end method

.method protected increaseSessionDepthIfNeeded(Lcom/ironsource/eventsmodule/EventData;)Z
    .locals 3
    .param p1, "event"    # Lcom/ironsource/eventsmodule/EventData;

    .prologue
    const/4 v2, 0x0

    .line 95
    invoke-virtual {p1}, Lcom/ironsource/eventsmodule/EventData;->getEventId()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 96
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->getInstance()Lcom/ironsource/mediationsdk/utils/SessionDepthManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->increaseSessionDepth(I)V

    .line 104
    :cond_0
    :goto_0
    return v2

    .line 99
    :cond_1
    invoke-virtual {p1}, Lcom/ironsource/eventsmodule/EventData;->getEventId()I

    move-result v0

    const/16 v1, 0x131

    if-ne v0, v1, :cond_0

    .line 100
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->getInstance()Lcom/ironsource/mediationsdk/utils/SessionDepthManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->increaseSessionDepth(I)V

    goto :goto_0
.end method

.method protected isTopPriorityEvent(Lcom/ironsource/eventsmodule/EventData;)Z
    .locals 2
    .param p1, "currentEvent"    # Lcom/ironsource/eventsmodule/EventData;

    .prologue
    .line 52
    invoke-virtual {p1}, Lcom/ironsource/eventsmodule/EventData;->getEventId()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 53
    invoke-virtual {p1}, Lcom/ironsource/eventsmodule/EventData;->getEventId()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    .line 54
    invoke-virtual {p1}, Lcom/ironsource/eventsmodule/EventData;->getEventId()I

    move-result v0

    const/16 v1, 0xe

    if-eq v0, v1, :cond_0

    .line 55
    invoke-virtual {p1}, Lcom/ironsource/eventsmodule/EventData;->getEventId()I

    move-result v0

    const/16 v1, 0x131

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setCurrentPlacement(Lcom/ironsource/eventsmodule/EventData;)V
    .locals 2
    .param p1, "event"    # Lcom/ironsource/eventsmodule/EventData;

    .prologue
    .line 72
    invoke-virtual {p1}, Lcom/ironsource/eventsmodule/EventData;->getEventId()I

    move-result v0

    const/16 v1, 0xf

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/ironsource/eventsmodule/EventData;->getEventId()I

    move-result v0

    const/16 v1, 0x12c

    if-lt v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/ironsource/eventsmodule/EventData;->getEventId()I

    move-result v0

    const/16 v1, 0x190

    if-ge v0, v1, :cond_1

    .line 74
    :cond_0
    invoke-virtual {p1}, Lcom/ironsource/eventsmodule/EventData;->getAdditionalDataJSON()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "placement"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->mCurrentOWPlacment:Ljava/lang/String;

    .line 80
    :goto_0
    return-void

    .line 78
    :cond_1
    invoke-virtual {p1}, Lcom/ironsource/eventsmodule/EventData;->getAdditionalDataJSON()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "placement"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->mCurrentRVPlacment:Ljava/lang/String;

    goto :goto_0
.end method

.method protected shouldExtractCurrentPlacement(Lcom/ironsource/eventsmodule/EventData;)Z
    .locals 2
    .param p1, "event"    # Lcom/ironsource/eventsmodule/EventData;

    .prologue
    .line 38
    invoke-virtual {p1}, Lcom/ironsource/eventsmodule/EventData;->getEventId()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/ironsource/eventsmodule/EventData;->getEventId()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected shouldIncludeCurrentPlacement(Lcom/ironsource/eventsmodule/EventData;)Z
    .locals 2
    .param p1, "event"    # Lcom/ironsource/eventsmodule/EventData;

    .prologue
    .line 43
    invoke-virtual {p1}, Lcom/ironsource/eventsmodule/EventData;->getEventId()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/ironsource/eventsmodule/EventData;->getEventId()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 44
    invoke-virtual {p1}, Lcom/ironsource/eventsmodule/EventData;->getEventId()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/ironsource/eventsmodule/EventData;->getEventId()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 45
    invoke-virtual {p1}, Lcom/ironsource/eventsmodule/EventData;->getEventId()I

    move-result v0

    const/16 v1, 0x13

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/ironsource/eventsmodule/EventData;->getEventId()I

    move-result v0

    const/16 v1, 0x14

    if-eq v0, v1, :cond_0

    .line 46
    invoke-virtual {p1}, Lcom/ironsource/eventsmodule/EventData;->getEventId()I

    move-result v0

    const/16 v1, 0x131

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
