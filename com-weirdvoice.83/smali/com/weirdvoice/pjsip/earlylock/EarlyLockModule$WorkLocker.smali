.class Lcom/weirdvoice/pjsip/earlylock/EarlyLockModule$WorkLocker;
.super Ljava/lang/Thread;
.source "EarlyLockModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/weirdvoice/pjsip/earlylock/EarlyLockModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkLocker"
.end annotation


# instance fields
.field private final lockTime:J

.field final synthetic this$0:Lcom/weirdvoice/pjsip/earlylock/EarlyLockModule;

.field private wl:Landroid/os/PowerManager$WakeLock;


# direct methods
.method constructor <init>(Lcom/weirdvoice/pjsip/earlylock/EarlyLockModule;J)V
    .locals 4
    .param p2, "time"    # J

    .prologue
    .line 85
    iput-object p1, p0, Lcom/weirdvoice/pjsip/earlylock/EarlyLockModule$WorkLocker;->this$0:Lcom/weirdvoice/pjsip/earlylock/EarlyLockModule;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 86
    iput-wide p2, p0, Lcom/weirdvoice/pjsip/earlylock/EarlyLockModule$WorkLocker;->lockTime:J

    .line 87
    # getter for: Lcom/weirdvoice/pjsip/earlylock/EarlyLockModule;->pm:Landroid/os/PowerManager;
    invoke-static {p1}, Lcom/weirdvoice/pjsip/earlylock/EarlyLockModule;->access$0(Lcom/weirdvoice/pjsip/earlylock/EarlyLockModule;)Landroid/os/PowerManager;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "com.weirdvoice.earlylock"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/weirdvoice/pjsip/earlylock/EarlyLockModule$WorkLocker;->wl:Landroid/os/PowerManager$WakeLock;

    .line 88
    iget-object v0, p0, Lcom/weirdvoice/pjsip/earlylock/EarlyLockModule$WorkLocker;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 89
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 98
    :try_start_0
    const-string v1, "EarlyLockModule"

    const-string v2, "We entered a partial early lock"

    invoke-static {v1, v2}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-wide v2, p0, Lcom/weirdvoice/pjsip/earlylock/EarlyLockModule$WorkLocker;->lockTime:J

    invoke-static {v2, v3}, Lcom/weirdvoice/pjsip/earlylock/EarlyLockModule$WorkLocker;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_0
    iget-object v1, p0, Lcom/weirdvoice/pjsip/earlylock/EarlyLockModule$WorkLocker;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 104
    return-void

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "EarlyLockModule"

    const-string v2, "Unable to lock"

    invoke-static {v1, v2}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
