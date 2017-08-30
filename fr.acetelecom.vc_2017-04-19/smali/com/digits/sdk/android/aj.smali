.class Lcom/digits/sdk/android/aj;
.super Ljava/lang/Object;


# instance fields
.field volatile a:Lcom/digits/sdk/android/ai;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/digits/sdk/android/ai",
            "<",
            "Lcom/digits/sdk/android/GuestAuthApiInterface;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/twitter/sdk/android/core/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/sdk/android/core/k",
            "<",
            "Lcom/digits/sdk/android/aw;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/digits/sdk/android/cc;

.field private final d:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Lcom/digits/sdk/android/aw;",
            "Lcom/digits/sdk/android/ai",
            "<",
            "Lcom/digits/sdk/android/UserAuthApiInterface;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/core/k;Lcom/digits/sdk/android/cc;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/k",
            "<",
            "Lcom/digits/sdk/android/aw;",
            ">;",
            "Lcom/digits/sdk/android/cc;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sessionManager must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/digits/sdk/android/aj;->d:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object p1, p0, Lcom/digits/sdk/android/aj;->b:Lcom/twitter/sdk/android/core/k;

    iput-object p2, p0, Lcom/digits/sdk/android/aj;->c:Lcom/digits/sdk/android/cc;

    return-void
.end method


# virtual methods
.method public a()Lcom/digits/sdk/android/ai;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/digits/sdk/android/ai",
            "<",
            "Lcom/digits/sdk/android/UserAuthApiInterface;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/digits/sdk/android/aj;->b:Lcom/twitter/sdk/android/core/k;

    invoke-interface {v0}, Lcom/twitter/sdk/android/core/k;->c()Lcom/twitter/sdk/android/core/j;

    move-result-object v0

    check-cast v0, Lcom/digits/sdk/android/aw;

    iget-object v1, p0, Lcom/digits/sdk/android/aj;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/digits/sdk/android/aj;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, v0}, Lcom/digits/sdk/android/aj;->a(Lcom/digits/sdk/android/aw;)Lcom/digits/sdk/android/ai;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Lcom/digits/sdk/android/aj;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/digits/sdk/android/ai;

    return-object v0
.end method

.method a(Lcom/digits/sdk/android/aw;)Lcom/digits/sdk/android/ai;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/digits/sdk/android/aw;",
            ")",
            "Lcom/digits/sdk/android/ai",
            "<",
            "Lcom/digits/sdk/android/UserAuthApiInterface;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/digits/sdk/android/aj;->c:Lcom/digits/sdk/android/cc;

    invoke-virtual {v0}, Lcom/digits/sdk/android/cc;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/digits/sdk/android/aj;->c:Lcom/digits/sdk/android/cc;

    invoke-virtual {v0}, Lcom/digits/sdk/android/cc;->b()Lcom/digits/sdk/android/e;

    move-result-object v0

    invoke-static {v0}, Lcom/digits/sdk/android/ai;->a(Ljava/lang/Object;)Lcom/digits/sdk/android/ai;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/twitter/sdk/android/core/o;->a()Lcom/twitter/sdk/android/core/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/o;->b()Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    move-result-object v0

    invoke-static {}, Lcom/twitter/sdk/android/core/o;->a()Lcom/twitter/sdk/android/core/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/sdk/android/core/o;->c()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/twitter/sdk/android/core/internal/a/e;->b(Lcom/twitter/sdk/android/core/j;Lcom/twitter/sdk/android/core/TwitterAuthConfig;Ljavax/net/ssl/SSLSocketFactory;)Lb/w$a;

    move-result-object v0

    new-instance v1, Lcom/digits/sdk/android/az;

    invoke-static {}, Lcom/digits/sdk/android/ay;->a()Lcom/digits/sdk/android/ay;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/digits/sdk/android/az;-><init>(Lcom/digits/sdk/android/ay;)V

    invoke-virtual {v0, v1}, Lb/w$a;->a(Lb/t;)Lb/w$a;

    move-result-object v0

    invoke-virtual {v0}, Lb/w$a;->a()Lb/w;

    move-result-object v1

    new-instance v0, Lcom/digits/sdk/android/ai;

    const-class v2, Lcom/digits/sdk/android/UserAuthApiInterface;

    invoke-direct {v0, v2, v1}, Lcom/digits/sdk/android/ai;-><init>(Ljava/lang/Class;Lb/w;)V

    goto :goto_0
.end method

.method public b()Lcom/digits/sdk/android/ai;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/digits/sdk/android/ai",
            "<",
            "Lcom/digits/sdk/android/GuestAuthApiInterface;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/digits/sdk/android/aj;->a:Lcom/digits/sdk/android/ai;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/digits/sdk/android/aj;->a:Lcom/digits/sdk/android/ai;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/digits/sdk/android/aj;->c()Lcom/digits/sdk/android/ai;

    move-result-object v0

    iput-object v0, p0, Lcom/digits/sdk/android/aj;->a:Lcom/digits/sdk/android/ai;

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v0, p0, Lcom/digits/sdk/android/aj;->a:Lcom/digits/sdk/android/ai;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method c()Lcom/digits/sdk/android/ai;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/digits/sdk/android/ai",
            "<",
            "Lcom/digits/sdk/android/GuestAuthApiInterface;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/digits/sdk/android/aj;->c:Lcom/digits/sdk/android/cc;

    invoke-virtual {v0}, Lcom/digits/sdk/android/cc;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/digits/sdk/android/aj;->c:Lcom/digits/sdk/android/cc;

    invoke-virtual {v0}, Lcom/digits/sdk/android/cc;->b()Lcom/digits/sdk/android/e;

    move-result-object v0

    invoke-static {v0}, Lcom/digits/sdk/android/ai;->a(Ljava/lang/Object;)Lcom/digits/sdk/android/ai;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/digits/sdk/android/ac;->a()Lcom/digits/sdk/android/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/digits/sdk/android/ac;->l()Lcom/twitter/sdk/android/core/e;

    move-result-object v0

    invoke-static {}, Lcom/twitter/sdk/android/core/o;->a()Lcom/twitter/sdk/android/core/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/sdk/android/core/o;->c()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/twitter/sdk/android/core/internal/a/e;->b(Lcom/twitter/sdk/android/core/e;Ljavax/net/ssl/SSLSocketFactory;)Lb/w$a;

    move-result-object v0

    new-instance v1, Lcom/digits/sdk/android/az;

    invoke-static {}, Lcom/digits/sdk/android/ay;->a()Lcom/digits/sdk/android/ay;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/digits/sdk/android/az;-><init>(Lcom/digits/sdk/android/ay;)V

    invoke-virtual {v0, v1}, Lb/w$a;->a(Lb/t;)Lb/w$a;

    move-result-object v0

    invoke-virtual {v0}, Lb/w$a;->a()Lb/w;

    move-result-object v1

    new-instance v0, Lcom/digits/sdk/android/ai;

    const-class v2, Lcom/digits/sdk/android/GuestAuthApiInterface;

    invoke-direct {v0, v2, v1}, Lcom/digits/sdk/android/ai;-><init>(Ljava/lang/Class;Lb/w;)V

    goto :goto_0
.end method
