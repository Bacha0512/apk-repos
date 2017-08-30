.class public Lcom/google/android/gms/fitness/data/MapValue;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;

# interfaces
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/fitness/data/MapValue;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzaUT:I

.field private final zzaUU:F

.field private final zzaku:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/fitness/data/zzw;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/data/zzw;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/data/MapValue;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, p2}, Lcom/google/android/gms/fitness/data/MapValue;-><init>(IIF)V

    return-void
.end method

.method constructor <init>(IIF)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/data/MapValue;->zzaku:I

    iput p2, p0, Lcom/google/android/gms/fitness/data/MapValue;->zzaUT:I

    iput p3, p0, Lcom/google/android/gms/fitness/data/MapValue;->zzaUU:F

    return-void
.end method


# virtual methods
.method public final asFloat()F
    .locals 2

    iget v0, p0, Lcom/google/android/gms/fitness/data/MapValue;->zzaUT:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Value is not in float format"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzbo;->zza(ZLjava/lang/Object;)V

    iget v0, p0, Lcom/google/android/gms/fitness/data/MapValue;->zzaUU:F

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eq p0, p1, :cond_0

    instance-of v2, p1, Lcom/google/android/gms/fitness/data/MapValue;

    if-eqz v2, :cond_1

    check-cast p1, Lcom/google/android/gms/fitness/data/MapValue;

    iget v2, p0, Lcom/google/android/gms/fitness/data/MapValue;->zzaUT:I

    iget v3, p1, Lcom/google/android/gms/fitness/data/MapValue;->zzaUT:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/google/android/gms/fitness/data/MapValue;->zzaUT:I

    packed-switch v2, :pswitch_data_0

    iget v2, p0, Lcom/google/android/gms/fitness/data/MapValue;->zzaUU:F

    iget v3, p1, Lcom/google/android/gms/fitness/data/MapValue;->zzaUU:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    move v2, v1

    :goto_0
    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/MapValue;->asFloat()F

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/MapValue;->asFloat()F

    move-result v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_0

    :cond_2
    move v2, v0

    goto :goto_0

    :cond_3
    move v2, v0

    goto :goto_0

    :cond_4
    move v2, v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/data/MapValue;->zzaUU:F

    float-to-int v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/data/MapValue;->zzaUT:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "unknown"

    :goto_0
    return-object v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/MapValue;->asFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zze(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/fitness/data/MapValue;->zzaUT:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzc(Landroid/os/Parcel;II)V

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/gms/fitness/data/MapValue;->zzaUU:F

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;IF)V

    const/16 v1, 0x3e8

    iget v2, p0, Lcom/google/android/gms/fitness/data/MapValue;->zzaku:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzc(Landroid/os/Parcel;II)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzI(Landroid/os/Parcel;I)V

    return-void
.end method
