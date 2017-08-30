.class final Lcom/google/android/gms/internal/zzbyg;
.super Lcom/google/android/gms/internal/zzbvb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzbvb",
        "<",
        "Lcom/google/android/gms/fitness/result/DataReadResult;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzaVM:Lcom/google/android/gms/fitness/request/DataReadRequest;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbya;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/request/DataReadRequest;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbyg;->zzaVM:Lcom/google/android/gms/fitness/request/DataReadRequest;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzbvb;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    check-cast p1, Lcom/google/android/gms/internal/zzbva;

    new-instance v1, Lcom/google/android/gms/internal/zzbyj;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/zzbyj;-><init>(Lcom/google/android/gms/internal/zzbaz;Lcom/google/android/gms/internal/zzbyb;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbva;->zzrf()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbwn;

    new-instance v2, Lcom/google/android/gms/fitness/request/DataReadRequest;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbyg;->zzaVM:Lcom/google/android/gms/fitness/request/DataReadRequest;

    invoke-direct {v2, v3, v1}, Lcom/google/android/gms/fitness/request/DataReadRequest;-><init>(Lcom/google/android/gms/fitness/request/DataReadRequest;Lcom/google/android/gms/internal/zzbvv;)V

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zzbwn;->zza(Lcom/google/android/gms/fitness/request/DataReadRequest;)V

    return-void
.end method

.method protected final synthetic zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbyg;->zzaVM:Lcom/google/android/gms/fitness/request/DataReadRequest;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/request/DataReadRequest;->getDataTypes()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbyg;->zzaVM:Lcom/google/android/gms/fitness/request/DataReadRequest;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/request/DataReadRequest;->getDataSources()Ljava/util/List;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/fitness/result/DataReadResult;->zza(Lcom/google/android/gms/common/api/Status;Ljava/util/List;Ljava/util/List;)Lcom/google/android/gms/fitness/result/DataReadResult;

    move-result-object v0

    return-object v0
.end method
