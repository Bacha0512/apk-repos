.class Lnet/pubnative/sdk/layouts/PNLayoutWaterfall$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/pubnative/sdk/core/config/PNPlacement$Listener;


# instance fields
.field final synthetic this$0:Lnet/pubnative/sdk/layouts/PNLayoutWaterfall;


# direct methods
.method constructor <init>(Lnet/pubnative/sdk/layouts/PNLayoutWaterfall;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lnet/pubnative/sdk/layouts/PNLayoutWaterfall$1;->this$0:Lnet/pubnative/sdk/layouts/PNLayoutWaterfall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlacementLoadFail(Lnet/pubnative/sdk/core/config/PNPlacement;Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/PNLayoutWaterfall$1;->this$0:Lnet/pubnative/sdk/layouts/PNLayoutWaterfall;

    invoke-virtual {v0, p2}, Lnet/pubnative/sdk/layouts/PNLayoutWaterfall;->onPubnativeNetworkLayoutWaterfallLoadFail(Ljava/lang/Exception;)V

    .line 91
    return-void
.end method

.method public onPlacementReady(Lnet/pubnative/sdk/core/config/PNPlacement;Z)V
    .locals 1

    .prologue
    .line 80
    if-eqz p2, :cond_0

    .line 81
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/PNLayoutWaterfall$1;->this$0:Lnet/pubnative/sdk/layouts/PNLayoutWaterfall;

    invoke-virtual {v0, p2}, Lnet/pubnative/sdk/layouts/PNLayoutWaterfall;->onPubnativeNetworkLayoutWaterfallLoadFinish(Z)V

    .line 85
    :goto_0
    return-void

    .line 83
    :cond_0
    iget-object v0, p0, Lnet/pubnative/sdk/layouts/PNLayoutWaterfall$1;->this$0:Lnet/pubnative/sdk/layouts/PNLayoutWaterfall;

    invoke-virtual {v0}, Lnet/pubnative/sdk/layouts/PNLayoutWaterfall;->startTracking()V

    goto :goto_0
.end method
