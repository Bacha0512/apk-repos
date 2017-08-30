.class Lnet/pubnative/sdk/core/request/PNRequest$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lnet/pubnative/sdk/core/request/PNRequest;

.field final synthetic val$ad:Lnet/pubnative/sdk/core/request/PNAdModel;


# direct methods
.method constructor <init>(Lnet/pubnative/sdk/core/request/PNRequest;Lnet/pubnative/sdk/core/request/PNAdModel;)V
    .locals 0

    .prologue
    .line 241
    iput-object p1, p0, Lnet/pubnative/sdk/core/request/PNRequest$2;->this$0:Lnet/pubnative/sdk/core/request/PNRequest;

    iput-object p2, p0, Lnet/pubnative/sdk/core/request/PNRequest$2;->val$ad:Lnet/pubnative/sdk/core/request/PNAdModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 246
    iget-object v0, p0, Lnet/pubnative/sdk/core/request/PNRequest$2;->this$0:Lnet/pubnative/sdk/core/request/PNRequest;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lnet/pubnative/sdk/core/request/PNRequest;->mIsRunning:Z

    .line 247
    iget-object v0, p0, Lnet/pubnative/sdk/core/request/PNRequest$2;->this$0:Lnet/pubnative/sdk/core/request/PNRequest;

    iget-object v0, v0, Lnet/pubnative/sdk/core/request/PNRequest;->mListener:Lnet/pubnative/sdk/core/request/PNRequest$Listener;

    .line 248
    iget-object v1, p0, Lnet/pubnative/sdk/core/request/PNRequest$2;->this$0:Lnet/pubnative/sdk/core/request/PNRequest;

    const/4 v2, 0x0

    iput-object v2, v1, Lnet/pubnative/sdk/core/request/PNRequest;->mListener:Lnet/pubnative/sdk/core/request/PNRequest$Listener;

    .line 249
    if-eqz v0, :cond_0

    .line 250
    iget-object v1, p0, Lnet/pubnative/sdk/core/request/PNRequest$2;->this$0:Lnet/pubnative/sdk/core/request/PNRequest;

    iget-object v2, p0, Lnet/pubnative/sdk/core/request/PNRequest$2;->val$ad:Lnet/pubnative/sdk/core/request/PNAdModel;

    invoke-interface {v0, v1, v2}, Lnet/pubnative/sdk/core/request/PNRequest$Listener;->onPNRequestLoadFinish(Lnet/pubnative/sdk/core/request/PNRequest;Lnet/pubnative/sdk/core/request/PNAdModel;)V

    .line 252
    :cond_0
    return-void
.end method
