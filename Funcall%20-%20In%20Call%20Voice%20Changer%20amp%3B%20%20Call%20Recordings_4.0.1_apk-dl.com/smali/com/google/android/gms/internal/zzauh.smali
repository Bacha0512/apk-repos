.class public final Lcom/google/android/gms/internal/zzauh;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;

# interfaces
.implements Lcom/google/android/gms/awareness/state/Weather;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzauh;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzaot:F

.field private final zzaou:F

.field private final zzaov:F

.field private final zzaow:I

.field private final zzaox:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzaui;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzaui;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzauh;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(FFFI[I)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzauh;->zzaot:F

    iput p2, p0, Lcom/google/android/gms/internal/zzauh;->zzaou:F

    iput p3, p0, Lcom/google/android/gms/internal/zzauh;->zzaov:F

    iput p4, p0, Lcom/google/android/gms/internal/zzauh;->zzaow:I

    iput-object p5, p0, Lcom/google/android/gms/internal/zzauh;->zzaox:[I

    return-void
.end method

.method private static zza(IF)F
    .locals 3

    packed-switch p0, :pswitch_data_0

    const-string v0, "WeatherImpl"

    const-string v1, "Invalid temperature unit %s"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zzeq;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid temperature unit"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/high16 v0, 0x40a00000    # 5.0f

    const/high16 v1, 0x42000000    # 32.0f

    sub-float v1, p1, v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x41100000    # 9.0f

    div-float p1, v0, v1

    :pswitch_1
    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final getConditions()[I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauh;->zzaox:[I

    return-object v0
.end method

.method public final getDewPoint(I)F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzauh;->zzaov:F

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzauh;->zza(IF)F

    move-result v0

    return v0
.end method

.method public final getFeelsLikeTemperature(I)F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzauh;->zzaou:F

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzauh;->zza(IF)F

    move-result v0

    return v0
.end method

.method public final getHumidity()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzauh;->zzaow:I

    return v0
.end method

.method public final getTemperature(I)F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzauh;->zzaot:F

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzauh;->zza(IF)F

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    const/4 v1, 0x0

    const/4 v5, 0x2

    const/4 v0, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Temp="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzauh;->getTemperature(I)F

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "F/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/zzauh;->getTemperature(I)F

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "C, Feels="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzauh;->getFeelsLikeTemperature(I)F

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "F/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/zzauh;->getFeelsLikeTemperature(I)F

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "C, Dew="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzauh;->getDewPoint(I)F

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "F/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/zzauh;->getDewPoint(I)F

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "C, Humidity="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauh;->getHumidity()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", Condition="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauh;->getConditions()[I

    move-result-object v2

    if-nez v2, :cond_0

    const-string v0, "unknown"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v2, "["

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauh;->getConditions()[I

    move-result-object v4

    array-length v5, v4

    move v2, v0

    move v0, v1

    :goto_1
    if-ge v0, v5, :cond_2

    aget v6, v4, v0

    if-nez v2, :cond_1

    const-string v2, ","

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_1

    :cond_2
    const-string v0, "]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zze(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/gms/internal/zzauh;->zzaot:F

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;IF)V

    const/4 v1, 0x3

    iget v2, p0, Lcom/google/android/gms/internal/zzauh;->zzaou:F

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;IF)V

    const/4 v1, 0x4

    iget v2, p0, Lcom/google/android/gms/internal/zzauh;->zzaov:F

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;IF)V

    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauh;->getHumidity()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzc(Landroid/os/Parcel;II)V

    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauh;->getConditions()[I

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;I[IZ)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzI(Landroid/os/Parcel;I)V

    return-void
.end method
