.class final Lcom/google/android/gms/internal/zzbxq;
.super Lcom/google/android/gms/internal/zzbuq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzbuq",
        "<",
        "Lcom/google/android/gms/fitness/result/BleDevicesResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbxk;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzbuq;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    check-cast p1, Lcom/google/android/gms/internal/zzbup;

    new-instance v1, Lcom/google/android/gms/internal/zzbxr;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/zzbxr;-><init>(Lcom/google/android/gms/internal/zzbaz;Lcom/google/android/gms/internal/zzbxl;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbup;->zzrf()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbwh;

    new-instance v2, Lcom/google/android/gms/fitness/request/zzag;

    invoke-direct {v2, v1}, Lcom/google/android/gms/fitness/request/zzag;-><init>(Lcom/google/android/gms/internal/zzbzk;)V

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zzbwh;->zza(Lcom/google/android/gms/fitness/request/zzag;)V

    return-void
.end method

.method protected final synthetic zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/fitness/result/BleDevicesResult;->zzB(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/fitness/result/BleDevicesResult;

    move-result-object v0

    return-object v0
.end method
