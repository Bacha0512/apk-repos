.class public interface abstract Lnet/pubnative/sdk/layouts/PNLayout$LoadListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/pubnative/sdk/layouts/PNLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LoadListener"
.end annotation


# virtual methods
.method public abstract onPNLayoutLoadFail(Lnet/pubnative/sdk/layouts/PNLayout;Ljava/lang/Exception;)V
.end method

.method public abstract onPNLayoutLoadFinish(Lnet/pubnative/sdk/layouts/PNLayout;)V
.end method
