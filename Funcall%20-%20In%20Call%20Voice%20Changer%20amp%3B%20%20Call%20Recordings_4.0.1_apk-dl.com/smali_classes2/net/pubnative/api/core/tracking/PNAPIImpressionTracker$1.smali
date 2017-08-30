.class Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker$Listener;


# instance fields
.field final synthetic this$0:Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker;


# direct methods
.method constructor <init>(Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker$1;->this$0:Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVisibilityCheck(Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker$1;->this$0:Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker;

    iget-object v0, v0, Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker;->mImpressionListener:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker$1;->this$0:Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker;

    iget-object v0, v0, Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker;->mImpressionListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 55
    iget-object v0, p0, Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker$1;->this$0:Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker;

    invoke-virtual {v0}, Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker;->clear()V

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 60
    iget-object v2, p0, Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker$1;->this$0:Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker;

    iget-object v2, v2, Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker;->mVisibleViews:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 65
    iget-object v2, p0, Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker$1;->this$0:Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker;

    iget-object v2, v2, Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker;->mVisibleViews:Ljava/util/HashMap;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 68
    :cond_3
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 69
    iget-object v2, p0, Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker$1;->this$0:Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker;

    iget-object v2, v2, Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker;->mVisibleViews:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 72
    :cond_4
    iget-object v0, p0, Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker$1;->this$0:Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker;

    iget-object v0, v0, Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker;->mVisibleViews:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    iget-object v0, p0, Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker$1;->this$0:Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker;

    invoke-virtual {v0}, Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker;->scheduleNextRun()V

    goto :goto_0
.end method
