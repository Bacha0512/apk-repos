.class final Lcom/google/android/gms/internal/zzbxv;
.super Lcom/google/android/gms/internal/zzbuw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbxs;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzbuw;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzbut;

    new-instance v1, Lcom/google/android/gms/internal/zzbzi;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzbzi;-><init>(Lcom/google/android/gms/internal/zzbaz;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbut;->zzrf()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbwj;

    new-instance v2, Lcom/google/android/gms/fitness/request/zzz;

    invoke-direct {v2, v1}, Lcom/google/android/gms/fitness/request/zzz;-><init>(Lcom/google/android/gms/internal/zzbxg;)V

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zzbwj;->zza(Lcom/google/android/gms/fitness/request/zzz;)V

    return-void
.end method
