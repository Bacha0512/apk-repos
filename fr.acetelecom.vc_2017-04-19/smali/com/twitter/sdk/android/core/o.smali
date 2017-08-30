.class public Lcom/twitter/sdk/android/core/o;
.super La/a/a/a/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "La/a/a/a/i",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/twitter/sdk/android/core/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/sdk/android/core/k",
            "<",
            "Lcom/twitter/sdk/android/core/s;",
            ">;"
        }
    .end annotation
.end field

.field b:Lcom/twitter/sdk/android/core/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/sdk/android/core/k",
            "<",
            "Lcom/twitter/sdk/android/core/d;",
            ">;"
        }
    .end annotation
.end field

.field c:Lcom/twitter/sdk/android/core/internal/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/sdk/android/core/internal/b",
            "<",
            "Lcom/twitter/sdk/android/core/s;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

.field private final k:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Lcom/twitter/sdk/android/core/j;",
            "Lcom/twitter/sdk/android/core/l;",
            ">;"
        }
    .end annotation
.end field

.field private volatile l:Lcom/twitter/sdk/android/core/l;

.field private volatile m:Lcom/twitter/sdk/android/core/e;

.field private volatile n:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method public constructor <init>(Lcom/twitter/sdk/android/core/TwitterAuthConfig;)V
    .locals 2

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/twitter/sdk/android/core/o;-><init>(Lcom/twitter/sdk/android/core/TwitterAuthConfig;Ljava/util/concurrent/ConcurrentHashMap;Lcom/twitter/sdk/android/core/l;)V

    return-void
.end method

.method constructor <init>(Lcom/twitter/sdk/android/core/TwitterAuthConfig;Ljava/util/concurrent/ConcurrentHashMap;Lcom/twitter/sdk/android/core/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/TwitterAuthConfig;",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Lcom/twitter/sdk/android/core/j;",
            "Lcom/twitter/sdk/android/core/l;",
            ">;",
            "Lcom/twitter/sdk/android/core/l;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, La/a/a/a/i;-><init>()V

    iput-object p1, p0, Lcom/twitter/sdk/android/core/o;->j:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    iput-object p2, p0, Lcom/twitter/sdk/android/core/o;->k:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object p3, p0, Lcom/twitter/sdk/android/core/o;->l:Lcom/twitter/sdk/android/core/l;

    return-void
.end method

.method public static a()Lcom/twitter/sdk/android/core/o;
    .locals 1

    invoke-static {}, Lcom/twitter/sdk/android/core/o;->k()V

    const-class v0, Lcom/twitter/sdk/android/core/o;

    invoke-static {v0}, La/a/a/a/c;->a(Ljava/lang/Class;)La/a/a/a/i;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/o;

    return-object v0
.end method

.method private declared-synchronized i()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/twitter/sdk/android/core/o;->n:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    new-instance v0, Lcom/twitter/sdk/android/core/q;

    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/o;->w()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/twitter/sdk/android/core/q;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, La/a/a/a/a/e/f;->a(La/a/a/a/a/e/g;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/sdk/android/core/o;->n:Ljavax/net/ssl/SSLSocketFactory;

    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v0

    const-string v1, "Twitter"

    const-string v2, "Custom SSL pinning enabled"

    invoke-interface {v0, v1, v2}, La/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, La/a/a/a/c;->h()La/a/a/a/l;

    move-result-object v1

    const-string v2, "Twitter"

    const-string v3, "Exception setting up custom SSL pinning"

    invoke-interface {v1, v2, v3, v0}, La/a/a/a/l;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static k()V
    .locals 2

    const-class v0, Lcom/twitter/sdk/android/core/o;

    invoke-static {v0}, La/a/a/a/c;->a(Ljava/lang/Class;)La/a/a/a/i;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must start Twitter Kit with Fabric.with() first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private l()V
    .locals 3

    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/o;->f()Lcom/twitter/sdk/android/core/k;

    move-result-object v0

    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/o;->h()Lcom/twitter/sdk/android/core/e;

    move-result-object v1

    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/o;->v()La/a/a/a/a/b/m;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcom/twitter/sdk/android/core/internal/scribe/l;->a(Lcom/twitter/sdk/android/core/o;Lcom/twitter/sdk/android/core/k;Lcom/twitter/sdk/android/core/e;La/a/a/a/a/b/m;)V

    return-void
.end method

.method private declared-synchronized m()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/twitter/sdk/android/core/o;->m:Lcom/twitter/sdk/android/core/e;

    if-nez v0, :cond_0

    new-instance v0, Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service;

    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/o;->c()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    new-instance v2, Lcom/twitter/sdk/android/core/internal/d;

    invoke-direct {v2}, Lcom/twitter/sdk/android/core/internal/d;-><init>()V

    invoke-direct {v0, p0, v1, v2}, Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service;-><init>(Lcom/twitter/sdk/android/core/o;Ljavax/net/ssl/SSLSocketFactory;Lcom/twitter/sdk/android/core/internal/d;)V

    new-instance v1, Lcom/twitter/sdk/android/core/e;

    iget-object v2, p0, Lcom/twitter/sdk/android/core/o;->b:Lcom/twitter/sdk/android/core/k;

    invoke-direct {v1, v0, v2}, Lcom/twitter/sdk/android/core/e;-><init>(Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service;Lcom/twitter/sdk/android/core/k;)V

    iput-object v1, p0, Lcom/twitter/sdk/android/core/o;->m:Lcom/twitter/sdk/android/core/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public b()Lcom/twitter/sdk/android/core/TwitterAuthConfig;
    .locals 1

    iget-object v0, p0, Lcom/twitter/sdk/android/core/o;->j:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    return-object v0
.end method

.method public c()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    invoke-static {}, Lcom/twitter/sdk/android/core/o;->k()V

    iget-object v0, p0, Lcom/twitter/sdk/android/core/o;->n:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/twitter/sdk/android/core/o;->i()V

    :cond_0
    iget-object v0, p0, Lcom/twitter/sdk/android/core/o;->n:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "2.3.0.163"

    return-object v0
.end method

.method protected e()Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lcom/twitter/sdk/android/core/o;->a:Lcom/twitter/sdk/android/core/k;

    invoke-interface {v0}, Lcom/twitter/sdk/android/core/k;->c()Lcom/twitter/sdk/android/core/j;

    iget-object v0, p0, Lcom/twitter/sdk/android/core/o;->b:Lcom/twitter/sdk/android/core/k;

    invoke-interface {v0}, Lcom/twitter/sdk/android/core/k;->c()Lcom/twitter/sdk/android/core/j;

    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/o;->c()Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/o;->h()Lcom/twitter/sdk/android/core/e;

    invoke-direct {p0}, Lcom/twitter/sdk/android/core/o;->l()V

    iget-object v0, p0, Lcom/twitter/sdk/android/core/o;->c:Lcom/twitter/sdk/android/core/internal/b;

    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/o;->x()La/a/a/a/c;

    move-result-object v1

    invoke-virtual {v1}, La/a/a/a/c;->e()La/a/a/a/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/internal/b;->a(La/a/a/a/a;)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public f()Lcom/twitter/sdk/android/core/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/twitter/sdk/android/core/k",
            "<",
            "Lcom/twitter/sdk/android/core/s;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/twitter/sdk/android/core/o;->k()V

    iget-object v0, p0, Lcom/twitter/sdk/android/core/o;->a:Lcom/twitter/sdk/android/core/k;

    return-object v0
.end method

.method protected g()Z
    .locals 5

    new-instance v0, Lcom/twitter/sdk/android/core/internal/a;

    invoke-direct {v0}, Lcom/twitter/sdk/android/core/internal/a;-><init>()V

    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/o;->w()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/o;->j()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/o;->j()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "session_store"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".xml"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/sdk/android/core/internal/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/twitter/sdk/android/core/g;

    new-instance v1, La/a/a/a/a/f/c;

    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/o;->w()Landroid/content/Context;

    move-result-object v2

    const-string v3, "session_store"

    invoke-direct {v1, v2, v3}, La/a/a/a/a/f/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v2, Lcom/twitter/sdk/android/core/s$a;

    invoke-direct {v2}, Lcom/twitter/sdk/android/core/s$a;-><init>()V

    const-string v3, "active_twittersession"

    const-string v4, "twittersession"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/twitter/sdk/android/core/g;-><init>(La/a/a/a/a/f/b;La/a/a/a/a/f/e;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/twitter/sdk/android/core/o;->a:Lcom/twitter/sdk/android/core/k;

    new-instance v0, Lcom/twitter/sdk/android/core/g;

    new-instance v1, La/a/a/a/a/f/c;

    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/o;->w()Landroid/content/Context;

    move-result-object v2

    const-string v3, "session_store"

    invoke-direct {v1, v2, v3}, La/a/a/a/a/f/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v2, Lcom/twitter/sdk/android/core/d$a;

    invoke-direct {v2}, Lcom/twitter/sdk/android/core/d$a;-><init>()V

    const-string v3, "active_guestsession"

    const-string v4, "guestsession"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/twitter/sdk/android/core/g;-><init>(La/a/a/a/a/f/b;La/a/a/a/a/f/e;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/twitter/sdk/android/core/o;->b:Lcom/twitter/sdk/android/core/k;

    new-instance v0, Lcom/twitter/sdk/android/core/internal/b;

    iget-object v1, p0, Lcom/twitter/sdk/android/core/o;->a:Lcom/twitter/sdk/android/core/k;

    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/o;->x()La/a/a/a/c;

    move-result-object v2

    invoke-virtual {v2}, La/a/a/a/c;->f()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    new-instance v3, Lcom/twitter/sdk/android/core/internal/e;

    invoke-direct {v3}, Lcom/twitter/sdk/android/core/internal/e;-><init>()V

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/sdk/android/core/internal/b;-><init>(Lcom/twitter/sdk/android/core/k;Ljava/util/concurrent/ExecutorService;Lcom/twitter/sdk/android/core/internal/c;)V

    iput-object v0, p0, Lcom/twitter/sdk/android/core/o;->c:Lcom/twitter/sdk/android/core/internal/b;

    const/4 v0, 0x1

    return v0
.end method

.method public h()Lcom/twitter/sdk/android/core/e;
    .locals 1

    invoke-static {}, Lcom/twitter/sdk/android/core/o;->k()V

    iget-object v0, p0, Lcom/twitter/sdk/android/core/o;->m:Lcom/twitter/sdk/android/core/e;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/twitter/sdk/android/core/o;->m()V

    :cond_0
    iget-object v0, p0, Lcom/twitter/sdk/android/core/o;->m:Lcom/twitter/sdk/android/core/e;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    const-string v0, "com.twitter.sdk.android:twitter-core"

    return-object v0
.end method

.method protected synthetic t()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/o;->e()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
