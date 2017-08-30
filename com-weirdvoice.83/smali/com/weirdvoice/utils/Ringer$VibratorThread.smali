.class Lcom/weirdvoice/utils/Ringer$VibratorThread;
.super Ljava/lang/Thread;
.source "Ringer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/weirdvoice/utils/Ringer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VibratorThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/weirdvoice/utils/Ringer;


# direct methods
.method private constructor <init>(Lcom/weirdvoice/utils/Ringer;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/weirdvoice/utils/Ringer$VibratorThread;->this$0:Lcom/weirdvoice/utils/Ringer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/weirdvoice/utils/Ringer;Lcom/weirdvoice/utils/Ringer$VibratorThread;)V
    .locals 0

    .prologue
    .line 190
    invoke-direct {p0, p1}, Lcom/weirdvoice/utils/Ringer$VibratorThread;-><init>(Lcom/weirdvoice/utils/Ringer;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 194
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/weirdvoice/utils/Ringer$VibratorThread;->this$0:Lcom/weirdvoice/utils/Ringer;

    iget-object v1, v1, Lcom/weirdvoice/utils/Ringer;->vibrator:Landroid/os/Vibrator;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 195
    const-wide/16 v2, 0x7d0

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 197
    :catch_0
    move-exception v0

    .line 198
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_1
    const-string v1, "Ringer"

    const-string v2, "Vibrator thread interrupt"

    invoke-static {v1, v2}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 200
    iget-object v1, p0, Lcom/weirdvoice/utils/Ringer$VibratorThread;->this$0:Lcom/weirdvoice/utils/Ringer;

    iget-object v1, v1, Lcom/weirdvoice/utils/Ringer;->vibrator:Landroid/os/Vibrator;

    invoke-virtual {v1}, Landroid/os/Vibrator;->cancel()V

    .line 202
    const-string v1, "Ringer"

    const-string v2, "Vibrator thread exiting"

    invoke-static {v1, v2}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    return-void

    .line 199
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    .line 200
    iget-object v2, p0, Lcom/weirdvoice/utils/Ringer$VibratorThread;->this$0:Lcom/weirdvoice/utils/Ringer;

    iget-object v2, v2, Lcom/weirdvoice/utils/Ringer;->vibrator:Landroid/os/Vibrator;

    invoke-virtual {v2}, Landroid/os/Vibrator;->cancel()V

    .line 201
    throw v1
.end method
