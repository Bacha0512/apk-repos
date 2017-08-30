.class Lcom/weirdvoice/ui/incall/InCallActivity$QuitTimerTask;
.super Ljava/util/TimerTask;
.source "InCallActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/weirdvoice/ui/incall/InCallActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QuitTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/weirdvoice/ui/incall/InCallActivity;


# direct methods
.method private constructor <init>(Lcom/weirdvoice/ui/incall/InCallActivity;)V
    .locals 0

    .prologue
    .line 649
    iput-object p1, p0, Lcom/weirdvoice/ui/incall/InCallActivity$QuitTimerTask;->this$0:Lcom/weirdvoice/ui/incall/InCallActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/weirdvoice/ui/incall/InCallActivity;Lcom/weirdvoice/ui/incall/InCallActivity$QuitTimerTask;)V
    .locals 0

    .prologue
    .line 649
    invoke-direct {p0, p1}, Lcom/weirdvoice/ui/incall/InCallActivity$QuitTimerTask;-><init>(Lcom/weirdvoice/ui/incall/InCallActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 652
    const-string v0, "InCallActivity"

    const-string v1, "Run quit timer"

    invoke-static {v0, v1}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/InCallActivity$QuitTimerTask;->this$0:Lcom/weirdvoice/ui/incall/InCallActivity;

    invoke-virtual {v0}, Lcom/weirdvoice/ui/incall/InCallActivity;->finish()V

    .line 654
    return-void
.end method
