.class Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$CallbackHandlerThread;
.super Ljava/lang/Thread;
.source "ListenersWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallbackHandlerThread"
.end annotation


# instance fields
.field private mCallbackHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;


# direct methods
.method private constructor <init>(Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;)V
    .locals 0

    .prologue
    .line 466
    iput-object p1, p0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$CallbackHandlerThread;->this$0:Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;
    .param p2, "x1"    # Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$1;

    .prologue
    .line 466
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$CallbackHandlerThread;-><init>(Lcom/ironsource/mediationsdk/sdk/ListenersWrapper;)V

    return-void
.end method


# virtual methods
.method public getCallbackHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$CallbackHandlerThread;->mCallbackHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public run()V
    .locals 1

    .prologue
    .line 474
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 479
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/sdk/ListenersWrapper$CallbackHandlerThread;->mCallbackHandler:Landroid/os/Handler;

    .line 485
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 486
    return-void
.end method
