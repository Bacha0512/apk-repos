.class public final Lcom/google/android/gms/internal/zzayf;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzayf;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzaqD:D

.field private zzaqE:Z

.field private zzaxT:I

.field private zzaxU:I

.field private zzaye:Lcom/google/android/gms/cast/ApplicationMetadata;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzayg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzayg;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzayf;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    const/4 v5, -0x1

    const-wide/high16 v2, 0x7ff8000000000000L    # NaN

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move v7, v5

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/zzayf;-><init>(DZILcom/google/android/gms/cast/ApplicationMetadata;I)V

    return-void
.end method

.method constructor <init>(DZILcom/google/android/gms/cast/ApplicationMetadata;I)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzayf;->zzaqD:D

    iput-boolean p3, p0, Lcom/google/android/gms/internal/zzayf;->zzaqE:Z

    iput p4, p0, Lcom/google/android/gms/internal/zzayf;->zzaxT:I

    iput-object p5, p0, Lcom/google/android/gms/internal/zzayf;->zzaye:Lcom/google/android/gms/cast/ApplicationMetadata;

    iput p6, p0, Lcom/google/android/gms/internal/zzayf;->zzaxU:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/internal/zzayf;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/internal/zzayf;

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzayf;->zzaqD:D

    iget-wide v4, p1, Lcom/google/android/gms/internal/zzayf;->zzaqD:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzayf;->zzaqE:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/zzayf;->zzaqE:Z

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/gms/internal/zzayf;->zzaxT:I

    iget v3, p1, Lcom/google/android/gms/internal/zzayf;->zzaxT:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzayf;->zzaye:Lcom/google/android/gms/cast/ApplicationMetadata;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzayf;->zzaye:Lcom/google/android/gms/cast/ApplicationMetadata;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzaye;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/google/android/gms/internal/zzayf;->zzaxU:I

    iget v3, p1, Lcom/google/android/gms/internal/zzayf;->zzaxU:I

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final getActiveInputState()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzayf;->zzaxT:I

    return v0
.end method

.method public final getApplicationMetadata()Lcom/google/android/gms/cast/ApplicationMetadata;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzayf;->zzaye:Lcom/google/android/gms/cast/ApplicationMetadata;

    return-object v0
.end method

.method public final getStandbyState()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzayf;->zzaxU:I

    return v0
.end method

.method public final getVolume()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzayf;->zzaqD:D

    return-wide v0
.end method

.method public final hashCode()I
    .locals 4

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzayf;->zzaqD:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzayf;->zzaqE:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/gms/internal/zzayf;->zzaxT:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzayf;->zzaye:Lcom/google/android/gms/cast/ApplicationMetadata;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget v2, p0, Lcom/google/android/gms/internal/zzayf;->zzaxU:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zze(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzayf;->zzaqD:D

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ID)V

    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzayf;->zzaqE:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;IZ)V

    const/4 v1, 0x4

    iget v2, p0, Lcom/google/android/gms/internal/zzayf;->zzaxT:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzc(Landroid/os/Parcel;II)V

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzayf;->zzaye:Lcom/google/android/gms/cast/ApplicationMetadata;

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x6

    iget v2, p0, Lcom/google/android/gms/internal/zzayf;->zzaxU:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzc(Landroid/os/Parcel;II)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzI(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zzoJ()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzayf;->zzaqE:Z

    return v0
.end method
