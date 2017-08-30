.class public Lnet/pubnative/sdk/core/config/PNConfigManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/pubnative/sdk/core/config/PNConfigManager$Listener;
    }
.end annotation


# static fields
.field protected static final APP_TOKEN_STRING_KEY:Ljava/lang/String; = "appToken"

.field protected static final CONFIG_STRING_KEY:Ljava/lang/String; = "config"

.field protected static final REFRESH_LONG_KEY:Ljava/lang/String; = "refresh"

.field protected static final SHARED_PREFERENCES_CONFIG:Ljava/lang/String; = "net.pubnative.mediation"

.field private static TAG:Ljava/lang/String; = null

.field protected static final TIMESTAMP_LONG_KEY:Ljava/lang/String; = "config.timestamp"

.field protected static sIdle:Z

.field protected static sQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/pubnative/sdk/core/config/model/PNConfigRequestModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-class v0, Lnet/pubnative/sdk/core/config/PNConfigManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/pubnative/sdk/core/config/PNConfigManager;->TAG:Ljava/lang/String;

    .line 61
    const/4 v0, 0x0

    sput-object v0, Lnet/pubnative/sdk/core/config/PNConfigManager;->sQueue:Ljava/util/List;

    .line 62
    const/4 v0, 0x1

    sput-boolean v0, Lnet/pubnative/sdk/core/config/PNConfigManager;->sIdle:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    return-void
.end method

.method public static clean(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 128
    invoke-static {p0, v0}, Lnet/pubnative/sdk/core/config/PNConfigManager;->setStoredAppToken(Landroid/content/Context;Ljava/lang/String;)V

    .line 129
    invoke-static {p0, v0}, Lnet/pubnative/sdk/core/config/PNConfigManager;->setStoredTimestamp(Landroid/content/Context;Ljava/lang/Long;)V

    .line 130
    invoke-static {p0, v0}, Lnet/pubnative/sdk/core/config/PNConfigManager;->setStoredRefresh(Landroid/content/Context;Ljava/lang/Long;)V

    .line 131
    invoke-static {p0, v0}, Lnet/pubnative/sdk/core/config/PNConfigManager;->setStoredConfig(Landroid/content/Context;Lnet/pubnative/sdk/core/config/model/PNConfigModel;)V

    .line 132
    return-void
.end method

.method protected static configNeedsUpdate(Lnet/pubnative/sdk/core/config/model/PNConfigRequestModel;)Z
    .locals 10

    .prologue
    const/4 v0, 0x1

    .line 268
    const/4 v1, 0x0

    .line 269
    iget-object v2, p0, Lnet/pubnative/sdk/core/config/model/PNConfigRequestModel;->context:Landroid/content/Context;

    invoke-static {v2}, Lnet/pubnative/sdk/core/config/PNConfigManager;->getStoredConfigString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 270
    iget-object v3, p0, Lnet/pubnative/sdk/core/config/model/PNConfigRequestModel;->context:Landroid/content/Context;

    invoke-static {v3}, Lnet/pubnative/sdk/core/config/PNConfigManager;->getStoredAppToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 271
    iget-object v4, p0, Lnet/pubnative/sdk/core/config/model/PNConfigRequestModel;->context:Landroid/content/Context;

    invoke-static {v4}, Lnet/pubnative/sdk/core/config/PNConfigManager;->getStoredRefresh(Landroid/content/Context;)Ljava/lang/Long;

    move-result-object v4

    .line 272
    iget-object v5, p0, Lnet/pubnative/sdk/core/config/model/PNConfigRequestModel;->context:Landroid/content/Context;

    invoke-static {v5}, Lnet/pubnative/sdk/core/config/PNConfigManager;->getStoredTimestamp(Landroid/content/Context;)Ljava/lang/Long;

    move-result-object v5

    .line 273
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 275
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 288
    :cond_0
    :goto_0
    return v0

    .line 278
    :cond_1
    if-eqz v3, :cond_0

    iget-object v2, p0, Lnet/pubnative/sdk/core/config/model/PNConfigRequestModel;->appToken:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 281
    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    .line 284
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-virtual {v2, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v2

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method protected static dequeueRequest()Lnet/pubnative/sdk/core/config/model/PNConfigRequestModel;
    .locals 2

    .prologue
    .line 347
    const/4 v0, 0x0

    .line 348
    sget-object v1, Lnet/pubnative/sdk/core/config/PNConfigManager;->sQueue:Ljava/util/List;

    if-eqz v1, :cond_0

    sget-object v1, Lnet/pubnative/sdk/core/config/PNConfigManager;->sQueue:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 349
    sget-object v0, Lnet/pubnative/sdk/core/config/PNConfigManager;->sQueue:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/pubnative/sdk/core/config/model/PNConfigRequestModel;

    .line 351
    :cond_0
    return-object v0
.end method

.method protected static doNextConfigRequest()V
    .locals 3

    .prologue
    .line 139
    sget-boolean v0, Lnet/pubnative/sdk/core/config/PNConfigManager;->sIdle:Z

    if-eqz v0, :cond_0

    .line 140
    invoke-static {}, Lnet/pubnative/sdk/core/config/PNConfigManager;->dequeueRequest()Lnet/pubnative/sdk/core/config/model/PNConfigRequestModel;

    move-result-object v0

    .line 141
    if-eqz v0, :cond_0

    .line 142
    const/4 v1, 0x0

    sput-boolean v1, Lnet/pubnative/sdk/core/config/PNConfigManager;->sIdle:Z

    .line 144
    sget-object v1, Lnet/pubnative/sdk/core/PNSettings;->os:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 145
    iget-object v1, v0, Lnet/pubnative/sdk/core/config/model/PNConfigRequestModel;->context:Landroid/content/Context;

    new-instance v2, Lnet/pubnative/sdk/core/config/PNConfigManager$1;

    invoke-direct {v2, v0}, Lnet/pubnative/sdk/core/config/PNConfigManager$1;-><init>(Lnet/pubnative/sdk/core/config/model/PNConfigRequestModel;)V

    invoke-static {v1, v2}, Lnet/pubnative/sdk/core/PNSettings;->init(Landroid/content/Context;Lnet/pubnative/sdk/core/PNSettings$Listener;)V

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    invoke-static {v0}, Lnet/pubnative/sdk/core/config/PNConfigManager;->getNextConfig(Lnet/pubnative/sdk/core/config/model/PNConfigRequestModel;)V

    goto :goto_0
.end method

.method protected static declared-synchronized downloadConfig(Lnet/pubnative/sdk/core/config/model/PNConfigRequestModel;)V
    .locals 5

    .prologue
    .line 227
    const-class v1, Lnet/pubnative/sdk/core/config/PNConfigManager;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lnet/pubnative/sdk/core/network/PNHttpRequest;

    invoke-direct {v0}, Lnet/pubnative/sdk/core/network/PNHttpRequest;-><init>()V

    .line 228
    iget-object v2, p0, Lnet/pubnative/sdk/core/config/model/PNConfigRequestModel;->context:Landroid/content/Context;

    invoke-static {p0}, Lnet/pubnative/sdk/core/config/PNConfigManager;->getConfigDownloadUrl(Lnet/pubnative/sdk/core/config/model/PNConfigRequestModel;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lnet/pubnative/sdk/core/config/PNConfigManager$4;

    invoke-direct {v4, p0}, Lnet/pubnative/sdk/core/config/PNConfigManager$4;-><init>(Lnet/pubnative/sdk/core/config/model/PNConfigRequestModel;)V

    invoke-virtual {v0, v2, v3, v4}, Lnet/pubnative/sdk/core/network/PNHttpRequest;->start(Landroid/content/Context;Ljava/lang/String;Lnet/pubnative/sdk/core/network/PNHttpRequest$Listener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    monitor-exit v1

    return-void

    .line 227
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected static enqueueRequest(Lnet/pubnative/sdk/core/config/model/PNConfigRequestModel;)V
    .locals 1

    .prologue
    .line 338
    if-eqz p0, :cond_1

    .line 339
    sget-object v0, Lnet/pubnative/sdk/core/config/PNConfigManager;->sQueue:Ljava/util/List;

    if-nez v0, :cond_0

    .line 340
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lnet/pubnative/sdk/core/config/PNConfigManager;->sQueue:Ljava/util/List;

    .line 342
    :cond_0
    sget-object v0, Lnet/pubnative/sdk/core/config/PNConfigManager;->sQueue:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 344
    :cond_1
    return-void
.end method

.method public static declared-synchronized getConfig(Landroid/content/Context;Ljava/lang/String;Lnet/pubnative/sdk/core/config/PNConfigManager$Listener;)V
    .locals 3

    .prologue
    .line 103
    const-class v1, Lnet/pubnative/sdk/core/config/PNConfigManager;

    monitor-enter v1

    if-nez p2, :cond_0

    .line 104
    :try_start_0
    sget-object v0, Lnet/pubnative/sdk/core/config/PNConfigManager;->TAG:Ljava/lang/String;

    const-string v2, "getConfig - Error: listener is null, dropping this call"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    :goto_0
    monitor-exit v1

    return-void

    .line 105
    :cond_0
    if-nez p0, :cond_1

    .line 107
    :try_start_1
    sget-object v0, Lnet/pubnative/sdk/core/config/PNConfigManager;->TAG:Ljava/lang/String;

    const-string v2, "getConfig - Error: context is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const/4 v0, 0x0

    invoke-static {v0, p2}, Lnet/pubnative/sdk/core/config/PNConfigManager;->invokeLoaded(Lnet/pubnative/sdk/core/config/model/PNConfigModel;Lnet/pubnative/sdk/core/config/PNConfigManager$Listener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 109
    :cond_1
    :try_start_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 110
    sget-object v0, Lnet/pubnative/sdk/core/config/PNConfigManager;->TAG:Ljava/lang/String;

    const-string v2, "getConfig - Error: app token is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const/4 v0, 0x0

    invoke-static {v0, p2}, Lnet/pubnative/sdk/core/config/PNConfigManager;->invokeLoaded(Lnet/pubnative/sdk/core/config/model/PNConfigModel;Lnet/pubnative/sdk/core/config/PNConfigManager$Listener;)V

    goto :goto_0

    .line 113
    :cond_2
    new-instance v0, Lnet/pubnative/sdk/core/config/model/PNConfigRequestModel;

    invoke-direct {v0}, Lnet/pubnative/sdk/core/config/model/PNConfigRequestModel;-><init>()V

    .line 114
    iput-object p0, v0, Lnet/pubnative/sdk/core/config/model/PNConfigRequestModel;->context:Landroid/content/Context;

    .line 115
    iput-object p1, v0, Lnet/pubnative/sdk/core/config/model/PNConfigRequestModel;->appToken:Ljava/lang/String;

    .line 116
    iput-object p2, v0, Lnet/pubnative/sdk/core/config/model/PNConfigRequestModel;->listener:Lnet/pubnative/sdk/core/config/PNConfigManager$Listener;

    .line 117
    invoke-static {v0}, Lnet/pubnative/sdk/core/config/PNConfigManager;->enqueueRequest(Lnet/pubnative/sdk/core/config/model/PNConfigRequestModel;)V

    .line 118
    invoke-static {}, Lnet/pubnative/sdk/core/config/PNConfigManager;->doNextConfigRequest()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method protected static getConfigDownloadBaseUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 361
    const-string v1, "https://ml.pubnative.net/ml/v1/config"

    .line 362
    invoke-static {p0}, Lnet/pubnative/sdk/core/config/PNConfigManager;->getStoredConfig(Landroid/content/Context;)Lnet/pubnative/sdk/core/config/model/PNConfigModel;

    move-result-object v0

    .line 363
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnet/pubnative/sdk/core/config/model/PNConfigModel;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 364
    iget-object v0, v0, Lnet/pubnative/sdk/core/config/model/PNConfigModel;->globals:Ljava/util/Map;

    const-string v2, "config_url"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 365
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 369
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method protected static getConfigDownloadUrl(Lnet/pubnative/sdk/core/config/model/PNConfigRequestModel;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 382
    iget-object v0, p0, Lnet/pubnative/sdk/core/config/model/PNConfigRequestModel;->context:Landroid/content/Context;

    invoke-static {v0}, Lnet/pubnative/sdk/core/config/PNConfigManager;->getConfigDownloadBaseUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    .line 383
    const-string v0, "app_token"

    iget-object v1, p0, Lnet/pubnative/sdk/core/config/model/PNConfigRequestModel;->appToken:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 384
    const-string v0, "os_version"

    sget-object v1, Lnet/pubnative/sdk/core/PNSettings;->osVersion:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 385
    const-string v0, "device_name"

    sget-object v1, Lnet/pubnative/sdk/core/PNSettings;->deviceName:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 386
    const/4 v0, 0x0

    .line 387
    iget-object v1, p0, Lnet/pubnative/sdk/core/config/model/PNConfigRequestModel;->context:Landroid/content/Context;

    invoke-static {v1}, Lnet/pubnative/sdk/core/utils/PNDeviceUtils;->getConnectionType(Landroid/content/Context;)Lnet/pubnative/sdk/core/utils/PNDeviceUtils$ConnectionType;

    move-result-object v1

    .line 388
    sget-object v3, Lnet/pubnative/sdk/core/config/PNConfigManager$5;->$SwitchMap$net$pubnative$sdk$core$utils$PNDeviceUtils$ConnectionType:[I

    invoke-virtual {v1}, Lnet/pubnative/sdk/core/utils/PNDeviceUtils$ConnectionType;->ordinal()I

    move-result v1

    aget v1, v3, v1

    packed-switch v1, :pswitch_data_0

    .line 396
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 397
    const-string v1, "connection_type"

    invoke-virtual {v2, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 400
    :cond_0
    sget-object v0, Lnet/pubnative/sdk/core/PNSettings;->targeting:Lnet/pubnative/sdk/core/request/PNAdTargetingModel;

    if-eqz v0, :cond_1

    .line 401
    sget-object v0, Lnet/pubnative/sdk/core/PNSettings;->targeting:Lnet/pubnative/sdk/core/request/PNAdTargetingModel;

    invoke-virtual {v0}, Lnet/pubnative/sdk/core/request/PNAdTargetingModel;->toDictionaryWithIap()Ljava/util/Map;

    move-result-object v3

    .line 402
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 403
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 404
    invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_1

    .line 390
    :pswitch_0
    const-string v0, "cellular"

    goto :goto_0

    .line 393
    :pswitch_1
    const-string v0, "wifi"

    goto :goto_0

    .line 407
    :cond_1
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 388
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected static getLongSharedPreference(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Long;
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 492
    const/4 v1, 0x0

    .line 493
    invoke-static {p0}, Lnet/pubnative/sdk/core/config/PNConfigManager;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 494
    if-eqz p0, :cond_0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 495
    invoke-interface {v0, p1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 496
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 500
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method protected static getNextConfig(Lnet/pubnative/sdk/core/config/model/PNConfigRequestModel;)V
    .locals 2

    .prologue
    .line 159
    invoke-static {p0}, Lnet/pubnative/sdk/core/config/PNConfigManager;->configNeedsUpdate(Lnet/pubnative/sdk/core/config/model/PNConfigRequestModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lnet/pubnative/sdk/core/config/model/PNConfigRequestModel;->context:Landroid/content/Context;

    new-instance v1, Lnet/pubnative/sdk/core/config/PNConfigManager$2;

    invoke-direct {v1, p0}, Lnet/pubnative/sdk/core/config/PNConfigManager$2;-><init>(Lnet/pubnative/sdk/core/config/model/PNConfigRequestModel;)V

    invoke-static {v0, v1}, Lnet/pubnative/sdk/core/PNSettings;->init(Landroid/content/Context;Lnet/pubnative/sdk/core/PNSettings$Listener;)V

    .line 172
    :goto_0
    return-void

    .line 170
    :cond_0
    invoke-static {p0}, Lnet/pubnative/sdk/core/config/PNConfigManager;->serveStoredConfig(Lnet/pubnative/sdk/core/config/model/PNConfigRequestModel;)V

    goto :goto_0
.end method

.method protected static getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    .prologue
    .line 522
    const/4 v0, 0x0

    .line 523
    if-eqz p0, :cond_0

    .line 524
    const-string v0, "net.pubnative.mediation"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 526
    :cond_0
    return-object v0
.end method

.method protected static getStoredAppToken(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 429
    const-string v0, "appToken"

    invoke-static {p0, v0}, Lnet/pubnative/sdk/core/config/PNConfigManager;->getStringSharedPreference(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static getStoredConfig(Landroid/content/Context;)Lnet/pubnative/sdk/core/config/model/PNConfigModel;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 193
    .line 194
    invoke-static {p0}, Lnet/pubnative/sdk/core/config/PNConfigManager;->getStoredConfigString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 195
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 197
    :try_start_0
    const-class v2, Lnet/pubnative/sdk/core/config/model/PNConfigModel;

    invoke-static {v0, v2}, Lnet/pubnative/sdk/core/utils/PNStringUtils;->convertStringToObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/pubnative/sdk/core/config/model/PNConfigModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnet/pubnative/sdk/core/config/model/PNConfigModel;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move-object v0, v1

    .line 206
    :cond_1
    return-object v0

    .line 198
    :catch_0
    move-exception v0

    .line 199
    sget-object v2, Lnet/pubnative/sdk/core/config/PNConfigManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getStoredConfig - Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method protected static declared-synchronized getStoredConfigString(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 415
    const-class v1, Lnet/pubnative/sdk/core/config/PNConfigManager;

    monitor-enter v1

    :try_start_0
    const-string v0, "config"

    invoke-static {p0, v0}, Lnet/pubnative/sdk/core/config/PNConfigManager;->getStringSharedPreference(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected static getStoredRefresh(Landroid/content/Context;)Ljava/lang/Long;
    .locals 1

    .prologue
    .line 453
    const-string v0, "refresh"

    invoke-static {p0, v0}, Lnet/pubnative/sdk/core/config/PNConfigManager;->getLongSharedPreference(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected static getStoredTimestamp(Landroid/content/Context;)Ljava/lang/Long;
    .locals 1

    .prologue
    .line 441
    const-string v0, "config.timestamp"

    invoke-static {p0, v0}, Lnet/pubnative/sdk/core/config/PNConfigManager;->getLongSharedPreference(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected static getStringSharedPreference(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 465
    .line 466
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 467
    invoke-static {p0}, Lnet/pubnative/sdk/core/config/PNConfigManager;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 468
    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 469
    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 472
    :cond_0
    return-object v0
.end method

.method protected static invokeLoaded(Lnet/pubnative/sdk/core/config/model/PNConfigModel;Lnet/pubnative/sdk/core/config/PNConfigManager$Listener;)V
    .locals 1

    .prologue
    .line 326
    const/4 v0, 0x1

    sput-boolean v0, Lnet/pubnative/sdk/core/config/PNConfigManager;->sIdle:Z

    .line 327
    if-eqz p1, :cond_0

    .line 328
    invoke-interface {p1, p0}, Lnet/pubnative/sdk/core/config/PNConfigManager$Listener;->onConfigLoaded(Lnet/pubnative/sdk/core/config/model/PNConfigModel;)V

    .line 330
    :cond_0
    invoke-static {}, Lnet/pubnative/sdk/core/config/PNConfigManager;->doNextConfigRequest()V

    .line 331
    return-void
.end method

.method protected static processConfigDownloadResponse(Lnet/pubnative/sdk/core/config/model/PNConfigRequestModel;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 244
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    sget-object v0, Lnet/pubnative/sdk/core/config/PNConfigManager;->TAG:Ljava/lang/String;

    const-string v1, "downloadConfig - Error, empty response"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    invoke-static {p0}, Lnet/pubnative/sdk/core/config/PNConfigManager;->serveStoredConfig(Lnet/pubnative/sdk/core/config/model/PNConfigRequestModel;)V

    .line 265
    :goto_0
    return-void

    .line 250
    :cond_0
    :try_start_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lnet/pubnative/sdk/core/config/model/PNConfigAPIResponseModel;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/pubnative/sdk/core/config/model/PNConfigAPIResponseModel;

    .line 251
    const-string v1, "ok"

    iget-object v2, v0, Lnet/pubnative/sdk/core/config/model/PNConfigAPIResponseModel;->status:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 253
    iget-object v1, p0, Lnet/pubnative/sdk/core/config/model/PNConfigRequestModel;->context:Landroid/content/Context;

    iget-object v2, v0, Lnet/pubnative/sdk/core/config/model/PNConfigAPIResponseModel;->config:Lnet/pubnative/sdk/core/config/model/PNConfigModel;

    invoke-static {v1, v2}, Lnet/pubnative/sdk/core/config/PNConfigManager;->updateDeliveryManagerCache(Landroid/content/Context;Lnet/pubnative/sdk/core/config/model/PNConfigModel;)V

    .line 255
    iget-object v1, p0, Lnet/pubnative/sdk/core/config/model/PNConfigRequestModel;->context:Landroid/content/Context;

    iget-object v2, p0, Lnet/pubnative/sdk/core/config/model/PNConfigRequestModel;->appToken:Ljava/lang/String;

    iget-object v0, v0, Lnet/pubnative/sdk/core/config/model/PNConfigAPIResponseModel;->config:Lnet/pubnative/sdk/core/config/model/PNConfigModel;

    invoke-static {v1, v2, v0}, Lnet/pubnative/sdk/core/config/PNConfigManager;->updateConfig(Landroid/content/Context;Ljava/lang/String;Lnet/pubnative/sdk/core/config/model/PNConfigModel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 260
    :catch_0
    move-exception v0

    .line 261
    sget-object v1, Lnet/pubnative/sdk/core/config/PNConfigManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "downloadConfig - Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    invoke-static {p0}, Lnet/pubnative/sdk/core/config/PNConfigManager;->serveStoredConfig(Lnet/pubnative/sdk/core/config/model/PNConfigRequestModel;)V

    goto :goto_0

    .line 257
    :cond_1
    :try_start_1
    sget-object v1, Lnet/pubnative/sdk/core/config/PNConfigManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "downloadConfig - Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lnet/pubnative/sdk/core/config/model/PNConfigAPIResponseModel;->error_message:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    invoke-static {p0}, Lnet/pubnative/sdk/core/config/PNConfigManager;->serveStoredConfig(Lnet/pubnative/sdk/core/config/model/PNConfigRequestModel;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected static serveStoredConfig(Lnet/pubnative/sdk/core/config/model/PNConfigRequestModel;)V
    .locals 4

    .prologue
    .line 175
    iget-object v0, p0, Lnet/pubnative/sdk/core/config/model/PNConfigRequestModel;->context:Landroid/content/Context;

    invoke-static {v0}, Lnet/pubnative/sdk/core/config/PNConfigManager;->getStoredAppToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 176
    if-eqz v0, :cond_0

    iget-object v1, p0, Lnet/pubnative/sdk/core/config/model/PNConfigRequestModel;->appToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lnet/pubnative/sdk/core/config/model/PNConfigRequestModel;->context:Landroid/content/Context;

    invoke-static {v0}, Lnet/pubnative/sdk/core/config/PNConfigManager;->getStoredConfig(Landroid/content/Context;)Lnet/pubnative/sdk/core/config/model/PNConfigModel;

    move-result-object v0

    .line 180
    iget-object v1, p0, Lnet/pubnative/sdk/core/config/model/PNConfigRequestModel;->context:Landroid/content/Context;

    iget-object v2, p0, Lnet/pubnative/sdk/core/config/model/PNConfigRequestModel;->appToken:Ljava/lang/String;

    new-instance v3, Lnet/pubnative/sdk/core/config/PNConfigManager$3;

    invoke-direct {v3, v0, p0}, Lnet/pubnative/sdk/core/config/PNConfigManager$3;-><init>(Lnet/pubnative/sdk/core/config/model/PNConfigModel;Lnet/pubnative/sdk/core/config/model/PNConfigRequestModel;)V

    invoke-static {v1, v2, v0, v3}, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryCPICache;->init(Landroid/content/Context;Ljava/lang/String;Lnet/pubnative/sdk/core/config/model/PNConfigModel;Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryCPICache$Listener;)V

    .line 190
    :goto_0
    return-void

    .line 188
    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lnet/pubnative/sdk/core/config/model/PNConfigRequestModel;->listener:Lnet/pubnative/sdk/core/config/PNConfigManager$Listener;

    invoke-static {v0, v1}, Lnet/pubnative/sdk/core/config/PNConfigManager;->invokeLoaded(Lnet/pubnative/sdk/core/config/model/PNConfigModel;Lnet/pubnative/sdk/core/config/PNConfigManager$Listener;)V

    goto :goto_0
.end method

.method protected static setLongSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 4

    .prologue
    .line 504
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 505
    invoke-static {p0}, Lnet/pubnative/sdk/core/config/PNConfigManager;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 506
    if-eqz v0, :cond_0

    .line 507
    if-nez p2, :cond_1

    .line 508
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 512
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 515
    :cond_0
    return-void

    .line 510
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, p1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method protected static setStoredAppToken(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 433
    const-string v0, "appToken"

    invoke-static {p0, v0, p1}, Lnet/pubnative/sdk/core/config/PNConfigManager;->setStringSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    return-void
.end method

.method protected static declared-synchronized setStoredConfig(Landroid/content/Context;Lnet/pubnative/sdk/core/config/model/PNConfigModel;)V
    .locals 3

    .prologue
    .line 420
    const-class v1, Lnet/pubnative/sdk/core/config/PNConfigManager;

    monitor-enter v1

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 421
    :goto_0
    const-string v2, "config"

    invoke-static {p0, v2, v0}, Lnet/pubnative/sdk/core/config/PNConfigManager;->setStringSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 422
    monitor-exit v1

    return-void

    .line 420
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected static setStoredRefresh(Landroid/content/Context;Ljava/lang/Long;)V
    .locals 1

    .prologue
    .line 457
    const-string v0, "refresh"

    invoke-static {p0, v0, p1}, Lnet/pubnative/sdk/core/config/PNConfigManager;->setLongSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;)V

    .line 458
    return-void
.end method

.method protected static setStoredTimestamp(Landroid/content/Context;Ljava/lang/Long;)V
    .locals 1

    .prologue
    .line 445
    const-string v0, "config.timestamp"

    invoke-static {p0, v0, p1}, Lnet/pubnative/sdk/core/config/PNConfigManager;->setLongSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;)V

    .line 446
    return-void
.end method

.method protected static setStringSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 476
    invoke-static {p0}, Lnet/pubnative/sdk/core/config/PNConfigManager;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 477
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 478
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 479
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 483
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 485
    :cond_0
    return-void

    .line 481
    :cond_1
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method protected static updateConfig(Landroid/content/Context;Ljava/lang/String;Lnet/pubnative/sdk/core/config/model/PNConfigModel;)V
    .locals 2

    .prologue
    .line 210
    if-eqz p0, :cond_1

    .line 211
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lnet/pubnative/sdk/core/config/model/PNConfigModel;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 212
    :cond_0
    invoke-static {p0}, Lnet/pubnative/sdk/core/config/PNConfigManager;->clean(Landroid/content/Context;)V

    .line 223
    :cond_1
    :goto_0
    return-void

    .line 214
    :cond_2
    invoke-static {p0, p2}, Lnet/pubnative/sdk/core/config/PNConfigManager;->setStoredConfig(Landroid/content/Context;Lnet/pubnative/sdk/core/config/model/PNConfigModel;)V

    .line 215
    invoke-static {p0, p1}, Lnet/pubnative/sdk/core/config/PNConfigManager;->setStoredAppToken(Landroid/content/Context;Ljava/lang/String;)V

    .line 216
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p0, v0}, Lnet/pubnative/sdk/core/config/PNConfigManager;->setStoredTimestamp(Landroid/content/Context;Ljava/lang/Long;)V

    .line 217
    iget-object v0, p2, Lnet/pubnative/sdk/core/config/model/PNConfigModel;->globals:Ljava/util/Map;

    const-string v1, "refresh"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 218
    iget-object v0, p2, Lnet/pubnative/sdk/core/config/model/PNConfigModel;->globals:Ljava/util/Map;

    const-string v1, "refresh"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    .line 219
    invoke-virtual {v0}, Ljava/lang/Double;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p0, v0}, Lnet/pubnative/sdk/core/config/PNConfigManager;->setStoredRefresh(Landroid/content/Context;Ljava/lang/Long;)V

    goto :goto_0
.end method

.method private static updateDeliveryManagerCache(Landroid/content/Context;Lnet/pubnative/sdk/core/config/model/PNConfigModel;)V
    .locals 7

    .prologue
    .line 292
    invoke-static {p0}, Lnet/pubnative/sdk/core/config/PNConfigManager;->getStoredConfig(Landroid/content/Context;)Lnet/pubnative/sdk/core/config/model/PNConfigModel;

    move-result-object v3

    .line 293
    if-eqz v3, :cond_5

    .line 294
    iget-object v0, v3, Lnet/pubnative/sdk/core/config/model/PNConfigModel;->placements:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 295
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 297
    iget-object v1, p1, Lnet/pubnative/sdk/core/config/model/PNConfigModel;->placements:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/pubnative/sdk/core/config/model/PNPlacementModel;

    .line 298
    iget-object v2, v3, Lnet/pubnative/sdk/core/config/model/PNConfigModel;->placements:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/pubnative/sdk/core/config/model/PNPlacementModel;

    .line 299
    if-nez v1, :cond_1

    .line 300
    invoke-static {p0, v0}, Lnet/pubnative/sdk/core/config/PNDeliveryManager;->resetHourlyImpressionCount(Landroid/content/Context;Ljava/lang/String;)V

    .line 301
    invoke-static {p0, v0}, Lnet/pubnative/sdk/core/config/PNDeliveryManager;->resetDailyImpressionCount(Landroid/content/Context;Ljava/lang/String;)V

    .line 302
    invoke-static {v0}, Lnet/pubnative/sdk/core/config/PNDeliveryManager;->resetPacingCalendar(Ljava/lang/String;)V

    goto :goto_0

    .line 305
    :cond_1
    iget-object v5, v2, Lnet/pubnative/sdk/core/config/model/PNPlacementModel;->delivery_rule:Lnet/pubnative/sdk/core/config/model/PNDeliveryRuleModel;

    iget v5, v5, Lnet/pubnative/sdk/core/config/model/PNDeliveryRuleModel;->imp_cap_hour:I

    iget-object v6, v1, Lnet/pubnative/sdk/core/config/model/PNPlacementModel;->delivery_rule:Lnet/pubnative/sdk/core/config/model/PNDeliveryRuleModel;

    iget v6, v6, Lnet/pubnative/sdk/core/config/model/PNDeliveryRuleModel;->imp_cap_hour:I

    if-eq v5, v6, :cond_2

    .line 306
    invoke-static {p0, v0}, Lnet/pubnative/sdk/core/config/PNDeliveryManager;->resetHourlyImpressionCount(Landroid/content/Context;Ljava/lang/String;)V

    .line 309
    :cond_2
    iget-object v5, v2, Lnet/pubnative/sdk/core/config/model/PNPlacementModel;->delivery_rule:Lnet/pubnative/sdk/core/config/model/PNDeliveryRuleModel;

    iget v5, v5, Lnet/pubnative/sdk/core/config/model/PNDeliveryRuleModel;->imp_cap_day:I

    iget-object v6, v1, Lnet/pubnative/sdk/core/config/model/PNPlacementModel;->delivery_rule:Lnet/pubnative/sdk/core/config/model/PNDeliveryRuleModel;

    iget v6, v6, Lnet/pubnative/sdk/core/config/model/PNDeliveryRuleModel;->imp_cap_day:I

    if-eq v5, v6, :cond_3

    .line 310
    invoke-static {p0, v0}, Lnet/pubnative/sdk/core/config/PNDeliveryManager;->resetDailyImpressionCount(Landroid/content/Context;Ljava/lang/String;)V

    .line 313
    :cond_3
    iget-object v5, v2, Lnet/pubnative/sdk/core/config/model/PNPlacementModel;->delivery_rule:Lnet/pubnative/sdk/core/config/model/PNDeliveryRuleModel;

    iget v5, v5, Lnet/pubnative/sdk/core/config/model/PNDeliveryRuleModel;->pacing_cap_minute:I

    iget-object v6, v1, Lnet/pubnative/sdk/core/config/model/PNPlacementModel;->delivery_rule:Lnet/pubnative/sdk/core/config/model/PNDeliveryRuleModel;

    iget v6, v6, Lnet/pubnative/sdk/core/config/model/PNDeliveryRuleModel;->pacing_cap_minute:I

    if-ne v5, v6, :cond_4

    iget-object v2, v2, Lnet/pubnative/sdk/core/config/model/PNPlacementModel;->delivery_rule:Lnet/pubnative/sdk/core/config/model/PNDeliveryRuleModel;

    iget v2, v2, Lnet/pubnative/sdk/core/config/model/PNDeliveryRuleModel;->pacing_cap_hour:I

    iget-object v1, v1, Lnet/pubnative/sdk/core/config/model/PNPlacementModel;->delivery_rule:Lnet/pubnative/sdk/core/config/model/PNDeliveryRuleModel;

    iget v1, v1, Lnet/pubnative/sdk/core/config/model/PNDeliveryRuleModel;->pacing_cap_hour:I

    if-eq v2, v1, :cond_0

    .line 315
    :cond_4
    invoke-static {v0}, Lnet/pubnative/sdk/core/config/PNDeliveryManager;->resetPacingCalendar(Ljava/lang/String;)V

    goto :goto_0

    .line 320
    :cond_5
    return-void
.end method
