.class public final Lcom/google/android/gms/fitness/request/zzv;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/fitness/request/zzv;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mPendingIntent:Landroid/app/PendingIntent;

.field private final zzaWo:Lcom/google/android/gms/internal/zzbxg;

.field private final zzaku:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/fitness/request/zzw;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/zzw;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/request/zzv;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILandroid/app/PendingIntent;Landroid/os/IBinder;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/request/zzv;->zzaku:I

    iput-object p2, p0, Lcom/google/android/gms/fitness/request/zzv;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-static {p3}, Lcom/google/android/gms/internal/zzbxh;->zzW(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzbxg;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/zzv;->zzaWo:Lcom/google/android/gms/internal/zzbxg;

    return-void
.end method

.method public constructor <init>(Landroid/app/PendingIntent;Landroid/os/IBinder;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/fitness/request/zzv;->zzaku:I

    iput-object p1, p0, Lcom/google/android/gms/fitness/request/zzv;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-static {p2}, Lcom/google/android/gms/internal/zzbxh;->zzW(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzbxg;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/zzv;->zzaWo:Lcom/google/android/gms/internal/zzbxg;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p1, p0, :cond_0

    instance-of v0, p1, Lcom/google/android/gms/fitness/request/zzv;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/android/gms/fitness/request/zzv;

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/zzv;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object v1, p1, Lcom/google/android/gms/fitness/request/zzv;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzbe;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/zzv;->mPendingIntent:Landroid/app/PendingIntent;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "DataUpdateListenerUnregistrationRequest"

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zze(Landroid/os/Parcel;)I

    move-result v1

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/zzv;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-static {p1, v0, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/zzv;->zzaWo:Lcom/google/android/gms/internal/zzbxg;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v2, v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/16 v0, 0x3e8

    iget v2, p0, Lcom/google/android/gms/fitness/request/zzv;->zzaku:I

    invoke-static {p1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzc(Landroid/os/Parcel;II)V

    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzI(Landroid/os/Parcel;I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/zzv;->zzaWo:Lcom/google/android/gms/internal/zzbxg;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbxg;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method
