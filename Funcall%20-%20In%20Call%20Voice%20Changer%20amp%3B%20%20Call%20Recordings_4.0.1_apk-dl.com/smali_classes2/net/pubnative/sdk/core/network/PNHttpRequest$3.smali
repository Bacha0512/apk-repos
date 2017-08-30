.class Lnet/pubnative/sdk/core/network/PNHttpRequest$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lnet/pubnative/sdk/core/network/PNHttpRequest;

.field final synthetic val$exception:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lnet/pubnative/sdk/core/network/PNHttpRequest;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 243
    iput-object p1, p0, Lnet/pubnative/sdk/core/network/PNHttpRequest$3;->this$0:Lnet/pubnative/sdk/core/network/PNHttpRequest;

    iput-object p2, p0, Lnet/pubnative/sdk/core/network/PNHttpRequest$3;->val$exception:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 248
    iget-object v0, p0, Lnet/pubnative/sdk/core/network/PNHttpRequest$3;->this$0:Lnet/pubnative/sdk/core/network/PNHttpRequest;

    iget-object v0, v0, Lnet/pubnative/sdk/core/network/PNHttpRequest;->mListener:Lnet/pubnative/sdk/core/network/PNHttpRequest$Listener;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lnet/pubnative/sdk/core/network/PNHttpRequest$3;->this$0:Lnet/pubnative/sdk/core/network/PNHttpRequest;

    iget-object v0, v0, Lnet/pubnative/sdk/core/network/PNHttpRequest;->mListener:Lnet/pubnative/sdk/core/network/PNHttpRequest$Listener;

    iget-object v1, p0, Lnet/pubnative/sdk/core/network/PNHttpRequest$3;->this$0:Lnet/pubnative/sdk/core/network/PNHttpRequest;

    iget-object v2, p0, Lnet/pubnative/sdk/core/network/PNHttpRequest$3;->val$exception:Ljava/lang/Exception;

    invoke-interface {v0, v1, v2}, Lnet/pubnative/sdk/core/network/PNHttpRequest$Listener;->onPNHttpRequestFail(Lnet/pubnative/sdk/core/network/PNHttpRequest;Ljava/lang/Exception;)V

    .line 251
    :cond_0
    iget-object v0, p0, Lnet/pubnative/sdk/core/network/PNHttpRequest$3;->this$0:Lnet/pubnative/sdk/core/network/PNHttpRequest;

    const/4 v1, 0x0

    iput-object v1, v0, Lnet/pubnative/sdk/core/network/PNHttpRequest;->mListener:Lnet/pubnative/sdk/core/network/PNHttpRequest$Listener;

    .line 252
    return-void
.end method
