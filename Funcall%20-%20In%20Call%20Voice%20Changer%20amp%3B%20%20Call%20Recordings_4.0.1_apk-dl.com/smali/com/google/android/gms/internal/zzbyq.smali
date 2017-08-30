.class final Lcom/google/android/gms/internal/zzbyq;
.super Lcom/google/android/gms/internal/zzbvj;


# instance fields
.field private synthetic zzaVT:Lcom/google/android/gms/fitness/data/DataSource;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbyl;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/data/DataSource;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbyq;->zzaVT:Lcom/google/android/gms/fitness/data/DataSource;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzbvj;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    check-cast p1, Lcom/google/android/gms/internal/zzbvg;

    new-instance v1, Lcom/google/android/gms/internal/zzbzi;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzbzi;-><init>(Lcom/google/android/gms/internal/zzbaz;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbvg;->zzrf()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbwr;

    new-instance v2, Lcom/google/android/gms/fitness/request/zzbm;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/gms/internal/zzbyq;->zzaVT:Lcom/google/android/gms/fitness/data/DataSource;

    invoke-direct {v2, v3, v4, v1}, Lcom/google/android/gms/fitness/request/zzbm;-><init>(Lcom/google/android/gms/fitness/data/DataType;Lcom/google/android/gms/fitness/data/DataSource;Lcom/google/android/gms/internal/zzbxg;)V

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zzbwr;->zza(Lcom/google/android/gms/fitness/request/zzbm;)V

    return-void
.end method
