.class public abstract Lnet/pubnative/sdk/core/request/PNWaterfall;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static TAG:Ljava/lang/String; = null

.field protected static final TRACKING_PARAMETER_APP_TOKEN:Ljava/lang/String; = "app_token"

.field protected static final TRACKING_PARAMETER_REQUEST_ID:Ljava/lang/String; = "reqid"


# instance fields
.field protected mAppToken:Ljava/lang/String;

.field protected mContext:Landroid/content/Context;

.field protected mInsight:Lnet/pubnative/sdk/core/insights/model/PNInsightModel;

.field protected mPlacement:Lnet/pubnative/sdk/core/config/PNPlacement;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lnet/pubnative/sdk/core/request/PNWaterfall;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/pubnative/sdk/core/request/PNWaterfall;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected getAllNetworks(Ljava/lang/String;Z)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lnet/pubnative/sdk/core/config/model/PNNetworkModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 112
    iget-object v0, p0, Lnet/pubnative/sdk/core/request/PNWaterfall;->mPlacement:Lnet/pubnative/sdk/core/config/PNPlacement;

    invoke-virtual {v0}, Lnet/pubnative/sdk/core/config/PNPlacement;->getPriorities()Ljava/util/List;

    move-result-object v3

    .line 113
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    sget-object v0, Lnet/pubnative/sdk/core/request/PNWaterfall;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adapter is null or empty and required, "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_0
    :goto_0
    return-object v2

    .line 115
    :cond_1
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 116
    :cond_2
    sget-object v0, Lnet/pubnative/sdk/core/request/PNWaterfall;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no priorities found in this placement, "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 119
    :cond_3
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 120
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/pubnative/sdk/core/config/model/PNPriorityRuleModel;

    .line 121
    if-eqz p2, :cond_5

    if-nez v1, :cond_5

    .line 119
    :cond_4
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 124
    :cond_5
    iget-object v4, p0, Lnet/pubnative/sdk/core/request/PNWaterfall;->mPlacement:Lnet/pubnative/sdk/core/config/PNPlacement;

    iget-object v5, v0, Lnet/pubnative/sdk/core/config/model/PNPriorityRuleModel;->network_code:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lnet/pubnative/sdk/core/config/PNPlacement;->getNetwork(Ljava/lang/String;)Lnet/pubnative/sdk/core/config/model/PNNetworkModel;

    move-result-object v4

    .line 125
    if-eqz v4, :cond_4

    iget-object v5, v4, Lnet/pubnative/sdk/core/config/model/PNNetworkModel;->adapter:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 126
    iget-object v0, v0, Lnet/pubnative/sdk/core/config/model/PNPriorityRuleModel;->network_code:Ljava/lang/String;

    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method protected getExtras()Ljava/util/Map;
    .locals 3

    .prologue
    .line 153
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 154
    const-string v1, "reqid"

    iget-object v2, p0, Lnet/pubnative/sdk/core/request/PNWaterfall;->mPlacement:Lnet/pubnative/sdk/core/config/PNPlacement;

    invoke-virtual {v2}, Lnet/pubnative/sdk/core/config/PNPlacement;->getTrackingUUID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object v1, Lnet/pubnative/sdk/core/PNSettings;->targeting:Lnet/pubnative/sdk/core/request/PNAdTargetingModel;

    if-eqz v1, :cond_0

    .line 156
    sget-object v1, Lnet/pubnative/sdk/core/PNSettings;->targeting:Lnet/pubnative/sdk/core/request/PNAdTargetingModel;

    invoke-virtual {v1}, Lnet/pubnative/sdk/core/request/PNAdTargetingModel;->toDictionary()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 158
    :cond_0
    return-object v0
.end method

.method protected getNextNetwork()V
    .locals 3

    .prologue
    .line 135
    iget-object v0, p0, Lnet/pubnative/sdk/core/request/PNWaterfall;->mPlacement:Lnet/pubnative/sdk/core/config/PNPlacement;

    invoke-virtual {v0}, Lnet/pubnative/sdk/core/config/PNPlacement;->next()V

    .line 136
    iget-object v0, p0, Lnet/pubnative/sdk/core/request/PNWaterfall;->mPlacement:Lnet/pubnative/sdk/core/config/PNPlacement;

    invoke-virtual {v0}, Lnet/pubnative/sdk/core/config/PNPlacement;->getCurrentNetwork()Lnet/pubnative/sdk/core/config/model/PNNetworkModel;

    move-result-object v0

    .line 137
    if-nez v0, :cond_0

    .line 138
    invoke-virtual {p0}, Lnet/pubnative/sdk/core/request/PNWaterfall;->sendRequestInsight()V

    .line 139
    sget-object v0, Lnet/pubnative/sdk/core/exceptions/PNException;->REQUEST_NO_FILL:Lnet/pubnative/sdk/core/exceptions/PNException;

    invoke-virtual {p0, v0}, Lnet/pubnative/sdk/core/request/PNWaterfall;->onWaterfallError(Ljava/lang/Exception;)V

    .line 150
    :goto_0
    return-void

    .line 142
    :cond_0
    invoke-static {v0}, Lnet/pubnative/sdk/core/adapter/request/PNAdapterFactory;->create(Lnet/pubnative/sdk/core/config/model/PNNetworkModel;)Lnet/pubnative/sdk/core/adapter/request/PNAdapter;

    move-result-object v0

    .line 143
    if-nez v0, :cond_1

    .line 144
    const-wide/16 v0, 0x0

    sget-object v2, Lnet/pubnative/sdk/core/exceptions/PNException;->ADAPTER_NOT_FOUND:Lnet/pubnative/sdk/core/exceptions/PNException;

    invoke-virtual {p0, v0, v1, v2}, Lnet/pubnative/sdk/core/request/PNWaterfall;->trackUnreachableNetwork(JLjava/lang/Exception;)V

    .line 145
    invoke-virtual {p0}, Lnet/pubnative/sdk/core/request/PNWaterfall;->getNextNetwork()V

    goto :goto_0

    .line 147
    :cond_1
    invoke-virtual {p0}, Lnet/pubnative/sdk/core/request/PNWaterfall;->getExtras()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lnet/pubnative/sdk/core/request/PNWaterfall;->onWaterfallNextNetwork(Lnet/pubnative/sdk/core/adapter/request/PNAdapter;Ljava/util/Map;)V

    goto :goto_0
.end method

.method protected declared-synchronized initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 61
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    :cond_0
    sget-object v0, Lnet/pubnative/sdk/core/exceptions/PNException;->REQUEST_PARAMETERS_INVALID:Lnet/pubnative/sdk/core/exceptions/PNException;

    invoke-virtual {p0, v0}, Lnet/pubnative/sdk/core/request/PNWaterfall;->onWaterfallError(Ljava/lang/Exception;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    :goto_0
    monitor-exit p0

    return-void

    .line 63
    :cond_1
    :try_start_1
    invoke-static {p1}, Lnet/pubnative/sdk/core/utils/PNDeviceUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 64
    iput-object p1, p0, Lnet/pubnative/sdk/core/request/PNWaterfall;->mContext:Landroid/content/Context;

    .line 65
    iput-object p2, p0, Lnet/pubnative/sdk/core/request/PNWaterfall;->mAppToken:Ljava/lang/String;

    .line 66
    new-instance v0, Lnet/pubnative/sdk/core/config/PNPlacement;

    invoke-direct {v0}, Lnet/pubnative/sdk/core/config/PNPlacement;-><init>()V

    iput-object v0, p0, Lnet/pubnative/sdk/core/request/PNWaterfall;->mPlacement:Lnet/pubnative/sdk/core/config/PNPlacement;

    .line 67
    invoke-virtual {p0}, Lnet/pubnative/sdk/core/request/PNWaterfall;->getExtras()Ljava/util/Map;

    move-result-object v4

    .line 68
    iget-object v0, p0, Lnet/pubnative/sdk/core/request/PNWaterfall;->mPlacement:Lnet/pubnative/sdk/core/config/PNPlacement;

    iget-object v1, p0, Lnet/pubnative/sdk/core/request/PNWaterfall;->mContext:Landroid/content/Context;

    new-instance v5, Lnet/pubnative/sdk/core/request/PNWaterfall$1;

    invoke-direct {v5, p0}, Lnet/pubnative/sdk/core/request/PNWaterfall$1;-><init>(Lnet/pubnative/sdk/core/request/PNWaterfall;)V

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lnet/pubnative/sdk/core/config/PNPlacement;->load(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lnet/pubnative/sdk/core/config/PNPlacement$Listener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 85
    :cond_2
    :try_start_2
    sget-object v0, Lnet/pubnative/sdk/core/exceptions/PNException;->REQUEST_NO_INTERNET:Lnet/pubnative/sdk/core/exceptions/PNException;

    invoke-virtual {p0, v0}, Lnet/pubnative/sdk/core/request/PNWaterfall;->onWaterfallError(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method protected abstract onWaterfallError(Ljava/lang/Exception;)V
.end method

.method protected abstract onWaterfallLoadFinish(Z)V
.end method

.method protected abstract onWaterfallNextNetwork(Lnet/pubnative/sdk/core/adapter/request/PNAdapter;Ljava/util/Map;)V
.end method

.method protected sendRequestInsight()V
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lnet/pubnative/sdk/core/request/PNWaterfall;->mInsight:Lnet/pubnative/sdk/core/insights/model/PNInsightModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/pubnative/sdk/core/insights/model/PNInsightModel;->sendRequestInsight(Ljava/util/Map;)V

    .line 171
    return-void
.end method

.method protected startTracking()V
    .locals 6

    .prologue
    .line 90
    iget-object v0, p0, Lnet/pubnative/sdk/core/request/PNWaterfall;->mPlacement:Lnet/pubnative/sdk/core/config/PNPlacement;

    invoke-virtual {v0}, Lnet/pubnative/sdk/core/config/PNPlacement;->getConfig()Lnet/pubnative/sdk/core/config/model/PNConfigModel;

    move-result-object v0

    const-string v1, "request_beacon"

    invoke-virtual {v0, v1}, Lnet/pubnative/sdk/core/config/model/PNConfigModel;->getGlobal(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 91
    iget-object v1, p0, Lnet/pubnative/sdk/core/request/PNWaterfall;->mPlacement:Lnet/pubnative/sdk/core/config/PNPlacement;

    invoke-virtual {v1}, Lnet/pubnative/sdk/core/config/PNPlacement;->getConfig()Lnet/pubnative/sdk/core/config/model/PNConfigModel;

    move-result-object v1

    const-string v2, "impression_beacon"

    invoke-virtual {v1, v2}, Lnet/pubnative/sdk/core/config/model/PNConfigModel;->getGlobal(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 92
    iget-object v2, p0, Lnet/pubnative/sdk/core/request/PNWaterfall;->mPlacement:Lnet/pubnative/sdk/core/config/PNPlacement;

    invoke-virtual {v2}, Lnet/pubnative/sdk/core/config/PNPlacement;->getConfig()Lnet/pubnative/sdk/core/config/model/PNConfigModel;

    move-result-object v2

    const-string v3, "click_beacon"

    invoke-virtual {v2, v3}, Lnet/pubnative/sdk/core/config/model/PNConfigModel;->getGlobal(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 93
    iget-object v3, p0, Lnet/pubnative/sdk/core/request/PNWaterfall;->mPlacement:Lnet/pubnative/sdk/core/config/PNPlacement;

    invoke-virtual {v3}, Lnet/pubnative/sdk/core/config/PNPlacement;->getConfig()Lnet/pubnative/sdk/core/config/model/PNConfigModel;

    move-result-object v3

    const-string v4, "recovered_network_url"

    invoke-virtual {v3, v4}, Lnet/pubnative/sdk/core/config/model/PNConfigModel;->getGlobal(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 94
    new-instance v4, Lnet/pubnative/sdk/core/insights/model/PNInsightModel;

    iget-object v5, p0, Lnet/pubnative/sdk/core/request/PNWaterfall;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lnet/pubnative/sdk/core/insights/model/PNInsightModel;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lnet/pubnative/sdk/core/request/PNWaterfall;->mInsight:Lnet/pubnative/sdk/core/insights/model/PNInsightModel;

    .line 95
    iget-object v4, p0, Lnet/pubnative/sdk/core/request/PNWaterfall;->mInsight:Lnet/pubnative/sdk/core/insights/model/PNInsightModel;

    invoke-virtual {v4, v0, v1, v2, v3}, Lnet/pubnative/sdk/core/insights/model/PNInsightModel;->setInsightURLs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lnet/pubnative/sdk/core/request/PNWaterfall;->mInsight:Lnet/pubnative/sdk/core/insights/model/PNInsightModel;

    const-string v1, "app_token"

    iget-object v2, p0, Lnet/pubnative/sdk/core/request/PNWaterfall;->mPlacement:Lnet/pubnative/sdk/core/config/PNPlacement;

    invoke-virtual {v2}, Lnet/pubnative/sdk/core/config/PNPlacement;->getAppToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/pubnative/sdk/core/insights/model/PNInsightModel;->addExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lnet/pubnative/sdk/core/request/PNWaterfall;->mInsight:Lnet/pubnative/sdk/core/insights/model/PNInsightModel;

    const-string v1, "reqid"

    iget-object v2, p0, Lnet/pubnative/sdk/core/request/PNWaterfall;->mPlacement:Lnet/pubnative/sdk/core/config/PNPlacement;

    invoke-virtual {v2}, Lnet/pubnative/sdk/core/config/PNPlacement;->getTrackingUUID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/pubnative/sdk/core/insights/model/PNInsightModel;->addExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lnet/pubnative/sdk/core/request/PNWaterfall;->mInsight:Lnet/pubnative/sdk/core/insights/model/PNInsightModel;

    iget-object v1, p0, Lnet/pubnative/sdk/core/request/PNWaterfall;->mPlacement:Lnet/pubnative/sdk/core/config/PNPlacement;

    invoke-virtual {v1}, Lnet/pubnative/sdk/core/config/PNPlacement;->getConfig()Lnet/pubnative/sdk/core/config/model/PNConfigModel;

    move-result-object v1

    iget-object v1, v1, Lnet/pubnative/sdk/core/config/model/PNConfigModel;->request_params:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lnet/pubnative/sdk/core/insights/model/PNInsightModel;->addExtras(Ljava/util/Map;)V

    .line 100
    iget-object v0, p0, Lnet/pubnative/sdk/core/request/PNWaterfall;->mInsight:Lnet/pubnative/sdk/core/insights/model/PNInsightModel;

    invoke-virtual {v0}, Lnet/pubnative/sdk/core/insights/model/PNInsightModel;->getData()Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;

    move-result-object v1

    .line 101
    iget-object v0, p0, Lnet/pubnative/sdk/core/request/PNWaterfall;->mPlacement:Lnet/pubnative/sdk/core/config/PNPlacement;

    invoke-virtual {v0}, Lnet/pubnative/sdk/core/config/PNPlacement;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;->placement_name:Ljava/lang/String;

    .line 102
    iget-object v0, p0, Lnet/pubnative/sdk/core/request/PNWaterfall;->mPlacement:Lnet/pubnative/sdk/core/config/PNPlacement;

    invoke-virtual {v0}, Lnet/pubnative/sdk/core/config/PNPlacement;->getDeliveryRule()Lnet/pubnative/sdk/core/config/model/PNDeliveryRuleModel;

    move-result-object v0

    iget-object v0, v0, Lnet/pubnative/sdk/core/config/model/PNDeliveryRuleModel;->segment_ids:Ljava/util/List;

    iput-object v0, v1, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;->delivery_segment_ids:Ljava/util/List;

    .line 103
    iget-object v0, p0, Lnet/pubnative/sdk/core/request/PNWaterfall;->mPlacement:Lnet/pubnative/sdk/core/config/PNPlacement;

    invoke-virtual {v0}, Lnet/pubnative/sdk/core/config/PNPlacement;->getAdFormatCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;->ad_format_code:Ljava/lang/String;

    .line 104
    sget-boolean v0, Lnet/pubnative/sdk/core/PNSettings;->isCoppaModeEnabled:Z

    if-eqz v0, :cond_0

    const-string v0, "1"

    :goto_0
    iput-object v0, v1, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;->coppa:Ljava/lang/String;

    .line 105
    sget-object v0, Lnet/pubnative/sdk/core/PNSettings;->advertisingId:Ljava/lang/String;

    iput-object v0, v1, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;->user_uid:Ljava/lang/String;

    .line 106
    iget-object v0, p0, Lnet/pubnative/sdk/core/request/PNWaterfall;->mInsight:Lnet/pubnative/sdk/core/insights/model/PNInsightModel;

    invoke-virtual {v0, v1}, Lnet/pubnative/sdk/core/insights/model/PNInsightModel;->setData(Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;)V

    .line 107
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/pubnative/sdk/core/request/PNWaterfall;->onWaterfallLoadFinish(Z)V

    .line 108
    return-void

    .line 104
    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method protected trackAttemptedNetwork(JLjava/lang/Exception;)V
    .locals 3

    .prologue
    .line 174
    iget-object v0, p0, Lnet/pubnative/sdk/core/request/PNWaterfall;->mPlacement:Lnet/pubnative/sdk/core/config/PNPlacement;

    if-eqz v0, :cond_0

    .line 175
    const/4 v0, 0x0

    .line 176
    iget-object v1, p0, Lnet/pubnative/sdk/core/request/PNWaterfall;->mPlacement:Lnet/pubnative/sdk/core/config/PNPlacement;

    invoke-virtual {v1}, Lnet/pubnative/sdk/core/config/PNPlacement;->getCurrentNetwork()Lnet/pubnative/sdk/core/config/model/PNNetworkModel;

    move-result-object v1

    .line 177
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lnet/pubnative/sdk/core/config/model/PNNetworkModel;->isCrashReportEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 180
    :goto_0
    iget-object v0, p0, Lnet/pubnative/sdk/core/request/PNWaterfall;->mInsight:Lnet/pubnative/sdk/core/insights/model/PNInsightModel;

    iget-object v1, p0, Lnet/pubnative/sdk/core/request/PNWaterfall;->mPlacement:Lnet/pubnative/sdk/core/config/PNPlacement;

    invoke-virtual {v1}, Lnet/pubnative/sdk/core/config/PNPlacement;->getCurrentPriority()Lnet/pubnative/sdk/core/config/model/PNPriorityRuleModel;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2, p3}, Lnet/pubnative/sdk/core/insights/model/PNInsightModel;->trackAttemptedNetwork(Lnet/pubnative/sdk/core/config/model/PNPriorityRuleModel;JLjava/lang/Exception;)V

    .line 182
    :cond_0
    return-void

    :cond_1
    move-object p3, v0

    goto :goto_0
.end method

.method protected declared-synchronized trackSuccededNetwork(J)V
    .locals 3

    .prologue
    .line 165
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnet/pubnative/sdk/core/request/PNWaterfall;->mInsight:Lnet/pubnative/sdk/core/insights/model/PNInsightModel;

    iget-object v1, p0, Lnet/pubnative/sdk/core/request/PNWaterfall;->mPlacement:Lnet/pubnative/sdk/core/config/PNPlacement;

    invoke-virtual {v1}, Lnet/pubnative/sdk/core/config/PNPlacement;->getCurrentPriority()Lnet/pubnative/sdk/core/config/model/PNPriorityRuleModel;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lnet/pubnative/sdk/core/insights/model/PNInsightModel;->trackSuccededNetwork(Lnet/pubnative/sdk/core/config/model/PNPriorityRuleModel;J)V

    .line 166
    invoke-virtual {p0}, Lnet/pubnative/sdk/core/request/PNWaterfall;->sendRequestInsight()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    monitor-exit p0

    return-void

    .line 165
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected trackUnreachableNetwork(JLjava/lang/Exception;)V
    .locals 3

    .prologue
    .line 185
    iget-object v0, p0, Lnet/pubnative/sdk/core/request/PNWaterfall;->mPlacement:Lnet/pubnative/sdk/core/config/PNPlacement;

    if-eqz v0, :cond_0

    .line 186
    const/4 v0, 0x0

    .line 187
    iget-object v1, p0, Lnet/pubnative/sdk/core/request/PNWaterfall;->mPlacement:Lnet/pubnative/sdk/core/config/PNPlacement;

    invoke-virtual {v1}, Lnet/pubnative/sdk/core/config/PNPlacement;->getCurrentNetwork()Lnet/pubnative/sdk/core/config/model/PNNetworkModel;

    move-result-object v1

    .line 188
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lnet/pubnative/sdk/core/config/model/PNNetworkModel;->isCrashReportEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 191
    :goto_0
    iget-object v0, p0, Lnet/pubnative/sdk/core/request/PNWaterfall;->mInsight:Lnet/pubnative/sdk/core/insights/model/PNInsightModel;

    iget-object v1, p0, Lnet/pubnative/sdk/core/request/PNWaterfall;->mPlacement:Lnet/pubnative/sdk/core/config/PNPlacement;

    invoke-virtual {v1}, Lnet/pubnative/sdk/core/config/PNPlacement;->getCurrentPriority()Lnet/pubnative/sdk/core/config/model/PNPriorityRuleModel;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2, p3}, Lnet/pubnative/sdk/core/insights/model/PNInsightModel;->trackUnreachableNetwork(Lnet/pubnative/sdk/core/config/model/PNPriorityRuleModel;JLjava/lang/Exception;)V

    .line 193
    :cond_0
    return-void

    :cond_1
    move-object p3, v0

    goto :goto_0
.end method
