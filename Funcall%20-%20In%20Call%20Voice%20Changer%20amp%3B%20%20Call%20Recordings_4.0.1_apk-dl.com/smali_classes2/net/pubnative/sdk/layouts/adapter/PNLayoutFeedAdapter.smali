.class public abstract Lnet/pubnative/sdk/layouts/adapter/PNLayoutFeedAdapter;
.super Lnet/pubnative/sdk/layouts/adapter/PNLayoutAdapter;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lnet/pubnative/sdk/layouts/adapter/PNLayoutAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getView(Landroid/content/Context;)Landroid/view/View;
.end method

.method public abstract startTracking()V
.end method

.method public abstract stopTracking()V
.end method
