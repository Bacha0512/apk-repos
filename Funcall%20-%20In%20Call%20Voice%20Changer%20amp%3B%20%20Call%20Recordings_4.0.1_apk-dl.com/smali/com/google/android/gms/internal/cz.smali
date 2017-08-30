.class public final Lcom/google/android/gms/internal/cz;
.super Ljava/lang/Object;


# instance fields
.field private mClosed:Z

.field private zzbEa:Ljava/lang/String;

.field private final zzbFY:Ljava/util/concurrent/ScheduledExecutorService;

.field private zzbGa:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/cz;-><init>(Ljava/util/concurrent/ScheduledExecutorService;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/cz;->zzbGa:Ljava/util/concurrent/ScheduledFuture;

    iput-object v0, p0, Lcom/google/android/gms/internal/cz;->zzbEa:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/cz;->zzbFY:Ljava/util/concurrent/ScheduledExecutorService;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/cz;->mClosed:Z

    return-void
.end method


# virtual methods
.method public final zza(Landroid/content/Context;Lcom/google/android/gms/internal/cl;JLcom/google/android/gms/internal/cc;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cz;->zzbGa:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/cz;->zzbGa:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/cy;

    invoke-direct {v0, p1, p2, p5}, Lcom/google/android/gms/internal/cy;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/cl;Lcom/google/android/gms/internal/cc;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/cz;->zzbFY:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/16 v2, 0x0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v0, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/cz;->zzbGa:Ljava/util/concurrent/ScheduledFuture;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
