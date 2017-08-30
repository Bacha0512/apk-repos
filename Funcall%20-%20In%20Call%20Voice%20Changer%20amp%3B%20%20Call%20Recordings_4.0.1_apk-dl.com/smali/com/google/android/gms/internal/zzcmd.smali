.class final Lcom/google/android/gms/internal/zzcmd;
.super Lcom/google/android/gms/internal/zzcmj;


# instance fields
.field private synthetic zzbxb:Ljava/lang/String;

.field private synthetic zzbxo:Lcom/google/android/gms/internal/zzbdw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzclm;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Lcom/google/android/gms/internal/zzbdw;)V
    .locals 1

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcmd;->zzbxb:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzcmd;->zzbxo:Lcom/google/android/gms/internal/zzbdw;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/zzcmj;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzcln;)V

    return-void
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v2, 0x0

    check-cast p1, Lcom/google/android/gms/internal/zzckm;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcmd;->zzbxb:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzcmd;->zzbxo:Lcom/google/android/gms/internal/zzbdw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzckm;->zzrf()Landroid/os/IInterface;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/google/android/gms/internal/zzcnd;

    new-instance v0, Lcom/google/android/gms/internal/zzcki;

    new-instance v1, Lcom/google/android/gms/internal/zzclj;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzclj;-><init>(Lcom/google/android/gms/internal/zzbaz;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzclj;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    new-instance v5, Lcom/google/android/gms/internal/zzclg;

    invoke-direct {v5, v4}, Lcom/google/android/gms/internal/zzclg;-><init>(Lcom/google/android/gms/internal/zzbdw;)V

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzclg;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    move-object v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzcki;-><init>(Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;[BLandroid/os/IBinder;)V

    invoke-interface {v6, v0}, Lcom/google/android/gms/internal/zzcnd;->zza(Lcom/google/android/gms/internal/zzcki;)V

    return-void
.end method
