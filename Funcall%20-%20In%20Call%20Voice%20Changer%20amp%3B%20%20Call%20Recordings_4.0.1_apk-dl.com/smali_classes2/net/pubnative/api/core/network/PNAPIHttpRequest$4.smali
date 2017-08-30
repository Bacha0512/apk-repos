.class Lnet/pubnative/api/core/network/PNAPIHttpRequest$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lnet/pubnative/api/core/network/PNAPIHttpRequest;

.field final synthetic val$exception:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lnet/pubnative/api/core/network/PNAPIHttpRequest;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 209
    iput-object p1, p0, Lnet/pubnative/api/core/network/PNAPIHttpRequest$4;->this$0:Lnet/pubnative/api/core/network/PNAPIHttpRequest;

    iput-object p2, p0, Lnet/pubnative/api/core/network/PNAPIHttpRequest$4;->val$exception:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 214
    iget-object v0, p0, Lnet/pubnative/api/core/network/PNAPIHttpRequest$4;->this$0:Lnet/pubnative/api/core/network/PNAPIHttpRequest;

    iget-object v0, v0, Lnet/pubnative/api/core/network/PNAPIHttpRequest;->mListener:Lnet/pubnative/api/core/network/PNAPIHttpRequest$Listener;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lnet/pubnative/api/core/network/PNAPIHttpRequest$4;->this$0:Lnet/pubnative/api/core/network/PNAPIHttpRequest;

    iget-object v0, v0, Lnet/pubnative/api/core/network/PNAPIHttpRequest;->mListener:Lnet/pubnative/api/core/network/PNAPIHttpRequest$Listener;

    iget-object v1, p0, Lnet/pubnative/api/core/network/PNAPIHttpRequest$4;->this$0:Lnet/pubnative/api/core/network/PNAPIHttpRequest;

    iget-object v2, p0, Lnet/pubnative/api/core/network/PNAPIHttpRequest$4;->val$exception:Ljava/lang/Exception;

    invoke-interface {v0, v1, v2}, Lnet/pubnative/api/core/network/PNAPIHttpRequest$Listener;->onPNAPIHttpRequestFail(Lnet/pubnative/api/core/network/PNAPIHttpRequest;Ljava/lang/Exception;)V

    .line 217
    :cond_0
    return-void
.end method
