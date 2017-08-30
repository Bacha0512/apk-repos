.class public abstract Lnet/pubnative/sdk/layouts/adapter/PNLayoutFullscreenAdapter;
.super Lnet/pubnative/sdk/layouts/adapter/PNLayoutAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/pubnative/sdk/layouts/adapter/PNLayoutFullscreenAdapter$ViewListener;
    }
.end annotation


# instance fields
.field protected mViewListener:Lnet/pubnative/sdk/layouts/adapter/PNLayoutFullscreenAdapter$ViewListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lnet/pubnative/sdk/layouts/adapter/PNLayoutAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract hide()V
.end method

.method protected invokeHide()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/PNLayoutFullscreenAdapter;->mViewListener:Lnet/pubnative/sdk/layouts/adapter/PNLayoutFullscreenAdapter$ViewListener;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/PNLayoutFullscreenAdapter;->mViewListener:Lnet/pubnative/sdk/layouts/adapter/PNLayoutFullscreenAdapter$ViewListener;

    invoke-interface {v0}, Lnet/pubnative/sdk/layouts/adapter/PNLayoutFullscreenAdapter$ViewListener;->onAdapterViewHide()V

    .line 65
    :cond_0
    return-void
.end method

.method protected invokeShow()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/PNLayoutFullscreenAdapter;->mViewListener:Lnet/pubnative/sdk/layouts/adapter/PNLayoutFullscreenAdapter$ViewListener;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/adapter/PNLayoutFullscreenAdapter;->mViewListener:Lnet/pubnative/sdk/layouts/adapter/PNLayoutFullscreenAdapter$ViewListener;

    invoke-interface {v0}, Lnet/pubnative/sdk/layouts/adapter/PNLayoutFullscreenAdapter$ViewListener;->onAdapterViewShow()V

    .line 59
    :cond_0
    return-void
.end method

.method public setViewListener(Lnet/pubnative/sdk/layouts/adapter/PNLayoutFullscreenAdapter$ViewListener;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lnet/pubnative/sdk/layouts/adapter/PNLayoutFullscreenAdapter;->mViewListener:Lnet/pubnative/sdk/layouts/adapter/PNLayoutFullscreenAdapter$ViewListener;

    .line 42
    return-void
.end method

.method public abstract show()V
.end method
