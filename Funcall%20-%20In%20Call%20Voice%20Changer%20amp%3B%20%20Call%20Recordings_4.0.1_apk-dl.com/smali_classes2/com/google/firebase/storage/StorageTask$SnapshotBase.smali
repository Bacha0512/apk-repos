.class public Lcom/google/firebase/storage/StorageTask$SnapshotBase;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/storage/StorageTask$ProvideError;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/storage/StorageTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SnapshotBase"
.end annotation


# instance fields
.field private synthetic zzcoZ:Lcom/google/firebase/storage/StorageTask;

.field private final zzcpc:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Lcom/google/firebase/storage/StorageTask;Ljava/lang/Exception;)V
    .locals 2

    iput-object p1, p0, Lcom/google/firebase/storage/StorageTask$SnapshotBase;->zzcoZ:Lcom/google/firebase/storage/StorageTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_2

    invoke-virtual {p1}, Lcom/google/firebase/storage/StorageTask;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/common/api/Status;->zzaBq:Lcom/google/android/gms/common/api/Status;

    invoke-static {v0}, Lcom/google/firebase/storage/StorageException;->fromErrorStatus(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/storage/StorageException;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/storage/StorageTask$SnapshotBase;->zzcpc:Ljava/lang/Exception;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/firebase/storage/StorageTask;->zzKR()I

    move-result v0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/google/android/gms/common/api/Status;->zzaBo:Lcom/google/android/gms/common/api/Status;

    invoke-static {v0}, Lcom/google/firebase/storage/StorageException;->fromErrorStatus(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/storage/StorageException;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/storage/StorageTask$SnapshotBase;->zzcpc:Ljava/lang/Exception;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/storage/StorageTask$SnapshotBase;->zzcpc:Ljava/lang/Exception;

    goto :goto_0

    :cond_2
    iput-object p2, p0, Lcom/google/firebase/storage/StorageTask$SnapshotBase;->zzcpc:Ljava/lang/Exception;

    goto :goto_0
.end method


# virtual methods
.method public getError()Ljava/lang/Exception;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask$SnapshotBase;->zzcpc:Ljava/lang/Exception;

    return-object v0
.end method

.method public getStorage()Lcom/google/firebase/storage/StorageReference;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageTask$SnapshotBase;->getTask()Lcom/google/firebase/storage/StorageTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/storage/StorageTask;->getStorage()Lcom/google/firebase/storage/StorageReference;

    move-result-object v0

    return-object v0
.end method

.method public getTask()Lcom/google/firebase/storage/StorageTask;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/firebase/storage/StorageTask",
            "<TTResult;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask$SnapshotBase;->zzcoZ:Lcom/google/firebase/storage/StorageTask;

    return-object v0
.end method
