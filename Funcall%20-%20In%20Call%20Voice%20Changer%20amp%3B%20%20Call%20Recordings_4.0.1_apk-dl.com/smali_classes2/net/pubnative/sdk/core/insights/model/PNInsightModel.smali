.class public Lnet/pubnative/sdk/core/insights/model/PNInsightModel;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ERORR_LINES_COUNT:I = 0xa

.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mClickInsightURL:Ljava/lang/String;

.field protected mContext:Landroid/content/Context;

.field protected mData:Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;

.field protected mExtras:Ljava/util/Map;
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

.field protected mImpressionInsightURL:Ljava/lang/String;

.field protected mRequestInsightURL:Ljava/lang/String;

.field protected mRescueRequestURL:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lnet/pubnative/sdk/core/insights/model/PNInsightModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/pubnative/sdk/core/insights/model/PNInsightModel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lnet/pubnative/sdk/core/insights/model/PNInsightModel;->mContext:Landroid/content/Context;

    .line 55
    new-instance v0, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;

    invoke-direct {v0, p1}, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/pubnative/sdk/core/insights/model/PNInsightModel;->mData:Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;

    .line 56
    return-void
.end method

.method private getExceptionDescription(Ljava/lang/Exception;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 214
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 215
    invoke-virtual {p1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 216
    const/4 v0, 0x0

    :goto_0
    const/16 v3, 0xa

    if-ge v0, v3, :cond_0

    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 217
    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    .line 218
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 220
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addExtra(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 87
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 88
    iget-object v0, p0, Lnet/pubnative/sdk/core/insights/model/PNInsightModel;->mExtras:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/pubnative/sdk/core/insights/model/PNInsightModel;->mExtras:Ljava/util/Map;

    .line 91
    :cond_0
    iget-object v0, p0, Lnet/pubnative/sdk/core/insights/model/PNInsightModel;->mExtras:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    :cond_1
    return-void
.end method

.method public addExtras(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 72
    if-eqz p1, :cond_1

    .line 73
    iget-object v0, p0, Lnet/pubnative/sdk/core/insights/model/PNInsightModel;->mExtras:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/pubnative/sdk/core/insights/model/PNInsightModel;->mExtras:Ljava/util/Map;

    .line 76
    :cond_0
    iget-object v0, p0, Lnet/pubnative/sdk/core/insights/model/PNInsightModel;->mExtras:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 78
    :cond_1
    return-void
.end method

.method public getData()Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lnet/pubnative/sdk/core/insights/model/PNInsightModel;->mData:Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;

    return-object v0
.end method

.method public sendClickInsight()V
    .locals 4

    .prologue
    .line 199
    iget-object v0, p0, Lnet/pubnative/sdk/core/insights/model/PNInsightModel;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lnet/pubnative/sdk/core/insights/model/PNInsightModel;->mClickInsightURL:Ljava/lang/String;

    iget-object v2, p0, Lnet/pubnative/sdk/core/insights/model/PNInsightModel;->mExtras:Ljava/util/Map;

    iget-object v3, p0, Lnet/pubnative/sdk/core/insights/model/PNInsightModel;->mData:Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;

    invoke-static {v0, v1, v2, v3}, Lnet/pubnative/sdk/core/insights/PNInsightsManager;->trackData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;)V

    .line 200
    return-void
.end method

.method public sendImpressionInsight()V
    .locals 4

    .prologue
    .line 191
    iget-object v0, p0, Lnet/pubnative/sdk/core/insights/model/PNInsightModel;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lnet/pubnative/sdk/core/insights/model/PNInsightModel;->mData:Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;

    iget-object v1, v1, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;->placement_name:Ljava/lang/String;

    invoke-static {v0, v1}, Lnet/pubnative/sdk/core/config/PNDeliveryManager;->logImpression(Landroid/content/Context;Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lnet/pubnative/sdk/core/insights/model/PNInsightModel;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lnet/pubnative/sdk/core/insights/model/PNInsightModel;->mImpressionInsightURL:Ljava/lang/String;

    iget-object v2, p0, Lnet/pubnative/sdk/core/insights/model/PNInsightModel;->mExtras:Ljava/util/Map;

    iget-object v3, p0, Lnet/pubnative/sdk/core/insights/model/PNInsightModel;->mData:Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;

    invoke-static {v0, v1, v2, v3}, Lnet/pubnative/sdk/core/insights/PNInsightsManager;->trackData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;)V

    .line 193
    return-void
.end method

.method public sendRequestInsight(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 177
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 178
    iget-object v1, p0, Lnet/pubnative/sdk/core/insights/model/PNInsightModel;->mExtras:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 179
    iget-object v1, p0, Lnet/pubnative/sdk/core/insights/model/PNInsightModel;->mExtras:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 181
    :cond_0
    if-eqz p1, :cond_1

    .line 182
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 184
    :cond_1
    iget-object v1, p0, Lnet/pubnative/sdk/core/insights/model/PNInsightModel;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lnet/pubnative/sdk/core/insights/model/PNInsightModel;->mRequestInsightURL:Ljava/lang/String;

    iget-object v3, p0, Lnet/pubnative/sdk/core/insights/model/PNInsightModel;->mData:Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;

    invoke-static {v1, v2, v0, v3}, Lnet/pubnative/sdk/core/insights/PNInsightsManager;->trackData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;)V

    .line 185
    return-void
.end method

.method public sendRescueInsight(Ljava/lang/String;J)V
    .locals 4

    .prologue
    .line 206
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    iget-object v0, p0, Lnet/pubnative/sdk/core/insights/model/PNInsightModel;->mData:Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;

    iput-object p1, v0, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;->network:Ljava/lang/String;

    .line 208
    iget-object v0, p0, Lnet/pubnative/sdk/core/insights/model/PNInsightModel;->mData:Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;->response_time:Ljava/lang/Long;

    .line 209
    iget-object v0, p0, Lnet/pubnative/sdk/core/insights/model/PNInsightModel;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lnet/pubnative/sdk/core/insights/model/PNInsightModel;->mRescueRequestURL:Ljava/lang/String;

    iget-object v2, p0, Lnet/pubnative/sdk/core/insights/model/PNInsightModel;->mExtras:Ljava/util/Map;

    iget-object v3, p0, Lnet/pubnative/sdk/core/insights/model/PNInsightModel;->mData:Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;

    invoke-static {v0, v1, v2, v3}, Lnet/pubnative/sdk/core/insights/PNInsightsManager;->trackData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;)V

    .line 211
    :cond_0
    return-void
.end method

.method public setData(Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lnet/pubnative/sdk/core/insights/model/PNInsightModel;->mData:Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;

    .line 64
    return-void
.end method

.method public setInsightURLs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lnet/pubnative/sdk/core/insights/model/PNInsightModel;->mRequestInsightURL:Ljava/lang/String;

    .line 105
    iput-object p2, p0, Lnet/pubnative/sdk/core/insights/model/PNInsightModel;->mImpressionInsightURL:Ljava/lang/String;

    .line 106
    iput-object p3, p0, Lnet/pubnative/sdk/core/insights/model/PNInsightModel;->mClickInsightURL:Ljava/lang/String;

    .line 107
    iput-object p4, p0, Lnet/pubnative/sdk/core/insights/model/PNInsightModel;->mRescueRequestURL:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public trackAttemptedNetwork(Lnet/pubnative/sdk/core/config/model/PNPriorityRuleModel;JLjava/lang/Exception;)V
    .locals 4

    .prologue
    .line 144
    if-eqz p1, :cond_0

    iget-object v0, p1, Lnet/pubnative/sdk/core/config/model/PNPriorityRuleModel;->network_code:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    iget-object v0, p0, Lnet/pubnative/sdk/core/insights/model/PNInsightModel;->mData:Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;

    iget-object v1, p1, Lnet/pubnative/sdk/core/config/model/PNPriorityRuleModel;->network_code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;->addAttemptedNetwork(Ljava/lang/String;)V

    .line 147
    :cond_0
    const/4 v0, 0x0

    .line 148
    if-eqz p4, :cond_1

    .line 149
    new-instance v0, Lnet/pubnative/sdk/core/insights/model/PNInsightCrashModel;

    invoke-direct {v0}, Lnet/pubnative/sdk/core/insights/model/PNInsightCrashModel;-><init>()V

    .line 150
    invoke-direct {p0, p4}, Lnet/pubnative/sdk/core/insights/model/PNInsightModel;->getExceptionDescription(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnet/pubnative/sdk/core/insights/model/PNInsightCrashModel;->error:Ljava/lang/String;

    .line 151
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 152
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 153
    invoke-virtual {p4, v2}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 154
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnet/pubnative/sdk/core/insights/model/PNInsightCrashModel;->details:Ljava/lang/String;

    .line 156
    :cond_1
    iget-object v1, p0, Lnet/pubnative/sdk/core/insights/model/PNInsightModel;->mData:Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;

    invoke-virtual {v1, p1, p2, p3, v0}, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;->addNetwork(Lnet/pubnative/sdk/core/config/model/PNPriorityRuleModel;JLnet/pubnative/sdk/core/insights/model/PNInsightCrashModel;)V

    .line 157
    return-void
.end method

.method public trackSuccededNetwork(Lnet/pubnative/sdk/core/config/model/PNPriorityRuleModel;J)V
    .locals 2

    .prologue
    .line 166
    if-eqz p1, :cond_0

    iget-object v0, p1, Lnet/pubnative/sdk/core/config/model/PNPriorityRuleModel;->network_code:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 167
    iget-object v0, p0, Lnet/pubnative/sdk/core/insights/model/PNInsightModel;->mData:Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;

    iget-object v1, p1, Lnet/pubnative/sdk/core/config/model/PNPriorityRuleModel;->network_code:Ljava/lang/String;

    iput-object v1, v0, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;->network:Ljava/lang/String;

    .line 169
    :cond_0
    iget-object v0, p0, Lnet/pubnative/sdk/core/insights/model/PNInsightModel;->mData:Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;->addNetwork(Lnet/pubnative/sdk/core/config/model/PNPriorityRuleModel;JLnet/pubnative/sdk/core/insights/model/PNInsightCrashModel;)V

    .line 170
    iget-object v0, p0, Lnet/pubnative/sdk/core/insights/model/PNInsightModel;->mData:Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;

    iget-object v0, v0, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;->placement_name:Ljava/lang/String;

    invoke-static {v0}, Lnet/pubnative/sdk/core/config/PNDeliveryManager;->updatePacingCalendar(Ljava/lang/String;)V

    .line 171
    return-void
.end method

.method public trackUnreachableNetwork(Lnet/pubnative/sdk/core/config/model/PNPriorityRuleModel;JLjava/lang/Exception;)V
    .locals 4

    .prologue
    .line 121
    if-eqz p1, :cond_0

    iget-object v0, p1, Lnet/pubnative/sdk/core/config/model/PNPriorityRuleModel;->network_code:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    iget-object v0, p0, Lnet/pubnative/sdk/core/insights/model/PNInsightModel;->mData:Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;

    iget-object v1, p1, Lnet/pubnative/sdk/core/config/model/PNPriorityRuleModel;->network_code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;->addUnreachableNetwork(Ljava/lang/String;)V

    .line 124
    :cond_0
    const/4 v0, 0x0

    .line 125
    if-eqz p4, :cond_1

    .line 126
    new-instance v0, Lnet/pubnative/sdk/core/insights/model/PNInsightCrashModel;

    invoke-direct {v0}, Lnet/pubnative/sdk/core/insights/model/PNInsightCrashModel;-><init>()V

    .line 127
    invoke-direct {p0, p4}, Lnet/pubnative/sdk/core/insights/model/PNInsightModel;->getExceptionDescription(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnet/pubnative/sdk/core/insights/model/PNInsightCrashModel;->error:Ljava/lang/String;

    .line 128
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 129
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 130
    invoke-virtual {p4, v2}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 131
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnet/pubnative/sdk/core/insights/model/PNInsightCrashModel;->details:Ljava/lang/String;

    .line 133
    :cond_1
    iget-object v1, p0, Lnet/pubnative/sdk/core/insights/model/PNInsightModel;->mData:Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;

    invoke-virtual {v1, p1, p2, p3, v0}, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;->addNetwork(Lnet/pubnative/sdk/core/config/model/PNPriorityRuleModel;JLnet/pubnative/sdk/core/insights/model/PNInsightCrashModel;)V

    .line 134
    return-void
.end method
