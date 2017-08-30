.class Lcom/ironsource/mediationsdk/AbstractAdapter$5;
.super Ljava/util/TimerTask;
.source "AbstractAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/mediationsdk/AbstractAdapter;->startBannerInitTimer(Lcom/ironsource/mediationsdk/sdk/BannerManagerListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/mediationsdk/AbstractAdapter;

.field final synthetic val$listener:Lcom/ironsource/mediationsdk/sdk/BannerManagerListener;


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/AbstractAdapter;Lcom/ironsource/mediationsdk/sdk/BannerManagerListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ironsource/mediationsdk/AbstractAdapter;

    .prologue
    .line 535
    iput-object p1, p0, Lcom/ironsource/mediationsdk/AbstractAdapter$5;->this$0:Lcom/ironsource/mediationsdk/AbstractAdapter;

    iput-object p2, p0, Lcom/ironsource/mediationsdk/AbstractAdapter$5;->val$listener:Lcom/ironsource/mediationsdk/sdk/BannerManagerListener;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 538
    iget-object v0, p0, Lcom/ironsource/mediationsdk/AbstractAdapter$5;->val$listener:Lcom/ironsource/mediationsdk/sdk/BannerManagerListener;

    if-eqz v0, :cond_0

    .line 539
    iget-object v0, p0, Lcom/ironsource/mediationsdk/AbstractAdapter$5;->val$listener:Lcom/ironsource/mediationsdk/sdk/BannerManagerListener;

    const-string v1, "Timeout"

    const-string v2, "Banner"

    invoke-static {v1, v2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/mediationsdk/AbstractAdapter$5;->this$0:Lcom/ironsource/mediationsdk/AbstractAdapter;

    invoke-interface {v0, v1, v2}, Lcom/ironsource/mediationsdk/sdk/BannerManagerListener;->onBannerInitFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 542
    :cond_0
    return-void
.end method
