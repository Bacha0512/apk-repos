.class public final Lcom/google/android/gms/internal/zzcpl;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzcpl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzaku:I

.field private zzbyP:I

.field private zzbyQ:[B

.field private zzbyR:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzcpm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzcpm;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzcpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(II[BZ)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzcpl;->zzaku:I

    iput p2, p0, Lcom/google/android/gms/internal/zzcpl;->zzbyP:I

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcpl;->zzbyQ:[B

    iput-boolean p4, p0, Lcom/google/android/gms/internal/zzcpl;->zzbyR:Z

    return-void
.end method

.method private constructor <init>(I[B)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/google/android/gms/internal/zzcpl;-><init>(II[BZ)V

    return-void
.end method

.method public static zzT(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzcpl;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Lcom/google/android/gms/nearby/messages/internal/zzg;

    invoke-direct {v1, v0}, Lcom/google/android/gms/nearby/messages/internal/zzg;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/zzcpl;

    const/4 v2, 0x2

    invoke-virtual {v1}, Lcom/google/android/gms/nearby/messages/internal/zzg;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/zzcpl;-><init>(I[B)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static zza(Ljava/util/UUID;Ljava/lang/Short;Ljava/lang/Short;)Lcom/google/android/gms/internal/zzcpl;
    .locals 3
    .param p1    # Ljava/lang/Short;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Short;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Lcom/google/android/gms/nearby/messages/internal/zzl;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/nearby/messages/internal/zzl;-><init>(Ljava/util/UUID;Ljava/lang/Short;Ljava/lang/Short;)V

    new-instance v1, Lcom/google/android/gms/internal/zzcpl;

    const/4 v2, 0x3

    invoke-virtual {v0}, Lcom/google/android/gms/nearby/messages/internal/zzl;->getBytes()[B

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/zzcpl;-><init>(I[B)V

    return-object v1
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zze(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/internal/zzcpl;->zzbyP:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzc(Landroid/os/Parcel;II)V

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcpl;->zzbyQ:[B

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;I[BZ)V

    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzcpl;->zzbyR:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;IZ)V

    const/16 v1, 0x3e8

    iget v2, p0, Lcom/google/android/gms/internal/zzcpl;->zzaku:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzc(Landroid/os/Parcel;II)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzI(Landroid/os/Parcel;I)V

    return-void
.end method
