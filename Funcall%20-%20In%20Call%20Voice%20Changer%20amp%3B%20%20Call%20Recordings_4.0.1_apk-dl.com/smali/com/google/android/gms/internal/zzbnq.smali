.class final Lcom/google/android/gms/internal/zzbnq;
.super Lcom/google/android/gms/internal/zzbmg;


# instance fields
.field private synthetic zzaOD:Lcom/google/android/gms/internal/zzbnn;

.field private synthetic zzaOE:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbnn;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbnq;->zzaOD:Lcom/google/android/gms/internal/zzbnn;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbnq;->zzaOE:Ljava/util/List;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzbmg;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    new-instance v1, Lcom/google/android/gms/internal/zzbqo;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbnq;->zzaOD:Lcom/google/android/gms/internal/zzbnn;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzbnn;->zzaLV:Lcom/google/android/gms/drive/DriveId;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbnq;->zzaOE:Ljava/util/List;

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/zzbqo;-><init>(Lcom/google/android/gms/drive/DriveId;Ljava/util/List;)V

    new-instance v2, Lcom/google/android/gms/internal/zzbqq;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzbqq;-><init>(Lcom/google/android/gms/internal/zzbaz;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzbom;->zza(Lcom/google/android/gms/internal/zzbqo;Lcom/google/android/gms/internal/zzboo;)V

    return-void
.end method
