.class public Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;
.super Ljava/lang/Object;
.source "RewardedVideoConfigurations.java"


# static fields
.field private static final DEFAULT_RV_PLACEMENT_ID:I


# instance fields
.field private mBackFillProviderName:Ljava/lang/String;

.field private mDefaultRVPlacement:Lcom/ironsource/mediationsdk/model/Placement;

.field private mPremiumProviderName:Ljava/lang/String;

.field private mRVAdaptersAlgorithm:Ljava/lang/String;

.field private mRVAdaptersSmartLoadAmount:I

.field private mRVAdaptersTimeOutInSeconds:I

.field private mRVEvents:Lcom/ironsource/mediationsdk/model/ApplicationEvents;

.field private mRVPlacements:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ironsource/mediationsdk/model/Placement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->mRVPlacements:Ljava/util/ArrayList;

    .line 24
    new-instance v0, Lcom/ironsource/mediationsdk/model/ApplicationEvents;

    invoke-direct {v0}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->mRVEvents:Lcom/ironsource/mediationsdk/model/ApplicationEvents;

    .line 25
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Lcom/ironsource/mediationsdk/model/ApplicationEvents;)V
    .locals 1
    .param p1, "adaptersSmartLoadAmount"    # I
    .param p2, "adaptersSmartLoadTimeout"    # I
    .param p3, "adaptersAlgorithm"    # Ljava/lang/String;
    .param p4, "events"    # Lcom/ironsource/mediationsdk/model/ApplicationEvents;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->mRVPlacements:Ljava/util/ArrayList;

    .line 29
    iput p1, p0, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->mRVAdaptersSmartLoadAmount:I

    .line 30
    iput p2, p0, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->mRVAdaptersTimeOutInSeconds:I

    .line 31
    iput-object p3, p0, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->mRVAdaptersAlgorithm:Ljava/lang/String;

    .line 32
    iput-object p4, p0, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->mRVEvents:Lcom/ironsource/mediationsdk/model/ApplicationEvents;

    .line 33
    return-void
.end method


# virtual methods
.method public addRewardedVideoPlacement(Lcom/ironsource/mediationsdk/model/Placement;)V
    .locals 1
    .param p1, "placement"    # Lcom/ironsource/mediationsdk/model/Placement;

    .prologue
    .line 40
    if-eqz p1, :cond_0

    .line 41
    iget-object v0, p0, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->mRVPlacements:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/Placement;->getPlacementId()I

    move-result v0

    if-nez v0, :cond_0

    .line 44
    iput-object p1, p0, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->mDefaultRVPlacement:Lcom/ironsource/mediationsdk/model/Placement;

    .line 46
    :cond_0
    return-void
.end method

.method public getBackFillProviderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->mBackFillProviderName:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultRewardedVideoPlacement()Lcom/ironsource/mediationsdk/model/Placement;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->mDefaultRVPlacement:Lcom/ironsource/mediationsdk/model/Placement;

    return-object v0
.end method

.method public getPremiumProviderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->mPremiumProviderName:Ljava/lang/String;

    return-object v0
.end method

.method public getRewardedVideoAdapterAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->mRVAdaptersAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getRewardedVideoAdaptersSmartLoadAmount()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->mRVAdaptersSmartLoadAmount:I

    return v0
.end method

.method public getRewardedVideoAdaptersSmartLoadTimeout()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->mRVAdaptersTimeOutInSeconds:I

    return v0
.end method

.method public getRewardedVideoEventsConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationEvents;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->mRVEvents:Lcom/ironsource/mediationsdk/model/ApplicationEvents;

    return-object v0
.end method

.method public getRewardedVideoPlacement(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/Placement;
    .locals 3
    .param p1, "placementName"    # Ljava/lang/String;

    .prologue
    .line 49
    iget-object v1, p0, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->mRVPlacements:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/model/Placement;

    .line 50
    .local v0, "placement":Lcom/ironsource/mediationsdk/model/Placement;
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/Placement;->getPlacementName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 54
    .end local v0    # "placement":Lcom/ironsource/mediationsdk/model/Placement;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBackFillProviderName(Ljava/lang/String;)V
    .locals 0
    .param p1, "backFillProviderName"    # Ljava/lang/String;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->mBackFillProviderName:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setPremiumProviderName(Ljava/lang/String;)V
    .locals 0
    .param p1, "premiumProviderName"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->mPremiumProviderName:Ljava/lang/String;

    .line 87
    return-void
.end method
