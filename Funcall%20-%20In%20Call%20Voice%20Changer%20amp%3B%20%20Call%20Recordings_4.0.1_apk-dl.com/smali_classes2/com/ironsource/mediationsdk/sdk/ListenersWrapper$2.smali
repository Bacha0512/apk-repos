.class Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$2;
.super Ljava/lang/Object;
.source "ListenersWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onRewardedVideoAdClosed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$2;->this$0:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$2;->this$0:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    # getter for: Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->mRewardedVideoListener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;
    invoke-static {v0}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->access$100(Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;)Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;->onRewardedVideoAdClosed()V

    .line 95
    return-void
.end method
