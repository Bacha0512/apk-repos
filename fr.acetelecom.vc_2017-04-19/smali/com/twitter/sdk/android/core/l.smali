.class public Lcom/twitter/sdk/android/core/l;
.super Ljava/lang/Object;


# instance fields
.field final a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Class;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final b:Ld/m;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-static {}, Lcom/twitter/sdk/android/core/o;->a()Lcom/twitter/sdk/android/core/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/o;->h()Lcom/twitter/sdk/android/core/e;

    move-result-object v0

    invoke-static {}, Lcom/twitter/sdk/android/core/o;->a()Lcom/twitter/sdk/android/core/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/sdk/android/core/o;->c()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/twitter/sdk/android/core/internal/a/e;->a(Lcom/twitter/sdk/android/core/e;Ljavax/net/ssl/SSLSocketFactory;)Lb/w;

    move-result-object v0

    new-instance v1, Lcom/twitter/sdk/android/core/internal/d;

    invoke-direct {v1}, Lcom/twitter/sdk/android/core/internal/d;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/twitter/sdk/android/core/l;-><init>(Lb/w;Lcom/twitter/sdk/android/core/internal/d;)V

    return-void
.end method

.method constructor <init>(Lb/w;Lcom/twitter/sdk/android/core/internal/d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/twitter/sdk/android/core/l;->c()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/sdk/android/core/l;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, p1, p2}, Lcom/twitter/sdk/android/core/l;->a(Lb/w;Lcom/twitter/sdk/android/core/internal/d;)Ld/m;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/sdk/android/core/l;->b:Ld/m;

    return-void
.end method

.method public constructor <init>(Lcom/twitter/sdk/android/core/s;)V
    .locals 2

    invoke-static {}, Lcom/twitter/sdk/android/core/o;->a()Lcom/twitter/sdk/android/core/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/o;->b()Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    move-result-object v0

    invoke-static {}, Lcom/twitter/sdk/android/core/o;->a()Lcom/twitter/sdk/android/core/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/sdk/android/core/o;->c()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/twitter/sdk/android/core/internal/a/e;->a(Lcom/twitter/sdk/android/core/j;Lcom/twitter/sdk/android/core/TwitterAuthConfig;Ljavax/net/ssl/SSLSocketFactory;)Lb/w;

    move-result-object v0

    new-instance v1, Lcom/twitter/sdk/android/core/internal/d;

    invoke-direct {v1}, Lcom/twitter/sdk/android/core/internal/d;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/twitter/sdk/android/core/l;-><init>(Lb/w;Lcom/twitter/sdk/android/core/internal/d;)V

    return-void
.end method

.method private a(Lb/w;Lcom/twitter/sdk/android/core/internal/d;)Ld/m;
    .locals 2

    new-instance v0, Ld/m$a;

    invoke-direct {v0}, Ld/m$a;-><init>()V

    invoke-virtual {v0, p1}, Ld/m$a;->a(Lb/w;)Ld/m$a;

    move-result-object v0

    invoke-virtual {p2}, Lcom/twitter/sdk/android/core/internal/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ld/m$a;->a(Ljava/lang/String;)Ld/m$a;

    move-result-object v0

    invoke-direct {p0}, Lcom/twitter/sdk/android/core/l;->b()Lcom/google/a/f;

    move-result-object v1

    invoke-static {v1}, Ld/a/a/a;->a(Lcom/google/a/f;)Ld/a/a/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Ld/m$a;->a(Ld/e$a;)Ld/m$a;

    move-result-object v0

    invoke-virtual {v0}, Ld/m$a;->a()Ld/m;

    move-result-object v0

    return-object v0
.end method

.method private b()Lcom/google/a/f;
    .locals 3

    new-instance v0, Lcom/google/a/g;

    invoke-direct {v0}, Lcom/google/a/g;-><init>()V

    new-instance v1, Lcom/twitter/sdk/android/core/a/f;

    invoke-direct {v1}, Lcom/twitter/sdk/android/core/a/f;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/a/g;->a(Lcom/google/a/x;)Lcom/google/a/g;

    move-result-object v0

    new-instance v1, Lcom/twitter/sdk/android/core/a/g;

    invoke-direct {v1}, Lcom/twitter/sdk/android/core/a/g;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/a/g;->a(Lcom/google/a/x;)Lcom/google/a/g;

    move-result-object v0

    const-class v1, Lcom/twitter/sdk/android/core/a/c;

    new-instance v2, Lcom/twitter/sdk/android/core/a/d;

    invoke-direct {v2}, Lcom/twitter/sdk/android/core/a/d;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/a/g;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/g;->a()Lcom/google/a/f;

    move-result-object v0

    return-object v0
.end method

.method private c()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/twitter/sdk/android/core/services/AccountService;
    .locals 1

    const-class v0, Lcom/twitter/sdk/android/core/services/AccountService;

    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/core/l;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/services/AccountService;

    return-object v0
.end method

.method protected a(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/twitter/sdk/android/core/l;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/twitter/sdk/android/core/l;->a:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lcom/twitter/sdk/android/core/l;->b:Ld/m;

    invoke-virtual {v1, p1}, Ld/m;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/twitter/sdk/android/core/l;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
