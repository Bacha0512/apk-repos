.class public abstract Lnet/pubnative/api/layouts/PNAPILayoutView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/pubnative/api/layouts/PNAPILayoutView$Listener;,
        Lnet/pubnative/api/layouts/PNAPILayoutView$IDMap;
    }
.end annotation


# instance fields
.field protected mListener:Lnet/pubnative/api/layouts/PNAPILayoutView$Listener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 10
    return-void
.end method


# virtual methods
.method public abstract getIDMap()Lnet/pubnative/api/layouts/PNAPILayoutView$IDMap;
.end method

.method protected invokeOnClick()V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lnet/pubnative/api/layouts/PNAPILayoutView;->mListener:Lnet/pubnative/api/layouts/PNAPILayoutView$Listener;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lnet/pubnative/api/layouts/PNAPILayoutView;->mListener:Lnet/pubnative/api/layouts/PNAPILayoutView$Listener;

    invoke-interface {v0, p0}, Lnet/pubnative/api/layouts/PNAPILayoutView$Listener;->onPubnativeLayoutViewClick(Lnet/pubnative/api/layouts/PNAPILayoutView;)V

    .line 40
    :cond_0
    return-void
.end method

.method protected invokeOnImpressionConfirmed()V
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lnet/pubnative/api/layouts/PNAPILayoutView;->mListener:Lnet/pubnative/api/layouts/PNAPILayoutView$Listener;

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lnet/pubnative/api/layouts/PNAPILayoutView;->mListener:Lnet/pubnative/api/layouts/PNAPILayoutView$Listener;

    invoke-interface {v0, p0}, Lnet/pubnative/api/layouts/PNAPILayoutView$Listener;->onPubnativeLayoutViewImpressionConfirmed(Lnet/pubnative/api/layouts/PNAPILayoutView;)V

    .line 34
    :cond_0
    return-void
.end method

.method public setListener(Lnet/pubnative/api/layouts/PNAPILayoutView$Listener;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lnet/pubnative/api/layouts/PNAPILayoutView;->mListener:Lnet/pubnative/api/layouts/PNAPILayoutView$Listener;

    .line 47
    return-void
.end method

.method public abstract startTracking()V
.end method

.method public abstract stopTracking()V
.end method
