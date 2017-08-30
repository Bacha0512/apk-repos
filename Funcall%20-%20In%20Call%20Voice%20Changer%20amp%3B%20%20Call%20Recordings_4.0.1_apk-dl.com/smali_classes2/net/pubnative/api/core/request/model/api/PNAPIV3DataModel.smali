.class public Lnet/pubnative/api/core/request/model/api/PNAPIV3DataModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public data:Ljava/util/Map;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected getDataField(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 66
    const/4 v0, 0x0

    .line 67
    iget-object v1, p0, Lnet/pubnative/api/core/request/model/api/PNAPIV3DataModel;->data:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/pubnative/api/core/request/model/api/PNAPIV3DataModel;->data:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    iget-object v0, p0, Lnet/pubnative/api/core/request/model/api/PNAPIV3DataModel;->data:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 70
    :cond_0
    return-object v0
.end method

.method public getHtml()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    const-string v0, "html"

    invoke-virtual {p0, v0}, Lnet/pubnative/api/core/request/model/api/PNAPIV3DataModel;->getStringField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNumber()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 41
    const-string v0, "number"

    invoke-virtual {p0, v0}, Lnet/pubnative/api/core/request/model/api/PNAPIV3DataModel;->getNumberField(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public getNumberField(Ljava/lang/String;)Ljava/lang/Double;
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Lnet/pubnative/api/core/request/model/api/PNAPIV3DataModel;->getDataField(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    return-object v0
.end method

.method public getStringField(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lnet/pubnative/api/core/request/model/api/PNAPIV3DataModel;->getDataField(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    const-string v0, "text"

    invoke-virtual {p0, v0}, Lnet/pubnative/api/core/request/model/api/PNAPIV3DataModel;->getStringField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    const-string v0, "url"

    invoke-virtual {p0, v0}, Lnet/pubnative/api/core/request/model/api/PNAPIV3DataModel;->getStringField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
