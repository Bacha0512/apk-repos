.class public abstract Lnet/pubnative/sdk/layouts/PNLayoutWaterfall;
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
    .line 42
    const-class v0, Lnet/pubnative/sdk/layouts/PNLayoutWaterfall;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/pubnative/sdk/layouts/PNLayoutWaterfall;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected getHubExtras()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 139
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 140
    const-string v1, "reqid"

    iget-object v2, p0, Lnet/pubnative/sdk/layouts/PNLayoutWaterfall;->mPlacement:Lnet/pubnative/sdk/core/config/PNPlacement;

    invoke-virtual {v2}, Lnet/pubnative/sdk/core/config/PNPlacement;->getTrackingUUID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    return-object v0
.end method

.method protected getNextNetwork()V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/PNLayoutWaterfall;->mPlacement:Lnet/pubnative/sdk/core/config/PNPlacement;

    invoke-virtual {v0}, Lnet/pubnative/sdk/core/config/PNPlacement;->next()V

    .line 129
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/PNLayoutWaterfall;->mPlacement:Lnet/pubnative/sdk/core/config/PNPlacement;

    invoke-virtual {v0}, Lnet/pubnative/sdk/core/config/PNPlacement;->getCurrentNetwork()Lnet/pubnative/sdk/core/config/model/PNNetworkModel;

    move-result-object v0

    .line 130
    if-nez v0, :cond_0

    .line 131
    invoke-virtual {p0}, Lnet/pubnative/sdk/layouts/PNLayoutWaterfall;->sendRequestInsight()V

    .line 132
    sget-object v0, Lnet/pubnative/sdk/core/exceptions/PNException;->REQUEST_NO_FILL:Lnet/pubnative/sdk/core/exceptions/PNException;

    invoke-virtual {p0, v0}, Lnet/pubnative/sdk/layouts/PNLayoutWaterfall;->onPubnativeNetworkLayoutWaterfallLoadFail(Ljava/lang/Exception;)V

    .line 136
    :goto_0
    return-void

    .line 134
    :cond_0
    invoke-virtual {p0}, Lnet/pubnative/sdk/layouts/PNLayoutWaterfall;->getHubExtras()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/pubnative/sdk/layouts/PNLayoutWaterfall;->onPubnativeNetworkLayoutWaterfallNextNetwork(Ljava/util/Map;)V

    goto :goto_0
.end method

.method protected declared-synchronized initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 68
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    :cond_0
    sget-object v0, Lnet/pubnative/sdk/core/exceptions/PNException;->REQUEST_PARAMETERS_INVALID:Lnet/pubnative/sdk/core/exceptions/PNException;

    invoke-virtual {p0, v0}, Lnet/pubnative/sdk/layouts/PNLayoutWaterfall;->onPubnativeNetworkLayoutWaterfallLoadFail(Ljava/lang/Exception;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    :goto_0
    monitor-exit p0

    return-void

    .line 70
    :cond_1
    :try_start_1
    invoke-static {p1}, Lnet/pubnative/sdk/core/utils/PNDeviceUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 71
    iput-object p1, p0, Lnet/pubnative/sdk/layouts/PNLayoutWaterfall;->mContext:Landroid/content/Context;

    .line 72
    iput-object p2, p0, Lnet/pubnative/sdk/layouts/PNLayoutWaterfall;->mAppToken:Ljava/lang/String;

    .line 73
    new-instance v0, Lnet/pubnative/sdk/core/config/PNPlacement;

    invoke-direct {v0}, Lnet/pubnative/sdk/core/config/PNPlacement;-><init>()V

    iput-object v0, p0, Lnet/pubnative/sdk/layouts/PNLayoutWaterfall;->mPlacement:Lnet/pubnative/sdk/core/config/PNPlacement;

    .line 74
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 75
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/PNLayoutWaterfall;->mPlacement:Lnet/pubnative/sdk/core/config/PNPlacement;

    iget-object v1, p0, Lnet/pubnative/sdk/layouts/PNLayoutWaterfall;->mContext:Landroid/content/Context;

    new-instance v5, Lnet/pubnative/sdk/layouts/PNLayoutWaterfall$1;

    invoke-direct {v5, p0}, Lnet/pubnative/sdk/layouts/PNLayoutWaterfall$1;-><init>(Lnet/pubnative/sdk/layouts/PNLayoutWaterfall;)V

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lnet/pubnative/sdk/core/config/PNPlacement;->load(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lnet/pubnative/sdk/core/config/PNPlacement$Listener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 94
    :cond_2
    :try_start_2
    sget-object v0, Lnet/pubnative/sdk/core/exceptions/PNException;->REQUEST_NO_INTERNET:Lnet/pubnative/sdk/core/exceptions/PNException;

    invoke-virtual {p0, v0}, Lnet/pubnative/sdk/layouts/PNLayoutWaterfall;->onPubnativeNetworkLayoutWaterfallLoadFail(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method protected abstract onPubnativeNetworkLayoutWaterfallLoadFail(Ljava/lang/Exception;)V
.end method

.method protected abstract onPubnativeNetworkLayoutWaterfallLoadFinish(Z)V
.end method

.method protected abstract onPubnativeNetworkLayoutWaterfallNextNetwork(Ljava/util/Map;)V
.end method

.method protected sendRequestInsight()V
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/PNLayoutWaterfall;->mInsight:Lnet/pubnative/sdk/core/insights/model/PNInsightModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/pubnative/sdk/core/insights/model/PNInsightModel;->sendRequestInsight(Ljava/util/Map;)V

    .line 154
    return-void
.end method

.method public setInsight(Lnet/pubnative/sdk/core/insights/model/PNInsightModel;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lnet/pubnative/sdk/layouts/PNLayoutWaterfall;->mInsight:Lnet/pubnative/sdk/core/insights/model/PNInsightModel;

    .line 62
    return-void
.end method

.method protected startTracking()V
    .locals 1

    .prologue
    .line 99
    sget-boolean v0, Lnet/pubnative/sdk/core/PNSettings;->isCoppaModeEnabled:Z

    if-eqz v0, :cond_0

    .line 100
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/pubnative/sdk/layouts/PNLayoutWaterfall;->startTracking(Ljava/lang/String;)V

    .line 104
    :goto_0
    return-void

    .line 102
    :cond_0
    sget-object v0, Lnet/pubnative/sdk/core/PNSettings;->advertisingId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lnet/pubnative/sdk/layouts/PNLayoutWaterfall;->startTracking(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected startTracking(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 107
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/PNLayoutWaterfall;->mPlacement:Lnet/pubnative/sdk/core/config/PNPlacement;

    invoke-virtual {v0}, Lnet/pubnative/sdk/core/config/PNPlacement;->getConfig()Lnet/pubnative/sdk/core/config/model/PNConfigModel;

    move-result-object v0

    const-string v1, "request_beacon"

    invoke-virtual {v0, v1}, Lnet/pubnative/sdk/core/config/model/PNConfigModel;->getGlobal(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 108
    iget-object v1, p0, Lnet/pubnative/sdk/layouts/PNLayoutWaterfall;->mPlacement:Lnet/pubnative/sdk/core/config/PNPlacement;

    invoke-virtual {v1}, Lnet/pubnative/sdk/core/config/PNPlacement;->getConfig()Lnet/pubnative/sdk/core/config/model/PNConfigModel;

    move-result-object v1

    const-string v2, "impression_beacon"

    invoke-virtual {v1, v2}, Lnet/pubnative/sdk/core/config/model/PNConfigModel;->getGlobal(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 109
    iget-object v2, p0, Lnet/pubnative/sdk/layouts/PNLayoutWaterfall;->mPlacement:Lnet/pubnative/sdk/core/config/PNPlacement;

    invoke-virtual {v2}, Lnet/pubnative/sdk/core/config/PNPlacement;->getConfig()Lnet/pubnative/sdk/core/config/model/PNConfigModel;

    move-result-object v2

    const-string v3, "click_beacon"

    invoke-virtual {v2, v3}, Lnet/pubnative/sdk/core/config/model/PNConfigModel;->getGlobal(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 110
    iget-object v3, p0, Lnet/pubnative/sdk/layouts/PNLayoutWaterfall;->mPlacement:Lnet/pubnative/sdk/core/config/PNPlacement;

    invoke-virtual {v3}, Lnet/pubnative/sdk/core/config/PNPlacement;->getConfig()Lnet/pubnative/sdk/core/config/model/PNConfigModel;

    move-result-object v3

    const-string v4, "recovered_network_url"

    invoke-virtual {v3, v4}, Lnet/pubnative/sdk/core/config/model/PNConfigModel;->getGlobal(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 111
    new-instance v4, Lnet/pubnative/sdk/core/insights/model/PNInsightModel;

    iget-object v5, p0, Lnet/pubnative/sdk/layouts/PNLayoutWaterfall;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lnet/pubnative/sdk/core/insights/model/PNInsightModel;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lnet/pubnative/sdk/layouts/PNLayoutWaterfall;->mInsight:Lnet/pubnative/sdk/core/insights/model/PNInsightModel;

    .line 112
    iget-object v4, p0, Lnet/pubnative/sdk/layouts/PNLayoutWaterfall;->mInsight:Lnet/pubnative/sdk/core/insights/model/PNInsightModel;

    invoke-virtual {v4, v0, v1, v2, v3}, Lnet/pubnative/sdk/core/insights/model/PNInsightModel;->setInsightURLs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/PNLayoutWaterfall;->mInsight:Lnet/pubnative/sdk/core/insights/model/PNInsightModel;

    const-string v1, "app_token"

    iget-object v2, p0, Lnet/pubnative/sdk/layouts/PNLayoutWaterfall;->mPlacement:Lnet/pubnative/sdk/core/config/PNPlacement;

    invoke-virtual {v2}, Lnet/pubnative/sdk/core/config/PNPlacement;->getAppToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/pubnative/sdk/core/insights/model/PNInsightModel;->addExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/PNLayoutWaterfall;->mInsight:Lnet/pubnative/sdk/core/insights/model/PNInsightModel;

    const-string v1, "reqid"

    iget-object v2, p0, Lnet/pubnative/sdk/layouts/PNLayoutWaterfall;->mPlacement:Lnet/pubnative/sdk/core/config/PNPlacement;

    invoke-virtual {v2}, Lnet/pubnative/sdk/core/config/PNPlacement;->getTrackingUUID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/pubnative/sdk/core/insights/model/PNInsightModel;->addExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/PNLayoutWaterfall;->mInsight:Lnet/pubnative/sdk/core/insights/model/PNInsightModel;

    iget-object v1, p0, Lnet/pubnative/sdk/layouts/PNLayoutWaterfall;->mPlacement:Lnet/pubnative/sdk/core/config/PNPlacement;

    invoke-virtual {v1}, Lnet/pubnative/sdk/core/config/PNPlacement;->getConfig()Lnet/pubnative/sdk/core/config/model/PNConfigModel;

    move-result-object v1

    iget-object v1, v1, Lnet/pubnative/sdk/core/config/model/PNConfigModel;->request_params:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lnet/pubnative/sdk/core/insights/model/PNInsightModel;->addExtras(Ljava/util/Map;)V

    .line 117
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/PNLayoutWaterfall;->mInsight:Lnet/pubnative/sdk/core/insights/model/PNInsightModel;

    invoke-virtual {v0}, Lnet/pubnative/sdk/core/insights/model/PNInsightModel;->getData()Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;

    move-result-object v1

    .line 118
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/PNLayoutWaterfall;->mPlacement:Lnet/pubnative/sdk/core/config/PNPlacement;

    invoke-virtual {v0}, Lnet/pubnative/sdk/core/config/PNPlacement;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;->placement_name:Ljava/lang/String;

    .line 119
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/PNLayoutWaterfall;->mPlacement:Lnet/pubnative/sdk/core/config/PNPlacement;

    invoke-virtual {v0}, Lnet/pubnative/sdk/core/config/PNPlacement;->getDeliveryRule()Lnet/pubnative/sdk/core/config/model/PNDeliveryRuleModel;

    move-result-object v0

    iget-object v0, v0, Lnet/pubnative/sdk/core/config/model/PNDeliveryRuleModel;->segment_ids:Ljava/util/List;

    iput-object v0, v1, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;->delivery_segment_ids:Ljava/util/List;

    .line 120
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/PNLayoutWaterfall;->mPlacement:Lnet/pubnative/sdk/core/config/PNPlacement;

    invoke-virtual {v0}, Lnet/pubnative/sdk/core/config/PNPlacement;->getAdFormatCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;->ad_format_code:Ljava/lang/String;

    .line 121
    sget-boolean v0, Lnet/pubnative/sdk/core/PNSettings;->isCoppaModeEnabled:Z

    if-eqz v0, :cond_0

    const-string v0, "1"

    :goto_0
    iput-object v0, v1, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;->coppa:Ljava/lang/String;

    .line 122
    iput-object p1, v1, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;->user_uid:Ljava/lang/String;

    .line 123
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/PNLayoutWaterfall;->mInsight:Lnet/pubnative/sdk/core/insights/model/PNInsightModel;

    invoke-virtual {v0, v1}, Lnet/pubnative/sdk/core/insights/model/PNInsightModel;->setData(Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;)V

    .line 124
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/pubnative/sdk/layouts/PNLayoutWaterfall;->onPubnativeNetworkLayoutWaterfallLoadFinish(Z)V

    .line 125
    return-void

    .line 121
    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method protected trackAttemptedNetwork(JLjava/lang/Exception;)V
    .locals 3

    .prologue
    .line 157
    const/4 v0, 0x0

    .line 158
    iget-object v1, p0, Lnet/pubnative/sdk/layouts/PNLayoutWaterfall;->mPlacement:Lnet/pubnative/sdk/core/config/PNPlacement;

    invoke-virtual {v1}, Lnet/pubnative/sdk/core/config/PNPlacement;->getCurrentNetwork()Lnet/pubnative/sdk/core/config/model/PNNetworkModel;

    move-result-object v1

    invoke-virtual {v1}, Lnet/pubnative/sdk/core/config/model/PNNetworkModel;->isCrashReportEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 161
    :goto_0
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/PNLayoutWaterfall;->mInsight:Lnet/pubnative/sdk/core/insights/model/PNInsightModel;

    iget-object v1, p0, Lnet/pubnative/sdk/layouts/PNLayoutWaterfall;->mPlacement:Lnet/pubnative/sdk/core/config/PNPlacement;

    invoke-virtual {v1}, Lnet/pubnative/sdk/core/config/PNPlacement;->getCurrentPriority()Lnet/pubnative/sdk/core/config/model/PNPriorityRuleModel;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2, p3}, Lnet/pubnative/sdk/core/insights/model/PNInsightModel;->trackAttemptedNetwork(Lnet/pubnative/sdk/core/config/model/PNPriorityRuleModel;JLjava/lang/Exception;)V

    .line 162
    return-void

    :cond_0
    move-object p3, v0

    goto :goto_0
.end method

.method protected declared-synchronized trackSuccededNetwork(J)V
    .locals 3

    .prologue
    .line 148
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/PNLayoutWaterfall;->mInsight:Lnet/pubnative/sdk/core/insights/model/PNInsightModel;

    iget-object v1, p0, Lnet/pubnative/sdk/layouts/PNLayoutWaterfall;->mPlacement:Lnet/pubnative/sdk/core/config/PNPlacement;

    invoke-virtual {v1}, Lnet/pubnative/sdk/core/config/PNPlacement;->getCurrentPriority()Lnet/pubnative/sdk/core/config/model/PNPriorityRuleModel;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lnet/pubnative/sdk/core/insights/model/PNInsightModel;->trackSuccededNetwork(Lnet/pubnative/sdk/core/config/model/PNPriorityRuleModel;J)V

    .line 149
    invoke-virtual {p0}, Lnet/pubnative/sdk/layouts/PNLayoutWaterfall;->sendRequestInsight()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    monitor-exit p0

    return-void

    .line 148
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected trackUnreachableNetwork(JLjava/lang/Exception;)V
    .locals 3

    .prologue
    .line 165
    const/4 v0, 0x0

    .line 166
    iget-object v1, p0, Lnet/pubnative/sdk/layouts/PNLayoutWaterfall;->mPlacement:Lnet/pubnative/sdk/core/config/PNPlacement;

    invoke-virtual {v1}, Lnet/pubnative/sdk/core/config/PNPlacement;->getCurrentNetwork()Lnet/pubnative/sdk/core/config/model/PNNetworkModel;

    move-result-object v1

    invoke-virtual {v1}, Lnet/pubnative/sdk/core/config/model/PNNetworkModel;->isCrashReportEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 169
    :goto_0
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/PNLayoutWaterfall;->mInsight:Lnet/pubnative/sdk/core/insights/model/PNInsightModel;

    iget-object v1, p0, Lnet/pubnative/sdk/layouts/PNLayoutWaterfall;->mPlacement:Lnet/pubnative/sdk/core/config/PNPlacement;

    invoke-virtual {v1}, Lnet/pubnative/sdk/core/config/PNPlacement;->getCurrentPriority()Lnet/pubnative/sdk/core/config/model/PNPriorityRuleModel;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2, p3}, Lnet/pubnative/sdk/core/insights/model/PNInsightModel;->trackUnreachableNetwork(Lnet/pubnative/sdk/core/config/model/PNPriorityRuleModel;JLjava/lang/Exception;)V

    .line 170
    return-void

    :cond_0
    move-object p3, v0

    goto :goto_0
.end method
