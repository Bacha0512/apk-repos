.class final Lnet/pubnative/sdk/core/config/PNConfigManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/pubnative/sdk/core/PNSettings$Listener;


# instance fields
.field final synthetic val$requestModel:Lnet/pubnative/sdk/core/config/model/PNConfigRequestModel;


# direct methods
.method constructor <init>(Lnet/pubnative/sdk/core/config/model/PNConfigRequestModel;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lnet/pubnative/sdk/core/config/PNConfigManager$2;->val$requestModel:Lnet/pubnative/sdk/core/config/model/PNConfigRequestModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitFinish()V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lnet/pubnative/sdk/core/config/PNConfigManager$2;->val$requestModel:Lnet/pubnative/sdk/core/config/model/PNConfigRequestModel;

    invoke-static {v0}, Lnet/pubnative/sdk/core/config/PNConfigManager;->downloadConfig(Lnet/pubnative/sdk/core/config/model/PNConfigRequestModel;)V

    .line 166
    return-void
.end method
