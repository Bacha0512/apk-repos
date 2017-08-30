.class public Lcom/twitter/sdk/android/core/e;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service;

.field private final b:Lcom/twitter/sdk/android/core/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/sdk/android/core/k",
            "<",
            "Lcom/twitter/sdk/android/core/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service;Lcom/twitter/sdk/android/core/k;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service;",
            "Lcom/twitter/sdk/android/core/k",
            "<",
            "Lcom/twitter/sdk/android/core/d;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/twitter/sdk/android/core/e;->a:Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service;

    iput-object p2, p0, Lcom/twitter/sdk/android/core/e;->b:Lcom/twitter/sdk/android/core/k;

    return-void
.end method

.method static synthetic a(Lcom/twitter/sdk/android/core/e;)Lcom/twitter/sdk/android/core/k;
    .locals 1

    iget-object v0, p0, Lcom/twitter/sdk/android/core/e;->b:Lcom/twitter/sdk/android/core/k;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a()Lcom/twitter/sdk/android/core/d;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/twitter/sdk/android/core/e;->b:Lcom/twitter/sdk/android/core/k;

    invoke-interface {v0}, Lcom/twitter/sdk/android/core/k;->c()Lcom/twitter/sdk/android/core/j;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/d;

    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/core/e;->b(Lcom/twitter/sdk/android/core/d;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/e;->b()V

    iget-object v0, p0, Lcom/twitter/sdk/android/core/e;->b:Lcom/twitter/sdk/android/core/k;

    invoke-interface {v0}, Lcom/twitter/sdk/android/core/k;->c()Lcom/twitter/sdk/android/core/j;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/d;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/twitter/sdk/android/core/d;)Lcom/twitter/sdk/android/core/d;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/twitter/sdk/android/core/e;->b:Lcom/twitter/sdk/android/core/k;

    invoke-interface {v0}, Lcom/twitter/sdk/android/core/k;->c()Lcom/twitter/sdk/android/core/j;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/d;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Lcom/twitter/sdk/android/core/d;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/e;->b()V

    :cond_0
    iget-object v0, p0, Lcom/twitter/sdk/android/core/e;->b:Lcom/twitter/sdk/android/core/k;

    invoke-interface {v0}, Lcom/twitter/sdk/android/core/k;->c()Lcom/twitter/sdk/android/core/j;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method b()V
    .locals 4

    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v0

    const-string v1, "GuestSessionProvider"

    const-string v2, "Refreshing expired guest session."

    invoke-interface {v0, v1, v2}, La/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iget-object v1, p0, Lcom/twitter/sdk/android/core/e;->a:Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service;

    new-instance v2, Lcom/twitter/sdk/android/core/e$1;

    invoke-direct {v2, p0, v0}, Lcom/twitter/sdk/android/core/e$1;-><init>(Lcom/twitter/sdk/android/core/e;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v1, v2}, Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service;->a(Lcom/twitter/sdk/android/core/c;)V

    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/twitter/sdk/android/core/e;->b:Lcom/twitter/sdk/android/core/k;

    const-wide/16 v2, 0x0

    invoke-interface {v0, v2, v3}, Lcom/twitter/sdk/android/core/k;->b(J)V

    goto :goto_0
.end method

.method b(Lcom/twitter/sdk/android/core/d;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/twitter/sdk/android/core/d;->d()Lcom/twitter/sdk/android/core/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/twitter/sdk/android/core/d;->d()Lcom/twitter/sdk/android/core/a;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/internal/oauth/GuestAuthToken;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/internal/oauth/GuestAuthToken;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
