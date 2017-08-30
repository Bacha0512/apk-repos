.class public Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroupFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CLASS_NAME_BASE:Ljava/lang/String;

.field private static final PACKAGE:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroupFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroupFactory;->TAG:Ljava/lang/String;

    .line 13
    const-class v0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroupFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroupFactory;->PACKAGE:Ljava/lang/String;

    .line 14
    const-class v0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroupFactory;->CLASS_NAME_BASE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createView(Landroid/content/Context;Lnet/pubnative/api/core/request/model/PNAPIAdModel;)Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup;
    .locals 6

    .prologue
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-virtual {p1}, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->getAssetGroupId()I

    move-result v0

    if-nez v0, :cond_0

    .line 20
    sget-object v0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroupFactory;->TAG:Ljava/lang/String;

    const-string v2, "Error: Ad model used is not compatible with asset groups"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 37
    :goto_0
    return-object v0

    .line 23
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroupFactory;->PACKAGE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroupFactory;->CLASS_NAME_BASE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->getAssetGroupId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 24
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 25
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 26
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 27
    if-nez v0, :cond_1

    .line 28
    :try_start_1
    sget-object v1, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroupFactory;->TAG:Ljava/lang/String;

    const-string v2, "Error: cannot initialise the view"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 32
    :catch_0
    move-exception v1

    .line 34
    :goto_1
    sget-object v2, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroupFactory;->TAG:Ljava/lang/String;

    const-string v3, "Error creating the asset group view"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 30
    :cond_1
    :try_start_2
    iput-object p1, v0, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup;->mAdModel:Lnet/pubnative/api/core/request/model/PNAPIAdModel;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 32
    :catch_1
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_1
.end method
