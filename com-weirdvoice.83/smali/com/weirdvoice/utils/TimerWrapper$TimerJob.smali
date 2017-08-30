.class Lcom/weirdvoice/utils/TimerWrapper$TimerJob;
.super Ljava/lang/Object;
.source "TimerWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/weirdvoice/utils/TimerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimerJob"
.end annotation


# instance fields
.field private final entryId:I

.field private final fireTime:J

.field final synthetic this$0:Lcom/weirdvoice/utils/TimerWrapper;


# direct methods
.method public constructor <init>(Lcom/weirdvoice/utils/TimerWrapper;IJ)V
    .locals 1
    .param p2, "anEntry"    # I
    .param p3, "aFireTime"    # J

    .prologue
    .line 311
    iput-object p1, p0, Lcom/weirdvoice/utils/TimerWrapper$TimerJob;->this$0:Lcom/weirdvoice/utils/TimerWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 312
    iput p2, p0, Lcom/weirdvoice/utils/TimerWrapper$TimerJob;->entryId:I

    .line 313
    iput-wide p3, p0, Lcom/weirdvoice/utils/TimerWrapper$TimerJob;->fireTime:J

    .line 314
    # getter for: Lcom/weirdvoice/utils/TimerWrapper;->wakeLock:Lcom/weirdvoice/service/SipWakeLock;
    invoke-static {p1}, Lcom/weirdvoice/utils/TimerWrapper;->access$1(Lcom/weirdvoice/utils/TimerWrapper;)Lcom/weirdvoice/service/SipWakeLock;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/weirdvoice/service/SipWakeLock;->acquire(Ljava/lang/Object;)V

    .line 315
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 320
    const-string v3, "Timer wrap"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "FIRE START "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/weirdvoice/utils/TimerWrapper$TimerJob;->entryId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/weirdvoice/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    const/4 v0, 0x0

    .line 323
    .local v0, "doFire":Z
    :try_start_0
    iget-object v4, p0, Lcom/weirdvoice/utils/TimerWrapper$TimerJob;->this$0:Lcom/weirdvoice/utils/TimerWrapper;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 324
    :try_start_1
    iget-object v3, p0, Lcom/weirdvoice/utils/TimerWrapper$TimerJob;->this$0:Lcom/weirdvoice/utils/TimerWrapper;

    # getter for: Lcom/weirdvoice/utils/TimerWrapper;->scheduleEntries:Ljava/util/List;
    invoke-static {v3}, Lcom/weirdvoice/utils/TimerWrapper;->access$2(Lcom/weirdvoice/utils/TimerWrapper;)Ljava/util/List;

    move-result-object v3

    iget v5, p0, Lcom/weirdvoice/utils/TimerWrapper$TimerJob;->entryId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 325
    .local v2, "existingReg":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 326
    iget-object v3, p0, Lcom/weirdvoice/utils/TimerWrapper$TimerJob;->this$0:Lcom/weirdvoice/utils/TimerWrapper;

    # getter for: Lcom/weirdvoice/utils/TimerWrapper;->scheduleTimes:Ljava/util/List;
    invoke-static {v3}, Lcom/weirdvoice/utils/TimerWrapper;->access$3(Lcom/weirdvoice/utils/TimerWrapper;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/weirdvoice/utils/TimerWrapper$TimerJob;->fireTime:J

    cmp-long v3, v6, v8

    if-nez v3, :cond_0

    .line 327
    const/4 v0, 0x1

    .line 328
    iget-object v3, p0, Lcom/weirdvoice/utils/TimerWrapper$TimerJob;->this$0:Lcom/weirdvoice/utils/TimerWrapper;

    # getter for: Lcom/weirdvoice/utils/TimerWrapper;->scheduleEntries:Ljava/util/List;
    invoke-static {v3}, Lcom/weirdvoice/utils/TimerWrapper;->access$2(Lcom/weirdvoice/utils/TimerWrapper;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 329
    iget-object v3, p0, Lcom/weirdvoice/utils/TimerWrapper$TimerJob;->this$0:Lcom/weirdvoice/utils/TimerWrapper;

    # getter for: Lcom/weirdvoice/utils/TimerWrapper;->scheduleTimes:Ljava/util/List;
    invoke-static {v3}, Lcom/weirdvoice/utils/TimerWrapper;->access$3(Lcom/weirdvoice/utils/TimerWrapper;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 323
    :cond_0
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 333
    if-eqz v0, :cond_1

    .line 334
    :try_start_2
    iget v3, p0, Lcom/weirdvoice/utils/TimerWrapper$TimerJob;->entryId:I

    invoke-static {v3}, Lorg/pjsip/pjsua/pjsua;->pj_timer_fire(I)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 341
    :goto_0
    iget-object v3, p0, Lcom/weirdvoice/utils/TimerWrapper$TimerJob;->this$0:Lcom/weirdvoice/utils/TimerWrapper;

    # getter for: Lcom/weirdvoice/utils/TimerWrapper;->wakeLock:Lcom/weirdvoice/service/SipWakeLock;
    invoke-static {v3}, Lcom/weirdvoice/utils/TimerWrapper;->access$1(Lcom/weirdvoice/utils/TimerWrapper;)Lcom/weirdvoice/service/SipWakeLock;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/weirdvoice/service/SipWakeLock;->release(Ljava/lang/Object;)V

    .line 343
    .end local v2    # "existingReg":I
    :goto_1
    const-string v3, "Timer wrap"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "FIRE DONE "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/weirdvoice/utils/TimerWrapper$TimerJob;->entryId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/weirdvoice/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    return-void

    .line 323
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 338
    :catch_0
    move-exception v1

    .line 339
    .local v1, "e":Ljava/lang/Exception;
    :try_start_5
    const-string v3, "Timer wrap"

    const-string v4, "Native error "

    invoke-static {v3, v4, v1}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 341
    iget-object v3, p0, Lcom/weirdvoice/utils/TimerWrapper$TimerJob;->this$0:Lcom/weirdvoice/utils/TimerWrapper;

    # getter for: Lcom/weirdvoice/utils/TimerWrapper;->wakeLock:Lcom/weirdvoice/service/SipWakeLock;
    invoke-static {v3}, Lcom/weirdvoice/utils/TimerWrapper;->access$1(Lcom/weirdvoice/utils/TimerWrapper;)Lcom/weirdvoice/service/SipWakeLock;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/weirdvoice/service/SipWakeLock;->release(Ljava/lang/Object;)V

    goto :goto_1

    .line 336
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "existingReg":I
    :cond_1
    :try_start_6
    const-string v3, "Timer wrap"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Fire from old run "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/weirdvoice/utils/TimerWrapper$TimerJob;->entryId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/weirdvoice/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0

    .line 340
    .end local v2    # "existingReg":I
    :catchall_1
    move-exception v3

    .line 341
    iget-object v4, p0, Lcom/weirdvoice/utils/TimerWrapper$TimerJob;->this$0:Lcom/weirdvoice/utils/TimerWrapper;

    # getter for: Lcom/weirdvoice/utils/TimerWrapper;->wakeLock:Lcom/weirdvoice/service/SipWakeLock;
    invoke-static {v4}, Lcom/weirdvoice/utils/TimerWrapper;->access$1(Lcom/weirdvoice/utils/TimerWrapper;)Lcom/weirdvoice/service/SipWakeLock;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/weirdvoice/service/SipWakeLock;->release(Ljava/lang/Object;)V

    .line 342
    throw v3
.end method
