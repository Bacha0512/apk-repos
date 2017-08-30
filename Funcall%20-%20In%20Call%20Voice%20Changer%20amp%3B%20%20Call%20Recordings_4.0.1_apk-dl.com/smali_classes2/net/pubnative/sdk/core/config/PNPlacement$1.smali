.class Lnet/pubnative/sdk/core/config/PNPlacement$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/pubnative/sdk/core/config/PNConfigManager$Listener;


# instance fields
.field final synthetic this$0:Lnet/pubnative/sdk/core/config/PNPlacement;


# direct methods
.method constructor <init>(Lnet/pubnative/sdk/core/config/PNPlacement;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lnet/pubnative/sdk/core/config/PNPlacement$1;->this$0:Lnet/pubnative/sdk/core/config/PNPlacement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigLoaded(Lnet/pubnative/sdk/core/config/model/PNConfigModel;)V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lnet/pubnative/sdk/core/config/PNPlacement$1;->this$0:Lnet/pubnative/sdk/core/config/PNPlacement;

    invoke-virtual {v0, p1}, Lnet/pubnative/sdk/core/config/PNPlacement;->loadPlacement(Lnet/pubnative/sdk/core/config/model/PNConfigModel;)V

    .line 107
    return-void
.end method
