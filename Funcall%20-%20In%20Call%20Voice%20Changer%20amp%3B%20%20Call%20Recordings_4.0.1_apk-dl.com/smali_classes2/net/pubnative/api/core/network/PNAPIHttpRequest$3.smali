.class Lnet/pubnative/api/core/network/PNAPIHttpRequest$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lnet/pubnative/api/core/network/PNAPIHttpRequest;

.field final synthetic val$result:Ljava/lang/String;

.field final synthetic val$statusCode:I


# direct methods
.method constructor <init>(Lnet/pubnative/api/core/network/PNAPIHttpRequest;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lnet/pubnative/api/core/network/PNAPIHttpRequest$3;->this$0:Lnet/pubnative/api/core/network/PNAPIHttpRequest;

    iput-object p2, p0, Lnet/pubnative/api/core/network/PNAPIHttpRequest$3;->val$result:Ljava/lang/String;

    iput p3, p0, Lnet/pubnative/api/core/network/PNAPIHttpRequest$3;->val$statusCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 201
    iget-object v0, p0, Lnet/pubnative/api/core/network/PNAPIHttpRequest$3;->this$0:Lnet/pubnative/api/core/network/PNAPIHttpRequest;

    iget-object v0, v0, Lnet/pubnative/api/core/network/PNAPIHttpRequest;->mListener:Lnet/pubnative/api/core/network/PNAPIHttpRequest$Listener;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lnet/pubnative/api/core/network/PNAPIHttpRequest$3;->this$0:Lnet/pubnative/api/core/network/PNAPIHttpRequest;

    iget-object v0, v0, Lnet/pubnative/api/core/network/PNAPIHttpRequest;->mListener:Lnet/pubnative/api/core/network/PNAPIHttpRequest$Listener;

    iget-object v1, p0, Lnet/pubnative/api/core/network/PNAPIHttpRequest$3;->this$0:Lnet/pubnative/api/core/network/PNAPIHttpRequest;

    iget-object v2, p0, Lnet/pubnative/api/core/network/PNAPIHttpRequest$3;->val$result:Ljava/lang/String;

    iget v3, p0, Lnet/pubnative/api/core/network/PNAPIHttpRequest$3;->val$statusCode:I

    invoke-interface {v0, v1, v2, v3}, Lnet/pubnative/api/core/network/PNAPIHttpRequest$Listener;->onPNAPIHttpRequestFinish(Lnet/pubnative/api/core/network/PNAPIHttpRequest;Ljava/lang/String;I)V

    .line 204
    :cond_0
    return-void
.end method
