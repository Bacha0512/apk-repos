.class public Lnet/pubnative/api/core/tracking/model/PNAPITrackingURLModel;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public startTimestamp:J

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/pubnative/api/core/tracking/model/PNAPITrackingURLModel;->url:Ljava/lang/String;

    .line 29
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnet/pubnative/api/core/tracking/model/PNAPITrackingURLModel;->startTimestamp:J

    return-void
.end method
