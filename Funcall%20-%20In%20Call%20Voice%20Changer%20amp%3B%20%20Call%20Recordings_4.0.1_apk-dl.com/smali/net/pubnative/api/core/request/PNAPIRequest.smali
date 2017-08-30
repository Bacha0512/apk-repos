.class public Lnet/pubnative/api/core/request/PNAPIRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/pubnative/api/core/network/PNAPIHttpRequest$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/pubnative/api/core/request/PNAPIRequest$Listener;,
        Lnet/pubnative/api/core/request/PNAPIRequest$Parameters;
    }
.end annotation


# static fields
.field protected static final BASE_URL:Ljava/lang/String; = "https://api.pubnative.net/api/v3/native"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static TAG:Ljava/lang/String;


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mIsRunning:Z

.field protected mListener:Lnet/pubnative/api/core/request/PNAPIRequest$Listener;

.field protected mRequest:Lnet/pubnative/api/core/network/PNAPIHttpRequest;

.field protected mRequestParameters:Ljava/util/Map;
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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-class v0, Lnet/pubnative/api/core/request/PNAPIRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/pubnative/api/core/request/PNAPIRequest;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object v1, p0, Lnet/pubnative/api/core/request/PNAPIRequest;->mContext:Landroid/content/Context;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/pubnative/api/core/request/PNAPIRequest;->mRequestParameters:Ljava/util/Map;

    .line 58
    iput-object v1, p0, Lnet/pubnative/api/core/request/PNAPIRequest;->mListener:Lnet/pubnative/api/core/request/PNAPIRequest$Listener;

    .line 59
    iput-object v1, p0, Lnet/pubnative/api/core/request/PNAPIRequest;->mRequest:Lnet/pubnative/api/core/network/PNAPIHttpRequest;

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/pubnative/api/core/request/PNAPIRequest;->mIsRunning:Z

    return-void
.end method


# virtual methods
.method protected doRequest()V
    .locals 3

    .prologue
    .line 282
    invoke-virtual {p0}, Lnet/pubnative/api/core/request/PNAPIRequest;->getRequestURL()Ljava/lang/String;

    move-result-object v0

    .line 283
    if-nez v0, :cond_0

    .line 284
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "PNAPIRequest - Error: invalid request URL"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lnet/pubnative/api/core/request/PNAPIRequest;->invokeOnFail(Ljava/lang/Exception;)V

    .line 289
    :goto_0
    return-void

    .line 286
    :cond_0
    new-instance v1, Lnet/pubnative/api/core/network/PNAPIHttpRequest;

    invoke-direct {v1}, Lnet/pubnative/api/core/network/PNAPIHttpRequest;-><init>()V

    iput-object v1, p0, Lnet/pubnative/api/core/request/PNAPIRequest;->mRequest:Lnet/pubnative/api/core/network/PNAPIHttpRequest;

    .line 287
    iget-object v1, p0, Lnet/pubnative/api/core/request/PNAPIRequest;->mRequest:Lnet/pubnative/api/core/network/PNAPIHttpRequest;

    iget-object v2, p0, Lnet/pubnative/api/core/request/PNAPIRequest;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0, p0}, Lnet/pubnative/api/core/network/PNAPIHttpRequest;->start(Landroid/content/Context;Ljava/lang/String;Lnet/pubnative/api/core/network/PNAPIHttpRequest$Listener;)V

    goto :goto_0
.end method

.method protected fillDefaultParameters()V
    .locals 3

    .prologue
    .line 213
    iget-object v0, p0, Lnet/pubnative/api/core/request/PNAPIRequest;->mRequestParameters:Ljava/util/Map;

    const-string v1, "os"

    sget-object v2, Lnet/pubnative/sdk/core/PNSettings;->os:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    iget-object v0, p0, Lnet/pubnative/api/core/request/PNAPIRequest;->mRequestParameters:Ljava/util/Map;

    const-string v1, "osver"

    sget-object v2, Lnet/pubnative/sdk/core/PNSettings;->osVersion:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    iget-object v0, p0, Lnet/pubnative/api/core/request/PNAPIRequest;->mRequestParameters:Ljava/util/Map;

    const-string v1, "devicemodel"

    sget-object v2, Lnet/pubnative/sdk/core/PNSettings;->deviceName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    iget-object v0, p0, Lnet/pubnative/api/core/request/PNAPIRequest;->mRequestParameters:Ljava/util/Map;

    const-string v1, "locale"

    sget-object v2, Lnet/pubnative/sdk/core/PNSettings;->locale:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    invoke-virtual {p0}, Lnet/pubnative/api/core/request/PNAPIRequest;->setAdvertisingID()V

    .line 219
    invoke-virtual {p0}, Lnet/pubnative/api/core/request/PNAPIRequest;->setLocation()V

    .line 220
    invoke-virtual {p0}, Lnet/pubnative/api/core/request/PNAPIRequest;->setDefaultAssetFields()V

    .line 221
    invoke-virtual {p0}, Lnet/pubnative/api/core/request/PNAPIRequest;->setDefaultMetaFields()V

    .line 222
    return-void
.end method

.method protected getRequestURL()Ljava/lang/String;
    .locals 4

    .prologue
    .line 270
    const-string v0, "https://api.pubnative.net/api/v3/native"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    .line 272
    iget-object v0, p0, Lnet/pubnative/api/core/request/PNAPIRequest;->mRequestParameters:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 273
    iget-object v1, p0, Lnet/pubnative/api/core/request/PNAPIRequest;->mRequestParameters:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 274
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 275
    invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 278
    :cond_1
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected invokeOnFail(Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 343
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/pubnative/api/core/request/PNAPIRequest;->mIsRunning:Z

    .line 344
    iget-object v0, p0, Lnet/pubnative/api/core/request/PNAPIRequest;->mListener:Lnet/pubnative/api/core/request/PNAPIRequest$Listener;

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lnet/pubnative/api/core/request/PNAPIRequest;->mListener:Lnet/pubnative/api/core/request/PNAPIRequest$Listener;

    invoke-interface {v0, p0, p1}, Lnet/pubnative/api/core/request/PNAPIRequest$Listener;->onPNAPIRequestFail(Lnet/pubnative/api/core/request/PNAPIRequest;Ljava/lang/Exception;)V

    .line 347
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/pubnative/api/core/request/PNAPIRequest;->mListener:Lnet/pubnative/api/core/request/PNAPIRequest$Listener;

    .line 348
    return-void
.end method

.method protected invokeOnSuccess(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnet/pubnative/api/core/request/model/PNAPIAdModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 335
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/pubnative/api/core/request/PNAPIRequest;->mIsRunning:Z

    .line 336
    iget-object v0, p0, Lnet/pubnative/api/core/request/PNAPIRequest;->mListener:Lnet/pubnative/api/core/request/PNAPIRequest$Listener;

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lnet/pubnative/api/core/request/PNAPIRequest;->mListener:Lnet/pubnative/api/core/request/PNAPIRequest$Listener;

    invoke-interface {v0, p0, p1}, Lnet/pubnative/api/core/request/PNAPIRequest$Listener;->onPNAPIRequestFinish(Lnet/pubnative/api/core/request/PNAPIRequest;Ljava/util/List;)V

    .line 339
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/pubnative/api/core/request/PNAPIRequest;->mListener:Lnet/pubnative/api/core/request/PNAPIRequest$Listener;

    .line 340
    return-void
.end method

.method protected isCoppaModeEnabled()Z
    .locals 3

    .prologue
    .line 292
    const/4 v1, 0x0

    .line 293
    iget-object v0, p0, Lnet/pubnative/api/core/request/PNAPIRequest;->mRequestParameters:Ljava/util/Map;

    const-string v2, "coppa"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 294
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 295
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 297
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public onPNAPIHttpRequestFail(Lnet/pubnative/api/core/network/PNAPIHttpRequest;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 372
    invoke-virtual {p0, p2}, Lnet/pubnative/api/core/request/PNAPIRequest;->invokeOnFail(Ljava/lang/Exception;)V

    .line 373
    return-void
.end method

.method public onPNAPIHttpRequestFinish(Lnet/pubnative/api/core/network/PNAPIHttpRequest;Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 357
    const/16 v0, 0xc8

    if-eq v0, p3, :cond_0

    const/16 v0, 0x1a6

    if-ne v0, p3, :cond_1

    .line 361
    :cond_0
    invoke-virtual {p0, p2}, Lnet/pubnative/api/core/request/PNAPIRequest;->processStream(Ljava/lang/String;)V

    .line 368
    :goto_0
    return-void

    .line 366
    :cond_1
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PNAPIRequest - Response error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lnet/pubnative/api/core/request/PNAPIRequest;->invokeOnFail(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected processStream(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 301
    .line 304
    :try_start_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lnet/pubnative/api/core/request/model/api/PNAPIV3ResponseModel;

    invoke-virtual {v0, p1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/pubnative/api/core/request/model/api/PNAPIV3ResponseModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    move-object v0, v1

    .line 308
    :goto_0
    if-eqz v0, :cond_0

    .line 309
    invoke-virtual {p0, v0}, Lnet/pubnative/api/core/request/PNAPIRequest;->invokeOnFail(Ljava/lang/Exception;)V

    .line 328
    :goto_1
    return-void

    .line 305
    :catch_0
    move-exception v0

    move-object v2, v1

    .line 306
    goto :goto_0

    .line 310
    :cond_0
    if-nez v2, :cond_1

    .line 311
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "PNAPIRequest - Parse error"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lnet/pubnative/api/core/request/PNAPIRequest;->invokeOnFail(Ljava/lang/Exception;)V

    goto :goto_1

    .line 312
    :cond_1
    const-string v0, "ok"

    iget-object v3, v2, Lnet/pubnative/api/core/request/model/api/PNAPIV3ResponseModel;->status:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 315
    iget-object v0, v2, Lnet/pubnative/api/core/request/model/api/PNAPIV3ResponseModel;->ads:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 316
    iget-object v0, v2, Lnet/pubnative/api/core/request/model/api/PNAPIV3ResponseModel;->ads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/pubnative/api/core/request/model/api/PNAPIV3AdModel;

    .line 317
    if-nez v1, :cond_2

    .line 318
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 320
    :cond_2
    invoke-static {v0}, Lnet/pubnative/api/core/request/model/PNAPIAdModel;->create(Lnet/pubnative/api/core/request/model/api/PNAPIV3AdModel;)Lnet/pubnative/api/core/request/model/PNAPIAdModel;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 323
    :cond_3
    invoke-virtual {p0, v1}, Lnet/pubnative/api/core/request/PNAPIRequest;->invokeOnSuccess(Ljava/util/List;)V

    goto :goto_1

    .line 326
    :cond_4
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PNAPIRequest - Server error: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v2, Lnet/pubnative/api/core/request/model/api/PNAPIV3ResponseModel;->error_message:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lnet/pubnative/api/core/request/PNAPIRequest;->invokeOnFail(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method protected setAdvertisingID()V
    .locals 3

    .prologue
    .line 225
    sget-object v0, Lnet/pubnative/sdk/core/PNSettings;->advertisingId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lnet/pubnative/api/core/request/PNAPIRequest;->mRequestParameters:Ljava/util/Map;

    const-string v1, "dnt"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    :goto_0
    return-void

    .line 228
    :cond_0
    iget-object v0, p0, Lnet/pubnative/api/core/request/PNAPIRequest;->mRequestParameters:Ljava/util/Map;

    const-string v1, "gid"

    sget-object v2, Lnet/pubnative/sdk/core/PNSettings;->advertisingId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    iget-object v0, p0, Lnet/pubnative/api/core/request/PNAPIRequest;->mRequestParameters:Ljava/util/Map;

    const-string v1, "gidsha1"

    sget-object v2, Lnet/pubnative/sdk/core/PNSettings;->advertisingId:Ljava/lang/String;

    invoke-static {v2}, Lnet/pubnative/api/core/utils/PNAPICrypto;->sha1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    iget-object v0, p0, Lnet/pubnative/api/core/request/PNAPIRequest;->mRequestParameters:Ljava/util/Map;

    const-string v1, "gidmd5"

    sget-object v2, Lnet/pubnative/sdk/core/PNSettings;->advertisingId:Ljava/lang/String;

    invoke-static {v2}, Lnet/pubnative/api/core/utils/PNAPICrypto;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setCoppaMode(Z)V
    .locals 2

    .prologue
    .line 195
    const-string v1, "coppa"

    if-eqz p1, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-virtual {p0, v1, v0}, Lnet/pubnative/api/core/request/PNAPIRequest;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    return-void

    .line 195
    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method protected setDefaultAssetFields()V
    .locals 4

    .prologue
    .line 243
    iget-object v0, p0, Lnet/pubnative/api/core/request/PNAPIRequest;->mRequestParameters:Ljava/util/Map;

    const-string v1, "al"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/pubnative/api/core/request/PNAPIRequest;->mRequestParameters:Ljava/util/Map;

    const-string v1, "af"

    .line 244
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 246
    const-string v0, "af"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "title"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "description"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "icon"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "banner"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "cta"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "rating"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lnet/pubnative/api/core/request/PNAPIRequest;->setParameterArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 255
    :cond_0
    return-void
.end method

.method protected setDefaultMetaFields()V
    .locals 3

    .prologue
    .line 258
    iget-object v0, p0, Lnet/pubnative/api/core/request/PNAPIRequest;->mRequestParameters:Ljava/util/Map;

    const-string v1, "mf"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 259
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 260
    if-eqz v0, :cond_0

    .line 261
    const-string v2, ","

    invoke-static {v0, v2}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 263
    :cond_0
    const-string v0, "revenuemodel"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    const-string v0, "contentinfo"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    const-string v2, "mf"

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, v2, v0}, Lnet/pubnative/api/core/request/PNAPIRequest;->setParameterArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 266
    return-void
.end method

.method protected setLocation()V
    .locals 6

    .prologue
    .line 235
    sget-object v0, Lnet/pubnative/sdk/core/PNSettings;->location:Landroid/location/Location;

    .line 236
    if-eqz v0, :cond_0

    .line 237
    iget-object v1, p0, Lnet/pubnative/api/core/request/PNAPIRequest;->mRequestParameters:Ljava/util/Map;

    const-string v2, "long"

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    iget-object v1, p0, Lnet/pubnative/api/core/request/PNAPIRequest;->mRequestParameters:Ljava/util/Map;

    const-string v2, "lat"

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    :cond_0
    return-void
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 133
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    sget-object v0, Lnet/pubnative/api/core/request/PNAPIRequest;->TAG:Ljava/lang/String;

    const-string v1, "Invalid key passed for parameter"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :goto_0
    return-void

    .line 135
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, p0, Lnet/pubnative/api/core/request/PNAPIRequest;->mRequestParameters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 138
    :cond_1
    iget-object v0, p0, Lnet/pubnative/api/core/request/PNAPIRequest;->mRequestParameters:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setParameterArray(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 149
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    sget-object v0, Lnet/pubnative/api/core/request/PNAPIRequest;->TAG:Ljava/lang/String;

    const-string v1, "Invalid key passed for parameter"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :goto_0
    return-void

    .line 151
    :cond_0
    if-nez p2, :cond_1

    .line 152
    iget-object v0, p0, Lnet/pubnative/api/core/request/PNAPIRequest;->mRequestParameters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 154
    :cond_1
    iget-object v0, p0, Lnet/pubnative/api/core/request/PNAPIRequest;->mRequestParameters:Ljava/util/Map;

    const-string v1, ","

    invoke-static {v1, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setTestMode(Z)V
    .locals 2

    .prologue
    .line 186
    const-string v1, "test"

    if-eqz p1, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-virtual {p0, v1, v0}, Lnet/pubnative/api/core/request/PNAPIRequest;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    return-void

    .line 186
    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method public setTimeout(I)V
    .locals 0

    .prologue
    .line 204
    invoke-static {p1}, Lnet/pubnative/api/core/network/PNAPIHttpRequest;->setConnectionTimeout(I)V

    .line 205
    return-void
.end method

.method public start(Landroid/content/Context;Lnet/pubnative/api/core/request/PNAPIRequest$Listener;)V
    .locals 2

    .prologue
    .line 165
    if-nez p2, :cond_0

    .line 166
    sget-object v0, Lnet/pubnative/api/core/request/PNAPIRequest;->TAG:Ljava/lang/String;

    const-string v1, "start - listener is null and required, dropping call"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :goto_0
    return-void

    .line 167
    :cond_0
    if-nez p1, :cond_1

    .line 168
    sget-object v0, Lnet/pubnative/api/core/request/PNAPIRequest;->TAG:Ljava/lang/String;

    const-string v1, "start - context is null and required, dropping call"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 169
    :cond_1
    iget-boolean v0, p0, Lnet/pubnative/api/core/request/PNAPIRequest;->mIsRunning:Z

    if-eqz v0, :cond_2

    .line 170
    sget-object v0, Lnet/pubnative/api/core/request/PNAPIRequest;->TAG:Ljava/lang/String;

    const-string v1, "start - this request is already running, dropping the call"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 172
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/pubnative/api/core/request/PNAPIRequest;->mIsRunning:Z

    .line 173
    iput-object p2, p0, Lnet/pubnative/api/core/request/PNAPIRequest;->mListener:Lnet/pubnative/api/core/request/PNAPIRequest$Listener;

    .line 174
    iput-object p1, p0, Lnet/pubnative/api/core/request/PNAPIRequest;->mContext:Landroid/content/Context;

    .line 175
    invoke-virtual {p0}, Lnet/pubnative/api/core/request/PNAPIRequest;->fillDefaultParameters()V

    .line 176
    invoke-virtual {p0}, Lnet/pubnative/api/core/request/PNAPIRequest;->doRequest()V

    goto :goto_0
.end method
