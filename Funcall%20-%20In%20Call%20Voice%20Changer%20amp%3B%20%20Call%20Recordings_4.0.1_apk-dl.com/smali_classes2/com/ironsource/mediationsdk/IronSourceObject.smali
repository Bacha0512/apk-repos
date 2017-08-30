.class public Lcom/ironsource/mediationsdk/IronSourceObject;
.super Ljava/lang/Object;
.source "IronSourceObject.java"

# interfaces
.implements Lcom/ironsource/mediationsdk/sdk/IronSourceInterface;
.implements Lcom/ironsource/mediationsdk/MediationInitializer$OnMediationInitializationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/mediationsdk/IronSourceObject$IResponseListener;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/ironsource/mediationsdk/IronSourceObject;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private currentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

.field private mActivity:Landroid/app/Activity;

.field private mAdUnitsToInitialize:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;",
            ">;"
        }
    .end annotation
.end field

.field private mAppKey:Ljava/lang/String;

.field private mBannerAdaptersList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ironsource/mediationsdk/AbstractAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private mBannerManager:Lcom/ironsource/mediationsdk/BannerManager;

.field private mDynamicUserId:Ljava/lang/String;

.field private mEventManagersInit:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mInterstitialAdaptersList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ironsource/mediationsdk/AbstractAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private mInterstitialManager:Lcom/ironsource/mediationsdk/InterstitialManager;

.field private mIronSegment:Lcom/ironsource/mediationsdk/IronSourceSegment;

.field private mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

.field private mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

.field private mMediationType:Ljava/lang/String;

.field private mOfferwallManager:Lcom/ironsource/mediationsdk/OfferwallManager;

.field private mPublisherLogger:Lcom/ironsource/mediationsdk/logger/PublisherLogger;

.field private mRequestedAdUnits:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;",
            ">;"
        }
    .end annotation
.end field

.field private mRewardedVideoAdaptersList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ironsource/mediationsdk/AbstractAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private mRewardedVideoManager:Lcom/ironsource/mediationsdk/RewardedVideoManager;

.field private mSegment:Ljava/lang/String;

.field private mShouldSendGetInstanceEvent:Z

.field private mUserAge:Ljava/lang/Integer;

.field private mUserGender:Ljava/lang/String;

.field private mUserId:Ljava/lang/String;

.field private final serverResponseLocker:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->TAG:Ljava/lang/String;

    .line 73
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->serverResponseLocker:Ljava/lang/Object;

    .line 74
    iput-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->currentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    .line 76
    iput-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mAppKey:Ljava/lang/String;

    .line 77
    iput-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mUserId:Ljava/lang/String;

    .line 78
    iput-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mUserAge:Ljava/lang/Integer;

    .line 79
    iput-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mUserGender:Ljava/lang/String;

    .line 80
    iput-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mSegment:Ljava/lang/String;

    .line 81
    iput-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDynamicUserId:Ljava/lang/String;

    .line 82
    iput-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mMediationType:Ljava/lang/String;

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mShouldSendGetInstanceEvent:Z

    .line 104
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->initializeManagers()V

    .line 107
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mEventManagersInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoAdaptersList:Ljava/util/ArrayList;

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialAdaptersList:Ljava/util/ArrayList;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mBannerAdaptersList:Ljava/util/ArrayList;

    .line 111
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mAdUnitsToInitialize:Ljava/util/Set;

    .line 112
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRequestedAdUnits:Ljava/util/Set;

    .line 113
    return-void
.end method

.method private connectAndGetServerResponse(Landroid/content/Context;Ljava/lang/String;Lcom/ironsource/mediationsdk/IronSourceObject$IResponseListener;)Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/ironsource/mediationsdk/IronSourceObject$IResponseListener;

    .prologue
    .line 1055
    invoke-static {p1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1056
    const/4 v4, 0x0

    .line 1099
    :goto_0
    return-object v4

    .line 1059
    :cond_0
    const/4 v4, 0x0

    .line 1062
    .local v4, "response":Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/IronSourceObject;->getAdvertiserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 1063
    .local v3, "gaid":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1064
    invoke-static {p1}, Lcom/ironsource/environment/DeviceStatus;->getOrGenerateOnceUniqueIdentifier(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 1065
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v7

    sget-object v8, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v9, "using custom identifier"

    const/4 v10, 0x1

    invoke-virtual {v7, v8, v9, v10}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1067
    :cond_1
    const/4 v0, 0x0

    .line 1068
    .local v0, "additionParams":Ljava/util/Vector;, "Ljava/util/Vector<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    iget-object v7, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIronSegment:Lcom/ironsource/mediationsdk/IronSourceSegment;

    if-eqz v7, :cond_2

    .line 1069
    iget-object v7, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIronSegment:Lcom/ironsource/mediationsdk/IronSourceSegment;

    invoke-virtual {v7}, Lcom/ironsource/mediationsdk/IronSourceSegment;->getSegmentData()Ljava/util/Vector;

    move-result-object v0

    .line 1071
    :cond_2
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getIronSourceAppKey()Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v7, p2, v3, v0}, Lcom/ironsource/mediationsdk/server/ServerURL;->getCPVProvidersURL(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, p3}, Lcom/ironsource/mediationsdk/server/HttpFunctions;->getStringFromURL(Ljava/lang/String;Lcom/ironsource/mediationsdk/IronSourceObject$IResponseListener;)Ljava/lang/String;

    move-result-object v6

    .line 1073
    .local v6, "serverResponseString":Ljava/lang/String;
    if-nez v6, :cond_3

    .line 1074
    const/4 v4, 0x0

    goto :goto_0

    .line 1077
    :cond_3
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getSerr()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_5

    .line 1078
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1080
    .local v2, "encryptedResponseJson":Lorg/json/JSONObject;
    const-string v7, "response"

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1082
    .local v1, "encryptedResponse":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1083
    const/4 v4, 0x0

    goto :goto_0

    .line 1086
    :cond_4
    const-string v7, "C38FB23A402222A0C17D34A92F971D1F"

    invoke-static {v7, v1}, Lcom/ironsource/mediationsdk/utils/IronSourceAES;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1089
    .end local v1    # "encryptedResponse":Ljava/lang/String;
    .end local v2    # "encryptedResponseJson":Lorg/json/JSONObject;
    :cond_5
    new-instance v5, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getIronSourceAppKey()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, p1, v7, p2, v6}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1092
    .end local v4    # "response":Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;
    .local v5, "response":Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;
    :try_start_1
    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->isValidResponse()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v7

    if-nez v7, :cond_6

    .line 1093
    const/4 v4, 0x0

    goto :goto_0

    :cond_6
    move-object v4, v5

    .line 1097
    .end local v5    # "response":Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;
    .restart local v4    # "response":Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;
    goto :goto_0

    .line 1095
    .end local v0    # "additionParams":Ljava/util/Vector;, "Ljava/util/Vector<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v3    # "gaid":Ljava/lang/String;
    .end local v6    # "serverResponseString":Ljava/lang/String;
    :catch_0
    move-exception v7

    goto :goto_0

    .end local v4    # "response":Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;
    .restart local v0    # "additionParams":Ljava/util/Vector;, "Ljava/util/Vector<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v3    # "gaid":Ljava/lang/String;
    .restart local v5    # "response":Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;
    .restart local v6    # "serverResponseString":Ljava/lang/String;
    :catch_1
    move-exception v7

    move-object v4, v5

    .end local v5    # "response":Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;
    .restart local v4    # "response":Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;
    goto :goto_0
.end method

.method private getCachedResponse(Landroid/content/Context;Ljava/lang/String;)Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # Ljava/lang/String;

    .prologue
    .line 1018
    const/4 v6, 0x0

    .line 1021
    .local v6, "response":Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;
    invoke-static {p1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getLastResponse(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 1024
    .local v2, "cachedResponseString":Ljava/lang/String;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1029
    .local v1, "cachedJsonObject":Lorg/json/JSONObject;
    :goto_0
    const-string v8, "appKey"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1030
    .local v0, "cachedAppKey":Ljava/lang/String;
    const-string v8, "userId"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1031
    .local v4, "cachedUserId":Ljava/lang/String;
    const-string v8, "response"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1033
    .local v3, "cachedSettings":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1034
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1035
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1039
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getIronSourceAppKey()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getIronSourceAppKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1041
    new-instance v6, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    .end local v6    # "response":Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;
    invoke-direct {v6, p1, v0, v4, v3}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1043
    .restart local v6    # "response":Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;
    invoke-static {v0, v4}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildUsingCachedConfigurationError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v7

    .line 1044
    .local v7, "sse":Lcom/ironsource/mediationsdk/logger/IronSourceError;
    iget-object v8, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v9, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v7}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v8, v9, v10, v11}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1047
    iget-object v8, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v9, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1051
    .end local v7    # "sse":Lcom/ironsource/mediationsdk/logger/IronSourceError;
    :cond_0
    return-object v6

    .line 1025
    .end local v0    # "cachedAppKey":Ljava/lang/String;
    .end local v1    # "cachedJsonObject":Lorg/json/JSONObject;
    .end local v3    # "cachedSettings":Ljava/lang/String;
    .end local v4    # "cachedUserId":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 1026
    .local v5, "e":Lorg/json/JSONException;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .restart local v1    # "cachedJsonObject":Lorg/json/JSONObject;
    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;
    .locals 2

    .prologue
    .line 95
    const-class v1, Lcom/ironsource/mediationsdk/IronSourceObject;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ironsource/mediationsdk/IronSourceObject;->sInstance:Lcom/ironsource/mediationsdk/IronSourceObject;

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Lcom/ironsource/mediationsdk/IronSourceObject;

    invoke-direct {v0}, Lcom/ironsource/mediationsdk/IronSourceObject;-><init>()V

    sput-object v0, Lcom/ironsource/mediationsdk/IronSourceObject;->sInstance:Lcom/ironsource/mediationsdk/IronSourceObject;

    .line 99
    :cond_0
    sget-object v0, Lcom/ironsource/mediationsdk/IronSourceObject;->sInstance:Lcom/ironsource/mediationsdk/IronSourceObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getInterstitialCappingStatus(Ljava/lang/String;)Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;
    .locals 2
    .param p1, "placementName"    # Ljava/lang/String;

    .prologue
    .line 1419
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialManager:Lcom/ironsource/mediationsdk/InterstitialManager;

    if-nez v1, :cond_0

    .line 1420
    sget-object v1, Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;->NOT_CAPPED:Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;

    .line 1428
    :goto_0
    return-object v1

    .line 1423
    :cond_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialManager:Lcom/ironsource/mediationsdk/InterstitialManager;

    invoke-virtual {v1, p1}, Lcom/ironsource/mediationsdk/InterstitialManager;->getPlacementByName(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/InterstitialPlacement;

    move-result-object v0

    .line 1424
    .local v0, "placement":Lcom/ironsource/mediationsdk/model/InterstitialPlacement;
    if-nez v0, :cond_1

    .line 1425
    sget-object v1, Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;->NOT_CAPPED:Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;

    goto :goto_0

    .line 1428
    :cond_1
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/ironsource/mediationsdk/utils/CappingManager;->isPlacementCapped(Landroid/content/Context;Lcom/ironsource/mediationsdk/model/InterstitialPlacement;)Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;

    move-result-object v1

    goto :goto_0
.end method

.method private getRewardedVideoCappingStatus(Ljava/lang/String;)Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;
    .locals 2
    .param p1, "placementName"    # Ljava/lang/String;

    .prologue
    .line 1432
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoManager:Lcom/ironsource/mediationsdk/RewardedVideoManager;

    if-nez v1, :cond_0

    .line 1433
    sget-object v1, Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;->NOT_CAPPED:Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;

    .line 1441
    :goto_0
    return-object v1

    .line 1436
    :cond_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoManager:Lcom/ironsource/mediationsdk/RewardedVideoManager;

    invoke-virtual {v1, p1}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->getPlacementByName(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/Placement;

    move-result-object v0

    .line 1437
    .local v0, "placement":Lcom/ironsource/mediationsdk/model/Placement;
    if-nez v0, :cond_1

    .line 1438
    sget-object v1, Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;->NOT_CAPPED:Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;

    goto :goto_0

    .line 1441
    :cond_1
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/ironsource/mediationsdk/utils/CappingManager;->isPlacementCapped(Landroid/content/Context;Lcom/ironsource/mediationsdk/model/Placement;)Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;

    move-result-object v1

    goto :goto_0
.end method

.method private initializeEventsSettings(Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;Landroid/content/Context;)V
    .locals 5
    .param p1, "response"    # Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 1108
    const/4 v1, 0x0

    .line 1109
    .local v1, "isRVEventsEnabled":Z
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->isRewardedVideoConfigurationsReady()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1110
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->getRewardedVideoEventsConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationEvents;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->isEventsEnabled()Z

    move-result v1

    .line 1113
    :cond_0
    const/4 v0, 0x0

    .line 1114
    .local v0, "isISEventsEnabled":Z
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->isInterstitialConfigurationsReady()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1115
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/Configurations;->getInterstitialConfigurations()Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;->getInterstitialEventsConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationEvents;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->isEventsEnabled()Z

    move-result v0

    .line 1118
    :cond_1
    if-eqz v1, :cond_2

    .line 1119
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v2

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->getRewardedVideoEventsConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationEvents;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->getEventsType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->setFormatterType(Ljava/lang/String;Landroid/content/Context;)V

    .line 1120
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v2

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->getRewardedVideoEventsConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationEvents;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->getEventsURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->setEventsUrl(Ljava/lang/String;Landroid/content/Context;)V

    .line 1121
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v2

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->getRewardedVideoEventsConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationEvents;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->getMaxNumberOfEvents()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->setMaxNumberOfEvents(I)V

    .line 1122
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v2

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->getRewardedVideoEventsConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationEvents;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->getMaxEventsPerBatch()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->setMaxEventsPerBatch(I)V

    .line 1123
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v2

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->getRewardedVideoEventsConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationEvents;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->getEventsBackupThreshold()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->setBackupThreshold(I)V

    .line 1124
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v2

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->getRewardedVideoEventsConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationEvents;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->getOptOutEvents()[I

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->setOptOutEvents([ILandroid/content/Context;)V

    .line 1125
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v2

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/Configurations;->getApplicationConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;->getSegmetData()Lcom/ironsource/mediationsdk/model/ServerSegmetData;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->setServerSegmentData(Lcom/ironsource/mediationsdk/model/ServerSegmetData;)V

    .line 1129
    :goto_0
    if-eqz v0, :cond_3

    .line 1130
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v2

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/Configurations;->getInterstitialConfigurations()Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;->getInterstitialEventsConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationEvents;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->getEventsType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->setFormatterType(Ljava/lang/String;Landroid/content/Context;)V

    .line 1131
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v2

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/Configurations;->getInterstitialConfigurations()Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;->getInterstitialEventsConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationEvents;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->getEventsURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->setEventsUrl(Ljava/lang/String;Landroid/content/Context;)V

    .line 1132
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v2

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/Configurations;->getInterstitialConfigurations()Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;->getInterstitialEventsConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationEvents;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->getMaxNumberOfEvents()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->setMaxNumberOfEvents(I)V

    .line 1133
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v2

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/Configurations;->getInterstitialConfigurations()Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;->getInterstitialEventsConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationEvents;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->getMaxEventsPerBatch()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->setMaxEventsPerBatch(I)V

    .line 1134
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v2

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/Configurations;->getInterstitialConfigurations()Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;->getInterstitialEventsConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationEvents;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->getEventsBackupThreshold()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->setBackupThreshold(I)V

    .line 1135
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v2

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/Configurations;->getInterstitialConfigurations()Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;->getInterstitialEventsConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationEvents;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;->getOptOutEvents()[I

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->setOptOutEvents([ILandroid/content/Context;)V

    .line 1136
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v2

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/Configurations;->getApplicationConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;->getSegmetData()Lcom/ironsource/mediationsdk/model/ServerSegmetData;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->setServerSegmentData(Lcom/ironsource/mediationsdk/model/ServerSegmetData;)V

    .line 1139
    :goto_1
    return-void

    .line 1127
    :cond_2
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->setIsEventsEnabled(Z)V

    goto/16 :goto_0

    .line 1138
    :cond_3
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->setIsEventsEnabled(Z)V

    goto :goto_1
.end method

.method private initializeLoggerManager(Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;)V
    .locals 3
    .param p1, "response"    # Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    .prologue
    .line 1142
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mPublisherLogger:Lcom/ironsource/mediationsdk/logger/PublisherLogger;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/Configurations;->getApplicationConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;->getLoggerConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationLogger;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/ApplicationLogger;->getPublisherLoggerLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/PublisherLogger;->setDebugLevel(I)V

    .line 1143
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    const-string v1, "console"

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/Configurations;->getApplicationConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;->getLoggerConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationLogger;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/ApplicationLogger;->getConsoleLoggerLevel()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->setLoggerDebugLevel(Ljava/lang/String;I)V

    .line 1144
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    const-string v1, "server"

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/Configurations;->getApplicationConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;->getLoggerConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationLogger;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/ApplicationLogger;->getServerLoggerLevel()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->setLoggerDebugLevel(Ljava/lang/String;I)V

    .line 1145
    return-void
.end method

.method private initializeManagers()V
    .locals 3

    .prologue
    .line 348
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger(I)Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    .line 349
    new-instance v0, Lcom/ironsource/mediationsdk/logger/PublisherLogger;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/ironsource/mediationsdk/logger/PublisherLogger;-><init>(Lcom/ironsource/mediationsdk/logger/LogListener;I)V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mPublisherLogger:Lcom/ironsource/mediationsdk/logger/PublisherLogger;

    .line 350
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mPublisherLogger:Lcom/ironsource/mediationsdk/logger/PublisherLogger;

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->addLogger(Lcom/ironsource/mediationsdk/logger/IronSourceLogger;)V

    .line 352
    new-instance v0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    invoke-direct {v0}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    .line 354
    new-instance v0, Lcom/ironsource/mediationsdk/RewardedVideoManager;

    invoke-direct {v0}, Lcom/ironsource/mediationsdk/RewardedVideoManager;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoManager:Lcom/ironsource/mediationsdk/RewardedVideoManager;

    .line 355
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoManager:Lcom/ironsource/mediationsdk/RewardedVideoManager;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->setRewardedVideoListener(Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;)V

    .line 357
    new-instance v0, Lcom/ironsource/mediationsdk/InterstitialManager;

    invoke-direct {v0}, Lcom/ironsource/mediationsdk/InterstitialManager;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialManager:Lcom/ironsource/mediationsdk/InterstitialManager;

    .line 358
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialManager:Lcom/ironsource/mediationsdk/InterstitialManager;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/InterstitialManager;->setInterstitialListener(Lcom/ironsource/mediationsdk/sdk/InterstitialListener;)V

    .line 359
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialManager:Lcom/ironsource/mediationsdk/InterstitialManager;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/InterstitialManager;->setRewardedInterstitialListener(Lcom/ironsource/mediationsdk/sdk/RewardedInterstitialListener;)V

    .line 361
    new-instance v0, Lcom/ironsource/mediationsdk/OfferwallManager;

    invoke-direct {v0}, Lcom/ironsource/mediationsdk/OfferwallManager;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mOfferwallManager:Lcom/ironsource/mediationsdk/OfferwallManager;

    .line 362
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mOfferwallManager:Lcom/ironsource/mediationsdk/OfferwallManager;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/OfferwallManager;->setInternalOfferwallListener(Lcom/ironsource/mediationsdk/sdk/InternalOfferwallListener;)V

    .line 364
    new-instance v0, Lcom/ironsource/mediationsdk/BannerManager;

    invoke-direct {v0}, Lcom/ironsource/mediationsdk/BannerManager;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mBannerManager:Lcom/ironsource/mediationsdk/BannerManager;

    .line 365
    return-void
.end method

.method private initializeSettingsFromServerResponse(Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;Landroid/content/Context;)V
    .locals 0
    .param p1, "response"    # Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1103
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/IronSourceObject;->initializeLoggerManager(Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;)V

    .line 1104
    invoke-direct {p0, p1, p2}, Lcom/ironsource/mediationsdk/IronSourceObject;->initializeEventsSettings(Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;Landroid/content/Context;)V

    .line 1105
    return-void
.end method

.method private isBannerConfigurationsReady()Z
    .locals 1

    .prologue
    .line 916
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->currentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->currentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    .line 917
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->currentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    .line 918
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/Configurations;->getBannerConfigurations()Lcom/ironsource/mediationsdk/model/BannerConfigurations;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isInterstitialConfigurationsReady()Z
    .locals 1

    .prologue
    .line 706
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->currentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->currentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    .line 707
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->currentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    .line 708
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/Configurations;->getInterstitialConfigurations()Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isOfferwallConfigurationsReady()Z
    .locals 1

    .prologue
    .line 801
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->currentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->currentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    .line 802
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->currentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    .line 803
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/Configurations;->getOfferwallConfigurations()Lcom/ironsource/mediationsdk/model/OfferwallConfigurations;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRewardedVideoConfigurationsReady()Z
    .locals 1

    .prologue
    .line 576
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->currentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->currentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    .line 577
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->currentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    .line 578
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyPublisherAboutInitFailed(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Z)V
    .locals 3
    .param p1, "adUnit"    # Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;
    .param p2, "isInitFailed"    # Z

    .prologue
    const/4 v2, 0x0

    .line 246
    sget-object v0, Lcom/ironsource/mediationsdk/IronSourceObject$1;->$SwitchMap$com$ironsource$mediationsdk$IronSource$AD_UNIT:[I

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 262
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 248
    :pswitch_1
    if-nez p2, :cond_1

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->isRewardedVideoConfigurationsReady()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRequestedAdUnits:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    :cond_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    invoke-virtual {v0, v2}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onRewardedVideoAvailabilityChanged(Z)V

    goto :goto_0

    .line 255
    :pswitch_2
    if-nez p2, :cond_2

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->isOfferwallConfigurationsReady()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRequestedAdUnits:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    :cond_2
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    invoke-virtual {v0, v2}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onOfferwallAvailable(Z)V

    goto :goto_0

    .line 246
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private prepareEventManagers(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 271
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mEventManagersInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mEventManagersInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    invoke-static {}, Lcom/ironsource/mediationsdk/events/SuperLooper;->getLooper()Lcom/ironsource/mediationsdk/events/SuperLooper;

    move-result-object v0

    new-instance v1, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/events/SuperLooper;->post(Ljava/lang/Runnable;)V

    .line 275
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIronSegment:Lcom/ironsource/mediationsdk/IronSourceSegment;

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->start(Landroid/content/Context;Lcom/ironsource/mediationsdk/IronSourceSegment;)V

    .line 276
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIronSegment:Lcom/ironsource/mediationsdk/IronSourceSegment;

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->start(Landroid/content/Context;Lcom/ironsource/mediationsdk/IronSourceSegment;)V

    .line 279
    :cond_0
    return-void
.end method

.method private sendIsCappedEvent(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "adUnit"    # Ljava/lang/String;
    .param p2, "isCapped"    # Z

    .prologue
    .line 1459
    if-nez p2, :cond_1

    .line 1483
    :cond_0
    :goto_0
    return-void

    .line 1466
    :cond_1
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData()Lorg/json/JSONObject;

    move-result-object v0

    .line 1468
    .local v0, "data":Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "reason"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1473
    :goto_1
    const-string v3, "Interstitial"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1474
    new-instance v2, Lcom/ironsource/eventsmodule/EventData;

    const/16 v3, 0x22

    invoke-direct {v2, v3, v0}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 1475
    .local v2, "event":Lcom/ironsource/eventsmodule/EventData;
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    goto :goto_0

    .line 1469
    .end local v2    # "event":Lcom/ironsource/eventsmodule/EventData;
    :catch_0
    move-exception v1

    .line 1470
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 1476
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_2
    const-string v3, "Rewarded Video"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1477
    new-instance v2, Lcom/ironsource/eventsmodule/EventData;

    const/16 v3, 0x14

    invoke-direct {v2, v3, v0}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 1478
    .restart local v2    # "event":Lcom/ironsource/eventsmodule/EventData;
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    goto :goto_0

    .line 1479
    .end local v2    # "event":Lcom/ironsource/eventsmodule/EventData;
    :cond_3
    const-string v3, "Banner"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1480
    new-instance v2, Lcom/ironsource/eventsmodule/EventData;

    const/16 v3, 0x19e

    invoke-direct {v2, v3, v0}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 1481
    .restart local v2    # "event":Lcom/ironsource/eventsmodule/EventData;
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    goto :goto_0
.end method

.method private validateAge(ILcom/ironsource/mediationsdk/config/ConfigValidationResult;)V
    .locals 4
    .param p1, "age"    # I
    .param p2, "result"    # Lcom/ironsource/mediationsdk/config/ConfigValidationResult;

    .prologue
    .line 1246
    const/4 v1, 0x5

    if-lt p1, v1, :cond_0

    const/16 v1, 0x78

    if-le p1, v1, :cond_1

    .line 1247
    :cond_0
    :try_start_0
    const-string v1, "age"

    const-string v2, "SupersonicAds"

    const-string v3, "age value should be between 5-120"

    invoke-static {v1, v2, v3}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1252
    :cond_1
    :goto_0
    return-void

    .line 1249
    :catch_0
    move-exception v0

    .line 1250
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v1, "age"

    const-string v2, "SupersonicAds"

    const-string v3, "age value should be between 5-120"

    invoke-static {v1, v2, v3}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_0
.end method

.method private validateAlphanumeric(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1275
    if-nez p1, :cond_0

    .line 1276
    const/4 v1, 0x0

    .line 1279
    :goto_0
    return v1

    .line 1278
    :cond_0
    const-string v0, "^[a-zA-Z0-9]*$"

    .line 1279
    .local v0, "pattern":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method private validateAppKey(Ljava/lang/String;)Lcom/ironsource/mediationsdk/config/ConfigValidationResult;
    .locals 4
    .param p1, "appKey"    # Ljava/lang/String;

    .prologue
    .line 1203
    new-instance v1, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;

    invoke-direct {v1}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;-><init>()V

    .line 1206
    .local v1, "result":Lcom/ironsource/mediationsdk/config/ConfigValidationResult;
    if-eqz p1, :cond_2

    .line 1207
    const/4 v2, 0x5

    const/16 v3, 0xa

    invoke-direct {p0, p1, v2, v3}, Lcom/ironsource/mediationsdk/IronSourceObject;->validateLength(Ljava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1208
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/IronSourceObject;->validateAlphanumeric(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1209
    const-string v2, "appKey"

    const-string v3, "should contain only english characters and numbers"

    invoke-static {v2, p1, v3}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInvalidCredentialsError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    .line 1211
    .local v0, "error":Lcom/ironsource/mediationsdk/logger/IronSourceError;
    invoke-virtual {v1, v0}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 1223
    .end local v0    # "error":Lcom/ironsource/mediationsdk/logger/IronSourceError;
    :cond_0
    :goto_0
    return-object v1

    .line 1214
    :cond_1
    const-string v2, "appKey"

    const-string v3, "length should be between 5-10 characters"

    invoke-static {v2, p1, v3}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInvalidCredentialsError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    .line 1216
    .restart local v0    # "error":Lcom/ironsource/mediationsdk/logger/IronSourceError;
    invoke-virtual {v1, v0}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_0

    .line 1219
    .end local v0    # "error":Lcom/ironsource/mediationsdk/logger/IronSourceError;
    :cond_2
    new-instance v0, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v2, 0x1fa

    const-string v3, "Init Fail - appKey is missing"

    invoke-direct {v0, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    .line 1220
    .restart local v0    # "error":Lcom/ironsource/mediationsdk/logger/IronSourceError;
    invoke-virtual {v1, v0}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_0
.end method

.method private validateDynamicUserId(Ljava/lang/String;Lcom/ironsource/mediationsdk/config/ConfigValidationResult;)V
    .locals 3
    .param p1, "dynamicUserId"    # Ljava/lang/String;
    .param p2, "result"    # Lcom/ironsource/mediationsdk/config/ConfigValidationResult;

    .prologue
    .line 1266
    const/4 v0, 0x1

    const/16 v1, 0x40

    invoke-direct {p0, p1, v0, v1}, Lcom/ironsource/mediationsdk/IronSourceObject;->validateLength(Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/IronSourceObject;->validateAlphanumeric(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1267
    :cond_0
    const-string v0, "dynamicUserId"

    const-string v1, "SupersonicAds"

    const-string v2, "dynamicUserId is invalid, should be alphanumeric and between 1-64 chars in length."

    invoke-static {v0, v1, v2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 1268
    :cond_1
    return-void
.end method

.method private validateGender(Ljava/lang/String;Lcom/ironsource/mediationsdk/config/ConfigValidationResult;)V
    .locals 4
    .param p1, "gender"    # Ljava/lang/String;
    .param p2, "result"    # Lcom/ironsource/mediationsdk/config/ConfigValidationResult;

    .prologue
    .line 1228
    if-eqz p1, :cond_0

    .line 1229
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 1231
    const-string v1, "male"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "female"

    .line 1232
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "unknown"

    .line 1233
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1234
    const-string v1, "gender"

    const-string v2, "SupersonicAds"

    const-string v3, "gender value should be one of male/female/unknown."

    invoke-static {v1, v2, v3}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1239
    :cond_0
    :goto_0
    return-void

    .line 1236
    :catch_0
    move-exception v0

    .line 1237
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "gender"

    const-string v2, "SupersonicAds"

    const-string v3, "gender value should be one of male/female/unknown."

    invoke-static {v1, v2, v3}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_0
.end method

.method private validateLength(Ljava/lang/String;II)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "minLength"    # I
    .param p3, "maxLength"    # I

    .prologue
    .line 1271
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private validateSegment(Ljava/lang/String;Lcom/ironsource/mediationsdk/config/ConfigValidationResult;)V
    .locals 4
    .param p1, "segment"    # Ljava/lang/String;
    .param p2, "result"    # Lcom/ironsource/mediationsdk/config/ConfigValidationResult;

    .prologue
    .line 1256
    if-eqz p1, :cond_0

    .line 1257
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x40

    if-le v1, v2, :cond_0

    .line 1258
    const-string v1, "segment"

    const-string v2, "SupersonicAds"

    const-string v3, "segment value should not exceed 64 characters."

    invoke-static {v1, v2, v3}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1263
    :cond_0
    :goto_0
    return-void

    .line 1260
    :catch_0
    move-exception v0

    .line 1261
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "segment"

    const-string v2, "SupersonicAds"

    const-string v3, "segment value should not exceed 64 characters."

    invoke-static {v1, v2, v3}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized addToBannerAdaptersList(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/ironsource/mediationsdk/AbstractAdapter;

    .prologue
    .line 297
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mBannerAdaptersList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mBannerAdaptersList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mBannerAdaptersList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    :cond_0
    monitor-exit p0

    return-void

    .line 297
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addToISAdaptersList(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/ironsource/mediationsdk/AbstractAdapter;

    .prologue
    .line 292
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialAdaptersList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialAdaptersList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialAdaptersList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    :cond_0
    monitor-exit p0

    return-void

    .line 292
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addToRVAdaptersList(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/ironsource/mediationsdk/AbstractAdapter;

    .prologue
    .line 287
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoAdaptersList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoAdaptersList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoAdaptersList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
    :cond_0
    monitor-exit p0

    return-void

    .line 287
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public createBanner(Landroid/app/Activity;Lcom/ironsource/mediationsdk/EBannerSize;)Lcom/ironsource/mediationsdk/IronSourceBannerLayout;
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "size"    # Lcom/ironsource/mediationsdk/EBannerSize;

    .prologue
    .line 924
    const-string v0, "createBanner()"

    .line 925
    .local v0, "logMessage":Ljava/lang/String;
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 926
    if-nez p1, :cond_0

    .line 927
    const-string v0, "createBanner() : Activity cannot be null"

    .line 928
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v0, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 929
    const/4 v1, 0x0

    .line 931
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mBannerManager:Lcom/ironsource/mediationsdk/BannerManager;

    invoke-virtual {v1, p1, p2}, Lcom/ironsource/mediationsdk/BannerManager;->createBanner(Landroid/app/Activity;Lcom/ironsource/mediationsdk/EBannerSize;)Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    move-result-object v1

    goto :goto_0
.end method

.method public destroyBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)V
    .locals 5
    .param p1, "banner"    # Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    .prologue
    .line 961
    const-string v1, "destroyBanner()"

    .line 962
    .local v1, "logMessage":Ljava/lang/String;
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 965
    :try_start_0
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mBannerManager:Lcom/ironsource/mediationsdk/BannerManager;

    invoke-virtual {v2, p1}, Lcom/ironsource/mediationsdk/BannerManager;->destroyBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 969
    :goto_0
    return-void

    .line 966
    :catch_0
    move-exception v0

    .line 967
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v2, v3, v1, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getAdvertiserId(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1309
    :try_start_0
    invoke-static {p1}, Lcom/ironsource/environment/DeviceStatus;->getAdvertisingIdInfo(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 1310
    .local v0, "deviceInfo":[Ljava/lang/String;
    array-length v2, v0

    if-lez v2, :cond_0

    const/4 v2, 0x0

    aget-object v2, v0, v2

    if-eqz v2, :cond_0

    .line 1311
    const/4 v2, 0x0

    aget-object v2, v0, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1316
    .end local v0    # "deviceInfo":[Ljava/lang/String;
    :goto_0
    return-object v2

    .line 1312
    :catch_0
    move-exception v1

    .line 1313
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, ""

    goto :goto_0

    .line 1316
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "deviceInfo":[Ljava/lang/String;
    :cond_0
    const-string v2, ""

    goto :goto_0
.end method

.method public declared-synchronized getAge()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 539
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mUserAge:Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getBannerCappingStatus(Ljava/lang/String;)Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;
    .locals 3
    .param p1, "placementName"    # Ljava/lang/String;

    .prologue
    .line 1445
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mBannerManager:Lcom/ironsource/mediationsdk/BannerManager;

    if-nez v2, :cond_0

    .line 1446
    sget-object v0, Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;->NOT_CAPPED:Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;

    .line 1455
    :goto_0
    return-object v0

    .line 1449
    :cond_0
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mBannerManager:Lcom/ironsource/mediationsdk/BannerManager;

    invoke-virtual {v2, p1}, Lcom/ironsource/mediationsdk/BannerManager;->getPlacementByName(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/BannerPlacement;

    move-result-object v1

    .line 1450
    .local v1, "placement":Lcom/ironsource/mediationsdk/model/BannerPlacement;
    if-nez v1, :cond_1

    .line 1451
    sget-object v0, Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;->NOT_CAPPED:Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;

    goto :goto_0

    .line 1454
    :cond_1
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mActivity:Landroid/app/Activity;

    invoke-static {v2, v1}, Lcom/ironsource/mediationsdk/utils/CappingManager;->isPlacementCapped(Landroid/content/Context;Lcom/ironsource/mediationsdk/model/BannerPlacement;)Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;

    move-result-object v0

    .line 1455
    .local v0, "cappingStatus":Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;
    goto :goto_0
.end method

.method public getCappingMessage(Ljava/lang/String;Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;)Ljava/lang/String;
    .locals 3
    .param p1, "placementName"    # Ljava/lang/String;
    .param p2, "cappingStatus"    # Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;

    .prologue
    const/4 v0, 0x0

    .line 1486
    if-nez p2, :cond_0

    .line 1498
    :goto_0
    return-object v0

    .line 1489
    :cond_0
    sget-object v1, Lcom/ironsource/mediationsdk/IronSourceObject$1;->$SwitchMap$com$ironsource$mediationsdk$utils$CappingManager$ECappingStatus:[I

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1491
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Placement "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is capped by disabled delivery"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1493
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Placement "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " has reached its capping limit"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1495
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Placement "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " has reached its limit as defined per pace"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1489
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getCurrentServerResponse()Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;
    .locals 1

    .prologue
    .line 1503
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->currentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    return-object v0
.end method

.method public declared-synchronized getDynamicUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 551
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDynamicUserId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getExistingAdapter(Ljava/lang/String;)Lcom/ironsource/mediationsdk/AbstractAdapter;
    .locals 6
    .param p1, "providerName"    # Ljava/lang/String;

    .prologue
    .line 315
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoAdaptersList:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 316
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoAdaptersList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/AbstractAdapter;

    .line 317
    .local v0, "adapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    .line 339
    .end local v0    # "adapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    :goto_0
    monitor-exit p0

    return-object v0

    .line 322
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialAdaptersList:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    .line 323
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialAdaptersList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/AbstractAdapter;

    .line 324
    .restart local v0    # "adapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 329
    .end local v0    # "adapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    :cond_3
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mBannerAdaptersList:Ljava/util/ArrayList;

    if-eqz v2, :cond_5

    .line 330
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mBannerAdaptersList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/AbstractAdapter;

    .line 331
    .restart local v0    # "adapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_0

    .line 336
    .end local v0    # "adapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    :catch_0
    move-exception v1

    .line 337
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getExistingAdapter exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 339
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_5
    const/4 v0, 0x0

    goto :goto_0

    .line 315
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getGender()Ljava/lang/String;
    .locals 1

    .prologue
    .line 543
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mUserGender:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getInterstitialPlacementInfo(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/InterstitialPlacement;
    .locals 5
    .param p1, "placementName"    # Ljava/lang/String;

    .prologue
    .line 1284
    const/4 v0, 0x0

    .line 1286
    .local v0, "result":Lcom/ironsource/mediationsdk/model/InterstitialPlacement;
    :try_start_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->currentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/Configurations;->getInterstitialConfigurations()Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;->getInterstitialPlacement(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/InterstitialPlacement;

    move-result-object v0

    .line 1287
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPlacementInfo(placement: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "):"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1291
    :goto_0
    return-object v0

    .line 1288
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public declared-synchronized getIronSourceAppKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1189
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mAppKey:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getIronSourceUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1198
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mUserId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMediationSegment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 547
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mSegment:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMediationType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 555
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mMediationType:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getOfferwallCredits()V
    .locals 5

    .prologue
    .line 876
    const-string v1, "getOfferwallCredits()"

    .line 877
    .local v1, "logMessage":Ljava/lang/String;
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 880
    :try_start_0
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mOfferwallManager:Lcom/ironsource/mediationsdk/OfferwallManager;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/OfferwallManager;->getOfferwallCredits()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 884
    :goto_0
    return-void

    .line 881
    :catch_0
    move-exception v0

    .line 882
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v2, v3, v1, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getRewardedVideoPlacementInfo(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/Placement;
    .locals 5
    .param p1, "placementName"    # Ljava/lang/String;

    .prologue
    .line 1296
    const/4 v0, 0x0

    .line 1298
    .local v0, "result":Lcom/ironsource/mediationsdk/model/Placement;
    :try_start_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->currentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->getRewardedVideoPlacement(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/Placement;

    move-result-object v0

    .line 1299
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPlacementInfo(placement: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "):"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1303
    :goto_0
    return-object v0

    .line 1300
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getServerResponse(Landroid/content/Context;Ljava/lang/String;)Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # Ljava/lang/String;

    .prologue
    .line 976
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getServerResponse(Landroid/content/Context;Ljava/lang/String;Lcom/ironsource/mediationsdk/IronSourceObject$IResponseListener;)Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    move-result-object v0

    return-object v0
.end method

.method public getServerResponse(Landroid/content/Context;Ljava/lang/String;Lcom/ironsource/mediationsdk/IronSourceObject$IResponseListener;)Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/ironsource/mediationsdk/IronSourceObject$IResponseListener;

    .prologue
    .line 982
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->serverResponseLocker:Ljava/lang/Object;

    monitor-enter v2

    .line 984
    :try_start_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->currentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    if-eqz v1, :cond_0

    .line 985
    new-instance v0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->currentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-direct {v0, v1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;-><init>(Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;)V

    monitor-exit v2

    .line 1014
    :goto_0
    return-object v0

    .line 991
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/ironsource/mediationsdk/IronSourceObject;->connectAndGetServerResponse(Landroid/content/Context;Ljava/lang/String;Lcom/ironsource/mediationsdk/IronSourceObject$IResponseListener;)Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    move-result-object v0

    .line 994
    .local v0, "response":Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->isValidResponse()Z

    move-result v1

    if-nez v1, :cond_2

    .line 997
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/ironsource/mediationsdk/IronSourceObject;->getCachedResponse(Landroid/content/Context;Ljava/lang/String;)Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    move-result-object v0

    .line 1003
    :cond_2
    if-eqz v0, :cond_3

    .line 1004
    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->currentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    .line 1005
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->saveLastResponse(Landroid/content/Context;Ljava/lang/String;)V

    .line 1006
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->currentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-direct {p0, v1, p1}, Lcom/ironsource/mediationsdk/IronSourceObject;->initializeSettingsFromServerResponse(Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;Landroid/content/Context;)V

    .line 1010
    :cond_3
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->setHasServerResponse(Z)V

    .line 1011
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->setHasServerResponse(Z)V

    .line 1012
    monitor-exit v2

    goto :goto_0

    .end local v0    # "response":Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public varargs declared-synchronized init(Landroid/app/Activity;Ljava/lang/String;[Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V
    .locals 10
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "adUnits"    # [Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    .prologue
    const/4 v5, 0x0

    .line 116
    monitor-enter p0

    if-eqz p3, :cond_0

    :try_start_0
    array-length v6, p3

    if-nez v6, :cond_1

    .line 118
    :cond_0
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->values()[Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object v7

    array-length v8, v7

    move v6, v5

    :goto_0
    if-ge v6, v8, :cond_2

    aget-object v0, v7, v6

    .line 119
    .local v0, "adUnit":Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;
    iget-object v9, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mAdUnitsToInitialize:Ljava/util/Set;

    invoke-interface {v9, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 118
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 122
    .end local v0    # "adUnit":Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;
    :cond_1
    array-length v7, p3

    move v6, v5

    :goto_1
    if-ge v6, v7, :cond_2

    aget-object v0, p3, v6

    .line 123
    .restart local v0    # "adUnit":Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;
    iget-object v8, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mAdUnitsToInitialize:Ljava/util/Set;

    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 124
    iget-object v8, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRequestedAdUnits:Ljava/util/Set;

    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 122
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 128
    .end local v0    # "adUnit":Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;
    :cond_2
    iget-object v6, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v7, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "init(appKey:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v6, v7, v8, v9}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 130
    if-nez p1, :cond_3

    .line 131
    iget-object v5, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v6, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v7, "Init Fail - provided activity is null"

    const/4 v8, 0x2

    invoke-virtual {v5, v6, v7, v8}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    :goto_2
    monitor-exit p0

    return-void

    .line 135
    :cond_3
    :try_start_1
    iput-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mActivity:Landroid/app/Activity;

    .line 136
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/IronSourceObject;->prepareEventManagers(Landroid/app/Activity;)V

    .line 139
    invoke-direct {p0, p2}, Lcom/ironsource/mediationsdk/IronSourceObject;->validateAppKey(Ljava/lang/String;)Lcom/ironsource/mediationsdk/config/ConfigValidationResult;

    move-result-object v4

    .line 140
    .local v4, "validationResultAppKey":Lcom/ironsource/mediationsdk/config/ConfigValidationResult;
    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->isValid()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 141
    invoke-virtual {p0, p2}, Lcom/ironsource/mediationsdk/IronSourceObject;->setIronSourceAppKey(Ljava/lang/String;)V

    .line 153
    iget-boolean v6, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mShouldSendGetInstanceEvent:Z

    if-eqz v6, :cond_8

    .line 154
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData()Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 156
    .local v1, "data":Lorg/json/JSONObject;
    if-eqz p3, :cond_7

    .line 157
    :try_start_2
    array-length v6, p3

    :goto_3
    if-ge v5, v6, :cond_7

    aget-object v0, p3, v5

    .line 158
    .restart local v0    # "adUnit":Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 157
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 143
    .end local v0    # "adUnit":Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;
    .end local v1    # "data":Lorg/json/JSONObject;
    :cond_4
    :try_start_3
    iget-object v5, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mAdUnitsToInitialize:Ljava/util/Set;

    sget-object v6, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 144
    iget-object v5, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onRewardedVideoAvailabilityChanged(Z)V

    .line 145
    :cond_5
    iget-object v5, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mAdUnitsToInitialize:Ljava/util/Set;

    sget-object v6, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->OFFERWALL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 146
    iget-object v5, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    const/4 v6, 0x0

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->getIronSourceError()Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onOfferwallAvailable(ZLcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 148
    :cond_6
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v5

    sget-object v6, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->getIronSourceError()Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v5, v6, v7, v8}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 116
    .end local v4    # "validationResultAppKey":Lcom/ironsource/mediationsdk/config/ConfigValidationResult;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 161
    .restart local v1    # "data":Lorg/json/JSONObject;
    .restart local v4    # "validationResultAppKey":Lcom/ironsource/mediationsdk/config/ConfigValidationResult;
    :catch_0
    move-exception v2

    .line 162
    .local v2, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 164
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_7
    new-instance v3, Lcom/ironsource/eventsmodule/EventData;

    const/16 v5, 0xe

    invoke-direct {v3, v5, v1}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 165
    .local v3, "instanceEvent":Lcom/ironsource/eventsmodule/EventData;
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    .line 166
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mShouldSendGetInstanceEvent:Z

    .line 169
    .end local v1    # "data":Lorg/json/JSONObject;
    .end local v3    # "instanceEvent":Lcom/ironsource/eventsmodule/EventData;
    :cond_8
    iget-object v5, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mAdUnitsToInitialize:Ljava/util/Set;

    sget-object v6, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 170
    invoke-static {}, Lcom/ironsource/mediationsdk/MediationInitializer;->getInstance()Lcom/ironsource/mediationsdk/MediationInitializer;

    move-result-object v5

    iget-object v6, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialManager:Lcom/ironsource/mediationsdk/InterstitialManager;

    invoke-virtual {v5, v6}, Lcom/ironsource/mediationsdk/MediationInitializer;->addMediationInitializationListener(Lcom/ironsource/mediationsdk/MediationInitializer$OnMediationInitializationListener;)V

    .line 173
    :cond_9
    invoke-static {}, Lcom/ironsource/mediationsdk/MediationInitializer;->getInstance()Lcom/ironsource/mediationsdk/MediationInitializer;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/ironsource/mediationsdk/MediationInitializer;->addMediationInitializationListener(Lcom/ironsource/mediationsdk/MediationInitializer$OnMediationInitializationListener;)V

    .line 174
    invoke-static {}, Lcom/ironsource/mediationsdk/MediationInitializer;->getInstance()Lcom/ironsource/mediationsdk/MediationInitializer;

    move-result-object v5

    iget-object v6, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mUserId:Ljava/lang/String;

    invoke-virtual {v5, p1, p2, v6, p3}, Lcom/ironsource/mediationsdk/MediationInitializer;->init(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_2
.end method

.method public initInterstitial(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "userId"    # Ljava/lang/String;

    .prologue
    .line 566
    return-void
.end method

.method public initOfferwall(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "userId"    # Ljava/lang/String;

    .prologue
    .line 571
    return-void
.end method

.method public initRewardedVideo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "userId"    # Ljava/lang/String;

    .prologue
    .line 561
    return-void
.end method

.method public declared-synchronized isBNAdapterInList(Lcom/ironsource/mediationsdk/AbstractAdapter;)Z
    .locals 1
    .param p1, "adapter"    # Lcom/ironsource/mediationsdk/AbstractAdapter;

    .prologue
    .line 310
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mBannerAdaptersList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mBannerAdaptersList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isBannerPlacementCapped(Ljava/lang/String;)Z
    .locals 4
    .param p1, "placementName"    # Ljava/lang/String;

    .prologue
    .line 1400
    const/4 v1, 0x0

    .line 1401
    .local v1, "isCapped":Z
    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/IronSourceObject;->getBannerCappingStatus(Ljava/lang/String;)Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;

    move-result-object v0

    .line 1402
    .local v0, "cappingStatus":Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;
    if-eqz v0, :cond_0

    .line 1403
    sget-object v2, Lcom/ironsource/mediationsdk/IronSourceObject$1;->$SwitchMap$com$ironsource$mediationsdk$utils$CappingManager$ECappingStatus:[I

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1414
    :cond_0
    :goto_0
    const-string v2, "Banner"

    invoke-direct {p0, v2, v1}, Lcom/ironsource/mediationsdk/IronSourceObject;->sendIsCappedEvent(Ljava/lang/String;Z)V

    .line 1415
    return v1

    .line 1407
    :pswitch_0
    const/4 v1, 0x1

    .line 1408
    goto :goto_0

    .line 1403
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized isISAdapterInList(Lcom/ironsource/mediationsdk/AbstractAdapter;)Z
    .locals 1
    .param p1, "adapter"    # Lcom/ironsource/mediationsdk/AbstractAdapter;

    .prologue
    .line 306
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialAdaptersList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialAdaptersList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isInterstitialPlacementCapped(Ljava/lang/String;)Z
    .locals 4
    .param p1, "placementName"    # Ljava/lang/String;

    .prologue
    .line 1360
    const/4 v1, 0x0

    .line 1361
    .local v1, "isCapped":Z
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInterstitialCappingStatus(Ljava/lang/String;)Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;

    move-result-object v0

    .line 1362
    .local v0, "cappingStatus":Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;
    if-eqz v0, :cond_0

    .line 1363
    sget-object v2, Lcom/ironsource/mediationsdk/IronSourceObject$1;->$SwitchMap$com$ironsource$mediationsdk$utils$CappingManager$ECappingStatus:[I

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1374
    :cond_0
    :goto_0
    const-string v2, "Interstitial"

    invoke-direct {p0, v2, v1}, Lcom/ironsource/mediationsdk/IronSourceObject;->sendIsCappedEvent(Ljava/lang/String;Z)V

    .line 1375
    return v1

    .line 1367
    :pswitch_0
    const/4 v1, 0x1

    .line 1368
    goto :goto_0

    .line 1363
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isInterstitialReady()Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 1334
    const/4 v3, 0x0

    .line 1336
    .local v3, "isAvailable":Z
    :try_start_0
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialManager:Lcom/ironsource/mediationsdk/InterstitialManager;

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/InterstitialManager;->isInterstitialReady()Z

    move-result v3

    .line 1338
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData()Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 1340
    .local v0, "data":Lorg/json/JSONObject;
    :try_start_1
    const-string v4, "status"

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 1345
    :goto_0
    :try_start_2
    new-instance v2, Lcom/ironsource/eventsmodule/EventData;

    const/16 v4, 0x1e

    invoke-direct {v2, v4, v0}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 1346
    .local v2, "event":Lcom/ironsource/eventsmodule/EventData;
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    .line 1348
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v5, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isInterstitialReady():"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1355
    .end local v0    # "data":Lorg/json/JSONObject;
    .end local v2    # "event":Lcom/ironsource/eventsmodule/EventData;
    :goto_1
    return v3

    .line 1341
    .restart local v0    # "data":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 1342
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1349
    .end local v0    # "data":Lorg/json/JSONObject;
    .end local v1    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v1

    .line 1351
    .local v1, "e":Ljava/lang/Throwable;
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v5, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isInterstitialReady():"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v8}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1352
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v5, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v6, "isInterstitialReady()"

    invoke-virtual {v4, v5, v6, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1353
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public isOfferwallAvailable()Z
    .locals 3

    .prologue
    .line 862
    const/4 v1, 0x0

    .line 865
    .local v1, "result":Z
    :try_start_0
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mOfferwallManager:Lcom/ironsource/mediationsdk/OfferwallManager;

    if-eqz v2, :cond_0

    .line 866
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mOfferwallManager:Lcom/ironsource/mediationsdk/OfferwallManager;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/OfferwallManager;->isOfferwallAvailable()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 871
    :cond_0
    :goto_0
    return v1

    .line 867
    :catch_0
    move-exception v0

    .line 868
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public declared-synchronized isRVAdapterInList(Lcom/ironsource/mediationsdk/AbstractAdapter;)Z
    .locals 1
    .param p1, "adapter"    # Lcom/ironsource/mediationsdk/AbstractAdapter;

    .prologue
    .line 302
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoAdaptersList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoAdaptersList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isRewardedVideoAvailable()Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 656
    const/4 v3, 0x0

    .line 658
    .local v3, "isAvailable":Z
    :try_start_0
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoManager:Lcom/ironsource/mediationsdk/RewardedVideoManager;

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->isRewardedVideoAvailable()Z

    move-result v3

    .line 660
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData()Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 662
    .local v0, "data":Lorg/json/JSONObject;
    :try_start_1
    const-string v4, "status"

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 667
    :goto_0
    :try_start_2
    new-instance v2, Lcom/ironsource/eventsmodule/EventData;

    const/16 v4, 0x12

    invoke-direct {v2, v4, v0}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 668
    .local v2, "event":Lcom/ironsource/eventsmodule/EventData;
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    .line 670
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v5, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isRewardedVideoAvailable():"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 677
    .end local v0    # "data":Lorg/json/JSONObject;
    .end local v2    # "event":Lcom/ironsource/eventsmodule/EventData;
    :goto_1
    return v3

    .line 663
    .restart local v0    # "data":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 664
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 671
    .end local v0    # "data":Lorg/json/JSONObject;
    .end local v1    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v1

    .line 673
    .local v1, "e":Ljava/lang/Throwable;
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v5, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isRewardedVideoAvailable():"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v8}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 674
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v5, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v6, "isRewardedVideoAvailable()"

    invoke-virtual {v4, v5, v6, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 675
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public isRewardedVideoPlacementCapped(Ljava/lang/String;)Z
    .locals 4
    .param p1, "placementName"    # Ljava/lang/String;

    .prologue
    .line 1380
    const/4 v1, 0x0

    .line 1381
    .local v1, "isCapped":Z
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/IronSourceObject;->getRewardedVideoCappingStatus(Ljava/lang/String;)Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;

    move-result-object v0

    .line 1382
    .local v0, "cappingStatus":Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;
    if-eqz v0, :cond_0

    .line 1383
    sget-object v2, Lcom/ironsource/mediationsdk/IronSourceObject$1;->$SwitchMap$com$ironsource$mediationsdk$utils$CappingManager$ECappingStatus:[I

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1394
    :cond_0
    :goto_0
    const-string v2, "Rewarded Video"

    invoke-direct {p0, v2, v1}, Lcom/ironsource/mediationsdk/IronSourceObject;->sendIsCappedEvent(Ljava/lang/String;Z)V

    .line 1395
    return v1

    .line 1387
    :pswitch_0
    const/4 v1, 0x1

    .line 1388
    goto :goto_0

    .line 1383
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public loadBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)V
    .locals 5
    .param p1, "banner"    # Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    .prologue
    const/4 v4, 0x1

    .line 948
    const-string v0, "loadBanner()"

    .line 949
    .local v0, "logMessage":Ljava/lang/String;
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v1, v2, v0, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 951
    if-nez p1, :cond_0

    .line 952
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v3, "loadBanner can\'t be called with a null parameter"

    invoke-virtual {v1, v2, v3, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 957
    :goto_0
    return-void

    .line 956
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/ironsource/mediationsdk/IronSourceObject;->loadBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public loadBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Ljava/lang/String;)V
    .locals 5
    .param p1, "banner"    # Lcom/ironsource/mediationsdk/IronSourceBannerLayout;
    .param p2, "placementName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 936
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadBanner("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 937
    .local v0, "logMessage":Ljava/lang/String;
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v1, v2, v0, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 939
    if-nez p1, :cond_0

    .line 940
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v3, "loadBanner can\'t be called with a null parameter"

    invoke-virtual {v1, v2, v3, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 944
    :goto_0
    return-void

    .line 943
    :cond_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mBannerManager:Lcom/ironsource/mediationsdk/BannerManager;

    invoke-virtual {v1, p1, p2}, Lcom/ironsource/mediationsdk/BannerManager;->loadBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public loadInterstitial()V
    .locals 5

    .prologue
    .line 695
    const-string v1, "loadInterstitial()"

    .line 696
    .local v1, "logMessage":Ljava/lang/String;
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 699
    :try_start_0
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialManager:Lcom/ironsource/mediationsdk/InterstitialManager;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/InterstitialManager;->loadInterstitial()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 703
    :goto_0
    return-void

    .line 700
    :catch_0
    move-exception v0

    .line 701
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v2, v3, v1, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onInitFailed(Ljava/lang/String;)V
    .locals 6
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 233
    :try_start_0
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onInitFailed(reason:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 235
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    if-eqz v2, :cond_0

    .line 236
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mAdUnitsToInitialize:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    .line 237
    .local v0, "adUnit":Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;
    const/4 v3, 0x1

    invoke-direct {p0, v0, v3}, Lcom/ironsource/mediationsdk/IronSourceObject;->notifyPublisherAboutInitFailed(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 240
    .end local v0    # "adUnit":Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;
    :catch_0
    move-exception v1

    .line 241
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 243
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method public onInitSuccess(Ljava/util/List;Z)V
    .locals 11
    .param p2, "revived"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p1, "adUnits":Ljava/util/List;, "Ljava/util/List<Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;>;"
    const/4 v4, 0x0

    .line 180
    :try_start_0
    iget-object v5, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v6, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v7, "onInitSuccess()"

    const/4 v8, 0x1

    invoke-virtual {v5, v6, v7, v8}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 183
    if-eqz p2, :cond_0

    .line 184
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData()Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 186
    .local v1, "data":Lorg/json/JSONObject;
    :try_start_1
    const-string v5, "revived"

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 190
    :goto_0
    :try_start_2
    new-instance v3, Lcom/ironsource/eventsmodule/EventData;

    const/16 v5, 0x72

    invoke-direct {v3, v5, v1}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 191
    .local v3, "revivedEvent":Lcom/ironsource/eventsmodule/EventData;
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    .line 195
    .end local v1    # "data":Lorg/json/JSONObject;
    .end local v3    # "revivedEvent":Lcom/ironsource/eventsmodule/EventData;
    :cond_0
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->triggerEventsSend()V

    .line 196
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->triggerEventsSend()V

    .line 199
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->values()[Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object v5

    array-length v6, v5

    :goto_1
    if-ge v4, v6, :cond_2

    aget-object v0, v5, v4

    .line 201
    .local v0, "adUnit":Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;
    iget-object v7, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mAdUnitsToInitialize:Ljava/util/Set;

    invoke-interface {v7, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 203
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 205
    sget-object v7, Lcom/ironsource/mediationsdk/IronSourceObject$1;->$SwitchMap$com$ironsource$mediationsdk$IronSource$AD_UNIT:[I

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 199
    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 187
    .end local v0    # "adUnit":Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;
    .restart local v1    # "data":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 188
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 225
    .end local v1    # "data":Lorg/json/JSONObject;
    .end local v2    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v2

    .line 226
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 228
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    return-void

    .line 207
    .restart local v0    # "adUnit":Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;
    :pswitch_0
    :try_start_3
    iget-object v7, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoManager:Lcom/ironsource/mediationsdk/RewardedVideoManager;

    iget-object v8, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getIronSourceAppKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getIronSourceUserId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->initRewardedVideo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 210
    :pswitch_1
    iget-object v7, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialManager:Lcom/ironsource/mediationsdk/InterstitialManager;

    iget-object v8, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getIronSourceAppKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getIronSourceUserId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Lcom/ironsource/mediationsdk/InterstitialManager;->initInterstitial(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 213
    :pswitch_2
    iget-object v7, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mOfferwallManager:Lcom/ironsource/mediationsdk/OfferwallManager;

    iget-object v8, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getIronSourceAppKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getIronSourceUserId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Lcom/ironsource/mediationsdk/OfferwallManager;->initOfferwall(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 216
    :pswitch_3
    iget-object v7, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mBannerManager:Lcom/ironsource/mediationsdk/BannerManager;

    iget-object v8, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getIronSourceAppKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getIronSourceUserId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Lcom/ironsource/mediationsdk/BannerManager;->initBanners(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 221
    :cond_3
    const/4 v7, 0x0

    invoke-direct {p0, v0, v7}, Lcom/ironsource/mediationsdk/IronSourceObject;->notifyPublisherAboutInitFailed(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 205
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 399
    const-string v2, "onPause()"

    .line 402
    .local v2, "logMessage":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v2, v5}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 404
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoAdaptersList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/AbstractAdapter;

    .line 405
    .local v0, "adapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->onPause(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 413
    .end local v0    # "adapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    :catch_0
    move-exception v1

    .line 414
    .local v1, "e":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v3, v4, v2, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 416
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_0
    return-void

    .line 407
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialAdaptersList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/AbstractAdapter;

    .line 408
    .restart local v0    # "adapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->onPause(Landroid/app/Activity;)V

    goto :goto_1

    .line 410
    .end local v0    # "adapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    :cond_2
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mBannerAdaptersList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/AbstractAdapter;

    .line 411
    .restart local v0    # "adapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->onPause(Landroid/app/Activity;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 370
    const-string v2, "onResume()"

    .line 373
    .local v2, "logMessage":Ljava/lang/String;
    :try_start_0
    iput-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mActivity:Landroid/app/Activity;

    .line 374
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v2, v5}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 376
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoManager:Lcom/ironsource/mediationsdk/RewardedVideoManager;

    if-eqz v3, :cond_0

    .line 377
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoManager:Lcom/ironsource/mediationsdk/RewardedVideoManager;

    invoke-virtual {v3, p1}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->onResume(Landroid/app/Activity;)V

    .line 378
    :cond_0
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoAdaptersList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/AbstractAdapter;

    .line 379
    .local v0, "adapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->onResume(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 392
    .end local v0    # "adapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    :catch_0
    move-exception v1

    .line 393
    .local v1, "e":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v3, v4, v2, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 395
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_1
    return-void

    .line 381
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialManager:Lcom/ironsource/mediationsdk/InterstitialManager;

    if-eqz v3, :cond_3

    .line 382
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialManager:Lcom/ironsource/mediationsdk/InterstitialManager;

    invoke-virtual {v3, p1}, Lcom/ironsource/mediationsdk/InterstitialManager;->onResume(Landroid/app/Activity;)V

    .line 383
    :cond_3
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialAdaptersList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/AbstractAdapter;

    .line 384
    .restart local v0    # "adapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->onResume(Landroid/app/Activity;)V

    goto :goto_1

    .line 387
    .end local v0    # "adapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    :cond_4
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mBannerManager:Lcom/ironsource/mediationsdk/BannerManager;

    if-eqz v3, :cond_5

    .line 388
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mBannerManager:Lcom/ironsource/mediationsdk/BannerManager;

    invoke-virtual {v3, p1}, Lcom/ironsource/mediationsdk/BannerManager;->onResume(Landroid/app/Activity;)V

    .line 389
    :cond_5
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mBannerAdaptersList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/AbstractAdapter;

    .line 390
    .restart local v0    # "adapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->onResume(Landroid/app/Activity;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public removeInterstitialListener()V
    .locals 4

    .prologue
    .line 1158
    const-string v0, "removeInterstitialListener()"

    .line 1159
    .local v0, "logMessage":Ljava/lang/String;
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1161
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->setInterstitialListener(Lcom/ironsource/mediationsdk/sdk/InterstitialListener;)V

    .line 1162
    return-void
.end method

.method public removeOfferwallListener()V
    .locals 4

    .prologue
    .line 1166
    const-string v0, "removeOfferwallListener()"

    .line 1167
    .local v0, "logMessage":Ljava/lang/String;
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1169
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->setOfferwallListener(Lcom/ironsource/mediationsdk/sdk/OfferwallListener;)V

    .line 1170
    return-void
.end method

.method public removeRewardedVideoListener()V
    .locals 4

    .prologue
    .line 1150
    const-string v0, "removeRewardedVideoListener()"

    .line 1151
    .local v0, "logMessage":Ljava/lang/String;
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 1153
    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->setRewardedVideoListener(Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;)V

    .line 1154
    return-void
.end method

.method public setAdaptersDebug(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 512
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->setAdaptersDebug(Z)V

    .line 513
    return-void
.end method

.method public declared-synchronized setAge(I)V
    .locals 7
    .param p1, "age"    # I

    .prologue
    .line 421
    monitor-enter p0

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":setAge(age:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 422
    .local v1, "logMessage":Ljava/lang/String;
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v1, v5}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 424
    new-instance v2, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;

    invoke-direct {v2}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;-><init>()V

    .line 426
    .local v2, "result":Lcom/ironsource/mediationsdk/config/ConfigValidationResult;
    invoke-direct {p0, p1, v2}, Lcom/ironsource/mediationsdk/IronSourceObject;->validateAge(ILcom/ironsource/mediationsdk/config/ConfigValidationResult;)V

    .line 428
    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->isValid()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 429
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mUserAge:Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 435
    .end local v1    # "logMessage":Ljava/lang/String;
    .end local v2    # "result":Lcom/ironsource/mediationsdk/config/ConfigValidationResult;
    :goto_0
    monitor-exit p0

    return-void

    .line 431
    .restart local v1    # "logMessage":Ljava/lang/String;
    .restart local v2    # "result":Lcom/ironsource/mediationsdk/config/ConfigValidationResult;
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v3

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->getIronSourceError()Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v3, v4, v5, v6}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 432
    .end local v1    # "logMessage":Ljava/lang/String;
    .end local v2    # "result":Lcom/ironsource/mediationsdk/config/ConfigValidationResult;
    :catch_0
    move-exception v0

    .line 433
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":setAge(age:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 421
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public setDynamicUserId(Ljava/lang/String;)Z
    .locals 8
    .param p1, "dynamicUserId"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 488
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":setDynamicUserId(dynamicUserId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 489
    .local v1, "logMessage":Ljava/lang/String;
    iget-object v5, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v6, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v1, v7}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 491
    new-instance v2, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;

    invoke-direct {v2}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;-><init>()V

    .line 493
    .local v2, "result":Lcom/ironsource/mediationsdk/config/ConfigValidationResult;
    invoke-direct {p0, p1, v2}, Lcom/ironsource/mediationsdk/IronSourceObject;->validateDynamicUserId(Ljava/lang/String;Lcom/ironsource/mediationsdk/config/ConfigValidationResult;)V

    .line 495
    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->isValid()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 496
    iput-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mDynamicUserId:Ljava/lang/String;

    .line 505
    .end local v1    # "logMessage":Ljava/lang/String;
    .end local v2    # "result":Lcom/ironsource/mediationsdk/config/ConfigValidationResult;
    :goto_0
    return v3

    .line 499
    .restart local v1    # "logMessage":Ljava/lang/String;
    .restart local v2    # "result":Lcom/ironsource/mediationsdk/config/ConfigValidationResult;
    :cond_0
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v3

    sget-object v5, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->getIronSourceError()Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v3, v5, v6, v7}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    .line 500
    goto :goto_0

    .line 503
    .end local v1    # "logMessage":Ljava/lang/String;
    .end local v2    # "result":Lcom/ironsource/mediationsdk/config/ConfigValidationResult;
    :catch_0
    move-exception v0

    .line 504
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v5, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->TAG:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":setDynamicUserId(dynamicUserId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v3, v4

    .line 505
    goto :goto_0
.end method

.method public declared-synchronized setGender(Ljava/lang/String;)V
    .locals 7
    .param p1, "gender"    # Ljava/lang/String;

    .prologue
    .line 440
    monitor-enter p0

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":setGender(gender:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 441
    .local v1, "logMessage":Ljava/lang/String;
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v1, v5}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 443
    new-instance v2, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;

    invoke-direct {v2}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;-><init>()V

    .line 445
    .local v2, "result":Lcom/ironsource/mediationsdk/config/ConfigValidationResult;
    invoke-direct {p0, p1, v2}, Lcom/ironsource/mediationsdk/IronSourceObject;->validateGender(Ljava/lang/String;Lcom/ironsource/mediationsdk/config/ConfigValidationResult;)V

    .line 447
    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->isValid()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 448
    iput-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mUserGender:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 454
    .end local v1    # "logMessage":Ljava/lang/String;
    .end local v2    # "result":Lcom/ironsource/mediationsdk/config/ConfigValidationResult;
    :goto_0
    monitor-exit p0

    return-void

    .line 450
    .restart local v1    # "logMessage":Ljava/lang/String;
    .restart local v2    # "result":Lcom/ironsource/mediationsdk/config/ConfigValidationResult;
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v3

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->getIronSourceError()Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v3, v4, v5, v6}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 451
    .end local v1    # "logMessage":Ljava/lang/String;
    .end local v2    # "result":Lcom/ironsource/mediationsdk/config/ConfigValidationResult;
    :catch_0
    move-exception v0

    .line 452
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":setGender(gender:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 440
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public setInterstitialListener(Lcom/ironsource/mediationsdk/sdk/InterstitialListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/ironsource/mediationsdk/sdk/InterstitialListener;

    .prologue
    const/4 v3, 0x1

    .line 788
    if-nez p1, :cond_0

    .line 789
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "setInterstitialListener(ISListener:null)"

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 794
    :goto_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->setInterstitialListener(Lcom/ironsource/mediationsdk/sdk/InterstitialListener;)V

    .line 795
    return-void

    .line 791
    :cond_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "setInterstitialListener(ISListener)"

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public declared-synchronized setIronSourceAppKey(Ljava/lang/String;)V
    .locals 1
    .param p1, "appKey"    # Ljava/lang/String;

    .prologue
    .line 1173
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mAppKey:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1174
    iput-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mAppKey:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1176
    :cond_0
    monitor-exit p0

    return-void

    .line 1173
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setIronSourceUserId(Ljava/lang/String;)V
    .locals 1
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 1179
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mUserId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1181
    monitor-exit p0

    return-void

    .line 1179
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setLogListener(Lcom/ironsource/mediationsdk/logger/LogListener;)V
    .locals 5
    .param p1, "logListener"    # Lcom/ironsource/mediationsdk/logger/LogListener;

    .prologue
    const/4 v4, 0x1

    .line 900
    if-nez p1, :cond_0

    .line 901
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "setLogListener(LogListener:null)"

    invoke-virtual {v0, v1, v2, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 908
    :goto_0
    return-void

    .line 903
    :cond_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mPublisherLogger:Lcom/ironsource/mediationsdk/logger/PublisherLogger;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/PublisherLogger;->setLogListener(Lcom/ironsource/mediationsdk/logger/LogListener;)V

    .line 904
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setLogListener(LogListener:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public setMediationSegment(Ljava/lang/String;)V
    .locals 7
    .param p1, "segment"    # Ljava/lang/String;

    .prologue
    .line 459
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":setMediationSegment(segment:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 460
    .local v1, "logMessage":Ljava/lang/String;
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v1, v5}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 462
    new-instance v2, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;

    invoke-direct {v2}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;-><init>()V

    .line 464
    .local v2, "result":Lcom/ironsource/mediationsdk/config/ConfigValidationResult;
    invoke-direct {p0, p1, v2}, Lcom/ironsource/mediationsdk/IronSourceObject;->validateSegment(Ljava/lang/String;Lcom/ironsource/mediationsdk/config/ConfigValidationResult;)V

    .line 466
    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->isValid()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 467
    iput-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mSegment:Ljava/lang/String;

    .line 473
    .end local v1    # "logMessage":Ljava/lang/String;
    .end local v2    # "result":Lcom/ironsource/mediationsdk/config/ConfigValidationResult;
    :goto_0
    return-void

    .line 469
    .restart local v1    # "logMessage":Ljava/lang/String;
    .restart local v2    # "result":Lcom/ironsource/mediationsdk/config/ConfigValidationResult;
    :cond_0
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v3

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/config/ConfigValidationResult;->getIronSourceError()Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v3, v4, v5, v6}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 470
    .end local v1    # "logMessage":Ljava/lang/String;
    .end local v2    # "result":Lcom/ironsource/mediationsdk/config/ConfigValidationResult;
    :catch_0
    move-exception v0

    .line 471
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":setMediationSegment(segment:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setMediationType(Ljava/lang/String;)V
    .locals 6
    .param p1, "mediationType"    # Ljava/lang/String;

    .prologue
    .line 519
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":setMediationType(mediationType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 520
    .local v1, "logMessage":Ljava/lang/String;
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 523
    const/4 v2, 0x1

    const/16 v3, 0x40

    invoke-direct {p0, p1, v2, v3}, Lcom/ironsource/mediationsdk/IronSourceObject;->validateLength(Ljava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/IronSourceObject;->validateAlphanumeric(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 524
    iput-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mMediationType:Ljava/lang/String;

    .line 535
    .end local v1    # "logMessage":Ljava/lang/String;
    :goto_0
    return-void

    .line 527
    .restart local v1    # "logMessage":Ljava/lang/String;
    :cond_0
    const-string v1, " mediationType value is invalid - should be alphanumeric and 1-64 chars in length"

    .line 528
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 531
    .end local v1    # "logMessage":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 532
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":setMediationType(mediationType:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setOfferwallListener(Lcom/ironsource/mediationsdk/sdk/OfferwallListener;)V
    .locals 4
    .param p1, "offerwallListener"    # Lcom/ironsource/mediationsdk/sdk/OfferwallListener;

    .prologue
    const/4 v3, 0x1

    .line 888
    if-nez p1, :cond_0

    .line 889
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "setOfferwallListener(OWListener:null)"

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 894
    :goto_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->setOfferwallListener(Lcom/ironsource/mediationsdk/sdk/OfferwallListener;)V

    .line 895
    return-void

    .line 891
    :cond_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "setOfferwallListener(OWListener)"

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public setRewardedInterstitialListener(Lcom/ironsource/mediationsdk/sdk/RewardedInterstitialListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/ironsource/mediationsdk/sdk/RewardedInterstitialListener;

    .prologue
    .line 912
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->setRewardedInterstitialListener(Lcom/ironsource/mediationsdk/sdk/RewardedInterstitialListener;)V

    .line 913
    return-void
.end method

.method public setRewardedVideoListener(Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;

    .prologue
    const/4 v3, 0x1

    .line 682
    if-nez p1, :cond_0

    .line 683
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "setRewardedVideoListener(RVListener:null)"

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 689
    :goto_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->setRewardedVideoListener(Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;)V

    .line 690
    return-void

    .line 685
    :cond_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "setRewardedVideoListener(RVListener)"

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public setSegment(Lcom/ironsource/mediationsdk/IronSourceSegment;)V
    .locals 4
    .param p1, "segment"    # Lcom/ironsource/mediationsdk/IronSourceSegment;

    .prologue
    .line 476
    invoke-static {}, Lcom/ironsource/mediationsdk/MediationInitializer;->getInstance()Lcom/ironsource/mediationsdk/MediationInitializer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/MediationInitializer;->getCurrentInitStatus()Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;->INIT_IN_PROGRESS:Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    if-eq v0, v1, :cond_0

    .line 477
    invoke-static {}, Lcom/ironsource/mediationsdk/MediationInitializer;->getInstance()Lcom/ironsource/mediationsdk/MediationInitializer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/MediationInitializer;->getCurrentInitStatus()Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;->INITIATED:Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    if-ne v0, v1, :cond_1

    .line 479
    :cond_0
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "Segments must be set prior to Init. Setting a segment after the init will be ignored"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 483
    :goto_0
    return-void

    .line 482
    :cond_1
    iput-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mIronSegment:Lcom/ironsource/mediationsdk/IronSourceSegment;

    goto :goto_0
.end method

.method public setSegmentListener(Lcom/ironsource/mediationsdk/sdk/SegmentListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/ironsource/mediationsdk/sdk/SegmentListener;

    .prologue
    .line 1507
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    if-eqz v0, :cond_0

    .line 1508
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->setSegmentListener(Lcom/ironsource/mediationsdk/sdk/SegmentListener;)V

    .line 1509
    invoke-static {}, Lcom/ironsource/mediationsdk/MediationInitializer;->getInstance()Lcom/ironsource/mediationsdk/MediationInitializer;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/MediationInitializer;->setSegmentListener(Lcom/ironsource/mediationsdk/sdk/SegmentListener;)V

    .line 1512
    :cond_0
    return-void
.end method

.method public shouldTrackNetworkState(Landroid/content/Context;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "track"    # Z

    .prologue
    .line 1321
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoManager:Lcom/ironsource/mediationsdk/RewardedVideoManager;

    if-eqz v0, :cond_0

    .line 1322
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoManager:Lcom/ironsource/mediationsdk/RewardedVideoManager;

    invoke-virtual {v0, p1, p2}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->shouldTrackNetworkState(Landroid/content/Context;Z)V

    .line 1324
    :cond_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialManager:Lcom/ironsource/mediationsdk/InterstitialManager;

    if-eqz v0, :cond_1

    .line 1325
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialManager:Lcom/ironsource/mediationsdk/InterstitialManager;

    invoke-virtual {v0, p1, p2}, Lcom/ironsource/mediationsdk/InterstitialManager;->shouldTrackNetworkState(Landroid/content/Context;Z)V

    .line 1327
    :cond_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mBannerManager:Lcom/ironsource/mediationsdk/BannerManager;

    if-eqz v0, :cond_2

    .line 1328
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mBannerManager:Lcom/ironsource/mediationsdk/BannerManager;

    invoke-virtual {v0, p1, p2}, Lcom/ironsource/mediationsdk/BannerManager;->shouldTrackNetworkState(Landroid/content/Context;Z)V

    .line 1330
    :cond_2
    return-void
.end method

.method public showInterstitial()V
    .locals 7

    .prologue
    .line 713
    const-string v2, "showInterstitial()"

    .line 717
    .local v2, "logMessage":Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v5, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v2, v6}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 719
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->isInterstitialConfigurationsReady()Z

    move-result v4

    if-nez v4, :cond_1

    .line 720
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    const-string v5, "showInterstitial can\'t be called before the Interstitial ad unit initialization completed successfully"

    const-string v6, "Interstitial"

    invoke-static {v5, v6}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 733
    :cond_0
    :goto_0
    return-void

    .line 724
    :cond_1
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->currentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/Configurations;->getInterstitialConfigurations()Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;->getDefaultInterstitialPlacement()Lcom/ironsource/mediationsdk/model/InterstitialPlacement;

    move-result-object v0

    .line 725
    .local v0, "defaultPlacement":Lcom/ironsource/mediationsdk/model/InterstitialPlacement;
    if-eqz v0, :cond_0

    .line 726
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/InterstitialPlacement;->getPlacementName()Ljava/lang/String;

    move-result-object v3

    .line 727
    .local v3, "placementName":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/ironsource/mediationsdk/IronSourceObject;->showInterstitial(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 729
    .end local v0    # "defaultPlacement":Lcom/ironsource/mediationsdk/model/InterstitialPlacement;
    .end local v3    # "placementName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 730
    .local v1, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v5, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v4, v5, v2, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 731
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    const-string v5, "showInterstitial can\'t be called before the Interstitial ad unit initialization completed successfully"

    const-string v6, "Interstitial"

    invoke-static {v5, v6}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_0
.end method

.method public showInterstitial(Ljava/lang/String;)V
    .locals 12
    .param p1, "placementName"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x1

    .line 737
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "showInterstitial("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 738
    .local v5, "logMessage":Ljava/lang/String;
    iget-object v9, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v10, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v9, v10, v5, v11}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 742
    :try_start_0
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->isInterstitialConfigurationsReady()Z

    move-result v9

    if-nez v9, :cond_0

    .line 743
    iget-object v9, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    const-string v10, "showInterstitial can\'t be called before the Interstitial ad unit initialization completed successfully"

    const-string v11, "Interstitial"

    invoke-static {v10, v11}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 784
    :goto_0
    return-void

    .line 747
    :cond_0
    iget-object v9, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->currentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v9}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v9

    invoke-virtual {v9}, Lcom/ironsource/mediationsdk/model/Configurations;->getInterstitialConfigurations()Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;

    move-result-object v9

    invoke-virtual {v9, p1}, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;->getInterstitialPlacement(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/InterstitialPlacement;

    move-result-object v8

    .line 748
    .local v8, "placement":Lcom/ironsource/mediationsdk/model/InterstitialPlacement;
    if-nez v8, :cond_1

    .line 749
    const-string v7, "Placement is not valid, please make sure you are using the right placements, using the default placement."

    .line 750
    .local v7, "noPlacementMessage":Ljava/lang/String;
    iget-object v9, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v10, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v11, 0x3

    invoke-virtual {v9, v10, v7, v11}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 753
    iget-object v9, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->currentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v9}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v9

    invoke-virtual {v9}, Lcom/ironsource/mediationsdk/model/Configurations;->getInterstitialConfigurations()Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;

    move-result-object v9

    invoke-virtual {v9}, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;->getDefaultInterstitialPlacement()Lcom/ironsource/mediationsdk/model/InterstitialPlacement;

    move-result-object v8

    .line 754
    if-nez v8, :cond_1

    .line 755
    const-string v6, "Default placement was not found, please make sure you are using the right placements."

    .line 756
    .local v6, "noDefaultPlacement":Ljava/lang/String;
    iget-object v9, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v10, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v11, 0x3

    invoke-virtual {v9, v10, v6, v11}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 780
    .end local v6    # "noDefaultPlacement":Ljava/lang/String;
    .end local v7    # "noPlacementMessage":Ljava/lang/String;
    .end local v8    # "placement":Lcom/ironsource/mediationsdk/model/InterstitialPlacement;
    :catch_0
    move-exception v3

    .line 781
    .local v3, "e":Ljava/lang/Exception;
    iget-object v9, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v10, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v9, v10, v5, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 782
    iget-object v9, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    const-string v10, "showInterstitial can\'t be called before the Interstitial ad unit initialization completed successfully"

    const-string v11, "Interstitial"

    invoke-static {v10, v11}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_0

    .line 761
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v8    # "placement":Lcom/ironsource/mediationsdk/model/InterstitialPlacement;
    :cond_1
    :try_start_1
    invoke-virtual {v8}, Lcom/ironsource/mediationsdk/model/InterstitialPlacement;->getPlacementName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInterstitialCappingStatus(Ljava/lang/String;)Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;

    move-result-object v1

    .line 762
    .local v1, "cappingStatus":Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;
    invoke-virtual {v8}, Lcom/ironsource/mediationsdk/model/InterstitialPlacement;->getPlacementName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9, v1}, Lcom/ironsource/mediationsdk/IronSourceObject;->getCappingMessage(Ljava/lang/String;Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;)Ljava/lang/String;

    move-result-object v0

    .line 763
    .local v0, "cappedMessage":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 764
    iget-object v9, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v10, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v0, v11}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 765
    iget-object v9, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    const-string v10, "Interstitial"

    invoke-static {v10, v0}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildCappedPerPlacementError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_0

    .line 769
    :cond_2
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData()Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .line 771
    .local v2, "data":Lorg/json/JSONObject;
    :try_start_2
    const-string v9, "placement"

    invoke-virtual {v8}, Lcom/ironsource/mediationsdk/model/InterstitialPlacement;->getPlacementName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 776
    :goto_1
    :try_start_3
    new-instance v4, Lcom/ironsource/eventsmodule/EventData;

    const/16 v9, 0x17

    invoke-direct {v4, v9, v2}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 777
    .local v4, "event":Lcom/ironsource/eventsmodule/EventData;
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v9

    invoke-virtual {v9, v4}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    .line 779
    iget-object v9, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mInterstitialManager:Lcom/ironsource/mediationsdk/InterstitialManager;

    invoke-virtual {v8}, Lcom/ironsource/mediationsdk/model/InterstitialPlacement;->getPlacementName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/ironsource/mediationsdk/InterstitialManager;->showInterstitial(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 772
    .end local v4    # "event":Lcom/ironsource/eventsmodule/EventData;
    :catch_1
    move-exception v3

    .line 773
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1
.end method

.method public showOfferwall()V
    .locals 7

    .prologue
    .line 808
    const-string v2, "showOfferwall()"

    .line 811
    .local v2, "logMessage":Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v5, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v2, v6}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 813
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->isOfferwallConfigurationsReady()Z

    move-result v4

    if-nez v4, :cond_1

    .line 814
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    const-string v5, "showOfferwall can\'t be called before the Offerwall ad unit initialization completed successfully"

    const-string v6, "Offerwall"

    invoke-static {v5, v6}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onOfferwallShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 827
    :cond_0
    :goto_0
    return-void

    .line 818
    :cond_1
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->currentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/Configurations;->getOfferwallConfigurations()Lcom/ironsource/mediationsdk/model/OfferwallConfigurations;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/OfferwallConfigurations;->getDefaultOfferwallPlacement()Lcom/ironsource/mediationsdk/model/OfferwallPlacement;

    move-result-object v0

    .line 819
    .local v0, "defaultPlacement":Lcom/ironsource/mediationsdk/model/OfferwallPlacement;
    if-eqz v0, :cond_0

    .line 820
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/OfferwallPlacement;->getPlacementName()Ljava/lang/String;

    move-result-object v3

    .line 821
    .local v3, "placementName":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/ironsource/mediationsdk/IronSourceObject;->showOfferwall(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 823
    .end local v0    # "defaultPlacement":Lcom/ironsource/mediationsdk/model/OfferwallPlacement;
    .end local v3    # "placementName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 824
    .local v1, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v5, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v4, v5, v2, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 825
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    const-string v5, "showOfferwall can\'t be called before the Offerwall ad unit initialization completed successfully"

    const-string v6, "Offerwall"

    invoke-static {v5, v6}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onOfferwallShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_0
.end method

.method public showOfferwall(Ljava/lang/String;)V
    .locals 8
    .param p1, "placementName"    # Ljava/lang/String;

    .prologue
    .line 831
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "showOfferwall("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 832
    .local v1, "logMessage":Ljava/lang/String;
    iget-object v5, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v6, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v1, v7}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 834
    :try_start_0
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->isOfferwallConfigurationsReady()Z

    move-result v5

    if-nez v5, :cond_0

    .line 835
    iget-object v5, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    const-string v6, "showOfferwall can\'t be called before the Offerwall ad unit initialization completed successfully"

    const-string v7, "Offerwall"

    invoke-static {v6, v7}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onOfferwallShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 858
    :goto_0
    return-void

    .line 839
    :cond_0
    iget-object v5, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->currentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/model/Configurations;->getOfferwallConfigurations()Lcom/ironsource/mediationsdk/model/OfferwallConfigurations;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/ironsource/mediationsdk/model/OfferwallConfigurations;->getOfferwallPlacement(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/OfferwallPlacement;

    move-result-object v4

    .line 840
    .local v4, "placement":Lcom/ironsource/mediationsdk/model/OfferwallPlacement;
    if-nez v4, :cond_1

    .line 841
    const-string v3, "Placement is not valid, please make sure you are using the right placements, using the default placement."

    .line 842
    .local v3, "noPlacementMessage":Ljava/lang/String;
    iget-object v5, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v6, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v7, 0x3

    invoke-virtual {v5, v6, v3, v7}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 845
    iget-object v5, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->currentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/model/Configurations;->getOfferwallConfigurations()Lcom/ironsource/mediationsdk/model/OfferwallConfigurations;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/model/OfferwallConfigurations;->getDefaultOfferwallPlacement()Lcom/ironsource/mediationsdk/model/OfferwallPlacement;

    move-result-object v4

    .line 846
    if-nez v4, :cond_1

    .line 847
    const-string v2, "Default placement was not found, please make sure you are using the right placements."

    .line 848
    .local v2, "noDefaultPlacement":Ljava/lang/String;
    iget-object v5, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v6, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v7, 0x3

    invoke-virtual {v5, v6, v2, v7}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 854
    .end local v2    # "noDefaultPlacement":Ljava/lang/String;
    .end local v3    # "noPlacementMessage":Ljava/lang/String;
    .end local v4    # "placement":Lcom/ironsource/mediationsdk/model/OfferwallPlacement;
    :catch_0
    move-exception v0

    .line 855
    .local v0, "e":Ljava/lang/Exception;
    iget-object v5, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v6, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v5, v6, v1, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 856
    iget-object v5, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    const-string v6, "showOfferwall can\'t be called before the Offerwall ad unit initialization completed successfully"

    const-string v7, "Offerwall"

    invoke-static {v6, v7}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onOfferwallShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_0

    .line 853
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v4    # "placement":Lcom/ironsource/mediationsdk/model/OfferwallPlacement;
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mOfferwallManager:Lcom/ironsource/mediationsdk/OfferwallManager;

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/OfferwallPlacement;->getPlacementName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/ironsource/mediationsdk/OfferwallManager;->showOfferwall(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public showRewardedVideo()V
    .locals 7

    .prologue
    .line 583
    const-string v2, "showRewardedVideo()"

    .line 586
    .local v2, "logMessage":Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v5, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v2, v6}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 588
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->isRewardedVideoConfigurationsReady()Z

    move-result v4

    if-nez v4, :cond_1

    .line 589
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    const-string v5, "showRewardedVideo can\'t be called before the Rewarded Video ad unit initialization completed successfully"

    const-string v6, "Rewarded Video"

    invoke-static {v5, v6}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 602
    :cond_0
    :goto_0
    return-void

    .line 593
    :cond_1
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->currentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->getDefaultRewardedVideoPlacement()Lcom/ironsource/mediationsdk/model/Placement;

    move-result-object v0

    .line 594
    .local v0, "defaultPlacement":Lcom/ironsource/mediationsdk/model/Placement;
    if-eqz v0, :cond_0

    .line 595
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/Placement;->getPlacementName()Ljava/lang/String;

    move-result-object v3

    .line 596
    .local v3, "placementName":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/ironsource/mediationsdk/IronSourceObject;->showRewardedVideo(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 598
    .end local v0    # "defaultPlacement":Lcom/ironsource/mediationsdk/model/Placement;
    .end local v3    # "placementName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 599
    .local v1, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v5, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v4, v5, v2, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 600
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    const-string v5, "showRewardedVideo can\'t be called before the Rewarded Video ad unit initialization completed successfully"

    const-string v6, "Rewarded Video"

    invoke-static {v5, v6}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_0
.end method

.method public showRewardedVideo(Ljava/lang/String;)V
    .locals 12
    .param p1, "placementName"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x1

    .line 606
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "showRewardedVideo("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 607
    .local v5, "logMessage":Ljava/lang/String;
    iget-object v9, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v10, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v9, v10, v5, v11}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 610
    :try_start_0
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->isRewardedVideoConfigurationsReady()Z

    move-result v9

    if-nez v9, :cond_0

    .line 611
    iget-object v9, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    const-string v10, "showRewardedVideo can\'t be called before the Rewarded Video ad unit initialization completed successfully"

    const-string v11, "Rewarded Video"

    invoke-static {v10, v11}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 652
    :goto_0
    return-void

    .line 615
    :cond_0
    iget-object v9, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->currentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v9}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v9

    invoke-virtual {v9}, Lcom/ironsource/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v9

    invoke-virtual {v9, p1}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->getRewardedVideoPlacement(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/Placement;

    move-result-object v8

    .line 616
    .local v8, "placement":Lcom/ironsource/mediationsdk/model/Placement;
    if-nez v8, :cond_1

    .line 617
    const-string v7, "Placement is not valid, please make sure you are using the right placements, using the default placement."

    .line 618
    .local v7, "noPlacementMessage":Ljava/lang/String;
    iget-object v9, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v10, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v11, 0x3

    invoke-virtual {v9, v10, v7, v11}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 621
    iget-object v9, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->currentServerResponse:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v9}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v9

    invoke-virtual {v9}, Lcom/ironsource/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v9

    invoke-virtual {v9}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->getDefaultRewardedVideoPlacement()Lcom/ironsource/mediationsdk/model/Placement;

    move-result-object v8

    .line 622
    if-nez v8, :cond_1

    .line 623
    const-string v6, "Default placement was not found, please make sure you are using the right placements."

    .line 624
    .local v6, "noDefaultPlacement":Ljava/lang/String;
    iget-object v9, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v10, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v11, 0x3

    invoke-virtual {v9, v10, v6, v11}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 648
    .end local v6    # "noDefaultPlacement":Ljava/lang/String;
    .end local v7    # "noPlacementMessage":Ljava/lang/String;
    .end local v8    # "placement":Lcom/ironsource/mediationsdk/model/Placement;
    :catch_0
    move-exception v3

    .line 649
    .local v3, "e":Ljava/lang/Exception;
    iget-object v9, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v10, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v9, v10, v5, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 650
    iget-object v9, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    const-string v10, "showRewardedVideo can\'t be called before the Rewarded Video ad unit initialization completed successfully"

    const-string v11, "Rewarded Video"

    invoke-static {v10, v11}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_0

    .line 629
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v8    # "placement":Lcom/ironsource/mediationsdk/model/Placement;
    :cond_1
    :try_start_1
    invoke-virtual {v8}, Lcom/ironsource/mediationsdk/model/Placement;->getPlacementName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/ironsource/mediationsdk/IronSourceObject;->getRewardedVideoCappingStatus(Ljava/lang/String;)Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;

    move-result-object v1

    .line 630
    .local v1, "cappingStatus":Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;
    invoke-virtual {v8}, Lcom/ironsource/mediationsdk/model/Placement;->getPlacementName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9, v1}, Lcom/ironsource/mediationsdk/IronSourceObject;->getCappingMessage(Ljava/lang/String;Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;)Ljava/lang/String;

    move-result-object v0

    .line 631
    .local v0, "cappedMessage":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 632
    iget-object v9, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v10, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v0, v11}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 633
    iget-object v9, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    const-string v10, "Rewarded Video"

    invoke-static {v10, v0}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildCappedPerPlacementError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_0

    .line 637
    :cond_2
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData()Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .line 639
    .local v2, "data":Lorg/json/JSONObject;
    :try_start_2
    const-string v9, "placement"

    invoke-virtual {v8}, Lcom/ironsource/mediationsdk/model/Placement;->getPlacementName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 644
    :goto_1
    :try_start_3
    new-instance v4, Lcom/ironsource/eventsmodule/EventData;

    const/4 v9, 0x2

    invoke-direct {v4, v9, v2}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 645
    .local v4, "event":Lcom/ironsource/eventsmodule/EventData;
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v9

    invoke-virtual {v9, v4}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    .line 647
    iget-object v9, p0, Lcom/ironsource/mediationsdk/IronSourceObject;->mRewardedVideoManager:Lcom/ironsource/mediationsdk/RewardedVideoManager;

    invoke-virtual {v8}, Lcom/ironsource/mediationsdk/model/Placement;->getPlacementName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/ironsource/mediationsdk/RewardedVideoManager;->showRewardedVideo(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 640
    .end local v4    # "event":Lcom/ironsource/eventsmodule/EventData;
    :catch_1
    move-exception v3

    .line 641
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1
.end method
