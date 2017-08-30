.class public Lnet/pubnative/sdk/layouts/adapter/PNLayoutAdModel;
.super Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryAdModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/pubnative/sdk/layouts/adapter/PNLayoutAdModel$FetchListener;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lnet/pubnative/api/core/request/model/PNAPIAdModel;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryAdModel;-><init>(Landroid/content/Context;Lnet/pubnative/api/core/request/model/PNAPIAdModel;)V

    .line 15
    return-void
.end method


# virtual methods
.method public fetchAssets(Lnet/pubnative/sdk/layouts/adapter/PNLayoutAdModel$FetchListener;)V
    .locals 0

    .prologue
    .line 18
    invoke-super {p0, p1}, Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryAdModel;->fetchAssets(Lnet/pubnative/sdk/core/request/PNAdModel$FetchListener;)V

    .line 19
    return-void
.end method
