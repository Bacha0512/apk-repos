.class Lnet/pubnative/api/core/network/PNAPIHttpRequest$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lnet/pubnative/api/core/network/PNAPIHttpRequest;

.field final synthetic val$urlString:Ljava/lang/String;

.field final synthetic val$userAgent:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnet/pubnative/api/core/network/PNAPIHttpRequest;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lnet/pubnative/api/core/network/PNAPIHttpRequest$2;->this$0:Lnet/pubnative/api/core/network/PNAPIHttpRequest;

    iput-object p2, p0, Lnet/pubnative/api/core/network/PNAPIHttpRequest$2;->val$urlString:Ljava/lang/String;

    iput-object p3, p0, Lnet/pubnative/api/core/network/PNAPIHttpRequest$2;->val$userAgent:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 137
    iget-object v0, p0, Lnet/pubnative/api/core/network/PNAPIHttpRequest$2;->this$0:Lnet/pubnative/api/core/network/PNAPIHttpRequest;

    iget-object v1, p0, Lnet/pubnative/api/core/network/PNAPIHttpRequest$2;->val$urlString:Ljava/lang/String;

    iget-object v2, p0, Lnet/pubnative/api/core/network/PNAPIHttpRequest$2;->val$userAgent:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lnet/pubnative/api/core/network/PNAPIHttpRequest;->doRequest(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    return-void
.end method
