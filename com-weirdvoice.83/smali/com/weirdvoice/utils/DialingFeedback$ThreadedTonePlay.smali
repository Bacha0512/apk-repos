.class Lcom/weirdvoice/utils/DialingFeedback$ThreadedTonePlay;
.super Ljava/lang/Thread;
.source "DialingFeedback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/weirdvoice/utils/DialingFeedback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ThreadedTonePlay"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/weirdvoice/utils/DialingFeedback;

.field private final tone:I


# direct methods
.method constructor <init>(Lcom/weirdvoice/utils/DialingFeedback;I)V
    .locals 0
    .param p2, "t"    # I

    .prologue
    .line 175
    iput-object p1, p0, Lcom/weirdvoice/utils/DialingFeedback$ThreadedTonePlay;->this$0:Lcom/weirdvoice/utils/DialingFeedback;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 176
    iput p2, p0, Lcom/weirdvoice/utils/DialingFeedback$ThreadedTonePlay;->tone:I

    .line 177
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 181
    iget-object v0, p0, Lcom/weirdvoice/utils/DialingFeedback$ThreadedTonePlay;->this$0:Lcom/weirdvoice/utils/DialingFeedback;

    # getter for: Lcom/weirdvoice/utils/DialingFeedback;->toneGeneratorLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/weirdvoice/utils/DialingFeedback;->access$0(Lcom/weirdvoice/utils/DialingFeedback;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 182
    :try_start_0
    iget-object v0, p0, Lcom/weirdvoice/utils/DialingFeedback$ThreadedTonePlay;->this$0:Lcom/weirdvoice/utils/DialingFeedback;

    # getter for: Lcom/weirdvoice/utils/DialingFeedback;->toneGenerator:Landroid/media/ToneGenerator;
    invoke-static {v0}, Lcom/weirdvoice/utils/DialingFeedback;->access$1(Lcom/weirdvoice/utils/DialingFeedback;)Landroid/media/ToneGenerator;

    move-result-object v0

    if-nez v0, :cond_0

    .line 183
    monitor-exit v1

    .line 189
    :goto_0
    return-void

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/weirdvoice/utils/DialingFeedback$ThreadedTonePlay;->this$0:Lcom/weirdvoice/utils/DialingFeedback;

    # getter for: Lcom/weirdvoice/utils/DialingFeedback;->toneGenerator:Landroid/media/ToneGenerator;
    invoke-static {v0}, Lcom/weirdvoice/utils/DialingFeedback;->access$1(Lcom/weirdvoice/utils/DialingFeedback;)Landroid/media/ToneGenerator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->stopTone()V

    .line 186
    iget-object v0, p0, Lcom/weirdvoice/utils/DialingFeedback$ThreadedTonePlay;->this$0:Lcom/weirdvoice/utils/DialingFeedback;

    # getter for: Lcom/weirdvoice/utils/DialingFeedback;->toneGenerator:Landroid/media/ToneGenerator;
    invoke-static {v0}, Lcom/weirdvoice/utils/DialingFeedback;->access$1(Lcom/weirdvoice/utils/DialingFeedback;)Landroid/media/ToneGenerator;

    move-result-object v0

    iget v2, p0, Lcom/weirdvoice/utils/DialingFeedback$ThreadedTonePlay;->tone:I

    invoke-virtual {v0, v2}, Landroid/media/ToneGenerator;->startTone(I)Z

    .line 187
    iget-object v0, p0, Lcom/weirdvoice/utils/DialingFeedback$ThreadedTonePlay;->this$0:Lcom/weirdvoice/utils/DialingFeedback;

    # getter for: Lcom/weirdvoice/utils/DialingFeedback;->toneTimer:Ljava/util/Timer;
    invoke-static {v0}, Lcom/weirdvoice/utils/DialingFeedback;->access$2(Lcom/weirdvoice/utils/DialingFeedback;)Ljava/util/Timer;

    move-result-object v0

    new-instance v2, Lcom/weirdvoice/utils/DialingFeedback$StopTimerTask;

    iget-object v3, p0, Lcom/weirdvoice/utils/DialingFeedback$ThreadedTonePlay;->this$0:Lcom/weirdvoice/utils/DialingFeedback;

    invoke-direct {v2, v3}, Lcom/weirdvoice/utils/DialingFeedback$StopTimerTask;-><init>(Lcom/weirdvoice/utils/DialingFeedback;)V

    const-wide/16 v4, 0x96

    invoke-virtual {v0, v2, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 181
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
