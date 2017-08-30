.class Lorg/androvoip/ui/DialerActivity$2;
.super Ljava/lang/Object;
.source "DialerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/androvoip/ui/DialerActivity;->startCallTimer(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/androvoip/ui/DialerActivity;

.field private final synthetic val$time:I


# direct methods
.method constructor <init>(Lorg/androvoip/ui/DialerActivity;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/androvoip/ui/DialerActivity$2;->this$0:Lorg/androvoip/ui/DialerActivity;

    iput p2, p0, Lorg/androvoip/ui/DialerActivity$2;->val$time:I

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 120
    iget-object v2, p0, Lorg/androvoip/ui/DialerActivity$2;->this$0:Lorg/androvoip/ui/DialerActivity;

    iget v3, p0, Lorg/androvoip/ui/DialerActivity$2;->val$time:I

    invoke-static {v2, v3}, Lorg/androvoip/ui/DialerActivity;->access$3(Lorg/androvoip/ui/DialerActivity;I)V

    .line 121
    new-instance v0, Lorg/androvoip/ui/DialerActivity$CounterRunnable;

    iget-object v2, p0, Lorg/androvoip/ui/DialerActivity$2;->this$0:Lorg/androvoip/ui/DialerActivity;

    invoke-direct {v0, v2}, Lorg/androvoip/ui/DialerActivity$CounterRunnable;-><init>(Lorg/androvoip/ui/DialerActivity;)V

    .line 122
    .local v0, "counter_runnable":Lorg/androvoip/ui/DialerActivity$CounterRunnable;
    :goto_0
    iget-object v2, p0, Lorg/androvoip/ui/DialerActivity$2;->this$0:Lorg/androvoip/ui/DialerActivity;

    # getter for: Lorg/androvoip/ui/DialerActivity;->counter:I
    invoke-static {v2}, Lorg/androvoip/ui/DialerActivity;->access$1(Lorg/androvoip/ui/DialerActivity;)I

    move-result v2

    if-gtz v2, :cond_0

    .line 135
    return-void

    .line 124
    :cond_0
    iget-object v2, p0, Lorg/androvoip/ui/DialerActivity$2;->this$0:Lorg/androvoip/ui/DialerActivity;

    iget-object v2, v2, Lorg/androvoip/ui/DialerActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 127
    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :goto_1
    iget-object v2, p0, Lorg/androvoip/ui/DialerActivity$2;->this$0:Lorg/androvoip/ui/DialerActivity;

    # getter for: Lorg/androvoip/ui/DialerActivity;->counter:I
    invoke-static {v2}, Lorg/androvoip/ui/DialerActivity;->access$1(Lorg/androvoip/ui/DialerActivity;)I

    move-result v3

    add-int/lit16 v3, v3, -0x3e8

    invoke-static {v2, v3}, Lorg/androvoip/ui/DialerActivity;->access$3(Lorg/androvoip/ui/DialerActivity;I)V

    goto :goto_0

    .line 128
    :catch_0
    move-exception v1

    .line 130
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method
