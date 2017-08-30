.class public Lcom/weirdvoice/utils/TimerWrapper;
.super Landroid/content/BroadcastReceiver;
.source "TimerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/weirdvoice/utils/TimerWrapper$SipTimersExecutor;,
        Lcom/weirdvoice/utils/TimerWrapper$TimerJob;
    }
.end annotation


# static fields
.field private static final EXTRA_TIMER_ENTRY:Ljava/lang/String; = "entry"

.field private static final EXTRA_TIMER_EXPIRATION:Ljava/lang/String; = "expires"

.field private static final EXTRA_TIMER_SCHEME:Ljava/lang/String; = "timer"

.field private static final THIS_FILE:Ljava/lang/String; = "Timer wrap"

.field private static final TIMER_ACTION:Ljava/lang/String; = "com.weirdvoice.PJ_TIMER"

.field private static executorThread:Landroid/os/HandlerThread;

.field private static singleton:Lcom/weirdvoice/utils/TimerWrapper;

.field private static final singletonLock:Ljava/lang/Object;


# instance fields
.field private alarmManager:Landroid/app/AlarmManager;

.field private mExecutor:Lcom/weirdvoice/utils/TimerWrapper$SipTimersExecutor;

.field private final scheduleEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final scheduleTimes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private service:Lcom/weirdvoice/service/SipService;

.field private serviceRegistered:Z

.field private wakeLock:Lcom/weirdvoice/service/SipWakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 225
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/weirdvoice/utils/TimerWrapper;->singletonLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/weirdvoice/service/SipService;)V
    .locals 1
    .param p1, "ctxt"    # Lcom/weirdvoice/service/SipService;

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/weirdvoice/utils/TimerWrapper;->serviceRegistered:Z

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/weirdvoice/utils/TimerWrapper;->scheduleEntries:Ljava/util/List;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/weirdvoice/utils/TimerWrapper;->scheduleTimes:Ljava/util/List;

    .line 72
    invoke-direct {p0, p1}, Lcom/weirdvoice/utils/TimerWrapper;->setContext(Lcom/weirdvoice/service/SipService;)V

    .line 73
    return-void
.end method

.method static synthetic access$0()Landroid/os/Looper;
    .locals 1

    .prologue
    .line 259
    invoke-static {}, Lcom/weirdvoice/utils/TimerWrapper;->createLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lcom/weirdvoice/utils/TimerWrapper;)Lcom/weirdvoice/service/SipWakeLock;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/weirdvoice/utils/TimerWrapper;->wakeLock:Lcom/weirdvoice/service/SipWakeLock;

    return-object v0
.end method

.method static synthetic access$2(Lcom/weirdvoice/utils/TimerWrapper;)Ljava/util/List;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/weirdvoice/utils/TimerWrapper;->scheduleEntries:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3(Lcom/weirdvoice/utils/TimerWrapper;)Ljava/util/List;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/weirdvoice/utils/TimerWrapper;->scheduleTimes:Ljava/util/List;

    return-object v0
.end method

.method public static cancel(II)I
    .locals 1
    .param p0, "entry"    # I
    .param p1, "entryId"    # I

    .prologue
    .line 256
    sget-object v0, Lcom/weirdvoice/utils/TimerWrapper;->singleton:Lcom/weirdvoice/utils/TimerWrapper;

    invoke-direct {v0, p1}, Lcom/weirdvoice/utils/TimerWrapper;->doCancel(I)I

    move-result v0

    return v0
.end method

.method public static create(Lcom/weirdvoice/service/SipService;)V
    .locals 2
    .param p0, "ctxt"    # Lcom/weirdvoice/service/SipService;

    .prologue
    .line 229
    sget-object v1, Lcom/weirdvoice/utils/TimerWrapper;->singletonLock:Ljava/lang/Object;

    monitor-enter v1

    .line 230
    :try_start_0
    sget-object v0, Lcom/weirdvoice/utils/TimerWrapper;->singleton:Lcom/weirdvoice/utils/TimerWrapper;

    if-nez v0, :cond_0

    .line 231
    new-instance v0, Lcom/weirdvoice/utils/TimerWrapper;

    invoke-direct {v0, p0}, Lcom/weirdvoice/utils/TimerWrapper;-><init>(Lcom/weirdvoice/service/SipService;)V

    sput-object v0, Lcom/weirdvoice/utils/TimerWrapper;->singleton:Lcom/weirdvoice/utils/TimerWrapper;

    .line 229
    :goto_0
    monitor-exit v1

    .line 236
    return-void

    .line 233
    :cond_0
    sget-object v0, Lcom/weirdvoice/utils/TimerWrapper;->singleton:Lcom/weirdvoice/utils/TimerWrapper;

    invoke-direct {v0, p0}, Lcom/weirdvoice/utils/TimerWrapper;->setContext(Lcom/weirdvoice/service/SipService;)V

    goto :goto_0

    .line 229
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static createLooper()Landroid/os/Looper;
    .locals 2

    .prologue
    .line 260
    sget-object v0, Lcom/weirdvoice/utils/TimerWrapper;->executorThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 261
    const-string v0, "Timer wrap"

    const-string v1, "Creating new handler thread"

    invoke-static {v0, v1}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SipTimers.Executor"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/weirdvoice/utils/TimerWrapper;->executorThread:Landroid/os/HandlerThread;

    .line 263
    sget-object v0, Lcom/weirdvoice/utils/TimerWrapper;->executorThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 265
    :cond_0
    sget-object v0, Lcom/weirdvoice/utils/TimerWrapper;->executorThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public static destroy()V
    .locals 2

    .prologue
    .line 240
    sget-object v1, Lcom/weirdvoice/utils/TimerWrapper;->singletonLock:Ljava/lang/Object;

    monitor-enter v1

    .line 241
    :try_start_0
    sget-object v0, Lcom/weirdvoice/utils/TimerWrapper;->singleton:Lcom/weirdvoice/utils/TimerWrapper;

    if-eqz v0, :cond_0

    .line 242
    sget-object v0, Lcom/weirdvoice/utils/TimerWrapper;->singleton:Lcom/weirdvoice/utils/TimerWrapper;

    invoke-direct {v0}, Lcom/weirdvoice/utils/TimerWrapper;->quit()V

    .line 240
    :cond_0
    monitor-exit v1

    .line 245
    return-void

    .line 240
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private declared-synchronized doCancel(I)I
    .locals 4
    .param p1, "entryId"    # I

    .prologue
    .line 190
    monitor-enter p0

    :try_start_0
    const-string v1, "Timer wrap"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cancel timer "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/weirdvoice/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    iget-object v1, p0, Lcom/weirdvoice/utils/TimerWrapper;->alarmManager:Landroid/app/AlarmManager;

    invoke-direct {p0, p1}, Lcom/weirdvoice/utils/TimerWrapper;->getPendingIntentForTimer(I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 192
    iget-object v1, p0, Lcom/weirdvoice/utils/TimerWrapper;->scheduleEntries:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 193
    .local v0, "existingReg":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 194
    iget-object v1, p0, Lcom/weirdvoice/utils/TimerWrapper;->scheduleEntries:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 195
    iget-object v1, p0, Lcom/weirdvoice/utils/TimerWrapper;->scheduleTimes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    const/4 v1, 0x1

    .line 198
    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 190
    .end local v0    # "existingReg":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized doSchedule(II)I
    .locals 8
    .param p1, "entryId"    # I
    .param p2, "intervalMs"    # I

    .prologue
    .line 158
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 160
    .local v2, "firstTime":J
    const/16 v5, 0xa

    if-ge p2, v5, :cond_1

    .line 161
    const-wide/16 v6, 0xa

    add-long/2addr v2, v6

    .line 166
    :goto_0
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {p0, p1, v5}, Lcom/weirdvoice/utils/TimerWrapper;->getPendingIntentForTimer(ILjava/lang/Long;)Landroid/app/PendingIntent;

    move-result-object v4

    .line 171
    .local v4, "pendingIntent":Landroid/app/PendingIntent;
    const/4 v0, 0x2

    .line 174
    .local v0, "alarmType":I
    iget-object v5, p0, Lcom/weirdvoice/utils/TimerWrapper;->alarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v5, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 175
    iget-object v5, p0, Lcom/weirdvoice/utils/TimerWrapper;->scheduleEntries:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 176
    .local v1, "existingReg":I
    const/4 v5, -0x1

    if-eq v1, v5, :cond_0

    .line 177
    iget-object v5, p0, Lcom/weirdvoice/utils/TimerWrapper;->scheduleEntries:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 178
    iget-object v5, p0, Lcom/weirdvoice/utils/TimerWrapper;->scheduleTimes:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 182
    :cond_0
    const-string v5, "Timer wrap"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Schedule timer "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms @ "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/weirdvoice/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object v5, p0, Lcom/weirdvoice/utils/TimerWrapper;->alarmManager:Landroid/app/AlarmManager;

    invoke-static {v5, v0, v2, v3, v4}, Lcom/weirdvoice/utils/Compatibility;->setExactAlarm(Landroid/app/AlarmManager;IJLandroid/app/PendingIntent;)V

    .line 184
    iget-object v5, p0, Lcom/weirdvoice/utils/TimerWrapper;->scheduleEntries:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    iget-object v5, p0, Lcom/weirdvoice/utils/TimerWrapper;->scheduleTimes:Ljava/util/List;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    const/4 v5, 0x1

    monitor-exit p0

    return v5

    .line 163
    .end local v0    # "alarmType":I
    .end local v1    # "existingReg":I
    .end local v4    # "pendingIntent":Landroid/app/PendingIntent;
    :cond_1
    int-to-long v6, p2

    add-long/2addr v2, v6

    goto :goto_0

    .line 158
    .end local v2    # "firstTime":J
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method private getExecutor()Lcom/weirdvoice/utils/TimerWrapper$SipTimersExecutor;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/weirdvoice/utils/TimerWrapper;->mExecutor:Lcom/weirdvoice/utils/TimerWrapper$SipTimersExecutor;

    if-nez v0, :cond_0

    .line 271
    new-instance v0, Lcom/weirdvoice/utils/TimerWrapper$SipTimersExecutor;

    invoke-direct {v0, p0}, Lcom/weirdvoice/utils/TimerWrapper$SipTimersExecutor;-><init>(Lcom/weirdvoice/utils/TimerWrapper;)V

    iput-object v0, p0, Lcom/weirdvoice/utils/TimerWrapper;->mExecutor:Lcom/weirdvoice/utils/TimerWrapper$SipTimersExecutor;

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/weirdvoice/utils/TimerWrapper;->mExecutor:Lcom/weirdvoice/utils/TimerWrapper$SipTimersExecutor;

    return-object v0
.end method

.method private getPendingIntentForTimer(I)Landroid/app/PendingIntent;
    .locals 1
    .param p1, "entryId"    # I

    .prologue
    .line 141
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/weirdvoice/utils/TimerWrapper;->getPendingIntentForTimer(ILjava/lang/Long;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private getPendingIntentForTimer(ILjava/lang/Long;)Landroid/app/PendingIntent;
    .locals 5
    .param p1, "entryId"    # I
    .param p2, "expires"    # Ljava/lang/Long;

    .prologue
    .line 145
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.weirdvoice.PJ_TIMER"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 146
    .local v0, "intent":Landroid/content/Intent;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "timer://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 147
    .local v1, "toSend":Ljava/lang/String;
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 148
    const-string v2, "entry"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 149
    if-eqz p2, :cond_0

    .line 150
    const-string v2, "expires"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 152
    :cond_0
    iget-object v2, p0, Lcom/weirdvoice/utils/TimerWrapper;->service:Lcom/weirdvoice/service/SipService;

    const/4 v3, 0x0

    const/high16 v4, 0x10000000

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    return-object v2
.end method

.method private declared-synchronized quit()V
    .locals 5

    .prologue
    .line 95
    monitor-enter p0

    :try_start_0
    const-string v2, "Timer wrap"

    const-string v3, "Quit this wrapper"

    invoke-static {v2, v3}, Lcom/weirdvoice/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-boolean v2, p0, Lcom/weirdvoice/utils/TimerWrapper;->serviceRegistered:Z

    if-eqz v2, :cond_0

    .line 97
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/weirdvoice/utils/TimerWrapper;->serviceRegistered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    :try_start_1
    iget-object v2, p0, Lcom/weirdvoice/utils/TimerWrapper;->service:Lcom/weirdvoice/service/SipService;

    invoke-virtual {v2, p0}, Lcom/weirdvoice/service/SipService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    :cond_0
    :goto_0
    :try_start_2
    iget-object v2, p0, Lcom/weirdvoice/utils/TimerWrapper;->wakeLock:Lcom/weirdvoice/service/SipWakeLock;

    if-eqz v2, :cond_1

    .line 116
    iget-object v2, p0, Lcom/weirdvoice/utils/TimerWrapper;->wakeLock:Lcom/weirdvoice/service/SipWakeLock;

    invoke-virtual {v2}, Lcom/weirdvoice/service/SipWakeLock;->reset()V

    .line 119
    :cond_1
    iget-object v2, p0, Lcom/weirdvoice/utils/TimerWrapper;->alarmManager:Landroid/app/AlarmManager;

    if-eqz v2, :cond_2

    .line 120
    iget-object v2, p0, Lcom/weirdvoice/utils/TimerWrapper;->scheduleEntries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    .line 124
    :cond_2
    iget-object v2, p0, Lcom/weirdvoice/utils/TimerWrapper;->scheduleEntries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 125
    iget-object v2, p0, Lcom/weirdvoice/utils/TimerWrapper;->scheduleTimes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 128
    monitor-exit p0

    return-void

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_3
    const-string v2, "Timer wrap"

    const-string v3, "Impossible to destroy timer wrapper"

    invoke-static {v2, v3, v0}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 95
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 120
    :cond_3
    :try_start_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 121
    .local v1, "entryId":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/weirdvoice/utils/TimerWrapper;->alarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/weirdvoice/utils/TimerWrapper;->getPendingIntentForTimer(I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public static schedule(III)I
    .locals 2
    .param p0, "entry"    # I
    .param p1, "entryId"    # I
    .param p2, "time"    # I

    .prologue
    .line 248
    sget-object v0, Lcom/weirdvoice/utils/TimerWrapper;->singleton:Lcom/weirdvoice/utils/TimerWrapper;

    if-nez v0, :cond_0

    .line 249
    const-string v0, "Timer wrap"

    const-string v1, "Timer NOT initialized"

    invoke-static {v0, v1}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const/4 v0, -0x1

    .line 252
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/weirdvoice/utils/TimerWrapper;->singleton:Lcom/weirdvoice/utils/TimerWrapper;

    invoke-direct {v0, p1, p2}, Lcom/weirdvoice/utils/TimerWrapper;->doSchedule(II)I

    move-result v0

    goto :goto_0
.end method

.method private declared-synchronized setContext(Lcom/weirdvoice/service/SipService;)V
    .locals 3
    .param p1, "ctxt"    # Lcom/weirdvoice/service/SipService;

    .prologue
    .line 77
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/weirdvoice/utils/TimerWrapper;->service:Lcom/weirdvoice/service/SipService;

    if-eq v1, p1, :cond_0

    .line 79
    invoke-direct {p0}, Lcom/weirdvoice/utils/TimerWrapper;->quit()V

    .line 81
    iput-object p1, p0, Lcom/weirdvoice/utils/TimerWrapper;->service:Lcom/weirdvoice/service/SipService;

    .line 82
    iget-object v1, p0, Lcom/weirdvoice/utils/TimerWrapper;->service:Lcom/weirdvoice/service/SipService;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Lcom/weirdvoice/service/SipService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Lcom/weirdvoice/utils/TimerWrapper;->alarmManager:Landroid/app/AlarmManager;

    .line 83
    new-instance v2, Lcom/weirdvoice/service/SipWakeLock;

    const-string v1, "power"

    invoke-virtual {p1, v1}, Lcom/weirdvoice/service/SipService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    invoke-direct {v2, v1}, Lcom/weirdvoice/service/SipWakeLock;-><init>(Landroid/os/PowerManager;)V

    iput-object v2, p0, Lcom/weirdvoice/utils/TimerWrapper;->wakeLock:Lcom/weirdvoice/service/SipWakeLock;

    .line 85
    :cond_0
    iget-boolean v1, p0, Lcom/weirdvoice/utils/TimerWrapper;->serviceRegistered:Z

    if-nez v1, :cond_1

    .line 86
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.weirdvoice.PJ_TIMER"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 87
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "timer"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 88
    iget-object v1, p0, Lcom/weirdvoice/utils/TimerWrapper;->service:Lcom/weirdvoice/service/SipService;

    invoke-virtual {v1, p0, v0}, Lcom/weirdvoice/service/SipService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 89
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/weirdvoice/utils/TimerWrapper;->serviceRegistered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_1
    monitor-exit p0

    return-void

    .line 77
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v6, 0x0

    .line 208
    const-string v1, "com.weirdvoice.PJ_TIMER"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 209
    sget-object v1, Lcom/weirdvoice/utils/TimerWrapper;->singleton:Lcom/weirdvoice/utils/TimerWrapper;

    if-nez v1, :cond_1

    .line 210
    const-string v1, "Timer wrap"

    const-string v2, "Not found singleton"

    invoke-static {v1, v2}, Lcom/weirdvoice/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 213
    :cond_1
    const-string v1, "entry"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 214
    .local v0, "timerEntry":I
    const-string v1, "Timer wrap"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "FIRE Received TIMER "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "expires"

    invoke-virtual {p2, v3, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " vs "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/weirdvoice/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    sget-object v1, Lcom/weirdvoice/utils/TimerWrapper;->singleton:Lcom/weirdvoice/utils/TimerWrapper;

    const-string v2, "expires"

    invoke-virtual {p2, v2, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/weirdvoice/utils/TimerWrapper;->treatAlarm(IJ)V

    goto :goto_0
.end method

.method public treatAlarm(IJ)V
    .locals 2
    .param p1, "entry"    # I
    .param p2, "fireTime"    # J

    .prologue
    .line 220
    invoke-direct {p0}, Lcom/weirdvoice/utils/TimerWrapper;->getExecutor()Lcom/weirdvoice/utils/TimerWrapper$SipTimersExecutor;

    move-result-object v0

    new-instance v1, Lcom/weirdvoice/utils/TimerWrapper$TimerJob;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/weirdvoice/utils/TimerWrapper$TimerJob;-><init>(Lcom/weirdvoice/utils/TimerWrapper;IJ)V

    invoke-virtual {v0, v1}, Lcom/weirdvoice/utils/TimerWrapper$SipTimersExecutor;->execute(Ljava/lang/Runnable;)V

    .line 221
    return-void
.end method
