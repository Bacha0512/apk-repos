.class public Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryCPICache;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/pubnative/api/core/request/PNAPIRequest$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryCPICache$Listener;,
        Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryCPICache$CacheItem;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field protected static sAdQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryCPICache$CacheItem;",
            ">;"
        }
    .end annotation
.end field

.field protected static sCacheMinSize:I

.field protected static sCacheThreshold:I

.field private static sInstance:Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryCPICache;

.field protected static sIsCacheEnabled:Z

.field protected static sIsRequesting:Z

.field protected static sListener:Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryCPICache$Listener;

.field protected static sRequestParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 43
    const-class v0, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryCPICache;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryCPICache;->TAG:Ljava/lang/String;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryCPICache;->sAdQueue:Ljava/util/List;

    .line 46
    sput-boolean v1, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryCPICache;->sIsRequesting:Z

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryCPICache;->sRequestParameters:Ljava/util/Map;

    .line 48
    const/4 v0, 0x0

    sput-object v0, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryCPICache;->sListener:Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryCPICache$Listener;

    .line 49
    const/4 v0, 0x2

    sput v0, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryCPICache;->sCacheMinSize:I

    .line 50
    sput-boolean v1, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryCPICache;->sIsCacheEnabled:Z

    .line 51
    const/16 v0, 0x3c

    sput v0, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryCPICache;->sCacheThreshold:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    return-void
.end method

.method public static declared-synchronized get(Landroid/content/Context;)Lnet/pubnative/api/core/request/model/PNAPIAdModel;
    .locals 3

    .prologue
    .line 134
    const-class v1, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryCPICache;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryCPICache;->getInstance()Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryCPICache;

    move-result-object v0

    invoke-virtual {v0}, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryCPICache;->dequeue()Lnet/pubnative/api/core/request/model/PNAPIAdModel;

    move-result-object v0

    .line 136
    invoke-static {}, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryCPICache;->getInstance()Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryCPICache;

    move-result-object v2

    invoke-virtual {v2}, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryCPICache;->isCacheSizeCritical()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 137
    invoke-static {}, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryCPICache;->getInstance()Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryCPICache;

    move-result-object v2

    invoke-direct {v2, p0}, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryCPICache;->request(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    :cond_0
    monitor-exit v1

    return-object v0

    .line 134
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected static declared-synchronized getInstance()Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryCPICache;
    .locals 2

    .prologue
    .line 84
    const-class v1, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryCPICache;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryCPICache;->sInstance:Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryCPICache;

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryCPICache;

    invoke-direct {v0}, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryCPICache;-><init>()V

    sput-object v0, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryCPICache;->sInstance:Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryCPICache;

    .line 87
    :cond_0
    sget-object v0, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryCPICache;->sInstance:Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryCPICache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Lnet/pubnative/sdk/core/config/model/PNConfigModel;Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryCPICache$Listener;)V
    .locals 2

    .prologue
    .line 94
    sput-object p3, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryCPICache;->sListener:Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryCPICache$Listener;

    .line 95
    if-nez p0, :cond_0

    .line 96
    sget-object v0, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryCPICache;->TAG:Ljava/lang/String;

    const-string v1, "context is null or empty and required, dropping this call"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-static {}, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryCPICache;->getInstance()Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryCPICache;

    move-result-object v0

    invoke-direct {v0}, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryCPICache;->invokeLoadFinish()V

    .line 129
    :goto_0
    return-void

    .line 98
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    sget-object v0, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryCPICache;->TAG:Ljava/lang/String;

    const-string v1, "app token is null or empty and required, dropping this call"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-static {}, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryCPICache;->getInstance()Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryCPICache;

    move-result-object v0

    invoke-direct {v0}, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryCPICache;->invokeLoadFinish()V

    goto :goto_0

    .line 101
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lnet/pubnative/sdk/core/config/model/PNConfigModel;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 102
    :cond_2
    sget-object v0, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryCPICache;->TAG:Ljava/lang/String;

    const-string v1, "config is null or empty and required, dropping this call"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-static {}, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryCPICache;->getInstance()Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryCPICache;

    move-result-object v0

    invoke-direct {v0}, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryCPICache;->invokeLoadFinish()V

    goto :goto_0

    .line 104
    :cond_3
    invoke-static {}, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryCPICache;->getInstance()Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryCPICache;

    move-result-object v0

    invoke-virtual {v0}, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryCPICache;->isCacheSizeCritical()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 106
    sget-object v0, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryCPICache;->sRequestParameters:Ljava/util/Map;

    const-string v1, "apptoken"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object v0, p2, Lnet/pubnative/sdk/core/config/model/PNConfigModel;->ad_cache_params:Ljava/util/Map;

    if-eqz v0, :cond_4

    .line 108
    sget-object v0, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryCPICache;->sRequestParameters:Ljava/util/Map;

    iget-object v1, p2, Lnet/pubnative/sdk/core/config/model/PNConfigModel;->ad_cache_params:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 111
    :cond_4
    iget-object v0, p2, Lnet/pubnative/sdk/core/config/model/PNConfigModel;->globals:Ljava/util/Map;

    const-string v1, "ad_cache_min_size"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 112
    const-string v0, "ad_cache_min_size"

    invoke-virtual {p2, v0}, Lnet/pubnative/sdk/core/config/model/PNConfigModel;->getGlobal(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    .line 113
    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v0

    sput v0, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryCPICache;->sCacheMinSize:I

    .line 116
    :cond_5
    iget-object v0, p2, Lnet/pubnative/sdk/core/config/model/PNConfigModel;->globals:Ljava/util/Map;

    const-string v1, "refresh_ad_cache"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 117
    const-string v0, "refresh_ad_cache"

    invoke-virtual {p2, v0}, Lnet/pubnative/sdk/core/config/model/PNConfigModel;->getGlobal(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    .line 118
    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v0

    sput v0, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryCPICache;->sCacheThreshold:I

    .line 121
    :cond_6
    iget-object v0, p2, Lnet/pubnative/sdk/core/config/model/PNConfigModel;->globals:Ljava/util/Map;

    const-string v1, "cpa_cache"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 122
    const-string v0, "cpa_cache"

    invoke-virtual {p2, v0}, Lnet/pubnative/sdk/core/config/model/PNConfigModel;->getGlobal(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 123
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryCPICache;->sIsCacheEnabled:Z

    .line 125
    :cond_7
    invoke-static {}, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryCPICache;->getInstance()Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryCPICache;

    move-result-object v0

    invoke-direct {v0, p0}, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryCPICache;->request(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 127
    :cond_8
    invoke-static {}, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryCPICache;->getInstance()Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryCPICache;

    move-result-object v0

    invoke-direct {v0}, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryCPICache;->invokeLoadFinish()V

    goto/16 :goto_0
.end method

.method private invokeLoadFinish()V
    .locals 2

    .prologue
    .line 175
    const/4 v0, 0x0

    sput-boolean v0, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryCPICache;->sIsRequesting:Z

    .line 176
    sget-object v0, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryCPICache;->sListener:Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryCPICache$Listener;

    .line 177
    const/4 v1, 0x0

    sput-object v1, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryCPICache;->sListener:Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryCPICache$Listener;

    .line 178
    if-eqz v0, :cond_0

    .line 179
    invoke-interface {v0}, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryCPICache$Listener;->onPubnativeCpiCacheLoadFinish()V

    .line 181
    :cond_0
    return-void
.end method

.method private request(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 146
    if-nez p1, :cond_0

    .line 147
    sget-object v0, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryCPICache;->TAG:Ljava/lang/String;

    const-string v1, "context is nil and required, dropping this call"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :goto_0
    return-void

    .line 148
    :cond_0
    sget-boolean v0, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryCPICache;->sIsRequesting:Z

    if-eqz v0, :cond_1

    .line 149
    sget-object v0, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryCPICache;->TAG:Ljava/lang/String;

    const-string v1, "currently requesting, dropping this call"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 150
    :cond_1
    sget-boolean v0, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryCPICache;->sIsCacheEnabled:Z

    if-eqz v0, :cond_4

    .line 151
    const/4 v0, 0x1

    sput-boolean v0, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryCPICache;->sIsRequesting:Z

    .line 152
    new-instance v2, Lnet/pubnative/api/core/request/PNAPIRequest;

    invoke-direct {v2}, Lnet/pubnative/api/core/request/PNAPIRequest;-><init>()V

    .line 153
    sget-object v0, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryCPICache;->sRequestParameters:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 154
    sget-object v1, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryCPICache;->sRequestParameters:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 155
    invoke-virtual {v2, v0, v1}, Lnet/pubnative/api/core/request/PNAPIRequest;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 158
    :cond_2
    sget-object v0, Lnet/pubnative/sdk/core/PNSettings;->targeting:Lnet/pubnative/sdk/core/request/PNAdTargetingModel;

    if-eqz v0, :cond_3

    .line 159
    sget-object v0, Lnet/pubnative/sdk/core/PNSettings;->targeting:Lnet/pubnative/sdk/core/request/PNAdTargetingModel;

    invoke-virtual {v0}, Lnet/pubnative/sdk/core/request/PNAdTargetingModel;->toDictionary()Ljava/util/Map;

    move-result-object v3

    .line 160
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 161
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 162
    invoke-virtual {v2, v0, v1}, Lnet/pubnative/api/core/request/PNAPIRequest;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 166
    :cond_3
    sget-boolean v0, Lnet/pubnative/sdk/core/PNSettings;->isTestModeEnabled:Z

    invoke-virtual {v2, v0}, Lnet/pubnative/api/core/request/PNAPIRequest;->setTestMode(Z)V

    .line 167
    sget-boolean v0, Lnet/pubnative/sdk/core/PNSettings;->isCoppaModeEnabled:Z

    invoke-virtual {v2, v0}, Lnet/pubnative/api/core/request/PNAPIRequest;->setCoppaMode(Z)V

    .line 168
    invoke-virtual {v2, p1, p0}, Lnet/pubnative/api/core/request/PNAPIRequest;->start(Landroid/content/Context;Lnet/pubnative/api/core/request/PNAPIRequest$Listener;)V

    goto :goto_0

    .line 170
    :cond_4
    invoke-direct {p0}, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryCPICache;->invokeLoadFinish()V

    goto :goto_0
.end method


# virtual methods
.method protected clear()V
    .locals 1

    .prologue
    .line 223
    sget-object v0, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryCPICache;->sAdQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 224
    return-void
.end method

.method protected dequeue()Lnet/pubnative/api/core/request/model/PNAPIAdModel;
    .locals 8

    .prologue
    .line 209
    const/4 v0, 0x0

    .line 211
    sget-object v1, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryCPICache;->sAdQueue:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 212
    sget-object v0, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryCPICache;->sAdQueue:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryCPICache$CacheItem;

    .line 213
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryCPICache$CacheItem;->timestamp:J

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    sget v6, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryCPICache;->sCacheThreshold:I

    int-to-long v6, v6

    invoke-virtual {v1, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    add-long/2addr v4, v6

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 214
    invoke-virtual {p0}, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryCPICache;->dequeue()Lnet/pubnative/api/core/request/model/PNAPIAdModel;

    move-result-object v0

    .line 219
    :cond_0
    :goto_0
    return-object v0

    .line 216
    :cond_1
    iget-object v0, v0, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryCPICache$CacheItem;->ad:Lnet/pubnative/api/core/request/model/PNAPIAdModel;

    goto :goto_0
.end method

.method protected enqueue(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnet/pubnative/api/core/request/model/PNAPIAdModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 192
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/pubnative/api/core/request/model/PNAPIAdModel;

    .line 193
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->setUseClickCaching(Z)V

    .line 194
    invoke-virtual {v0}, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->fetch()V

    .line 195
    invoke-virtual {p0, v0}, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryCPICache;->enqueue(Lnet/pubnative/api/core/request/model/PNAPIAdModel;)V

    goto :goto_0

    .line 197
    :cond_0
    return-void
.end method

.method protected enqueue(Lnet/pubnative/api/core/request/model/PNAPIAdModel;)V
    .locals 2

    .prologue
    .line 201
    sget-object v0, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryCPICache;->sAdQueue:Ljava/util/List;

    new-instance v1, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryCPICache$CacheItem;

    invoke-direct {v1, p0, p1}, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryCPICache$CacheItem;-><init>(Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryCPICache;Lnet/pubnative/api/core/request/model/PNAPIAdModel;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    return-void
.end method

.method protected enqueue(Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryCPICache$CacheItem;)V
    .locals 1

    .prologue
    .line 205
    sget-object v0, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryCPICache;->sAdQueue:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    return-void
.end method

.method protected getQueueSize()I
    .locals 1

    .prologue
    .line 227
    sget-object v0, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryCPICache;->sAdQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected isCacheSizeCritical()Z
    .locals 2

    .prologue
    .line 187
    sget-object v0, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryCPICache;->sAdQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sget v1, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryCPICache;->sCacheMinSize:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPNAPIRequestFail(Lnet/pubnative/api/core/request/PNAPIRequest;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 246
    invoke-direct {p0}, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryCPICache;->invokeLoadFinish()V

    .line 247
    return-void
.end method

.method public onPNAPIRequestFinish(Lnet/pubnative/api/core/request/PNAPIRequest;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/pubnative/api/core/request/PNAPIRequest;",
            "Ljava/util/List",
            "<",
            "Lnet/pubnative/api/core/request/model/PNAPIAdModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 238
    if-eqz p2, :cond_0

    .line 239
    invoke-virtual {p0, p2}, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryCPICache;->enqueue(Ljava/util/List;)V

    .line 241
    :cond_0
    invoke-direct {p0}, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryCPICache;->invokeLoadFinish()V

    .line 242
    return-void
.end method
