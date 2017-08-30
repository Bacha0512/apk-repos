.class final Lnet/pubnative/api/core/tracking/PNAPITrackingManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/pubnative/api/core/network/PNAPIHttpRequest$Listener;


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$model:Lnet/pubnative/api/core/tracking/model/PNAPITrackingURLModel;


# direct methods
.method constructor <init>(Landroid/content/Context;Lnet/pubnative/api/core/tracking/model/PNAPITrackingURLModel;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lnet/pubnative/api/core/tracking/PNAPITrackingManager$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lnet/pubnative/api/core/tracking/PNAPITrackingManager$1;->val$model:Lnet/pubnative/api/core/tracking/model/PNAPITrackingURLModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPNAPIHttpRequestFail(Lnet/pubnative/api/core/network/PNAPIHttpRequest;Ljava/lang/Exception;)V
    .locals 3

    .prologue
    .line 107
    iget-object v0, p0, Lnet/pubnative/api/core/tracking/PNAPITrackingManager$1;->val$context:Landroid/content/Context;

    const-string v1, "failed"

    iget-object v2, p0, Lnet/pubnative/api/core/tracking/PNAPITrackingManager$1;->val$model:Lnet/pubnative/api/core/tracking/model/PNAPITrackingURLModel;

    invoke-static {v0, v1, v2}, Lnet/pubnative/api/core/tracking/PNAPITrackingManager;->enqueueItem(Landroid/content/Context;Ljava/lang/String;Lnet/pubnative/api/core/tracking/model/PNAPITrackingURLModel;)V

    .line 108
    const/4 v0, 0x0

    # setter for: Lnet/pubnative/api/core/tracking/PNAPITrackingManager;->sIsTracking:Z
    invoke-static {v0}, Lnet/pubnative/api/core/tracking/PNAPITrackingManager;->access$002(Z)Z

    .line 109
    iget-object v0, p0, Lnet/pubnative/api/core/tracking/PNAPITrackingManager$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lnet/pubnative/api/core/tracking/PNAPITrackingManager;->trackNextItem(Landroid/content/Context;)V

    .line 110
    return-void
.end method

.method public onPNAPIHttpRequestFinish(Lnet/pubnative/api/core/network/PNAPIHttpRequest;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    # setter for: Lnet/pubnative/api/core/tracking/PNAPITrackingManager;->sIsTracking:Z
    invoke-static {v0}, Lnet/pubnative/api/core/tracking/PNAPITrackingManager;->access$002(Z)Z

    .line 101
    iget-object v0, p0, Lnet/pubnative/api/core/tracking/PNAPITrackingManager$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lnet/pubnative/api/core/tracking/PNAPITrackingManager;->trackNextItem(Landroid/content/Context;)V

    .line 102
    return-void
.end method
