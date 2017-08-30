.class public La/a/a/a/a/c/a/h;
.super Ljava/util/concurrent/ScheduledThreadPoolExecutor;


# instance fields
.field private final a:La/a/a/a/a/c/a/f;

.field private final b:La/a/a/a/a/c/a/b;


# direct methods
.method public constructor <init>(ILa/a/a/a/a/c/a/f;La/a/a/a/a/c/a/b;)V
    .locals 1

    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2, p3}, La/a/a/a/a/c/a/h;-><init>(ILjava/util/concurrent/ThreadFactory;La/a/a/a/a/c/a/f;La/a/a/a/a/c/a/b;)V

    return-void
.end method

.method public constructor <init>(ILjava/util/concurrent/ThreadFactory;La/a/a/a/a/c/a/f;La/a/a/a/a/c/a/b;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "retry policy must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p4, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "backoff must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p3, p0, La/a/a/a/a/c/a/h;->a:La/a/a/a/a/c/a/f;

    iput-object p4, p0, La/a/a/a/a/c/a/h;->b:La/a/a/a/a/c/a/b;

    return-void
.end method

.method private a(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)",
            "Ljava/util/concurrent/Future",
            "<TT;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    new-instance v0, La/a/a/a/a/c/a/g;

    iget-object v1, p0, La/a/a/a/a/c/a/h;->b:La/a/a/a/a/c/a/b;

    iget-object v2, p0, La/a/a/a/a/c/a/h;->a:La/a/a/a/a/c/a/f;

    invoke-direct {v0, v1, v2}, La/a/a/a/a/c/a/g;-><init>(La/a/a/a/a/c/a/b;La/a/a/a/a/c/a/f;)V

    new-instance v1, La/a/a/a/a/c/a/e;

    invoke-direct {v1, p1, v0, p0}, La/a/a/a/a/c/a/e;-><init>(Ljava/util/concurrent/Callable;La/a/a/a/a/c/a/g;La/a/a/a/a/c/a/h;)V

    invoke-virtual {p0, v1}, La/a/a/a/a/c/a/h;->execute(Ljava/lang/Runnable;)V

    return-object v1
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/concurrent/Executors;->callable(Ljava/lang/Runnable;)Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-direct {p0, v0}, La/a/a/a/a/c/a/h;->a(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method
