.class final Lcom/google/android/gms/internal/zzbyn;
.super Lcom/google/android/gms/internal/zzbvh;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzbvh",
        "<",
        "Lcom/google/android/gms/fitness/result/ListSubscriptionsResult;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzaVN:Lcom/google/android/gms/fitness/data/DataType;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbyl;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/data/DataType;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbyn;->zzaVN:Lcom/google/android/gms/fitness/data/DataType;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzbvh;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    check-cast p1, Lcom/google/android/gms/internal/zzbvg;

    new-instance v1, Lcom/google/android/gms/internal/zzbyr;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/zzbyr;-><init>(Lcom/google/android/gms/internal/zzbaz;Lcom/google/android/gms/internal/zzbym;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbvg;->zzrf()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbwr;

    new-instance v2, Lcom/google/android/gms/fitness/request/zzai;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbyn;->zzaVN:Lcom/google/android/gms/fitness/data/DataType;

    invoke-direct {v2, v3, v1}, Lcom/google/android/gms/fitness/request/zzai;-><init>(Lcom/google/android/gms/fitness/data/DataType;Lcom/google/android/gms/internal/zzbwx;)V

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zzbwr;->zza(Lcom/google/android/gms/fitness/request/zzai;)V

    return-void
.end method

.method protected final synthetic zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/fitness/result/ListSubscriptionsResult;->zzD(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/fitness/result/ListSubscriptionsResult;

    move-result-object v0

    return-object v0
.end method
