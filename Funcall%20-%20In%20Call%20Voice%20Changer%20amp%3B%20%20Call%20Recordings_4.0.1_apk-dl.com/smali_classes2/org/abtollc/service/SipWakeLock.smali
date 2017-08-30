.class public Lorg/abtollc/service/SipWakeLock;
.super Ljava/lang/Object;
.source "SipWakeLock.java"


# static fields
.field private static final THIS_FILE:Ljava/lang/String; = "SipWakeLock"


# instance fields
.field private mHolders:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mPowerManager:Landroid/os/PowerManager;

.field private mTimerWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/os/PowerManager;)V
    .locals 1
    .param p1, "powerManager"    # Landroid/os/PowerManager;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/abtollc/service/SipWakeLock;->mHolders:Ljava/util/HashSet;

    .line 17
    iput-object p1, p0, Lorg/abtollc/service/SipWakeLock;->mPowerManager:Landroid/os/PowerManager;

    .line 18
    return-void
.end method


# virtual methods
.method public declared-synchronized acquire(J)V
    .locals 3
    .param p1, "timeout"    # J

    .prologue
    .line 35
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/abtollc/service/SipWakeLock;->mTimerWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    .line 36
    iget-object v0, p0, Lorg/abtollc/service/SipWakeLock;->mPowerManager:Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "SipWakeLock.timer"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lorg/abtollc/service/SipWakeLock;->mTimerWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 38
    iget-object v0, p0, Lorg/abtollc/service/SipWakeLock;->mTimerWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 40
    :cond_0
    iget-object v0, p0, Lorg/abtollc/service/SipWakeLock;->mTimerWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, p1, p2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    monitor-exit p0

    return-void

    .line 35
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized acquire(Ljava/lang/Object;)V
    .locals 3
    .param p1, "holder"    # Ljava/lang/Object;

    .prologue
    .line 44
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/abtollc/service/SipWakeLock;->mHolders:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 45
    iget-object v0, p0, Lorg/abtollc/service/SipWakeLock;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    .line 46
    iget-object v0, p0, Lorg/abtollc/service/SipWakeLock;->mPowerManager:Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "SipWakeLock"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lorg/abtollc/service/SipWakeLock;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 49
    :cond_0
    iget-object v0, p0, Lorg/abtollc/service/SipWakeLock;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/abtollc/service/SipWakeLock;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 50
    :cond_1
    const-string v0, "SipWakeLock"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "acquire wakelock: holder count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/abtollc/service/SipWakeLock;->mHolders:Ljava/util/HashSet;

    .line 51
    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 50
    invoke-static {v0, v1}, Lorg/abtollc/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    monitor-exit p0

    return-void

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized release(Ljava/lang/Object;)V
    .locals 3
    .param p1, "holder"    # Ljava/lang/Object;

    .prologue
    .line 55
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/abtollc/service/SipWakeLock;->mHolders:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 56
    iget-object v0, p0, Lorg/abtollc/service/SipWakeLock;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/abtollc/service/SipWakeLock;->mHolders:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/abtollc/service/SipWakeLock;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 57
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lorg/abtollc/service/SipWakeLock;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 61
    :cond_0
    const-string v0, "SipWakeLock"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "release wakelock: holder count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/abtollc/service/SipWakeLock;->mHolders:Ljava/util/HashSet;

    .line 62
    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 61
    invoke-static {v0, v1}, Lorg/abtollc/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    monitor-exit p0

    return-void

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reset()V
    .locals 3

    .prologue
    .line 24
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/abtollc/service/SipWakeLock;->mHolders:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 25
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/abtollc/service/SipWakeLock;->release(Ljava/lang/Object;)V

    .line 26
    iget-object v0, p0, Lorg/abtollc/service/SipWakeLock;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    .line 27
    :goto_0
    iget-object v0, p0, Lorg/abtollc/service/SipWakeLock;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lorg/abtollc/service/SipWakeLock;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 24
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 30
    :cond_0
    :try_start_1
    const-string v0, "SipWakeLock"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "~~~ hard reset wakelock :: still held : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/abtollc/service/SipWakeLock;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/abtollc/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    :cond_1
    monitor-exit p0

    return-void
.end method
