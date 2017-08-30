.class Lnet/pubnative/sdk/core/request/PNRequest$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/pubnative/sdk/core/request/PNAdModel$FetchListener;


# instance fields
.field final synthetic this$0:Lnet/pubnative/sdk/core/request/PNRequest;


# direct methods
.method constructor <init>(Lnet/pubnative/sdk/core/request/PNRequest;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lnet/pubnative/sdk/core/request/PNRequest$1;->this$0:Lnet/pubnative/sdk/core/request/PNRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFetchFail(Lnet/pubnative/sdk/core/request/PNAdModel;Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lnet/pubnative/sdk/core/request/PNRequest$1;->this$0:Lnet/pubnative/sdk/core/request/PNRequest;

    invoke-virtual {v0, p2}, Lnet/pubnative/sdk/core/request/PNRequest;->invokeFail(Ljava/lang/Exception;)V

    .line 229
    return-void
.end method

.method public onFetchFinish(Lnet/pubnative/sdk/core/request/PNAdModel;)V
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lnet/pubnative/sdk/core/request/PNRequest$1;->this$0:Lnet/pubnative/sdk/core/request/PNRequest;

    invoke-virtual {v0, p1}, Lnet/pubnative/sdk/core/request/PNRequest;->invokeLoad(Lnet/pubnative/sdk/core/request/PNAdModel;)V

    .line 224
    return-void
.end method
