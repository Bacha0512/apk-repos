.class Lcom/weirdvoice/ui/incall/InCallMediaControl$LockTimerTask;
.super Ljava/util/TimerTask;
.source "InCallMediaControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/weirdvoice/ui/incall/InCallMediaControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LockTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/weirdvoice/ui/incall/InCallMediaControl;


# direct methods
.method private constructor <init>(Lcom/weirdvoice/ui/incall/InCallMediaControl;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lcom/weirdvoice/ui/incall/InCallMediaControl$LockTimerTask;->this$0:Lcom/weirdvoice/ui/incall/InCallMediaControl;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/weirdvoice/ui/incall/InCallMediaControl;Lcom/weirdvoice/ui/incall/InCallMediaControl$LockTimerTask;)V
    .locals 0

    .prologue
    .line 195
    invoke-direct {p0, p1}, Lcom/weirdvoice/ui/incall/InCallMediaControl$LockTimerTask;-><init>(Lcom/weirdvoice/ui/incall/InCallMediaControl;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/InCallMediaControl$LockTimerTask;->this$0:Lcom/weirdvoice/ui/incall/InCallMediaControl;

    invoke-virtual {v0}, Lcom/weirdvoice/ui/incall/InCallMediaControl;->finish()V

    .line 199
    return-void
.end method
