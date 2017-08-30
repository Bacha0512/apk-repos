.class final Lcom/google/firebase/storage/zzw;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T",
        "ListenerType:Ljava/lang/Object;",
        "TResult::",
        "Lcom/google/firebase/storage/StorageTask$ProvideError;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final zzcpA:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<TT",
            "ListenerType;",
            ">;"
        }
    .end annotation
.end field

.field private final zzcpB:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<TT",
            "ListenerType;",
            "Lcom/google/android/gms/internal/aby;",
            ">;"
        }
    .end annotation
.end field

.field private zzcpC:Lcom/google/firebase/storage/StorageTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/storage/StorageTask",
            "<TTResult;>;"
        }
    .end annotation
.end field

.field private zzcpD:I

.field private zzcpE:Lcom/google/firebase/storage/zzaa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/storage/zzaa",
            "<TT",
            "ListenerType;",
            "TTResult;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/firebase/storage/StorageTask;ILcom/google/firebase/storage/zzaa;)V
    .locals 1
    .param p1    # Lcom/google/firebase/storage/StorageTask;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/firebase/storage/zzaa;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/storage/StorageTask",
            "<TTResult;>;I",
            "Lcom/google/firebase/storage/zzaa",
            "<TT",
            "ListenerType;",
            "TTResult;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/storage/zzw;->zzcpA:Ljava/util/Queue;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/storage/zzw;->zzcpB:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/google/firebase/storage/zzw;->zzcpC:Lcom/google/firebase/storage/StorageTask;

    iput p2, p0, Lcom/google/firebase/storage/zzw;->zzcpD:I

    iput-object p3, p0, Lcom/google/firebase/storage/zzw;->zzcpE:Lcom/google/firebase/storage/zzaa;

    return-void
.end method

.method static synthetic zza(Lcom/google/firebase/storage/zzw;)Lcom/google/firebase/storage/zzaa;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/storage/zzw;->zzcpE:Lcom/google/firebase/storage/zzaa;

    return-object v0
.end method


# virtual methods
.method public final zzKZ()V
    .locals 5

    iget-object v0, p0, Lcom/google/firebase/storage/zzw;->zzcpC:Lcom/google/firebase/storage/StorageTask;

    invoke-virtual {v0}, Lcom/google/firebase/storage/StorageTask;->zzKR()I

    move-result v0

    iget v1, p0, Lcom/google/firebase/storage/zzw;->zzcpD:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/storage/zzw;->zzcpC:Lcom/google/firebase/storage/StorageTask;

    invoke-virtual {v0}, Lcom/google/firebase/storage/StorageTask;->zzKS()Lcom/google/firebase/storage/StorageTask$ProvideError;

    move-result-object v1

    iget-object v0, p0, Lcom/google/firebase/storage/zzw;->zzcpA:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    iget-object v0, p0, Lcom/google/firebase/storage/zzw;->zzcpB:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/aby;

    if-eqz v0, :cond_0

    new-instance v4, Lcom/google/firebase/storage/zzz;

    invoke-direct {v4, p0, v3, v1}, Lcom/google/firebase/storage/zzz;-><init>(Lcom/google/firebase/storage/zzw;Ljava/lang/Object;Lcom/google/firebase/storage/StorageTask$ProvideError;)V

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/aby;->zzw(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final zza(Landroid/app/Activity;Ljava/util/concurrent/Executor;Ljava/lang/Object;)V
    .locals 7
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/concurrent/Executor;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/concurrent/Executor;",
            "TT",
            "ListenerType;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p3}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/firebase/storage/zzw;->zzcpC:Lcom/google/firebase/storage/StorageTask;

    iget-object v3, v2, Lcom/google/firebase/storage/StorageTask;->mSyncObject:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/google/firebase/storage/zzw;->zzcpC:Lcom/google/firebase/storage/StorageTask;

    invoke-virtual {v2}, Lcom/google/firebase/storage/StorageTask;->zzKR()I

    move-result v2

    iget v4, p0, Lcom/google/firebase/storage/zzw;->zzcpD:I

    and-int/2addr v2, v4

    if-eqz v2, :cond_4

    move v2, v0

    :goto_0
    iget-object v4, p0, Lcom/google/firebase/storage/zzw;->zzcpA:Ljava/util/Queue;

    invoke-interface {v4, p3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/google/android/gms/internal/aby;

    invoke-direct {v4, p2}, Lcom/google/android/gms/internal/aby;-><init>(Ljava/util/concurrent/Executor;)V

    iget-object v5, p0, Lcom/google/firebase/storage/zzw;->zzcpB:Ljava/util/HashMap;

    invoke-virtual {v5, p3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_1

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x11

    if-lt v5, v6, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v5

    if-nez v5, :cond_3

    :goto_1
    const-string v1, "Activity is already destroyed!"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzbo;->zzb(ZLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/abr;->zzLc()Lcom/google/android/gms/internal/abr;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/storage/zzx;

    invoke-direct {v1, p0, p3}, Lcom/google/firebase/storage/zzx;-><init>(Lcom/google/firebase/storage/zzw;Ljava/lang/Object;)V

    invoke-virtual {v0, p1, p3, v1}, Lcom/google/android/gms/internal/abr;->zza(Landroid/app/Activity;Ljava/lang/Object;Ljava/lang/Runnable;)V

    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/google/firebase/storage/zzw;->zzcpC:Lcom/google/firebase/storage/StorageTask;

    invoke-virtual {v0}, Lcom/google/firebase/storage/StorageTask;->zzKS()Lcom/google/firebase/storage/StorageTask$ProvideError;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/storage/zzy;

    invoke-direct {v1, p0, p3, v0}, Lcom/google/firebase/storage/zzy;-><init>(Lcom/google/firebase/storage/zzw;Ljava/lang/Object;Lcom/google/firebase/storage/StorageTask$ProvideError;)V

    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/aby;->zzw(Ljava/lang/Runnable;)V

    :cond_2
    return-void

    :cond_3
    move v0, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_4
    move v2, v1

    goto :goto_0
.end method

.method public final zzat(Ljava/lang/Object;)V
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT",
            "ListenerType;",
            ")V"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/firebase/storage/zzw;->zzcpC:Lcom/google/firebase/storage/StorageTask;

    iget-object v1, v0, Lcom/google/firebase/storage/StorageTask;->mSyncObject:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/storage/zzw;->zzcpB:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/firebase/storage/zzw;->zzcpA:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/google/android/gms/internal/abr;->zzLc()Lcom/google/android/gms/internal/abr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/abr;->zzau(Ljava/lang/Object;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
