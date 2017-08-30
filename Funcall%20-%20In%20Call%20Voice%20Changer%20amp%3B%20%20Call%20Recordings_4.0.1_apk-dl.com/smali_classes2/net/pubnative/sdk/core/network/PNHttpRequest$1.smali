.class Lnet/pubnative/sdk/core/network/PNHttpRequest$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lnet/pubnative/sdk/core/network/PNHttpRequest;

.field final synthetic val$urlString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnet/pubnative/sdk/core/network/PNHttpRequest;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lnet/pubnative/sdk/core/network/PNHttpRequest$1;->this$0:Lnet/pubnative/sdk/core/network/PNHttpRequest;

    iput-object p2, p0, Lnet/pubnative/sdk/core/network/PNHttpRequest$1;->val$urlString:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lnet/pubnative/sdk/core/network/PNHttpRequest$1;->this$0:Lnet/pubnative/sdk/core/network/PNHttpRequest;

    iget-object v1, p0, Lnet/pubnative/sdk/core/network/PNHttpRequest$1;->val$urlString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnet/pubnative/sdk/core/network/PNHttpRequest;->doRequest(Ljava/lang/String;)V

    .line 123
    return-void
.end method
