.class Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$19;
.super Ljava/lang/Object;
.source "ListenersWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onOfferwallAvailable(ZLcom/ironsource/mediationsdk/logger/IronSourceError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

.field final synthetic val$isAvailable:Z


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    .prologue
    .line 425
    iput-object p1, p0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$19;->this$0:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    iput-boolean p2, p0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$19;->val$isAvailable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 428
    iget-object v0, p0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$19;->this$0:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    # getter for: Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->mOfferwallListener:Lcom/ironsource/mediationsdk/sdk/OfferwallListener;
    invoke-static {v0}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->access$300(Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;)Lcom/ironsource/mediationsdk/sdk/OfferwallListener;

    move-result-object v0

    iget-boolean v1, p0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$19;->val$isAvailable:Z

    invoke-interface {v0, v1}, Lcom/ironsource/mediationsdk/sdk/OfferwallListener;->onOfferwallAvailable(Z)V

    .line 429
    return-void
.end method
