.class public Lnet/pubnative/sdk/core/request/PNAdModelCache;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final MINUTES_TO_MILLISECONDS:I

.field public ad:Lnet/pubnative/sdk/core/request/PNAdModel;

.field public ad_expiration:I

.field protected ad_timestamp:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const v0, 0xea60

    iput v0, p0, Lnet/pubnative/sdk/core/request/PNAdModelCache;->MINUTES_TO_MILLISECONDS:I

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/pubnative/sdk/core/request/PNAdModelCache;->ad:Lnet/pubnative/sdk/core/request/PNAdModel;

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lnet/pubnative/sdk/core/request/PNAdModelCache;->ad_expiration:I

    .line 31
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnet/pubnative/sdk/core/request/PNAdModelCache;->ad_timestamp:J

    .line 34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/pubnative/sdk/core/request/PNAdModelCache;->ad_timestamp:J

    .line 35
    return-void
.end method


# virtual methods
.method public isValid()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 43
    .line 44
    iget v1, p0, Lnet/pubnative/sdk/core/request/PNAdModelCache;->ad_expiration:I

    if-lez v1, :cond_0

    .line 45
    iget v1, p0, Lnet/pubnative/sdk/core/request/PNAdModelCache;->ad_expiration:I

    const v2, 0xea60

    mul-int/2addr v1, v2

    .line 46
    iget-wide v2, p0, Lnet/pubnative/sdk/core/request/PNAdModelCache;->ad_timestamp:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 48
    :cond_0
    :goto_0
    return v0

    .line 46
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
