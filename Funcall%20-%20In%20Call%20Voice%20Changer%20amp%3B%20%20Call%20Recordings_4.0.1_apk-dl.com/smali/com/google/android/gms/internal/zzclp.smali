.class final Lcom/google/android/gms/internal/zzclp;
.super Lcom/google/android/gms/internal/zzcmj;


# instance fields
.field private synthetic zzbxb:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzclm;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V
    .locals 1

    iput-object p3, p0, Lcom/google/android/gms/internal/zzclp;->zzbxb:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/zzcmj;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzcln;)V

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

    check-cast p1, Lcom/google/android/gms/internal/zzckm;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzclp;->zzbxb:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzckm;->zzrf()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzcnd;

    new-instance v2, Lcom/google/android/gms/internal/zzcmk;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/zzcmk;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zzcnd;->zza(Lcom/google/android/gms/internal/zzcmk;)V

    return-void
.end method
