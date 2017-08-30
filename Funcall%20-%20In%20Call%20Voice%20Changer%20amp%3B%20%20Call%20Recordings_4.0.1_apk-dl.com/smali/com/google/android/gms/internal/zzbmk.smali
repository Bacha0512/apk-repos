.class final Lcom/google/android/gms/internal/zzbmk;
.super Lcom/google/android/gms/internal/zzbmg;


# instance fields
.field private synthetic zzaOa:Lcom/google/android/gms/internal/zzbkr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbmh;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzbkr;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbmk;->zzaOa:Lcom/google/android/gms/internal/zzbkr;

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

    const/4 v3, 0x0

    check-cast p1, Lcom/google/android/gms/internal/zzbmh;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbmh;->zzrf()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbom;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbmk;->zzaOa:Lcom/google/android/gms/internal/zzbkr;

    new-instance v2, Lcom/google/android/gms/internal/zzbqq;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzbqq;-><init>(Lcom/google/android/gms/internal/zzbaz;)V

    invoke-interface {v0, v1, v3, v3, v2}, Lcom/google/android/gms/internal/zzbom;->zza(Lcom/google/android/gms/internal/zzbkr;Lcom/google/android/gms/internal/zzboq;Ljava/lang/String;Lcom/google/android/gms/internal/zzboo;)V

    return-void
.end method
