.class public Lnet/pubnative/sdk/core/request/PNAdTargetingModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/pubnative/sdk/core/request/PNAdTargetingModel$Keys;
    }
.end annotation


# instance fields
.field public age:Ljava/lang/Integer;

.field public education:Ljava/lang/String;

.field public gender:Ljava/lang/String;

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


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addInterest(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 53
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 54
    iget-object v0, p0, Lnet/pubnative/sdk/core/request/PNAdTargetingModel;->interests:Ljava/util/List;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/pubnative/sdk/core/request/PNAdTargetingModel;->interests:Ljava/util/List;

    .line 57
    :cond_0
    iget-object v0, p0, Lnet/pubnative/sdk/core/request/PNAdTargetingModel;->interests:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    :cond_1
    return-void
.end method

.method public toDictionary()Ljava/util/Map;
    .locals 4

    .prologue
    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 64
    iget-object v1, p0, Lnet/pubnative/sdk/core/request/PNAdTargetingModel;->age:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 65
    const-string v1, "age"

    iget-object v2, p0, Lnet/pubnative/sdk/core/request/PNAdTargetingModel;->age:Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    :cond_0
    iget-object v1, p0, Lnet/pubnative/sdk/core/request/PNAdTargetingModel;->education:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 68
    const-string v1, "education"

    iget-object v2, p0, Lnet/pubnative/sdk/core/request/PNAdTargetingModel;->education:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    :cond_1
    iget-object v1, p0, Lnet/pubnative/sdk/core/request/PNAdTargetingModel;->interests:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lnet/pubnative/sdk/core/request/PNAdTargetingModel;->interests:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 71
    const-string v1, "interests"

    const-string v2, ","

    iget-object v3, p0, Lnet/pubnative/sdk/core/request/PNAdTargetingModel;->interests:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    :cond_2
    iget-object v1, p0, Lnet/pubnative/sdk/core/request/PNAdTargetingModel;->gender:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 74
    const-string v1, "gender"

    iget-object v2, p0, Lnet/pubnative/sdk/core/request/PNAdTargetingModel;->gender:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    :cond_3
    return-object v0
.end method

.method public toDictionaryWithIap()Ljava/util/Map;
    .locals 3

    .prologue
    .line 81
    invoke-virtual {p0}, Lnet/pubnative/sdk/core/request/PNAdTargetingModel;->toDictionary()Ljava/util/Map;

    move-result-object v0

    .line 83
    iget-object v1, p0, Lnet/pubnative/sdk/core/request/PNAdTargetingModel;->iap:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 84
    const-string v1, "iap"

    iget-object v2, p0, Lnet/pubnative/sdk/core/request/PNAdTargetingModel;->iap:Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    :cond_0
    iget-object v1, p0, Lnet/pubnative/sdk/core/request/PNAdTargetingModel;->iap_total:Ljava/lang/Float;

    if-eqz v1, :cond_1

    .line 87
    const-string v1, "iap_total"

    iget-object v2, p0, Lnet/pubnative/sdk/core/request/PNAdTargetingModel;->iap_total:Ljava/lang/Float;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    :cond_1
    return-object v0
.end method
