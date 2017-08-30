.class public Lnet/pubnative/sdk/core/insights/model/PNInsightNetworkModel;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public code:Ljava/lang/String;

.field public crash_report:Lnet/pubnative/sdk/core/insights/model/PNInsightCrashModel;

.field public priority_rule_id:I

.field public priority_segment_ids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public response_time:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
