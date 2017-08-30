.class Lnet/pubnative/sdk/core/network/PNHttpRequest$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lnet/pubnative/sdk/core/network/PNHttpRequest;

.field final synthetic val$result:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnet/pubnative/sdk/core/network/PNHttpRequest;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 229
    iput-object p1, p0, Lnet/pubnative/sdk/core/network/PNHttpRequest$2;->this$0:Lnet/pubnative/sdk/core/network/PNHttpRequest;

    iput-object p2, p0, Lnet/pubnative/sdk/core/network/PNHttpRequest$2;->val$result:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 234
    iget-object v0, p0, Lnet/pubnative/sdk/core/network/PNHttpRequest$2;->this$0:Lnet/pubnative/sdk/core/network/PNHttpRequest;

    iget-object v0, v0, Lnet/pubnative/sdk/core/network/PNHttpRequest;->mListener:Lnet/pubnative/sdk/core/network/PNHttpRequest$Listener;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lnet/pubnative/sdk/core/network/PNHttpRequest$2;->this$0:Lnet/pubnative/sdk/core/network/PNHttpRequest;

    iget-object v0, v0, Lnet/pubnative/sdk/core/network/PNHttpRequest;->mListener:Lnet/pubnative/sdk/core/network/PNHttpRequest$Listener;

    iget-object v1, p0, Lnet/pubnative/sdk/core/network/PNHttpRequest$2;->this$0:Lnet/pubnative/sdk/core/network/PNHttpRequest;

    iget-object v2, p0, Lnet/pubnative/sdk/core/network/PNHttpRequest$2;->val$result:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lnet/pubnative/sdk/core/network/PNHttpRequest$Listener;->onPNHttpRequestFinish(Lnet/pubnative/sdk/core/network/PNHttpRequest;Ljava/lang/String;)V

    .line 237
    :cond_0
    iget-object v0, p0, Lnet/pubnative/sdk/core/network/PNHttpRequest$2;->this$0:Lnet/pubnative/sdk/core/network/PNHttpRequest;

    const/4 v1, 0x0

    iput-object v1, v0, Lnet/pubnative/sdk/core/network/PNHttpRequest;->mListener:Lnet/pubnative/sdk/core/network/PNHttpRequest$Listener;

    .line 238
    return-void
.end method
