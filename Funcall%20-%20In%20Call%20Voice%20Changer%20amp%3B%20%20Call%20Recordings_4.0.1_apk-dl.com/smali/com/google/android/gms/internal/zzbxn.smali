.class final Lcom/google/android/gms/internal/zzbxn;
.super Lcom/google/android/gms/internal/zzbus;


# instance fields
.field private synthetic zzaVA:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbxk;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbxn;->zzaVA:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzbus;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzbup;

    new-instance v1, Lcom/google/android/gms/internal/zzbzi;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzbzi;-><init>(Lcom/google/android/gms/internal/zzbaz;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbup;->zzrf()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbwh;

    new-instance v2, Lcom/google/android/gms/fitness/request/zzd;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbxn;->zzaVA:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v1}, Lcom/google/android/gms/fitness/request/zzd;-><init>(Ljava/lang/String;Lcom/google/android/gms/fitness/data/BleDevice;Lcom/google/android/gms/internal/zzbxg;)V

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zzbwh;->zza(Lcom/google/android/gms/fitness/request/zzd;)V

    return-void
.end method
