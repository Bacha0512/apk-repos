.class public Lnet/pubnative/api/layouts/PNAPILayout;
.super Lnet/pubnative/api/core/request/PNAPIRequest;
.source "SourceFile"

# interfaces
.implements Lnet/pubnative/api/core/request/PNAPIRequest$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/pubnative/api/layouts/PNAPILayout$Size;,
        Lnet/pubnative/api/layouts/PNAPILayout$FetchListener;,
        Lnet/pubnative/api/layouts/PNAPILayout$LoadListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mAdModel:Lnet/pubnative/api/core/request/model/PNAPIAdModel;

.field protected mFetchListener:Lnet/pubnative/api/layouts/PNAPILayout$FetchListener;

.field protected mLoadListener:Lnet/pubnative/api/layouts/PNAPILayout$LoadListener;

.field protected mSize:Lnet/pubnative/api/layouts/PNAPILayout$Size;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lnet/pubnative/api/layouts/PNAPILayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/pubnative/api/layouts/PNAPILayout;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lnet/pubnative/api/core/request/PNAPIRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public fetch(Lnet/pubnative/api/layouts/PNAPILayout$FetchListener;)V
    .locals 2

    .prologue
    .line 95
    if-nez p1, :cond_0

    .line 96
    sget-object v0, Lnet/pubnative/api/layouts/PNAPILayout;->TAG:Ljava/lang/String;

    const-string v1, "Listener is required and null, dropping this call"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :goto_0
    return-void

    .line 98
    :cond_0
    iput-object p1, p0, Lnet/pubnative/api/layouts/PNAPILayout;->mFetchListener:Lnet/pubnative/api/layouts/PNAPILayout$FetchListener;

    .line 99
    iget-object v0, p0, Lnet/pubnative/api/layouts/PNAPILayout;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lnet/pubnative/api/layouts/PNAPILayout;->mAdModel:Lnet/pubnative/api/core/request/model/PNAPIAdModel;

    invoke-static {v0, v1}, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroupFactory;->createView(Landroid/content/Context;Lnet/pubnative/api/core/request/model/PNAPIAdModel;)Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup;

    move-result-object v0

    .line 100
    if-nez v0, :cond_1

    .line 101
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Error: could not initialise asset group view"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lnet/pubnative/api/layouts/PNAPILayout;->invokeFail(Ljava/lang/Exception;)V

    goto :goto_0

    .line 103
    :cond_1
    new-instance v1, Lnet/pubnative/api/layouts/PNAPILayout$1;

    invoke-direct {v1, p0}, Lnet/pubnative/api/layouts/PNAPILayout$1;-><init>(Lnet/pubnative/api/layouts/PNAPILayout;)V

    invoke-virtual {v0, v1}, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup;->setLoadListener(Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup$LoadListener;)V

    .line 114
    invoke-virtual {v0}, Lnet/pubnative/api/layouts/asset_group/PNAPIAssetGroup;->load()V

    goto :goto_0
.end method

.method protected invokeFail(Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lnet/pubnative/api/layouts/PNAPILayout;->mLoadListener:Lnet/pubnative/api/layouts/PNAPILayout$LoadListener;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lnet/pubnative/api/layouts/PNAPILayout;->mLoadListener:Lnet/pubnative/api/layouts/PNAPILayout$LoadListener;

    invoke-interface {v0, p0, p1}, Lnet/pubnative/api/layouts/PNAPILayout$LoadListener;->onPubnativeLayoutLoadFail(Lnet/pubnative/api/layouts/PNAPILayout;Ljava/lang/Exception;)V

    .line 136
    :cond_0
    return-void
.end method

.method protected invokeFetchFail(Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lnet/pubnative/api/layouts/PNAPILayout;->mFetchListener:Lnet/pubnative/api/layouts/PNAPILayout$FetchListener;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lnet/pubnative/api/layouts/PNAPILayout;->mFetchListener:Lnet/pubnative/api/layouts/PNAPILayout$FetchListener;

    invoke-interface {v0, p0, p1}, Lnet/pubnative/api/layouts/PNAPILayout$FetchListener;->onPubnativeLayoutFetchFail(Lnet/pubnative/api/layouts/PNAPILayout;Ljava/lang/Exception;)V

    .line 148
    :cond_0
    return-void
.end method

.method protected invokeFetchFinish(Lnet/pubnative/api/layouts/PNAPILayoutView;)V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lnet/pubnative/api/layouts/PNAPILayout;->mFetchListener:Lnet/pubnative/api/layouts/PNAPILayout$FetchListener;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lnet/pubnative/api/layouts/PNAPILayout;->mFetchListener:Lnet/pubnative/api/layouts/PNAPILayout$FetchListener;

    invoke-interface {v0, p0, p1}, Lnet/pubnative/api/layouts/PNAPILayout$FetchListener;->onPubnativeLayoutFetchFinish(Lnet/pubnative/api/layouts/PNAPILayout;Lnet/pubnative/api/layouts/PNAPILayoutView;)V

    .line 142
    :cond_0
    return-void
.end method

.method protected invokeLoadFinish()V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lnet/pubnative/api/layouts/PNAPILayout;->mLoadListener:Lnet/pubnative/api/layouts/PNAPILayout$LoadListener;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lnet/pubnative/api/layouts/PNAPILayout;->mLoadListener:Lnet/pubnative/api/layouts/PNAPILayout$LoadListener;

    iget-object v1, p0, Lnet/pubnative/api/layouts/PNAPILayout;->mAdModel:Lnet/pubnative/api/core/request/model/PNAPIAdModel;

    invoke-interface {v0, p0, v1}, Lnet/pubnative/api/layouts/PNAPILayout$LoadListener;->onPubnativeLayoutLoadFinish(Lnet/pubnative/api/layouts/PNAPILayout;Lnet/pubnative/api/core/request/model/PNAPIAdModel;)V

    .line 130
    :cond_0
    return-void
.end method

.method public load(Landroid/content/Context;Lnet/pubnative/api/layouts/PNAPILayout$Size;Lnet/pubnative/api/layouts/PNAPILayout$LoadListener;)V
    .locals 2

    .prologue
    .line 81
    if-nez p3, :cond_0

    .line 82
    sget-object v0, Lnet/pubnative/api/layouts/PNAPILayout;->TAG:Ljava/lang/String;

    const-string v1, "Listener is required and null, dropping this call"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :goto_0
    return-void

    .line 83
    :cond_0
    if-nez p2, :cond_1

    .line 84
    sget-object v0, Lnet/pubnative/api/layouts/PNAPILayout;->TAG:Ljava/lang/String;

    const-string v1, "Size is required and null, please specify the size, dropping this call"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 86
    :cond_1
    iput-object p2, p0, Lnet/pubnative/api/layouts/PNAPILayout;->mSize:Lnet/pubnative/api/layouts/PNAPILayout$Size;

    .line 87
    iput-object p3, p0, Lnet/pubnative/api/layouts/PNAPILayout;->mLoadListener:Lnet/pubnative/api/layouts/PNAPILayout$LoadListener;

    .line 88
    const-string v0, "al"

    invoke-virtual {p2}, Lnet/pubnative/api/layouts/PNAPILayout$Size;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lnet/pubnative/api/layouts/PNAPILayout;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-super {p0, p1, p0}, Lnet/pubnative/api/core/request/PNAPIRequest;->start(Landroid/content/Context;Lnet/pubnative/api/core/request/PNAPIRequest$Listener;)V

    goto :goto_0
.end method

.method public onPNAPIRequestFail(Lnet/pubnative/api/core/request/PNAPIRequest;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 167
    invoke-virtual {p0, p2}, Lnet/pubnative/api/layouts/PNAPILayout;->invokeFail(Ljava/lang/Exception;)V

    .line 168
    return-void
.end method

.method public onPNAPIRequestFinish(Lnet/pubnative/api/core/request/PNAPIRequest;Ljava/util/List;)V
    .locals 2
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
    .line 156
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 157
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "No fill, pubnative did not return any valid ad"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lnet/pubnative/api/layouts/PNAPILayout;->invokeFail(Ljava/lang/Exception;)V

    .line 162
    :goto_0
    return-void

    .line 159
    :cond_1
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/pubnative/api/core/request/model/PNAPIAdModel;

    iput-object v0, p0, Lnet/pubnative/api/layouts/PNAPILayout;->mAdModel:Lnet/pubnative/api/core/request/model/PNAPIAdModel;

    .line 160
    invoke-virtual {p0}, Lnet/pubnative/api/layouts/PNAPILayout;->invokeLoadFinish()V

    goto :goto_0
.end method

.method public setAdModel(Lnet/pubnative/api/core/request/model/PNAPIAdModel;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lnet/pubnative/api/layouts/PNAPILayout;->mAdModel:Lnet/pubnative/api/core/request/model/PNAPIAdModel;

    .line 121
    return-void
.end method
