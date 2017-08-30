.class Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$21;
.super Ljava/lang/Object;
.source "ListenersWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onSegmentReceived(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

.field final synthetic val$segment:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    .prologue
    .line 454
    iput-object p1, p0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$21;->this$0:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    iput-object p2, p0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$21;->val$segment:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 457
    iget-object v0, p0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$21;->val$segment:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$21;->this$0:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    # getter for: Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->mSegementListener:Lcom/ironsource/mediationsdk/sdk/SegmentListener;
    invoke-static {v0}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->access$500(Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;)Lcom/ironsource/mediationsdk/sdk/SegmentListener;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$21;->val$segment:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/ironsource/mediationsdk/sdk/SegmentListener;->onSegmentReceived(Ljava/lang/String;)V

    .line 461
    :goto_0
    return-void

    .line 460
    :cond_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$21;->this$0:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    # getter for: Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->mSegementListener:Lcom/ironsource/mediationsdk/sdk/SegmentListener;
    invoke-static {v0}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->access$500(Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;)Lcom/ironsource/mediationsdk/sdk/SegmentListener;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v0, v1}, Lcom/ironsource/mediationsdk/sdk/SegmentListener;->onSegmentReceived(Ljava/lang/String;)V

    goto :goto_0
.end method
