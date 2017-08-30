.class final Lnet/pubnative/sdk/core/config/PNConfigManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/pubnative/sdk/core/PNSettings$Listener;


# instance fields
.field final synthetic val$item:Lnet/pubnative/sdk/core/config/model/PNConfigRequestModel;


# direct methods
.method constructor <init>(Lnet/pubnative/sdk/core/config/model/PNConfigRequestModel;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lnet/pubnative/sdk/core/config/PNConfigManager$1;->val$item:Lnet/pubnative/sdk/core/config/model/PNConfigRequestModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitFinish()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lnet/pubnative/sdk/core/config/PNConfigManager$1;->val$item:Lnet/pubnative/sdk/core/config/model/PNConfigRequestModel;

    invoke-static {v0}, Lnet/pubnative/sdk/core/config/PNConfigManager;->getNextConfig(Lnet/pubnative/sdk/core/config/model/PNConfigRequestModel;)V

    .line 149
    return-void
.end method
