.class Lorg/abtollc/utils/Ringer$VibratorThread;
.super Ljava/lang/Thread;
.source "Ringer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/abtollc/utils/Ringer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VibratorThread"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/abtollc/utils/Ringer;


# direct methods
.method private constructor <init>(Lorg/abtollc/utils/Ringer;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lorg/abtollc/utils/Ringer$VibratorThread;->this$0:Lorg/abtollc/utils/Ringer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/abtollc/utils/Ringer;Lorg/abtollc/utils/Ringer$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/abtollc/utils/Ringer;
    .param p2, "x1"    # Lorg/abtollc/utils/Ringer$1;

    .prologue
    .line 175
    invoke-direct {p0, p1}, Lorg/abtollc/utils/Ringer$VibratorThread;-><init>(Lorg/abtollc/utils/Ringer;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 179
    :goto_0
    :try_start_0
    iget-object v2, p0, Lorg/abtollc/utils/Ringer$VibratorThread;->this$0:Lorg/abtollc/utils/Ringer;

    iget-object v2, v2, Lorg/abtollc/utils/Ringer;->vibrator:Landroid/os/Vibrator;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v4, v5}, Landroid/os/Vibrator;->vibrate(J)V

    .line 180
    const-wide/16 v2, 0x7d0

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 182
    :catch_0
    move-exception v1

    .line 183
    .local v1, "ex":Ljava/lang/InterruptedException;
    :try_start_1
    const-string v2, "Ringer"

    const-string v3, "Vibrator thread interrupt"

    invoke-static {v2, v3}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 188
    :try_start_2
    iget-object v2, p0, Lorg/abtollc/utils/Ringer$VibratorThread;->this$0:Lorg/abtollc/utils/Ringer;

    iget-object v2, v2, Lorg/abtollc/utils/Ringer;->vibrator:Landroid/os/Vibrator;

    invoke-virtual {v2}, Landroid/os/Vibrator;->cancel()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 193
    .end local v1    # "ex":Ljava/lang/InterruptedException;
    :goto_1
    const-string v2, "Ringer"

    const-string v3, "Vibrator thread exiting"

    invoke-static {v2, v3}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    return-void

    .line 189
    .restart local v1    # "ex":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 190
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Ringer"

    const-string v3, "Vibrator might be disabled, check Manifest for android.permission.VIBRATE"

    invoke-static {v2, v3}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 184
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "ex":Ljava/lang/InterruptedException;
    :catch_2
    move-exception v1

    .line 185
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_3
    const-string v2, "Ringer"

    const-string v3, "Vibrator might be disabled, check Manifest for android.permission.VIBRATE"

    invoke-static {v2, v3}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 188
    :try_start_4
    iget-object v2, p0, Lorg/abtollc/utils/Ringer$VibratorThread;->this$0:Lorg/abtollc/utils/Ringer;

    iget-object v2, v2, Lorg/abtollc/utils/Ringer;->vibrator:Landroid/os/Vibrator;

    invoke-virtual {v2}, Landroid/os/Vibrator;->cancel()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    .line 189
    :catch_3
    move-exception v0

    .line 190
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v2, "Ringer"

    const-string v3, "Vibrator might be disabled, check Manifest for android.permission.VIBRATE"

    invoke-static {v2, v3}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 187
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 188
    :try_start_5
    iget-object v3, p0, Lorg/abtollc/utils/Ringer$VibratorThread;->this$0:Lorg/abtollc/utils/Ringer;

    iget-object v3, v3, Lorg/abtollc/utils/Ringer;->vibrator:Landroid/os/Vibrator;

    invoke-virtual {v3}, Landroid/os/Vibrator;->cancel()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 191
    :goto_2
    throw v2

    .line 189
    :catch_4
    move-exception v0

    .line 190
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v3, "Ringer"

    const-string v4, "Vibrator might be disabled, check Manifest for android.permission.VIBRATE"

    invoke-static {v3, v4}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method
