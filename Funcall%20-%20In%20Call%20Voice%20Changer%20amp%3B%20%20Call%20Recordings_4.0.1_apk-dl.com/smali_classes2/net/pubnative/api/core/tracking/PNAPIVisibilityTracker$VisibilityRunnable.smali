.class public Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker$VisibilityRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "VisibilityRunnable"
.end annotation


# instance fields
.field private mInvisibleViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mVisibleRect:Landroid/graphics/Rect;

.field private mVisibleViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker;


# direct methods
.method constructor <init>(Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker;)V
    .locals 1

    .prologue
    .line 195
    iput-object p1, p0, Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker$VisibilityRunnable;->this$0:Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker$VisibilityRunnable;->mVisibleRect:Landroid/graphics/Rect;

    .line 197
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker$VisibilityRunnable;->mInvisibleViews:Ljava/util/ArrayList;

    .line 198
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker$VisibilityRunnable;->mVisibleViews:Ljava/util/ArrayList;

    .line 199
    return-void
.end method


# virtual methods
.method protected isVisible(Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker$PubnativeVisibilityTrackerItem;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 227
    .line 229
    iget-object v1, p1, Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker$PubnativeVisibilityTrackerItem;->mTrackingView:Landroid/view/View;

    .line 231
    if-eqz v1, :cond_0

    .line 232
    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 233
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker$VisibilityRunnable;->mVisibleRect:Landroid/graphics/Rect;

    .line 234
    invoke-virtual {v1, v2}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 235
    iget-object v2, p0, Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker$VisibilityRunnable;->mVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget-object v3, p0, Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker$VisibilityRunnable;->mVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    mul-int/2addr v2, v3

    int-to-float v2, v2

    .line 236
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    mul-int/2addr v1, v3

    int-to-float v1, v1

    .line 237
    float-to-double v2, v2

    float-to-double v4, v1

    div-double/2addr v2, v4

    .line 239
    iget-wide v4, p1, Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker$PubnativeVisibilityTrackerItem;->mMinVisibilityPercent:D

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    .line 242
    :cond_0
    return v0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 204
    iget-object v0, p0, Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker$VisibilityRunnable;->this$0:Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker;->mIsVisibilityCheckScheduled:Z

    .line 206
    iget-object v0, p0, Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker$VisibilityRunnable;->this$0:Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker;

    iget-object v0, v0, Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker;->mTrackedViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker$PubnativeVisibilityTrackerItem;

    .line 208
    invoke-virtual {p0, v0}, Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker$VisibilityRunnable;->isVisible(Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker$PubnativeVisibilityTrackerItem;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 210
    iget-object v2, p0, Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker$VisibilityRunnable;->mVisibleViews:Ljava/util/ArrayList;

    iget-object v0, v0, Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker$PubnativeVisibilityTrackerItem;->mTrackingView:Landroid/view/View;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 213
    :cond_0
    iget-object v2, p0, Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker$VisibilityRunnable;->mInvisibleViews:Ljava/util/ArrayList;

    iget-object v0, v0, Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker$PubnativeVisibilityTrackerItem;->mTrackingView:Landroid/view/View;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 217
    :cond_1
    iget-object v0, p0, Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker$VisibilityRunnable;->this$0:Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker;

    iget-object v0, v0, Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker;->mListener:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker$VisibilityRunnable;->this$0:Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker;

    iget-object v0, v0, Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 218
    iget-object v0, p0, Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker$VisibilityRunnable;->this$0:Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker;

    iget-object v0, v0, Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker$Listener;

    iget-object v1, p0, Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker$VisibilityRunnable;->mVisibleViews:Ljava/util/ArrayList;

    iget-object v2, p0, Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker$VisibilityRunnable;->mInvisibleViews:Ljava/util/ArrayList;

    invoke-interface {v0, v1, v2}, Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker$Listener;->onVisibilityCheck(Ljava/util/List;Ljava/util/List;)V

    .line 221
    :cond_2
    iget-object v0, p0, Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker$VisibilityRunnable;->mInvisibleViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 222
    iget-object v0, p0, Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker$VisibilityRunnable;->mVisibleViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 223
    return-void
.end method
