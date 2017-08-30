.class public final Lcom/google/android/gms/fitness/request/zzf;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/fitness/request/zzf;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final versionCode:I

.field private zzaSZ:Lcom/google/android/gms/fitness/data/DataType;

.field private final zzaWp:Lcom/google/android/gms/internal/zzbvs;

.field private final zzaWq:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/fitness/request/zzg;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/zzg;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/request/zzf;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILandroid/os/IBinder;Lcom/google/android/gms/fitness/data/DataType;Z)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/request/zzf;->versionCode:I

    invoke-static {p2}, Lcom/google/android/gms/internal/zzbvt;->zzO(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzbvs;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/zzf;->zzaWp:Lcom/google/android/gms/internal/zzbvs;

    iput-object p3, p0, Lcom/google/android/gms/fitness/request/zzf;->zzaSZ:Lcom/google/android/gms/fitness/data/DataType;

    iput-boolean p4, p0, Lcom/google/android/gms/fitness/request/zzf;->zzaWq:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzbvs;Lcom/google/android/gms/fitness/data/DataType;Z)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/fitness/request/zzf;->versionCode:I

    iput-object p1, p0, Lcom/google/android/gms/fitness/request/zzf;->zzaWp:Lcom/google/android/gms/internal/zzbvs;

    iput-object p2, p0, Lcom/google/android/gms/fitness/request/zzf;->zzaSZ:Lcom/google/android/gms/fitness/data/DataType;

    iput-boolean p3, p0, Lcom/google/android/gms/fitness/request/zzf;->zzaWq:Z

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    const-string v1, "DailyTotalRequest{%s}"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/zzf;->zzaSZ:Lcom/google/android/gms/fitness/data/DataType;

    if-nez v0, :cond_0

    const-string v0, "null"

    :goto_0
    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/zzf;->zzaSZ:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataType;->zztO()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zze(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/zzf;->zzaWp:Lcom/google/android/gms/internal/zzbvs;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzbvs;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/zzf;->zzaSZ:Lcom/google/android/gms/fitness/data/DataType;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/google/android/gms/fitness/request/zzf;->zzaWq:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;IZ)V

    const/16 v1, 0x3e8

    iget v2, p0, Lcom/google/android/gms/fitness/request/zzf;->versionCode:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzc(Landroid/os/Parcel;II)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzI(Landroid/os/Parcel;I)V

    return-void
.end method
