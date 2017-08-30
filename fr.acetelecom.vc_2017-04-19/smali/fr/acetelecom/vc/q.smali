.class public Lfr/acetelecom/vc/q;
.super Ljava/lang/Object;


# direct methods
.method public static declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-class v0, Lfr/acetelecom/vc/q;

    monitor-enter v0

    monitor-exit v0

    return-void
.end method

.method public static declared-synchronized b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-class v1, Lfr/acetelecom/vc/q;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/crash/FirebaseCrash;->a(Ljava/lang/String;)V

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-class v0, Lfr/acetelecom/vc/q;

    monitor-enter v0

    monitor-exit v0

    return-void
.end method
