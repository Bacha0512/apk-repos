.class final Lnet/pubnative/sdk/core/config/PNConfigManager$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/pubnative/sdk/core/network/PNHttpRequest$Listener;


# instance fields
.field final synthetic val$requestModel:Lnet/pubnative/sdk/core/config/model/PNConfigRequestModel;


# direct methods
.method constructor <init>(Lnet/pubnative/sdk/core/config/model/PNConfigRequestModel;)V
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Lnet/pubnative/sdk/core/config/PNConfigManager$4;->val$requestModel:Lnet/pubnative/sdk/core/config/model/PNConfigRequestModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPNHttpRequestFail(Lnet/pubnative/sdk/core/network/PNHttpRequest;Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lnet/pubnative/sdk/core/config/PNConfigManager$4;->val$requestModel:Lnet/pubnative/sdk/core/config/model/PNConfigRequestModel;

    invoke-static {v0}, Lnet/pubnative/sdk/core/config/PNConfigManager;->serveStoredConfig(Lnet/pubnative/sdk/core/config/model/PNConfigRequestModel;)V

    .line 239
    return-void
.end method

.method public onPNHttpRequestFinish(Lnet/pubnative/sdk/core/network/PNHttpRequest;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lnet/pubnative/sdk/core/config/PNConfigManager$4;->val$requestModel:Lnet/pubnative/sdk/core/config/model/PNConfigRequestModel;

    invoke-static {v0, p2}, Lnet/pubnative/sdk/core/config/PNConfigManager;->processConfigDownloadResponse(Lnet/pubnative/sdk/core/config/model/PNConfigRequestModel;Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lnet/pubnative/sdk/core/config/PNConfigManager$4;->val$requestModel:Lnet/pubnative/sdk/core/config/model/PNConfigRequestModel;

    invoke-static {v0}, Lnet/pubnative/sdk/core/config/PNConfigManager;->serveStoredConfig(Lnet/pubnative/sdk/core/config/model/PNConfigRequestModel;)V

    .line 234
    return-void
.end method
