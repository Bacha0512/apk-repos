.class public Lnet/pubnative/sdk/core/request/PNNativeHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAsset(Lnet/pubnative/sdk/core/request/PNAdModel;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lnet/pubnative/sdk/core/request/PNAdModel;->getAsset(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getBannerUrl(Lnet/pubnative/sdk/core/request/PNAdModel;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lnet/pubnative/sdk/core/request/PNAdModel;->getBannerUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getContentInfoClickUrl(Lnet/pubnative/sdk/core/request/PNAdModel;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0}, Lnet/pubnative/sdk/core/request/PNAdModel;->getContentInfoClickUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getContentInfoIconUrl(Lnet/pubnative/sdk/core/request/PNAdModel;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lnet/pubnative/sdk/core/request/PNAdModel;->getContentInfoImageUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getIconUrl(Lnet/pubnative/sdk/core/request/PNAdModel;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0}, Lnet/pubnative/sdk/core/request/PNAdModel;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
