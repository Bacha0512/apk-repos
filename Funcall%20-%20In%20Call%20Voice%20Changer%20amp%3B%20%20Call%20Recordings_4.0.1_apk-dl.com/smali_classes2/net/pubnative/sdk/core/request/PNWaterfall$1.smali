.class Lnet/pubnative/sdk/core/request/PNWaterfall$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/pubnative/sdk/core/config/PNPlacement$Listener;


# instance fields
.field final synthetic this$0:Lnet/pubnative/sdk/core/request/PNWaterfall;


# direct methods
.method constructor <init>(Lnet/pubnative/sdk/core/request/PNWaterfall;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lnet/pubnative/sdk/core/request/PNWaterfall$1;->this$0:Lnet/pubnative/sdk/core/request/PNWaterfall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlacementLoadFail(Lnet/pubnative/sdk/core/config/PNPlacement;Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lnet/pubnative/sdk/core/request/PNWaterfall$1;->this$0:Lnet/pubnative/sdk/core/request/PNWaterfall;

    invoke-virtual {v0, p2}, Lnet/pubnative/sdk/core/request/PNWaterfall;->onWaterfallError(Ljava/lang/Exception;)V

    .line 82
    return-void
.end method

.method public onPlacementReady(Lnet/pubnative/sdk/core/config/PNPlacement;Z)V
    .locals 1

    .prologue
    .line 72
    if-eqz p2, :cond_0

    .line 73
    iget-object v0, p0, Lnet/pubnative/sdk/core/request/PNWaterfall$1;->this$0:Lnet/pubnative/sdk/core/request/PNWaterfall;

    invoke-virtual {v0, p2}, Lnet/pubnative/sdk/core/request/PNWaterfall;->onWaterfallLoadFinish(Z)V

    .line 77
    :goto_0
    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lnet/pubnative/sdk/core/request/PNWaterfall$1;->this$0:Lnet/pubnative/sdk/core/request/PNWaterfall;

    invoke-virtual {v0}, Lnet/pubnative/sdk/core/request/PNWaterfall;->startTracking()V

    goto :goto_0
.end method
