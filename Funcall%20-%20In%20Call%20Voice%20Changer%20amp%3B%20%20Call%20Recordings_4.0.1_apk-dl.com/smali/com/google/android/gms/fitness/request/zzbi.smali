.class public final Lcom/google/android/gms/fitness/request/zzbi;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/fitness/request/zzbi;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzaWo:Lcom/google/android/gms/internal/zzbxg;

.field private zzaXr:Lcom/google/android/gms/fitness/data/Subscription;

.field private final zzaXs:Z

.field private final zzaku:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/fitness/request/zzbj;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/zzbj;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/request/zzbi;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/fitness/data/Subscription;ZLandroid/os/IBinder;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/request/zzbi;->zzaku:I

    iput-object p2, p0, Lcom/google/android/gms/fitness/request/zzbi;->zzaXr:Lcom/google/android/gms/fitness/data/Subscription;

    iput-boolean p3, p0, Lcom/google/android/gms/fitness/request/zzbi;->zzaXs:Z

    invoke-static {p4}, Lcom/google/android/gms/internal/zzbxh;->zzW(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzbxg;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/zzbi;->zzaWo:Lcom/google/android/gms/internal/zzbxg;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/fitness/data/Subscription;ZLcom/google/android/gms/internal/zzbxg;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/fitness/request/zzbi;->zzaku:I

    iput-object p1, p0, Lcom/google/android/gms/fitness/request/zzbi;->zzaXr:Lcom/google/android/gms/fitness/data/Subscription;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/fitness/request/zzbi;->zzaXs:Z

    iput-object p3, p0, Lcom/google/android/gms/fitness/request/zzbi;->zzaWo:Lcom/google/android/gms/internal/zzbxg;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzbe;->zzt(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzbg;

    move-result-object v0

    const-string v1, "subscription"

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/zzbi;->zzaXr:Lcom/google/android/gms/fitness/data/Subscription;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzbg;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzbg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzbg;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zze(Landroid/os/Parcel;)I

    move-result v1

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/zzbi;->zzaXr:Lcom/google/android/gms/fitness/data/Subscription;

    invoke-static {p1, v0, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v0, 0x2

    iget-boolean v2, p0, Lcom/google/android/gms/fitness/request/zzbi;->zzaXs:Z

    invoke-static {p1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;IZ)V

    const/4 v2, 0x3

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/zzbi;->zzaWo:Lcom/google/android/gms/internal/zzbxg;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v2, v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/16 v0, 0x3e8

    iget v2, p0, Lcom/google/android/gms/fitness/request/zzbi;->zzaku:I

    invoke-static {p1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzc(Landroid/os/Parcel;II)V

    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzI(Landroid/os/Parcel;I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/zzbi;->zzaWo:Lcom/google/android/gms/internal/zzbxg;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbxg;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method
