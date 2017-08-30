.class public Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker$VisibilityRunnable;,
        Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker$PubnativeVisibilityTrackerItem;,
        Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final VISIBILITY_CHECK_DELAY:I = 0x64


# instance fields
.field protected mDeviceView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field protected mHandler:Landroid/os/Handler;

.field protected mIsVisibilityCheckScheduled:Z

.field protected mListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker$Listener;",
            ">;"
        }
    .end annotation
.end field

.field protected mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field protected mTrackedViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker$PubnativeVisibilityTrackerItem;",
            ">;"
        }
    .end annotation
.end field

.field protected mVisibilityRunnable:Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker$VisibilityRunnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object v0, p0, Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker;->mDeviceView:Ljava/lang/ref/WeakReference;

    .line 42
    iput-object v0, p0, Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker;->mListener:Ljava/lang/ref/WeakReference;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker;->mTrackedViews:Ljava/util/List;

    .line 44
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker;->mHandler:Landroid/os/Handler;

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker;->mIsVisibilityCheckScheduled:Z

    .line 46
    new-instance v0, Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker$VisibilityRunnable;

    invoke-direct {v0, p0}, Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker$VisibilityRunnable;-><init>(Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker;)V

    iput-object v0, p0, Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker;->mVisibilityRunnable:Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker$VisibilityRunnable;

    .line 47
    new-instance v0, Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker$1;

    invoke-direct {v0, p0}, Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker$1;-><init>(Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker;)V

    iput-object v0, p0, Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;D)V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker;->mDeviceView:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker;->mDeviceView:Ljava/lang/ref/WeakReference;

    .line 91
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 92
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 93
    iget-object v1, p0, Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 99
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker;->containsTrackedView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 111
    :goto_1
    return-void

    .line 95
    :cond_1
    sget-object v0, Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker;->TAG:Ljava/lang/String;

    const-string v1, "Unable to start tracking, Window ViewTreeObserver is not alive"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 104
    :cond_2
    new-instance v0, Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker$PubnativeVisibilityTrackerItem;

    invoke-direct {v0, p0}, Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker$PubnativeVisibilityTrackerItem;-><init>(Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker;)V

    .line 105
    iput-object p1, v0, Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker$PubnativeVisibilityTrackerItem;->mTrackingView:Landroid/view/View;

    .line 106
    iput-wide p2, v0, Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker$PubnativeVisibilityTrackerItem;->mMinVisibilityPercent:D

    .line 108
    iget-object v1, p0, Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker;->mTrackedViews:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    invoke-virtual {p0}, Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker;->scheduleVisibilityCheck()V

    goto :goto_1
.end method

.method public clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 126
    iget-object v0, p0, Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 127
    iget-object v0, p0, Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker;->mTrackedViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 128
    iput-boolean v1, p0, Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker;->mIsVisibilityCheckScheduled:Z

    .line 129
    iget-object v0, p0, Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker;->mDeviceView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker;->mDeviceView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 131
    if-eqz v0, :cond_1

    iget-object v1, p0, Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-eqz v1, :cond_1

    .line 132
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 133
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    iget-object v1, p0, Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 136
    :cond_0
    iput-object v2, p0, Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 139
    :cond_1
    iput-object v2, p0, Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker;->mListener:Ljava/lang/ref/WeakReference;

    .line 140
    return-void
.end method

.method protected containsTrackedView(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 156
    invoke-virtual {p0, p1}, Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker;->indexOfTrackedView(Landroid/view/View;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected indexOfTrackedView(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 160
    const/4 v2, -0x1

    .line 161
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker;->mTrackedViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 162
    iget-object v0, p0, Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker;->mTrackedViews:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker$PubnativeVisibilityTrackerItem;

    .line 163
    invoke-virtual {v0, p1}, Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker$PubnativeVisibilityTrackerItem;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    :goto_1
    return v1

    .line 161
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker;->mTrackedViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 120
    return-void
.end method

.method protected scheduleVisibilityCheck()V
    .locals 4

    .prologue
    .line 147
    iget-boolean v0, p0, Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker;->mIsVisibilityCheckScheduled:Z

    if-nez v0, :cond_0

    .line 148
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker;->mIsVisibilityCheckScheduled:Z

    .line 149
    iget-object v0, p0, Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker;->mVisibilityRunnable:Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker$VisibilityRunnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 151
    :cond_0
    return-void
.end method

.method public setListener(Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker$Listener;)V
    .locals 1

    .prologue
    .line 78
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker;->mListener:Ljava/lang/ref/WeakReference;

    .line 79
    return-void
.end method
