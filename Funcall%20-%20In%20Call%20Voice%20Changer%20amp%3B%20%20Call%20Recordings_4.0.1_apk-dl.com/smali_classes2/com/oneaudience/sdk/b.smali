.class abstract Lcom/oneaudience/sdk/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneaudience/sdk/b$a;,
        Lcom/oneaudience/sdk/b$e;,
        Lcom/oneaudience/sdk/b$b;,
        Lcom/oneaudience/sdk/b$d;,
        Lcom/oneaudience/sdk/b$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final a:Ljava/util/concurrent/Executor;

.field public static final b:Ljava/util/concurrent/Executor;

.field public static final c:Ljava/util/concurrent/Executor;

.field private static final d:Ljava/lang/String;

.field private static final e:I

.field private static final f:I

.field private static final g:I

.field private static final h:Ljava/util/concurrent/ThreadFactory;

.field private static final i:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final j:Lcom/oneaudience/sdk/b$b;

.field private static volatile k:Ljava/util/concurrent/Executor;


# instance fields
.field private final l:Lcom/oneaudience/sdk/b$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneaudience/sdk/b$e",
            "<TParams;TResult;>;"
        }
    .end annotation
.end field

.field private final m:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask",
            "<TResult;>;"
        }
    .end annotation
.end field

.field private volatile n:Lcom/oneaudience/sdk/b$d;

.field private final o:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final p:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/4 v10, 0x0

    const-class v0, Lcom/oneaudience/sdk/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneaudience/sdk/b;->d:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/oneaudience/sdk/b;->e:I

    sget v0, Lcom/oneaudience/sdk/b;->e:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/oneaudience/sdk/b;->f:I

    sget v0, Lcom/oneaudience/sdk/b;->e:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/oneaudience/sdk/b;->g:I

    new-instance v0, Lcom/oneaudience/sdk/b$1;

    invoke-direct {v0}, Lcom/oneaudience/sdk/b$1;-><init>()V

    sput-object v0, Lcom/oneaudience/sdk/b;->h:Ljava/util/concurrent/ThreadFactory;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/oneaudience/sdk/b;->i:Ljava/util/concurrent/BlockingQueue;

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v2, Lcom/oneaudience/sdk/b;->f:I

    sget v3, Lcom/oneaudience/sdk/b;->g:I

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Lcom/oneaudience/sdk/b;->i:Ljava/util/concurrent/BlockingQueue;

    sget-object v8, Lcom/oneaudience/sdk/b;->h:Ljava/util/concurrent/ThreadFactory;

    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;

    invoke-direct {v9}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;-><init>()V

    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    sput-object v1, Lcom/oneaudience/sdk/b;->a:Ljava/util/concurrent/Executor;

    invoke-static {}, Lcom/oneaudience/sdk/b/b/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/oneaudience/sdk/b$c;

    invoke-direct {v0, v10}, Lcom/oneaudience/sdk/b$c;-><init>(Lcom/oneaudience/sdk/b$1;)V

    :goto_0
    sput-object v0, Lcom/oneaudience/sdk/b;->b:Ljava/util/concurrent/Executor;

    const/4 v0, 0x2

    sget-object v1, Lcom/oneaudience/sdk/b;->h:Ljava/util/concurrent/ThreadFactory;

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/oneaudience/sdk/b;->c:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/oneaudience/sdk/b$b;

    invoke-direct {v0, v10}, Lcom/oneaudience/sdk/b$b;-><init>(Lcom/oneaudience/sdk/b$1;)V

    sput-object v0, Lcom/oneaudience/sdk/b;->j:Lcom/oneaudience/sdk/b$b;

    sget-object v0, Lcom/oneaudience/sdk/b;->b:Ljava/util/concurrent/Executor;

    sput-object v0, Lcom/oneaudience/sdk/b;->k:Ljava/util/concurrent/Executor;

    return-void

    :cond_0
    sget-object v0, Lcom/oneaudience/sdk/b;->h:Ljava/util/concurrent/ThreadFactory;

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/oneaudience/sdk/b$d;->a:Lcom/oneaudience/sdk/b$d;

    iput-object v0, p0, Lcom/oneaudience/sdk/b;->n:Lcom/oneaudience/sdk/b$d;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/oneaudience/sdk/b;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/oneaudience/sdk/b;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/oneaudience/sdk/b$2;

    invoke-direct {v0, p0}, Lcom/oneaudience/sdk/b$2;-><init>(Lcom/oneaudience/sdk/b;)V

    iput-object v0, p0, Lcom/oneaudience/sdk/b;->l:Lcom/oneaudience/sdk/b$e;

    new-instance v0, Lcom/oneaudience/sdk/b$3;

    iget-object v1, p0, Lcom/oneaudience/sdk/b;->l:Lcom/oneaudience/sdk/b$e;

    invoke-direct {v0, p0, v1}, Lcom/oneaudience/sdk/b$3;-><init>(Lcom/oneaudience/sdk/b;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lcom/oneaudience/sdk/b;->m:Ljava/util/concurrent/FutureTask;

    return-void
.end method

.method static synthetic a(Lcom/oneaudience/sdk/b;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0, p1}, Lcom/oneaudience/sdk/b;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/oneaudience/sdk/b;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/oneaudience/sdk/b;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic b(Lcom/oneaudience/sdk/b;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneaudience/sdk/b;->c(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic c(Lcom/oneaudience/sdk/b;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneaudience/sdk/b;->e(Ljava/lang/Object;)V

    return-void
.end method

.method private c(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/oneaudience/sdk/b;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/oneaudience/sdk/b;->d(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)TResult;"
        }
    .end annotation

    const/4 v4, 0x1

    sget-object v0, Lcom/oneaudience/sdk/b;->j:Lcom/oneaudience/sdk/b$b;

    new-instance v1, Lcom/oneaudience/sdk/b$a;

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, p0, v2}, Lcom/oneaudience/sdk/b$a;-><init>(Lcom/oneaudience/sdk/b;[Ljava/lang/Object;)V

    invoke-virtual {v0, v4, v1}, Lcom/oneaudience/sdk/b$b;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-object p1
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/oneaudience/sdk/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method private e(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/oneaudience/sdk/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/oneaudience/sdk/b;->b(Ljava/lang/Object;)V

    :goto_0
    sget-object v0, Lcom/oneaudience/sdk/b$d;->c:Lcom/oneaudience/sdk/b$d;

    iput-object v0, p0, Lcom/oneaudience/sdk/b;->n:Lcom/oneaudience/sdk/b$d;

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/oneaudience/sdk/b;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public final varargs a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/oneaudience/sdk/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "[TParams;)",
            "Lcom/oneaudience/sdk/b",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/oneaudience/sdk/b;->n:Lcom/oneaudience/sdk/b$d;

    sget-object v1, Lcom/oneaudience/sdk/b$d;->a:Lcom/oneaudience/sdk/b$d;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/oneaudience/sdk/b$4;->a:[I

    iget-object v1, p0, Lcom/oneaudience/sdk/b;->n:Lcom/oneaudience/sdk/b$d;

    invoke-virtual {v1}, Lcom/oneaudience/sdk/b$d;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    sget-object v0, Lcom/oneaudience/sdk/b$d;->b:Lcom/oneaudience/sdk/b$d;

    iput-object v0, p0, Lcom/oneaudience/sdk/b;->n:Lcom/oneaudience/sdk/b$d;

    invoke-virtual {p0}, Lcom/oneaudience/sdk/b;->a()V

    iget-object v0, p0, Lcom/oneaudience/sdk/b;->l:Lcom/oneaudience/sdk/b$e;

    iput-object p2, v0, Lcom/oneaudience/sdk/b$e;->b:[Ljava/lang/Object;

    iget-object v0, p0, Lcom/oneaudience/sdk/b;->m:Ljava/util/concurrent/FutureTask;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object p0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task is already running."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task has already been executed (a task can be executed only once)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected varargs abstract a([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation
.end method

.method protected a()V
    .locals 0

    return-void
.end method

.method protected a(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    return-void
.end method

.method protected b()V
    .locals 0

    return-void
.end method

.method protected b(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/oneaudience/sdk/b;->b()V

    return-void
.end method

.method protected varargs b([Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    return-void
.end method

.method public final c()Z
    .locals 1

    iget-object v0, p0, Lcom/oneaudience/sdk/b;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method
