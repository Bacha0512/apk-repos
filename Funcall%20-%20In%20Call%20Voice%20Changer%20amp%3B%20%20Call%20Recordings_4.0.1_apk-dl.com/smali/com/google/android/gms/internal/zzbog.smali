.class public final Lcom/google/android/gms/internal/zzbog;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;

# interfaces
.implements Lcom/google/android/gms/drive/FileUploadPreferences;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzbog;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzaOL:I

.field private zzaOM:I

.field private zzaON:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzboh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzboh;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbog;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzbog;->zzaOL:I

    iput p2, p0, Lcom/google/android/gms/internal/zzbog;->zzaOM:I

    iput-boolean p3, p0, Lcom/google/android/gms/internal/zzbog;->zzaON:Z

    return-void
.end method

.method private static zzaP(I)Z
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static zzaQ(I)Z
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x100
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final getBatteryUsagePreference()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzbog;->zzaOM:I

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbog;->zzaQ(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/zzbog;->zzaOM:I

    goto :goto_0
.end method

.method public final getNetworkTypePreference()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzbog;->zzaOL:I

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbog;->zzaP(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/zzbog;->zzaOL:I

    goto :goto_0
.end method

.method public final isRoamingAllowed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbog;->zzaON:Z

    return v0
.end method

.method public final setBatteryUsagePreference(I)V
    .locals 2

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbog;->zzaQ(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid battery usage preference value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Lcom/google/android/gms/internal/zzbog;->zzaOM:I

    return-void
.end method

.method public final setNetworkTypePreference(I)V
    .locals 2

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbog;->zzaP(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid data connection preference value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Lcom/google/android/gms/internal/zzbog;->zzaOL:I

    return-void
.end method

.method public final setRoamingAllowed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzbog;->zzaON:Z

    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zze(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/gms/internal/zzbog;->zzaOL:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzc(Landroid/os/Parcel;II)V

    const/4 v1, 0x3

    iget v2, p0, Lcom/google/android/gms/internal/zzbog;->zzaOM:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzc(Landroid/os/Parcel;II)V

    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzbog;->zzaON:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;IZ)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzI(Landroid/os/Parcel;I)V

    return-void
.end method
