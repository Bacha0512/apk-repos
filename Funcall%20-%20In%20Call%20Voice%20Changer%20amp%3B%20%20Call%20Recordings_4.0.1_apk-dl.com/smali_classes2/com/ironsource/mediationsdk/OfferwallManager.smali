.class Lcom/ironsource/mediationsdk/OfferwallManager;
.super Lcom/ironsource/mediationsdk/AbstractAdUnitManager;
.source "OfferwallManager.java"

# interfaces
.implements Lcom/ironsource/mediationsdk/sdk/InternalOfferwallApi;
.implements Lcom/ironsource/mediationsdk/sdk/InternalOfferwallListener;


# instance fields
.field private final GENERAL_PROPERTIES_USER_ID:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private mAdapter:Lcom/ironsource/mediationsdk/sdk/OfferwallApi;

.field private mAtomicShouldPerformInit:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mCurrentPlacementName:Ljava/lang/String;

.field private mIsOfferwallAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/InternalOfferwallListener;

.field private mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

.field private mServerResponseWrapper:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/AbstractAdUnitManager;-><init>()V

    .line 32
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/OfferwallManager;->TAG:Ljava/lang/String;

    .line 33
    const-string v0, "userId"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/OfferwallManager;->GENERAL_PROPERTIES_USER_ID:Ljava/lang/String;

    .line 47
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/OfferwallManager;->mAtomicShouldPerformInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/OfferwallManager;->mIsOfferwallAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 49
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/OfferwallManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    .line 50
    return-void
.end method

.method private addOfferwallAdapter(Lcom/ironsource/mediationsdk/sdk/OfferwallApi;)V
    .locals 0
    .param p1, "adapter"    # Lcom/ironsource/mediationsdk/sdk/OfferwallApi;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/ironsource/mediationsdk/OfferwallManager;->mAdapter:Lcom/ironsource/mediationsdk/sdk/OfferwallApi;

    .line 154
    return-void
.end method

.method private declared-synchronized reportInitFail(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 2
    .param p1, "error"    # Lcom/ironsource/mediationsdk/logger/IronSourceError;

    .prologue
    .line 91
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/OfferwallManager;->mIsOfferwallAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/ironsource/mediationsdk/OfferwallManager;->mIsOfferwallAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/OfferwallManager;->mAtomicShouldPerformInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/ironsource/mediationsdk/OfferwallManager;->mAtomicShouldPerformInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/OfferwallManager;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/InternalOfferwallListener;

    if-eqz v0, :cond_2

    .line 98
    iget-object v0, p0, Lcom/ironsource/mediationsdk/OfferwallManager;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/InternalOfferwallListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/ironsource/mediationsdk/sdk/InternalOfferwallListener;->onOfferwallAvailable(ZLcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    :cond_2
    monitor-exit p0

    return-void

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private startAdapters(Landroid/app/Activity;Ljava/lang/String;Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;)Ljava/util/ArrayList;
    .locals 17
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "userId"    # Ljava/lang/String;
    .param p3, "serverResponseWrapper"    # Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ironsource/mediationsdk/AbstractAdapter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 110
    .local v2, "adapterList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ironsource/mediationsdk/AbstractAdapter;>;"
    invoke-virtual/range {p3 .. p3}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getProviderSettingsHolder()Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    move-result-object v5

    .line 111
    .local v5, "holder":Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;
    const-string v13, "SupersonicAds"

    invoke-virtual {v5, v13}, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->getProviderSettings(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/ProviderSettings;

    move-result-object v10

    .line 113
    .local v10, "settings":Lcom/ironsource/mediationsdk/model/ProviderSettings;
    const-string v8, "SupersonicAds"

    .line 114
    .local v8, "providerName":Ljava/lang/String;
    invoke-virtual {v10}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getRewardedVideoSettings()Lorg/json/JSONObject;

    move-result-object v13

    const-string v14, "requestUrl"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 117
    .local v9, "requestUrl":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v11

    .line 119
    .local v11, "sso":Lcom/ironsource/mediationsdk/IronSourceObject;
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v13

    invoke-virtual {v13, v8}, Lcom/ironsource/mediationsdk/IronSourceObject;->getExistingAdapter(Ljava/lang/String;)Lcom/ironsource/mediationsdk/AbstractAdapter;

    move-result-object v7

    .line 120
    .local v7, "providerAdapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    if-nez v7, :cond_0

    .line 122
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "com.ironsource.adapters."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "Adapter"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 123
    .local v6, "mAdapterClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v13, "startAdapter"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Class;

    const/4 v15, 0x0

    const-class v16, Ljava/lang/String;

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-class v16, Ljava/lang/String;

    aput-object v16, v14, v15

    invoke-virtual {v6, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    .line 124
    .local v12, "startAdapterMethod":Ljava/lang/reflect/Method;
    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v8, v13, v14

    const/4 v14, 0x1

    aput-object v9, v13, v14

    invoke-virtual {v12, v6, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "providerAdapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    check-cast v7, Lcom/ironsource/mediationsdk/AbstractAdapter;

    .line 126
    .restart local v7    # "providerAdapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    if-eqz v7, :cond_0

    .line 127
    invoke-virtual {v11, v7}, Lcom/ironsource/mediationsdk/IronSourceObject;->addToRVAdaptersList(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 132
    .end local v6    # "mAdapterClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v12    # "startAdapterMethod":Ljava/lang/reflect/Method;
    :cond_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/ironsource/mediationsdk/OfferwallManager;->setCustomParams(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 133
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ironsource/mediationsdk/OfferwallManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    invoke-virtual {v7, v13}, Lcom/ironsource/mediationsdk/AbstractAdapter;->setLogListener(Lcom/ironsource/mediationsdk/logger/LogListener;)V

    .line 136
    move-object v0, v7

    check-cast v0, Lcom/ironsource/mediationsdk/sdk/InternalOfferwallApi;

    move-object v13, v0

    move-object/from16 v0, p0

    invoke-interface {v13, v0}, Lcom/ironsource/mediationsdk/sdk/InternalOfferwallApi;->setInternalOfferwallListener(Lcom/ironsource/mediationsdk/sdk/InternalOfferwallListener;)V

    .line 137
    move-object v0, v7

    check-cast v0, Lcom/ironsource/mediationsdk/sdk/OfferwallApi;

    move-object v13, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/ironsource/mediationsdk/OfferwallManager;->addOfferwallAdapter(Lcom/ironsource/mediationsdk/sdk/OfferwallApi;)V

    .line 139
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v13

    invoke-virtual {v13}, Lcom/ironsource/mediationsdk/IronSourceObject;->getIronSourceAppKey()Ljava/lang/String;

    move-result-object v3

    .line 141
    .local v3, "appKey":Ljava/lang/String;
    move-object v0, v7

    check-cast v0, Lcom/ironsource/mediationsdk/sdk/OfferwallApi;

    move-object v13, v0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v13, v0, v3, v1}, Lcom/ironsource/mediationsdk/sdk/OfferwallApi;->initOfferwall(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    .end local v3    # "appKey":Ljava/lang/String;
    .end local v7    # "providerAdapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    .end local v11    # "sso":Lcom/ironsource/mediationsdk/IronSourceObject;
    :goto_0
    return-object v2

    .line 144
    :catch_0
    move-exception v4

    .line 145
    .local v4, "e":Ljava/lang/Throwable;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ironsource/mediationsdk/OfferwallManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v14, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " initialization failed - please verify that required dependencies are in you build path."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x2

    invoke-virtual/range {v13 .. v16}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 146
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ironsource/mediationsdk/OfferwallManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v14, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ironsource/mediationsdk/OfferwallManager;->TAG:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ":startAdapter"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method dropAdapterFromSmartLoad(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    .locals 0
    .param p1, "adapter"    # Lcom/ironsource/mediationsdk/AbstractAdapter;

    .prologue
    .line 70
    return-void
.end method

.method public getOfferwallCredits()V
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/ironsource/mediationsdk/OfferwallManager;->mAdapter:Lcom/ironsource/mediationsdk/sdk/OfferwallApi;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/ironsource/mediationsdk/OfferwallManager;->mAdapter:Lcom/ironsource/mediationsdk/sdk/OfferwallApi;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/OfferwallApi;->getOfferwallCredits()V

    .line 232
    :cond_0
    return-void
.end method

.method public declared-synchronized initOfferwall(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "userId"    # Ljava/lang/String;

    .prologue
    .line 74
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/ironsource/mediationsdk/OfferwallManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NATIVE:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/ironsource/mediationsdk/OfferwallManager;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":initOfferwall(appKey: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", userId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 75
    iput-object p2, p0, Lcom/ironsource/mediationsdk/OfferwallManager;->mAppKey:Ljava/lang/String;

    .line 76
    iput-object p3, p0, Lcom/ironsource/mediationsdk/OfferwallManager;->mUserId:Ljava/lang/String;

    .line 77
    iput-object p1, p0, Lcom/ironsource/mediationsdk/OfferwallManager;->mActivity:Landroid/app/Activity;

    .line 78
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/IronSourceObject;->getCurrentServerResponse()Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    move-result-object v2

    iput-object v2, p0, Lcom/ironsource/mediationsdk/OfferwallManager;->mServerResponseWrapper:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    .line 79
    iget-object v2, p0, Lcom/ironsource/mediationsdk/OfferwallManager;->mServerResponseWrapper:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    if-eqz v2, :cond_1

    .line 80
    iget-object v2, p0, Lcom/ironsource/mediationsdk/OfferwallManager;->mServerResponseWrapper:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-direct {p0, p1, p3, v2}, Lcom/ironsource/mediationsdk/OfferwallManager;->startAdapters(Landroid/app/Activity;Ljava/lang/String;Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;)Ljava/util/ArrayList;

    move-result-object v1

    .line 83
    .local v1, "startedAdapters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ironsource/mediationsdk/AbstractAdapter;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 84
    :cond_0
    const-string v2, "Please check configurations for Offerwall adapters"

    const-string v3, "Offerwall"

    invoke-static {v2, v3}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    .line 85
    .local v0, "initFailedError":Lcom/ironsource/mediationsdk/logger/IronSourceError;
    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/OfferwallManager;->reportInitFail(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    .end local v0    # "initFailedError":Lcom/ironsource/mediationsdk/logger/IronSourceError;
    .end local v1    # "startedAdapters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ironsource/mediationsdk/AbstractAdapter;>;"
    :cond_1
    monitor-exit p0

    return-void

    .line 74
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method isBackFillAvailable()Z
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized isOfferwallAvailable()Z
    .locals 2

    .prologue
    .line 219
    monitor-enter p0

    const/4 v0, 0x0

    .line 221
    .local v0, "result":Z
    :try_start_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/OfferwallManager;->mIsOfferwallAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v1, :cond_0

    .line 222
    iget-object v1, p0, Lcom/ironsource/mediationsdk/OfferwallManager;->mIsOfferwallAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 224
    :cond_0
    monitor-exit p0

    return v0

    .line 219
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method isPremiumAdapter(Ljava/lang/String;)Z
    .locals 1
    .param p1, "providerName"    # Ljava/lang/String;

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public onGetOfferwallCreditsFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 4
    .param p1, "error"    # Lcom/ironsource/mediationsdk/logger/IronSourceError;

    .prologue
    .line 297
    iget-object v0, p0, Lcom/ironsource/mediationsdk/OfferwallManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onGetOfferwallCreditsFailed("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 298
    iget-object v0, p0, Lcom/ironsource/mediationsdk/OfferwallManager;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/InternalOfferwallListener;

    invoke-interface {v0, p1}, Lcom/ironsource/mediationsdk/sdk/InternalOfferwallListener;->onGetOfferwallCreditsFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 299
    return-void
.end method

.method public onOfferwallAdCredited(IIZ)Z
    .locals 1
    .param p1, "credits"    # I
    .param p2, "totalCredits"    # I
    .param p3, "totalCreditsFlag"    # Z

    .prologue
    .line 292
    iget-object v0, p0, Lcom/ironsource/mediationsdk/OfferwallManager;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/InternalOfferwallListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/ironsource/mediationsdk/sdk/InternalOfferwallListener;->onOfferwallAdCredited(IIZ)Z

    move-result v0

    return v0
.end method

.method public onOfferwallAvailable(Z)V
    .locals 1
    .param p1, "isAvailable"    # Z

    .prologue
    .line 247
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/ironsource/mediationsdk/OfferwallManager;->onOfferwallAvailable(ZLcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 248
    return-void
.end method

.method public onOfferwallAvailable(ZLcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 4
    .param p1, "isAvailable"    # Z
    .param p2, "error"    # Lcom/ironsource/mediationsdk/logger/IronSourceError;

    .prologue
    const/4 v3, 0x1

    .line 252
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOfferwallAvailable(isAvailable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 253
    .local v0, "logString":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 254
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 256
    :cond_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/OfferwallManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v1, v2, v0, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 258
    if-eqz p1, :cond_1

    .line 259
    iget-object v1, p0, Lcom/ironsource/mediationsdk/OfferwallManager;->mIsOfferwallAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 260
    iget-object v1, p0, Lcom/ironsource/mediationsdk/OfferwallManager;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/InternalOfferwallListener;

    invoke-interface {v1, p1}, Lcom/ironsource/mediationsdk/sdk/InternalOfferwallListener;->onOfferwallAvailable(Z)V

    .line 264
    :goto_0
    return-void

    .line 262
    :cond_1
    invoke-direct {p0, p2}, Lcom/ironsource/mediationsdk/OfferwallManager;->reportInitFail(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_0
.end method

.method public onOfferwallClosed()V
    .locals 4

    .prologue
    .line 303
    iget-object v0, p0, Lcom/ironsource/mediationsdk/OfferwallManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "onOfferwallClosed()"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 304
    iget-object v0, p0, Lcom/ironsource/mediationsdk/OfferwallManager;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/InternalOfferwallListener;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/InternalOfferwallListener;->onOfferwallClosed()V

    .line 305
    return-void
.end method

.method public onOfferwallOpened()V
    .locals 7

    .prologue
    .line 268
    iget-object v3, p0, Lcom/ironsource/mediationsdk/OfferwallManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v5, "onOfferwallOpened()"

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 270
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData()Lorg/json/JSONObject;

    move-result-object v0

    .line 272
    .local v0, "data":Lorg/json/JSONObject;
    :try_start_0
    iget-object v3, p0, Lcom/ironsource/mediationsdk/OfferwallManager;->mCurrentPlacementName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 273
    const-string v3, "placement"

    iget-object v4, p0, Lcom/ironsource/mediationsdk/OfferwallManager;->mCurrentPlacementName:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    :cond_0
    :goto_0
    new-instance v2, Lcom/ironsource/eventsmodule/EventData;

    const/16 v3, 0x131

    invoke-direct {v2, v3, v0}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 279
    .local v2, "event":Lcom/ironsource/eventsmodule/EventData;
    invoke-static {}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/ironsource/mediationsdk/events/RewardedVideoEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    .line 281
    iget-object v3, p0, Lcom/ironsource/mediationsdk/OfferwallManager;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/InternalOfferwallListener;

    invoke-interface {v3}, Lcom/ironsource/mediationsdk/sdk/InternalOfferwallListener;->onOfferwallOpened()V

    .line 282
    return-void

    .line 275
    .end local v2    # "event":Lcom/ironsource/eventsmodule/EventData;
    :catch_0
    move-exception v1

    .line 276
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public onOfferwallShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 4
    .param p1, "error"    # Lcom/ironsource/mediationsdk/logger/IronSourceError;

    .prologue
    .line 286
    iget-object v0, p0, Lcom/ironsource/mediationsdk/OfferwallManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onOfferwallShowFailed("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 287
    iget-object v0, p0, Lcom/ironsource/mediationsdk/OfferwallManager;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/InternalOfferwallListener;

    invoke-interface {v0, p1}, Lcom/ironsource/mediationsdk/sdk/InternalOfferwallListener;->onOfferwallShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 288
    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 164
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 159
    return-void
.end method

.method public setAge(I)V
    .locals 0
    .param p1, "age"    # I

    .prologue
    .line 169
    return-void
.end method

.method public setGender(Ljava/lang/String;)V
    .locals 0
    .param p1, "gender"    # Ljava/lang/String;

    .prologue
    .line 174
    return-void
.end method

.method public setInternalOfferwallListener(Lcom/ironsource/mediationsdk/sdk/InternalOfferwallListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/ironsource/mediationsdk/sdk/InternalOfferwallListener;

    .prologue
    .line 241
    iput-object p1, p0, Lcom/ironsource/mediationsdk/OfferwallManager;->mListenersWrapper:Lcom/ironsource/mediationsdk/sdk/InternalOfferwallListener;

    .line 242
    return-void
.end method

.method public setMediationSegment(Ljava/lang/String;)V
    .locals 0
    .param p1, "segment"    # Ljava/lang/String;

    .prologue
    .line 179
    return-void
.end method

.method public setOfferwallListener(Lcom/ironsource/mediationsdk/sdk/OfferwallListener;)V
    .locals 0
    .param p1, "offerwallListener"    # Lcom/ironsource/mediationsdk/sdk/OfferwallListener;

    .prologue
    .line 237
    return-void
.end method

.method shouldTrackNetworkState(Landroid/content/Context;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "track"    # Z

    .prologue
    .line 55
    return-void
.end method

.method public showOfferwall()V
    .locals 0

    .prologue
    .line 183
    return-void
.end method

.method public showOfferwall(Ljava/lang/String;)V
    .locals 8
    .param p1, "placementName"    # Ljava/lang/String;

    .prologue
    .line 187
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OWManager:showOfferwall("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 189
    .local v1, "logMessage":Ljava/lang/String;
    :try_start_0
    iput-object p1, p0, Lcom/ironsource/mediationsdk/OfferwallManager;->mCurrentPlacementName:Ljava/lang/String;

    .line 190
    iget-object v5, p0, Lcom/ironsource/mediationsdk/OfferwallManager;->mServerResponseWrapper:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/model/Configurations;->getOfferwallConfigurations()Lcom/ironsource/mediationsdk/model/OfferwallConfigurations;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/ironsource/mediationsdk/model/OfferwallConfigurations;->getOfferwallPlacement(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/OfferwallPlacement;

    move-result-object v4

    .line 191
    .local v4, "placement":Lcom/ironsource/mediationsdk/model/OfferwallPlacement;
    if-nez v4, :cond_1

    .line 192
    const-string v3, "Placement is not valid, please make sure you are using the right placements, using the default placement."

    .line 193
    .local v3, "noPlacementMessage":Ljava/lang/String;
    iget-object v5, p0, Lcom/ironsource/mediationsdk/OfferwallManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v6, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v7, 0x3

    invoke-virtual {v5, v6, v3, v7}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 196
    iget-object v5, p0, Lcom/ironsource/mediationsdk/OfferwallManager;->mServerResponseWrapper:Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/model/Configurations;->getOfferwallConfigurations()Lcom/ironsource/mediationsdk/model/OfferwallConfigurations;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/model/OfferwallConfigurations;->getDefaultOfferwallPlacement()Lcom/ironsource/mediationsdk/model/OfferwallPlacement;

    move-result-object v4

    .line 197
    if-nez v4, :cond_1

    .line 198
    const-string v2, "Default placement was not found, please make sure you are using the right placements."

    .line 199
    .local v2, "noDefaultPlacement":Ljava/lang/String;
    iget-object v5, p0, Lcom/ironsource/mediationsdk/OfferwallManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v6, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v7, 0x3

    invoke-virtual {v5, v6, v2, v7}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 215
    .end local v2    # "noDefaultPlacement":Ljava/lang/String;
    .end local v3    # "noPlacementMessage":Ljava/lang/String;
    .end local v4    # "placement":Lcom/ironsource/mediationsdk/model/OfferwallPlacement;
    :cond_0
    :goto_0
    return-void

    .line 203
    .restart local v4    # "placement":Lcom/ironsource/mediationsdk/model/OfferwallPlacement;
    :cond_1
    iget-object v5, p0, Lcom/ironsource/mediationsdk/OfferwallManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v6, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v1, v7}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 206
    iget-object v5, p0, Lcom/ironsource/mediationsdk/OfferwallManager;->mIsOfferwallAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/ironsource/mediationsdk/OfferwallManager;->mIsOfferwallAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 207
    iget-object v5, p0, Lcom/ironsource/mediationsdk/OfferwallManager;->mAdapter:Lcom/ironsource/mediationsdk/sdk/OfferwallApi;

    if-eqz v5, :cond_0

    .line 209
    iget-object v5, p0, Lcom/ironsource/mediationsdk/OfferwallManager;->mAdapter:Lcom/ironsource/mediationsdk/sdk/OfferwallApi;

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/model/OfferwallPlacement;->getPlacementId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/ironsource/mediationsdk/sdk/OfferwallApi;->showOfferwall(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 212
    .end local v4    # "placement":Lcom/ironsource/mediationsdk/model/OfferwallPlacement;
    :catch_0
    move-exception v0

    .line 213
    .local v0, "e":Ljava/lang/Exception;
    iget-object v5, p0, Lcom/ironsource/mediationsdk/OfferwallManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v6, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v5, v6, v1, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
