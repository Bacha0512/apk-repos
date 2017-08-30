.class public final Lcom/google/android/gms/nearby/messages/internal/zzax;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/nearby/messages/internal/zzax;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzaku:I

.field private zzbyW:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private zzbye:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private zzbyf:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private zzbza:Lcom/google/android/gms/nearby/messages/internal/zzp;

.field private zzbzb:Lcom/google/android/gms/nearby/messages/internal/ClientAppContext;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private zzbzp:Lcom/google/android/gms/nearby/messages/internal/zzaf;

.field private zzbzq:Lcom/google/android/gms/nearby/messages/Strategy;

.field private zzbzr:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private zzbzs:Lcom/google/android/gms/nearby/messages/internal/zzu;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/nearby/messages/internal/zzay;

    invoke-direct {v0}, Lcom/google/android/gms/nearby/messages/internal/zzay;-><init>()V

    sput-object v0, Lcom/google/android/gms/nearby/messages/internal/zzax;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/nearby/messages/internal/zzaf;Lcom/google/android/gms/nearby/messages/Strategy;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/IBinder;ZLcom/google/android/gms/nearby/messages/internal/ClientAppContext;)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/nearby/messages/internal/zzax;->zzaku:I

    iput-object p2, p0, Lcom/google/android/gms/nearby/messages/internal/zzax;->zzbzp:Lcom/google/android/gms/nearby/messages/internal/zzaf;

    iput-object p3, p0, Lcom/google/android/gms/nearby/messages/internal/zzax;->zzbzq:Lcom/google/android/gms/nearby/messages/Strategy;

    if-nez p4, :cond_1

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/zzax;->zzbza:Lcom/google/android/gms/nearby/messages/internal/zzp;

    iput-object p5, p0, Lcom/google/android/gms/nearby/messages/internal/zzax;->zzbye:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/nearby/messages/internal/zzax;->zzbyW:Ljava/lang/String;

    iput-boolean p7, p0, Lcom/google/android/gms/nearby/messages/internal/zzax;->zzbzr:Z

    if-nez p8, :cond_3

    :cond_0
    :goto_1
    iput-object v1, p0, Lcom/google/android/gms/nearby/messages/internal/zzax;->zzbzs:Lcom/google/android/gms/nearby/messages/internal/zzu;

    iput-boolean p9, p0, Lcom/google/android/gms/nearby/messages/internal/zzax;->zzbyf:Z

    invoke-static {p10, p6, p5, p9}, Lcom/google/android/gms/nearby/messages/internal/ClientAppContext;->zza(Lcom/google/android/gms/nearby/messages/internal/ClientAppContext;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/gms/nearby/messages/internal/ClientAppContext;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/zzax;->zzbzb:Lcom/google/android/gms/nearby/messages/internal/ClientAppContext;

    return-void

    :cond_1
    const-string v0, "com.google.android.gms.nearby.messages.internal.INearbyMessagesCallback"

    invoke-interface {p4, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v2, v0, Lcom/google/android/gms/nearby/messages/internal/zzp;

    if-eqz v2, :cond_2

    check-cast v0, Lcom/google/android/gms/nearby/messages/internal/zzp;

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/google/android/gms/nearby/messages/internal/zzr;

    invoke-direct {v0, p4}, Lcom/google/android/gms/nearby/messages/internal/zzr;-><init>(Landroid/os/IBinder;)V

    goto :goto_0

    :cond_3
    if-eqz p8, :cond_0

    const-string v0, "com.google.android.gms.nearby.messages.internal.IPublishCallback"

    invoke-interface {p8, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/nearby/messages/internal/zzu;

    if-eqz v1, :cond_4

    check-cast v0, Lcom/google/android/gms/nearby/messages/internal/zzu;

    move-object v1, v0

    goto :goto_1

    :cond_4
    new-instance v1, Lcom/google/android/gms/nearby/messages/internal/zzw;

    invoke-direct {v1, p8}, Lcom/google/android/gms/nearby/messages/internal/zzw;-><init>(Landroid/os/IBinder;)V

    goto :goto_1
.end method

.method public constructor <init>(Lcom/google/android/gms/nearby/messages/internal/zzaf;Lcom/google/android/gms/nearby/messages/Strategy;Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 11

    const/4 v7, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x2

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, v5

    move-object v8, p4

    move v9, v7

    move-object v10, v5

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/nearby/messages/internal/zzax;-><init>(ILcom/google/android/gms/nearby/messages/internal/zzaf;Lcom/google/android/gms/nearby/messages/Strategy;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/IBinder;ZLcom/google/android/gms/nearby/messages/internal/ClientAppContext;)V

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zze(Landroid/os/Parcel;)I

    move-result v1

    const/4 v0, 0x1

    iget v2, p0, Lcom/google/android/gms/nearby/messages/internal/zzax;->zzaku:I

    invoke-static {p1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzc(Landroid/os/Parcel;II)V

    const/4 v0, 0x2

    iget-object v2, p0, Lcom/google/android/gms/nearby/messages/internal/zzax;->zzbzp:Lcom/google/android/gms/nearby/messages/internal/zzaf;

    invoke-static {p1, v0, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v0, 0x3

    iget-object v2, p0, Lcom/google/android/gms/nearby/messages/internal/zzax;->zzbzq:Lcom/google/android/gms/nearby/messages/Strategy;

    invoke-static {p1, v0, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v0, 0x4

    iget-object v2, p0, Lcom/google/android/gms/nearby/messages/internal/zzax;->zzbza:Lcom/google/android/gms/nearby/messages/internal/zzp;

    invoke-interface {v2}, Lcom/google/android/gms/nearby/messages/internal/zzp;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {p1, v0, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/4 v0, 0x5

    iget-object v2, p0, Lcom/google/android/gms/nearby/messages/internal/zzax;->zzbye:Ljava/lang/String;

    invoke-static {p1, v0, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x6

    iget-object v2, p0, Lcom/google/android/gms/nearby/messages/internal/zzax;->zzbyW:Ljava/lang/String;

    invoke-static {p1, v0, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x7

    iget-boolean v2, p0, Lcom/google/android/gms/nearby/messages/internal/zzax;->zzbzr:Z

    invoke-static {p1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;IZ)V

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/zzax;->zzbzs:Lcom/google/android/gms/nearby/messages/internal/zzu;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v2, v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/16 v0, 0x9

    iget-boolean v2, p0, Lcom/google/android/gms/nearby/messages/internal/zzax;->zzbyf:Z

    invoke-static {p1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;IZ)V

    const/16 v0, 0xa

    iget-object v2, p0, Lcom/google/android/gms/nearby/messages/internal/zzax;->zzbzb:Lcom/google/android/gms/nearby/messages/internal/ClientAppContext;

    invoke-static {p1, v0, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzI(Landroid/os/Parcel;I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/zzax;->zzbzs:Lcom/google/android/gms/nearby/messages/internal/zzu;

    invoke-interface {v0}, Lcom/google/android/gms/nearby/messages/internal/zzu;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method
