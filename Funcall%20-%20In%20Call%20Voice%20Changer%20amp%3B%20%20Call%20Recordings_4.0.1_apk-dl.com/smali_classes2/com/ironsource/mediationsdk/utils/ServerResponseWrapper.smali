.class public Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;
.super Ljava/lang/Object;
.source "ServerResponseWrapper.java"


# static fields
.field public static final APP_KEY_FIELD:Ljava/lang/String; = "appKey"

.field public static final RESPONSE_FIELD:Ljava/lang/String; = "response"

.field public static final USER_ID_FIELD:Ljava/lang/String; = "userId"


# instance fields
.field private final AB_TESTING:Ljava/lang/String;

.field private final ADAPTER_TIMEOUT_IN_MILLIS_FIELD:Ljava/lang/String;

.field private final ADAPTER_TIMEOUT_IN_SECS_FIELD:Ljava/lang/String;

.field private final AD_UNITS_FIELD:Ljava/lang/String;

.field private final ALLOW_LOCATION:Ljava/lang/String;

.field private final APPLICATION_FIELD:Ljava/lang/String;

.field private final BACKFILL_FIELD:Ljava/lang/String;

.field private final BACKUP_THRESHOLD_FIELD:Ljava/lang/String;

.field private final BN_FIELD:Ljava/lang/String;

.field private final CONFIGURATIONS_FIELD:Ljava/lang/String;

.field private final CONSOLE_FIELD:Ljava/lang/String;

.field private final DEFAULT_ADAPTERS_SMARTLOAD_AMOUNT:I

.field private final DEFAULT_ADAPTERS_SMARTLOAD_TIMEOUT:I

.field private final DEFAULT_ADAPTER_ALGORITHM:Ljava/lang/String;

.field private final DEFAULT_BANNER_SMARTLOAD_TIMEOUT:I

.field private final DEFAULT_LOG_LEVEL:I

.field private final DEFAULT_MAX_EVENTS_PER_BATCH:I

.field private final ERROR_KEY:Ljava/lang/String;

.field private final EVENTS_FIELD:Ljava/lang/String;

.field private final IS_FIELD:Ljava/lang/String;

.field private final IS_MULTIPLE_INSTANCES_FIELD:Ljava/lang/String;

.field private final LOGGERS_FIELD:Ljava/lang/String;

.field private final MAX_EVENTS_PER_BATCH:Ljava/lang/String;

.field private final MAX_NUM_OF_ADAPTERS_TO_LOAD_ON_START_FIELD:Ljava/lang/String;

.field private final MAX_NUM_OF_EVENTS_FIELD:Ljava/lang/String;

.field private final OPT_OUT_EVENTS_FIELD:Ljava/lang/String;

.field private final OW_FIELD:Ljava/lang/String;

.field private final PLACEMENTS_FIELD:Ljava/lang/String;

.field private final PLACEMENT_ID_FIELD:Ljava/lang/String;

.field private final PLACEMENT_NAME_FIELD:Ljava/lang/String;

.field private final PLACEMENT_SETTINGS_CAPPING_FIELD:Ljava/lang/String;

.field private final PLACEMENT_SETTINGS_CAPPING_UNIT_FIELD:Ljava/lang/String;

.field private final PLACEMENT_SETTINGS_CAPPING_VALUE_FIELD:Ljava/lang/String;

.field private final PLACEMENT_SETTINGS_DELIVERY_FIELD:Ljava/lang/String;

.field private final PLACEMENT_SETTINGS_ENABLED_FIELD:Ljava/lang/String;

.field private final PLACEMENT_SETTINGS_PACING_FIELD:Ljava/lang/String;

.field private final PLACEMENT_SETTINGS_PACING_VALUE_FIELD:Ljava/lang/String;

.field private final PREMIUM_FIELD:Ljava/lang/String;

.field private final PROVIDER_LOAD_NAME_FIELD:Ljava/lang/String;

.field private final PROVIDER_ORDER_FIELD:Ljava/lang/String;

.field private final PROVIDER_SETTINGS_FIELD:Ljava/lang/String;

.field private final PUBLISHER_FIELD:Ljava/lang/String;

.field private final RV_FIELD:Ljava/lang/String;

.field private final SEGMENT_FIELD:Ljava/lang/String;

.field private final SEND_EVENTS_TOGGLE_FIELD:Ljava/lang/String;

.field private final SEND_ULTRA_EVENTS_FIELD:Ljava/lang/String;

.field private final SERVER_EVENTS_TYPE:Ljava/lang/String;

.field private final SERVER_EVENTS_URL_FIELD:Ljava/lang/String;

.field private final SERVER_FIELD:Ljava/lang/String;

.field private final SUB_PROVIDER_ID_FIELD:Ljava/lang/String;

.field private final UUID_ENABLED_FIELD:Ljava/lang/String;

.field private final VIRTUAL_ITEM_COUNT_FIELD:Ljava/lang/String;

.field private final VIRTUAL_ITEM_NAME_FIELD:Ljava/lang/String;

.field private mAppKey:Ljava/lang/String;

.field private mBannerLoadPosition:I

.field private mConfigurations:Lcom/ironsource/mediationsdk/model/Configurations;

.field private mContext:Landroid/content/Context;

.field private mISLoadPosition:I

.field private mMaxBannerAdapters:I

.field private mMaxISAdapters:I

.field private mMaxRVAdapters:I

.field private mProviderOrder:Lcom/ironsource/mediationsdk/model/ProviderOrder;

.field private mProviderSettingsHolder:Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

.field private mRVLoadPosition:I

.field private mResponse:Lorg/json/JSONObject;

.field private mTotalBannerAdapters:I

.field private mTotalISAdapters:I

.field private mTotalRVAdapters:I

.field private mUserId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "userId"    # Ljava/lang/String;
    .param p4, "jsonData"    # Ljava/lang/String;

    .prologue
    const/4 v2, -0x1

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const-string v1, "error"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->ERROR_KEY:Ljava/lang/String;

    .line 53
    const/4 v1, 0x3

    iput v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->DEFAULT_LOG_LEVEL:I

    .line 54
    const-string v1, "KTO"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->DEFAULT_ADAPTER_ALGORITHM:Ljava/lang/String;

    .line 55
    const/4 v1, 0x2

    iput v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->DEFAULT_ADAPTERS_SMARTLOAD_AMOUNT:I

    .line 56
    const/16 v1, 0x3c

    iput v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->DEFAULT_ADAPTERS_SMARTLOAD_TIMEOUT:I

    .line 57
    const/16 v1, 0x2710

    iput v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->DEFAULT_BANNER_SMARTLOAD_TIMEOUT:I

    .line 58
    const/16 v1, 0x1388

    iput v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->DEFAULT_MAX_EVENTS_PER_BATCH:I

    .line 60
    const-string v1, "providerOrder"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PROVIDER_ORDER_FIELD:Ljava/lang/String;

    .line 61
    const-string v1, "providerSettings"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PROVIDER_SETTINGS_FIELD:Ljava/lang/String;

    .line 62
    const-string v1, "configurations"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->CONFIGURATIONS_FIELD:Ljava/lang/String;

    .line 64
    const-string v1, "adUnits"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->AD_UNITS_FIELD:Ljava/lang/String;

    .line 65
    const-string v1, "providerLoadName"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PROVIDER_LOAD_NAME_FIELD:Ljava/lang/String;

    .line 66
    const-string v1, "application"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->APPLICATION_FIELD:Ljava/lang/String;

    .line 67
    const-string v1, "rewardedVideo"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->RV_FIELD:Ljava/lang/String;

    .line 68
    const-string v1, "interstitial"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->IS_FIELD:Ljava/lang/String;

    .line 69
    const-string v1, "offerwall"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->OW_FIELD:Ljava/lang/String;

    .line 70
    const-string v1, "banner"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->BN_FIELD:Ljava/lang/String;

    .line 71
    const-string v1, "loggers"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->LOGGERS_FIELD:Ljava/lang/String;

    .line 72
    const-string v1, "segment"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->SEGMENT_FIELD:Ljava/lang/String;

    .line 73
    const-string v1, "events"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->EVENTS_FIELD:Ljava/lang/String;

    .line 75
    const-string v1, "maxNumOfAdaptersToLoadOnStart"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->MAX_NUM_OF_ADAPTERS_TO_LOAD_ON_START_FIELD:Ljava/lang/String;

    .line 76
    const-string v1, "adapterTimeOutInSeconds"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->ADAPTER_TIMEOUT_IN_SECS_FIELD:Ljava/lang/String;

    .line 77
    const-string v1, "atim"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->ADAPTER_TIMEOUT_IN_MILLIS_FIELD:Ljava/lang/String;

    .line 79
    const-string v1, "server"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->SERVER_FIELD:Ljava/lang/String;

    .line 80
    const-string v1, "publisher"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PUBLISHER_FIELD:Ljava/lang/String;

    .line 81
    const-string v1, "console"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->CONSOLE_FIELD:Ljava/lang/String;

    .line 82
    const-string v1, "sendUltraEvents"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->SEND_ULTRA_EVENTS_FIELD:Ljava/lang/String;

    .line 83
    const-string v1, "sendEventsToggle"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->SEND_EVENTS_TOGGLE_FIELD:Ljava/lang/String;

    .line 84
    const-string v1, "serverEventsURL"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->SERVER_EVENTS_URL_FIELD:Ljava/lang/String;

    .line 85
    const-string v1, "serverEventsType"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->SERVER_EVENTS_TYPE:Ljava/lang/String;

    .line 86
    const-string v1, "backupThreshold"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->BACKUP_THRESHOLD_FIELD:Ljava/lang/String;

    .line 87
    const-string v1, "maxNumberOfEvents"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->MAX_NUM_OF_EVENTS_FIELD:Ljava/lang/String;

    .line 88
    const-string v1, "maxEventsPerBatch"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->MAX_EVENTS_PER_BATCH:Ljava/lang/String;

    .line 89
    const-string v1, "optOut"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->OPT_OUT_EVENTS_FIELD:Ljava/lang/String;

    .line 90
    const-string v1, "allowLocation"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->ALLOW_LOCATION:Ljava/lang/String;

    .line 92
    const-string v1, "placements"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PLACEMENTS_FIELD:Ljava/lang/String;

    .line 93
    const-string v1, "placementId"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PLACEMENT_ID_FIELD:Ljava/lang/String;

    .line 94
    const-string v1, "placementName"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PLACEMENT_NAME_FIELD:Ljava/lang/String;

    .line 95
    const-string v1, "delivery"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PLACEMENT_SETTINGS_DELIVERY_FIELD:Ljava/lang/String;

    .line 96
    const-string v1, "capping"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PLACEMENT_SETTINGS_CAPPING_FIELD:Ljava/lang/String;

    .line 97
    const-string v1, "pacing"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PLACEMENT_SETTINGS_PACING_FIELD:Ljava/lang/String;

    .line 98
    const-string v1, "enabled"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PLACEMENT_SETTINGS_ENABLED_FIELD:Ljava/lang/String;

    .line 99
    const-string v1, "maxImpressions"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PLACEMENT_SETTINGS_CAPPING_VALUE_FIELD:Ljava/lang/String;

    .line 100
    const-string v1, "numOfSeconds"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PLACEMENT_SETTINGS_PACING_VALUE_FIELD:Ljava/lang/String;

    .line 101
    const-string v1, "unit"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PLACEMENT_SETTINGS_CAPPING_UNIT_FIELD:Ljava/lang/String;

    .line 102
    const-string v1, "virtualItemName"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->VIRTUAL_ITEM_NAME_FIELD:Ljava/lang/String;

    .line 103
    const-string v1, "virtualItemCount"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->VIRTUAL_ITEM_COUNT_FIELD:Ljava/lang/String;

    .line 104
    const-string v1, "backFill"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->BACKFILL_FIELD:Ljava/lang/String;

    .line 105
    const-string v1, "premium"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PREMIUM_FIELD:Ljava/lang/String;

    .line 106
    const-string v1, "uuidEnabled"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->UUID_ENABLED_FIELD:Ljava/lang/String;

    .line 107
    const-string v1, "abt"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->AB_TESTING:Ljava/lang/String;

    .line 109
    const-string v1, "spId"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->SUB_PROVIDER_ID_FIELD:Ljava/lang/String;

    .line 110
    const-string v1, "mpis"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->IS_MULTIPLE_INSTANCES_FIELD:Ljava/lang/String;

    .line 116
    iput v2, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mRVLoadPosition:I

    .line 117
    iput v2, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mISLoadPosition:I

    .line 118
    iput v2, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mBannerLoadPosition:I

    .line 136
    iput-object p1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mContext:Landroid/content/Context;

    .line 138
    :try_start_0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 139
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mResponse:Lorg/json/JSONObject;

    .line 143
    :goto_0
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->parseProviderSettings()V

    .line 144
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->parseConfigurations()V

    .line 145
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->parseProviderOrder()V

    .line 147
    iget-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderOrder:Lcom/ironsource/mediationsdk/model/ProviderOrder;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/ProviderOrder;->getRewardedVideoProviderOrder()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mTotalRVAdapters:I

    iput v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mMaxRVAdapters:I

    .line 148
    iget-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderOrder:Lcom/ironsource/mediationsdk/model/ProviderOrder;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/ProviderOrder;->getInterstitialProviderOrder()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mTotalISAdapters:I

    iput v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mMaxISAdapters:I

    .line 149
    iget-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderOrder:Lcom/ironsource/mediationsdk/model/ProviderOrder;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/ProviderOrder;->getBannerProviderOrder()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mTotalBannerAdapters:I

    iput v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mMaxBannerAdapters:I

    .line 151
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p2, ""

    .end local p2    # "appKey":Ljava/lang/String;
    :cond_0
    iput-object p2, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mAppKey:Ljava/lang/String;

    .line 152
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p3, ""

    .end local p3    # "userId":Ljava/lang/String;
    :cond_1
    iput-object p3, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mUserId:Ljava/lang/String;

    .line 157
    :goto_1
    return-void

    .line 141
    .restart local p2    # "appKey":Ljava/lang/String;
    .restart local p3    # "userId":Ljava/lang/String;
    :cond_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mResponse:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 153
    .end local p2    # "appKey":Ljava/lang/String;
    .end local p3    # "userId":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 154
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 155
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->defaultInit()V

    goto :goto_1
.end method

.method public constructor <init>(Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;)V
    .locals 3
    .param p1, "srw"    # Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    .prologue
    const/4 v2, -0x1

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const-string v1, "error"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->ERROR_KEY:Ljava/lang/String;

    .line 53
    const/4 v1, 0x3

    iput v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->DEFAULT_LOG_LEVEL:I

    .line 54
    const-string v1, "KTO"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->DEFAULT_ADAPTER_ALGORITHM:Ljava/lang/String;

    .line 55
    const/4 v1, 0x2

    iput v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->DEFAULT_ADAPTERS_SMARTLOAD_AMOUNT:I

    .line 56
    const/16 v1, 0x3c

    iput v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->DEFAULT_ADAPTERS_SMARTLOAD_TIMEOUT:I

    .line 57
    const/16 v1, 0x2710

    iput v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->DEFAULT_BANNER_SMARTLOAD_TIMEOUT:I

    .line 58
    const/16 v1, 0x1388

    iput v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->DEFAULT_MAX_EVENTS_PER_BATCH:I

    .line 60
    const-string v1, "providerOrder"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PROVIDER_ORDER_FIELD:Ljava/lang/String;

    .line 61
    const-string v1, "providerSettings"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PROVIDER_SETTINGS_FIELD:Ljava/lang/String;

    .line 62
    const-string v1, "configurations"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->CONFIGURATIONS_FIELD:Ljava/lang/String;

    .line 64
    const-string v1, "adUnits"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->AD_UNITS_FIELD:Ljava/lang/String;

    .line 65
    const-string v1, "providerLoadName"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PROVIDER_LOAD_NAME_FIELD:Ljava/lang/String;

    .line 66
    const-string v1, "application"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->APPLICATION_FIELD:Ljava/lang/String;

    .line 67
    const-string v1, "rewardedVideo"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->RV_FIELD:Ljava/lang/String;

    .line 68
    const-string v1, "interstitial"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->IS_FIELD:Ljava/lang/String;

    .line 69
    const-string v1, "offerwall"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->OW_FIELD:Ljava/lang/String;

    .line 70
    const-string v1, "banner"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->BN_FIELD:Ljava/lang/String;

    .line 71
    const-string v1, "loggers"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->LOGGERS_FIELD:Ljava/lang/String;

    .line 72
    const-string v1, "segment"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->SEGMENT_FIELD:Ljava/lang/String;

    .line 73
    const-string v1, "events"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->EVENTS_FIELD:Ljava/lang/String;

    .line 75
    const-string v1, "maxNumOfAdaptersToLoadOnStart"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->MAX_NUM_OF_ADAPTERS_TO_LOAD_ON_START_FIELD:Ljava/lang/String;

    .line 76
    const-string v1, "adapterTimeOutInSeconds"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->ADAPTER_TIMEOUT_IN_SECS_FIELD:Ljava/lang/String;

    .line 77
    const-string v1, "atim"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->ADAPTER_TIMEOUT_IN_MILLIS_FIELD:Ljava/lang/String;

    .line 79
    const-string v1, "server"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->SERVER_FIELD:Ljava/lang/String;

    .line 80
    const-string v1, "publisher"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PUBLISHER_FIELD:Ljava/lang/String;

    .line 81
    const-string v1, "console"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->CONSOLE_FIELD:Ljava/lang/String;

    .line 82
    const-string v1, "sendUltraEvents"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->SEND_ULTRA_EVENTS_FIELD:Ljava/lang/String;

    .line 83
    const-string v1, "sendEventsToggle"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->SEND_EVENTS_TOGGLE_FIELD:Ljava/lang/String;

    .line 84
    const-string v1, "serverEventsURL"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->SERVER_EVENTS_URL_FIELD:Ljava/lang/String;

    .line 85
    const-string v1, "serverEventsType"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->SERVER_EVENTS_TYPE:Ljava/lang/String;

    .line 86
    const-string v1, "backupThreshold"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->BACKUP_THRESHOLD_FIELD:Ljava/lang/String;

    .line 87
    const-string v1, "maxNumberOfEvents"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->MAX_NUM_OF_EVENTS_FIELD:Ljava/lang/String;

    .line 88
    const-string v1, "maxEventsPerBatch"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->MAX_EVENTS_PER_BATCH:Ljava/lang/String;

    .line 89
    const-string v1, "optOut"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->OPT_OUT_EVENTS_FIELD:Ljava/lang/String;

    .line 90
    const-string v1, "allowLocation"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->ALLOW_LOCATION:Ljava/lang/String;

    .line 92
    const-string v1, "placements"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PLACEMENTS_FIELD:Ljava/lang/String;

    .line 93
    const-string v1, "placementId"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PLACEMENT_ID_FIELD:Ljava/lang/String;

    .line 94
    const-string v1, "placementName"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PLACEMENT_NAME_FIELD:Ljava/lang/String;

    .line 95
    const-string v1, "delivery"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PLACEMENT_SETTINGS_DELIVERY_FIELD:Ljava/lang/String;

    .line 96
    const-string v1, "capping"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PLACEMENT_SETTINGS_CAPPING_FIELD:Ljava/lang/String;

    .line 97
    const-string v1, "pacing"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PLACEMENT_SETTINGS_PACING_FIELD:Ljava/lang/String;

    .line 98
    const-string v1, "enabled"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PLACEMENT_SETTINGS_ENABLED_FIELD:Ljava/lang/String;

    .line 99
    const-string v1, "maxImpressions"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PLACEMENT_SETTINGS_CAPPING_VALUE_FIELD:Ljava/lang/String;

    .line 100
    const-string v1, "numOfSeconds"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PLACEMENT_SETTINGS_PACING_VALUE_FIELD:Ljava/lang/String;

    .line 101
    const-string v1, "unit"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PLACEMENT_SETTINGS_CAPPING_UNIT_FIELD:Ljava/lang/String;

    .line 102
    const-string v1, "virtualItemName"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->VIRTUAL_ITEM_NAME_FIELD:Ljava/lang/String;

    .line 103
    const-string v1, "virtualItemCount"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->VIRTUAL_ITEM_COUNT_FIELD:Ljava/lang/String;

    .line 104
    const-string v1, "backFill"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->BACKFILL_FIELD:Ljava/lang/String;

    .line 105
    const-string v1, "premium"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PREMIUM_FIELD:Ljava/lang/String;

    .line 106
    const-string v1, "uuidEnabled"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->UUID_ENABLED_FIELD:Ljava/lang/String;

    .line 107
    const-string v1, "abt"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->AB_TESTING:Ljava/lang/String;

    .line 109
    const-string v1, "spId"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->SUB_PROVIDER_ID_FIELD:Ljava/lang/String;

    .line 110
    const-string v1, "mpis"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->IS_MULTIPLE_INSTANCES_FIELD:Ljava/lang/String;

    .line 116
    iput v2, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mRVLoadPosition:I

    .line 117
    iput v2, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mISLoadPosition:I

    .line 118
    iput v2, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mBannerLoadPosition:I

    .line 166
    :try_start_0
    invoke-direct {p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mContext:Landroid/content/Context;

    .line 167
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p1, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mResponse:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mResponse:Lorg/json/JSONObject;

    .line 168
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getMaxRVAdapters()I

    move-result v1

    iput v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mTotalRVAdapters:I

    iput v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mMaxRVAdapters:I

    .line 169
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getMaxISAdapters()I

    move-result v1

    iput v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mTotalISAdapters:I

    iput v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mMaxISAdapters:I

    .line 170
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getMaxBannerAdapters()I

    move-result v1

    iput v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mTotalBannerAdapters:I

    iput v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mMaxBannerAdapters:I

    .line 171
    iget-object v1, p1, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mAppKey:Ljava/lang/String;

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mAppKey:Ljava/lang/String;

    .line 172
    iget-object v1, p1, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mUserId:Ljava/lang/String;

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mUserId:Ljava/lang/String;

    .line 173
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getProviderOrder()Lcom/ironsource/mediationsdk/model/ProviderOrder;

    move-result-object v1

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderOrder:Lcom/ironsource/mediationsdk/model/ProviderOrder;

    .line 174
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getProviderSettingsHolder()Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    move-result-object v1

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderSettingsHolder:Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    .line 175
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v1

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mConfigurations:Lcom/ironsource/mediationsdk/model/Configurations;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    :goto_0
    return-void

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->defaultInit()V

    goto :goto_0
.end method

.method private defaultInit()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 182
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mResponse:Lorg/json/JSONObject;

    .line 183
    iput v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mMaxRVAdapters:I

    .line 184
    iput v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mMaxISAdapters:I

    .line 185
    iput v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mMaxBannerAdapters:I

    .line 186
    const-string v0, ""

    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mAppKey:Ljava/lang/String;

    .line 187
    const-string v0, ""

    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mUserId:Ljava/lang/String;

    .line 188
    new-instance v0, Lcom/ironsource/mediationsdk/model/ProviderOrder;

    invoke-direct {v0}, Lcom/ironsource/mediationsdk/model/ProviderOrder;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderOrder:Lcom/ironsource/mediationsdk/model/ProviderOrder;

    .line 189
    invoke-static {}, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->getProviderSettingsHolder()Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderSettingsHolder:Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    .line 190
    new-instance v0, Lcom/ironsource/mediationsdk/model/Configurations;

    invoke-direct {v0}, Lcom/ironsource/mediationsdk/model/Configurations;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mConfigurations:Lcom/ironsource/mediationsdk/model/Configurations;

    .line 191
    return-void
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 1000
    iget-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getIntConfigValue(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;I)I
    .locals 3
    .param p1, "mainJson"    # Lorg/json/JSONObject;
    .param p2, "secondaryJson"    # Lorg/json/JSONObject;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "defaultValue"    # I

    .prologue
    const/4 v2, 0x0

    .line 660
    const/4 v0, 0x0

    .line 662
    .local v0, "result":I
    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 663
    invoke-virtual {p1, p3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 667
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 668
    move v0, p4

    .line 670
    :cond_1
    return v0

    .line 664
    :cond_2
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 665
    invoke-virtual {p2, p3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method private getLongConfigValue(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;J)J
    .locals 6
    .param p1, "mainJson"    # Lorg/json/JSONObject;
    .param p2, "secondaryJson"    # Lorg/json/JSONObject;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "defaultValue"    # J

    .prologue
    const-wide/16 v4, 0x0

    .line 674
    const-wide/16 v0, 0x0

    .line 676
    .local v0, "result":J
    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 677
    invoke-virtual {p1, p3, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 681
    :cond_0
    :goto_0
    cmp-long v2, v0, v4

    if-nez v2, :cond_1

    .line 682
    move-wide v0, p4

    .line 684
    :cond_1
    return-wide v0

    .line 678
    :cond_2
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 679
    invoke-virtual {p2, p3, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_0
.end method

.method private getPlacementAvailabilitySettings(Lorg/json/JSONObject;)Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;
    .locals 13
    .param p1, "placementJson"    # Lorg/json/JSONObject;

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 769
    if-nez p1, :cond_0

    .line 770
    const/4 v10, 0x0

    .line 804
    :goto_0
    return-object v10

    .line 773
    :cond_0
    new-instance v9, Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings$PlacementAvailabilitySettingsBuilder;

    invoke-direct {v9}, Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings$PlacementAvailabilitySettingsBuilder;-><init>()V

    .line 776
    .local v9, "settingsBuilder":Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings$PlacementAvailabilitySettingsBuilder;
    const-string v12, "delivery"

    invoke-virtual {p1, v12, v10}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 777
    .local v4, "delivery":Z
    invoke-virtual {v9, v4}, Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings$PlacementAvailabilitySettingsBuilder;->delivery(Z)Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings$PlacementAvailabilitySettingsBuilder;

    .line 780
    const-string v12, "capping"

    invoke-virtual {p1, v12}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 781
    .local v0, "cappingJson":Lorg/json/JSONObject;
    if-eqz v0, :cond_2

    .line 782
    const/4 v1, 0x0

    .line 783
    .local v1, "cappingType":Lcom/ironsource/mediationsdk/model/PlacementCappingType;
    const-string v12, "unit"

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 784
    .local v2, "cappingUnitString":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 785
    sget-object v12, Lcom/ironsource/mediationsdk/model/PlacementCappingType;->PER_DAY:Lcom/ironsource/mediationsdk/model/PlacementCappingType;

    invoke-virtual {v12}, Lcom/ironsource/mediationsdk/model/PlacementCappingType;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 786
    sget-object v1, Lcom/ironsource/mediationsdk/model/PlacementCappingType;->PER_DAY:Lcom/ironsource/mediationsdk/model/PlacementCappingType;

    .line 791
    :cond_1
    :goto_1
    const-string v12, "maxImpressions"

    invoke-virtual {v0, v12, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 792
    .local v3, "cappingValue":I
    const-string v12, "enabled"

    invoke-virtual {v0, v12, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_5

    if-lez v3, :cond_5

    move v5, v10

    .line 793
    .local v5, "isCappingEnabled":Z
    :goto_2
    invoke-virtual {v9, v5, v1, v3}, Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings$PlacementAvailabilitySettingsBuilder;->capping(ZLcom/ironsource/mediationsdk/model/PlacementCappingType;I)Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings$PlacementAvailabilitySettingsBuilder;

    .line 797
    .end local v1    # "cappingType":Lcom/ironsource/mediationsdk/model/PlacementCappingType;
    .end local v2    # "cappingUnitString":Ljava/lang/String;
    .end local v3    # "cappingValue":I
    .end local v5    # "isCappingEnabled":Z
    :cond_2
    const-string v12, "pacing"

    invoke-virtual {p1, v12}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 798
    .local v7, "pacingJson":Lorg/json/JSONObject;
    if-eqz v7, :cond_3

    .line 799
    const-string v12, "numOfSeconds"

    invoke-virtual {v7, v12, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    .line 800
    .local v8, "pacingValue":I
    const-string v12, "enabled"

    invoke-virtual {v7, v12, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_6

    if-lez v8, :cond_6

    move v6, v10

    .line 801
    .local v6, "isPacingEnabled":Z
    :goto_3
    invoke-virtual {v9, v6, v8}, Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings$PlacementAvailabilitySettingsBuilder;->pacing(ZI)Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings$PlacementAvailabilitySettingsBuilder;

    .line 804
    .end local v6    # "isPacingEnabled":Z
    .end local v8    # "pacingValue":I
    :cond_3
    invoke-virtual {v9}, Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings$PlacementAvailabilitySettingsBuilder;->build()Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;

    move-result-object v10

    goto :goto_0

    .line 787
    .end local v7    # "pacingJson":Lorg/json/JSONObject;
    .restart local v1    # "cappingType":Lcom/ironsource/mediationsdk/model/PlacementCappingType;
    .restart local v2    # "cappingUnitString":Ljava/lang/String;
    :cond_4
    sget-object v12, Lcom/ironsource/mediationsdk/model/PlacementCappingType;->PER_HOUR:Lcom/ironsource/mediationsdk/model/PlacementCappingType;

    invoke-virtual {v12}, Lcom/ironsource/mediationsdk/model/PlacementCappingType;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 788
    sget-object v1, Lcom/ironsource/mediationsdk/model/PlacementCappingType;->PER_HOUR:Lcom/ironsource/mediationsdk/model/PlacementCappingType;

    goto :goto_1

    .restart local v3    # "cappingValue":I
    :cond_5
    move v5, v11

    .line 792
    goto :goto_2

    .end local v1    # "cappingType":Lcom/ironsource/mediationsdk/model/PlacementCappingType;
    .end local v2    # "cappingUnitString":Ljava/lang/String;
    .end local v3    # "cappingValue":I
    .restart local v7    # "pacingJson":Lorg/json/JSONObject;
    .restart local v8    # "pacingValue":I
    :cond_6
    move v6, v11

    .line 800
    goto :goto_3
.end method

.method private getSection(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "sectionName"    # Ljava/lang/String;

    .prologue
    .line 815
    const/4 v0, 0x0

    .line 817
    .local v0, "result":Lorg/json/JSONObject;
    if-eqz p1, :cond_0

    .line 818
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 820
    :cond_0
    return-object v0
.end method

.method private parseConfigurations()V
    .locals 85

    .prologue
    .line 431
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mResponse:Lorg/json/JSONObject;

    move-object/from16 v16, v0

    const-string v23, "configurations"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getSection(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v52

    .line 432
    .local v52, "configurationsSection":Lorg/json/JSONObject;
    const-string v16, "adUnits"

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getSection(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v42

    .line 433
    .local v42, "adUnitSection":Lorg/json/JSONObject;
    const-string v16, "application"

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getSection(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v26

    .line 434
    .local v26, "appSection":Lorg/json/JSONObject;
    const-string v16, "rewardedVideo"

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getSection(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v76

    .line 435
    .local v76, "rvSection":Lorg/json/JSONObject;
    const-string v16, "interstitial"

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getSection(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v60

    .line 436
    .local v60, "isSection":Lorg/json/JSONObject;
    const-string v16, "offerwall"

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getSection(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v68

    .line 437
    .local v68, "owSection":Lorg/json/JSONObject;
    const-string v16, "banner"

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getSection(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v25

    .line 439
    .local v25, "bnSection":Lorg/json/JSONObject;
    const-string v16, "events"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getSection(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v44

    .line 440
    .local v44, "appEventsSection":Lorg/json/JSONObject;
    const-string v16, "loggers"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getSection(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v65

    .line 441
    .local v65, "loggerSection":Lorg/json/JSONObject;
    const-string v16, "segment"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getSection(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v82

    .line 443
    .local v82, "segmentSection":Lorg/json/JSONObject;
    const/16 v36, 0x0

    .line 444
    .local v36, "rvConfig":Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;
    const/16 v37, 0x0

    .line 445
    .local v37, "isConfig":Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;
    const/16 v38, 0x0

    .line 446
    .local v38, "owConfig":Lcom/ironsource/mediationsdk/model/OfferwallConfigurations;
    const/16 v39, 0x0

    .line 449
    .local v39, "bannerConfig":Lcom/ironsource/mediationsdk/model/BannerConfigurations;
    if-eqz v26, :cond_0

    .line 450
    const-string v16, "uuidEnabled"

    const/16 v23, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v63

    .line 451
    .local v63, "isUuidEnabled":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const-string v23, "uuidEnabled"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    move/from16 v2, v63

    invoke-static {v0, v1, v2}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->saveBooleanToSharedPrefs(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 454
    .end local v63    # "isUuidEnabled":Z
    :cond_0
    if-eqz v44, :cond_1

    .line 455
    const-string v16, "abt"

    move-object/from16 v0, v44

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 456
    .local v41, "abt":Ljava/lang/String;
    invoke-static/range {v41 .. v41}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_1

    .line 457
    invoke-static/range {v41 .. v41}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->setABT(Ljava/lang/String;)V

    .line 462
    .end local v41    # "abt":Ljava/lang/String;
    :cond_1
    if-eqz v76, :cond_6

    .line 463
    const-string v16, "placements"

    move-object/from16 v0, v76

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v75

    .line 464
    .local v75, "rvPlacementsSection":Lorg/json/JSONArray;
    const-string v16, "events"

    move-object/from16 v0, p0

    move-object/from16 v1, v76

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getSection(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v74

    .line 466
    .local v74, "rvEventsSection":Lorg/json/JSONObject;
    const-string v16, "maxNumOfAdaptersToLoadOnStart"

    const/16 v23, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v76

    move-object/from16 v2, v26

    move-object/from16 v3, v16

    move/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getIntConfigValue(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v77

    .line 467
    .local v77, "rvSmartLoadAmount":I
    const-string v16, "adapterTimeOutInSeconds"

    const/16 v23, 0x3c

    move-object/from16 v0, p0

    move-object/from16 v1, v76

    move-object/from16 v2, v26

    move-object/from16 v3, v16

    move/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getIntConfigValue(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v78

    .line 468
    .local v78, "rvSmartLoadTimeout":I
    const-string v73, "KTO"

    .line 470
    .local v73, "rvAlgorithm":Ljava/lang/String;
    move-object/from16 v0, v74

    move-object/from16 v1, v44

    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->mergeJsons(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v72

    .line 472
    .local v72, "rewardedVideoCombinedEvents":Lorg/json/JSONObject;
    const-string v16, "sendUltraEvents"

    const/16 v23, 0x0

    move-object/from16 v0, v72

    move-object/from16 v1, v16

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 473
    .local v7, "rvUltraEvents":Z
    const-string v16, "sendEventsToggle"

    const/16 v23, 0x0

    move-object/from16 v0, v72

    move-object/from16 v1, v16

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 474
    .local v8, "rvEventsToggle":Z
    const-string v16, "serverEventsURL"

    const-string v23, ""

    move-object/from16 v0, v72

    move-object/from16 v1, v16

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 475
    .local v9, "rvEventsUrl":Ljava/lang/String;
    const-string v16, "serverEventsType"

    const-string v23, ""

    move-object/from16 v0, v72

    move-object/from16 v1, v16

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 476
    .local v10, "rvEventsType":Ljava/lang/String;
    const-string v16, "backupThreshold"

    const/16 v23, -0x1

    move-object/from16 v0, v72

    move-object/from16 v1, v16

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v11

    .line 477
    .local v11, "rvBackupThreshold":I
    const-string v16, "maxNumberOfEvents"

    const/16 v23, -0x1

    move-object/from16 v0, v72

    move-object/from16 v1, v16

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v12

    .line 478
    .local v12, "rvMaxNumOfEvents":I
    const-string v16, "maxEventsPerBatch"

    const/16 v23, 0x1388

    move-object/from16 v0, v72

    move-object/from16 v1, v16

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v13

    .line 480
    .local v13, "rvMaxEventsPerBatch":I
    const/4 v14, 0x0

    .line 481
    .local v14, "optOutEvents":[I
    const-string v16, "optOut"

    move-object/from16 v0, v72

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v66

    .line 482
    .local v66, "optOutJsonArray":Lorg/json/JSONArray;
    if-eqz v66, :cond_2

    .line 483
    invoke-virtual/range {v66 .. v66}, Lorg/json/JSONArray;->length()I

    move-result v16

    move/from16 v0, v16

    new-array v14, v0, [I

    .line 484
    const/16 v56, 0x0

    .local v56, "i":I
    :goto_0
    invoke-virtual/range {v66 .. v66}, Lorg/json/JSONArray;->length()I

    move-result v16

    move/from16 v0, v56

    move/from16 v1, v16

    if-ge v0, v1, :cond_2

    .line 485
    move-object/from16 v0, v66

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optInt(I)I

    move-result v16

    aput v16, v14, v56

    .line 484
    add-int/lit8 v56, v56, 0x1

    goto :goto_0

    .line 489
    .end local v56    # "i":I
    :cond_2
    new-instance v6, Lcom/ironsource/mediationsdk/model/ApplicationEvents;

    invoke-direct/range {v6 .. v14}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;-><init>(ZZLjava/lang/String;Ljava/lang/String;III[I)V

    .line 492
    .local v6, "rvEvents":Lcom/ironsource/mediationsdk/model/ApplicationEvents;
    new-instance v36, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;

    .end local v36    # "rvConfig":Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;
    move-object/from16 v0, v36

    move/from16 v1, v77

    move/from16 v2, v78

    move-object/from16 v3, v73

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;-><init>(IILjava/lang/String;Lcom/ironsource/mediationsdk/model/ApplicationEvents;)V

    .line 494
    .restart local v36    # "rvConfig":Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;
    if-eqz v75, :cond_4

    .line 495
    const/16 v56, 0x0

    .restart local v56    # "i":I
    :goto_1
    invoke-virtual/range {v75 .. v75}, Lorg/json/JSONArray;->length()I

    move-result v16

    move/from16 v0, v56

    move/from16 v1, v16

    if-ge v0, v1, :cond_4

    .line 496
    move-object/from16 v0, v75

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v84

    .line 497
    .local v84, "singlePlacementJson":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    move-object/from16 v1, v84

    invoke-direct {v0, v1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->parseSingleRVPlacement(Lorg/json/JSONObject;)Lcom/ironsource/mediationsdk/model/Placement;

    move-result-object v69

    .line 499
    .local v69, "placement":Lcom/ironsource/mediationsdk/model/Placement;
    if-eqz v69, :cond_3

    .line 500
    move-object/from16 v0, v36

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->addRewardedVideoPlacement(Lcom/ironsource/mediationsdk/model/Placement;)V

    .line 495
    :cond_3
    add-int/lit8 v56, v56, 0x1

    goto :goto_1

    .line 504
    .end local v56    # "i":I
    .end local v69    # "placement":Lcom/ironsource/mediationsdk/model/Placement;
    .end local v84    # "singlePlacementJson":Lorg/json/JSONObject;
    :cond_4
    const-string v16, "backFill"

    move-object/from16 v0, v76

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    .line 505
    .local v45, "backFillProviderName":Ljava/lang/String;
    invoke-static/range {v45 .. v45}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_5

    .line 506
    move-object/from16 v0, v36

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->setBackFillProviderName(Ljava/lang/String;)V

    .line 509
    :cond_5
    const-string v16, "premium"

    move-object/from16 v0, v76

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v70

    .line 510
    .local v70, "premiumProviderName":Ljava/lang/String;
    invoke-static/range {v70 .. v70}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_6

    .line 511
    move-object/from16 v0, v36

    move-object/from16 v1, v70

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->setPremiumProviderName(Ljava/lang/String;)V

    .line 516
    .end local v6    # "rvEvents":Lcom/ironsource/mediationsdk/model/ApplicationEvents;
    .end local v7    # "rvUltraEvents":Z
    .end local v8    # "rvEventsToggle":Z
    .end local v9    # "rvEventsUrl":Ljava/lang/String;
    .end local v10    # "rvEventsType":Ljava/lang/String;
    .end local v11    # "rvBackupThreshold":I
    .end local v12    # "rvMaxNumOfEvents":I
    .end local v13    # "rvMaxEventsPerBatch":I
    .end local v14    # "optOutEvents":[I
    .end local v45    # "backFillProviderName":Ljava/lang/String;
    .end local v66    # "optOutJsonArray":Lorg/json/JSONArray;
    .end local v70    # "premiumProviderName":Ljava/lang/String;
    .end local v72    # "rewardedVideoCombinedEvents":Lorg/json/JSONObject;
    .end local v73    # "rvAlgorithm":Ljava/lang/String;
    .end local v74    # "rvEventsSection":Lorg/json/JSONObject;
    .end local v75    # "rvPlacementsSection":Lorg/json/JSONArray;
    .end local v77    # "rvSmartLoadAmount":I
    .end local v78    # "rvSmartLoadTimeout":I
    :cond_6
    if-eqz v60, :cond_b

    .line 517
    const-string v16, "placements"

    move-object/from16 v0, v60

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v59

    .line 518
    .local v59, "isPlacementsSection":Lorg/json/JSONArray;
    const-string v16, "events"

    move-object/from16 v0, p0

    move-object/from16 v1, v60

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getSection(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v58

    .line 520
    .local v58, "isEventsSection":Lorg/json/JSONObject;
    const-string v16, "maxNumOfAdaptersToLoadOnStart"

    const/16 v23, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v60

    move-object/from16 v2, v26

    move-object/from16 v3, v16

    move/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getIntConfigValue(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v61

    .line 521
    .local v61, "isSmartLoadAmount":I
    const-string v16, "adapterTimeOutInSeconds"

    const/16 v23, 0x3c

    move-object/from16 v0, p0

    move-object/from16 v1, v60

    move-object/from16 v2, v26

    move-object/from16 v3, v16

    move/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getIntConfigValue(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v62

    .line 523
    .local v62, "isSmartLoadTimeout":I
    move-object/from16 v0, v58

    move-object/from16 v1, v44

    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->mergeJsons(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v57

    .line 525
    .local v57, "interstitialCombinedEvents":Lorg/json/JSONObject;
    const-string v16, "sendEventsToggle"

    const/16 v23, 0x0

    move-object/from16 v0, v57

    move-object/from16 v1, v16

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v17

    .line 526
    .local v17, "isEventsToggle":Z
    const-string v16, "serverEventsURL"

    const-string v23, ""

    move-object/from16 v0, v57

    move-object/from16 v1, v16

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 527
    .local v18, "isEventsUrl":Ljava/lang/String;
    const-string v16, "serverEventsType"

    const-string v23, ""

    move-object/from16 v0, v57

    move-object/from16 v1, v16

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 528
    .local v19, "isEventsType":Ljava/lang/String;
    const-string v16, "backupThreshold"

    const/16 v23, -0x1

    move-object/from16 v0, v57

    move-object/from16 v1, v16

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v20

    .line 529
    .local v20, "isBackupThreshold":I
    const-string v16, "maxNumberOfEvents"

    const/16 v23, -0x1

    move-object/from16 v0, v57

    move-object/from16 v1, v16

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v21

    .line 530
    .local v21, "isMaxNumOfEvents":I
    const-string v16, "maxEventsPerBatch"

    const/16 v23, 0x1388

    move-object/from16 v0, v57

    move-object/from16 v1, v16

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v22

    .line 532
    .local v22, "isMaxEventsPerBatch":I
    const/4 v14, 0x0

    .line 533
    .restart local v14    # "optOutEvents":[I
    const-string v16, "optOut"

    move-object/from16 v0, v57

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v66

    .line 534
    .restart local v66    # "optOutJsonArray":Lorg/json/JSONArray;
    if-eqz v66, :cond_7

    .line 535
    invoke-virtual/range {v66 .. v66}, Lorg/json/JSONArray;->length()I

    move-result v16

    move/from16 v0, v16

    new-array v14, v0, [I

    .line 536
    const/16 v56, 0x0

    .restart local v56    # "i":I
    :goto_2
    invoke-virtual/range {v66 .. v66}, Lorg/json/JSONArray;->length()I

    move-result v16

    move/from16 v0, v56

    move/from16 v1, v16

    if-ge v0, v1, :cond_7

    .line 537
    move-object/from16 v0, v66

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optInt(I)I

    move-result v16

    aput v16, v14, v56

    .line 536
    add-int/lit8 v56, v56, 0x1

    goto :goto_2

    .line 541
    .end local v56    # "i":I
    :cond_7
    new-instance v15, Lcom/ironsource/mediationsdk/model/ApplicationEvents;

    const/16 v16, 0x0

    move-object/from16 v23, v14

    invoke-direct/range {v15 .. v23}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;-><init>(ZZLjava/lang/String;Ljava/lang/String;III[I)V

    .line 544
    .local v15, "isEvents":Lcom/ironsource/mediationsdk/model/ApplicationEvents;
    new-instance v37, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;

    .end local v37    # "isConfig":Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;
    move-object/from16 v0, v37

    move/from16 v1, v61

    move/from16 v2, v62

    invoke-direct {v0, v1, v2, v15}, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;-><init>(IILcom/ironsource/mediationsdk/model/ApplicationEvents;)V

    .line 546
    .restart local v37    # "isConfig":Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;
    if-eqz v59, :cond_9

    .line 547
    const/16 v56, 0x0

    .restart local v56    # "i":I
    :goto_3
    invoke-virtual/range {v59 .. v59}, Lorg/json/JSONArray;->length()I

    move-result v16

    move/from16 v0, v56

    move/from16 v1, v16

    if-ge v0, v1, :cond_9

    .line 548
    move-object/from16 v0, v59

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v84

    .line 549
    .restart local v84    # "singlePlacementJson":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    move-object/from16 v1, v84

    invoke-direct {v0, v1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->parseSingleISPlacement(Lorg/json/JSONObject;)Lcom/ironsource/mediationsdk/model/InterstitialPlacement;

    move-result-object v69

    .line 551
    .local v69, "placement":Lcom/ironsource/mediationsdk/model/InterstitialPlacement;
    if-eqz v69, :cond_8

    .line 552
    move-object/from16 v0, v37

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;->addInterstitialPlacement(Lcom/ironsource/mediationsdk/model/InterstitialPlacement;)V

    .line 547
    :cond_8
    add-int/lit8 v56, v56, 0x1

    goto :goto_3

    .line 556
    .end local v56    # "i":I
    .end local v69    # "placement":Lcom/ironsource/mediationsdk/model/InterstitialPlacement;
    .end local v84    # "singlePlacementJson":Lorg/json/JSONObject;
    :cond_9
    const-string v16, "backFill"

    move-object/from16 v0, v60

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    .line 557
    .restart local v45    # "backFillProviderName":Ljava/lang/String;
    invoke-static/range {v45 .. v45}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_a

    .line 558
    move-object/from16 v0, v37

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;->setBackFillProviderName(Ljava/lang/String;)V

    .line 561
    :cond_a
    const-string v16, "premium"

    move-object/from16 v0, v60

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v70

    .line 562
    .restart local v70    # "premiumProviderName":Ljava/lang/String;
    invoke-static/range {v70 .. v70}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_b

    .line 563
    move-object/from16 v0, v37

    move-object/from16 v1, v70

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;->setPremiumProviderName(Ljava/lang/String;)V

    .line 569
    .end local v14    # "optOutEvents":[I
    .end local v15    # "isEvents":Lcom/ironsource/mediationsdk/model/ApplicationEvents;
    .end local v17    # "isEventsToggle":Z
    .end local v18    # "isEventsUrl":Ljava/lang/String;
    .end local v19    # "isEventsType":Ljava/lang/String;
    .end local v20    # "isBackupThreshold":I
    .end local v21    # "isMaxNumOfEvents":I
    .end local v22    # "isMaxEventsPerBatch":I
    .end local v45    # "backFillProviderName":Ljava/lang/String;
    .end local v57    # "interstitialCombinedEvents":Lorg/json/JSONObject;
    .end local v58    # "isEventsSection":Lorg/json/JSONObject;
    .end local v59    # "isPlacementsSection":Lorg/json/JSONArray;
    .end local v61    # "isSmartLoadAmount":I
    .end local v62    # "isSmartLoadTimeout":I
    .end local v66    # "optOutJsonArray":Lorg/json/JSONArray;
    .end local v70    # "premiumProviderName":Ljava/lang/String;
    :cond_b
    if-eqz v25, :cond_e

    .line 570
    const-string v16, "placements"

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v48

    .line 572
    .local v48, "bnPlacementsSection":Lorg/json/JSONArray;
    const-string v16, "events"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getSection(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v47

    .line 573
    .local v47, "bnEventsSection":Lorg/json/JSONObject;
    const-string v16, "maxNumOfAdaptersToLoadOnStart"

    const/16 v23, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v16

    move/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getIntConfigValue(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v49

    .line 574
    .local v49, "bnSmartLoadAmount":I
    const-string v27, "atim"

    const-wide/16 v28, 0x2710

    move-object/from16 v24, p0

    invoke-direct/range {v24 .. v29}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getLongConfigValue(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v50

    .line 576
    .local v50, "bnSmartLoadTimeout":J
    move-object/from16 v0, v47

    move-object/from16 v1, v44

    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->mergeJsons(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v46

    .line 578
    .local v46, "bannerCombinedEvents":Lorg/json/JSONObject;
    const-string v16, "sendEventsToggle"

    const/16 v23, 0x0

    move-object/from16 v0, v46

    move-object/from16 v1, v16

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v29

    .line 579
    .local v29, "bnEventsToggle":Z
    const-string v16, "serverEventsURL"

    const-string v23, ""

    move-object/from16 v0, v46

    move-object/from16 v1, v16

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 580
    .local v30, "bnEventsUrl":Ljava/lang/String;
    const-string v16, "serverEventsType"

    const-string v23, ""

    move-object/from16 v0, v46

    move-object/from16 v1, v16

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 581
    .local v31, "bnEventsType":Ljava/lang/String;
    const-string v16, "backupThreshold"

    const/16 v23, -0x1

    move-object/from16 v0, v46

    move-object/from16 v1, v16

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v32

    .line 582
    .local v32, "bnBackupThreshold":I
    const-string v16, "maxNumberOfEvents"

    const/16 v23, -0x1

    move-object/from16 v0, v46

    move-object/from16 v1, v16

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v33

    .line 583
    .local v33, "bnMaxNumOfEvents":I
    const-string v16, "maxEventsPerBatch"

    const/16 v23, 0x1388

    move-object/from16 v0, v46

    move-object/from16 v1, v16

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v34

    .line 585
    .local v34, "bnMaxEventsPerBatch":I
    const/4 v14, 0x0

    .line 586
    .restart local v14    # "optOutEvents":[I
    const-string v16, "optOut"

    move-object/from16 v0, v46

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v66

    .line 587
    .restart local v66    # "optOutJsonArray":Lorg/json/JSONArray;
    if-eqz v66, :cond_c

    .line 588
    invoke-virtual/range {v66 .. v66}, Lorg/json/JSONArray;->length()I

    move-result v16

    move/from16 v0, v16

    new-array v14, v0, [I

    .line 589
    const/16 v56, 0x0

    .restart local v56    # "i":I
    :goto_4
    invoke-virtual/range {v66 .. v66}, Lorg/json/JSONArray;->length()I

    move-result v16

    move/from16 v0, v56

    move/from16 v1, v16

    if-ge v0, v1, :cond_c

    .line 590
    move-object/from16 v0, v66

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optInt(I)I

    move-result v16

    aput v16, v14, v56

    .line 589
    add-int/lit8 v56, v56, 0x1

    goto :goto_4

    .line 593
    .end local v56    # "i":I
    :cond_c
    new-instance v27, Lcom/ironsource/mediationsdk/model/ApplicationEvents;

    const/16 v28, 0x0

    move-object/from16 v35, v14

    invoke-direct/range {v27 .. v35}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;-><init>(ZZLjava/lang/String;Ljava/lang/String;III[I)V

    .line 596
    .local v27, "bnEvents":Lcom/ironsource/mediationsdk/model/ApplicationEvents;
    new-instance v39, Lcom/ironsource/mediationsdk/model/BannerConfigurations;

    .end local v39    # "bannerConfig":Lcom/ironsource/mediationsdk/model/BannerConfigurations;
    move-object/from16 v0, v39

    move/from16 v1, v49

    move-wide/from16 v2, v50

    move-object/from16 v4, v27

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ironsource/mediationsdk/model/BannerConfigurations;-><init>(IJLcom/ironsource/mediationsdk/model/ApplicationEvents;)V

    .line 598
    .restart local v39    # "bannerConfig":Lcom/ironsource/mediationsdk/model/BannerConfigurations;
    if-eqz v48, :cond_e

    .line 599
    const/16 v56, 0x0

    .restart local v56    # "i":I
    :goto_5
    invoke-virtual/range {v48 .. v48}, Lorg/json/JSONArray;->length()I

    move-result v16

    move/from16 v0, v56

    move/from16 v1, v16

    if-ge v0, v1, :cond_e

    .line 600
    move-object/from16 v0, v48

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v84

    .line 601
    .restart local v84    # "singlePlacementJson":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    move-object/from16 v1, v84

    invoke-direct {v0, v1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->parseSingleBNPlacement(Lorg/json/JSONObject;)Lcom/ironsource/mediationsdk/model/BannerPlacement;

    move-result-object v69

    .line 603
    .local v69, "placement":Lcom/ironsource/mediationsdk/model/BannerPlacement;
    if-eqz v69, :cond_d

    .line 604
    move-object/from16 v0, v39

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/model/BannerConfigurations;->addBannerPlacement(Lcom/ironsource/mediationsdk/model/BannerPlacement;)V

    .line 599
    :cond_d
    add-int/lit8 v56, v56, 0x1

    goto :goto_5

    .line 611
    .end local v14    # "optOutEvents":[I
    .end local v27    # "bnEvents":Lcom/ironsource/mediationsdk/model/ApplicationEvents;
    .end local v29    # "bnEventsToggle":Z
    .end local v30    # "bnEventsUrl":Ljava/lang/String;
    .end local v31    # "bnEventsType":Ljava/lang/String;
    .end local v32    # "bnBackupThreshold":I
    .end local v33    # "bnMaxNumOfEvents":I
    .end local v34    # "bnMaxEventsPerBatch":I
    .end local v46    # "bannerCombinedEvents":Lorg/json/JSONObject;
    .end local v47    # "bnEventsSection":Lorg/json/JSONObject;
    .end local v48    # "bnPlacementsSection":Lorg/json/JSONArray;
    .end local v49    # "bnSmartLoadAmount":I
    .end local v50    # "bnSmartLoadTimeout":J
    .end local v56    # "i":I
    .end local v66    # "optOutJsonArray":Lorg/json/JSONArray;
    .end local v69    # "placement":Lcom/ironsource/mediationsdk/model/BannerPlacement;
    .end local v84    # "singlePlacementJson":Lorg/json/JSONObject;
    :cond_e
    if-eqz v68, :cond_10

    .line 612
    const-string v16, "placements"

    move-object/from16 v0, v68

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v67

    .line 613
    .local v67, "owPlacementsSection":Lorg/json/JSONArray;
    new-instance v38, Lcom/ironsource/mediationsdk/model/OfferwallConfigurations;

    .end local v38    # "owConfig":Lcom/ironsource/mediationsdk/model/OfferwallConfigurations;
    invoke-direct/range {v38 .. v38}, Lcom/ironsource/mediationsdk/model/OfferwallConfigurations;-><init>()V

    .line 614
    .restart local v38    # "owConfig":Lcom/ironsource/mediationsdk/model/OfferwallConfigurations;
    if-eqz v67, :cond_10

    .line 615
    const/16 v56, 0x0

    .restart local v56    # "i":I
    :goto_6
    invoke-virtual/range {v67 .. v67}, Lorg/json/JSONArray;->length()I

    move-result v16

    move/from16 v0, v56

    move/from16 v1, v16

    if-ge v0, v1, :cond_10

    .line 616
    move-object/from16 v0, v67

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v84

    .line 617
    .restart local v84    # "singlePlacementJson":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    move-object/from16 v1, v84

    invoke-direct {v0, v1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->parseSingleOWPlacement(Lorg/json/JSONObject;)Lcom/ironsource/mediationsdk/model/OfferwallPlacement;

    move-result-object v69

    .line 619
    .local v69, "placement":Lcom/ironsource/mediationsdk/model/OfferwallPlacement;
    if-eqz v69, :cond_f

    .line 620
    move-object/from16 v0, v38

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/model/OfferwallConfigurations;->addOfferwallPlacement(Lcom/ironsource/mediationsdk/model/OfferwallPlacement;)V

    .line 615
    :cond_f
    add-int/lit8 v56, v56, 0x1

    goto :goto_6

    .line 628
    .end local v56    # "i":I
    .end local v67    # "owPlacementsSection":Lorg/json/JSONArray;
    .end local v69    # "placement":Lcom/ironsource/mediationsdk/model/OfferwallPlacement;
    .end local v84    # "singlePlacementJson":Lorg/json/JSONObject;
    :cond_10
    const-string v16, "server"

    const/16 v23, 0x3

    move-object/from16 v0, v65

    move-object/from16 v1, v16

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v83

    .line 629
    .local v83, "serverLoggerLevel":I
    const-string v16, "publisher"

    const/16 v23, 0x3

    move-object/from16 v0, v65

    move-object/from16 v1, v16

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v71

    .line 630
    .local v71, "publisherLoggerLevel":I
    const-string v16, "console"

    const/16 v23, 0x3

    move-object/from16 v0, v65

    move-object/from16 v1, v16

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v53

    .line 632
    .local v53, "consoleLoggerLevel":I
    new-instance v64, Lcom/ironsource/mediationsdk/model/ApplicationLogger;

    move-object/from16 v0, v64

    move/from16 v1, v83

    move/from16 v2, v71

    move/from16 v3, v53

    invoke-direct {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/model/ApplicationLogger;-><init>(III)V

    .line 636
    .local v64, "logger":Lcom/ironsource/mediationsdk/model/ApplicationLogger;
    const/16 v79, 0x0

    .line 637
    .local v79, "segmentData":Lcom/ironsource/mediationsdk/model/ServerSegmetData;
    if-eqz v82, :cond_11

    .line 638
    const-string v16, "name"

    const-string v23, ""

    move-object/from16 v0, v82

    move-object/from16 v1, v16

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v81

    .line 639
    .local v81, "segmentName":Ljava/lang/String;
    const-string v16, "id"

    const-string v23, "-1"

    move-object/from16 v0, v82

    move-object/from16 v1, v16

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v80

    .line 640
    .local v80, "segmentId":Ljava/lang/String;
    const-string v16, "custom"

    move-object/from16 v0, v82

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v54

    .line 641
    .local v54, "customSegments":Lorg/json/JSONObject;
    new-instance v79, Lcom/ironsource/mediationsdk/model/ServerSegmetData;

    .end local v79    # "segmentData":Lcom/ironsource/mediationsdk/model/ServerSegmetData;
    move-object/from16 v0, v79

    move-object/from16 v1, v81

    move-object/from16 v2, v80

    move-object/from16 v3, v54

    invoke-direct {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/model/ServerSegmetData;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 645
    .end local v54    # "customSegments":Lorg/json/JSONObject;
    .end local v80    # "segmentId":Ljava/lang/String;
    .end local v81    # "segmentName":Ljava/lang/String;
    .restart local v79    # "segmentData":Lcom/ironsource/mediationsdk/model/ServerSegmetData;
    :cond_11
    new-instance v40, Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;

    move-object/from16 v0, v40

    move-object/from16 v1, v64

    move-object/from16 v2, v79

    invoke-direct {v0, v1, v2}, Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;-><init>(Lcom/ironsource/mediationsdk/model/ApplicationLogger;Lcom/ironsource/mediationsdk/model/ServerSegmetData;)V

    .line 650
    .local v40, "appConfig":Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;
    const-string v16, "allowLocation"

    const/16 v23, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v43

    .line 651
    .local v43, "allowLocation":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const-string v23, "GeneralProperties.ALLOW_LOCATION_SHARED_PREFS_KEY"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    move/from16 v2, v43

    invoke-static {v0, v1, v2}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->saveBooleanToSharedPrefs(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 653
    new-instance v35, Lcom/ironsource/mediationsdk/model/Configurations;

    invoke-direct/range {v35 .. v40}, Lcom/ironsource/mediationsdk/model/Configurations;-><init>(Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;Lcom/ironsource/mediationsdk/model/OfferwallConfigurations;Lcom/ironsource/mediationsdk/model/BannerConfigurations;Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;)V

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mConfigurations:Lcom/ironsource/mediationsdk/model/Configurations;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 657
    .end local v25    # "bnSection":Lorg/json/JSONObject;
    .end local v26    # "appSection":Lorg/json/JSONObject;
    .end local v36    # "rvConfig":Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;
    .end local v37    # "isConfig":Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;
    .end local v38    # "owConfig":Lcom/ironsource/mediationsdk/model/OfferwallConfigurations;
    .end local v39    # "bannerConfig":Lcom/ironsource/mediationsdk/model/BannerConfigurations;
    .end local v40    # "appConfig":Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;
    .end local v42    # "adUnitSection":Lorg/json/JSONObject;
    .end local v43    # "allowLocation":Z
    .end local v44    # "appEventsSection":Lorg/json/JSONObject;
    .end local v52    # "configurationsSection":Lorg/json/JSONObject;
    .end local v53    # "consoleLoggerLevel":I
    .end local v60    # "isSection":Lorg/json/JSONObject;
    .end local v64    # "logger":Lcom/ironsource/mediationsdk/model/ApplicationLogger;
    .end local v65    # "loggerSection":Lorg/json/JSONObject;
    .end local v68    # "owSection":Lorg/json/JSONObject;
    .end local v71    # "publisherLoggerLevel":I
    .end local v76    # "rvSection":Lorg/json/JSONObject;
    .end local v79    # "segmentData":Lcom/ironsource/mediationsdk/model/ServerSegmetData;
    .end local v82    # "segmentSection":Lorg/json/JSONObject;
    .end local v83    # "serverLoggerLevel":I
    :goto_7
    return-void

    .line 654
    :catch_0
    move-exception v55

    .line 655
    .local v55, "e":Ljava/lang/Exception;
    invoke-virtual/range {v55 .. v55}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7
.end method

.method private parseProviderOrder()V
    .locals 12

    .prologue
    .line 271
    :try_start_0
    iget-object v10, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mResponse:Lorg/json/JSONObject;

    const-string v11, "providerOrder"

    invoke-direct {p0, v10, v11}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getSection(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 272
    .local v7, "providerOrderSection":Lorg/json/JSONObject;
    const-string v10, "rewardedVideo"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 273
    .local v8, "rvOrderSection":Lorg/json/JSONArray;
    const-string v10, "interstitial"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 274
    .local v4, "isOrderSection":Lorg/json/JSONArray;
    const-string v10, "banner"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 276
    .local v1, "bnOrderSection":Lorg/json/JSONArray;
    new-instance v10, Lcom/ironsource/mediationsdk/model/ProviderOrder;

    invoke-direct {v10}, Lcom/ironsource/mediationsdk/model/ProviderOrder;-><init>()V

    iput-object v10, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderOrder:Lcom/ironsource/mediationsdk/model/ProviderOrder;

    .line 278
    if-eqz v8, :cond_4

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v10

    if-eqz v10, :cond_4

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v10

    invoke-virtual {v10}, Lcom/ironsource/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 279
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v10

    invoke-virtual {v10}, Lcom/ironsource/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v10

    invoke-virtual {v10}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->getBackFillProviderName()Ljava/lang/String;

    move-result-object v0

    .line 280
    .local v0, "backFillProviderName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v10

    invoke-virtual {v10}, Lcom/ironsource/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v10

    invoke-virtual {v10}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->getPremiumProviderName()Ljava/lang/String;

    move-result-object v5

    .line 281
    .local v5, "premiumProviderName":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v3, v10, :cond_4

    .line 282
    invoke-virtual {v8, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v6

    .line 284
    .local v6, "providerName":Ljava/lang/String;
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 286
    iget-object v10, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderOrder:Lcom/ironsource/mediationsdk/model/ProviderOrder;

    invoke-virtual {v10, v0}, Lcom/ironsource/mediationsdk/model/ProviderOrder;->setRVBackFillProvider(Ljava/lang/String;)V

    .line 281
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 289
    :cond_1
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 290
    iget-object v10, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderOrder:Lcom/ironsource/mediationsdk/model/ProviderOrder;

    invoke-virtual {v10, v5}, Lcom/ironsource/mediationsdk/model/ProviderOrder;->setRVPremiumProvider(Ljava/lang/String;)V

    .line 293
    :cond_2
    iget-object v10, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderOrder:Lcom/ironsource/mediationsdk/model/ProviderOrder;

    invoke-virtual {v10, v6}, Lcom/ironsource/mediationsdk/model/ProviderOrder;->addRewardedVideoProvider(Ljava/lang/String;)V

    .line 295
    invoke-static {}, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->getProviderSettingsHolder()Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    move-result-object v10

    invoke-virtual {v10, v6}, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->getProviderSettings(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/ProviderSettings;

    move-result-object v9

    .line 296
    .local v9, "settings":Lcom/ironsource/mediationsdk/model/ProviderSettings;
    if-eqz v9, :cond_0

    .line 297
    invoke-virtual {v9, v3}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->setRewardedVideoPriority(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 338
    .end local v0    # "backFillProviderName":Ljava/lang/String;
    .end local v1    # "bnOrderSection":Lorg/json/JSONArray;
    .end local v3    # "i":I
    .end local v4    # "isOrderSection":Lorg/json/JSONArray;
    .end local v5    # "premiumProviderName":Ljava/lang/String;
    .end local v6    # "providerName":Ljava/lang/String;
    .end local v7    # "providerOrderSection":Lorg/json/JSONObject;
    .end local v8    # "rvOrderSection":Lorg/json/JSONArray;
    .end local v9    # "settings":Lcom/ironsource/mediationsdk/model/ProviderSettings;
    :catch_0
    move-exception v2

    .line 339
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 341
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3
    return-void

    .line 302
    .restart local v1    # "bnOrderSection":Lorg/json/JSONArray;
    .restart local v4    # "isOrderSection":Lorg/json/JSONArray;
    .restart local v7    # "providerOrderSection":Lorg/json/JSONObject;
    .restart local v8    # "rvOrderSection":Lorg/json/JSONArray;
    :cond_4
    if-eqz v4, :cond_8

    :try_start_1
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v10

    if-eqz v10, :cond_8

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v10

    invoke-virtual {v10}, Lcom/ironsource/mediationsdk/model/Configurations;->getInterstitialConfigurations()Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;

    move-result-object v10

    if-eqz v10, :cond_8

    .line 303
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v10

    invoke-virtual {v10}, Lcom/ironsource/mediationsdk/model/Configurations;->getInterstitialConfigurations()Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;

    move-result-object v10

    invoke-virtual {v10}, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;->getBackFillProviderName()Ljava/lang/String;

    move-result-object v0

    .line 304
    .restart local v0    # "backFillProviderName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v10

    invoke-virtual {v10}, Lcom/ironsource/mediationsdk/model/Configurations;->getInterstitialConfigurations()Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;

    move-result-object v10

    invoke-virtual {v10}, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;->getPremiumProviderName()Ljava/lang/String;

    move-result-object v5

    .line 305
    .restart local v5    # "premiumProviderName":Ljava/lang/String;
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v3, v10, :cond_8

    .line 306
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v6

    .line 308
    .restart local v6    # "providerName":Ljava/lang/String;
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 310
    iget-object v10, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderOrder:Lcom/ironsource/mediationsdk/model/ProviderOrder;

    invoke-virtual {v10, v0}, Lcom/ironsource/mediationsdk/model/ProviderOrder;->setISBackFillProvider(Ljava/lang/String;)V

    .line 305
    :cond_5
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 312
    :cond_6
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 313
    iget-object v10, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderOrder:Lcom/ironsource/mediationsdk/model/ProviderOrder;

    invoke-virtual {v10, v5}, Lcom/ironsource/mediationsdk/model/ProviderOrder;->setISPremiumProvider(Ljava/lang/String;)V

    .line 317
    :cond_7
    iget-object v10, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderOrder:Lcom/ironsource/mediationsdk/model/ProviderOrder;

    invoke-virtual {v10, v6}, Lcom/ironsource/mediationsdk/model/ProviderOrder;->addInterstitialProvider(Ljava/lang/String;)V

    .line 319
    invoke-static {}, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->getProviderSettingsHolder()Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    move-result-object v10

    invoke-virtual {v10, v6}, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->getProviderSettings(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/ProviderSettings;

    move-result-object v9

    .line 320
    .restart local v9    # "settings":Lcom/ironsource/mediationsdk/model/ProviderSettings;
    if-eqz v9, :cond_5

    .line 321
    invoke-virtual {v9, v3}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->setInterstitialPriority(I)V

    goto :goto_3

    .line 326
    .end local v0    # "backFillProviderName":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v5    # "premiumProviderName":Ljava/lang/String;
    .end local v6    # "providerName":Ljava/lang/String;
    .end local v9    # "settings":Lcom/ironsource/mediationsdk/model/ProviderSettings;
    :cond_8
    if-eqz v1, :cond_3

    .line 327
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_4
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v3, v10, :cond_3

    .line 328
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v6

    .line 330
    .restart local v6    # "providerName":Ljava/lang/String;
    iget-object v10, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderOrder:Lcom/ironsource/mediationsdk/model/ProviderOrder;

    invoke-virtual {v10, v6}, Lcom/ironsource/mediationsdk/model/ProviderOrder;->addBannerProvider(Ljava/lang/String;)V

    .line 332
    invoke-static {}, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->getProviderSettingsHolder()Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    move-result-object v10

    invoke-virtual {v10, v6}, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->getProviderSettings(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/ProviderSettings;

    move-result-object v9

    .line 333
    .restart local v9    # "settings":Lcom/ironsource/mediationsdk/model/ProviderSettings;
    if-eqz v9, :cond_9

    .line 334
    invoke-virtual {v9, v3}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->setBannerPriority(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 327
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_4
.end method

.method private parseProviderSettings()V
    .locals 31

    .prologue
    .line 348
    :try_start_0
    invoke-static {}, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->getProviderSettingsHolder()Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderSettingsHolder:Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    .line 350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mResponse:Lorg/json/JSONObject;

    move-object/from16 v29, v0

    const-string v30, "providerSettings"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getSection(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v26

    .line 353
    .local v26, "providerSettingsSection":Lorg/json/JSONObject;
    invoke-virtual/range {v26 .. v26}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v16

    .line 354
    .local v16, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_0
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_4

    .line 355
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 356
    .local v4, "key":Ljava/lang/String;
    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    .line 358
    .local v12, "concreteProviderSettingsSection":Lorg/json/JSONObject;
    if-eqz v12, :cond_0

    .line 359
    const-string v29, "mpis"

    const/16 v30, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v14

    .line 360
    .local v14, "isMultipleInstances":Z
    const-string v29, "spId"

    const-string v30, "0"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 362
    .local v28, "subProviderId":Ljava/lang/String;
    const-string v29, "providerLoadName"

    move-object/from16 v0, v29

    invoke-virtual {v12, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 363
    .local v5, "nameForReflection":Ljava/lang/String;
    const-string v29, "adUnits"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v12, v1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getSection(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 364
    .local v10, "adUnitSection":Lorg/json/JSONObject;
    const-string v29, "application"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v12, v1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getSection(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 365
    .local v6, "appSection":Lorg/json/JSONObject;
    const-string v29, "rewardedVideo"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v10, v1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getSection(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v27

    .line 366
    .local v27, "rvSection":Lorg/json/JSONObject;
    const-string v29, "interstitial"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v10, v1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getSection(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    .line 367
    .local v15, "isSection":Lorg/json/JSONObject;
    const-string v29, "banner"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v10, v1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getSection(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    .line 369
    .local v11, "bnSection":Lorg/json/JSONObject;
    move-object/from16 v0, v27

    invoke-static {v0, v6}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->mergeJsons(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v7

    .line 370
    .local v7, "rewardedVideoSettings":Lorg/json/JSONObject;
    invoke-static {v15, v6}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->mergeJsons(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v8

    .line 371
    .local v8, "interstitialSettings":Lorg/json/JSONObject;
    invoke-static {v11, v6}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->mergeJsons(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v9

    .line 374
    .local v9, "bannerSettings":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderSettingsHolder:Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->containsProviderSettings(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_1

    .line 375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderSettingsHolder:Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->getProviderSettings(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/ProviderSettings;

    move-result-object v25

    .line 376
    .local v25, "providerLocalSettings":Lcom/ironsource/mediationsdk/model/ProviderSettings;
    invoke-virtual/range {v25 .. v25}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getRewardedVideoSettings()Lorg/json/JSONObject;

    move-result-object v24

    .line 377
    .local v24, "providerLocalRVSettings":Lorg/json/JSONObject;
    invoke-virtual/range {v25 .. v25}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getInterstitialSettings()Lorg/json/JSONObject;

    move-result-object v23

    .line 378
    .local v23, "providerLocalISSettings":Lorg/json/JSONObject;
    invoke-virtual/range {v25 .. v25}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getBannerSettings()Lorg/json/JSONObject;

    move-result-object v22

    .line 381
    .local v22, "providerLocalBNSettings":Lorg/json/JSONObject;
    move-object/from16 v0, v24

    invoke-static {v0, v7}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->mergeJsons(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v29

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->setRewardedVideoSettings(Lorg/json/JSONObject;)V

    .line 383
    move-object/from16 v0, v23

    invoke-static {v0, v8}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->mergeJsons(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v29

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->setInterstitialSettings(Lorg/json/JSONObject;)V

    .line 384
    move-object/from16 v0, v22

    invoke-static {v0, v9}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->mergeJsons(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v29

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->setBannerSettings(Lorg/json/JSONObject;)V

    .line 385
    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->setIsMultipleInstances(Z)V

    .line 386
    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->setSubProviderId(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 421
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "nameForReflection":Ljava/lang/String;
    .end local v6    # "appSection":Lorg/json/JSONObject;
    .end local v7    # "rewardedVideoSettings":Lorg/json/JSONObject;
    .end local v8    # "interstitialSettings":Lorg/json/JSONObject;
    .end local v9    # "bannerSettings":Lorg/json/JSONObject;
    .end local v10    # "adUnitSection":Lorg/json/JSONObject;
    .end local v11    # "bnSection":Lorg/json/JSONObject;
    .end local v12    # "concreteProviderSettingsSection":Lorg/json/JSONObject;
    .end local v14    # "isMultipleInstances":Z
    .end local v15    # "isSection":Lorg/json/JSONObject;
    .end local v16    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v22    # "providerLocalBNSettings":Lorg/json/JSONObject;
    .end local v23    # "providerLocalISSettings":Lorg/json/JSONObject;
    .end local v24    # "providerLocalRVSettings":Lorg/json/JSONObject;
    .end local v25    # "providerLocalSettings":Lcom/ironsource/mediationsdk/model/ProviderSettings;
    .end local v26    # "providerSettingsSection":Lorg/json/JSONObject;
    .end local v27    # "rvSection":Lorg/json/JSONObject;
    .end local v28    # "subProviderId":Ljava/lang/String;
    :catch_0
    move-exception v13

    .line 422
    .local v13, "e":Ljava/lang/Exception;
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    .line 424
    .end local v13    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 388
    .restart local v4    # "key":Ljava/lang/String;
    .restart local v5    # "nameForReflection":Ljava/lang/String;
    .restart local v6    # "appSection":Lorg/json/JSONObject;
    .restart local v7    # "rewardedVideoSettings":Lorg/json/JSONObject;
    .restart local v8    # "interstitialSettings":Lorg/json/JSONObject;
    .restart local v9    # "bannerSettings":Lorg/json/JSONObject;
    .restart local v10    # "adUnitSection":Lorg/json/JSONObject;
    .restart local v11    # "bnSection":Lorg/json/JSONObject;
    .restart local v12    # "concreteProviderSettingsSection":Lorg/json/JSONObject;
    .restart local v14    # "isMultipleInstances":Z
    .restart local v15    # "isSection":Lorg/json/JSONObject;
    .restart local v16    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .restart local v26    # "providerSettingsSection":Lorg/json/JSONObject;
    .restart local v27    # "rvSection":Lorg/json/JSONObject;
    .restart local v28    # "subProviderId":Ljava/lang/String;
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderSettingsHolder:Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    move-object/from16 v29, v0

    const-string v30, "Mediation"

    invoke-virtual/range {v29 .. v30}, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->containsProviderSettings(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_3

    const-string v29, "SupersonicAds"

    .line 389
    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v29

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_2

    const-string v29, "RIS"

    .line 390
    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v29

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_3

    .line 392
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderSettingsHolder:Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    move-object/from16 v29, v0

    const-string v30, "Mediation"

    invoke-virtual/range {v29 .. v30}, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->getProviderSettings(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/ProviderSettings;

    move-result-object v19

    .line 393
    .local v19, "mediationLocalSettings":Lcom/ironsource/mediationsdk/model/ProviderSettings;
    invoke-virtual/range {v19 .. v19}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getRewardedVideoSettings()Lorg/json/JSONObject;

    move-result-object v18

    .line 394
    .local v18, "mediationLocalRVSettings":Lorg/json/JSONObject;
    invoke-virtual/range {v19 .. v19}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getInterstitialSettings()Lorg/json/JSONObject;

    move-result-object v17

    .line 396
    .local v17, "mediationLocalISSettings":Lorg/json/JSONObject;
    new-instance v21, Lorg/json/JSONObject;

    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 397
    .local v21, "mergedRVSettings":Lorg/json/JSONObject;
    new-instance v20, Lorg/json/JSONObject;

    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 399
    .local v20, "mergedISSettings":Lorg/json/JSONObject;
    move-object/from16 v0, v21

    invoke-static {v0, v7}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->mergeJsons(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v7

    .line 400
    move-object/from16 v0, v20

    invoke-static {v0, v8}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->mergeJsons(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v8

    .line 403
    new-instance v3, Lcom/ironsource/mediationsdk/model/ProviderSettings;

    invoke-direct/range {v3 .. v9}, Lcom/ironsource/mediationsdk/model/ProviderSettings;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 405
    .local v3, "settings":Lcom/ironsource/mediationsdk/model/ProviderSettings;
    invoke-virtual {v3, v14}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->setIsMultipleInstances(Z)V

    .line 406
    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->setSubProviderId(Ljava/lang/String;)V

    .line 408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderSettingsHolder:Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->addProviderSettings(Lcom/ironsource/mediationsdk/model/ProviderSettings;)V

    goto/16 :goto_0

    .line 410
    .end local v3    # "settings":Lcom/ironsource/mediationsdk/model/ProviderSettings;
    .end local v17    # "mediationLocalISSettings":Lorg/json/JSONObject;
    .end local v18    # "mediationLocalRVSettings":Lorg/json/JSONObject;
    .end local v19    # "mediationLocalSettings":Lcom/ironsource/mediationsdk/model/ProviderSettings;
    .end local v20    # "mergedISSettings":Lorg/json/JSONObject;
    .end local v21    # "mergedRVSettings":Lorg/json/JSONObject;
    :cond_3
    new-instance v3, Lcom/ironsource/mediationsdk/model/ProviderSettings;

    invoke-direct/range {v3 .. v9}, Lcom/ironsource/mediationsdk/model/ProviderSettings;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 412
    .restart local v3    # "settings":Lcom/ironsource/mediationsdk/model/ProviderSettings;
    invoke-virtual {v3, v14}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->setIsMultipleInstances(Z)V

    .line 413
    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->setSubProviderId(Ljava/lang/String;)V

    .line 415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderSettingsHolder:Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->addProviderSettings(Lcom/ironsource/mediationsdk/model/ProviderSettings;)V

    goto/16 :goto_0

    .line 420
    .end local v3    # "settings":Lcom/ironsource/mediationsdk/model/ProviderSettings;
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "nameForReflection":Ljava/lang/String;
    .end local v6    # "appSection":Lorg/json/JSONObject;
    .end local v7    # "rewardedVideoSettings":Lorg/json/JSONObject;
    .end local v8    # "interstitialSettings":Lorg/json/JSONObject;
    .end local v9    # "bannerSettings":Lorg/json/JSONObject;
    .end local v10    # "adUnitSection":Lorg/json/JSONObject;
    .end local v11    # "bnSection":Lorg/json/JSONObject;
    .end local v12    # "concreteProviderSettingsSection":Lorg/json/JSONObject;
    .end local v14    # "isMultipleInstances":Z
    .end local v15    # "isSection":Lorg/json/JSONObject;
    .end local v27    # "rvSection":Lorg/json/JSONObject;
    .end local v28    # "subProviderId":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderSettingsHolder:Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->fillSubProvidersDetails()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method private parseSingleBNPlacement(Lorg/json/JSONObject;)Lcom/ironsource/mediationsdk/model/BannerPlacement;
    .locals 6
    .param p1, "placementJson"    # Lorg/json/JSONObject;

    .prologue
    .line 750
    const/4 v2, 0x0

    .line 752
    .local v2, "result":Lcom/ironsource/mediationsdk/model/BannerPlacement;
    if-eqz p1, :cond_0

    .line 753
    const-string v4, "placementId"

    const/4 v5, -0x1

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 754
    .local v0, "placementId":I
    const-string v4, "placementName"

    const-string v5, ""

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 755
    .local v1, "placementName":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getPlacementAvailabilitySettings(Lorg/json/JSONObject;)Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;

    move-result-object v3

    .line 757
    .local v3, "settings":Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;
    if-ltz v0, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 758
    new-instance v2, Lcom/ironsource/mediationsdk/model/BannerPlacement;

    .end local v2    # "result":Lcom/ironsource/mediationsdk/model/BannerPlacement;
    invoke-direct {v2, v0, v1, v3}, Lcom/ironsource/mediationsdk/model/BannerPlacement;-><init>(ILjava/lang/String;Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;)V

    .line 759
    .restart local v2    # "result":Lcom/ironsource/mediationsdk/model/BannerPlacement;
    if-eqz v3, :cond_0

    .line 760
    iget-object v4, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mContext:Landroid/content/Context;

    invoke-static {v4, v2}, Lcom/ironsource/mediationsdk/utils/CappingManager;->addCappingInfo(Landroid/content/Context;Lcom/ironsource/mediationsdk/model/BannerPlacement;)V

    .line 765
    .end local v0    # "placementId":I
    .end local v1    # "placementName":Ljava/lang/String;
    .end local v3    # "settings":Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;
    :cond_0
    return-object v2
.end method

.method private parseSingleISPlacement(Lorg/json/JSONObject;)Lcom/ironsource/mediationsdk/model/InterstitialPlacement;
    .locals 6
    .param p1, "placementJson"    # Lorg/json/JSONObject;

    .prologue
    .line 716
    const/4 v2, 0x0

    .line 718
    .local v2, "result":Lcom/ironsource/mediationsdk/model/InterstitialPlacement;
    if-eqz p1, :cond_0

    .line 719
    const-string v4, "placementId"

    const/4 v5, -0x1

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 720
    .local v0, "placementId":I
    const-string v4, "placementName"

    const-string v5, ""

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 721
    .local v1, "placementName":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getPlacementAvailabilitySettings(Lorg/json/JSONObject;)Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;

    move-result-object v3

    .line 723
    .local v3, "settings":Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;
    if-ltz v0, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 724
    new-instance v2, Lcom/ironsource/mediationsdk/model/InterstitialPlacement;

    .end local v2    # "result":Lcom/ironsource/mediationsdk/model/InterstitialPlacement;
    invoke-direct {v2, v0, v1, v3}, Lcom/ironsource/mediationsdk/model/InterstitialPlacement;-><init>(ILjava/lang/String;Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;)V

    .line 725
    .restart local v2    # "result":Lcom/ironsource/mediationsdk/model/InterstitialPlacement;
    if-eqz v3, :cond_0

    .line 726
    iget-object v4, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mContext:Landroid/content/Context;

    invoke-static {v4, v2}, Lcom/ironsource/mediationsdk/utils/CappingManager;->addCappingInfo(Landroid/content/Context;Lcom/ironsource/mediationsdk/model/InterstitialPlacement;)V

    .line 731
    .end local v0    # "placementId":I
    .end local v1    # "placementName":Ljava/lang/String;
    .end local v3    # "settings":Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;
    :cond_0
    return-object v2
.end method

.method private parseSingleOWPlacement(Lorg/json/JSONObject;)Lcom/ironsource/mediationsdk/model/OfferwallPlacement;
    .locals 5
    .param p1, "placementJson"    # Lorg/json/JSONObject;

    .prologue
    .line 735
    const/4 v2, 0x0

    .line 737
    .local v2, "result":Lcom/ironsource/mediationsdk/model/OfferwallPlacement;
    if-eqz p1, :cond_0

    .line 738
    const-string v3, "placementId"

    const/4 v4, -0x1

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 739
    .local v0, "placementId":I
    const-string v3, "placementName"

    const-string v4, ""

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 741
    .local v1, "placementName":Ljava/lang/String;
    if-ltz v0, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 742
    new-instance v2, Lcom/ironsource/mediationsdk/model/OfferwallPlacement;

    .end local v2    # "result":Lcom/ironsource/mediationsdk/model/OfferwallPlacement;
    invoke-direct {v2, v0, v1}, Lcom/ironsource/mediationsdk/model/OfferwallPlacement;-><init>(ILjava/lang/String;)V

    .line 746
    .end local v0    # "placementId":I
    .end local v1    # "placementName":Ljava/lang/String;
    .restart local v2    # "result":Lcom/ironsource/mediationsdk/model/OfferwallPlacement;
    :cond_0
    return-object v2
.end method

.method private parseSingleRVPlacement(Lorg/json/JSONObject;)Lcom/ironsource/mediationsdk/model/Placement;
    .locals 9
    .param p1, "placementJson"    # Lorg/json/JSONObject;

    .prologue
    const/4 v8, -0x1

    .line 694
    const/4 v0, 0x0

    .line 696
    .local v0, "result":Lcom/ironsource/mediationsdk/model/Placement;
    if-eqz p1, :cond_0

    .line 697
    const-string v6, "placementId"

    invoke-virtual {p1, v6, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 698
    .local v1, "placementId":I
    const-string v6, "placementName"

    const-string v7, ""

    invoke-virtual {p1, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 699
    .local v2, "placementName":Ljava/lang/String;
    const-string v6, "virtualItemName"

    const-string v7, ""

    invoke-virtual {p1, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 700
    .local v3, "virtualItemName":Ljava/lang/String;
    const-string v6, "virtualItemCount"

    invoke-virtual {p1, v6, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    .line 701
    .local v4, "virtualItemCount":I
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getPlacementAvailabilitySettings(Lorg/json/JSONObject;)Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;

    move-result-object v5

    .line 703
    .local v5, "settings":Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;
    if-ltz v1, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 704
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    if-lez v4, :cond_0

    .line 705
    new-instance v0, Lcom/ironsource/mediationsdk/model/Placement;

    .end local v0    # "result":Lcom/ironsource/mediationsdk/model/Placement;
    invoke-direct/range {v0 .. v5}, Lcom/ironsource/mediationsdk/model/Placement;-><init>(ILjava/lang/String;Ljava/lang/String;ILcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;)V

    .line 706
    .restart local v0    # "result":Lcom/ironsource/mediationsdk/model/Placement;
    if-eqz v5, :cond_0

    .line 707
    iget-object v6, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mContext:Landroid/content/Context;

    invoke-static {v6, v0}, Lcom/ironsource/mediationsdk/utils/CappingManager;->addCappingInfo(Landroid/content/Context;Lcom/ironsource/mediationsdk/model/Placement;)V

    .line 712
    .end local v1    # "placementId":I
    .end local v2    # "placementName":Ljava/lang/String;
    .end local v3    # "virtualItemName":Ljava/lang/String;
    .end local v4    # "virtualItemCount":I
    .end local v5    # "settings":Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;
    :cond_0
    return-object v0
.end method


# virtual methods
.method public decreaseMaxBannerAdapters(Z)I
    .locals 1
    .param p1, "removeFromTotal"    # Z

    .prologue
    .line 868
    iget v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mMaxBannerAdapters:I

    if-lez v0, :cond_0

    .line 869
    iget v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mMaxBannerAdapters:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mMaxBannerAdapters:I

    .line 871
    :cond_0
    if-eqz p1, :cond_1

    iget v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mTotalBannerAdapters:I

    if-lez v0, :cond_1

    .line 872
    iget v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mTotalBannerAdapters:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mTotalBannerAdapters:I

    .line 874
    :cond_1
    iget v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mMaxBannerAdapters:I

    return v0
.end method

.method public decreaseMaxISAdapters(Z)I
    .locals 1
    .param p1, "removeFromTotal"    # Z

    .prologue
    .line 858
    iget v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mMaxISAdapters:I

    if-lez v0, :cond_0

    .line 859
    iget v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mMaxISAdapters:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mMaxISAdapters:I

    .line 861
    :cond_0
    if-eqz p1, :cond_1

    iget v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mTotalISAdapters:I

    if-lez v0, :cond_1

    .line 862
    iget v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mTotalISAdapters:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mTotalISAdapters:I

    .line 864
    :cond_1
    iget v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mMaxISAdapters:I

    return v0
.end method

.method public decreaseMaxRVAdapters(Z)I
    .locals 1
    .param p1, "removeFromTotal"    # Z

    .prologue
    .line 848
    iget v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mMaxRVAdapters:I

    if-lez v0, :cond_0

    .line 849
    iget v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mMaxRVAdapters:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mMaxRVAdapters:I

    .line 851
    :cond_0
    if-eqz p1, :cond_1

    iget v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mTotalRVAdapters:I

    if-lez v0, :cond_1

    .line 852
    iget v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mTotalRVAdapters:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mTotalRVAdapters:I

    .line 854
    :cond_1
    iget v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mMaxRVAdapters:I

    return v0
.end method

.method public declared-synchronized dropProviderForCurrentSession(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Ljava/lang/String;)V
    .locals 2
    .param p1, "adUnit"    # Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;
    .param p2, "providerName"    # Ljava/lang/String;

    .prologue
    .line 1004
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 1035
    :cond_0
    :goto_0
    :pswitch_0
    monitor-exit p0

    return-void

    .line 1008
    :cond_1
    :try_start_1
    sget-object v0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper$1;->$SwitchMap$com$ironsource$mediationsdk$IronSource$AD_UNIT:[I

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1010
    :pswitch_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderOrder:Lcom/ironsource/mediationsdk/model/ProviderOrder;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ProviderOrder;->getRewardedVideoProviderOrder()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1011
    iget-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderOrder:Lcom/ironsource/mediationsdk/model/ProviderOrder;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ProviderOrder;->getRewardedVideoProviderOrder()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1012
    const/4 v0, -0x1

    iput v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mRVLoadPosition:I

    .line 1014
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->decreaseMaxRVAdapters(Z)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1004
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1018
    :pswitch_2
    :try_start_2
    iget-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderOrder:Lcom/ironsource/mediationsdk/model/ProviderOrder;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ProviderOrder;->getInterstitialProviderOrder()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1019
    iget-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderOrder:Lcom/ironsource/mediationsdk/model/ProviderOrder;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ProviderOrder;->getInterstitialProviderOrder()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1020
    const/4 v0, -0x1

    iput v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mISLoadPosition:I

    .line 1022
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->decreaseMaxISAdapters(Z)I

    goto :goto_0

    .line 1029
    :pswitch_3
    iget-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderOrder:Lcom/ironsource/mediationsdk/model/ProviderOrder;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ProviderOrder;->getBannerProviderOrder()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1030
    iget-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderOrder:Lcom/ironsource/mediationsdk/model/ProviderOrder;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ProviderOrder;->getBannerProviderOrder()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1031
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->decreaseMaxBannerAdapters(Z)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1008
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public getBannerAdaptersLoadPosition()I
    .locals 1

    .prologue
    .line 984
    iget v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mBannerLoadPosition:I

    return v0
.end method

.method public getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;
    .locals 1

    .prologue
    .line 996
    iget-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mConfigurations:Lcom/ironsource/mediationsdk/model/Configurations;

    return-object v0
.end method

.method public getISBackFillProvider()Ljava/lang/String;
    .locals 4

    .prologue
    .line 941
    :try_start_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderOrder:Lcom/ironsource/mediationsdk/model/ProviderOrder;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/ProviderOrder;->getISBackFillProvider()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 944
    :goto_0
    return-object v1

    .line 942
    :catch_0
    move-exception v0

    .line 943
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v1

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v3, "getISBackFillProvider"

    invoke-virtual {v1, v2, v3, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 944
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getISPremiumProvider()Ljava/lang/String;
    .locals 4

    .prologue
    .line 950
    :try_start_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderOrder:Lcom/ironsource/mediationsdk/model/ProviderOrder;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/ProviderOrder;->getISPremiumProvider()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 953
    :goto_0
    return-object v1

    .line 951
    :catch_0
    move-exception v0

    .line 952
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v1

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v3, "getISPremiumProvider"

    invoke-virtual {v1, v2, v3, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 953
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getInitiatedAdUnits()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;",
            ">;"
        }
    .end annotation

    .prologue
    .line 230
    iget-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mResponse:Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mConfigurations:Lcom/ironsource/mediationsdk/model/Configurations;

    if-nez v1, :cond_2

    .line 231
    :cond_0
    const/4 v0, 0x0

    .line 248
    :cond_1
    :goto_0
    return-object v0

    .line 233
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 234
    .local v0, "adUnits":Ljava/util/List;, "Ljava/util/List<Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;>;"
    iget-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mConfigurations:Lcom/ironsource/mediationsdk/model/Configurations;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderOrder:Lcom/ironsource/mediationsdk/model/ProviderOrder;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderOrder:Lcom/ironsource/mediationsdk/model/ProviderOrder;

    .line 235
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/ProviderOrder;->getRewardedVideoProviderOrder()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 236
    sget-object v1, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    :cond_3
    iget-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mConfigurations:Lcom/ironsource/mediationsdk/model/Configurations;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/Configurations;->getInterstitialConfigurations()Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderOrder:Lcom/ironsource/mediationsdk/model/ProviderOrder;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderOrder:Lcom/ironsource/mediationsdk/model/ProviderOrder;

    .line 239
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/ProviderOrder;->getInterstitialProviderOrder()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 240
    sget-object v1, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    :cond_4
    iget-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mConfigurations:Lcom/ironsource/mediationsdk/model/Configurations;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/Configurations;->getOfferwallConfigurations()Lcom/ironsource/mediationsdk/model/OfferwallConfigurations;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 243
    sget-object v1, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->OFFERWALL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    :cond_5
    iget-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mConfigurations:Lcom/ironsource/mediationsdk/model/Configurations;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/Configurations;->getBannerConfigurations()Lcom/ironsource/mediationsdk/model/BannerConfigurations;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 246
    sget-object v1, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->BANNER:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getMaxBannerAdapters()I
    .locals 1

    .prologue
    .line 832
    iget v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mMaxBannerAdapters:I

    return v0
.end method

.method public getMaxISAdapters()I
    .locals 1

    .prologue
    .line 828
    iget v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mMaxISAdapters:I

    return v0
.end method

.method public getMaxRVAdapters()I
    .locals 1

    .prologue
    .line 824
    iget v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mMaxRVAdapters:I

    return v0
.end method

.method public getNextBannerProvider()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 909
    :try_start_0
    iget v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mBannerLoadPosition:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mBannerLoadPosition:I

    .line 910
    iget-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderOrder:Lcom/ironsource/mediationsdk/model/ProviderOrder;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/ProviderOrder;->getBannerProviderOrder()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v3, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mBannerLoadPosition:I

    if-le v1, v3, :cond_0

    .line 911
    iget-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderOrder:Lcom/ironsource/mediationsdk/model/ProviderOrder;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/ProviderOrder;->getBannerProviderOrder()Ljava/util/ArrayList;

    move-result-object v1

    iget v3, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mBannerLoadPosition:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 917
    :goto_0
    return-object v1

    :cond_0
    move-object v1, v2

    .line 912
    goto :goto_0

    .line 913
    :catch_0
    move-exception v0

    .line 914
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v1

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getNextProvider(BannerLoadPosition: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mBannerLoadPosition:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " BannerProviders.size(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderOrder:Lcom/ironsource/mediationsdk/model/ProviderOrder;

    .line 916
    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/model/ProviderOrder;->getBannerProviderOrder()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 914
    invoke-virtual {v1, v3, v4, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v2

    .line 917
    goto :goto_0
.end method

.method public getNextISProvider()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 894
    :try_start_0
    iget v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mISLoadPosition:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mISLoadPosition:I

    .line 896
    iget-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderOrder:Lcom/ironsource/mediationsdk/model/ProviderOrder;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/ProviderOrder;->getInterstitialProviderOrder()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v3, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mISLoadPosition:I

    if-le v1, v3, :cond_0

    .line 897
    iget-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderOrder:Lcom/ironsource/mediationsdk/model/ProviderOrder;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/ProviderOrder;->getInterstitialProviderOrder()Ljava/util/ArrayList;

    move-result-object v1

    iget v3, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mISLoadPosition:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 903
    :goto_0
    return-object v1

    :cond_0
    move-object v1, v2

    .line 899
    goto :goto_0

    .line 901
    :catch_0
    move-exception v0

    .line 902
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v1

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getNextProvider(ISLoadPosition: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mISLoadPosition:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ISProviders.size(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderOrder:Lcom/ironsource/mediationsdk/model/ProviderOrder;

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/model/ProviderOrder;->getInterstitialProviderOrder()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v2

    .line 903
    goto :goto_0
.end method

.method public getNextRVProvider()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 879
    :try_start_0
    iget v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mRVLoadPosition:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mRVLoadPosition:I

    .line 881
    iget-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderOrder:Lcom/ironsource/mediationsdk/model/ProviderOrder;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/ProviderOrder;->getRewardedVideoProviderOrder()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v3, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mRVLoadPosition:I

    if-le v1, v3, :cond_0

    .line 882
    iget-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderOrder:Lcom/ironsource/mediationsdk/model/ProviderOrder;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/ProviderOrder;->getRewardedVideoProviderOrder()Ljava/util/ArrayList;

    move-result-object v1

    iget v3, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mRVLoadPosition:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 888
    :goto_0
    return-object v1

    :cond_0
    move-object v1, v2

    .line 884
    goto :goto_0

    .line 886
    :catch_0
    move-exception v0

    .line 887
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v1

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getNextProvider(RVLoadPosition: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mRVLoadPosition:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " RVProviders.size(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderOrder:Lcom/ironsource/mediationsdk/model/ProviderOrder;

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/model/ProviderOrder;->getRewardedVideoProviderOrder()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v2

    .line 888
    goto :goto_0
.end method

.method public getProviderOrder()Lcom/ironsource/mediationsdk/model/ProviderOrder;
    .locals 1

    .prologue
    .line 992
    iget-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderOrder:Lcom/ironsource/mediationsdk/model/ProviderOrder;

    return-object v0
.end method

.method public getProviderSettingsHolder()Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;
    .locals 1

    .prologue
    .line 988
    iget-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderSettingsHolder:Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    return-object v0
.end method

.method public getRVBackFillProvider()Ljava/lang/String;
    .locals 4

    .prologue
    .line 923
    :try_start_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderOrder:Lcom/ironsource/mediationsdk/model/ProviderOrder;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/ProviderOrder;->getRVBackFillProvider()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 926
    :goto_0
    return-object v1

    .line 924
    :catch_0
    move-exception v0

    .line 925
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v1

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v3, "getRVBackFillProvider"

    invoke-virtual {v1, v2, v3, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 926
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getRVPremiumProvider()Ljava/lang/String;
    .locals 4

    .prologue
    .line 932
    :try_start_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderOrder:Lcom/ironsource/mediationsdk/model/ProviderOrder;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/ProviderOrder;->getRVPremiumProvider()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 935
    :goto_0
    return-object v1

    .line 933
    :catch_0
    move-exception v0

    .line 934
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v1

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v3, "getRVPremiumProvider"

    invoke-virtual {v1, v2, v3, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 935
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getReponseError()Lcom/ironsource/mediationsdk/logger/IronSourceError;
    .locals 3

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->isValidResponse()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 253
    const/4 v1, 0x0

    .line 263
    :goto_0
    return-object v1

    .line 256
    :cond_0
    const-string v0, ""

    .line 257
    .local v0, "errorMsg":Ljava/lang/String;
    iget-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mResponse:Lorg/json/JSONObject;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mResponse:Lorg/json/JSONObject;

    const-string v2, "error"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 258
    iget-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mResponse:Lorg/json/JSONObject;

    const-string v2, "error"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 260
    :cond_1
    if-nez v0, :cond_2

    .line 261
    const-string v0, ""

    .line 263
    :cond_2
    const-string v1, "Mediation"

    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v1

    goto :goto_0
.end method

.method public getTotalBannerAdapters()I
    .locals 1

    .prologue
    .line 844
    iget v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mTotalBannerAdapters:I

    return v0
.end method

.method public getTotalISAdapters()I
    .locals 1

    .prologue
    .line 840
    iget v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mTotalISAdapters:I

    return v0
.end method

.method public getTotalRVAdapters()I
    .locals 1

    .prologue
    .line 836
    iget v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mTotalRVAdapters:I

    return v0
.end method

.method public hasMoreBannerProvidersToLoad()Z
    .locals 2

    .prologue
    .line 980
    iget v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mBannerLoadPosition:I

    iget-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderOrder:Lcom/ironsource/mediationsdk/model/ProviderOrder;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/ProviderOrder;->getBannerProviderOrder()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderOrder:Lcom/ironsource/mediationsdk/model/ProviderOrder;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ProviderOrder;->getBannerProviderOrder()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMoreISProvidersToLoad()Z
    .locals 3

    .prologue
    .line 971
    iget v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mISLoadPosition:I

    iget-object v2, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderOrder:Lcom/ironsource/mediationsdk/model/ProviderOrder;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/ProviderOrder;->getInterstitialProviderOrder()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderOrder:Lcom/ironsource/mediationsdk/model/ProviderOrder;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/ProviderOrder;->getInterstitialProviderOrder()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v0, 0x1

    .line 973
    .local v0, "has":Z
    :goto_0
    if-nez v0, :cond_0

    .line 974
    const/4 v1, -0x1

    iput v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mISLoadPosition:I

    .line 976
    :cond_0
    return v0

    .line 971
    .end local v0    # "has":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMoreRVProvidersToLoad()Z
    .locals 3

    .prologue
    .line 960
    iget v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mRVLoadPosition:I

    iget-object v2, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderOrder:Lcom/ironsource/mediationsdk/model/ProviderOrder;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/ProviderOrder;->getRewardedVideoProviderOrder()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderOrder:Lcom/ironsource/mediationsdk/model/ProviderOrder;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/ProviderOrder;->getRewardedVideoProviderOrder()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v0, 0x1

    .line 962
    .local v0, "has":Z
    :goto_0
    if-nez v0, :cond_0

    .line 963
    const/4 v1, -0x1

    iput v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mRVLoadPosition:I

    .line 965
    :cond_0
    return v0

    .line 960
    .end local v0    # "has":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValidResponse()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 216
    iget-object v3, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mResponse:Lorg/json/JSONObject;

    if-eqz v3, :cond_0

    move v0, v1

    .line 218
    .local v0, "valid":Z
    :goto_0
    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mResponse:Lorg/json/JSONObject;

    const-string v4, "error"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    move v0, v1

    .line 220
    :goto_1
    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderOrder:Lcom/ironsource/mediationsdk/model/ProviderOrder;

    if-eqz v3, :cond_2

    move v0, v1

    .line 222
    :goto_2
    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderSettingsHolder:Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    if-eqz v3, :cond_3

    move v0, v1

    .line 224
    :goto_3
    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mConfigurations:Lcom/ironsource/mediationsdk/model/Configurations;

    if-eqz v3, :cond_4

    move v0, v1

    .line 226
    :goto_4
    return v0

    .end local v0    # "valid":Z
    :cond_0
    move v0, v2

    .line 216
    goto :goto_0

    .restart local v0    # "valid":Z
    :cond_1
    move v0, v2

    .line 218
    goto :goto_1

    :cond_2
    move v0, v2

    .line 220
    goto :goto_2

    :cond_3
    move v0, v2

    .line 222
    goto :goto_3

    :cond_4
    move v0, v2

    .line 224
    goto :goto_4
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 195
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 198
    .local v1, "resultObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "appKey"

    iget-object v3, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mAppKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 199
    const-string v2, "userId"

    iget-object v3, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mUserId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 200
    const-string v2, "response"

    iget-object v3, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mResponse:Lorg/json/JSONObject;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 201
    :catch_0
    move-exception v0

    .line 202
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
