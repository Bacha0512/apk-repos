.class final Lcom/tapjoy/internal/er$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tapjoy/TJPlacementListener;
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/er;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/internal/er;

.field private final b:Ljava/lang/Object;

.field private final c:Lcom/tapjoy/internal/eg;

.field private volatile d:Z

.field private e:Lcom/tapjoy/TJPlacement;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/er;Ljava/lang/Object;)V
    .locals 4

    new-instance v0, Lcom/tapjoy/internal/eg;

    const-wide/16 v2, 0x2710

    invoke-direct {v0, v2, v3}, Lcom/tapjoy/internal/eg;-><init>(J)V

    invoke-direct {p0, p1, p2, v0}, Lcom/tapjoy/internal/er$a;-><init>(Lcom/tapjoy/internal/er;Ljava/lang/Object;Lcom/tapjoy/internal/eg;)V

    return-void
.end method

.method constructor <init>(Lcom/tapjoy/internal/er;Ljava/lang/Object;Lcom/tapjoy/internal/eg;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/internal/er$a;->a:Lcom/tapjoy/internal/er;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/tapjoy/internal/er$a;->b:Ljava/lang/Object;

    iput-object p3, p0, Lcom/tapjoy/internal/er$a;->c:Lcom/tapjoy/internal/eg;

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/er$a;->a:Lcom/tapjoy/internal/er;

    iget-object v1, p0, Lcom/tapjoy/internal/er$a;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/er;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-nez p1, :cond_1

    const-string v1, "SystemPlacement"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Placement "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " is presented now"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/internal/er$a;->d:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/internal/er$a;->e:Lcom/tapjoy/TJPlacement;

    sget-object v0, Lcom/tapjoy/internal/eo;->a:Lcom/tapjoy/internal/eo$a;

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/eo$a;->deleteObserver(Ljava/util/Observer;)V

    sget-object v0, Lcom/tapjoy/internal/eo;->e:Lcom/tapjoy/internal/eo$a;

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/eo$a;->deleteObserver(Ljava/util/Observer;)V

    sget-object v0, Lcom/tapjoy/internal/eo;->c:Lcom/tapjoy/internal/eo$a;

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/eo$a;->deleteObserver(Ljava/util/Observer;)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/tapjoy/internal/er$a;->a:Lcom/tapjoy/internal/er;

    monitor-enter v1

    :try_start_1
    iget-object v0, v1, Lcom/tapjoy/internal/er;->b:Lcom/tapjoy/internal/er$a;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    iput-object v0, v1, Lcom/tapjoy/internal/er;->b:Lcom/tapjoy/internal/er$a;

    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :cond_1
    :try_start_2
    const-string v1, "SystemPlacement"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot show placement "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " now ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method


# virtual methods
.method final a()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/tapjoy/internal/er$a;->d:Z

    if-eqz v0, :cond_0

    monitor-exit p0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/er$a;->c:Lcom/tapjoy/internal/eg;

    invoke-virtual {v0}, Lcom/tapjoy/internal/eg;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Timed out"

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/er$a;->a(Ljava/lang/String;)V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->isConnected()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/tapjoy/internal/eo;->a:Lcom/tapjoy/internal/eo$a;

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/eo$a;->addObserver(Ljava/util/Observer;)V

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->isConnected()Z

    move-result v0

    if-nez v0, :cond_2

    monitor-exit p0

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/tapjoy/internal/eo;->a:Lcom/tapjoy/internal/eo$a;

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/eo$a;->deleteObserver(Ljava/util/Observer;)V

    :cond_3
    iget-object v0, p0, Lcom/tapjoy/internal/er$a;->e:Lcom/tapjoy/TJPlacement;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/tapjoy/internal/er$a;->a:Lcom/tapjoy/internal/er;

    invoke-virtual {v0}, Lcom/tapjoy/internal/er;->a()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "Cannot request"

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/er$a;->a(Ljava/lang/String;)V

    monitor-exit p0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/tapjoy/internal/er$a;->a:Lcom/tapjoy/internal/er;

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/er$a;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1, p0, v2}, Lcom/tapjoy/internal/er;->a(Landroid/content/Context;Lcom/tapjoy/TJPlacementListener;Ljava/lang/Object;)Lcom/tapjoy/TJPlacement;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/er$a;->e:Lcom/tapjoy/TJPlacement;

    iget-object v0, p0, Lcom/tapjoy/internal/er$a;->e:Lcom/tapjoy/TJPlacement;

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacement;->requestContent()V

    monitor-exit p0

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/tapjoy/internal/er$a;->e:Lcom/tapjoy/TJPlacement;

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacement;->isContentReady()Z

    move-result v0

    if-nez v0, :cond_6

    monitor-exit p0

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/tapjoy/internal/er$a;->a:Lcom/tapjoy/internal/er;

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/er;->a(Ljava/util/Observer;)Z

    move-result v0

    if-nez v0, :cond_7

    monitor-exit p0

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/tapjoy/internal/er$a;->e:Lcom/tapjoy/TJPlacement;

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacement;->showContent()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/er$a;->a(Ljava/lang/String;)V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public final onContentDismiss(Lcom/tapjoy/TJPlacement;)V
    .locals 0

    return-void
.end method

.method public final onContentReady(Lcom/tapjoy/TJPlacement;)V
    .locals 0

    invoke-virtual {p0}, Lcom/tapjoy/internal/er$a;->a()V

    return-void
.end method

.method public final onContentShow(Lcom/tapjoy/TJPlacement;)V
    .locals 0

    return-void
.end method

.method public final onPurchaseRequest(Lcom/tapjoy/TJPlacement;Lcom/tapjoy/TJActionRequest;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onRequestFailure(Lcom/tapjoy/TJPlacement;Lcom/tapjoy/TJError;)V
    .locals 1

    iget-object v0, p2, Lcom/tapjoy/TJError;->message:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/er$a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final onRequestSuccess(Lcom/tapjoy/TJPlacement;)V
    .locals 0

    return-void
.end method

.method public final onRewardRequest(Lcom/tapjoy/TJPlacement;Lcom/tapjoy/TJActionRequest;Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public final update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0}, Lcom/tapjoy/internal/er$a;->a()V

    return-void
.end method
