.class Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$13;
.super Ljava/lang/Object;
.source "ListenersWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->onInterstitialAdClicked()V
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
    .line 305
    iput-object p1, p0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$13;->this$0:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$13;->this$0:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    # getter for: Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->mInterstitialListener:Lcom/ironsource/mediationsdk/sdk/InterstitialListener;
    invoke-static {v0}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;->access$200(Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;)Lcom/ironsource/mediationsdk/sdk/InterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/InterstitialListener;->onInterstitialAdClicked()V

    .line 309
    return-void
.end method
