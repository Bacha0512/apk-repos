.class public Lnet/pubnative/api/core/tracking/PNAPITrackingManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ITEM_VALIDITY_TIME:J = 0x1b7740L

.field protected static final SHARED_FAILED_LIST:Ljava/lang/String; = "failed"

.field protected static final SHARED_PENDING_LIST:Ljava/lang/String; = "pending"

.field private static final SHARED_PREFERENCES:Ljava/lang/String; = "PNAPITrackingManager"

.field private static final TAG:Ljava/lang/String;

.field private static sIsTracking:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lnet/pubnative/api/core/tracking/PNAPITrackingManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/pubnative/api/core/tracking/PNAPITrackingManager;->TAG:Ljava/lang/String;

    .line 48
    const/4 v0, 0x0

    sput-boolean v0, Lnet/pubnative/api/core/tracking/PNAPITrackingManager;->sIsTracking:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0

    .prologue
    .line 41
    sput-boolean p0, Lnet/pubnative/api/core/tracking/PNAPITrackingManager;->sIsTracking:Z

    return p0
.end method

.method protected static dequeueItem(Landroid/content/Context;Ljava/lang/String;)Lnet/pubnative/api/core/tracking/model/PNAPITrackingURLModel;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 137
    const/4 v0, 0x0

    .line 138
    invoke-static {p0, p1}, Lnet/pubnative/api/core/tracking/PNAPITrackingManager;->getList(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 139
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 140
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/pubnative/api/core/tracking/model/PNAPITrackingURLModel;

    .line 141
    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 142
    invoke-static {p0, p1, v1}, Lnet/pubnative/api/core/tracking/PNAPITrackingManager;->setList(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    .line 144
    :cond_0
    return-object v0
.end method

.method protected static enqueueFailedList(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 122
    const-string v0, "failed"

    invoke-static {p0, v0}, Lnet/pubnative/api/core/tracking/PNAPITrackingManager;->getList(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 123
    const-string v1, "pending"

    invoke-static {p0, v1}, Lnet/pubnative/api/core/tracking/PNAPITrackingManager;->getList(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 124
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 125
    const-string v2, "pending"

    invoke-static {p0, v2, v1}, Lnet/pubnative/api/core/tracking/PNAPITrackingManager;->setList(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    .line 126
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 127
    const-string v1, "failed"

    invoke-static {p0, v1, v0}, Lnet/pubnative/api/core/tracking/PNAPITrackingManager;->setList(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    .line 128
    return-void
.end method

.method protected static enqueueItem(Landroid/content/Context;Ljava/lang/String;Lnet/pubnative/api/core/tracking/model/PNAPITrackingURLModel;)V
    .locals 1

    .prologue
    .line 131
    invoke-static {p0, p1}, Lnet/pubnative/api/core/tracking/PNAPITrackingManager;->getList(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 132
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    invoke-static {p0, p1, v0}, Lnet/pubnative/api/core/tracking/PNAPITrackingManager;->setList(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    .line 134
    return-void
.end method

.method protected static getList(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lnet/pubnative/api/core/tracking/model/PNAPITrackingURLModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 154
    .line 155
    invoke-static {p0}, Lnet/pubnative/api/core/tracking/PNAPITrackingManager;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 156
    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 157
    if-nez v0, :cond_0

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 162
    :goto_0
    return-object v0

    .line 160
    :cond_0
    const-class v1, Lnet/pubnative/api/core/tracking/model/PNAPITrackingURLModel;

    invoke-static {v0, v1}, Lnet/pubnative/sdk/core/utils/PNStringUtils;->convertStringToObjects(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method protected static getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    .prologue
    .line 182
    const-string v0, "PNAPITrackingManager"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method protected static setList(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lnet/pubnative/api/core/tracking/model/PNAPITrackingURLModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 166
    invoke-static {p0}, Lnet/pubnative/api/core/tracking/PNAPITrackingManager;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 167
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 168
    if-nez p2, :cond_0

    .line 169
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 174
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 175
    return-void

    .line 171
    :cond_0
    invoke-static {p2}, Lnet/pubnative/sdk/core/utils/PNStringUtils;->convertObjectsToJson(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 172
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public static declared-synchronized track(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 61
    const-class v1, Lnet/pubnative/api/core/tracking/PNAPITrackingManager;

    monitor-enter v1

    if-nez p0, :cond_0

    .line 62
    :try_start_0
    sget-object v0, Lnet/pubnative/api/core/tracking/PNAPITrackingManager;->TAG:Ljava/lang/String;

    const-string v2, "track - ERROR: Context parameter is null"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    :goto_0
    monitor-exit v1

    return-void

    .line 63
    :cond_0
    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    sget-object v0, Lnet/pubnative/api/core/tracking/PNAPITrackingManager;->TAG:Ljava/lang/String;

    const-string v2, "track - ERROR: url parameter is null"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 67
    :cond_1
    :try_start_2
    invoke-static {p0}, Lnet/pubnative/api/core/tracking/PNAPITrackingManager;->enqueueFailedList(Landroid/content/Context;)V

    .line 69
    new-instance v0, Lnet/pubnative/api/core/tracking/model/PNAPITrackingURLModel;

    invoke-direct {v0}, Lnet/pubnative/api/core/tracking/model/PNAPITrackingURLModel;-><init>()V

    .line 70
    iput-object p1, v0, Lnet/pubnative/api/core/tracking/model/PNAPITrackingURLModel;->url:Ljava/lang/String;

    .line 71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lnet/pubnative/api/core/tracking/model/PNAPITrackingURLModel;->startTimestamp:J

    .line 72
    const-string v2, "pending"

    invoke-static {p0, v2, v0}, Lnet/pubnative/api/core/tracking/PNAPITrackingManager;->enqueueItem(Landroid/content/Context;Ljava/lang/String;Lnet/pubnative/api/core/tracking/model/PNAPITrackingURLModel;)V

    .line 74
    invoke-static {p0}, Lnet/pubnative/api/core/tracking/PNAPITrackingManager;->trackNextItem(Landroid/content/Context;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method protected static declared-synchronized trackNextItem(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 83
    const-class v1, Lnet/pubnative/api/core/tracking/PNAPITrackingManager;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lnet/pubnative/api/core/tracking/PNAPITrackingManager;->sIsTracking:Z

    if-eqz v0, :cond_0

    .line 84
    sget-object v0, Lnet/pubnative/api/core/tracking/PNAPITrackingManager;->TAG:Ljava/lang/String;

    const-string v2, "trackNextItem - Currently tracking, dropping the call, will be resumed soon"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    :goto_0
    monitor-exit v1

    return-void

    .line 86
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    sput-boolean v0, Lnet/pubnative/api/core/tracking/PNAPITrackingManager;->sIsTracking:Z

    .line 88
    const-string v0, "pending"

    invoke-static {p0, v0}, Lnet/pubnative/api/core/tracking/PNAPITrackingManager;->dequeueItem(Landroid/content/Context;Ljava/lang/String;)Lnet/pubnative/api/core/tracking/model/PNAPITrackingURLModel;

    move-result-object v0

    .line 89
    if-nez v0, :cond_1

    .line 90
    const/4 v0, 0x0

    sput-boolean v0, Lnet/pubnative/api/core/tracking/PNAPITrackingManager;->sIsTracking:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 92
    :cond_1
    :try_start_2
    iget-wide v2, v0, Lnet/pubnative/api/core/tracking/model/PNAPITrackingURLModel;->startTimestamp:J

    const-wide/32 v4, 0x1b7740

    add-long/2addr v2, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    .line 93
    const/4 v0, 0x0

    sput-boolean v0, Lnet/pubnative/api/core/tracking/PNAPITrackingManager;->sIsTracking:Z

    .line 94
    invoke-static {p0}, Lnet/pubnative/api/core/tracking/PNAPITrackingManager;->trackNextItem(Landroid/content/Context;)V

    goto :goto_0

    .line 96
    :cond_2
    new-instance v2, Lnet/pubnative/api/core/network/PNAPIHttpRequest;

    invoke-direct {v2}, Lnet/pubnative/api/core/network/PNAPIHttpRequest;-><init>()V

    iget-object v3, v0, Lnet/pubnative/api/core/tracking/model/PNAPITrackingURLModel;->url:Ljava/lang/String;

    new-instance v4, Lnet/pubnative/api/core/tracking/PNAPITrackingManager$1;

    invoke-direct {v4, p0, v0}, Lnet/pubnative/api/core/tracking/PNAPITrackingManager$1;-><init>(Landroid/content/Context;Lnet/pubnative/api/core/tracking/model/PNAPITrackingURLModel;)V

    invoke-virtual {v2, p0, v3, v4}, Lnet/pubnative/api/core/network/PNAPIHttpRequest;->start(Landroid/content/Context;Ljava/lang/String;Lnet/pubnative/api/core/network/PNAPIHttpRequest$Listener;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
