.class Lorg/abtollc/utils/Ringer$RingerThread;
.super Ljava/lang/Thread;
.source "Ringer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/abtollc/utils/Ringer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RingerThread"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/abtollc/utils/Ringer;


# direct methods
.method private constructor <init>(Lorg/abtollc/utils/Ringer;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lorg/abtollc/utils/Ringer$RingerThread;->this$0:Lorg/abtollc/utils/Ringer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/abtollc/utils/Ringer;Lorg/abtollc/utils/Ringer$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/abtollc/utils/Ringer;
    .param p2, "x1"    # Lorg/abtollc/utils/Ringer$1;

    .prologue
    .line 197
    invoke-direct {p0, p1}, Lorg/abtollc/utils/Ringer$RingerThread;-><init>(Lorg/abtollc/utils/Ringer;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 201
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/abtollc/utils/Ringer$RingerThread;->this$0:Lorg/abtollc/utils/Ringer;

    iget-object v1, v1, Lorg/abtollc/utils/Ringer;->ringtone:Landroid/media/Ringtone;

    invoke-virtual {v1}, Landroid/media/Ringtone;->play()V

    .line 202
    :goto_0
    iget-object v1, p0, Lorg/abtollc/utils/Ringer$RingerThread;->this$0:Lorg/abtollc/utils/Ringer;

    iget-object v1, v1, Lorg/abtollc/utils/Ringer;->ringtone:Landroid/media/Ringtone;

    invoke-virtual {v1}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 203
    const-wide/16 v2, 0x64

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 206
    :catch_0
    move-exception v0

    .line 207
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_1
    const-string v1, "Ringer"

    const-string v2, "Ringer thread interrupt"

    invoke-static {v1, v2}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 209
    iget-object v1, p0, Lorg/abtollc/utils/Ringer$RingerThread;->this$0:Lorg/abtollc/utils/Ringer;

    iget-object v1, v1, Lorg/abtollc/utils/Ringer;->ringtone:Landroid/media/Ringtone;

    if-eqz v1, :cond_1

    .line 210
    iget-object v1, p0, Lorg/abtollc/utils/Ringer$RingerThread;->this$0:Lorg/abtollc/utils/Ringer;

    iget-object v1, v1, Lorg/abtollc/utils/Ringer;->ringtone:Landroid/media/Ringtone;

    invoke-virtual {v1}, Landroid/media/Ringtone;->stop()V

    .line 213
    :cond_1
    const-string v1, "Ringer"

    const-string v2, "Ringer thread exiting"

    invoke-static {v1, v2}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    return-void

    .line 209
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/abtollc/utils/Ringer$RingerThread;->this$0:Lorg/abtollc/utils/Ringer;

    iget-object v2, v2, Lorg/abtollc/utils/Ringer;->ringtone:Landroid/media/Ringtone;

    if-eqz v2, :cond_2

    .line 210
    iget-object v2, p0, Lorg/abtollc/utils/Ringer$RingerThread;->this$0:Lorg/abtollc/utils/Ringer;

    iget-object v2, v2, Lorg/abtollc/utils/Ringer;->ringtone:Landroid/media/Ringtone;

    invoke-virtual {v2}, Landroid/media/Ringtone;->stop()V

    :cond_2
    throw v1
.end method
