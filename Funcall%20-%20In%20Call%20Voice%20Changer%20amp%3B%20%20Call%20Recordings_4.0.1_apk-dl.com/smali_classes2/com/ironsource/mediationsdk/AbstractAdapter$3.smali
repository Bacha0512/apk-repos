.class Lcom/ironsource/mediationsdk/AbstractAdapter$3;
.super Ljava/util/TimerTask;
.source "AbstractAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/mediationsdk/AbstractAdapter;->startBannerLoadTimer(Lcom/ironsource/mediationsdk/BannerAdaptersListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/mediationsdk/AbstractAdapter;

.field final synthetic val$listener:Lcom/ironsource/mediationsdk/BannerAdaptersListener;


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/AbstractAdapter;Lcom/ironsource/mediationsdk/BannerAdaptersListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ironsource/mediationsdk/AbstractAdapter;

    .prologue
    .line 474
    iput-object p1, p0, Lcom/ironsource/mediationsdk/AbstractAdapter$3;->this$0:Lcom/ironsource/mediationsdk/AbstractAdapter;

    iput-object p2, p0, Lcom/ironsource/mediationsdk/AbstractAdapter$3;->val$listener:Lcom/ironsource/mediationsdk/BannerAdaptersListener;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 477
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Banner Load Fail, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ironsource/mediationsdk/AbstractAdapter$3;->this$0:Lcom/ironsource/mediationsdk/AbstractAdapter;

    .line 478
    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Timeout"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 479
    .local v1, "errorString":Ljava/lang/String;
    invoke-static {v1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildLoadFailedError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    .line 480
    .local v0, "error":Lcom/ironsource/mediationsdk/logger/IronSourceError;
    iget-object v2, p0, Lcom/ironsource/mediationsdk/AbstractAdapter$3;->this$0:Lcom/ironsource/mediationsdk/AbstractAdapter;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/AbstractAdapter;->removeBannerViews()V

    .line 482
    iget-object v2, p0, Lcom/ironsource/mediationsdk/AbstractAdapter$3;->val$listener:Lcom/ironsource/mediationsdk/BannerAdaptersListener;

    iget-object v3, p0, Lcom/ironsource/mediationsdk/AbstractAdapter$3;->this$0:Lcom/ironsource/mediationsdk/AbstractAdapter;

    invoke-interface {v2, v0, v3}, Lcom/ironsource/mediationsdk/BannerAdaptersListener;->onBannerAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 483
    return-void
.end method
