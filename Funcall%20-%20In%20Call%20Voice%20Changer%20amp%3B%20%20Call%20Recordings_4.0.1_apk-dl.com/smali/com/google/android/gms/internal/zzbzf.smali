.class final Lcom/google/android/gms/internal/zzbzf;
.super Lcom/google/android/gms/internal/zzbvr;


# instance fields
.field private synthetic zzaVX:Landroid/app/PendingIntent;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbyz;Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/app/PendingIntent;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbzf;->zzaVX:Landroid/app/PendingIntent;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzbvr;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    check-cast p1, Lcom/google/android/gms/internal/zzbvo;

    new-instance v1, Lcom/google/android/gms/internal/zzbzi;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzbzi;-><init>(Lcom/google/android/gms/internal/zzbaz;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbvo;->zzrf()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbwv;

    new-instance v2, Lcom/google/android/gms/fitness/request/zzbc;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbzf;->zzaVX:Landroid/app/PendingIntent;

    invoke-direct {v2, v3, v1}, Lcom/google/android/gms/fitness/request/zzbc;-><init>(Landroid/app/PendingIntent;Lcom/google/android/gms/internal/zzbxg;)V

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zzbwv;->zza(Lcom/google/android/gms/fitness/request/zzbc;)V

    return-void
.end method