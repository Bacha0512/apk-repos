.class public Lorg/abtollc/utils/TimerWrapper;
.super Landroid/content/BroadcastReceiver;
.source "TimerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/abtollc/utils/TimerWrapper$TimerJob;
    }
.end annotation


# static fields
.field private static final EXTRA_TIMER_ENTRY:Ljava/lang/String; = "entry"

.field private static final EXTRA_TIMER_SCHEME:Ljava/lang/String; = "timer"

.field private static final THIS_FILE:Ljava/lang/String; = "Timer wrap"

.field private static final TIMER_ACTION:Ljava/lang/String; = "org.abtollc.PJ_TIMER"

.field private static singleton:Lorg/abtollc/utils/TimerWrapper;

.field private static final singletonLock:Ljava/lang/Object;


# instance fields
.field private alarmManager:Landroid/app/AlarmManager;

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

.field private service:Lorg/abtollc/service/ABTOSipService;

.field private serviceRegistered:Z

.field private wakeLock:Lorg/abtollc/service/SipWakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 184
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/abtollc/utils/TimerWrapper;->singletonLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lorg/abtollc/service/ABTOSipService;)V
    .locals 1
    .param p1, "ctxt"    # Lorg/abtollc/service/ABTOSipService;

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/abtollc/utils/TimerWrapper;->serviceRegistered:Z

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/abtollc/utils/TimerWrapper;->scheduleEntries:Ljava/util/List;

    .line 42
    invoke-direct {p0, p1}, Lorg/abtollc/utils/TimerWrapper;->setContext(Lorg/abtollc/service/ABTOSipService;)V

    .line 43
    return-void
.end method

.method static synthetic access$000(Lorg/abtollc/utils/TimerWrapper;)Lorg/abtollc/service/SipWakeLock;
    .locals 1
    .param p0, "x0"    # Lorg/abtollc/utils/TimerWrapper;

    .prologue
    .line 22
    iget-object v0, p0, Lorg/abtollc/utils/TimerWrapper;->wakeLock:Lorg/abtollc/service/SipWakeLock;

    return-object v0
.end method

.method static synthetic access$100(Lorg/abtollc/utils/TimerWrapper;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/abtollc/utils/TimerWrapper;

    .prologue
    .line 22
    iget-object v0, p0, Lorg/abtollc/utils/TimerWrapper;->scheduleEntries:Ljava/util/List;

    return-object v0
.end method

.method public static cancel(II)I
    .locals 1
    .param p0, "entry"    # I
    .param p1, "entryId"    # I

    .prologue
    .line 216
    sget-object v0, Lorg/abtollc/utils/TimerWrapper;->singleton:Lorg/abtollc/utils/TimerWrapper;

    invoke-direct {v0, p0, p1}, Lorg/abtollc/utils/TimerWrapper;->doCancel(II)I

    move-result v0

    return v0
.end method

.method public static create(Lorg/abtollc/service/ABTOSipService;)V
    .locals 2
    .param p0, "ctxt"    # Lorg/abtollc/service/ABTOSipService;

    .prologue
    .line 188
    sget-object v1, Lorg/abtollc/utils/TimerWrapper;->singletonLock:Ljava/lang/Object;

    monitor-enter v1

    .line 189
    :try_start_0
    sget-object v0, Lorg/abtollc/utils/TimerWrapper;->singleton:Lorg/abtollc/utils/TimerWrapper;

    if-nez v0, :cond_0

    .line 190
    new-instance v0, Lorg/abtollc/utils/TimerWrapper;

    invoke-direct {v0, p0}, Lorg/abtollc/utils/TimerWrapper;-><init>(Lorg/abtollc/service/ABTOSipService;)V

    sput-object v0, Lorg/abtollc/utils/TimerWrapper;->singleton:Lorg/abtollc/utils/TimerWrapper;

    .line 194
    :goto_0
    monitor-exit v1

    .line 195
    return-void

    .line 192
    :cond_0
    sget-object v0, Lorg/abtollc/utils/TimerWrapper;->singleton:Lorg/abtollc/utils/TimerWrapper;

    invoke-direct {v0, p0}, Lorg/abtollc/utils/TimerWrapper;->setContext(Lorg/abtollc/service/ABTOSipService;)V

    goto :goto_0

    .line 194
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static destroy()V
    .locals 2

    .prologue
    .line 199
    sget-object v1, Lorg/abtollc/utils/TimerWrapper;->singletonLock:Ljava/lang/Object;

    monitor-enter v1

    .line 200
    :try_start_0
    sget-object v0, Lorg/abtollc/utils/TimerWrapper;->singleton:Lorg/abtollc/utils/TimerWrapper;

    if-eqz v0, :cond_0

    .line 201
    sget-object v0, Lorg/abtollc/utils/TimerWrapper;->singleton:Lorg/abtollc/utils/TimerWrapper;

    invoke-direct {v0}, Lorg/abtollc/utils/TimerWrapper;->quit()V

    .line 203
    :cond_0
    monitor-exit v1

    .line 204
    return-void

    .line 203
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private declared-synchronized doCancel(II)I
    .locals 3
    .param p1, "entry"    # I
    .param p2, "entryId"    # I

    .prologue
    .line 152
    monitor-enter p0

    :try_start_0
    const-string v0, "Timer wrap"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cancel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/abtollc/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lorg/abtollc/utils/TimerWrapper;->alarmManager:Landroid/app/AlarmManager;

    invoke-direct {p0, p1, p2}, Lorg/abtollc/utils/TimerWrapper;->getPendingIntentForTimer(II)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 154
    iget-object v0, p0, Lorg/abtollc/utils/TimerWrapper;->scheduleEntries:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 152
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized doSchedule(III)I
    .locals 7
    .param p1, "entry"    # I
    .param p2, "entryId"    # I
    .param p3, "intervalMs"    # I

    .prologue
    .line 119
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lorg/abtollc/utils/TimerWrapper;->getPendingIntentForTimer(II)Landroid/app/PendingIntent;

    move-result-object v1

    .line 123
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    const/4 v0, 0x2

    .line 126
    .local v0, "alarmType":I
    iget-object v4, p0, Lorg/abtollc/utils/TimerWrapper;->alarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v4, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 127
    iget-object v4, p0, Lorg/abtollc/utils/TimerWrapper;->scheduleEntries:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 130
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 132
    .local v2, "firstTime":J
    const/16 v4, 0xa

    if-ge p3, v4, :cond_0

    .line 133
    const-wide/16 v4, 0xa

    add-long/2addr v2, v4

    .line 139
    :goto_0
    const-string v4, "Timer wrap"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Schedule "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/abtollc/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-lt v4, v5, :cond_1

    .line 142
    iget-object v4, p0, Lorg/abtollc/utils/TimerWrapper;->alarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v4, v0, v2, v3, v1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 147
    :goto_1
    iget-object v4, p0, Lorg/abtollc/utils/TimerWrapper;->scheduleEntries:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    const/4 v4, 0x1

    monitor-exit p0

    return v4

    .line 135
    :cond_0
    int-to-long v4, p3

    add-long/2addr v2, v4

    goto :goto_0

    .line 144
    :cond_1
    :try_start_1
    iget-object v4, p0, Lorg/abtollc/utils/TimerWrapper;->alarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v4, v0, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 119
    .end local v0    # "alarmType":I
    .end local v1    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v2    # "firstTime":J
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private getPendingIntentForTimer(II)Landroid/app/PendingIntent;
    .locals 5
    .param p1, "entry"    # I
    .param p2, "entryId"    # I

    .prologue
    .line 109
    new-instance v0, Landroid/content/Intent;

    const-string v2, "org.abtollc.PJ_TIMER"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 110
    .local v0, "intent":Landroid/content/Intent;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "timer://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, "toSend":Ljava/lang/String;
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 112
    const-string v2, "entry"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 113
    iget-object v2, p0, Lorg/abtollc/utils/TimerWrapper;->service:Lorg/abtollc/service/ABTOSipService;

    const/4 v3, 0x0

    const/high16 v4, 0x10000000

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    return-object v2
.end method

.method private declared-synchronized quit()V
    .locals 6

    .prologue
    .line 65
    monitor-enter p0

    :try_start_0
    const-string v2, "Timer wrap"

    const-string v3, "Quit this wrapper"

    invoke-static {v2, v3}, Lorg/abtollc/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-boolean v2, p0, Lorg/abtollc/utils/TimerWrapper;->serviceRegistered:Z

    if-eqz v2, :cond_0

    .line 67
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/abtollc/utils/TimerWrapper;->serviceRegistered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    :try_start_1
    iget-object v2, p0, Lorg/abtollc/utils/TimerWrapper;->service:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v2, p0}, Lorg/abtollc/service/ABTOSipService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    :cond_0
    :goto_0
    :try_start_2
    iget-object v2, p0, Lorg/abtollc/utils/TimerWrapper;->wakeLock:Lorg/abtollc/service/SipWakeLock;

    if-eqz v2, :cond_1

    .line 86
    iget-object v2, p0, Lorg/abtollc/utils/TimerWrapper;->wakeLock:Lorg/abtollc/service/SipWakeLock;

    invoke-virtual {v2}, Lorg/abtollc/service/SipWakeLock;->reset()V

    .line 89
    :cond_1
    iget-object v2, p0, Lorg/abtollc/utils/TimerWrapper;->alarmManager:Landroid/app/AlarmManager;

    if-eqz v2, :cond_2

    .line 90
    iget-object v2, p0, Lorg/abtollc/utils/TimerWrapper;->scheduleEntries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 91
    .local v1, "entry":Ljava/lang/Integer;
    iget-object v3, p0, Lorg/abtollc/utils/TimerWrapper;->alarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, v4, v5}, Lorg/abtollc/utils/TimerWrapper;->getPendingIntentForTimer(II)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 65
    .end local v1    # "entry":Ljava/lang/Integer;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_3
    const-string v2, "Timer wrap"

    const-string v3, "Impossible to destroy timer wrapper"

    invoke-static {v2, v3, v0}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 96
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_2
    monitor-exit p0

    return-void
.end method

.method public static schedule(III)I
    .locals 2
    .param p0, "entry"    # I
    .param p1, "entryId"    # I
    .param p2, "time"    # I

    .prologue
    .line 208
    sget-object v0, Lorg/abtollc/utils/TimerWrapper;->singleton:Lorg/abtollc/utils/TimerWrapper;

    if-nez v0, :cond_0

    .line 209
    const-string v0, "Timer wrap"

    const-string v1, "Timer NOT initialized"

    invoke-static {v0, v1}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const/4 v0, -0x1

    .line 212
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lorg/abtollc/utils/TimerWrapper;->singleton:Lorg/abtollc/utils/TimerWrapper;

    invoke-direct {v0, p0, p1, p2}, Lorg/abtollc/utils/TimerWrapper;->doSchedule(III)I

    move-result v0

    goto :goto_0
.end method

.method private declared-synchronized setContext(Lorg/abtollc/service/ABTOSipService;)V
    .locals 3
    .param p1, "ctxt"    # Lorg/abtollc/service/ABTOSipService;

    .prologue
    .line 47
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/abtollc/utils/TimerWrapper;->service:Lorg/abtollc/service/ABTOSipService;

    if-eq v1, p1, :cond_0

    .line 49
    invoke-direct {p0}, Lorg/abtollc/utils/TimerWrapper;->quit()V

    .line 51
    iput-object p1, p0, Lorg/abtollc/utils/TimerWrapper;->service:Lorg/abtollc/service/ABTOSipService;

    .line 52
    iget-object v1, p0, Lorg/abtollc/utils/TimerWrapper;->service:Lorg/abtollc/service/ABTOSipService;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Lorg/abtollc/service/ABTOSipService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Lorg/abtollc/utils/TimerWrapper;->alarmManager:Landroid/app/AlarmManager;

    .line 53
    new-instance v2, Lorg/abtollc/service/SipWakeLock;

    const-string v1, "power"

    invoke-virtual {p1, v1}, Lorg/abtollc/service/ABTOSipService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    invoke-direct {v2, v1}, Lorg/abtollc/service/SipWakeLock;-><init>(Landroid/os/PowerManager;)V

    iput-object v2, p0, Lorg/abtollc/utils/TimerWrapper;->wakeLock:Lorg/abtollc/service/SipWakeLock;

    .line 55
    :cond_0
    iget-boolean v1, p0, Lorg/abtollc/utils/TimerWrapper;->serviceRegistered:Z

    if-nez v1, :cond_1

    .line 56
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "org.abtollc.PJ_TIMER"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 57
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "timer"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 58
    iget-object v1, p0, Lorg/abtollc/utils/TimerWrapper;->service:Lorg/abtollc/service/ABTOSipService;

    invoke-virtual {v1, p0, v0}, Lorg/abtollc/service/ABTOSipService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 59
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/abtollc/utils/TimerWrapper;->serviceRegistered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_1
    monitor-exit p0

    return-void

    .line 47
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 164
    const-string v1, "org.abtollc.PJ_TIMER"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 165
    const-string v1, "Timer wrap"

    const-string v2, "FIRE Received..."

    invoke-static {v1, v2}, Lorg/abtollc/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    sget-object v1, Lorg/abtollc/utils/TimerWrapper;->singleton:Lorg/abtollc/utils/TimerWrapper;

    if-nez v1, :cond_1

    .line 167
    const-string v1, "Timer wrap"

    const-string v2, "Not found singleton"

    invoke-static {v1, v2}, Lorg/abtollc/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    const-string v1, "entry"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 172
    .local v0, "timerEntry":I
    const-string v1, "Timer wrap"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Treat "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/abtollc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    sget-object v1, Lorg/abtollc/utils/TimerWrapper;->singleton:Lorg/abtollc/utils/TimerWrapper;

    invoke-virtual {v1, v0}, Lorg/abtollc/utils/TimerWrapper;->treatAlarm(I)V

    goto :goto_0
.end method

.method public treatAlarm(I)V
    .locals 1
    .param p1, "entry"    # I

    .prologue
    .line 178
    new-instance v0, Lorg/abtollc/utils/TimerWrapper$TimerJob;

    invoke-direct {v0, p0, p1}, Lorg/abtollc/utils/TimerWrapper$TimerJob;-><init>(Lorg/abtollc/utils/TimerWrapper;I)V

    .line 179
    .local v0, "t":Lorg/abtollc/utils/TimerWrapper$TimerJob;
    invoke-virtual {v0}, Lorg/abtollc/utils/TimerWrapper$TimerJob;->start()V

    .line 180
    return-void
.end method
