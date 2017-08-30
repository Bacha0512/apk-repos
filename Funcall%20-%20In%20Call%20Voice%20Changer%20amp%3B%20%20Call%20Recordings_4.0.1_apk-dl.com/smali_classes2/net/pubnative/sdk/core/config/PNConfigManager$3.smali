.class final Lnet/pubnative/sdk/core/config/PNConfigManager$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/pubnative/sdk/core/adapter/request/PubnativeLibraryCPICache$Listener;


# instance fields
.field final synthetic val$config:Lnet/pubnative/sdk/core/config/model/PNConfigModel;

.field final synthetic val$request:Lnet/pubnative/sdk/core/config/model/PNConfigRequestModel;


# direct methods
.method constructor <init>(Lnet/pubnative/sdk/core/config/model/PNConfigModel;Lnet/pubnative/sdk/core/config/model/PNConfigRequestModel;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lnet/pubnative/sdk/core/config/PNConfigManager$3;->val$config:Lnet/pubnative/sdk/core/config/model/PNConfigModel;

    iput-object p2, p0, Lnet/pubnative/sdk/core/config/PNConfigManager$3;->val$request:Lnet/pubnative/sdk/core/config/model/PNConfigRequestModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPubnativeCpiCacheLoadFinish()V
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lnet/pubnative/sdk/core/config/PNConfigManager$3;->val$config:Lnet/pubnative/sdk/core/config/model/PNConfigModel;

    iget-object v1, p0, Lnet/pubnative/sdk/core/config/PNConfigManager$3;->val$request:Lnet/pubnative/sdk/core/config/model/PNConfigRequestModel;

    iget-object v1, v1, Lnet/pubnative/sdk/core/config/model/PNConfigRequestModel;->listener:Lnet/pubnative/sdk/core/config/PNConfigManager$Listener;

    invoke-static {v0, v1}, Lnet/pubnative/sdk/core/config/PNConfigManager;->invokeLoaded(Lnet/pubnative/sdk/core/config/model/PNConfigModel;Lnet/pubnative/sdk/core/config/PNConfigManager$Listener;)V

    .line 185
    return-void
.end method
