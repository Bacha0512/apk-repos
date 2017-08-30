.class final Lcom/google/android/gms/internal/jb;
.super Lcom/google/android/gms/internal/zzbeq;

# interfaces
.implements Lcom/google/android/gms/internal/ki;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResultT:",
        "Ljava/lang/Object;",
        "CallbackT:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/zzbeq",
        "<",
        "Lcom/google/android/gms/internal/jx;",
        "TResultT;>;",
        "Lcom/google/android/gms/internal/ki",
        "<TResultT;>;"
    }
.end annotation


# instance fields
.field private zzalE:Lcom/google/android/gms/tasks/TaskCompletionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/TaskCompletionSource",
            "<TResultT;>;"
        }
    .end annotation
.end field

.field private zzbWB:Lcom/google/android/gms/internal/kj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/kj",
            "<TResultT;TCallbackT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/kj;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/kj",
            "<TResultT;TCallbackT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbeq;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/jb;->zzbWB:Lcom/google/android/gms/internal/kj;

    iget-object v0, p0, Lcom/google/android/gms/internal/jb;->zzbWB:Lcom/google/android/gms/internal/kj;

    iput-object p0, v0, Lcom/google/android/gms/internal/kj;->zzbWP:Lcom/google/android/gms/internal/ki;

    return-void
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/jx;

    iput-object p2, p0, Lcom/google/android/gms/internal/jb;->zzalE:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iget-object v0, p0, Lcom/google/android/gms/internal/jb;->zzbWB:Lcom/google/android/gms/internal/kj;

    invoke-interface {p1}, Lcom/google/android/gms/internal/jx;->zzEM()Lcom/google/android/gms/internal/kc;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/kj;->zzbWM:Lcom/google/android/gms/internal/kc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/kj;->dispatch()V

    return-void
.end method

.method public final zza(Ljava/lang/Object;Lcom/google/android/gms/common/api/Status;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResultT;",
            "Lcom/google/android/gms/common/api/Status;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/jb;->zzalE:Lcom/google/android/gms/tasks/TaskCompletionSource;

    const-string v1, "doExecute must be called before onComplete"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzbo;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/jb;->zzalE:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static {p2}, Lcom/google/android/gms/internal/jz;->zzK(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/FirebaseException;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/jb;->zzalE:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    goto :goto_0
.end method
