.class public Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker$PubnativeVisibilityTrackerItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "PubnativeVisibilityTrackerItem"
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field public mMinVisibilityPercent:D

.field public mTrackingView:Landroid/view/View;

.field final synthetic this$0:Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker;


# direct methods
.method protected constructor <init>(Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker;)V
    .locals 1

    .prologue
    .line 174
    iput-object p1, p0, Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker$PubnativeVisibilityTrackerItem;->this$0:Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    const-class v0, Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker$PubnativeVisibilityTrackerItem;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker$PubnativeVisibilityTrackerItem;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 182
    instance-of v0, p1, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lnet/pubnative/api/core/tracking/PNAPIVisibilityTracker$PubnativeVisibilityTrackerItem;->mTrackingView:Landroid/view/View;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 185
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
