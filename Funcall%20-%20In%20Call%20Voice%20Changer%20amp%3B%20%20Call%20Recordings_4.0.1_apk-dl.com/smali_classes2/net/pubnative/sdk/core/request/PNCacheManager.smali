.class public Lnet/pubnative/sdk/core/request/PNCacheManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;

.field protected static sCacheArray:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Lnet/pubnative/sdk/core/request/PNAdModelCache;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lnet/pubnative/sdk/core/request/PNCacheManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/pubnative/sdk/core/request/PNCacheManager;->TAG:Ljava/lang/String;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lnet/pubnative/sdk/core/request/PNCacheManager;->sCacheArray:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static cacheAd(Ljava/lang/String;ILjava/lang/Integer;Lnet/pubnative/sdk/core/request/PNAdModel;)V
    .locals 2

    .prologue
    .line 133
    invoke-static {p0}, Lnet/pubnative/sdk/core/request/PNCacheManager;->getPlacementCache(Ljava/lang/String;)[Lnet/pubnative/sdk/core/request/PNAdModelCache;

    move-result-object v0

    .line 134
    if-nez p0, :cond_0

    .line 135
    sget-object v0, Lnet/pubnative/sdk/core/request/PNCacheManager;->TAG:Ljava/lang/String;

    const-string v1, "placement fetchAssets not found, cannot set network fetchAssets"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :goto_0
    return-void

    .line 136
    :cond_0
    if-nez p3, :cond_1

    .line 137
    sget-object v0, Lnet/pubnative/sdk/core/request/PNCacheManager;->TAG:Ljava/lang/String;

    const-string v1, "caching null ad, ignoring it"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 138
    :cond_1
    array-length v0, v0

    if-ge p1, v0, :cond_4

    .line 140
    const/4 v0, 0x0

    .line 141
    if-eqz p3, :cond_2

    .line 142
    new-instance v1, Lnet/pubnative/sdk/core/request/PNAdModelCache;

    invoke-direct {v1}, Lnet/pubnative/sdk/core/request/PNAdModelCache;-><init>()V

    .line 143
    iput-object p3, v1, Lnet/pubnative/sdk/core/request/PNAdModelCache;->ad:Lnet/pubnative/sdk/core/request/PNAdModel;

    .line 144
    if-nez p2, :cond_3

    const/4 v0, 0x0

    :goto_1
    iput v0, v1, Lnet/pubnative/sdk/core/request/PNAdModelCache;->ad_expiration:I

    move-object v0, v1

    .line 146
    :cond_2
    invoke-static {p0, p1, v0}, Lnet/pubnative/sdk/core/request/PNCacheManager;->setNetworkCache(Ljava/lang/String;ILnet/pubnative/sdk/core/request/PNAdModelCache;)V

    goto :goto_0

    .line 144
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    .line 149
    :cond_4
    sget-object v0, Lnet/pubnative/sdk/core/request/PNCacheManager;->TAG:Ljava/lang/String;

    const-string v1, "invalid given network index, cannot set network fetchAssets"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static declared-synchronized cachePlacement(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lnet/pubnative/sdk/core/config/model/PNConfigModel;)V
    .locals 3

    .prologue
    .line 53
    const-class v1, Lnet/pubnative/sdk/core/request/PNCacheManager;

    monitor-enter v1

    if-nez p0, :cond_1

    .line 54
    :try_start_0
    sget-object v0, Lnet/pubnative/sdk/core/request/PNCacheManager;->TAG:Ljava/lang/String;

    const-string v2, "context is null and required, dropping call"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 55
    :cond_1
    if-nez p3, :cond_2

    .line 56
    :try_start_1
    sget-object v0, Lnet/pubnative/sdk/core/request/PNCacheManager;->TAG:Ljava/lang/String;

    const-string v2, "config is null or empty and required, dropping call"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 57
    :cond_2
    :try_start_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 58
    sget-object v0, Lnet/pubnative/sdk/core/request/PNCacheManager;->TAG:Ljava/lang/String;

    const-string v2, "app token is null and required, dropping call"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 59
    :cond_3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 60
    sget-object v0, Lnet/pubnative/sdk/core/request/PNCacheManager;->TAG:Ljava/lang/String;

    const-string v2, "placement is null and required, dropping call"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 62
    :cond_4
    invoke-virtual {p3, p2}, Lnet/pubnative/sdk/core/config/model/PNConfigModel;->getPlacement(Ljava/lang/String;)Lnet/pubnative/sdk/core/config/model/PNPlacementModel;

    move-result-object v0

    .line 63
    if-eqz v0, :cond_0

    iget-boolean v2, v0, Lnet/pubnative/sdk/core/config/model/PNPlacementModel;->ad_cache:Z

    if-eqz v2, :cond_0

    iget-object v2, v0, Lnet/pubnative/sdk/core/config/model/PNPlacementModel;->priority_rules:Ljava/util/List;

    .line 65
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, v0, Lnet/pubnative/sdk/core/config/model/PNPlacementModel;->delivery_rule:Lnet/pubnative/sdk/core/config/model/PNDeliveryRuleModel;

    .line 66
    invoke-virtual {v2}, Lnet/pubnative/sdk/core/config/model/PNDeliveryRuleModel;->isDisabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 69
    sget-object v2, Lnet/pubnative/sdk/core/request/PNCacheManager;->sCacheArray:Ljava/util/Map;

    iget-object v0, v0, Lnet/pubnative/sdk/core/config/model/PNPlacementModel;->priority_rules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lnet/pubnative/sdk/core/request/PNAdModelCache;

    invoke-interface {v2, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    new-instance v0, Lnet/pubnative/sdk/core/request/PNRequestCache;

    invoke-direct {v0}, Lnet/pubnative/sdk/core/request/PNRequestCache;-><init>()V

    .line 71
    new-instance v2, Lnet/pubnative/sdk/core/request/PNCacheManager$1;

    invoke-direct {v2}, Lnet/pubnative/sdk/core/request/PNCacheManager$1;-><init>()V

    invoke-virtual {v0, p0, p1, p2, v2}, Lnet/pubnative/sdk/core/request/PNRequestCache;->start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lnet/pubnative/sdk/core/request/PNRequest$Listener;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public static cleanCache()V
    .locals 1

    .prologue
    .line 112
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lnet/pubnative/sdk/core/request/PNCacheManager;->sCacheArray:Ljava/util/Map;

    .line 113
    return-void
.end method

.method protected static cleanPlacement(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 120
    invoke-static {p0}, Lnet/pubnative/sdk/core/request/PNCacheManager;->getPlacementCache(Ljava/lang/String;)[Lnet/pubnative/sdk/core/request/PNAdModelCache;

    move-result-object v1

    .line 121
    if-eqz v1, :cond_2

    .line 122
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 123
    aget-object v2, v1, v0

    .line 124
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lnet/pubnative/sdk/core/request/PNAdModelCache;->isValid()Z

    move-result v2

    if-nez v2, :cond_0

    .line 125
    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 122
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 128
    :cond_1
    invoke-static {p0, v1}, Lnet/pubnative/sdk/core/request/PNCacheManager;->setPlacementCache(Ljava/lang/String;[Lnet/pubnative/sdk/core/request/PNAdModelCache;)V

    .line 130
    :cond_2
    return-void
.end method

.method public static getCachedAd(Ljava/lang/String;I)Lnet/pubnative/sdk/core/request/PNAdModelCache;
    .locals 2

    .prologue
    .line 98
    invoke-static {p0, p1}, Lnet/pubnative/sdk/core/request/PNCacheManager;->getNetworkCache(Ljava/lang/String;I)Lnet/pubnative/sdk/core/request/PNAdModelCache;

    move-result-object v0

    .line 99
    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Lnet/pubnative/sdk/core/request/PNCacheManager;->setNetworkCache(Ljava/lang/String;ILnet/pubnative/sdk/core/request/PNAdModelCache;)V

    .line 100
    invoke-static {p0}, Lnet/pubnative/sdk/core/request/PNCacheManager;->cleanPlacement(Ljava/lang/String;)V

    .line 101
    return-object v0
.end method

.method protected static getNetworkCache(Ljava/lang/String;I)Lnet/pubnative/sdk/core/request/PNAdModelCache;
    .locals 3

    .prologue
    .line 166
    const/4 v0, 0x0

    .line 167
    invoke-static {p0}, Lnet/pubnative/sdk/core/request/PNCacheManager;->getPlacementCache(Ljava/lang/String;)[Lnet/pubnative/sdk/core/request/PNAdModelCache;

    move-result-object v1

    .line 168
    if-nez v1, :cond_0

    .line 169
    sget-object v1, Lnet/pubnative/sdk/core/request/PNCacheManager;->TAG:Ljava/lang/String;

    const-string v2, "network fetchAssets cannot be retrieved because placement fetchAssets cannot be found"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :goto_0
    return-object v0

    .line 170
    :cond_0
    array-length v2, v1

    if-ge p1, v2, :cond_1

    .line 171
    aget-object v0, v1, p1

    goto :goto_0

    .line 173
    :cond_1
    sget-object v1, Lnet/pubnative/sdk/core/request/PNCacheManager;->TAG:Ljava/lang/String;

    const-string v2, "invalid networkIndex provided"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected static getPlacementCache(Ljava/lang/String;)[Lnet/pubnative/sdk/core/request/PNAdModelCache;
    .locals 3

    .prologue
    .line 156
    const/4 v0, 0x0

    .line 157
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    sget-object v1, Lnet/pubnative/sdk/core/request/PNCacheManager;->TAG:Ljava/lang/String;

    const-string v2, "placement name is null or empty and required, cannot retrieve placement fetchAssets"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :goto_0
    return-object v0

    .line 160
    :cond_0
    sget-object v0, Lnet/pubnative/sdk/core/request/PNCacheManager;->sCacheArray:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/pubnative/sdk/core/request/PNAdModelCache;

    goto :goto_0
.end method

.method public static isPlacementCached(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 105
    invoke-static {p0}, Lnet/pubnative/sdk/core/request/PNCacheManager;->getPlacementCache(Ljava/lang/String;)[Lnet/pubnative/sdk/core/request/PNAdModelCache;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static setNetworkCache(Ljava/lang/String;ILnet/pubnative/sdk/core/request/PNAdModelCache;)V
    .locals 2

    .prologue
    .line 187
    invoke-static {p0}, Lnet/pubnative/sdk/core/request/PNCacheManager;->getPlacementCache(Ljava/lang/String;)[Lnet/pubnative/sdk/core/request/PNAdModelCache;

    move-result-object v0

    .line 188
    if-nez v0, :cond_0

    .line 189
    sget-object v0, Lnet/pubnative/sdk/core/request/PNCacheManager;->TAG:Ljava/lang/String;

    const-string v1, "placement fetchAssets cannot be found, cannot set network fetchAssets"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :goto_0
    return-void

    .line 190
    :cond_0
    array-length v1, v0

    if-ge p1, v1, :cond_1

    .line 191
    aput-object p2, v0, p1

    .line 192
    invoke-static {p0, v0}, Lnet/pubnative/sdk/core/request/PNCacheManager;->setPlacementCache(Ljava/lang/String;[Lnet/pubnative/sdk/core/request/PNAdModelCache;)V

    goto :goto_0

    .line 194
    :cond_1
    sget-object v0, Lnet/pubnative/sdk/core/request/PNCacheManager;->TAG:Ljava/lang/String;

    const-string v1, "invalid given network index, cannot set network fetchAssets"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected static setPlacementCache(Ljava/lang/String;[Lnet/pubnative/sdk/core/request/PNAdModelCache;)V
    .locals 2

    .prologue
    .line 179
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    sget-object v0, Lnet/pubnative/sdk/core/request/PNCacheManager;->TAG:Ljava/lang/String;

    const-string v1, "placement name is null or empty and required, cannot set placement fetchAssets"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :goto_0
    return-void

    .line 182
    :cond_0
    sget-object v0, Lnet/pubnative/sdk/core/request/PNCacheManager;->sCacheArray:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
