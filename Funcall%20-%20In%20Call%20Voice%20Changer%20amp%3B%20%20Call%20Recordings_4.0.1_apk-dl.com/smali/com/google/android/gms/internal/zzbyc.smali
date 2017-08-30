.class final Lcom/google/android/gms/internal/zzbyc;
.super Lcom/google/android/gms/internal/zzbvd;


# instance fields
.field private synthetic zzaVI:Lcom/google/android/gms/fitness/request/DataDeleteRequest;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbya;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/request/DataDeleteRequest;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbyc;->zzaVI:Lcom/google/android/gms/fitness/request/DataDeleteRequest;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzbvd;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    new-instance v1, Lcom/google/android/gms/internal/zzbzi;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzbzi;-><init>(Lcom/google/android/gms/internal/zzbaz;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbva;->zzrf()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbwn;

    new-instance v2, Lcom/google/android/gms/fitness/request/DataDeleteRequest;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbyc;->zzaVI:Lcom/google/android/gms/fitness/request/DataDeleteRequest;

    invoke-direct {v2, v3, v1}, Lcom/google/android/gms/fitness/request/DataDeleteRequest;-><init>(Lcom/google/android/gms/fitness/request/DataDeleteRequest;Lcom/google/android/gms/internal/zzbxg;)V

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zzbwn;->zza(Lcom/google/android/gms/fitness/request/DataDeleteRequest;)V

    return-void
.end method
