.class final Lcom/google/android/gms/internal/zzbml;
.super Lcom/google/android/gms/internal/zzbmg;


# instance fields
.field private synthetic zzaOd:Lcom/google/android/gms/drive/DriveId;

.field private synthetic zzaOe:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbmh;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/DriveId;I)V
    .locals 1

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbml;->zzaOd:Lcom/google/android/gms/drive/DriveId;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzbml;->zzaOe:I

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzbmg;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    const/4 v4, 0x0

    check-cast p1, Lcom/google/android/gms/internal/zzbmh;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbmh;->zzrf()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbom;

    new-instance v1, Lcom/google/android/gms/internal/zzbqk;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbml;->zzaOd:Lcom/google/android/gms/drive/DriveId;

    iget v3, p0, Lcom/google/android/gms/internal/zzbml;->zzaOe:I

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/zzbqk;-><init>(Lcom/google/android/gms/drive/DriveId;I)V

    new-instance v2, Lcom/google/android/gms/internal/zzbqq;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzbqq;-><init>(Lcom/google/android/gms/internal/zzbaz;)V

    invoke-interface {v0, v1, v4, v4, v2}, Lcom/google/android/gms/internal/zzbom;->zza(Lcom/google/android/gms/internal/zzbqk;Lcom/google/android/gms/internal/zzboq;Ljava/lang/String;Lcom/google/android/gms/internal/zzboo;)V

    return-void
.end method
