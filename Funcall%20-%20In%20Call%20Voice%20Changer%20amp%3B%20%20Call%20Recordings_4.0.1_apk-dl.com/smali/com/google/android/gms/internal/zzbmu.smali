.class final Lcom/google/android/gms/internal/zzbmu;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;


# instance fields
.field private final zzaOo:Lcom/google/android/gms/internal/zzbdw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbdw",
            "<",
            "Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzbdw;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbdw",
            "<",
            "Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbmu;->zzaOo:Lcom/google/android/gms/internal/zzbdw;

    return-void
.end method


# virtual methods
.method public final onProgress(JJ)V
    .locals 7

    iget-object v6, p0, Lcom/google/android/gms/internal/zzbmu;->zzaOo:Lcom/google/android/gms/internal/zzbdw;

    new-instance v0, Lcom/google/android/gms/internal/zzbmv;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzbmv;-><init>(Lcom/google/android/gms/internal/zzbmu;JJ)V

    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/zzbdw;->zza(Lcom/google/android/gms/internal/zzbdz;)V

    return-void
.end method
