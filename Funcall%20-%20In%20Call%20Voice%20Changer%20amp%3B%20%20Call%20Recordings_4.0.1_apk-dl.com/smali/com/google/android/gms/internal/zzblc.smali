.class public final Lcom/google/android/gms/internal/zzblc;
.super Ljava/lang/Object;


# instance fields
.field private zzaME:Lcom/google/android/gms/drive/DriveId;

.field private zzaNA:Lcom/google/android/gms/drive/MetadataChangeSet;

.field private zzaNB:Ljava/lang/Integer;

.field private final zzaNC:I

.field private zzaoy:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzblc;->zzaNC:I

    return-void
.end method


# virtual methods
.method public final build(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/content/IntentSender;
    .locals 8

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzblc;->zzaNA:Lcom/google/android/gms/drive/MetadataChangeSet;

    const-string v2, "Must provide initial metadata to CreateFileActivityBuilder."

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/zzbo;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v1

    const-string v2, "Client must be connected"

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/zzbo;->zza(ZLjava/lang/Object;)V

    sget-object v1, Lcom/google/android/gms/drive/Drive;->zzajR:Lcom/google/android/gms/common/api/Api$zzf;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->zza(Lcom/google/android/gms/common/api/Api$zzc;)Lcom/google/android/gms/common/api/Api$zze;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzbmh;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzblc;->zzaNA:Lcom/google/android/gms/drive/MetadataChangeSet;

    invoke-virtual {v2}, Lcom/google/android/gms/drive/MetadataChangeSet;->zzsW()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbmh;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->setContext(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzblc;->zzaNB:Ljava/lang/Integer;

    if-nez v2, :cond_0

    :goto_0
    :try_start_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbmh;->zzrf()Landroid/os/IInterface;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/google/android/gms/internal/zzbom;

    move-object v7, v0

    new-instance v1, Lcom/google/android/gms/internal/zzbld;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzblc;->zzaNA:Lcom/google/android/gms/drive/MetadataChangeSet;

    invoke-virtual {v2}, Lcom/google/android/gms/drive/MetadataChangeSet;->zzsW()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/gms/internal/zzblc;->zzaoy:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzblc;->zzaME:Lcom/google/android/gms/drive/DriveId;

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/zzbld;-><init>(Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;ILjava/lang/String;Lcom/google/android/gms/drive/DriveId;Ljava/lang/Integer;)V

    invoke-interface {v7, v1}, Lcom/google/android/gms/internal/zzbom;->zza(Lcom/google/android/gms/internal/zzbld;)Landroid/content/IntentSender;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzblc;->zzaNB:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Unable to connect Drive Play Service"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public final zza(Lcom/google/android/gms/drive/DriveId;)V
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/DriveId;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzblc;->zzaME:Lcom/google/android/gms/drive/DriveId;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/drive/MetadataChangeSet;)V
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/MetadataChangeSet;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzblc;->zzaNA:Lcom/google/android/gms/drive/MetadataChangeSet;

    return-void
.end method

.method public final zzaM(I)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzblc;->zzaNB:Ljava/lang/Integer;

    return-void
.end method

.method public final zzcQ(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzblc;->zzaoy:Ljava/lang/String;

    return-void
.end method
