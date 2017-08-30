.class public interface abstract Lnet/pubnative/api/layouts/PNAPILayout$FetchListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/pubnative/api/layouts/PNAPILayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FetchListener"
.end annotation


# virtual methods
.method public abstract onPubnativeLayoutFetchFail(Lnet/pubnative/api/layouts/PNAPILayout;Ljava/lang/Exception;)V
.end method

.method public abstract onPubnativeLayoutFetchFinish(Lnet/pubnative/api/layouts/PNAPILayout;Lnet/pubnative/api/layouts/PNAPILayoutView;)V
.end method
