.class public final Lcom/google/android/gms/internal/zzapb;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzapb;",
            ">;"
        }
    .end annotation
.end field

.field private static zzaje:I

.field private static final zzajf:Lcom/google/android/gms/internal/zzapi;


# instance fields
.field private zzajg:Ljava/lang/String;

.field private zzajh:Lcom/google/android/gms/internal/zzapi;

.field public final zzaji:I

.field private zzajj:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "-1"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/gms/internal/zzapb;->zzaje:I

    new-instance v0, Lcom/google/android/gms/internal/zzapc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzapc;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzapb;->CREATOR:Landroid/os/Parcelable$Creator;

    new-instance v0, Lcom/google/android/gms/internal/zzapj;

    const-string v1, "SsbContext"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzapj;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzapj;->zzK(Z)Lcom/google/android/gms/internal/zzapj;

    move-result-object v0

    const-string v1, "blob"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzapj;->zzbI(Ljava/lang/String;)Lcom/google/android/gms/internal/zzapj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzapj;->zzml()Lcom/google/android/gms/internal/zzapi;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzapb;->zzajf:Lcom/google/android/gms/internal/zzapi;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzapi;)V
    .locals 2

    sget v0, Lcom/google/android/gms/internal/zzapb;->zzaje:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/gms/internal/zzapb;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzapi;I[B)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzapi;I[B)V
    .locals 4

    const/16 v3, 0x20

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    sget v0, Lcom/google/android/gms/internal/zzapb;->zzaje:I

    if-eq p3, v0, :cond_0

    invoke-static {p3}, Lcom/google/android/gms/internal/zzaph;->zzQ(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Invalid section type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzbo;->zzb(ZLjava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzapb;->zzajg:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzapb;->zzajh:Lcom/google/android/gms/internal/zzapi;

    iput p3, p0, Lcom/google/android/gms/internal/zzapb;->zzaji:I

    iput-object p4, p0, Lcom/google/android/gms/internal/zzapb;->zzajj:[B

    iget v0, p0, Lcom/google/android/gms/internal/zzapb;->zzaji:I

    sget v1, Lcom/google/android/gms/internal/zzapb;->zzaje:I

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/google/android/gms/internal/zzapb;->zzaji:I

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaph;->zzQ(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/google/android/gms/internal/zzapb;->zzaji:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Invalid section type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_4

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzapb;->zzajg:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzapb;->zzajj:[B

    if-eqz v0, :cond_3

    const-string v0, "Both content and blobContent set"

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzapi;Ljava/lang/String;)V
    .locals 2

    invoke-static {p3}, Lcom/google/android/gms/internal/zzaph;->zzbH(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/gms/internal/zzapb;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzapi;I[B)V

    return-void
.end method

.method public constructor <init>([BLcom/google/android/gms/internal/zzapi;)V
    .locals 2

    const/4 v0, 0x0

    sget v1, Lcom/google/android/gms/internal/zzapb;->zzaje:I

    invoke-direct {p0, v0, p2, v1, p1}, Lcom/google/android/gms/internal/zzapb;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzapi;I[B)V

    return-void
.end method

.method public static zzd([B)Lcom/google/android/gms/internal/zzapb;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzapb;

    sget-object v1, Lcom/google/android/gms/internal/zzapb;->zzajf:Lcom/google/android/gms/internal/zzapi;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/zzapb;-><init>([BLcom/google/android/gms/internal/zzapi;)V

    return-object v0
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zze(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzapb;->zzajg:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzapb;->zzajh:Lcom/google/android/gms/internal/zzapi;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x4

    iget v2, p0, Lcom/google/android/gms/internal/zzapb;->zzaji:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzc(Landroid/os/Parcel;II)V

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzapb;->zzajj:[B

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;I[BZ)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzI(Landroid/os/Parcel;I)V

    return-void
.end method
