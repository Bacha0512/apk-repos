.class public Lnet/pubnative/api/core/request/model/api/PNAPIV3AdModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/pubnative/api/core/request/model/api/PNAPIV3AdModel$Beacon;
    }
.end annotation


# instance fields
.field public assetgroupid:I

.field public assets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/pubnative/api/core/request/model/api/PNAPIV3DataModel;",
            ">;"
        }
    .end annotation
.end field

.field public beacons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/pubnative/api/core/request/model/api/PNAPIV3DataModel;",
            ">;"
        }
    .end annotation
.end field

.field public link:Ljava/lang/String;

.field public meta:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/pubnative/api/core/request/model/api/PNAPIV3DataModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected find(Ljava/lang/String;Ljava/util/List;)Lnet/pubnative/api/core/request/model/api/PNAPIV3DataModel;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lnet/pubnative/api/core/request/model/api/PNAPIV3DataModel;",
            ">;)",
            "Lnet/pubnative/api/core/request/model/api/PNAPIV3DataModel;"
        }
    .end annotation

    .prologue
    .line 75
    const/4 v1, 0x0

    .line 76
    if-eqz p2, :cond_1

    .line 77
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/pubnative/api/core/request/model/api/PNAPIV3DataModel;

    .line 78
    iget-object v3, v0, Lnet/pubnative/api/core/request/model/api/PNAPIV3DataModel;->type:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 84
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method protected findAll(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lnet/pubnative/api/core/request/model/api/PNAPIV3DataModel;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lnet/pubnative/api/core/request/model/api/PNAPIV3DataModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    const/4 v1, 0x0

    .line 90
    if-eqz p2, :cond_2

    .line 91
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/pubnative/api/core/request/model/api/PNAPIV3DataModel;

    .line 92
    iget-object v3, v0, Lnet/pubnative/api/core/request/model/api/PNAPIV3DataModel;->type:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 93
    if-nez v1, :cond_1

    .line 94
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 96
    :cond_1
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 100
    :cond_2
    return-object v1
.end method

.method public getAsset(Ljava/lang/String;)Lnet/pubnative/api/core/request/model/api/PNAPIV3DataModel;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lnet/pubnative/api/core/request/model/api/PNAPIV3AdModel;->assets:Ljava/util/List;

    invoke-virtual {p0, p1, v0}, Lnet/pubnative/api/core/request/model/api/PNAPIV3AdModel;->find(Ljava/lang/String;Ljava/util/List;)Lnet/pubnative/api/core/request/model/api/PNAPIV3DataModel;

    move-result-object v0

    return-object v0
.end method

.method public getBeacons(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lnet/pubnative/api/core/request/model/api/PNAPIV3DataModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lnet/pubnative/api/core/request/model/api/PNAPIV3AdModel;->beacons:Ljava/util/List;

    invoke-virtual {p0, p1, v0}, Lnet/pubnative/api/core/request/model/api/PNAPIV3AdModel;->findAll(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMeta(Ljava/lang/String;)Lnet/pubnative/api/core/request/model/api/PNAPIV3DataModel;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lnet/pubnative/api/core/request/model/api/PNAPIV3AdModel;->meta:Ljava/util/List;

    invoke-virtual {p0, p1, v0}, Lnet/pubnative/api/core/request/model/api/PNAPIV3AdModel;->find(Ljava/lang/String;Ljava/util/List;)Lnet/pubnative/api/core/request/model/api/PNAPIV3DataModel;

    move-result-object v0

    return-object v0
.end method
