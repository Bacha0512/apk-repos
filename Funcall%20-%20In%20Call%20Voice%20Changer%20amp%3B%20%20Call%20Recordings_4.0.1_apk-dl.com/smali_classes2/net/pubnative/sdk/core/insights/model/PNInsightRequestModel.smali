.class public Lnet/pubnative/sdk/core/insights/model/PNInsightRequestModel;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public dataModel:Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lnet/pubnative/sdk/core/insights/model/PNInsightRequestModel;->url:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lnet/pubnative/sdk/core/insights/model/PNInsightRequestModel;->dataModel:Lnet/pubnative/sdk/core/insights/model/PNInsightDataModel;

    .line 37
    return-void
.end method
