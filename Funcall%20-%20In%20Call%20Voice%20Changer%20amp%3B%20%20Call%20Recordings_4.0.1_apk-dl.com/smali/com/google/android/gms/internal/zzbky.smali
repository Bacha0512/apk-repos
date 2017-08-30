.class public final Lcom/google/android/gms/internal/zzbky;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzbky;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzaNv:Lcom/google/android/gms/drive/zzc;

.field private zzaNx:I

.field private zzaNz:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzbkz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbkz;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbky;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/gms/internal/zzbky;-><init>(Lcom/google/android/gms/drive/zzc;Ljava/lang/Boolean;I)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/drive/zzc;Ljava/lang/Boolean;I)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbky;->zzaNv:Lcom/google/android/gms/drive/zzc;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbky;->zzaNz:Ljava/lang/Boolean;

    iput p3, p0, Lcom/google/android/gms/internal/zzbky;->zzaNx:I

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zze(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbky;->zzaNv:Lcom/google/android/gms/drive/zzc;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbky;->zzaNz:Ljava/lang/Boolean;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILjava/lang/Boolean;Z)V

    const/4 v1, 0x4

    iget v2, p0, Lcom/google/android/gms/internal/zzbky;->zzaNx:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzc(Landroid/os/Parcel;II)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzI(Landroid/os/Parcel;I)V

    return-void
.end method
