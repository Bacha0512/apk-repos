.class public Lnet/pubnative/sdk/layouts/adapter/medium/PNMediumLayoutAdapterFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final PACKAGE:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lnet/pubnative/sdk/layouts/adapter/medium/PNMediumLayoutAdapterFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/pubnative/sdk/layouts/adapter/medium/PNMediumLayoutAdapterFactory;->TAG:Ljava/lang/String;

    .line 35
    const-class v0, Lnet/pubnative/sdk/layouts/adapter/medium/PNMediumLayoutAdapterFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/pubnative/sdk/layouts/adapter/medium/PNMediumLayoutAdapterFactory;->PACKAGE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAdapter(Lnet/pubnative/sdk/core/config/model/PNNetworkModel;)Lnet/pubnative/sdk/layouts/adapter/PNLayoutAdapter;
    .locals 6

    .prologue
    .line 38
    const/4 v1, 0x0

    .line 40
    :try_start_0
    iget-object v0, p0, Lnet/pubnative/sdk/core/config/model/PNNetworkModel;->adapter:Ljava/lang/String;

    invoke-static {v0}, Lnet/pubnative/sdk/layouts/adapter/medium/PNMediumLayoutAdapterFactory;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 41
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 42
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/pubnative/sdk/layouts/adapter/PNLayoutAdapter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    if-eqz v0, :cond_0

    .line 44
    :try_start_1
    iget-object v1, p0, Lnet/pubnative/sdk/core/config/model/PNNetworkModel;->params:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lnet/pubnative/sdk/layouts/adapter/PNLayoutAdapter;->setNetworkData(Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 50
    :cond_0
    :goto_0
    return-object v0

    .line 46
    :catch_0
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    .line 48
    :goto_1
    sget-object v2, Lnet/pubnative/sdk/layouts/adapter/medium/PNMediumLayoutAdapterFactory;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error creating adapter: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 46
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method protected static getPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 54
    const/4 v0, 0x0

    .line 55
    if-eqz p0, :cond_0

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lnet/pubnative/sdk/layouts/adapter/medium/PNMediumLayoutAdapterFactory;->PACKAGE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 58
    :cond_0
    return-object v0
.end method
