.class public Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryNetworkAdapter;
.super Lnet/pubnative/sdk/core/adapter/request/PNAdapter;
.source "SourceFile"

# interfaces
.implements Lnet/pubnative/api/core/request/PNAPIRequest$Listener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryNetworkAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryNetworkAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lnet/pubnative/sdk/core/adapter/request/PNAdapter;-><init>(Ljava/util/Map;)V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryNetworkAdapter;->mContext:Landroid/content/Context;

    .line 46
    return-void
.end method


# virtual methods
.method protected createRequest(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 64
    new-instance v2, Lnet/pubnative/api/core/request/PNAPIRequest;

    invoke-direct {v2}, Lnet/pubnative/api/core/request/PNAPIRequest;-><init>()V

    .line 66
    iget-object v0, p0, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryNetworkAdapter;->mData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 68
    iget-object v3, p0, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryNetworkAdapter;->mData:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 69
    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lnet/pubnative/api/core/request/PNAPIRequest;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 72
    :cond_0
    iget-object v0, p0, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryNetworkAdapter;->mExtras:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 73
    iget-object v0, p0, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryNetworkAdapter;->mExtras:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 74
    iget-object v1, p0, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryNetworkAdapter;->mExtras:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lnet/pubnative/api/core/request/PNAPIRequest;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 78
    :cond_1
    sget-object v0, Lnet/pubnative/sdk/core/PNSettings;->targeting:Lnet/pubnative/sdk/core/request/PNAdTargetingModel;

    if-eqz v0, :cond_2

    .line 79
    sget-object v0, Lnet/pubnative/sdk/core/PNSettings;->targeting:Lnet/pubnative/sdk/core/request/PNAdTargetingModel;

    invoke-virtual {v0}, Lnet/pubnative/sdk/core/request/PNAdTargetingModel;->toDictionary()Ljava/util/Map;

    move-result-object v3

    .line 80
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 81
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 82
    invoke-virtual {v2, v0, v1}, Lnet/pubnative/api/core/request/PNAPIRequest;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 85
    :cond_2
    sget-boolean v0, Lnet/pubnative/sdk/core/PNSettings;->isTestModeEnabled:Z

    invoke-virtual {v2, v0}, Lnet/pubnative/api/core/request/PNAPIRequest;->setTestMode(Z)V

    .line 86
    sget-boolean v0, Lnet/pubnative/sdk/core/PNSettings;->isCoppaModeEnabled:Z

    invoke-virtual {v2, v0}, Lnet/pubnative/api/core/request/PNAPIRequest;->setCoppaMode(Z)V

    .line 87
    invoke-virtual {v2, p1, p0}, Lnet/pubnative/api/core/request/PNAPIRequest;->start(Landroid/content/Context;Lnet/pubnative/api/core/request/PNAPIRequest$Listener;)V

    .line 88
    return-void
.end method

.method public onPNAPIRequestFail(Lnet/pubnative/api/core/request/PNAPIRequest;Ljava/lang/Exception;)V
    .locals 3

    .prologue
    .line 123
    iget-object v0, p0, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryNetworkAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryCPICache;->get(Landroid/content/Context;)Lnet/pubnative/api/core/request/model/PNAPIAdModel;

    move-result-object v0

    .line 124
    if-nez v0, :cond_0

    .line 125
    invoke-virtual {p0, p2}, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryNetworkAdapter;->invokeLoadFail(Ljava/lang/Exception;)V

    .line 129
    :goto_0
    return-void

    .line 127
    :cond_0
    new-instance v1, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryAdModel;

    iget-object v2, p0, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryNetworkAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryAdModel;-><init>(Landroid/content/Context;Lnet/pubnative/api/core/request/model/PNAPIAdModel;)V

    invoke-virtual {p0, v1}, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryNetworkAdapter;->invokeLoadFinish(Lnet/pubnative/sdk/core/request/PNAdModel;)V

    goto :goto_0
.end method

.method public onPNAPIRequestFinish(Lnet/pubnative/api/core/request/PNAPIRequest;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/pubnative/api/core/request/PNAPIRequest;",
            "Ljava/util/List",
            "<",
            "Lnet/pubnative/api/core/request/model/PNAPIAdModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 97
    .line 98
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 99
    if-eqz p2, :cond_4

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 100
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/pubnative/api/core/request/model/PNAPIAdModel;

    .line 102
    :goto_0
    iget-boolean v2, p0, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryNetworkAdapter;->mIsCPICacheEnabled:Z

    if-eqz v2, :cond_2

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->isRevenueModelCPA()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 103
    :cond_0
    iget-object v2, p0, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryNetworkAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryCPICache;->get(Landroid/content/Context;)Lnet/pubnative/api/core/request/model/PNAPIAdModel;

    move-result-object v2

    .line 104
    if-eqz v2, :cond_2

    .line 106
    iget-object v0, p0, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryNetworkAdapter;->mData:Ljava/util/Map;

    const-string v4, "zoneid"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 107
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 108
    const-string v4, "zoneid"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    move-object v0, v2

    .line 114
    :cond_2
    if-nez v0, :cond_3

    .line 115
    invoke-virtual {p0, v1}, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryNetworkAdapter;->invokeLoadFinish(Lnet/pubnative/sdk/core/request/PNAdModel;)V

    .line 119
    :goto_1
    return-void

    .line 117
    :cond_3
    new-instance v1, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryAdModel;

    iget-object v2, p0, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryNetworkAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0, v3}, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryAdModel;-><init>(Landroid/content/Context;Lnet/pubnative/api/core/request/model/PNAPIAdModel;Ljava/util/Map;)V

    invoke-virtual {p0, v1}, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryNetworkAdapter;->invokeLoadFinish(Lnet/pubnative/sdk/core/request/PNAdModel;)V

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

.method protected request(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 52
    if-eqz p1, :cond_0

    iget-object v0, p0, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryNetworkAdapter;->mData:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 53
    :cond_0
    sget-object v0, Lnet/pubnative/sdk/core/exceptions/PNException;->ADAPTER_MISSING_DATA:Lnet/pubnative/sdk/core/exceptions/PNException;

    invoke-virtual {p0, v0}, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryNetworkAdapter;->invokeLoadFail(Ljava/lang/Exception;)V

    .line 58
    :goto_0
    return-void

    .line 55
    :cond_1
    iput-object p1, p0, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryNetworkAdapter;->mContext:Landroid/content/Context;

    .line 56
    invoke-virtual {p0, p1}, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryNetworkAdapter;->createRequest(Landroid/content/Context;)V

    goto :goto_0
.end method
