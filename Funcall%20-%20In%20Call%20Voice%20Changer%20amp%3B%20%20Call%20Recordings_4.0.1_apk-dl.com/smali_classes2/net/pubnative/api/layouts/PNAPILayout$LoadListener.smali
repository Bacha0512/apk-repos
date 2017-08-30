.class public interface abstract Lnet/pubnative/api/layouts/PNAPILayout$LoadListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/pubnative/api/layouts/PNAPILayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LoadListener"
.end annotation


# virtual methods
.method public abstract onPubnativeLayoutLoadFail(Lnet/pubnative/api/layouts/PNAPILayout;Ljava/lang/Exception;)V
.end method

.method public abstract onPubnativeLayoutLoadFinish(Lnet/pubnative/api/layouts/PNAPILayout;Lnet/pubnative/api/core/request/model/PNAPIAdModel;)V
.end method
