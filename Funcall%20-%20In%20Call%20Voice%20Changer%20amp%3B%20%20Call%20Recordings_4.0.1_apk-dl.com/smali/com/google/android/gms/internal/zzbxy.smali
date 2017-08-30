.class final Lcom/google/android/gms/internal/zzbxy;
.super Lcom/google/android/gms/internal/zzbuy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzbuy",
        "<",
        "Lcom/google/android/gms/fitness/result/GoalsResult;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzaVE:Lcom/google/android/gms/fitness/request/GoalsReadRequest;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbxx;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/request/GoalsReadRequest;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbxy;->zzaVE:Lcom/google/android/gms/fitness/request/GoalsReadRequest;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzbuy;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzbux;

    new-instance v1, Lcom/google/android/gms/internal/zzbxz;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzbxz;-><init>(Lcom/google/android/gms/internal/zzbxy;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbux;->zzrf()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbwl;

    new-instance v2, Lcom/google/android/gms/fitness/request/GoalsReadRequest;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbxy;->zzaVE:Lcom/google/android/gms/fitness/request/GoalsReadRequest;

    invoke-direct {v2, v3, v1}, Lcom/google/android/gms/fitness/request/GoalsReadRequest;-><init>(Lcom/google/android/gms/fitness/request/GoalsReadRequest;Lcom/google/android/gms/internal/zzbwe;)V

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zzbwl;->zza(Lcom/google/android/gms/fitness/request/GoalsReadRequest;)V

    return-void
.end method

.method protected final synthetic zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 2

    new-instance v0, Lcom/google/android/gms/fitness/result/GoalsResult;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/fitness/result/GoalsResult;-><init>(Lcom/google/android/gms/common/api/Status;Ljava/util/List;)V

    return-object v0
.end method
