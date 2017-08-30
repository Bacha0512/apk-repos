.class public interface abstract Lnet/pubnative/sdk/core/request/PNRequest$Listener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/pubnative/sdk/core/request/PNRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onPNRequestLoadFail(Lnet/pubnative/sdk/core/request/PNRequest;Ljava/lang/Exception;)V
.end method

.method public abstract onPNRequestLoadFinish(Lnet/pubnative/sdk/core/request/PNRequest;Lnet/pubnative/sdk/core/request/PNAdModel;)V
.end method
