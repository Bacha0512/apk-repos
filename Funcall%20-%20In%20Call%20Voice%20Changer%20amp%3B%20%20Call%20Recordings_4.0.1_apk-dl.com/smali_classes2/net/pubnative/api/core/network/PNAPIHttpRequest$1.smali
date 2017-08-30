.class Lnet/pubnative/api/core/network/PNAPIHttpRequest$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lnet/pubnative/api/core/network/PNAPIHttpRequest;

.field final synthetic val$urlString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnet/pubnative/api/core/network/PNAPIHttpRequest;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lnet/pubnative/api/core/network/PNAPIHttpRequest$1;->this$0:Lnet/pubnative/api/core/network/PNAPIHttpRequest;

    iput-object p2, p0, Lnet/pubnative/api/core/network/PNAPIHttpRequest$1;->val$urlString:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 113
    invoke-static {}, Lnet/pubnative/api/core/utils/PNAPISystemUtils;->getWebViewUserAgent()Ljava/lang/String;

    move-result-object v0

    .line 114
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    iget-object v0, p0, Lnet/pubnative/api/core/network/PNAPIHttpRequest$1;->this$0:Lnet/pubnative/api/core/network/PNAPIHttpRequest;

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "PNAPIHttpRequest - Error: User agent cannot be retrieved"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lnet/pubnative/api/core/network/PNAPIHttpRequest;->invokeFail(Ljava/lang/Exception;)V

    .line 119
    :goto_0
    return-void

    .line 117
    :cond_0
    iget-object v1, p0, Lnet/pubnative/api/core/network/PNAPIHttpRequest$1;->this$0:Lnet/pubnative/api/core/network/PNAPIHttpRequest;

    iget-object v2, p0, Lnet/pubnative/api/core/network/PNAPIHttpRequest$1;->val$urlString:Ljava/lang/String;

    # invokes: Lnet/pubnative/api/core/network/PNAPIHttpRequest;->initiateRequest(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v0}, Lnet/pubnative/api/core/network/PNAPIHttpRequest;->access$000(Lnet/pubnative/api/core/network/PNAPIHttpRequest;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
