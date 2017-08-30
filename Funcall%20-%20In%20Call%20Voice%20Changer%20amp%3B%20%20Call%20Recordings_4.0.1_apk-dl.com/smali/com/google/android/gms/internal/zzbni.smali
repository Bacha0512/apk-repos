.class final Lcom/google/android/gms/internal/zzbni;
.super Lcom/google/android/gms/internal/zzbnm;


# instance fields
.field private synthetic zzaOz:Lcom/google/android/gms/internal/zzbnh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbnh;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbni;->zzaOz:Lcom/google/android/gms/internal/zzbnh;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzbnm;-><init>(Lcom/google/android/gms/internal/zzbnh;Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    check-cast p1, Lcom/google/android/gms/internal/zzbmh;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbmh;->zzrf()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbom;

    new-instance v1, Lcom/google/android/gms/internal/zzbnk;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbni;->zzaOz:Lcom/google/android/gms/internal/zzbnh;

    const/4 v3, 0x0

    invoke-direct {v1, v2, p0, v3}, Lcom/google/android/gms/internal/zzbnk;-><init>(Lcom/google/android/gms/internal/zzbnh;Lcom/google/android/gms/internal/zzbaz;Lcom/google/android/gms/internal/zzbni;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzbom;->zzb(Lcom/google/android/gms/internal/zzboo;)V

    return-void
.end method
