.class public Lcom/ironsource/mediationsdk/utils/RewardedVideoHelper;
.super Ljava/lang/Object;
.source "RewardedVideoHelper.java"


# instance fields
.field private mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

.field private mPlacementName:Ljava/lang/String;

.field private mVideoAvailability:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    .locals 0
    .param p1, "adapter"    # Lcom/ironsource/mediationsdk/AbstractAdapter;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/ironsource/mediationsdk/utils/RewardedVideoHelper;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    .line 18
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/utils/RewardedVideoHelper;->initState()V

    .line 19
    return-void
.end method

.method private initState()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/RewardedVideoHelper;->mVideoAvailability:Ljava/lang/Boolean;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/RewardedVideoHelper;->mPlacementName:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method public getPlacementName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/ironsource/mediationsdk/utils/RewardedVideoHelper;->mPlacementName:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized isVideoAvailable()Z
    .locals 2

    .prologue
    .line 60
    monitor-enter p0

    const/4 v0, 0x0

    .line 62
    .local v0, "result":Z
    :try_start_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/utils/RewardedVideoHelper;->mVideoAvailability:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 63
    iget-object v1, p0, Lcom/ironsource/mediationsdk/utils/RewardedVideoHelper;->mVideoAvailability:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 66
    :cond_0
    monitor-exit p0

    return v0

    .line 60
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/utils/RewardedVideoHelper;->initState()V

    .line 52
    return-void
.end method

.method public setPlacementName(Ljava/lang/String;)V
    .locals 0
    .param p1, "placementName"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/ironsource/mediationsdk/utils/RewardedVideoHelper;->mPlacementName:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public declared-synchronized setVideoAvailability(Z)Z
    .locals 3
    .param p1, "availability"    # Z

    .prologue
    .line 76
    monitor-enter p0

    const/4 v0, 0x0

    .line 79
    .local v0, "shouldNotify":Z
    if-eqz p1, :cond_2

    :try_start_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/utils/RewardedVideoHelper;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    sget-object v2, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/AbstractAdapter;->canShowAdInCurrentSession(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p1, 0x1

    .line 81
    :goto_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/utils/RewardedVideoHelper;->mVideoAvailability:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/utils/RewardedVideoHelper;->mVideoAvailability:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v1, p1, :cond_1

    .line 82
    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/RewardedVideoHelper;->mVideoAvailability:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    const/4 v0, 0x1

    .line 86
    :cond_1
    monitor-exit p0

    return v0

    .line 79
    :cond_2
    const/4 p1, 0x0

    goto :goto_0

    .line 76
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
