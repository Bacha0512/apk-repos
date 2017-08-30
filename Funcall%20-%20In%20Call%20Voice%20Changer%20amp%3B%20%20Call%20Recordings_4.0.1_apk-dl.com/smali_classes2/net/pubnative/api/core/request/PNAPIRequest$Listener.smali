.class public interface abstract Lnet/pubnative/api/core/request/PNAPIRequest$Listener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/pubnative/api/core/request/PNAPIRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onPNAPIRequestFail(Lnet/pubnative/api/core/request/PNAPIRequest;Ljava/lang/Exception;)V
.end method

.method public abstract onPNAPIRequestFinish(Lnet/pubnative/api/core/request/PNAPIRequest;Ljava/util/List;)V
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
.end method
