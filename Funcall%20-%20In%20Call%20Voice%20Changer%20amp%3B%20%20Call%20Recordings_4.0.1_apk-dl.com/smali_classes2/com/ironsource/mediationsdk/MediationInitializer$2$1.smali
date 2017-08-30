.class Lcom/ironsource/mediationsdk/MediationInitializer$2$1;
.super Landroid/os/CountDownTimer;
.source "MediationInitializer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/mediationsdk/MediationInitializer$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ironsource/mediationsdk/MediationInitializer$2;


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/MediationInitializer$2;JJ)V
    .locals 0
    .param p1, "this$1"    # Lcom/ironsource/mediationsdk/MediationInitializer$2;
    .param p2, "x0"    # J
    .param p4, "x1"    # J

    .prologue
    .line 246
    iput-object p1, p0, Lcom/ironsource/mediationsdk/MediationInitializer$2$1;->this$1:Lcom/ironsource/mediationsdk/MediationInitializer$2;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 251
    iget-object v1, p0, Lcom/ironsource/mediationsdk/MediationInitializer$2$1;->this$1:Lcom/ironsource/mediationsdk/MediationInitializer$2;

    iget-object v1, v1, Lcom/ironsource/mediationsdk/MediationInitializer$2;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    # getter for: Lcom/ironsource/mediationsdk/MediationInitializer;->mDidReportInitialAvailability:Z
    invoke-static {v1}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$1100(Lcom/ironsource/mediationsdk/MediationInitializer;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 252
    iget-object v1, p0, Lcom/ironsource/mediationsdk/MediationInitializer$2$1;->this$1:Lcom/ironsource/mediationsdk/MediationInitializer$2;

    iget-object v1, v1, Lcom/ironsource/mediationsdk/MediationInitializer$2;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    # setter for: Lcom/ironsource/mediationsdk/MediationInitializer;->mDidReportInitialAvailability:Z
    invoke-static {v1, v4}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$1102(Lcom/ironsource/mediationsdk/MediationInitializer;Z)Z

    .line 253
    iget-object v1, p0, Lcom/ironsource/mediationsdk/MediationInitializer$2$1;->this$1:Lcom/ironsource/mediationsdk/MediationInitializer$2;

    iget-object v1, v1, Lcom/ironsource/mediationsdk/MediationInitializer$2;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    # getter for: Lcom/ironsource/mediationsdk/MediationInitializer;->mOnMediationInitializationListeners:Ljava/util/List;
    invoke-static {v1}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$800(Lcom/ironsource/mediationsdk/MediationInitializer;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/MediationInitializer$OnMediationInitializationListener;

    .line 254
    .local v0, "listener":Lcom/ironsource/mediationsdk/MediationInitializer$OnMediationInitializationListener;
    const-string v2, "noInternetConnection"

    invoke-interface {v0, v2}, Lcom/ironsource/mediationsdk/MediationInitializer$OnMediationInitializationListener;->onInitFailed(Ljava/lang/String;)V

    goto :goto_0

    .line 256
    .end local v0    # "listener":Lcom/ironsource/mediationsdk/MediationInitializer$OnMediationInitializationListener;
    :cond_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/MediationInitializer$2$1;->this$1:Lcom/ironsource/mediationsdk/MediationInitializer$2;

    iget-object v1, v1, Lcom/ironsource/mediationsdk/MediationInitializer$2;->this$0:Lcom/ironsource/mediationsdk/MediationInitializer;

    sget-object v2, Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;->INIT_FAILED:Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    # invokes: Lcom/ironsource/mediationsdk/MediationInitializer;->setInitStatus(Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;)V
    invoke-static {v1, v2}, Lcom/ironsource/mediationsdk/MediationInitializer;->access$700(Lcom/ironsource/mediationsdk/MediationInitializer;Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;)V

    .line 257
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v1

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v3, "Mediation availability false reason: No internet connection"

    invoke-virtual {v1, v2, v3, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 260
    :cond_1
    return-void
.end method

.method public onTick(J)V
    .locals 0
    .param p1, "millisUntilFinished"    # J

    .prologue
    .line 248
    return-void
.end method
