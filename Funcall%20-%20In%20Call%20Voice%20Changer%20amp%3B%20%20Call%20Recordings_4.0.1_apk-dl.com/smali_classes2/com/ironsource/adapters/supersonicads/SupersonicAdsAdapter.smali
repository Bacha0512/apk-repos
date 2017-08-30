.class Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;
.super Lcom/ironsource/mediationsdk/AbstractAdapter;
.source "SupersonicAdsAdapter.java"

# interfaces
.implements Lcom/ironsource/mediationsdk/sdk/InternalOfferwallApi;
.implements Lcom/ironsource/sdk/listeners/OnOfferWallListener;
.implements Lcom/ironsource/sdk/listeners/OnInterstitialListener;
.implements Lcom/ironsource/sdk/listeners/OnRewardedVideoListener;


# instance fields
.field private final ITEM_SIGNATURE:Ljava/lang/String;

.field private final OW_PLACEMENT_ID:Ljava/lang/String;

.field private final SDK_PLUGIN_TYPE:Ljava/lang/String;

.field private final TIMESTAMP:Ljava/lang/String;

.field private final VERSION:Ljava/lang/String;

.field private mAdapterConfig:Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;

.field private mInterstitialManager:Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;

.field private mOfferwallListener:Lcom/ironsource/mediationsdk/sdk/InternalOfferwallListener;

.field private mRewardedVideoManager:Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;

.field private mSSAPublisher:Lcom/ironsource/sdk/SSAPublisher;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "providerName"    # Ljava/lang/String;
    .param p2, "providerUrl"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/ironsource/mediationsdk/AbstractAdapter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const-string v0, "6.6.4.1"

    iput-object v0, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->VERSION:Ljava/lang/String;

    .line 38
    const-string v0, "timestamp"

    iput-object v0, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->TIMESTAMP:Ljava/lang/String;

    .line 39
    const-string v0, "itemSignature"

    iput-object v0, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->ITEM_SIGNATURE:Ljava/lang/String;

    .line 40
    const-string v0, "SDKPluginType"

    iput-object v0, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->SDK_PLUGIN_TYPE:Ljava/lang/String;

    .line 41
    const-string v0, "placementId"

    iput-object v0, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->OW_PLACEMENT_ID:Ljava/lang/String;

    .line 57
    new-instance v0, Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;

    invoke-direct {v0, p1}, Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mAdapterConfig:Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;

    .line 59
    iget-object v0, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mAdapterConfig:Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;

    invoke-virtual {v0}, Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;->getRVDynamicControllerUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->setControllerUrl(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->isAdaptersDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->setDebugMode(I)V

    .line 65
    :goto_0
    iget-object v0, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mAdapterConfig:Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;

    invoke-virtual {v0}, Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;->getRVControllerConfig()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->setControllerConfig(Ljava/lang/String;)V

    .line 66
    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mAdapterConfig:Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;

    invoke-virtual {v0}, Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;->getRVDebugMode()I

    move-result v0

    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->setDebugMode(I)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;)Lcom/ironsource/sdk/SSAPublisher;
    .locals 1
    .param p0, "x0"    # Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mSSAPublisher:Lcom/ironsource/sdk/SSAPublisher;

    return-object v0
.end method

.method static synthetic access$002(Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;Lcom/ironsource/sdk/SSAPublisher;)Lcom/ironsource/sdk/SSAPublisher;
    .locals 0
    .param p0, "x0"    # Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;
    .param p1, "x1"    # Lcom/ironsource/sdk/SSAPublisher;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mSSAPublisher:Lcom/ironsource/sdk/SSAPublisher;

    return-object p1
.end method

.method static synthetic access$100(Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->getRewardedVideoExtraParams()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;
    .param p1, "x1"    # Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I

    .prologue
    .line 35
    invoke-virtual {p0, p1, p2, p3}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->getOfferwallExtraParams()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->getInterstitialExtraParams()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;
    .param p1, "x1"    # Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I

    .prologue
    .line 35
    invoke-virtual {p0, p1, p2, p3}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void
.end method

.method private addItemNameCountSignature(Ljava/util/HashMap;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 222
    .local p1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    iget-object v6, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mAdapterConfig:Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;

    invoke-virtual {v6}, Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;->getItemName()Ljava/lang/String;

    move-result-object v2

    .line 223
    .local v2, "itemName":Ljava/lang/String;
    iget-object v6, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mAdapterConfig:Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;

    invoke-virtual {v6}, Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;->getItemCount()I

    move-result v1

    .line 224
    .local v1, "itemCount":I
    iget-object v6, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mAdapterConfig:Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;

    invoke-virtual {v6}, Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;->getPrivateKey()Ljava/lang/String;

    move-result-object v3

    .line 226
    .local v3, "privateKey":Ljava/lang/String;
    const/4 v4, 0x1

    .line 228
    .local v4, "shouldAddSignature":Z
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 229
    const/4 v4, 0x0

    .line 233
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 234
    const/4 v4, 0x0

    .line 236
    :cond_0
    const/4 v6, -0x1

    if-ne v1, v6, :cond_3

    .line 237
    const/4 v4, 0x0

    .line 242
    :goto_1
    if-eqz v4, :cond_1

    .line 243
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getCurrentTimestamp()I

    move-result v5

    .line 244
    .local v5, "timestamp":I
    const-string v6, "timestamp"

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    const-string v6, "itemSignature"

    invoke-direct {p0, v5, v2, v1, v3}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->createItemSig(ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    .end local v1    # "itemCount":I
    .end local v2    # "itemName":Ljava/lang/String;
    .end local v3    # "privateKey":Ljava/lang/String;
    .end local v4    # "shouldAddSignature":Z
    .end local v5    # "timestamp":I
    :cond_1
    :goto_2
    return-void

    .line 231
    .restart local v1    # "itemCount":I
    .restart local v2    # "itemName":Ljava/lang/String;
    .restart local v3    # "privateKey":Ljava/lang/String;
    .restart local v4    # "shouldAddSignature":Z
    :cond_2
    const-string v6, "itemName"

    invoke-virtual {p1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 248
    .end local v1    # "itemCount":I
    .end local v2    # "itemName":Ljava/lang/String;
    .end local v3    # "privateKey":Ljava/lang/String;
    .end local v4    # "shouldAddSignature":Z
    :catch_0
    move-exception v0

    .line 249
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v6

    sget-object v7, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v8, " addItemNameCountSignature"

    invoke-virtual {v6, v7, v8, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 239
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "itemCount":I
    .restart local v2    # "itemName":Ljava/lang/String;
    .restart local v3    # "privateKey":Ljava/lang/String;
    .restart local v4    # "shouldAddSignature":Z
    :cond_3
    :try_start_1
    const-string v6, "itemCount"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private createItemSig(ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "timestamp"    # I
    .param p2, "itemName"    # Ljava/lang/String;
    .param p3, "itemCount"    # I
    .param p4, "privateKey"    # Ljava/lang/String;

    .prologue
    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private createMinimumOfferCommissionSig(DLjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "min"    # D
    .param p3, "privateKey"    # Ljava/lang/String;

    .prologue
    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private createUserCreationDateSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "userid"    # Ljava/lang/String;
    .param p2, "uCreationDate"    # Ljava/lang/String;
    .param p3, "privateKey"    # Ljava/lang/String;

    .prologue
    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getGenenralExtraParams()Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 117
    .local v2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mAdapterConfig:Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;

    .line 120
    .local v1, "config":Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;
    invoke-virtual {v1}, Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;->getRVUserAgeGroup()Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, "ageGroup":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 122
    const-string v5, "applicationUserAgeGroup"

    invoke-virtual {v2, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    :cond_0
    invoke-virtual {v1}, Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;->getRVUserGender()Ljava/lang/String;

    move-result-object v4

    .line 127
    .local v4, "uGender":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 128
    const-string v5, "applicationUserGender"

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    :cond_1
    invoke-virtual {p0}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->getPluginType()Ljava/lang/String;

    move-result-object v3

    .line 132
    .local v3, "pluginType":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 133
    const-string v5, "SDKPluginType"

    invoke-virtual {v2, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    :cond_2
    return-object v2
.end method

.method private getInterstitialExtraParams()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->getGenenralExtraParams()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method private getOfferwallExtraParams()Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 198
    invoke-direct {p0}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->getGenenralExtraParams()Ljava/util/HashMap;

    move-result-object v3

    .line 201
    .local v3, "owExtraParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mAdapterConfig:Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;

    invoke-virtual {v4}, Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 202
    .local v2, "language":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 203
    const-string v4, "language"

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    :cond_0
    invoke-static {}, Lcom/ironsource/adapters/supersonicads/SupersonicConfig;->getConfigObj()Lcom/ironsource/adapters/supersonicads/SupersonicConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/adapters/supersonicads/SupersonicConfig;->getClientSideCallbacks()Z

    move-result v0

    .line 208
    .local v0, "clientSideCallbacks":Z
    const-string v4, "useClientSideCallbacks"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    invoke-static {}, Lcom/ironsource/adapters/supersonicads/SupersonicConfig;->getConfigObj()Lcom/ironsource/adapters/supersonicads/SupersonicConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/adapters/supersonicads/SupersonicConfig;->getOfferwallCustomParams()Ljava/util/Map;

    move-result-object v1

    .line 212
    .local v1, "customParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 213
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 215
    :cond_1
    invoke-direct {p0, v3}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->addItemNameCountSignature(Ljava/util/HashMap;)V

    .line 217
    return-object v3
.end method

.method private getRewardedVideoExtraParams()Ljava/util/HashMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->getGenenralExtraParams()Ljava/util/HashMap;

    move-result-object v5

    .line 147
    .local v5, "rvExtraParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mAdapterConfig:Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;

    .line 150
    .local v1, "config":Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;
    invoke-virtual {v1}, Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 151
    .local v3, "language":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 152
    const-string v7, "language"

    invoke-virtual {v5, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    :cond_0
    invoke-virtual {v1}, Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;->getMaxVideoLength()Ljava/lang/String;

    move-result-object v4

    .line 157
    .local v4, "maxVideoLength":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 158
    const-string v7, "maxVideoLength"

    invoke-virtual {v5, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    :cond_1
    invoke-virtual {v1}, Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;->getCampaignId()Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, "campaignId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 164
    const-string v7, "campaignId"

    invoke-virtual {v5, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    :cond_2
    invoke-virtual {v1}, Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;->getMediationSegment()Ljava/lang/String;

    move-result-object v6

    .line 168
    .local v6, "segment":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 169
    const-string v7, "custom_Segment"

    invoke-virtual {v5, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    :cond_3
    invoke-direct {p0, v5}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->addItemNameCountSignature(Ljava/util/HashMap;)V

    .line 176
    invoke-static {}, Lcom/ironsource/adapters/supersonicads/SupersonicConfig;->getConfigObj()Lcom/ironsource/adapters/supersonicads/SupersonicConfig;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ironsource/adapters/supersonicads/SupersonicConfig;->getRewardedVideoCustomParams()Ljava/util/Map;

    move-result-object v2

    .line 177
    .local v2, "customParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    .line 178
    invoke-virtual {v5, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 180
    :cond_4
    return-object v5
.end method

.method public static startAdapter(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;
    .locals 1
    .param p0, "providerName"    # Ljava/lang/String;
    .param p1, "providerUrl"    # Ljava/lang/String;

    .prologue
    .line 52
    new-instance v0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;

    invoke-direct {v0, p0, p1}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method protected getConfig()Lcom/ironsource/mediationsdk/config/AbstractAdapterConfig;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mAdapterConfig:Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;

    return-object v0
.end method

.method public getCoreSDKVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->getSDKVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxAdsPerSession(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)I
    .locals 3
    .param p1, "adUnit"    # Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    .prologue
    const/4 v0, 0x0

    .line 75
    sget-object v1, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter$4;->$SwitchMap$com$ironsource$mediationsdk$IronSource$AD_UNIT:[I

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 86
    :goto_0
    :pswitch_0
    return v0

    .line 77
    :pswitch_1
    iget-object v0, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mAdapterConfig:Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;

    invoke-virtual {v0}, Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;->getMaxRewardedVideosPerSession()I

    move-result v0

    goto :goto_0

    .line 79
    :pswitch_2
    iget-object v0, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mAdapterConfig:Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;

    invoke-virtual {v0}, Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;->getMaxInterstitialsPerSession()I

    move-result v0

    goto :goto_0

    .line 84
    :pswitch_3
    iget-object v0, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mAdapterConfig:Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;

    invoke-virtual {v0}, Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;->getMaxBannersPerSession()I

    move-result v0

    goto :goto_0

    .line 75
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public getMaxISAdsPerIteration()I
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mAdapterConfig:Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;

    invoke-virtual {v0}, Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;->getMaxISAdsPerIteration()I

    move-result v0

    return v0
.end method

.method public getMaxRVAdsPerIteration()I
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mAdapterConfig:Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;

    invoke-virtual {v0}, Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;->getMaxRVAdsPerIteration()I

    move-result v0

    return v0
.end method

.method public getOfferwallCredits()V
    .locals 5

    .prologue
    .line 465
    iget-object v2, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mSSAPublisher:Lcom/ironsource/sdk/SSAPublisher;

    if-eqz v2, :cond_0

    .line 466
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/IronSourceObject;->getIronSourceAppKey()Ljava/lang/String;

    move-result-object v0

    .line 467
    .local v0, "appKey":Ljava/lang/String;
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/IronSourceObject;->getIronSourceUserId()Ljava/lang/String;

    move-result-object v1

    .line 469
    .local v1, "userId":Ljava/lang/String;
    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":getOfferwallCredits(appKey:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "userId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v3, v4}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 472
    iget-object v2, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mSSAPublisher:Lcom/ironsource/sdk/SSAPublisher;

    invoke-interface {v2, v0, v1, p0}, Lcom/ironsource/sdk/SSAPublisher;->getOfferWallCredits(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/sdk/listeners/OnOfferWallListener;)V

    .line 475
    .end local v0    # "appKey":Ljava/lang/String;
    .end local v1    # "userId":Ljava/lang/String;
    :goto_0
    return-void

    .line 474
    :cond_0
    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NATIVE:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v3, "Please call init before calling getOfferwallCredits"

    const/4 v4, 0x2

    invoke-virtual {p0, v2, v3, v4}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    const-string v0, "6.6.4.1"

    return-object v0
.end method

.method public initInterstitial(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "userId"    # Ljava/lang/String;

    .prologue
    .line 615
    iget-object v1, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mAdapterConfig:Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;

    iget-object v2, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mInterstitialManager:Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;

    invoke-virtual {p0, v1, v2}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->validateConfigBeforeInitAndCallInitFailForInvalid(Lcom/ironsource/mediationsdk/config/AbstractAdapterConfig;Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;)Lcom/ironsource/mediationsdk/config/ConfigValidationResult;

    move-result-object v0

    .line 616
    .local v0, "validationResult":Lcom/ironsource/mediationsdk/config/ConfigValidationResult;
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    .line 635
    :goto_0
    return-void

    .line 620
    :cond_0
    iget-object v1, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mInterstitialManager:Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;

    invoke-virtual {p0, v1}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->startISInitTimer(Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;)V

    .line 622
    new-instance v1, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter$3;-><init>(Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public initOfferwall(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "userId"    # Ljava/lang/String;

    .prologue
    .line 490
    :try_start_0
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":initOfferwall(appKey:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", userId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 491
    new-instance v1, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter$2;-><init>(Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 505
    :goto_0
    return-void

    .line 500
    :catch_0
    move-exception v0

    .line 501
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v1

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":initOfferwall(userId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 502
    iget-object v1, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mOfferwallListener:Lcom/ironsource/mediationsdk/sdk/InternalOfferwallListener;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adapter initialization failure - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 503
    invoke-virtual {p0}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Offerwall"

    invoke-static {v3, v4}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v3

    .line 502
    invoke-interface {v1, v2, v3}, Lcom/ironsource/mediationsdk/sdk/InternalOfferwallListener;->onOfferwallAvailable(ZLcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_0
.end method

.method public initRewardedVideo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "userId"    # Ljava/lang/String;

    .prologue
    .line 270
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":initRewardedVideo(userId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 272
    iget-object v1, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mRewardedVideoHelper:Lcom/ironsource/mediationsdk/utils/RewardedVideoHelper;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/RewardedVideoHelper;->reset()V

    .line 274
    iget-object v1, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mAdapterConfig:Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;

    iget-object v2, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mRewardedVideoManager:Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;

    invoke-virtual {p0, v1, v2}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->validateConfigBeforeInitAndCallAvailabilityChangedForInvalid(Lcom/ironsource/mediationsdk/config/AbstractAdapterConfig;Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;)Lcom/ironsource/mediationsdk/config/ConfigValidationResult;

    move-result-object v0

    .line 275
    .local v0, "validationResult":Lcom/ironsource/mediationsdk/config/ConfigValidationResult;
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    .line 296
    :goto_0
    return-void

    .line 279
    :cond_0
    iget-object v1, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mRewardedVideoManager:Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;

    invoke-virtual {p0, v1}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->startRVTimer(Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;)V

    .line 280
    new-instance v1, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter$1;-><init>(Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public isInterstitialReady()Z
    .locals 1

    .prologue
    .line 662
    iget-object v0, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mSSAPublisher:Lcom/ironsource/sdk/SSAPublisher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mSSAPublisher:Lcom/ironsource/sdk/SSAPublisher;

    invoke-interface {v0}, Lcom/ironsource/sdk/SSAPublisher;->isInterstitialAdAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOfferwallAvailable()Z
    .locals 1

    .prologue
    .line 529
    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized isRewardedVideoAvailable()Z
    .locals 4

    .prologue
    .line 335
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mRewardedVideoHelper:Lcom/ironsource/mediationsdk/utils/RewardedVideoHelper;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/RewardedVideoHelper;->isVideoAvailable()Z

    move-result v0

    .line 337
    .local v0, "availability":Z
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":isRewardedVideoAvailable():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 339
    monitor-exit p0

    return v0

    .line 335
    .end local v0    # "availability":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public loadInterstitial()V
    .locals 3

    .prologue
    .line 639
    iget-object v0, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mInterstitialManager:Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;

    invoke-virtual {p0, v0}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->startISLoadTimer(Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;)V

    .line 640
    iget-object v0, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mSSAPublisher:Lcom/ironsource/sdk/SSAPublisher;

    if-eqz v0, :cond_0

    .line 641
    iget-object v0, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mSSAPublisher:Lcom/ironsource/sdk/SSAPublisher;

    invoke-interface {v0}, Lcom/ironsource/sdk/SSAPublisher;->loadInterstitial()V

    .line 645
    :goto_0
    return-void

    .line 643
    :cond_0
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NATIVE:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v1, "Please call initInterstitial before calling loadInterstitial"

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public onGetOWCreditsFailed(Ljava/lang/String;)V
    .locals 5
    .param p1, "desc"    # Ljava/lang/String;

    .prologue
    .line 577
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v1

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " :onGetOWCreditsFailed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 579
    iget-object v1, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mOfferwallListener:Lcom/ironsource/mediationsdk/sdk/InternalOfferwallListener;

    if-eqz v1, :cond_0

    .line 580
    invoke-static {p1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildGenericError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    .line 581
    .local v0, "sse":Lcom/ironsource/mediationsdk/logger/IronSourceError;
    iget-object v1, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mOfferwallListener:Lcom/ironsource/mediationsdk/sdk/InternalOfferwallListener;

    invoke-interface {v1, v0}, Lcom/ironsource/mediationsdk/sdk/InternalOfferwallListener;->onGetOfferwallCreditsFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 583
    .end local v0    # "sse":Lcom/ironsource/mediationsdk/logger/IronSourceError;
    :cond_0
    return-void
.end method

.method public onInterstitialClick()V
    .locals 4

    .prologue
    .line 743
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " :onInterstitialAdClicked "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 745
    iget-object v0, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mInterstitialManager:Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;

    if-eqz v0, :cond_0

    .line 746
    iget-object v0, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mInterstitialManager:Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;

    invoke-interface {v0, p0}, Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;->onInterstitialAdClicked(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 747
    :cond_0
    return-void
.end method

.method public onInterstitialClose()V
    .locals 4

    .prologue
    .line 718
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " :onInterstitialAdClosed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 720
    iget-object v0, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mInterstitialManager:Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;

    if-eqz v0, :cond_0

    .line 721
    iget-object v0, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mInterstitialManager:Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;

    invoke-interface {v0, p0}, Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;->onInterstitialAdClosed(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 722
    :cond_0
    return-void
.end method

.method public onInterstitialInitFailed(Ljava/lang/String;)V
    .locals 4
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 676
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " :onInterstitialInitFailed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 678
    invoke-virtual {p0}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->cancelISInitTimer()V

    .line 680
    iget-object v0, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mInterstitialManager:Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;

    if-eqz v0, :cond_0

    .line 681
    iget-object v0, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mInterstitialManager:Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adapter initialization failure - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Interstitial"

    invoke-static {v1, v2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;->onInterstitialInitFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 683
    :cond_0
    return-void
.end method

.method public onInterstitialInitSuccess()V
    .locals 4

    .prologue
    .line 667
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " :onInterstitialInitSuccess "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 669
    invoke-virtual {p0}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->cancelISInitTimer()V

    .line 670
    iget-object v0, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mInterstitialManager:Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;

    if-eqz v0, :cond_0

    .line 671
    iget-object v0, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mInterstitialManager:Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;

    invoke-interface {v0, p0}, Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;->onInterstitialInitSuccess(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 672
    :cond_0
    return-void
.end method

.method public onInterstitialLoadFailed(Ljava/lang/String;)V
    .locals 6
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 697
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v2

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " :onInterstitialAdLoadFailed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 699
    invoke-virtual {p0}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->cancelISLoadTimer()V

    .line 700
    iget-object v2, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mInterstitialManager:Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;

    if-eqz v2, :cond_0

    .line 701
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Interstitial Load Fail, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 702
    invoke-virtual {p0}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 703
    .local v1, "errorString":Ljava/lang/String;
    invoke-static {v1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildLoadFailedError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    .line 704
    .local v0, "error":Lcom/ironsource/mediationsdk/logger/IronSourceError;
    iget-object v2, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mInterstitialManager:Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;

    invoke-interface {v2, v0, p0}, Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;->onInterstitialAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 706
    .end local v0    # "error":Lcom/ironsource/mediationsdk/logger/IronSourceError;
    .end local v1    # "errorString":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onInterstitialLoadSuccess()V
    .locals 4

    .prologue
    .line 687
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " :onInterstitialLoadSuccess "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 689
    invoke-virtual {p0}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->cancelISLoadTimer()V

    .line 690
    iget-object v0, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mInterstitialManager:Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;

    if-eqz v0, :cond_0

    .line 691
    iget-object v0, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mInterstitialManager:Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;

    invoke-interface {v0, p0}, Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;->onInterstitialAdReady(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 693
    :cond_0
    return-void
.end method

.method public onInterstitialOpen()V
    .locals 4

    .prologue
    .line 710
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " :onInterstitialAdOpened "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 712
    iget-object v0, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mInterstitialManager:Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;

    if-eqz v0, :cond_0

    .line 713
    iget-object v0, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mInterstitialManager:Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;

    invoke-interface {v0, p0}, Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;->onInterstitialAdOpened(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 714
    :cond_0
    return-void
.end method

.method public onInterstitialShowFailed(Ljava/lang/String;)V
    .locals 4
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 734
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " :onInterstitialAdShowFailed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 736
    iget-object v0, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mInterstitialManager:Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;

    if-eqz v0, :cond_0

    .line 737
    iget-object v0, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mInterstitialManager:Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;

    const-string v1, "Interstitial"

    invoke-static {v1, p1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildShowFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;->onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 739
    :cond_0
    return-void
.end method

.method public onInterstitialShowSuccess()V
    .locals 4

    .prologue
    .line 726
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " :onInterstitialAdShowSucceeded "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 728
    iget-object v0, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mInterstitialManager:Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;

    if-eqz v0, :cond_0

    .line 729
    iget-object v0, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mInterstitialManager:Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;

    invoke-interface {v0, p0}, Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;->onInterstitialAdShowSucceeded(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 730
    :cond_0
    return-void
.end method

.method public onOWAdClosed()V
    .locals 4

    .prologue
    .line 569
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " :onOWAdClosed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 571
    iget-object v0, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mOfferwallListener:Lcom/ironsource/mediationsdk/sdk/InternalOfferwallListener;

    if-eqz v0, :cond_0

    .line 572
    iget-object v0, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mOfferwallListener:Lcom/ironsource/mediationsdk/sdk/InternalOfferwallListener;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/InternalOfferwallListener;->onOfferwallClosed()V

    .line 573
    :cond_0
    return-void
.end method

.method public onOWAdCredited(IIZ)Z
    .locals 5
    .param p1, "credits"    # I
    .param p2, "totalCredits"    # I
    .param p3, "totalCreditsFlag"    # Z

    .prologue
    const/4 v0, 0x1

    .line 562
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v1

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " :onOWAdCredited "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 564
    iget-object v1, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mOfferwallListener:Lcom/ironsource/mediationsdk/sdk/InternalOfferwallListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mOfferwallListener:Lcom/ironsource/mediationsdk/sdk/InternalOfferwallListener;

    invoke-interface {v1, p1, p2, p3}, Lcom/ironsource/mediationsdk/sdk/InternalOfferwallListener;->onOfferwallAdCredited(IIZ)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onOWGeneric(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/String;

    .prologue
    .line 558
    return-void
.end method

.method public onOWShowFail(Ljava/lang/String;)V
    .locals 5
    .param p1, "desc"    # Ljava/lang/String;

    .prologue
    .line 547
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v1

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " :onOWShowFail "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 549
    iget-object v1, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mOfferwallListener:Lcom/ironsource/mediationsdk/sdk/InternalOfferwallListener;

    if-eqz v1, :cond_0

    .line 550
    invoke-static {p1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildGenericError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    .line 551
    .local v0, "sse":Lcom/ironsource/mediationsdk/logger/IronSourceError;
    iget-object v1, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mOfferwallListener:Lcom/ironsource/mediationsdk/sdk/InternalOfferwallListener;

    invoke-interface {v1, v0}, Lcom/ironsource/mediationsdk/sdk/InternalOfferwallListener;->onOfferwallShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 553
    .end local v0    # "sse":Lcom/ironsource/mediationsdk/logger/IronSourceError;
    :cond_0
    return-void
.end method

.method public onOWShowSuccess(Ljava/lang/String;)V
    .locals 4
    .param p1, "placementId"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 534
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 535
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":onOWShowSuccess()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v3}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 540
    :goto_0
    iget-object v0, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mOfferwallListener:Lcom/ironsource/mediationsdk/sdk/InternalOfferwallListener;

    if-eqz v0, :cond_0

    .line 541
    iget-object v0, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mOfferwallListener:Lcom/ironsource/mediationsdk/sdk/InternalOfferwallListener;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/InternalOfferwallListener;->onOfferwallOpened()V

    .line 543
    :cond_0
    return-void

    .line 537
    :cond_1
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":onOWShowSuccess(placementId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v3}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public onOfferwallInitFail(Ljava/lang/String;)V
    .locals 5
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 596
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v1

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " :onOfferwallInitFail "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 598
    iget-object v1, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mOfferwallListener:Lcom/ironsource/mediationsdk/sdk/InternalOfferwallListener;

    if-eqz v1, :cond_0

    .line 599
    invoke-static {p1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildGenericError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    .line 600
    .local v0, "sse":Lcom/ironsource/mediationsdk/logger/IronSourceError;
    iget-object v1, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mOfferwallListener:Lcom/ironsource/mediationsdk/sdk/InternalOfferwallListener;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Lcom/ironsource/mediationsdk/sdk/InternalOfferwallListener;->onOfferwallAvailable(ZLcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 602
    .end local v0    # "sse":Lcom/ironsource/mediationsdk/logger/IronSourceError;
    :cond_0
    return-void
.end method

.method public onOfferwallInitSuccess()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 587
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " :onOfferwallInitSuccess "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 589
    iget-object v0, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mOfferwallListener:Lcom/ironsource/mediationsdk/sdk/InternalOfferwallListener;

    if-eqz v0, :cond_0

    .line 590
    iget-object v0, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mOfferwallListener:Lcom/ironsource/mediationsdk/sdk/InternalOfferwallListener;

    invoke-interface {v0, v4}, Lcom/ironsource/mediationsdk/sdk/InternalOfferwallListener;->onOfferwallAvailable(Z)V

    .line 592
    :cond_0
    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 300
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":onPause()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 302
    iget-object v0, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mSSAPublisher:Lcom/ironsource/sdk/SSAPublisher;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mSSAPublisher:Lcom/ironsource/sdk/SSAPublisher;

    invoke-interface {v0, p1}, Lcom/ironsource/sdk/SSAPublisher;->onPause(Landroid/app/Activity;)V

    .line 304
    :cond_0
    return-void
.end method

.method public onRVAdClicked()V
    .locals 4

    .prologue
    .line 421
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " :onRVAdClicked "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 423
    return-void
.end method

.method public onRVAdClosed()V
    .locals 4

    .prologue
    .line 445
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " :onRVAdClosed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 447
    iget-object v0, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mRewardedVideoManager:Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;

    if-eqz v0, :cond_0

    .line 448
    iget-object v0, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mRewardedVideoManager:Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;

    invoke-interface {v0, p0}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;->onRewardedVideoAdClosed(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 449
    :cond_0
    return-void
.end method

.method public onRVAdCredited(I)V
    .locals 5
    .param p1, "amount"    # I

    .prologue
    .line 435
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v1

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " :onRVAdCredited "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 437
    iget-object v1, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mRewardedVideoManager:Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;

    if-eqz v1, :cond_0

    .line 438
    iget-object v1, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mRewardedVideoConfig:Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;

    iget-object v2, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mRewardedVideoHelper:Lcom/ironsource/mediationsdk/utils/RewardedVideoHelper;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/utils/RewardedVideoHelper;->getPlacementName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->getRewardedVideoPlacement(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/Placement;

    move-result-object v0

    .line 439
    .local v0, "placement":Lcom/ironsource/mediationsdk/model/Placement;
    iget-object v1, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mRewardedVideoManager:Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;

    invoke-interface {v1, v0, p0}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;->onRewardedVideoAdRewarded(Lcom/ironsource/mediationsdk/model/Placement;Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 441
    .end local v0    # "placement":Lcom/ironsource/mediationsdk/model/Placement;
    :cond_0
    return-void
.end method

.method public onRVAdOpened()V
    .locals 4

    .prologue
    .line 453
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " :onRVAdOpened "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 455
    iget-object v0, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mRewardedVideoManager:Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mRewardedVideoManager:Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;

    invoke-interface {v0, p0}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;->onRewardedVideoAdOpened(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 457
    :cond_0
    return-void
.end method

.method public onRVInitFail(Ljava/lang/String;)V
    .locals 5
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 409
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v1

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " :onRVInitFail "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 411
    invoke-virtual {p0}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->cancelRVTimer()V

    .line 413
    iget-object v1, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mRewardedVideoHelper:Lcom/ironsource/mediationsdk/utils/RewardedVideoHelper;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/utils/RewardedVideoHelper;->setVideoAvailability(Z)Z

    move-result v0

    .line 414
    .local v0, "shouldNotify":Z
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mRewardedVideoManager:Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;

    if-eqz v1, :cond_0

    .line 415
    iget-object v1, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mRewardedVideoManager:Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;

    iget-object v2, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mRewardedVideoHelper:Lcom/ironsource/mediationsdk/utils/RewardedVideoHelper;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/utils/RewardedVideoHelper;->isVideoAvailable()Z

    move-result v2

    invoke-interface {v1, v2, p0}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;->onRewardedVideoAvailabilityChanged(ZLcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 417
    :cond_0
    return-void
.end method

.method public onRVInitSuccess(Lcom/ironsource/sdk/data/AdUnitsReady;)V
    .locals 8
    .param p1, "aur"    # Lcom/ironsource/sdk/data/AdUnitsReady;

    .prologue
    const/4 v0, 0x1

    .line 386
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v4

    sget-object v5, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " :onRVInitSuccess "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 388
    invoke-virtual {p0}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->cancelRVTimer()V

    .line 390
    const/4 v2, 0x0

    .line 393
    .local v2, "numOfAdUnits":I
    :try_start_0
    invoke-virtual {p1}, Lcom/ironsource/sdk/data/AdUnitsReady;->getNumOfAdUnits()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 397
    :goto_0
    if-lez v2, :cond_1

    .line 399
    .local v0, "availability":Z
    :goto_1
    iget-object v4, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mRewardedVideoHelper:Lcom/ironsource/mediationsdk/utils/RewardedVideoHelper;

    invoke-virtual {v4, v0}, Lcom/ironsource/mediationsdk/utils/RewardedVideoHelper;->setVideoAvailability(Z)Z

    move-result v3

    .line 401
    .local v3, "shouldNotify":Z
    iget-object v4, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mRewardedVideoManager:Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;

    if-eqz v4, :cond_0

    .line 402
    if-eqz v3, :cond_0

    .line 403
    iget-object v4, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mRewardedVideoManager:Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;

    iget-object v5, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mRewardedVideoHelper:Lcom/ironsource/mediationsdk/utils/RewardedVideoHelper;

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/utils/RewardedVideoHelper;->isVideoAvailable()Z

    move-result v5

    invoke-interface {v4, v5, p0}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;->onRewardedVideoAvailabilityChanged(ZLcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 405
    :cond_0
    return-void

    .line 394
    .end local v0    # "availability":Z
    .end local v3    # "shouldNotify":Z
    :catch_0
    move-exception v1

    .line 395
    .local v1, "e":Ljava/lang/NumberFormatException;
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v4

    sget-object v5, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NATIVE:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v6, "onRVInitSuccess:parseInt()"

    invoke-virtual {v4, v5, v6, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 397
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onRVNoMoreOffers()V
    .locals 5

    .prologue
    .line 374
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v1

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " :onRVNoMoreOffers "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 376
    invoke-virtual {p0}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->cancelRVTimer()V

    .line 377
    iget-object v1, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mRewardedVideoHelper:Lcom/ironsource/mediationsdk/utils/RewardedVideoHelper;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/utils/RewardedVideoHelper;->setVideoAvailability(Z)Z

    move-result v0

    .line 379
    .local v0, "shouldNotify":Z
    iget-object v1, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mRewardedVideoManager:Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 380
    iget-object v1, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mRewardedVideoManager:Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;

    iget-object v2, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mRewardedVideoHelper:Lcom/ironsource/mediationsdk/utils/RewardedVideoHelper;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/utils/RewardedVideoHelper;->isVideoAvailable()Z

    move-result v2

    invoke-interface {v1, v2, p0}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;->onRewardedVideoAvailabilityChanged(ZLcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 382
    :cond_0
    return-void
.end method

.method public onRVShowFail(Ljava/lang/String;)V
    .locals 4
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 427
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " :onRVShowFail "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 429
    iget-object v0, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mRewardedVideoManager:Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mRewardedVideoManager:Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;

    new-instance v1, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v2, 0x1fd

    invoke-direct {v1, v2, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, p0}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;->onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 431
    :cond_0
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 326
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":onResume()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 328
    iget-object v0, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mSSAPublisher:Lcom/ironsource/sdk/SSAPublisher;

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mSSAPublisher:Lcom/ironsource/sdk/SSAPublisher;

    invoke-interface {v0, p1}, Lcom/ironsource/sdk/SSAPublisher;->onResume(Landroid/app/Activity;)V

    .line 331
    :cond_0
    return-void
.end method

.method public setAge(I)V
    .locals 3
    .param p1, "age"    # I

    .prologue
    .line 308
    iget-object v0, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mAdapterConfig:Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;

    invoke-virtual {v0, p1}, Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;->setUserAgeGroup(I)V

    .line 309
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":setAge(age:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 310
    return-void
.end method

.method public setGender(Ljava/lang/String;)V
    .locals 3
    .param p1, "gender"    # Ljava/lang/String;

    .prologue
    .line 314
    iget-object v0, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mAdapterConfig:Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;

    invoke-virtual {v0, p1}, Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;->setUserGender(Ljava/lang/String;)V

    .line 315
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":setGender(gender:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 316
    return-void
.end method

.method public setInternalOfferwallListener(Lcom/ironsource/mediationsdk/sdk/InternalOfferwallListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/ironsource/mediationsdk/sdk/InternalOfferwallListener;

    .prologue
    .line 484
    iput-object p1, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mOfferwallListener:Lcom/ironsource/mediationsdk/sdk/InternalOfferwallListener;

    .line 485
    return-void
.end method

.method public setInterstitialListener(Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;)V
    .locals 0
    .param p1, "manager"    # Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;

    .prologue
    .line 610
    iput-object p1, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mInterstitialManager:Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;

    .line 611
    return-void
.end method

.method public setMediationSegment(Ljava/lang/String;)V
    .locals 3
    .param p1, "segment"    # Ljava/lang/String;

    .prologue
    .line 320
    iget-object v0, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mAdapterConfig:Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;

    invoke-virtual {v0, p1}, Lcom/ironsource/adapters/supersonicads/DemandSourceConfig;->setMediationSegment(Ljava/lang/String;)V

    .line 321
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":setMediationSegment(segment:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 322
    return-void
.end method

.method public setOfferwallListener(Lcom/ironsource/mediationsdk/sdk/OfferwallListener;)V
    .locals 0
    .param p1, "owListener"    # Lcom/ironsource/mediationsdk/sdk/OfferwallListener;

    .prologue
    .line 480
    return-void
.end method

.method public setRewardedVideoListener(Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;)V
    .locals 0
    .param p1, "rewardedVideoManager"    # Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;

    .prologue
    .line 344
    iput-object p1, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mRewardedVideoManager:Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;

    .line 345
    return-void
.end method

.method public showInterstitial()V
    .locals 0

    .prologue
    .line 650
    return-void
.end method

.method public showInterstitial(Ljava/lang/String;)V
    .locals 3
    .param p1, "placementName"    # Ljava/lang/String;

    .prologue
    .line 654
    iget-object v0, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mSSAPublisher:Lcom/ironsource/sdk/SSAPublisher;

    if-eqz v0, :cond_0

    .line 655
    iget-object v0, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mSSAPublisher:Lcom/ironsource/sdk/SSAPublisher;

    invoke-interface {v0}, Lcom/ironsource/sdk/SSAPublisher;->showInterstitial()V

    .line 658
    :goto_0
    return-void

    .line 657
    :cond_0
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NATIVE:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v1, "Please call loadInterstitial before calling showInterstitial"

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public showOfferwall()V
    .locals 0

    .prologue
    .line 509
    return-void
.end method

.method public showOfferwall(Ljava/lang/String;)V
    .locals 4
    .param p1, "placementId"    # Ljava/lang/String;

    .prologue
    .line 513
    invoke-direct {p0}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->getOfferwallExtraParams()Ljava/util/HashMap;

    move-result-object v0

    .line 514
    .local v0, "offerwallExtraParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 515
    const-string v1, "placementId"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    :cond_0
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":showOfferwall("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "extraParams:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 520
    iget-object v1, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mSSAPublisher:Lcom/ironsource/sdk/SSAPublisher;

    if-eqz v1, :cond_1

    .line 521
    iget-object v1, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mSSAPublisher:Lcom/ironsource/sdk/SSAPublisher;

    invoke-interface {v1, v0}, Lcom/ironsource/sdk/SSAPublisher;->showOfferWall(Ljava/util/Map;)V

    .line 525
    :goto_0
    return-void

    .line 523
    :cond_1
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NATIVE:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "Please call init before calling showOfferwall"

    const/4 v3, 0x2

    invoke-virtual {p0, v1, v2, v3}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public showRewardedVideo()V
    .locals 0

    .prologue
    .line 350
    return-void
.end method

.method public showRewardedVideo(Ljava/lang/String;)V
    .locals 5
    .param p1, "placementName"    # Ljava/lang/String;

    .prologue
    .line 354
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":showRewardedVideo(placement:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 358
    iget-object v1, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mSSAPublisher:Lcom/ironsource/sdk/SSAPublisher;

    if-eqz v1, :cond_1

    .line 359
    iget-object v1, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mSSAPublisher:Lcom/ironsource/sdk/SSAPublisher;

    invoke-virtual {p0}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/ironsource/sdk/SSAPublisher;->showRewardedVideo(Ljava/lang/String;)V

    .line 360
    iget-object v1, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mRewardedVideoHelper:Lcom/ironsource/mediationsdk/utils/RewardedVideoHelper;

    invoke-virtual {v1, p1}, Lcom/ironsource/mediationsdk/utils/RewardedVideoHelper;->setPlacementName(Ljava/lang/String;)V

    .line 370
    :cond_0
    :goto_0
    return-void

    .line 362
    :cond_1
    iget-object v1, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mRewardedVideoHelper:Lcom/ironsource/mediationsdk/utils/RewardedVideoHelper;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/utils/RewardedVideoHelper;->setVideoAvailability(Z)Z

    move-result v0

    .line 363
    .local v0, "shouldNotify":Z
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NATIVE:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "Please call init before calling showRewardedVideo"

    const/4 v3, 0x2

    invoke-virtual {p0, v1, v2, v3}, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 364
    iget-object v1, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mRewardedVideoManager:Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;

    new-instance v2, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v3, 0x1fd

    const-string v4, "Please call init before calling showRewardedVideo"

    invoke-direct {v2, v3, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v2, p0}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;->onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 366
    iget-object v1, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mRewardedVideoManager:Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 367
    iget-object v1, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mRewardedVideoManager:Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;

    iget-object v2, p0, Lcom/ironsource/adapters/supersonicads/SupersonicAdsAdapter;->mRewardedVideoHelper:Lcom/ironsource/mediationsdk/utils/RewardedVideoHelper;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/utils/RewardedVideoHelper;->isVideoAvailable()Z

    move-result v2

    invoke-interface {v1, v2, p0}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;->onRewardedVideoAvailabilityChanged(ZLcom/ironsource/mediationsdk/AbstractAdapter;)V

    goto :goto_0
.end method
