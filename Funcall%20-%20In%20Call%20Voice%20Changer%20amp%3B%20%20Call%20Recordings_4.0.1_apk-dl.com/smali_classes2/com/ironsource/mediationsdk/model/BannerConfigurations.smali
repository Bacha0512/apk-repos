.class public Lcom/ironsource/mediationsdk/model/BannerConfigurations;
.super Ljava/lang/Object;
.source "BannerConfigurations.java"


# static fields
.field private static final DEFAULT_BN_PLACEMENT_ID:I


# instance fields
.field private mBNAdaptersSmartLoadAmount:I

.field private mBNAdaptersTimeOutInMilliseconds:J

.field private mBNEvents:Lcom/ironsource/mediationsdk/model/ApplicationEvents;

.field private mBNPlacements:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ironsource/mediationsdk/model/BannerPlacement;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultBNPlacement:Lcom/ironsource/mediationsdk/model/BannerPlacement;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lcom/ironsource/mediationsdk/model/ApplicationEvents;

    invoke-direct {v0}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/model/BannerConfigurations;->mBNEvents:Lcom/ironsource/mediationsdk/model/ApplicationEvents;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/model/BannerConfigurations;->mBNPlacements:Ljava/util/ArrayList;

    .line 22
    return-void
.end method

.method public constructor <init>(IJLcom/ironsource/mediationsdk/model/ApplicationEvents;)V
    .locals 2
    .param p1, "adaptersSmartLoadAmount"    # I
    .param p2, "adaptersSmartLoadTimeoutInMillis"    # J
    .param p4, "events"    # Lcom/ironsource/mediationsdk/model/ApplicationEvents;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/model/BannerConfigurations;->mBNPlacements:Ljava/util/ArrayList;

    .line 26
    iput p1, p0, Lcom/ironsource/mediationsdk/model/BannerConfigurations;->mBNAdaptersSmartLoadAmount:I

    .line 27
    iput-wide p2, p0, Lcom/ironsource/mediationsdk/model/BannerConfigurations;->mBNAdaptersTimeOutInMilliseconds:J

    .line 28
    iput-object p4, p0, Lcom/ironsource/mediationsdk/model/BannerConfigurations;->mBNEvents:Lcom/ironsource/mediationsdk/model/ApplicationEvents;

    .line 29
    return-void
.end method


# virtual methods
.method public addBannerPlacement(Lcom/ironsource/mediationsdk/model/BannerPlacement;)V
    .locals 1
    .param p1, "placement"    # Lcom/ironsource/mediationsdk/model/BannerPlacement;

    .prologue
    .line 44
    if-eqz p1, :cond_0

    .line 45
    iget-object v0, p0, Lcom/ironsource/mediationsdk/model/BannerConfigurations;->mBNPlacements:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/BannerPlacement;->getPlacementId()I

    move-result v0

    if-nez v0, :cond_0

    .line 48
    iput-object p1, p0, Lcom/ironsource/mediationsdk/model/BannerConfigurations;->mDefaultBNPlacement:Lcom/ironsource/mediationsdk/model/BannerPlacement;

    .line 51
    :cond_0
    return-void
.end method

.method public getBannerAdaptersSmartLoadAmount()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/ironsource/mediationsdk/model/BannerConfigurations;->mBNAdaptersSmartLoadAmount:I

    return v0
.end method

.method public getBannerAdaptersSmartLoadTimeout()J
    .locals 2

    .prologue
    .line 36
    iget-wide v0, p0, Lcom/ironsource/mediationsdk/model/BannerConfigurations;->mBNAdaptersTimeOutInMilliseconds:J

    return-wide v0
.end method

.method public getBannerEventsConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationEvents;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/ironsource/mediationsdk/model/BannerConfigurations;->mBNEvents:Lcom/ironsource/mediationsdk/model/ApplicationEvents;

    return-object v0
.end method

.method public getBannerPlacement(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/BannerPlacement;
    .locals 3
    .param p1, "placementName"    # Ljava/lang/String;

    .prologue
    .line 54
    iget-object v1, p0, Lcom/ironsource/mediationsdk/model/BannerConfigurations;->mBNPlacements:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/model/BannerPlacement;

    .line 55
    .local v0, "placement":Lcom/ironsource/mediationsdk/model/BannerPlacement;
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/BannerPlacement;->getPlacementName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 59
    .end local v0    # "placement":Lcom/ironsource/mediationsdk/model/BannerPlacement;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDefaultBannerPlacement()Lcom/ironsource/mediationsdk/model/BannerPlacement;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/ironsource/mediationsdk/model/BannerConfigurations;->mDefaultBNPlacement:Lcom/ironsource/mediationsdk/model/BannerPlacement;

    return-object v0
.end method
