.class Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field final synthetic this$0:Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker;


# direct methods
.method constructor <init>(Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker$1;->this$0:Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker$1;->this$0:Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker;

    iget-object v0, v0, Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker;->mListener:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker$1;->this$0:Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker;

    iget-object v0, v0, Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 52
    :cond_0
    iget-object v0, p0, Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker$1;->this$0:Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker;

    invoke-virtual {v0}, Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker;->clear()V

    .line 56
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 54
    :cond_1
    iget-object v0, p0, Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker$1;->this$0:Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker;

    invoke-virtual {v0}, Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker;->scheduleVisibilityCheck()V

    goto :goto_0
.end method
