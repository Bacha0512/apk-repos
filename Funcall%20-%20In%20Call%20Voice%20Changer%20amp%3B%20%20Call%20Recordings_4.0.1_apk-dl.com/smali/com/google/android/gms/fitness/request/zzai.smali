.class public final Lcom/google/android/gms/fitness/request/zzai;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/fitness/request/zzai;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzaUe:Lcom/google/android/gms/fitness/data/DataType;

.field private final zzaWR:Lcom/google/android/gms/internal/zzbwx;

.field private final zzaku:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/fitness/request/zzaj;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/zzaj;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/request/zzai;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/fitness/data/DataType;Landroid/os/IBinder;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/request/zzai;->zzaku:I

    iput-object p2, p0, Lcom/google/android/gms/fitness/request/zzai;->zzaUe:Lcom/google/android/gms/fitness/data/DataType;

    invoke-static {p3}, Lcom/google/android/gms/internal/zzbwy;->zzT(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzbwx;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/zzai;->zzaWR:Lcom/google/android/gms/internal/zzbwx;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/fitness/data/DataType;Lcom/google/android/gms/internal/zzbwx;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/fitness/request/zzai;->zzaku:I

    iput-object p1, p0, Lcom/google/android/gms/fitness/request/zzai;->zzaUe:Lcom/google/android/gms/fitness/data/DataType;

    iput-object p2, p0, Lcom/google/android/gms/fitness/request/zzai;->zzaWR:Lcom/google/android/gms/internal/zzbwx;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zze(Landroid/os/Parcel;)I

    move-result v1

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/zzai;->zzaUe:Lcom/google/android/gms/fitness/data/DataType;

    invoke-static {p1, v0, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/zzai;->zzaWR:Lcom/google/android/gms/internal/zzbwx;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v2, v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/16 v0, 0x3e8

    iget v2, p0, Lcom/google/android/gms/fitness/request/zzai;->zzaku:I

    invoke-static {p1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzc(Landroid/os/Parcel;II)V

    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzI(Landroid/os/Parcel;I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/zzai;->zzaWR:Lcom/google/android/gms/internal/zzbwx;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbwx;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method
