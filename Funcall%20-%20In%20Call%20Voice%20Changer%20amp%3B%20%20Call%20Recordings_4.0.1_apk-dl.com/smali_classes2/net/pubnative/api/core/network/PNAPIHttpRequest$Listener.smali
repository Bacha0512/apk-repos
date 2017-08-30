.class public interface abstract Lnet/pubnative/api/core/network/PNAPIHttpRequest$Listener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/pubnative/api/core/network/PNAPIHttpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onPNAPIHttpRequestFail(Lnet/pubnative/api/core/network/PNAPIHttpRequest;Ljava/lang/Exception;)V
.end method

.method public abstract onPNAPIHttpRequestFinish(Lnet/pubnative/api/core/network/PNAPIHttpRequest;Ljava/lang/String;I)V
.end method
