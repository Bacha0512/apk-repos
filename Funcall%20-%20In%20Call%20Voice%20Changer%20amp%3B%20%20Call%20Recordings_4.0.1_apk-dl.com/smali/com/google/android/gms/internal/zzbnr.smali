.class final Lcom/google/android/gms/internal/zzbnr;
.super Lcom/google/android/gms/internal/zzbny;


# instance fields
.field private synthetic zzaOD:Lcom/google/android/gms/internal/zzbnn;

.field private synthetic zzaOr:Lcom/google/android/gms/drive/MetadataChangeSet;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbnn;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/MetadataChangeSet;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbnr;->zzaOD:Lcom/google/android/gms/internal/zzbnn;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbnr;->zzaOr:Lcom/google/android/gms/drive/MetadataChangeSet;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/zzbny;-><init>(Lcom/google/android/gms/internal/zzbnn;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzbno;)V

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

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbnr;->zzaOr:Lcom/google/android/gms/drive/MetadataChangeSet;

    invoke-virtual {v0}, Lcom/google/android/gms/drive/MetadataChangeSet;->zzsW()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbmh;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->setContext(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbmh;->zzrf()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbom;

    new-instance v1, Lcom/google/android/gms/internal/zzbqx;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbnr;->zzaOD:Lcom/google/android/gms/internal/zzbnn;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzbnn;->zzaLV:Lcom/google/android/gms/drive/DriveId;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbnr;->zzaOr:Lcom/google/android/gms/drive/MetadataChangeSet;

    invoke-virtual {v3}, Lcom/google/android/gms/drive/MetadataChangeSet;->zzsW()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/zzbqx;-><init>(Lcom/google/android/gms/drive/DriveId;Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;)V

    new-instance v2, Lcom/google/android/gms/internal/zzbnw;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzbnw;-><init>(Lcom/google/android/gms/internal/zzbaz;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzbom;->zza(Lcom/google/android/gms/internal/zzbqx;Lcom/google/android/gms/internal/zzboo;)V

    return-void
.end method
