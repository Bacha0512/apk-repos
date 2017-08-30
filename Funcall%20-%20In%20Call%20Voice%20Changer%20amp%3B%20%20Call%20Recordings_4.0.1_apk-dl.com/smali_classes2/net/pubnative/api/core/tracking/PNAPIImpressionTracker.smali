.class public Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker$ImpressionRunnable;,
        Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker$Listener;
    }
.end annotation


# static fields
.field private static final DEFAULT_MIN_VISIBLE_PERCENT:D = 0.5

.field private static final TAG:Ljava/lang/String;

.field private static final VISIBILITY_CHECK_MILLIS:I = 0xfa

.field private static final VISIBILITY_TIME_MILLIS:I = 0x3e8


# instance fields
.field protected mHandler:Landroid/os/Handler;

.field protected mImpressionListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker$Listener;",
            ">;"
        }
    .end annotation
.end field

.field protected mImpressionRunnable:Ljava/lang/Runnable;

.field protected mTrackingViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field protected mVisibilityListener:Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker$Listener;

.field protected mVisibilityTracker:Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker;

.field protected mVisibleViews:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object v2, p0, Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker;->mImpressionListener:Ljava/lang/ref/WeakReference;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker;->mTrackingViews:Ljava/util/List;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker;->mVisibleViews:Ljava/util/HashMap;

    .line 47
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker;->mHandler:Landroid/os/Handler;

    .line 48
    new-instance v0, Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker$ImpressionRunnable;

    invoke-direct {v0, p0}, Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker$ImpressionRunnable;-><init>(Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker;)V

    iput-object v0, p0, Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker;->mImpressionRunnable:Ljava/lang/Runnable;

    .line 49
    iput-object v2, p0, Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker;->mVisibilityTracker:Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker;

    .line 50
    new-instance v0, Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker$1;

    invoke-direct {v0, p0}, Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker$1;-><init>(Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker;)V

    iput-object v0, p0, Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker;->mVisibilityListener:Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker$Listener;

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 124
    iget-object v0, p0, Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker;->mTrackingViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    :goto_0
    return-void

    .line 127
    :cond_0
    iget-object v0, p0, Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker;->mTrackingViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    invoke-virtual {p0}, Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker;->getVisibilityTracker()Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker;

    move-result-object v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    invoke-virtual {v0, p1, v2, v3}, Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker;->addView(Landroid/view/View;D)V

    goto :goto_0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker;->mTrackingViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 156
    invoke-static {v0}, Lnet/pubnative/api/core/tracking/PNAPIImpressionManager;->stopTrackingView(Landroid/view/View;)V

    goto :goto_0

    .line 159
    :cond_0
    iget-object v0, p0, Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 160
    iget-object v0, p0, Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker;->mTrackingViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 161
    iget-object v0, p0, Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker;->mVisibleViews:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 162
    iget-object v0, p0, Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker;->mVisibilityTracker:Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker;

    if-eqz v0, :cond_1

    .line 163
    iget-object v0, p0, Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker;->mVisibilityTracker:Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker;

    invoke-virtual {v0}, Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker;->clear()V

    .line 164
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker;->mVisibilityTracker:Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker;

    .line 166
    :cond_1
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 96
    instance-of v0, p1, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker;->mTrackingViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 101
    :goto_0
    return v0

    .line 98
    :cond_0
    instance-of v0, p1, Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker$Listener;

    if-eqz v0, :cond_1

    .line 99
    iget-object v0, p0, Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker;->mImpressionListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 101
    :cond_1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method protected getVisibilityTracker()Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker;
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker;->mVisibilityTracker:Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker;

    if-nez v0, :cond_0

    .line 174
    new-instance v0, Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker;

    invoke-direct {v0}, Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker;-><init>()V

    iput-object v0, p0, Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker;->mVisibilityTracker:Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker;

    .line 175
    iget-object v0, p0, Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker;->mVisibilityTracker:Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker;

    iget-object v1, p0, Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker;->mVisibilityListener:Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker$Listener;

    invoke-virtual {v0, v1}, Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker;->setListener(Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker$Listener;)V

    .line 177
    :cond_0
    iget-object v0, p0, Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker;->mVisibilityTracker:Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 91
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker;->mTrackingViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker;->mTrackingViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 138
    iget-object v0, p0, Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker;->mVisibleViews:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    invoke-virtual {p0}, Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker;->getVisibilityTracker()Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker;->removeView(Landroid/view/View;)V

    .line 140
    return-void
.end method

.method protected scheduleNextRun()V
    .locals 4

    .prologue
    .line 181
    iget-object v0, p0, Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    :goto_0
    return-void

    .line 184
    :cond_0
    iget-object v0, p0, Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker;->mImpressionRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public setListener(Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker$Listener;)V
    .locals 1

    .prologue
    .line 114
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker;->mImpressionListener:Ljava/lang/ref/WeakReference;

    .line 115
    return-void
.end method
