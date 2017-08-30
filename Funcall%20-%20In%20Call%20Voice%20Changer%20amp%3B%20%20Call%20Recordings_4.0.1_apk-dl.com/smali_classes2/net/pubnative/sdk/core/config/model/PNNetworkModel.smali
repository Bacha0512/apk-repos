.class public Lnet/pubnative/sdk/core/config/model/PNNetworkModel;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ad_cache:Ljava/lang/Boolean;

.field public ad_cache_timeout:Ljava/lang/Integer;

.field public ad_cache_ttl:Ljava/lang/Integer;

.field public adapter:Ljava/lang/String;

.field public cpa_cache:Ljava/lang/Boolean;

.field public crash_report:Ljava/lang/Boolean;

.field public params:Ljava/util/Map;
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

.field public timeout:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdCacheTimeout()I
    .locals 2

    .prologue
    .line 43
    const/4 v0, 0x0

    .line 44
    iget-object v1, p0, Lnet/pubnative/sdk/core/config/model/PNNetworkModel;->ad_cache_timeout:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 45
    iget-object v0, p0, Lnet/pubnative/sdk/core/config/model/PNNetworkModel;->ad_cache_timeout:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 47
    :cond_0
    return v0
.end method

.method public getCacheExpirationTime()I
    .locals 2

    .prologue
    .line 59
    const/4 v0, 0x0

    .line 60
    iget-object v1, p0, Lnet/pubnative/sdk/core/config/model/PNNetworkModel;->ad_cache_ttl:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 61
    iget-object v0, p0, Lnet/pubnative/sdk/core/config/model/PNNetworkModel;->ad_cache_ttl:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 63
    :cond_0
    return v0
.end method

.method public getTimeout()I
    .locals 2

    .prologue
    .line 51
    const/4 v0, 0x0

    .line 52
    iget-object v1, p0, Lnet/pubnative/sdk/core/config/model/PNNetworkModel;->timeout:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 53
    iget-object v0, p0, Lnet/pubnative/sdk/core/config/model/PNNetworkModel;->timeout:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 55
    :cond_0
    return v0
.end method

.method public isAdCacheEnabled()Z
    .locals 2

    .prologue
    .line 75
    const/4 v0, 0x0

    .line 76
    iget-object v1, p0, Lnet/pubnative/sdk/core/config/model/PNNetworkModel;->ad_cache:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 77
    iget-object v0, p0, Lnet/pubnative/sdk/core/config/model/PNNetworkModel;->ad_cache:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 79
    :cond_0
    return v0
.end method

.method public isCPACacheEnabled()Z
    .locals 2

    .prologue
    .line 67
    const/4 v0, 0x0

    .line 68
    iget-object v1, p0, Lnet/pubnative/sdk/core/config/model/PNNetworkModel;->cpa_cache:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 69
    iget-object v0, p0, Lnet/pubnative/sdk/core/config/model/PNNetworkModel;->cpa_cache:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 71
    :cond_0
    return v0
.end method

.method public isCrashReportEnabled()Z
    .locals 2

    .prologue
    .line 83
    const/4 v0, 0x0

    .line 84
    iget-object v1, p0, Lnet/pubnative/sdk/core/config/model/PNNetworkModel;->crash_report:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 85
    iget-object v0, p0, Lnet/pubnative/sdk/core/config/model/PNNetworkModel;->crash_report:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 87
    :cond_0
    return v0
.end method
