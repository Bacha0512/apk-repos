.class abstract Lcom/tapjoy/internal/er;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/er$a;
    }
.end annotation


# instance fields
.field volatile b:Lcom/tapjoy/internal/er$a;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a(Landroid/content/Context;Lcom/tapjoy/TJPlacementListener;Ljava/lang/Object;)Lcom/tapjoy/TJPlacement;
.end method

.method protected abstract a(Ljava/lang/Object;)Ljava/lang/String;
.end method

.method protected a()Z
    .locals 1

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->isFullScreenViewOpen()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Ljava/util/Observer;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->isFullScreenViewOpen()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/tapjoy/internal/eo;->e:Lcom/tapjoy/internal/eo$a;

    invoke-virtual {v1, p1}, Lcom/tapjoy/internal/eo$a;->addObserver(Ljava/util/Observer;)V

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->isFullScreenViewOpen()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/tapjoy/internal/eo;->e:Lcom/tapjoy/internal/eo$a;

    invoke-virtual {v1, p1}, Lcom/tapjoy/internal/eo$a;->deleteObserver(Ljava/util/Observer;)V

    :cond_2
    invoke-static {}, Lcom/tapjoy/internal/fm;->a()Lcom/tapjoy/internal/fm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tapjoy/internal/fm;->d()Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/tapjoy/internal/eo;->c:Lcom/tapjoy/internal/eo$a;

    invoke-virtual {v1, p1}, Lcom/tapjoy/internal/eo$a;->addObserver(Ljava/util/Observer;)V

    invoke-static {}, Lcom/tapjoy/internal/fm;->a()Lcom/tapjoy/internal/fm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tapjoy/internal/fm;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/tapjoy/internal/eo;->c:Lcom/tapjoy/internal/eo$a;

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/eo$a;->deleteObserver(Ljava/util/Observer;)V

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected b(Ljava/lang/Object;)Lcom/tapjoy/internal/er$a;
    .locals 1

    new-instance v0, Lcom/tapjoy/internal/er$a;

    invoke-direct {v0, p0, p1}, Lcom/tapjoy/internal/er$a;-><init>(Lcom/tapjoy/internal/er;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final c(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/tapjoy/internal/er;->a()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/tapjoy/internal/er;->b:Lcom/tapjoy/internal/er$a;

    if-nez v2, :cond_2

    invoke-virtual {p0, p1}, Lcom/tapjoy/internal/er;->b(Ljava/lang/Object;)Lcom/tapjoy/internal/er$a;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/er;->b:Lcom/tapjoy/internal/er$a;

    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/tapjoy/internal/er$a;->a()V

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
