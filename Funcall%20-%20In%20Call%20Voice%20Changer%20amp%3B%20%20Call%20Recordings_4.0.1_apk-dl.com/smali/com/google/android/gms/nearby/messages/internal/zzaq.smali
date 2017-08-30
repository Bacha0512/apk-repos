.class final Lcom/google/android/gms/nearby/messages/internal/zzaq;
.super Lcom/google/android/gms/nearby/messages/internal/zzav;


# instance fields
.field private synthetic zzaVL:Landroid/app/PendingIntent;

.field private synthetic zzbzl:Lcom/google/android/gms/internal/zzbdw;

.field private synthetic zzbzn:Lcom/google/android/gms/nearby/messages/SubscribeOptions;


# direct methods
.method constructor <init>(Lcom/google/android/gms/nearby/messages/internal/zzak;Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/app/PendingIntent;Lcom/google/android/gms/internal/zzbdw;Lcom/google/android/gms/nearby/messages/SubscribeOptions;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/nearby/messages/internal/zzaq;->zzaVL:Landroid/app/PendingIntent;

    iput-object p4, p0, Lcom/google/android/gms/nearby/messages/internal/zzaq;->zzbzl:Lcom/google/android/gms/internal/zzbdw;

    iput-object p5, p0, Lcom/google/android/gms/nearby/messages/internal/zzaq;->zzbzn:Lcom/google/android/gms/nearby/messages/SubscribeOptions;

    invoke-direct {p0, p2}, Lcom/google/android/gms/nearby/messages/internal/zzav;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x0

    check-cast p1, Lcom/google/android/gms/nearby/messages/internal/zzah;

    invoke-virtual {p0}, Lcom/google/android/gms/nearby/messages/internal/zzaq;->zzzX()Lcom/google/android/gms/internal/zzbdw;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/nearby/messages/internal/zzaq;->zzaVL:Landroid/app/PendingIntent;

    iget-object v6, p0, Lcom/google/android/gms/nearby/messages/internal/zzaq;->zzbzl:Lcom/google/android/gms/internal/zzbdw;

    iget-object v9, p0, Lcom/google/android/gms/nearby/messages/internal/zzaq;->zzbzn:Lcom/google/android/gms/nearby/messages/SubscribeOptions;

    new-instance v0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;

    invoke-virtual {v9}, Lcom/google/android/gms/nearby/messages/SubscribeOptions;->getStrategy()Lcom/google/android/gms/nearby/messages/Strategy;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/zzcpq;

    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/zzcpq;-><init>(Lcom/google/android/gms/internal/zzbdw;)V

    invoke-virtual {v9}, Lcom/google/android/gms/nearby/messages/SubscribeOptions;->getFilter()Lcom/google/android/gms/nearby/messages/MessageFilter;

    move-result-object v4

    if-nez v6, :cond_0

    move-object v7, v1

    :goto_0
    iget-boolean v8, v9, Lcom/google/android/gms/nearby/messages/SubscribeOptions;->zzbyA:Z

    iget v9, v9, Lcom/google/android/gms/nearby/messages/SubscribeOptions;->zzbyB:I

    move-object v6, v1

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;-><init>(Landroid/os/IBinder;Lcom/google/android/gms/nearby/messages/Strategy;Landroid/os/IBinder;Lcom/google/android/gms/nearby/messages/MessageFilter;Landroid/app/PendingIntent;[BLandroid/os/IBinder;ZI)V

    invoke-virtual {p1}, Lcom/google/android/gms/nearby/messages/internal/zzah;->zzrf()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/nearby/messages/internal/zzs;

    invoke-interface {v1, v0}, Lcom/google/android/gms/nearby/messages/internal/zzs;->zza(Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;)V

    return-void

    :cond_0
    new-instance v7, Lcom/google/android/gms/internal/zzcpx;

    invoke-direct {v7, v6}, Lcom/google/android/gms/internal/zzcpx;-><init>(Lcom/google/android/gms/internal/zzbdw;)V

    goto :goto_0
.end method
