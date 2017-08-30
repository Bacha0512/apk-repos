.class public Lnet/pubnative/sdk/core/config/model/PNDeliveryRuleModel;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field public imp_cap_day:I

.field public imp_cap_hour:I

.field public no_ads:Z

.field public pacing_cap_hour:I

.field public pacing_cap_minute:I

.field public segment_ids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lnet/pubnative/sdk/core/config/model/PNDeliveryRuleModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/pubnative/sdk/core/config/model/PNDeliveryRuleModel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPacingOverdueCalendar()Ljava/util/Calendar;
    .locals 3

    .prologue
    .line 64
    const/4 v0, 0x0

    .line 65
    invoke-virtual {p0}, Lnet/pubnative/sdk/core/config/model/PNDeliveryRuleModel;->isPacingCapActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 67
    iget v1, p0, Lnet/pubnative/sdk/core/config/model/PNDeliveryRuleModel;->pacing_cap_minute:I

    if-lez v1, :cond_1

    .line 68
    const/16 v1, 0xc

    iget v2, p0, Lnet/pubnative/sdk/core/config/model/PNDeliveryRuleModel;->pacing_cap_minute:I

    neg-int v2, v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 73
    :cond_0
    :goto_0
    return-object v0

    .line 70
    :cond_1
    const/16 v1, 0xb

    iget v2, p0, Lnet/pubnative/sdk/core/config/model/PNDeliveryRuleModel;->pacing_cap_hour:I

    neg-int v2, v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    goto :goto_0
.end method

.method public isDayImpressionCapActive()Z
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lnet/pubnative/sdk/core/config/model/PNDeliveryRuleModel;->imp_cap_day:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDisabled()Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lnet/pubnative/sdk/core/config/model/PNDeliveryRuleModel;->no_ads:Z

    return v0
.end method

.method public isFrequencyCapReached(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 77
    .line 78
    invoke-virtual {p0}, Lnet/pubnative/sdk/core/config/model/PNDeliveryRuleModel;->isDayImpressionCapActive()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 79
    iget v0, p0, Lnet/pubnative/sdk/core/config/model/PNDeliveryRuleModel;->imp_cap_day:I

    invoke-static {p1, p2}, Lnet/pubnative/sdk/core/config/PNDeliveryManager;->getCurrentDailyCount(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-gt v0, v3, :cond_0

    move v0, v1

    .line 82
    :goto_0
    if-nez v0, :cond_2

    invoke-virtual {p0}, Lnet/pubnative/sdk/core/config/model/PNDeliveryRuleModel;->isHourImpressionCapActive()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 83
    iget v0, p0, Lnet/pubnative/sdk/core/config/model/PNDeliveryRuleModel;->imp_cap_hour:I

    invoke-static {p1, p2}, Lnet/pubnative/sdk/core/config/PNDeliveryManager;->getCurrentHourlyCount(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-gt v0, v3, :cond_1

    .line 86
    :goto_1
    return v1

    :cond_0
    move v0, v2

    .line 79
    goto :goto_0

    :cond_1
    move v1, v2

    .line 83
    goto :goto_1

    :cond_2
    move v1, v0

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method public isHourImpressionCapActive()Z
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lnet/pubnative/sdk/core/config/model/PNDeliveryRuleModel;->imp_cap_hour:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPacingCapActive()Z
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lnet/pubnative/sdk/core/config/model/PNDeliveryRuleModel;->pacing_cap_hour:I

    if-gtz v0, :cond_0

    iget v0, p0, Lnet/pubnative/sdk/core/config/model/PNDeliveryRuleModel;->pacing_cap_minute:I

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
