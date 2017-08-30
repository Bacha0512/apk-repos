.class Lnet/pubnative/sdk/core/request/PNRequest$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lnet/pubnative/sdk/core/request/PNRequest;

.field final synthetic val$exception:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lnet/pubnative/sdk/core/request/PNRequest;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 258
    iput-object p1, p0, Lnet/pubnative/sdk/core/request/PNRequest$3;->this$0:Lnet/pubnative/sdk/core/request/PNRequest;

    iput-object p2, p0, Lnet/pubnative/sdk/core/request/PNRequest$3;->val$exception:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 263
    iget-object v0, p0, Lnet/pubnative/sdk/core/request/PNRequest$3;->this$0:Lnet/pubnative/sdk/core/request/PNRequest;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lnet/pubnative/sdk/core/request/PNRequest;->mIsRunning:Z

    .line 264
    iget-object v0, p0, Lnet/pubnative/sdk/core/request/PNRequest$3;->this$0:Lnet/pubnative/sdk/core/request/PNRequest;

    iget-object v0, v0, Lnet/pubnative/sdk/core/request/PNRequest;->mListener:Lnet/pubnative/sdk/core/request/PNRequest$Listener;

    .line 265
    iget-object v1, p0, Lnet/pubnative/sdk/core/request/PNRequest$3;->this$0:Lnet/pubnative/sdk/core/request/PNRequest;

    const/4 v2, 0x0

    iput-object v2, v1, Lnet/pubnative/sdk/core/request/PNRequest;->mListener:Lnet/pubnative/sdk/core/request/PNRequest$Listener;

    .line 266
    if-eqz v0, :cond_0

    .line 267
    iget-object v1, p0, Lnet/pubnative/sdk/core/request/PNRequest$3;->this$0:Lnet/pubnative/sdk/core/request/PNRequest;

    iget-object v2, p0, Lnet/pubnative/sdk/core/request/PNRequest$3;->val$exception:Ljava/lang/Exception;

    invoke-interface {v0, v1, v2}, Lnet/pubnative/sdk/core/request/PNRequest$Listener;->onPNRequestLoadFail(Lnet/pubnative/sdk/core/request/PNRequest;Ljava/lang/Exception;)V

    .line 269
    :cond_0
    return-void
.end method
