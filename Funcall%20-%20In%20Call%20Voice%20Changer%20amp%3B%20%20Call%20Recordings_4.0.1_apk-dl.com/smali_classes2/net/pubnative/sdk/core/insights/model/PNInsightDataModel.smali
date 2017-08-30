.class public Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field public ad_format_code:Ljava/lang/String;

.field public age:Ljava/lang/Integer;

.field public attempted_networks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public connection_type:Ljava/lang/String;

.field public coppa:Ljava/lang/String;

.field public creative_url:Ljava/lang/String;

.field public delivery_segment_ids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public device_name:Ljava/lang/String;

.field public education:Ljava/lang/String;

.field public gender:Ljava/lang/String;

.field public generated_at:Ljava/lang/Long;

.field public iap:Ljava/lang/Boolean;

.field public iap_total:Ljava/lang/Float;

.field public interests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public network:Ljava/lang/String;

.field public networks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/pubnative/sdk/core/insights/model/PNInsightNetworkModel;",
            ">;"
        }
    .end annotation
.end field

.field public os_version:Ljava/lang/String;

.field public placement_name:Ljava/lang/String;

.field public pub_app_bundle_id:Ljava/lang/String;

.field public pub_app_version:Ljava/lang/String;

.field public response_time:Ljava/lang/Long;

.field public retry:I

.field public retry_error:Ljava/lang/String;

.field public sdk_version:Ljava/lang/String;

.field public unreachable_networks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public user_uid:Ljava/lang/String;

.field public video_complete:Ljava/lang/Boolean;

.field public video_start:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-virtual {p0, p1}, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;->fillDefaults(Landroid/content/Context;)V

    .line 77
    return-void
.end method

.method private isEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 175
    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    if-nez p2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addAttemptedNetwork(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 212
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 213
    iget-object v0, p0, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;->attempted_networks:Ljava/util/List;

    if-nez v0, :cond_0

    .line 214
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;->attempted_networks:Ljava/util/List;

    .line 216
    :cond_0
    iget-object v0, p0, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;->attempted_networks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    :cond_1
    return-void
.end method

.method public addNetwork(Lnet/pubnative/sdk/core/config/model/PNPriorityRuleModel;JLnet/pubnative/sdk/core/insights/model/PNInsightCrashModel;)V
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;->networks:Ljava/util/List;

    if-nez v0, :cond_0

    .line 191
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;->networks:Ljava/util/List;

    .line 193
    :cond_0
    new-instance v0, Lnet/pubnative/sdk/core/insights/model/PNInsightNetworkModel;

    invoke-direct {v0}, Lnet/pubnative/sdk/core/insights/model/PNInsightNetworkModel;-><init>()V

    .line 194
    if-eqz p1, :cond_1

    .line 195
    iget-object v1, p1, Lnet/pubnative/sdk/core/config/model/PNPriorityRuleModel;->network_code:Ljava/lang/String;

    iput-object v1, v0, Lnet/pubnative/sdk/core/insights/model/PNInsightNetworkModel;->code:Ljava/lang/String;

    .line 196
    iget v1, p1, Lnet/pubnative/sdk/core/config/model/PNPriorityRuleModel;->id:I

    iput v1, v0, Lnet/pubnative/sdk/core/insights/model/PNInsightNetworkModel;->priority_rule_id:I

    .line 197
    iget-object v1, p1, Lnet/pubnative/sdk/core/config/model/PNPriorityRuleModel;->segment_ids:Ljava/util/List;

    iput-object v1, v0, Lnet/pubnative/sdk/core/insights/model/PNInsightNetworkModel;->priority_segment_ids:Ljava/util/List;

    .line 199
    :cond_1
    iput-wide p2, v0, Lnet/pubnative/sdk/core/insights/model/PNInsightNetworkModel;->response_time:J

    .line 200
    if-eqz p4, :cond_2

    .line 201
    iput-object p4, v0, Lnet/pubnative/sdk/core/insights/model/PNInsightNetworkModel;->crash_report:Lnet/pubnative/sdk/core/insights/model/PNInsightCrashModel;

    .line 203
    :cond_2
    iget-object v1, p0, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;->networks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    return-void
.end method

.method public addUnreachableNetwork(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 226
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 227
    iget-object v0, p0, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;->unreachable_networks:Ljava/util/List;

    if-nez v0, :cond_0

    .line 228
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;->unreachable_networks:Ljava/util/List;

    .line 230
    :cond_0
    iget-object v0, p0, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;->unreachable_networks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    :cond_1
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 86
    sget-object v0, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;->TAG:Ljava/lang/String;

    const-string v1, "equals"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    if-ne p0, p1, :cond_1

    .line 89
    const/4 v0, 0x1

    .line 160
    :cond_0
    :goto_0
    return v0

    .line 91
    :cond_1
    instance-of v0, p1, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;

    if-nez v0, :cond_2

    .line 94
    const/4 v0, 0x0

    goto :goto_0

    .line 96
    :cond_2
    check-cast p1, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;

    .line 97
    iget-object v0, p0, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;->network:Ljava/lang/String;

    iget-object v1, p1, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;->network:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;->isEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 98
    if-eqz v0, :cond_3

    .line 99
    iget-object v0, p0, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;->attempted_networks:Ljava/util/List;

    iget-object v1, p1, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;->attempted_networks:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;->isEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 101
    :cond_3
    if-eqz v0, :cond_4

    .line 102
    iget-object v0, p0, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;->placement_name:Ljava/lang/String;

    iget-object v1, p1, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;->placement_name:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;->isEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 104
    :cond_4
    if-eqz v0, :cond_5

    .line 105
    iget-object v0, p0, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;->pub_app_version:Ljava/lang/String;

    iget-object v1, p1, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;->pub_app_version:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;->isEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 107
    :cond_5
    if-eqz v0, :cond_6

    .line 108
    iget-object v0, p0, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;->pub_app_bundle_id:Ljava/lang/String;

    iget-object v1, p1, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;->pub_app_bundle_id:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;->isEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 110
    :cond_6
    if-eqz v0, :cond_7

    .line 111
    iget-object v0, p0, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;->os_version:Ljava/lang/String;

    iget-object v1, p1, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;->os_version:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;->isEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 113
    :cond_7
    if-eqz v0, :cond_8

    .line 114
    iget-object v0, p0, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;->sdk_version:Ljava/lang/String;

    iget-object v1, p1, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;->sdk_version:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;->isEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 116
    :cond_8
    if-eqz v0, :cond_9

    .line 117
    iget-object v0, p0, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;->user_uid:Ljava/lang/String;

    iget-object v1, p1, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;->user_uid:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;->isEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 119
    :cond_9
    if-eqz v0, :cond_a

    .line 120
    iget-object v0, p0, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;->connection_type:Ljava/lang/String;

    iget-object v1, p1, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;->connection_type:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;->isEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 122
    :cond_a
    if-eqz v0, :cond_b

    .line 123
    iget-object v0, p0, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;->device_name:Ljava/lang/String;

    iget-object v1, p1, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;->device_name:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;->isEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 125
    :cond_b
    if-eqz v0, :cond_c

    .line 126
    iget-object v0, p0, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;->ad_format_code:Ljava/lang/String;

    iget-object v1, p1, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;->ad_format_code:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;->isEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 128
    :cond_c
    if-eqz v0, :cond_d

    .line 129
    iget-object v0, p0, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;->creative_url:Ljava/lang/String;

    iget-object v1, p1, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;->creative_url:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;->isEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 131
    :cond_d
    if-eqz v0, :cond_e

    .line 132
    iget-object v0, p0, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;->video_start:Ljava/lang/Boolean;

    iget-object v1, p1, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;->video_start:Ljava/lang/Boolean;

    invoke-direct {p0, v0, v1}, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;->isEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 134
    :cond_e
    if-eqz v0, :cond_f

    .line 135
    iget-object v0, p0, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;->video_complete:Ljava/lang/Boolean;

    iget-object v1, p1, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;->video_complete:Ljava/lang/Boolean;

    invoke-direct {p0, v0, v1}, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;->isEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 138
    :cond_f
    if-eqz v0, :cond_10

    .line 139
    iget-object v0, p0, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;->coppa:Ljava/lang/String;

    iget-object v1, p1, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;->coppa:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;->isEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 142
    :cond_10
    if-eqz v0, :cond_11

    .line 143
    iget-object v0, p0, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;->age:Ljava/lang/Integer;

    iget-object v1, p1, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;->age:Ljava/lang/Integer;

    invoke-direct {p0, v0, v1}, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;->isEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 145
    :cond_11
    if-eqz v0, :cond_12

    .line 146
    iget-object v0, p0, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;->education:Ljava/lang/String;

    iget-object v1, p1, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;->education:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;->isEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 148
    :cond_12
    if-eqz v0, :cond_13

    .line 149
    iget-object v0, p0, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;->interests:Ljava/util/List;

    iget-object v1, p1, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;->interests:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;->isEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 151
    :cond_13
    if-eqz v0, :cond_14

    .line 152
    iget-object v0, p0, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;->gender:Ljava/lang/String;

    iget-object v1, p1, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;->gender:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;->isEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 154
    :cond_14
    if-eqz v0, :cond_15

    .line 155
    iget-object v0, p0, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;->iap:Ljava/lang/Boolean;

    iget-object v1, p1, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;->iap:Ljava/lang/Boolean;

    invoke-direct {p0, v0, v1}, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;->isEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 157
    :cond_15
    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;->iap_total:Ljava/lang/Float;

    iget-object v1, p1, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;->iap_total:Ljava/lang/Float;

    invoke-direct {p0, v0, v1}, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;->isEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto/16 :goto_0
.end method

.method protected fillDefaults(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 254
    if-eqz p1, :cond_0

    .line 256
    const/4 v0, 0x0

    iput v0, p0, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;->retry:I

    .line 257
    sget-object v0, Lnet/pubnative/sdk/core/PNSettings;->osVersion:Ljava/lang/String;

    iput-object v0, p0, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;->os_version:Ljava/lang/String;

    .line 258
    sget-object v0, Lnet/pubnative/sdk/core/PNSettings;->deviceName:Ljava/lang/String;

    iput-object v0, p0, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;->device_name:Ljava/lang/String;

    .line 259
    sget-object v0, Lnet/pubnative/sdk/core/PNSettings;->sdkVersion:Ljava/lang/String;

    iput-object v0, p0, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;->sdk_version:Ljava/lang/String;

    .line 260
    sget-object v0, Lnet/pubnative/sdk/core/PNSettings;->appVersion:Ljava/lang/String;

    iput-object v0, p0, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;->pub_app_version:Ljava/lang/String;

    .line 261
    sget-object v0, Lnet/pubnative/sdk/core/PNSettings;->appBundleID:Ljava/lang/String;

    iput-object v0, p0, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;->pub_app_bundle_id:Ljava/lang/String;

    .line 262
    invoke-static {p1}, Lnet/pubnative/sdk/core/utils/PNDeviceUtils;->getConnectionType(Landroid/content/Context;)Lnet/pubnative/sdk/core/utils/PNDeviceUtils$ConnectionType;

    move-result-object v0

    .line 263
    sget-object v1, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel$1;->$SwitchMap$net$pubnative$sdk$core$utils$PNDeviceUtils$ConnectionType:[I

    invoke-virtual {v0}, Lnet/pubnative/sdk/core/utils/PNDeviceUtils$ConnectionType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 268
    :cond_0
    :goto_0
    return-void

    .line 264
    :pswitch_0
    const-string v0, "cellular"

    iput-object v0, p0, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;->connection_type:Ljava/lang/String;

    goto :goto_0

    .line 265
    :pswitch_1
    const-string v0, "wifi"

    iput-object v0, p0, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;->connection_type:Ljava/lang/String;

    goto :goto_0

    .line 263
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 238
    const/4 v0, 0x0

    iput v0, p0, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;->retry:I

    .line 239
    iput-object v1, p0, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;->retry_error:Ljava/lang/String;

    .line 240
    iput-object v1, p0, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;->network:Ljava/lang/String;

    .line 241
    iput-object v1, p0, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;->networks:Ljava/util/List;

    .line 242
    iput-object v1, p0, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;->delivery_segment_ids:Ljava/util/List;

    .line 243
    iput-object v1, p0, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;->attempted_networks:Ljava/util/List;

    .line 244
    iput-object v1, p0, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;->unreachable_networks:Ljava/util/List;

    .line 245
    iput-object v1, p0, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;->generated_at:Ljava/lang/Long;

    .line 246
    return-void
.end method

.method public setTargeting(Lnet/pubnative/sdk/core/request/PNAdTargetingModel;)V
    .locals 1

    .prologue
    .line 271
    iget-object v0, p1, Lnet/pubnative/sdk/core/request/PNAdTargetingModel;->age:Ljava/lang/Integer;

    iput-object v0, p0, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;->age:Ljava/lang/Integer;

    .line 272
    iget-object v0, p1, Lnet/pubnative/sdk/core/request/PNAdTargetingModel;->education:Ljava/lang/String;

    iput-object v0, p0, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;->education:Ljava/lang/String;

    .line 273
    iget-object v0, p1, Lnet/pubnative/sdk/core/request/PNAdTargetingModel;->interests:Ljava/util/List;

    iput-object v0, p0, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;->interests:Ljava/util/List;

    .line 274
    iget-object v0, p1, Lnet/pubnative/sdk/core/request/PNAdTargetingModel;->gender:Ljava/lang/String;

    iput-object v0, p0, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;->gender:Ljava/lang/String;

    .line 275
    iget-object v0, p1, Lnet/pubnative/sdk/core/request/PNAdTargetingModel;->iap:Ljava/lang/Boolean;

    iput-object v0, p0, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;->iap:Ljava/lang/Boolean;

    .line 276
    iget-object v0, p1, Lnet/pubnative/sdk/core/request/PNAdTargetingModel;->iap_total:Ljava/lang/Float;

    iput-object v0, p0, Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;->iap_total:Ljava/lang/Float;

    .line 277
    return-void
.end method
