.class Lcom/weirdvoice/ui/prefs/AudioTester$MonitorThread;
.super Ljava/lang/Thread;
.source "AudioTester.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/weirdvoice/ui/prefs/AudioTester;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MonitorThread"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/weirdvoice/ui/prefs/AudioTester$MonitorThread$UpdateConfLevelRunnable;
    }
.end annotation


# instance fields
.field private finished:Z

.field final synthetic this$0:Lcom/weirdvoice/ui/prefs/AudioTester;


# direct methods
.method private constructor <init>(Lcom/weirdvoice/ui/prefs/AudioTester;)V
    .locals 1

    .prologue
    .line 137
    iput-object p1, p0, Lcom/weirdvoice/ui/prefs/AudioTester$MonitorThread;->this$0:Lcom/weirdvoice/ui/prefs/AudioTester;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 138
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/weirdvoice/ui/prefs/AudioTester$MonitorThread;->finished:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/weirdvoice/ui/prefs/AudioTester;Lcom/weirdvoice/ui/prefs/AudioTester$MonitorThread;)V
    .locals 0

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lcom/weirdvoice/ui/prefs/AudioTester$MonitorThread;-><init>(Lcom/weirdvoice/ui/prefs/AudioTester;)V

    return-void
.end method

.method static synthetic access$1(Lcom/weirdvoice/ui/prefs/AudioTester$MonitorThread;)Lcom/weirdvoice/ui/prefs/AudioTester;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/weirdvoice/ui/prefs/AudioTester$MonitorThread;->this$0:Lcom/weirdvoice/ui/prefs/AudioTester;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized markFinished()V
    .locals 1

    .prologue
    .line 141
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/weirdvoice/ui/prefs/AudioTester$MonitorThread;->finished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    monitor-exit p0

    return-void

    .line 141
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 10

    .prologue
    const-wide/16 v8, 0xff

    .line 146
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 148
    :goto_0
    iget-object v1, p0, Lcom/weirdvoice/ui/prefs/AudioTester$MonitorThread;->this$0:Lcom/weirdvoice/ui/prefs/AudioTester;

    # getter for: Lcom/weirdvoice/ui/prefs/AudioTester;->service:Lcom/weirdvoice/api/ISipService;
    invoke-static {v1}, Lcom/weirdvoice/ui/prefs/AudioTester;->access$1(Lcom/weirdvoice/ui/prefs/AudioTester;)Lcom/weirdvoice/api/ISipService;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 150
    :try_start_0
    iget-object v1, p0, Lcom/weirdvoice/ui/prefs/AudioTester$MonitorThread;->this$0:Lcom/weirdvoice/ui/prefs/AudioTester;

    # getter for: Lcom/weirdvoice/ui/prefs/AudioTester;->service:Lcom/weirdvoice/api/ISipService;
    invoke-static {v1}, Lcom/weirdvoice/ui/prefs/AudioTester;->access$1(Lcom/weirdvoice/ui/prefs/AudioTester;)Lcom/weirdvoice/api/ISipService;

    move-result-object v1

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Lcom/weirdvoice/api/ISipService;->confGetRxTxLevel(I)J

    move-result-wide v2

    .line 151
    .local v2, "value":J
    iget-object v1, p0, Lcom/weirdvoice/ui/prefs/AudioTester$MonitorThread;->this$0:Lcom/weirdvoice/ui/prefs/AudioTester;

    new-instance v4, Lcom/weirdvoice/ui/prefs/AudioTester$MonitorThread$UpdateConfLevelRunnable;

    const/16 v5, 0x8

    shr-long v6, v2, v5

    and-long/2addr v6, v8

    long-to-int v5, v6

    and-long v6, v2, v8

    long-to-int v6, v6

    invoke-direct {v4, p0, v5, v6}, Lcom/weirdvoice/ui/prefs/AudioTester$MonitorThread$UpdateConfLevelRunnable;-><init>(Lcom/weirdvoice/ui/prefs/AudioTester$MonitorThread;II)V

    invoke-virtual {v1, v4}, Lcom/weirdvoice/ui/prefs/AudioTester;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    .end local v2    # "value":J
    :cond_0
    const-wide/16 v4, 0x64

    :try_start_1
    invoke-static {v4, v5}, Lcom/weirdvoice/ui/prefs/AudioTester$MonitorThread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 164
    :goto_1
    monitor-enter p0

    .line 165
    :try_start_2
    iget-boolean v1, p0, Lcom/weirdvoice/ui/prefs/AudioTester$MonitorThread;->finished:Z

    if-eqz v1, :cond_1

    .line 166
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 170
    :goto_2
    return-void

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AudioTester"

    const-string v4, "Problem with remote service"

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 161
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 162
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "AudioTester"

    const-string v4, "Interupted monitor thread"

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 164
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_1
    :try_start_3
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method
