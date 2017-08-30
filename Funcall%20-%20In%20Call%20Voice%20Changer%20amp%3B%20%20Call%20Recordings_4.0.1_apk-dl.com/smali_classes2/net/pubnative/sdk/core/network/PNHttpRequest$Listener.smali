.class public interface abstract Lnet/pubnative/sdk/core/network/PNHttpRequest$Listener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/pubnative/sdk/core/network/PNHttpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onPNHttpRequestFail(Lnet/pubnative/sdk/core/network/PNHttpRequest;Ljava/lang/Exception;)V
.end method

.method public abstract onPNHttpRequestFinish(Lnet/pubnative/sdk/core/network/PNHttpRequest;Ljava/lang/String;)V
.end method
