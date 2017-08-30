.class public Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker$ImpressionRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ImpressionRunnable"
.end annotation


# instance fields
.field private mRemovedViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker;


# direct methods
.method constructor <init>(Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker;)V
    .locals 1

    .prologue
    .line 194
    iput-object p1, p0, Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker$ImpressionRunnable;->this$0:Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker$ImpressionRunnable;->mRemovedViews:Ljava/util/List;

    .line 196
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 199
    iget-object v0, p0, Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker$ImpressionRunnable;->this$0:Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker;

    iget-object v0, v0, Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker;->mVisibleViews:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 201
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 202
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 204
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    cmp-long v0, v4, v6

    if-ltz v0, :cond_0

    .line 208
    iget-object v0, p0, Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker$ImpressionRunnable;->this$0:Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker;

    iget-object v0, v0, Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker;->mImpressionListener:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker$ImpressionRunnable;->this$0:Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker;

    iget-object v0, v0, Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker;->mImpressionListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 209
    iget-object v0, p0, Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker$ImpressionRunnable;->this$0:Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker;

    iget-object v0, v0, Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker;->mImpressionListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker$Listener;

    invoke-interface {v0, v1}, Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker$Listener;->onImpression(Landroid/view/View;)V

    .line 211
    :cond_1
    iget-object v0, p0, Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker$ImpressionRunnable;->mRemovedViews:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 213
    :cond_2
    iget-object v0, p0, Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker$ImpressionRunnable;->mRemovedViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 214
    invoke-static {v0}, Lnet/pubnative/api/core/tracking/PNAPIImpressionManager;->stopTrackingView(Landroid/view/View;)V

    goto :goto_1

    .line 216
    :cond_3
    iget-object v0, p0, Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker$ImpressionRunnable;->mRemovedViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 217
    iget-object v0, p0, Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker$ImpressionRunnable;->this$0:Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker;

    iget-object v0, v0, Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker;->mVisibleViews:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 218
    iget-object v0, p0, Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker$ImpressionRunnable;->this$0:Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker;

    invoke-virtual {v0}, Lnet/pubnative/api/core/tracking/PNAPIImpressionTracker;->scheduleNextRun()V

    .line 220
    :cond_4
    return-void
.end method
