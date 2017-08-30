.class public abstract Lcom/google/firebase/storage/StorageTask;
.super Lcom/google/firebase/storage/ControllableTask;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/storage/StorageTask$SnapshotBase;,
        Lcom/google/firebase/storage/StorageTask$ProvideError;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult::",
        "Lcom/google/firebase/storage/StorageTask$ProvideError;",
        ">",
        "Lcom/google/firebase/storage/ControllableTask",
        "<TTResult;>;"
    }
.end annotation


# static fields
.field private static final zzcoR:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final zzcoS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field protected final mSyncObject:Ljava/lang/Object;

.field private volatile zzOn:I

.field private zzcoT:Lcom/google/firebase/storage/zzw;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/storage/zzw",
            "<",
            "Lcom/google/android/gms/tasks/OnSuccessListener",
            "<-TTResult;>;TTResult;>;"
        }
    .end annotation
.end field

.field private zzcoU:Lcom/google/firebase/storage/zzw;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/storage/zzw",
            "<",
            "Lcom/google/android/gms/tasks/OnFailureListener;",
            "TTResult;>;"
        }
    .end annotation
.end field

.field private zzcoV:Lcom/google/firebase/storage/zzw;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/storage/zzw",
            "<",
            "Lcom/google/android/gms/tasks/OnCompleteListener",
            "<TTResult;>;TTResult;>;"
        }
    .end annotation
.end field

.field private zzcoW:Lcom/google/firebase/storage/zzw;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/storage/zzw",
            "<",
            "Lcom/google/firebase/storage/OnProgressListener",
            "<-TTResult;>;TTResult;>;"
        }
    .end annotation
.end field

.field private zzcoX:Lcom/google/firebase/storage/zzw;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/storage/zzw",
            "<",
            "Lcom/google/firebase/storage/OnPausedListener",
            "<-TTResult;>;TTResult;>;"
        }
    .end annotation
.end field

.field private zzcoY:Lcom/google/firebase/storage/StorageTask$ProvideError;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTResult;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x3

    const/16 v8, 0x40

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/firebase/storage/StorageTask;->zzcoR:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/firebase/storage/StorageTask;->zzcoS:Ljava/util/HashMap;

    sget-object v0, Lcom/google/firebase/storage/StorageTask;->zzcoR:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/HashSet;

    new-array v3, v5, [Ljava/lang/Integer;

    const/16 v4, 0x10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    const/16 v4, 0x100

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/firebase/storage/StorageTask;->zzcoR:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/HashSet;

    new-array v3, v5, [Ljava/lang/Integer;

    const/16 v4, 0x8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    const/16 v4, 0x20

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/firebase/storage/StorageTask;->zzcoR:Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/HashSet;

    new-array v3, v5, [Ljava/lang/Integer;

    const/16 v4, 0x8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    const/16 v4, 0x20

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/firebase/storage/StorageTask;->zzcoR:Ljava/util/HashMap;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/HashSet;

    new-array v3, v5, [Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    const/16 v4, 0x100

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/firebase/storage/StorageTask;->zzcoR:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/HashSet;

    new-array v3, v5, [Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    const/16 v4, 0x100

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/firebase/storage/StorageTask;->zzcoS:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/HashSet;

    new-array v3, v5, [Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/firebase/storage/StorageTask;->zzcoS:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/HashSet;

    new-array v3, v9, [Ljava/lang/Integer;

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    const/16 v4, 0x80

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/firebase/storage/StorageTask;->zzcoS:Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/HashSet;

    new-array v3, v9, [Ljava/lang/Integer;

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    const/16 v4, 0x80

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/firebase/storage/StorageTask;->zzcoS:Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/HashSet;

    new-array v3, v9, [Ljava/lang/Integer;

    const/16 v4, 0x10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    const/16 v4, 0x80

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/firebase/storage/StorageTask;->zzcoS:Ljava/util/HashMap;

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/HashSet;

    new-array v3, v9, [Ljava/lang/Integer;

    const/16 v4, 0x100

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    const/16 v4, 0x80

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/google/firebase/storage/ControllableTask;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/storage/StorageTask;->mSyncObject:Ljava/lang/Object;

    new-instance v0, Lcom/google/firebase/storage/zzw;

    const/16 v1, 0x80

    new-instance v2, Lcom/google/firebase/storage/zzi;

    invoke-direct {v2, p0}, Lcom/google/firebase/storage/zzi;-><init>(Lcom/google/firebase/storage/StorageTask;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/google/firebase/storage/zzw;-><init>(Lcom/google/firebase/storage/StorageTask;ILcom/google/firebase/storage/zzaa;)V

    iput-object v0, p0, Lcom/google/firebase/storage/StorageTask;->zzcoT:Lcom/google/firebase/storage/zzw;

    new-instance v0, Lcom/google/firebase/storage/zzw;

    const/16 v1, 0x140

    new-instance v2, Lcom/google/firebase/storage/zzj;

    invoke-direct {v2, p0}, Lcom/google/firebase/storage/zzj;-><init>(Lcom/google/firebase/storage/StorageTask;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/google/firebase/storage/zzw;-><init>(Lcom/google/firebase/storage/StorageTask;ILcom/google/firebase/storage/zzaa;)V

    iput-object v0, p0, Lcom/google/firebase/storage/StorageTask;->zzcoU:Lcom/google/firebase/storage/zzw;

    new-instance v0, Lcom/google/firebase/storage/zzw;

    const/16 v1, 0x1c0

    new-instance v2, Lcom/google/firebase/storage/zzk;

    invoke-direct {v2, p0}, Lcom/google/firebase/storage/zzk;-><init>(Lcom/google/firebase/storage/StorageTask;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/google/firebase/storage/zzw;-><init>(Lcom/google/firebase/storage/StorageTask;ILcom/google/firebase/storage/zzaa;)V

    iput-object v0, p0, Lcom/google/firebase/storage/StorageTask;->zzcoV:Lcom/google/firebase/storage/zzw;

    new-instance v0, Lcom/google/firebase/storage/zzw;

    const/16 v1, -0x1d1

    new-instance v2, Lcom/google/firebase/storage/zzl;

    invoke-direct {v2, p0}, Lcom/google/firebase/storage/zzl;-><init>(Lcom/google/firebase/storage/StorageTask;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/google/firebase/storage/zzw;-><init>(Lcom/google/firebase/storage/StorageTask;ILcom/google/firebase/storage/zzaa;)V

    iput-object v0, p0, Lcom/google/firebase/storage/StorageTask;->zzcoW:Lcom/google/firebase/storage/zzw;

    new-instance v0, Lcom/google/firebase/storage/zzw;

    const/16 v1, 0x10

    new-instance v2, Lcom/google/firebase/storage/zzm;

    invoke-direct {v2, p0}, Lcom/google/firebase/storage/zzm;-><init>(Lcom/google/firebase/storage/StorageTask;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/google/firebase/storage/zzw;-><init>(Lcom/google/firebase/storage/StorageTask;ILcom/google/firebase/storage/zzaa;)V

    iput-object v0, p0, Lcom/google/firebase/storage/StorageTask;->zzcoX:Lcom/google/firebase/storage/zzw;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/firebase/storage/StorageTask;->zzOn:I

    return-void
.end method

.method private final zzKT()Lcom/google/firebase/storage/StorageTask$ProvideError;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTResult;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask;->zzcoY:Lcom/google/firebase/storage/StorageTask$ProvideError;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask;->zzcoY:Lcom/google/firebase/storage/StorageTask$ProvideError;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageTask;->isComplete()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask;->zzcoY:Lcom/google/firebase/storage/StorageTask$ProvideError;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageTask;->zzKS()Lcom/google/firebase/storage/StorageTask$ProvideError;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/storage/StorageTask;->zzcoY:Lcom/google/firebase/storage/StorageTask$ProvideError;

    :cond_2
    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask;->zzcoY:Lcom/google/firebase/storage/StorageTask$ProvideError;

    goto :goto_0
.end method

.method private final zzKU()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageTask;->isComplete()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageTask;->isPaused()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/firebase/storage/StorageTask;->zzOn:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/16 v0, 0x100

    invoke-virtual {p0, v0, v2}, Lcom/google/firebase/storage/StorageTask;->zzj(IZ)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x40

    invoke-virtual {p0, v0, v2}, Lcom/google/firebase/storage/StorageTask;->zzj(IZ)Z

    :cond_0
    return-void
.end method

.method private final zza(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;
    .locals 4
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/tasks/Continuation;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/tasks/Continuation",
            "<TTResult;TTContinuationResult;>;)",
            "Lcom/google/android/gms/tasks/Task",
            "<TTContinuationResult;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    iget-object v1, p0, Lcom/google/firebase/storage/StorageTask;->zzcoV:Lcom/google/firebase/storage/zzw;

    const/4 v2, 0x0

    new-instance v3, Lcom/google/firebase/storage/zzn;

    invoke-direct {v3, p0, p2, v0}, Lcom/google/firebase/storage/zzn;-><init>(Lcom/google/firebase/storage/StorageTask;Lcom/google/android/gms/tasks/Continuation;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-virtual {v1, v2, p1, v3}, Lcom/google/firebase/storage/zzw;->zza(Landroid/app/Activity;Ljava/util/concurrent/Executor;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic zza(Lcom/google/firebase/storage/StorageTask;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/storage/StorageTask;->zzKU()V

    return-void
.end method

.method private final zza([IZ)Z
    .locals 8
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    sget-object v0, Lcom/google/firebase/storage/StorageTask;->zzcoR:Ljava/util/HashMap;

    move-object v1, v0

    :goto_0
    iget-object v4, p0, Lcom/google/firebase/storage/StorageTask;->mSyncObject:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    array-length v5, p1

    move v3, v2

    :goto_1
    if-ge v3, v5, :cond_3

    aget v6, p1, v3

    iget v0, p0, Lcom/google/firebase/storage/StorageTask;->zzOn:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    if-eqz v0, :cond_2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput v6, p0, Lcom/google/firebase/storage/StorageTask;->zzOn:I

    iget v0, p0, Lcom/google/firebase/storage/StorageTask;->zzOn:I

    sparse-switch v0, :sswitch_data_0

    :goto_2
    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask;->zzcoT:Lcom/google/firebase/storage/zzw;

    invoke-virtual {v0}, Lcom/google/firebase/storage/zzw;->zzKZ()V

    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask;->zzcoU:Lcom/google/firebase/storage/zzw;

    invoke-virtual {v0}, Lcom/google/firebase/storage/zzw;->zzKZ()V

    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask;->zzcoV:Lcom/google/firebase/storage/zzw;

    invoke-virtual {v0}, Lcom/google/firebase/storage/zzw;->zzKZ()V

    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask;->zzcoX:Lcom/google/firebase/storage/zzw;

    invoke-virtual {v0}, Lcom/google/firebase/storage/zzw;->zzKZ()V

    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask;->zzcoW:Lcom/google/firebase/storage/zzw;

    invoke-virtual {v0}, Lcom/google/firebase/storage/zzw;->zzKZ()V

    const-string v0, "StorageTask"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "StorageTask"

    invoke-static {v6}, Lcom/google/firebase/storage/StorageTask;->zzcf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/firebase/storage/StorageTask;->zzOn:I

    invoke-static {v2}, Lcom/google/firebase/storage/StorageTask;->zzcf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x35

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v3, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "changed internal state to: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " isUser: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " from state:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_3
    return v0

    :cond_1
    sget-object v0, Lcom/google/firebase/storage/StorageTask;->zzcoS:Ljava/util/HashMap;

    move-object v1, v0

    goto/16 :goto_0

    :sswitch_0
    :try_start_1
    invoke-static {}, Lcom/google/firebase/storage/zzs;->zzKV()Lcom/google/firebase/storage/zzs;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/firebase/storage/zzs;->zzb(Lcom/google/firebase/storage/StorageTask;)V

    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageTask;->onQueued()V

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :sswitch_1
    :try_start_2
    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageTask;->onProgress()V

    goto/16 :goto_2

    :sswitch_2
    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageTask;->onPaused()V

    goto/16 :goto_2

    :sswitch_3
    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageTask;->onFailure()V

    goto/16 :goto_2

    :sswitch_4
    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageTask;->onSuccess()V

    goto/16 :goto_2

    :sswitch_5
    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageTask;->onCanceled()V

    goto/16 :goto_2

    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_1

    :cond_3
    const-string v0, "StorageTask"

    invoke-static {p1}, Lcom/google/firebase/storage/StorageTask;->zzd([I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget v3, p0, Lcom/google/firebase/storage/StorageTask;->zzOn:I

    invoke-static {v3}, Lcom/google/firebase/storage/StorageTask;->zzcf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x3e

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "unable to change internal state to: "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " isUser: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " from state:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v2

    goto/16 :goto_3

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x4 -> :sswitch_1
        0x10 -> :sswitch_2
        0x40 -> :sswitch_3
        0x80 -> :sswitch_4
        0x100 -> :sswitch_5
    .end sparse-switch
.end method

.method private final zzb(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;
    .locals 4
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/tasks/Continuation;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/tasks/Continuation",
            "<TTResult;",
            "Lcom/google/android/gms/tasks/Task",
            "<TTContinuationResult;>;>;)",
            "Lcom/google/android/gms/tasks/Task",
            "<TTContinuationResult;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    iget-object v1, p0, Lcom/google/firebase/storage/StorageTask;->zzcoV:Lcom/google/firebase/storage/zzw;

    const/4 v2, 0x0

    new-instance v3, Lcom/google/firebase/storage/zzo;

    invoke-direct {v3, p0, p2, v0}, Lcom/google/firebase/storage/zzo;-><init>(Lcom/google/firebase/storage/StorageTask;Lcom/google/android/gms/tasks/Continuation;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-virtual {v1, v2, p1, v3}, Lcom/google/firebase/storage/zzw;->zza(Landroid/app/Activity;Ljava/util/concurrent/Executor;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method private static zzcf(I)Ljava/lang/String;
    .locals 1

    sparse-switch p0, :sswitch_data_0

    const-string v0, "Unknown Internal State!"

    :goto_0
    return-object v0

    :sswitch_0
    const-string v0, "INTERNAL_STATE_NOT_STARTED"

    goto :goto_0

    :sswitch_1
    const-string v0, "INTERNAL_STATE_QUEUED"

    goto :goto_0

    :sswitch_2
    const-string v0, "INTERNAL_STATE_IN_PROGRESS"

    goto :goto_0

    :sswitch_3
    const-string v0, "INTERNAL_STATE_PAUSING"

    goto :goto_0

    :sswitch_4
    const-string v0, "INTERNAL_STATE_PAUSED"

    goto :goto_0

    :sswitch_5
    const-string v0, "INTERNAL_STATE_CANCELING"

    goto :goto_0

    :sswitch_6
    const-string v0, "INTERNAL_STATE_FAILURE"

    goto :goto_0

    :sswitch_7
    const-string v0, "INTERNAL_STATE_SUCCESS"

    goto :goto_0

    :sswitch_8
    const-string v0, "INTERNAL_STATE_CANCELED"

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
        0x20 -> :sswitch_5
        0x40 -> :sswitch_6
        0x80 -> :sswitch_7
        0x100 -> :sswitch_8
    .end sparse-switch
.end method

.method private static zzd([I)Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    array-length v0, p0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    array-length v3, p0

    move v0, v1

    :goto_1
    if-ge v0, v3, :cond_1

    aget v4, p0, v0

    invoke-static {v4}, Lcom/google/firebase/storage/StorageTask;->zzcf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {v2, v1, v0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic addOnCompleteListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/tasks/OnCompleteListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/storage/StorageTask;->addOnCompleteListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/firebase/storage/StorageTask;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1    # Lcom/google/android/gms/tasks/OnCompleteListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/firebase/storage/StorageTask;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/firebase/storage/StorageTask;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addOnCompleteListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/tasks/OnCompleteListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/storage/StorageTask;->addOnCompleteListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/firebase/storage/StorageTask;

    move-result-object v0

    return-object v0
.end method

.method public addOnCompleteListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/firebase/storage/StorageTask;
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/tasks/OnCompleteListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/android/gms/tasks/OnCompleteListener",
            "<TTResult;>;)",
            "Lcom/google/firebase/storage/StorageTask",
            "<TTResult;>;"
        }
    .end annotation

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask;->zzcoV:Lcom/google/firebase/storage/zzw;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lcom/google/firebase/storage/zzw;->zza(Landroid/app/Activity;Ljava/util/concurrent/Executor;Ljava/lang/Object;)V

    return-object p0
.end method

.method public addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/firebase/storage/StorageTask;
    .locals 2
    .param p1    # Lcom/google/android/gms/tasks/OnCompleteListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/OnCompleteListener",
            "<TTResult;>;)",
            "Lcom/google/firebase/storage/StorageTask",
            "<TTResult;>;"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask;->zzcoV:Lcom/google/firebase/storage/zzw;

    invoke-virtual {v0, v1, v1, p1}, Lcom/google/firebase/storage/zzw;->zza(Landroid/app/Activity;Ljava/util/concurrent/Executor;Ljava/lang/Object;)V

    return-object p0
.end method

.method public addOnCompleteListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/firebase/storage/StorageTask;
    .locals 2
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/tasks/OnCompleteListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/tasks/OnCompleteListener",
            "<TTResult;>;)",
            "Lcom/google/firebase/storage/StorageTask",
            "<TTResult;>;"
        }
    .end annotation

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask;->zzcoV:Lcom/google/firebase/storage/zzw;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/firebase/storage/zzw;->zza(Landroid/app/Activity;Ljava/util/concurrent/Executor;Ljava/lang/Object;)V

    return-object p0
.end method

.method public bridge synthetic addOnFailureListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/tasks/OnFailureListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/storage/StorageTask;->addOnFailureListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/firebase/storage/StorageTask;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1    # Lcom/google/android/gms/tasks/OnFailureListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/firebase/storage/StorageTask;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/firebase/storage/StorageTask;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addOnFailureListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/tasks/OnFailureListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/storage/StorageTask;->addOnFailureListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/firebase/storage/StorageTask;

    move-result-object v0

    return-object v0
.end method

.method public addOnFailureListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/firebase/storage/StorageTask;
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/tasks/OnFailureListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/android/gms/tasks/OnFailureListener;",
            ")",
            "Lcom/google/firebase/storage/StorageTask",
            "<TTResult;>;"
        }
    .end annotation

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask;->zzcoU:Lcom/google/firebase/storage/zzw;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lcom/google/firebase/storage/zzw;->zza(Landroid/app/Activity;Ljava/util/concurrent/Executor;Ljava/lang/Object;)V

    return-object p0
.end method

.method public addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/firebase/storage/StorageTask;
    .locals 2
    .param p1    # Lcom/google/android/gms/tasks/OnFailureListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/OnFailureListener;",
            ")",
            "Lcom/google/firebase/storage/StorageTask",
            "<TTResult;>;"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask;->zzcoU:Lcom/google/firebase/storage/zzw;

    invoke-virtual {v0, v1, v1, p1}, Lcom/google/firebase/storage/zzw;->zza(Landroid/app/Activity;Ljava/util/concurrent/Executor;Ljava/lang/Object;)V

    return-object p0
.end method

.method public addOnFailureListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/firebase/storage/StorageTask;
    .locals 2
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/tasks/OnFailureListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/tasks/OnFailureListener;",
            ")",
            "Lcom/google/firebase/storage/StorageTask",
            "<TTResult;>;"
        }
    .end annotation

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask;->zzcoU:Lcom/google/firebase/storage/zzw;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/firebase/storage/zzw;->zza(Landroid/app/Activity;Ljava/util/concurrent/Executor;Ljava/lang/Object;)V

    return-object p0
.end method

.method public bridge synthetic addOnPausedListener(Landroid/app/Activity;Lcom/google/firebase/storage/OnPausedListener;)Lcom/google/firebase/storage/ControllableTask;
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/storage/OnPausedListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/storage/StorageTask;->addOnPausedListener(Landroid/app/Activity;Lcom/google/firebase/storage/OnPausedListener;)Lcom/google/firebase/storage/StorageTask;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addOnPausedListener(Lcom/google/firebase/storage/OnPausedListener;)Lcom/google/firebase/storage/ControllableTask;
    .locals 1
    .param p1    # Lcom/google/firebase/storage/OnPausedListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcom/google/firebase/storage/StorageTask;->addOnPausedListener(Lcom/google/firebase/storage/OnPausedListener;)Lcom/google/firebase/storage/StorageTask;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addOnPausedListener(Ljava/util/concurrent/Executor;Lcom/google/firebase/storage/OnPausedListener;)Lcom/google/firebase/storage/ControllableTask;
    .locals 1
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/storage/OnPausedListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/storage/StorageTask;->addOnPausedListener(Ljava/util/concurrent/Executor;Lcom/google/firebase/storage/OnPausedListener;)Lcom/google/firebase/storage/StorageTask;

    move-result-object v0

    return-object v0
.end method

.method public addOnPausedListener(Landroid/app/Activity;Lcom/google/firebase/storage/OnPausedListener;)Lcom/google/firebase/storage/StorageTask;
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/storage/OnPausedListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/firebase/storage/OnPausedListener",
            "<-TTResult;>;)",
            "Lcom/google/firebase/storage/StorageTask",
            "<TTResult;>;"
        }
    .end annotation

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask;->zzcoX:Lcom/google/firebase/storage/zzw;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lcom/google/firebase/storage/zzw;->zza(Landroid/app/Activity;Ljava/util/concurrent/Executor;Ljava/lang/Object;)V

    return-object p0
.end method

.method public addOnPausedListener(Lcom/google/firebase/storage/OnPausedListener;)Lcom/google/firebase/storage/StorageTask;
    .locals 2
    .param p1    # Lcom/google/firebase/storage/OnPausedListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/storage/OnPausedListener",
            "<-TTResult;>;)",
            "Lcom/google/firebase/storage/StorageTask",
            "<TTResult;>;"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask;->zzcoX:Lcom/google/firebase/storage/zzw;

    invoke-virtual {v0, v1, v1, p1}, Lcom/google/firebase/storage/zzw;->zza(Landroid/app/Activity;Ljava/util/concurrent/Executor;Ljava/lang/Object;)V

    return-object p0
.end method

.method public addOnPausedListener(Ljava/util/concurrent/Executor;Lcom/google/firebase/storage/OnPausedListener;)Lcom/google/firebase/storage/StorageTask;
    .locals 2
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/storage/OnPausedListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/firebase/storage/OnPausedListener",
            "<-TTResult;>;)",
            "Lcom/google/firebase/storage/StorageTask",
            "<TTResult;>;"
        }
    .end annotation

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask;->zzcoX:Lcom/google/firebase/storage/zzw;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/firebase/storage/zzw;->zza(Landroid/app/Activity;Ljava/util/concurrent/Executor;Ljava/lang/Object;)V

    return-object p0
.end method

.method public bridge synthetic addOnProgressListener(Landroid/app/Activity;Lcom/google/firebase/storage/OnProgressListener;)Lcom/google/firebase/storage/CancellableTask;
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/storage/OnProgressListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/storage/StorageTask;->addOnProgressListener(Landroid/app/Activity;Lcom/google/firebase/storage/OnProgressListener;)Lcom/google/firebase/storage/StorageTask;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addOnProgressListener(Lcom/google/firebase/storage/OnProgressListener;)Lcom/google/firebase/storage/CancellableTask;
    .locals 1
    .param p1    # Lcom/google/firebase/storage/OnProgressListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcom/google/firebase/storage/StorageTask;->addOnProgressListener(Lcom/google/firebase/storage/OnProgressListener;)Lcom/google/firebase/storage/StorageTask;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addOnProgressListener(Ljava/util/concurrent/Executor;Lcom/google/firebase/storage/OnProgressListener;)Lcom/google/firebase/storage/CancellableTask;
    .locals 1
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/storage/OnProgressListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/storage/StorageTask;->addOnProgressListener(Ljava/util/concurrent/Executor;Lcom/google/firebase/storage/OnProgressListener;)Lcom/google/firebase/storage/StorageTask;

    move-result-object v0

    return-object v0
.end method

.method public addOnProgressListener(Landroid/app/Activity;Lcom/google/firebase/storage/OnProgressListener;)Lcom/google/firebase/storage/StorageTask;
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/storage/OnProgressListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/firebase/storage/OnProgressListener",
            "<-TTResult;>;)",
            "Lcom/google/firebase/storage/StorageTask",
            "<TTResult;>;"
        }
    .end annotation

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask;->zzcoW:Lcom/google/firebase/storage/zzw;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lcom/google/firebase/storage/zzw;->zza(Landroid/app/Activity;Ljava/util/concurrent/Executor;Ljava/lang/Object;)V

    return-object p0
.end method

.method public addOnProgressListener(Lcom/google/firebase/storage/OnProgressListener;)Lcom/google/firebase/storage/StorageTask;
    .locals 2
    .param p1    # Lcom/google/firebase/storage/OnProgressListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/storage/OnProgressListener",
            "<-TTResult;>;)",
            "Lcom/google/firebase/storage/StorageTask",
            "<TTResult;>;"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask;->zzcoW:Lcom/google/firebase/storage/zzw;

    invoke-virtual {v0, v1, v1, p1}, Lcom/google/firebase/storage/zzw;->zza(Landroid/app/Activity;Ljava/util/concurrent/Executor;Ljava/lang/Object;)V

    return-object p0
.end method

.method public addOnProgressListener(Ljava/util/concurrent/Executor;Lcom/google/firebase/storage/OnProgressListener;)Lcom/google/firebase/storage/StorageTask;
    .locals 2
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/storage/OnProgressListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/firebase/storage/OnProgressListener",
            "<-TTResult;>;)",
            "Lcom/google/firebase/storage/StorageTask",
            "<TTResult;>;"
        }
    .end annotation

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask;->zzcoW:Lcom/google/firebase/storage/zzw;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/firebase/storage/zzw;->zza(Landroid/app/Activity;Ljava/util/concurrent/Executor;Ljava/lang/Object;)V

    return-object p0
.end method

.method public bridge synthetic addOnSuccessListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/tasks/OnSuccessListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/storage/StorageTask;->addOnSuccessListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/firebase/storage/StorageTask;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1    # Lcom/google/android/gms/tasks/OnSuccessListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/firebase/storage/StorageTask;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/firebase/storage/StorageTask;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addOnSuccessListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/tasks/OnSuccessListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/storage/StorageTask;->addOnSuccessListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/firebase/storage/StorageTask;

    move-result-object v0

    return-object v0
.end method

.method public addOnSuccessListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/firebase/storage/StorageTask;
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/tasks/OnSuccessListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/android/gms/tasks/OnSuccessListener",
            "<-TTResult;>;)",
            "Lcom/google/firebase/storage/StorageTask",
            "<TTResult;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask;->zzcoT:Lcom/google/firebase/storage/zzw;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lcom/google/firebase/storage/zzw;->zza(Landroid/app/Activity;Ljava/util/concurrent/Executor;Ljava/lang/Object;)V

    return-object p0
.end method

.method public addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/firebase/storage/StorageTask;
    .locals 2
    .param p1    # Lcom/google/android/gms/tasks/OnSuccessListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/OnSuccessListener",
            "<-TTResult;>;)",
            "Lcom/google/firebase/storage/StorageTask",
            "<TTResult;>;"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask;->zzcoT:Lcom/google/firebase/storage/zzw;

    invoke-virtual {v0, v1, v1, p1}, Lcom/google/firebase/storage/zzw;->zza(Landroid/app/Activity;Ljava/util/concurrent/Executor;Ljava/lang/Object;)V

    return-object p0
.end method

.method public addOnSuccessListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/firebase/storage/StorageTask;
    .locals 2
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/tasks/OnSuccessListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/tasks/OnSuccessListener",
            "<-TTResult;>;)",
            "Lcom/google/firebase/storage/StorageTask",
            "<TTResult;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask;->zzcoT:Lcom/google/firebase/storage/zzw;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/firebase/storage/zzw;->zza(Landroid/app/Activity;Ljava/util/concurrent/Executor;Ljava/lang/Object;)V

    return-object p0
.end method

.method public cancel()Z
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/firebase/storage/StorageTask;->zza([IZ)Z

    move-result v0

    return v0

    :array_0
    .array-data 4
        0x100
        0x20
    .end array-data
.end method

.method public continueWith(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1    # Lcom/google/android/gms/tasks/Continuation;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/tasks/Continuation",
            "<TTResult;TTContinuationResult;>;)",
            "Lcom/google/android/gms/tasks/Task",
            "<TTContinuationResult;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/google/firebase/storage/StorageTask;->zza(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public continueWith(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/tasks/Continuation;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/tasks/Continuation",
            "<TTResult;TTContinuationResult;>;)",
            "Lcom/google/android/gms/tasks/Task",
            "<TTContinuationResult;>;"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/storage/StorageTask;->zza(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public continueWithTask(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1    # Lcom/google/android/gms/tasks/Continuation;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/tasks/Continuation",
            "<TTResult;",
            "Lcom/google/android/gms/tasks/Task",
            "<TTContinuationResult;>;>;)",
            "Lcom/google/android/gms/tasks/Task",
            "<TTContinuationResult;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/google/firebase/storage/StorageTask;->zzb(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public continueWithTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/tasks/Continuation;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/tasks/Continuation",
            "<TTResult;",
            "Lcom/google/android/gms/tasks/Task",
            "<TTContinuationResult;>;>;)",
            "Lcom/google/android/gms/tasks/Task",
            "<TTContinuationResult;>;"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/storage/StorageTask;->zzb(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public getException()Ljava/lang/Exception;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-direct {p0}, Lcom/google/firebase/storage/StorageTask;->zzKT()Lcom/google/firebase/storage/StorageTask$ProvideError;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/google/firebase/storage/StorageTask;->zzKT()Lcom/google/firebase/storage/StorageTask$ProvideError;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/firebase/storage/StorageTask$ProvideError;->getError()Ljava/lang/Exception;

    move-result-object v0

    goto :goto_0
.end method

.method public getResult()Lcom/google/firebase/storage/StorageTask$ProvideError;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTResult;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/firebase/storage/StorageTask;->zzKT()Lcom/google/firebase/storage/StorageTask$ProvideError;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/google/firebase/storage/StorageTask;->zzKT()Lcom/google/firebase/storage/StorageTask$ProvideError;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/firebase/storage/StorageTask$ProvideError;->getError()Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/google/android/gms/tasks/RuntimeExecutionException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/tasks/RuntimeExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    invoke-direct {p0}, Lcom/google/firebase/storage/StorageTask;->zzKT()Lcom/google/firebase/storage/StorageTask$ProvideError;

    move-result-object v0

    return-object v0
.end method

.method public getResult(Ljava/lang/Class;)Lcom/google/firebase/storage/StorageTask$ProvideError;
    .locals 2
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Class",
            "<TX;>;)TTResult;^TX;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/firebase/storage/StorageTask;->zzKT()Lcom/google/firebase/storage/StorageTask$ProvideError;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/google/firebase/storage/StorageTask;->zzKT()Lcom/google/firebase/storage/StorageTask$ProvideError;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/firebase/storage/StorageTask$ProvideError;->getError()Ljava/lang/Exception;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/google/firebase/storage/StorageTask;->zzKT()Lcom/google/firebase/storage/StorageTask$ProvideError;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/firebase/storage/StorageTask$ProvideError;->getError()Ljava/lang/Exception;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    :cond_1
    invoke-direct {p0}, Lcom/google/firebase/storage/StorageTask;->zzKT()Lcom/google/firebase/storage/StorageTask$ProvideError;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/firebase/storage/StorageTask$ProvideError;->getError()Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Lcom/google/android/gms/tasks/RuntimeExecutionException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/tasks/RuntimeExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    invoke-direct {p0}, Lcom/google/firebase/storage/StorageTask;->zzKT()Lcom/google/firebase/storage/StorageTask$ProvideError;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getResult()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageTask;->getResult()Lcom/google/firebase/storage/StorageTask$ProvideError;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getResult(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/firebase/storage/StorageTask;->getResult(Ljava/lang/Class;)Lcom/google/firebase/storage/StorageTask$ProvideError;

    move-result-object v0

    return-object v0
.end method

.method public getSnapshot()Lcom/google/firebase/storage/StorageTask$ProvideError;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTResult;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageTask;->zzKS()Lcom/google/firebase/storage/StorageTask$ProvideError;

    move-result-object v0

    return-object v0
.end method

.method abstract getStorage()Lcom/google/firebase/storage/StorageReference;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end method

.method public isCanceled()Z
    .locals 2

    iget v0, p0, Lcom/google/firebase/storage/StorageTask;->zzOn:I

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isComplete()Z
    .locals 1

    iget v0, p0, Lcom/google/firebase/storage/StorageTask;->zzOn:I

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/firebase/storage/StorageTask;->zzOn:I

    and-int/lit16 v0, v0, 0x140

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInProgress()Z
    .locals 1

    iget v0, p0, Lcom/google/firebase/storage/StorageTask;->zzOn:I

    and-int/lit16 v0, v0, -0x1d1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPaused()Z
    .locals 1

    iget v0, p0, Lcom/google/firebase/storage/StorageTask;->zzOn:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSuccessful()Z
    .locals 1

    iget v0, p0, Lcom/google/firebase/storage/StorageTask;->zzOn:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCanceled()V
    .locals 0

    return-void
.end method

.method protected onFailure()V
    .locals 0

    return-void
.end method

.method protected onPaused()V
    .locals 0

    return-void
.end method

.method protected onProgress()V
    .locals 0

    return-void
.end method

.method protected onQueued()V
    .locals 0

    return-void
.end method

.method protected onSuccess()V
    .locals 0

    return-void
.end method

.method public pause()Z
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/firebase/storage/StorageTask;->zza([IZ)Z

    move-result v0

    return v0

    :array_0
    .array-data 4
        0x10
        0x8
    .end array-data
.end method

.method public removeOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/firebase/storage/StorageTask;
    .locals 1
    .param p1    # Lcom/google/android/gms/tasks/OnCompleteListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/OnCompleteListener",
            "<TTResult;>;)",
            "Lcom/google/firebase/storage/StorageTask",
            "<TTResult;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask;->zzcoV:Lcom/google/firebase/storage/zzw;

    invoke-virtual {v0, p1}, Lcom/google/firebase/storage/zzw;->zzat(Ljava/lang/Object;)V

    return-object p0
.end method

.method public removeOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/firebase/storage/StorageTask;
    .locals 1
    .param p1    # Lcom/google/android/gms/tasks/OnFailureListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/OnFailureListener;",
            ")",
            "Lcom/google/firebase/storage/StorageTask",
            "<TTResult;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask;->zzcoU:Lcom/google/firebase/storage/zzw;

    invoke-virtual {v0, p1}, Lcom/google/firebase/storage/zzw;->zzat(Ljava/lang/Object;)V

    return-object p0
.end method

.method public removeOnPausedListener(Lcom/google/firebase/storage/OnPausedListener;)Lcom/google/firebase/storage/StorageTask;
    .locals 1
    .param p1    # Lcom/google/firebase/storage/OnPausedListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/storage/OnPausedListener",
            "<-TTResult;>;)",
            "Lcom/google/firebase/storage/StorageTask",
            "<TTResult;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask;->zzcoX:Lcom/google/firebase/storage/zzw;

    invoke-virtual {v0, p1}, Lcom/google/firebase/storage/zzw;->zzat(Ljava/lang/Object;)V

    return-object p0
.end method

.method public removeOnProgressListener(Lcom/google/firebase/storage/OnProgressListener;)Lcom/google/firebase/storage/StorageTask;
    .locals 1
    .param p1    # Lcom/google/firebase/storage/OnProgressListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/storage/OnProgressListener",
            "<-TTResult;>;)",
            "Lcom/google/firebase/storage/StorageTask",
            "<TTResult;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask;->zzcoW:Lcom/google/firebase/storage/zzw;

    invoke-virtual {v0, p1}, Lcom/google/firebase/storage/zzw;->zzat(Ljava/lang/Object;)V

    return-object p0
.end method

.method public removeOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/firebase/storage/StorageTask;
    .locals 1
    .param p1    # Lcom/google/android/gms/tasks/OnSuccessListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/OnSuccessListener",
            "<-TTResult;>;)",
            "Lcom/google/firebase/storage/StorageTask",
            "<TTResult;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask;->zzcoT:Lcom/google/firebase/storage/zzw;

    invoke-virtual {v0, p1}, Lcom/google/firebase/storage/zzw;->zzat(Ljava/lang/Object;)V

    return-object p0
.end method

.method resetState()V
    .locals 0
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    return-void
.end method

.method public resume()Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/google/firebase/storage/StorageTask;->zzj(IZ)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageTask;->resetState()V

    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageTask;->schedule()V

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method abstract run()V
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end method

.method abstract schedule()V
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end method

.method final zzEf()Ljava/lang/Runnable;
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    new-instance v0, Lcom/google/firebase/storage/zzr;

    invoke-direct {v0, p0}, Lcom/google/firebase/storage/zzr;-><init>(Lcom/google/firebase/storage/StorageTask;)V

    return-object v0
.end method

.method abstract zzKM()Lcom/google/firebase/storage/StorageTask$ProvideError;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTResult;"
        }
    .end annotation
.end method

.method final zzKQ()Z
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/google/firebase/storage/StorageTask;->zzj(IZ)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageTask;->schedule()V

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method final zzKR()I
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    iget v0, p0, Lcom/google/firebase/storage/StorageTask;->zzOn:I

    return v0
.end method

.method final zzKS()Lcom/google/firebase/storage/StorageTask$ProvideError;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTResult;"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/firebase/storage/StorageTask;->mSyncObject:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageTask;->zzKM()Lcom/google/firebase/storage/StorageTask$ProvideError;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final zzj(IZ)Z
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-direct {p0, v0, p2}, Lcom/google/firebase/storage/StorageTask;->zza([IZ)Z

    move-result v0

    return v0
.end method
