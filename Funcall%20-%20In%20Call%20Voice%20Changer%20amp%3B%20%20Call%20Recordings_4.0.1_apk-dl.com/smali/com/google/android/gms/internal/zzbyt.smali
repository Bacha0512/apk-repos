.class final Lcom/google/android/gms/internal/zzbyt;
.super Lcom/google/android/gms/internal/zzbvl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzbvl",
        "<",
        "Lcom/google/android/gms/fitness/result/DataSourcesResult;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzaVU:Lcom/google/android/gms/fitness/request/DataSourcesRequest;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbys;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/request/DataSourcesRequest;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbyt;->zzaVU:Lcom/google/android/gms/fitness/request/DataSourcesRequest;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzbvl;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    check-cast p1, Lcom/google/android/gms/internal/zzbvk;

    new-instance v1, Lcom/google/android/gms/internal/zzbuo;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzbuo;-><init>(Lcom/google/android/gms/internal/zzbaz;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbvk;->zzrf()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbwt;

    new-instance v2, Lcom/google/android/gms/fitness/request/DataSourcesRequest;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbyt;->zzaVU:Lcom/google/android/gms/fitness/request/DataSourcesRequest;

    invoke-direct {v2, v3, v1}, Lcom/google/android/gms/fitness/request/DataSourcesRequest;-><init>(Lcom/google/android/gms/fitness/request/DataSourcesRequest;Lcom/google/android/gms/internal/zzbvy;)V

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zzbwt;->zza(Lcom/google/android/gms/fitness/request/DataSourcesRequest;)V

    return-void
.end method

.method protected final synthetic zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 2

    new-instance v0, Lcom/google/android/gms/fitness/result/DataSourcesResult;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/fitness/result/DataSourcesResult;-><init>(Ljava/util/List;Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method
