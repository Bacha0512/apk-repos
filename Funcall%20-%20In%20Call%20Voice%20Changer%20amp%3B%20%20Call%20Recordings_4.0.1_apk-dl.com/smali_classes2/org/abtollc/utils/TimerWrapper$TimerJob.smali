.class Lorg/abtollc/utils/TimerWrapper$TimerJob;
.super Ljava/lang/Thread;
.source "TimerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/abtollc/utils/TimerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimerJob"
.end annotation


# instance fields
.field private final entryId:I

.field final synthetic this$0:Lorg/abtollc/utils/TimerWrapper;


# direct methods
.method public constructor <init>(Lorg/abtollc/utils/TimerWrapper;I)V
    .locals 1
    .param p2, "anEntry"    # I

    .prologue
    .line 223
    iput-object p1, p0, Lorg/abtollc/utils/TimerWrapper$TimerJob;->this$0:Lorg/abtollc/utils/TimerWrapper;

    .line 224
    const-string v0, "TimerJob"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 225
    iput p2, p0, Lorg/abtollc/utils/TimerWrapper$TimerJob;->entryId:I

    .line 226
    # getter for: Lorg/abtollc/utils/TimerWrapper;->wakeLock:Lorg/abtollc/service/SipWakeLock;
    invoke-static {p1}, Lorg/abtollc/utils/TimerWrapper;->access$000(Lorg/abtollc/utils/TimerWrapper;)Lorg/abtollc/service/SipWakeLock;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/abtollc/service/SipWakeLock;->acquire(Ljava/lang/Object;)V

    .line 227
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 233
    const-string v2, "Timer wrap"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FIRE START "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lorg/abtollc/utils/TimerWrapper$TimerJob;->entryId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/abtollc/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const/4 v0, 0x0

    .line 238
    .local v0, "doFire":Z
    :try_start_0
    iget-object v3, p0, Lorg/abtollc/utils/TimerWrapper$TimerJob;->this$0:Lorg/abtollc/utils/TimerWrapper;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 239
    :try_start_1
    iget-object v2, p0, Lorg/abtollc/utils/TimerWrapper$TimerJob;->this$0:Lorg/abtollc/utils/TimerWrapper;

    # getter for: Lorg/abtollc/utils/TimerWrapper;->scheduleEntries:Ljava/util/List;
    invoke-static {v2}, Lorg/abtollc/utils/TimerWrapper;->access$100(Lorg/abtollc/utils/TimerWrapper;)Ljava/util/List;

    move-result-object v2

    iget v4, p0, Lorg/abtollc/utils/TimerWrapper$TimerJob;->entryId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 240
    iget-object v2, p0, Lorg/abtollc/utils/TimerWrapper$TimerJob;->this$0:Lorg/abtollc/utils/TimerWrapper;

    # getter for: Lorg/abtollc/utils/TimerWrapper;->scheduleEntries:Ljava/util/List;
    invoke-static {v2}, Lorg/abtollc/utils/TimerWrapper;->access$100(Lorg/abtollc/utils/TimerWrapper;)Ljava/util/List;

    move-result-object v2

    iget v4, p0, Lorg/abtollc/utils/TimerWrapper$TimerJob;->entryId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 241
    const/4 v0, 0x1

    .line 243
    :cond_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 244
    if-eqz v0, :cond_1

    .line 245
    :try_start_2
    iget v2, p0, Lorg/abtollc/utils/TimerWrapper$TimerJob;->entryId:I

    invoke-static {v2}, Lorg/abtollc/jni/pjsua;->pj_timer_fire(I)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 252
    :goto_0
    iget-object v2, p0, Lorg/abtollc/utils/TimerWrapper$TimerJob;->this$0:Lorg/abtollc/utils/TimerWrapper;

    # getter for: Lorg/abtollc/utils/TimerWrapper;->wakeLock:Lorg/abtollc/service/SipWakeLock;
    invoke-static {v2}, Lorg/abtollc/utils/TimerWrapper;->access$000(Lorg/abtollc/utils/TimerWrapper;)Lorg/abtollc/service/SipWakeLock;

    move-result-object v2

    invoke-virtual {v2, p0}, Lorg/abtollc/service/SipWakeLock;->release(Ljava/lang/Object;)V

    .line 254
    :goto_1
    const-string v2, "Timer wrap"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FIRE DONE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lorg/abtollc/utils/TimerWrapper$TimerJob;->entryId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/abtollc/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    return-void

    .line 243
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 249
    :catch_0
    move-exception v1

    .line 250
    .local v1, "e":Ljava/lang/Exception;
    :try_start_5
    const-string v2, "Timer wrap"

    const-string v3, "Native error "

    invoke-static {v2, v3, v1}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 252
    iget-object v2, p0, Lorg/abtollc/utils/TimerWrapper$TimerJob;->this$0:Lorg/abtollc/utils/TimerWrapper;

    # getter for: Lorg/abtollc/utils/TimerWrapper;->wakeLock:Lorg/abtollc/service/SipWakeLock;
    invoke-static {v2}, Lorg/abtollc/utils/TimerWrapper;->access$000(Lorg/abtollc/utils/TimerWrapper;)Lorg/abtollc/service/SipWakeLock;

    move-result-object v2

    invoke-virtual {v2, p0}, Lorg/abtollc/service/SipWakeLock;->release(Ljava/lang/Object;)V

    goto :goto_1

    .line 247
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_6
    const-string v2, "Timer wrap"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fire from old run "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lorg/abtollc/utils/TimerWrapper$TimerJob;->entryId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/abtollc/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0

    .line 252
    :catchall_1
    move-exception v2

    iget-object v3, p0, Lorg/abtollc/utils/TimerWrapper$TimerJob;->this$0:Lorg/abtollc/utils/TimerWrapper;

    # getter for: Lorg/abtollc/utils/TimerWrapper;->wakeLock:Lorg/abtollc/service/SipWakeLock;
    invoke-static {v3}, Lorg/abtollc/utils/TimerWrapper;->access$000(Lorg/abtollc/utils/TimerWrapper;)Lorg/abtollc/service/SipWakeLock;

    move-result-object v3

    invoke-virtual {v3, p0}, Lorg/abtollc/service/SipWakeLock;->release(Ljava/lang/Object;)V

    throw v2
.end method
