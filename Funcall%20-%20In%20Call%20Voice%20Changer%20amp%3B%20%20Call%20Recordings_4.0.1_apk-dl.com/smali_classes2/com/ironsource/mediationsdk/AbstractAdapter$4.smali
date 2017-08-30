.class Lcom/ironsource/mediationsdk/AbstractAdapter$4;
.super Ljava/util/TimerTask;
.source "AbstractAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/mediationsdk/AbstractAdapter;->startRVTimer(Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/mediationsdk/AbstractAdapter;

.field final synthetic val$listener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/AbstractAdapter;Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ironsource/mediationsdk/AbstractAdapter;

    .prologue
    .line 507
    iput-object p1, p0, Lcom/ironsource/mediationsdk/AbstractAdapter$4;->this$0:Lcom/ironsource/mediationsdk/AbstractAdapter;

    iput-object p2, p0, Lcom/ironsource/mediationsdk/AbstractAdapter$4;->val$listener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 510
    iget-object v0, p0, Lcom/ironsource/mediationsdk/AbstractAdapter$4;->val$listener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/ironsource/mediationsdk/AbstractAdapter$4;->this$0:Lcom/ironsource/mediationsdk/AbstractAdapter;

    invoke-interface {v0, v1, v2}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;->onRewardedVideoAvailabilityChanged(ZLcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 511
    return-void
.end method
