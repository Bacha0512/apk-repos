.class public Lnet/pubnative/sdk/core/config/PNDeliveryManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final IMPRESSION_COUNT_DAY_APPEND:Ljava/lang/String; = "_impression_count_day"

.field protected static final IMPRESSION_COUNT_HOUR_APPEND:Ljava/lang/String; = "_impression_count_hour"

.field protected static final IMPRESSION_LAST_UPDATE_APPEND:Ljava/lang/String; = "_impression_last_update"

.field protected static final IMPRESSION_PREFERENCES_KEY:Ljava/lang/String; = "net.pubnative.mediation.frequency_manager"

.field private static TAG:Ljava/lang/String;

.field protected static sInstance:Lnet/pubnative/sdk/core/config/PNDeliveryManager;


# instance fields
.field protected mCurrentPacing:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Calendar;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lnet/pubnative/sdk/core/config/PNDeliveryManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/pubnative/sdk/core/config/PNDeliveryManager;->TAG:Ljava/lang/String;

    .line 53
    const/4 v0, 0x0

    sput-object v0, Lnet/pubnative/sdk/core/config/PNDeliveryManager;->sInstance:Lnet/pubnative/sdk/core/config/PNDeliveryManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/pubnative/sdk/core/config/PNDeliveryManager;->mCurrentPacing:Ljava/util/Map;

    .line 51
    return-void
.end method

.method public static getCurrentDailyCount(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 140
    const-string v0, "_impression_count_day"

    invoke-static {p0, v0, p1}, Lnet/pubnative/sdk/core/config/PNDeliveryManager;->getImpressionCount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getCurrentHourlyCount(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 151
    const-string v0, "_impression_count_hour"

    invoke-static {p0, v0, p1}, Lnet/pubnative/sdk/core/config/PNDeliveryManager;->getImpressionCount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected static getImpressionCount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 245
    invoke-static {p0, p2}, Lnet/pubnative/sdk/core/config/PNDeliveryManager;->updateImpressionCount(Landroid/content/Context;Ljava/lang/String;)V

    .line 247
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 248
    invoke-static {p0}, Lnet/pubnative/sdk/core/config/PNDeliveryManager;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 249
    if-eqz v1, :cond_0

    .line 250
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 251
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 254
    :cond_0
    return v0
.end method

.method public static getImpressionLastUpdate(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Calendar;
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 184
    const/4 v0, 0x0

    .line 185
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 186
    invoke-static {p0}, Lnet/pubnative/sdk/core/config/PNDeliveryManager;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 187
    if-eqz v1, :cond_0

    .line 188
    const-string v2, "_impression_last_update"

    invoke-virtual {p1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 189
    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 190
    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 191
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 192
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 196
    :cond_0
    return-object v0
.end method

.method protected static declared-synchronized getInstance()Lnet/pubnative/sdk/core/config/PNDeliveryManager;
    .locals 2

    .prologue
    .line 57
    const-class v1, Lnet/pubnative/sdk/core/config/PNDeliveryManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lnet/pubnative/sdk/core/config/PNDeliveryManager;->sInstance:Lnet/pubnative/sdk/core/config/PNDeliveryManager;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lnet/pubnative/sdk/core/config/PNDeliveryManager;

    invoke-direct {v0}, Lnet/pubnative/sdk/core/config/PNDeliveryManager;-><init>()V

    sput-object v0, Lnet/pubnative/sdk/core/config/PNDeliveryManager;->sInstance:Lnet/pubnative/sdk/core/config/PNDeliveryManager;

    .line 60
    :cond_0
    sget-object v0, Lnet/pubnative/sdk/core/config/PNDeliveryManager;->sInstance:Lnet/pubnative/sdk/core/config/PNDeliveryManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getPacingCalendar(Ljava/lang/String;)Ljava/util/Calendar;
    .locals 2

    .prologue
    .line 74
    const/4 v0, 0x0

    .line 75
    invoke-static {}, Lnet/pubnative/sdk/core/config/PNDeliveryManager;->getInstance()Lnet/pubnative/sdk/core/config/PNDeliveryManager;

    move-result-object v1

    iget-object v1, v1, Lnet/pubnative/sdk/core/config/PNDeliveryManager;->mCurrentPacing:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    invoke-static {}, Lnet/pubnative/sdk/core/config/PNDeliveryManager;->getInstance()Lnet/pubnative/sdk/core/config/PNDeliveryManager;

    move-result-object v0

    iget-object v0, v0, Lnet/pubnative/sdk/core/config/PNDeliveryManager;->mCurrentPacing:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 78
    :cond_0
    return-object v0
.end method

.method protected static getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    .prologue
    .line 266
    const/4 v0, 0x0

    .line 267
    if-eqz p0, :cond_0

    .line 268
    const-string v0, "net.pubnative.mediation.frequency_manager"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 270
    :cond_0
    return-object v0
.end method

.method protected static getPreferencesEditor(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 258
    const/4 v0, 0x0

    .line 259
    if-eqz p0, :cond_0

    .line 260
    invoke-static {p0}, Lnet/pubnative/sdk/core/config/PNDeliveryManager;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 262
    :cond_0
    return-object v0
.end method

.method public static logImpression(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 106
    const-string v0, "_impression_count_day"

    invoke-static {p0, v0, p1}, Lnet/pubnative/sdk/core/config/PNDeliveryManager;->getImpressionCount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 107
    const-string v1, "_impression_count_hour"

    invoke-static {p0, v1, p1}, Lnet/pubnative/sdk/core/config/PNDeliveryManager;->getImpressionCount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 108
    const-string v2, "_impression_count_day"

    add-int/lit8 v0, v0, 0x1

    invoke-static {p0, v2, p1, v0}, Lnet/pubnative/sdk/core/config/PNDeliveryManager;->setImpressionCount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 109
    const-string v0, "_impression_count_hour"

    add-int/lit8 v1, v1, 0x1

    invoke-static {p0, v0, p1, v1}, Lnet/pubnative/sdk/core/config/PNDeliveryManager;->setImpressionCount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 110
    return-void
.end method

.method public static resetDailyImpressionCount(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 119
    const-string v0, "_impression_count_day"

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Lnet/pubnative/sdk/core/config/PNDeliveryManager;->setImpressionCount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 120
    return-void
.end method

.method public static resetHourlyImpressionCount(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 129
    const-string v0, "_impression_count_hour"

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Lnet/pubnative/sdk/core/config/PNDeliveryManager;->setImpressionCount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 130
    return-void
.end method

.method public static resetPacingCalendar(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 96
    invoke-static {}, Lnet/pubnative/sdk/core/config/PNDeliveryManager;->getInstance()Lnet/pubnative/sdk/core/config/PNDeliveryManager;

    move-result-object v0

    iget-object v0, v0, Lnet/pubnative/sdk/core/config/PNDeliveryManager;->mCurrentPacing:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    return-void
.end method

.method protected static setImpressionCount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 230
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 231
    invoke-static {p0}, Lnet/pubnative/sdk/core/config/PNDeliveryManager;->getPreferencesEditor(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 232
    if-eqz v0, :cond_0

    .line 233
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 234
    if-nez p3, :cond_1

    .line 235
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 239
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 242
    :cond_0
    return-void

    .line 237
    :cond_1
    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public static setImpressionLastUpdate(Landroid/content/Context;Ljava/lang/String;Ljava/util/Calendar;)V
    .locals 4

    .prologue
    .line 162
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    invoke-static {p0}, Lnet/pubnative/sdk/core/config/PNDeliveryManager;->getPreferencesEditor(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 164
    if-eqz v0, :cond_0

    .line 165
    const-string v1, "_impression_last_update"

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 166
    if-nez p2, :cond_1

    .line 167
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 171
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 174
    :cond_0
    return-void

    .line 169
    :cond_1
    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method protected static updateImpressionCount(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/16 v6, 0xe

    const/16 v5, 0xd

    const/16 v4, 0xc

    const/4 v3, 0x0

    .line 204
    if-eqz p0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 205
    invoke-static {p0, p1}, Lnet/pubnative/sdk/core/config/PNDeliveryManager;->getImpressionLastUpdate(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v0

    .line 206
    if-eqz v0, :cond_1

    .line 207
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 208
    const/16 v2, 0xb

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 209
    invoke-virtual {v1, v4, v3}, Ljava/util/Calendar;->set(II)V

    .line 210
    invoke-virtual {v1, v5, v3}, Ljava/util/Calendar;->set(II)V

    .line 211
    invoke-virtual {v1, v6, v3}, Ljava/util/Calendar;->set(II)V

    .line 212
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 213
    const-string v1, "_impression_count_day"

    invoke-static {p0, v1, p1, v3}, Lnet/pubnative/sdk/core/config/PNDeliveryManager;->setImpressionCount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 216
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 217
    invoke-virtual {v1, v4, v3}, Ljava/util/Calendar;->set(II)V

    .line 218
    invoke-virtual {v1, v5, v3}, Ljava/util/Calendar;->set(II)V

    .line 219
    invoke-virtual {v1, v6, v3}, Ljava/util/Calendar;->set(II)V

    .line 220
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 221
    const-string v0, "_impression_count_hour"

    invoke-static {p0, v0, p1, v3}, Lnet/pubnative/sdk/core/config/PNDeliveryManager;->setImpressionCount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 225
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lnet/pubnative/sdk/core/config/PNDeliveryManager;->setImpressionLastUpdate(Landroid/content/Context;Ljava/lang/String;Ljava/util/Calendar;)V

    .line 227
    :cond_2
    return-void
.end method

.method public static updatePacingCalendar(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 87
    invoke-static {}, Lnet/pubnative/sdk/core/config/PNDeliveryManager;->getInstance()Lnet/pubnative/sdk/core/config/PNDeliveryManager;

    move-result-object v0

    iget-object v0, v0, Lnet/pubnative/sdk/core/config/PNDeliveryManager;->mCurrentPacing:Ljava/util/Map;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    return-void
.end method
