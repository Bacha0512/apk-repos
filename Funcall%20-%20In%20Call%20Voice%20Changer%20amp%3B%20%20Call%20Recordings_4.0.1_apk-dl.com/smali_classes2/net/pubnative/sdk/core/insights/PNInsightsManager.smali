.class public Lnet/pubnative/sdk/core/insights/PNInsightsManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final INSIGHTS_FAILED_DATA:Ljava/lang/String; = "failed_data"

.field protected static final INSIGHTS_PENDING_DATA:Ljava/lang/String; = "pending_data"

.field protected static final INSIGHTS_PREFERENCES_KEY:Ljava/lang/String; = "net.pubnative.mediation.tracking.PNInsightsManager"

.field private static TAG:Ljava/lang/String;

.field protected static sIdle:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lnet/pubnative/sdk/core/insights/PNInsightsManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/pubnative/sdk/core/insights/PNInsightsManager;->TAG:Ljava/lang/String;

    .line 54
    const/4 v0, 0x1

    sput-boolean v0, Lnet/pubnative/sdk/core/insights/PNInsightsManager;->sIdle:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static dequeueInsightItem(Landroid/content/Context;Ljava/lang/String;)Lnet/pubnative/sdk/core/insights/model/PNInsightRequestModel;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 198
    const/4 v0, 0x0

    .line 199
    if-eqz p0, :cond_0

    .line 200
    invoke-static {p0, p1}, Lnet/pubnative/sdk/core/insights/PNInsightsManager;->getTrackingList(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 201
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 202
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/pubnative/sdk/core/insights/model/PNInsightRequestModel;

    .line 203
    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 204
    invoke-static {p0, p1, v1}, Lnet/pubnative/sdk/core/insights/PNInsightsManager;->setTrackingList(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    .line 207
    :cond_0
    return-object v0
.end method

.method protected static enqueueInsightItem(Landroid/content/Context;Ljava/lang/String;Lnet/pubnative/sdk/core/insights/model/PNInsightRequestModel;)V
    .locals 1

    .prologue
    .line 176
    if-eqz p0, :cond_1

    if-eqz p2, :cond_1

    .line 177
    invoke-static {p0, p1}, Lnet/pubnative/sdk/core/insights/PNInsightsManager;->getTrackingList(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 178
    if-nez v0, :cond_0

    .line 179
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 181
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    invoke-static {p0, p1, v0}, Lnet/pubnative/sdk/core/insights/PNInsightsManager;->setTrackingList(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    .line 184
    :cond_1
    return-void
.end method

.method protected static enqueueInsightList(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lnet/pubnative/sdk/core/insights/model/PNInsightRequestModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 187
    if-eqz p0, :cond_1

    if-eqz p2, :cond_1

    .line 188
    invoke-static {p0, p1}, Lnet/pubnative/sdk/core/insights/PNInsightsManager;->getTrackingList(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 189
    if-nez v0, :cond_0

    .line 190
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 192
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 193
    invoke-static {p0, p1, v0}, Lnet/pubnative/sdk/core/insights/PNInsightsManager;->setTrackingList(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    .line 195
    :cond_1
    return-void
.end method

.method protected static getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    .prologue
    .line 265
    const/4 v0, 0x0

    .line 266
    if-eqz p0, :cond_0

    .line 267
    const-string v0, "net.pubnative.mediation.tracking.PNInsightsManager"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 269
    :cond_0
    return-object v0
.end method

.method protected static getSharedPreferencesEditor(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;
    .locals 2

    .prologue
    .line 256
    const/4 v0, 0x0

    .line 257
    invoke-static {p0}, Lnet/pubnative/sdk/core/insights/PNInsightsManager;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 258
    if-eqz v1, :cond_0

    .line 259
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 261
    :cond_0
    return-object v0
.end method

.method protected static getTrackingList(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lnet/pubnative/sdk/core/insights/model/PNInsightRequestModel;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 217
    .line 218
    if-eqz p0, :cond_0

    .line 219
    invoke-static {p0}, Lnet/pubnative/sdk/core/insights/PNInsightsManager;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 220
    if-eqz v1, :cond_0

    .line 221
    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 222
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 224
    :try_start_0
    const-class v2, Lnet/pubnative/sdk/core/insights/model/PNInsightRequestModel;

    invoke-static {v1, v2}, Lnet/pubnative/sdk/core/utils/PNStringUtils;->convertStringToObjects(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 231
    :cond_0
    :goto_0
    return-object v0

    .line 225
    :catch_0
    move-exception v1

    .line 226
    sget-object v2, Lnet/pubnative/sdk/core/insights/PNInsightsManager;->TAG:Ljava/lang/String;

    const-string v3, "getTrackingList: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected static sendTrackingDataToServer(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lnet/pubnative/sdk/core/network/PNHttpRequest$Listener;)V
    .locals 1

    .prologue
    .line 166
    new-instance v0, Lnet/pubnative/sdk/core/network/PNHttpRequest;

    invoke-direct {v0}, Lnet/pubnative/sdk/core/network/PNHttpRequest;-><init>()V

    .line 167
    invoke-virtual {v0, p1}, Lnet/pubnative/sdk/core/network/PNHttpRequest;->setPOSTString(Ljava/lang/String;)V

    .line 168
    invoke-virtual {v0, p0, p2, p3}, Lnet/pubnative/sdk/core/network/PNHttpRequest;->start(Landroid/content/Context;Ljava/lang/String;Lnet/pubnative/sdk/core/network/PNHttpRequest$Listener;)V

    .line 169
    return-void
.end method

.method protected static setTrackingList(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lnet/pubnative/sdk/core/insights/model/PNInsightRequestModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 235
    if-eqz p0, :cond_2

    .line 236
    invoke-static {p0}, Lnet/pubnative/sdk/core/insights/PNInsightsManager;->getSharedPreferencesEditor(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 237
    if-eqz v0, :cond_2

    .line 238
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 239
    :cond_0
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 246
    :cond_1
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 249
    :cond_2
    return-void

    .line 241
    :cond_3
    invoke-static {p2}, Lnet/pubnative/sdk/core/utils/PNStringUtils;->convertObjectsToJson(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 242
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 243
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public static declared-synchronized trackData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;",
            ")V"
        }
    .end annotation

    .prologue
    .line 69
    const-class v2, Lnet/pubnative/sdk/core/insights/PNInsightsManager;

    monitor-enter v2

    if-nez p0, :cond_0

    .line 70
    :try_start_0
    sget-object v0, Lnet/pubnative/sdk/core/insights/PNInsightsManager;->TAG:Ljava/lang/String;

    const-string v1, "trackData - context can\'t be null. Dropping call"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    :goto_0
    monitor-exit v2

    return-void

    .line 71
    :cond_0
    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    sget-object v0, Lnet/pubnative/sdk/core/insights/PNInsightsManager;->TAG:Ljava/lang/String;

    const-string v1, "trackData - baseURL can\'t be empty. Dropping call"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 73
    :cond_1
    if-nez p3, :cond_2

    .line 74
    :try_start_2
    sget-object v0, Lnet/pubnative/sdk/core/insights/PNInsightsManager;->TAG:Ljava/lang/String;

    const-string v1, "trackData - dataModel can\'t be null. Dropping call"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 76
    :cond_2
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    .line 78
    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 79
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 80
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_1

    .line 83
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v4, 0x3e8

    mul-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p3, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;->generated_at:Ljava/lang/Long;

    .line 84
    new-instance v0, Lnet/pubnative/sdk/core/insights/model/PNInsightRequestModel;

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lnet/pubnative/sdk/core/insights/model/PNInsightRequestModel;-><init>(Ljava/lang/String;Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;)V

    .line 86
    const-string v1, "failed_data"

    invoke-static {p0, v1}, Lnet/pubnative/sdk/core/insights/PNInsightsManager;->getTrackingList(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 87
    const-string v3, "pending_data"

    invoke-static {p0, v3, v1}, Lnet/pubnative/sdk/core/insights/PNInsightsManager;->enqueueInsightList(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    .line 88
    const-string v1, "failed_data"

    const/4 v3, 0x0

    invoke-static {p0, v1, v3}, Lnet/pubnative/sdk/core/insights/PNInsightsManager;->setTrackingList(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    .line 90
    const-string v1, "pending_data"

    invoke-static {p0, v1, v0}, Lnet/pubnative/sdk/core/insights/PNInsightsManager;->enqueueInsightItem(Landroid/content/Context;Ljava/lang/String;Lnet/pubnative/sdk/core/insights/model/PNInsightRequestModel;)V

    .line 92
    invoke-static {p0}, Lnet/pubnative/sdk/core/insights/PNInsightsManager;->trackNext(Landroid/content/Context;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method protected static declared-synchronized trackNext(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 101
    const-class v1, Lnet/pubnative/sdk/core/insights/PNInsightsManager;

    monitor-enter v1

    if-nez p0, :cond_0

    .line 102
    :try_start_0
    sget-object v0, Lnet/pubnative/sdk/core/insights/PNInsightsManager;->TAG:Ljava/lang/String;

    const-string v2, "trackNext - context can\'t be null. Dropping call"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    :goto_0
    monitor-exit v1

    return-void

    .line 103
    :cond_0
    :try_start_1
    sget-boolean v0, Lnet/pubnative/sdk/core/insights/PNInsightsManager;->sIdle:Z

    if-eqz v0, :cond_3

    .line 104
    const/4 v0, 0x0

    sput-boolean v0, Lnet/pubnative/sdk/core/insights/PNInsightsManager;->sIdle:Z

    .line 105
    const-string v0, "pending_data"

    invoke-static {p0, v0}, Lnet/pubnative/sdk/core/insights/PNInsightsManager;->dequeueInsightItem(Landroid/content/Context;Ljava/lang/String;)Lnet/pubnative/sdk/core/insights/model/PNInsightRequestModel;

    move-result-object v0

    .line 106
    if-nez v0, :cond_1

    .line 107
    sget-object v0, Lnet/pubnative/sdk/core/insights/PNInsightsManager;->TAG:Ljava/lang/String;

    const-string v2, "trackNext - Dequeued item is null. Dropping call"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const/4 v0, 0x1

    sput-boolean v0, Lnet/pubnative/sdk/core/insights/PNInsightsManager;->sIdle:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 110
    :cond_1
    :try_start_2
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    iget-object v3, v0, Lnet/pubnative/sdk/core/insights/model/PNInsightRequestModel;->dataModel:Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;

    invoke-virtual {v2, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 111
    iget-object v3, v0, Lnet/pubnative/sdk/core/insights/model/PNInsightRequestModel;->url:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 112
    new-instance v3, Lnet/pubnative/sdk/core/insights/PNInsightsManager$1;

    invoke-direct {v3, p0, v0}, Lnet/pubnative/sdk/core/insights/PNInsightsManager$1;-><init>(Landroid/content/Context;Lnet/pubnative/sdk/core/insights/model/PNInsightRequestModel;)V

    .line 140
    iget-object v0, v0, Lnet/pubnative/sdk/core/insights/model/PNInsightRequestModel;->url:Ljava/lang/String;

    invoke-static {p0, v2, v0, v3}, Lnet/pubnative/sdk/core/insights/PNInsightsManager;->sendTrackingDataToServer(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lnet/pubnative/sdk/core/network/PNHttpRequest$Listener;)V

    goto :goto_0

    .line 143
    :cond_2
    invoke-static {p0, v0}, Lnet/pubnative/sdk/core/insights/PNInsightsManager;->trackingFinished(Landroid/content/Context;Lnet/pubnative/sdk/core/insights/model/PNInsightRequestModel;)V

    goto :goto_0

    .line 147
    :cond_3
    sget-object v0, Lnet/pubnative/sdk/core/insights/PNInsightsManager;->TAG:Ljava/lang/String;

    const-string v2, "trackNext - Already tracking one request. Dropping call"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method protected static trackingFailed(Landroid/content/Context;Lnet/pubnative/sdk/core/insights/model/PNInsightRequestModel;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 153
    iget-object v0, p1, Lnet/pubnative/sdk/core/insights/model/PNInsightRequestModel;->dataModel:Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;

    iget-object v1, p1, Lnet/pubnative/sdk/core/insights/model/PNInsightRequestModel;->dataModel:Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;

    iget v1, v1, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;->retry:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;->retry:I

    .line 154
    iget-object v0, p1, Lnet/pubnative/sdk/core/insights/model/PNInsightRequestModel;->dataModel:Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;

    iput-object p2, v0, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;->retry_error:Ljava/lang/String;

    .line 155
    const-string v0, "failed_data"

    invoke-static {p0, v0, p1}, Lnet/pubnative/sdk/core/insights/PNInsightsManager;->enqueueInsightItem(Landroid/content/Context;Ljava/lang/String;Lnet/pubnative/sdk/core/insights/model/PNInsightRequestModel;)V

    .line 156
    const/4 v0, 0x1

    sput-boolean v0, Lnet/pubnative/sdk/core/insights/PNInsightsManager;->sIdle:Z

    .line 157
    invoke-static {p0}, Lnet/pubnative/sdk/core/insights/PNInsightsManager;->trackNext(Landroid/content/Context;)V

    .line 158
    return-void
.end method

.method protected static trackingFinished(Landroid/content/Context;Lnet/pubnative/sdk/core/insights/model/PNInsightRequestModel;)V
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x1

    sput-boolean v0, Lnet/pubnative/sdk/core/insights/PNInsightsManager;->sIdle:Z

    .line 162
    invoke-static {p0}, Lnet/pubnative/sdk/core/insights/PNInsightsManager;->trackNext(Landroid/content/Context;)V

    .line 163
    return-void
.end method
