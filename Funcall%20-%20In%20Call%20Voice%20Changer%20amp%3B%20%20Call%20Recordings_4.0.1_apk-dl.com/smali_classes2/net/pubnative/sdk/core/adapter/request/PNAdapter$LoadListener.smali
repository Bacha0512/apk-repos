.class public interface abstract Lnet/pubnative/sdk/core/adapter/request/PNAdapter$LoadListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/pubnative/sdk/core/adapter/request/PNAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LoadListener"
.end annotation


# virtual methods
.method public abstract onAdapterLoadFail(Lnet/pubnative/sdk/core/adapter/request/PNAdapter;Ljava/lang/Exception;)V
.end method

.method public abstract onAdapterLoadFinish(Lnet/pubnative/sdk/core/adapter/request/PNAdapter;Lnet/pubnative/sdk/core/request/PNAdModel;)V
.end method
