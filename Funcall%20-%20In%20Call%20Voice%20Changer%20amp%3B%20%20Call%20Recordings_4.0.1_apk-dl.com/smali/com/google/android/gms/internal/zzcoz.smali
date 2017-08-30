.class public final Lcom/google/android/gms/internal/zzcoz;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzcoz;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final durationMillis:J

.field private final zzbwE:Lcom/google/android/gms/internal/zzcni;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final zzbwr:Ljava/lang/String;

.field private final zzbxO:Lcom/google/android/gms/internal/zzcmy;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final zzbxP:Lcom/google/android/gms/nearby/connection/DiscoveryOptions;

.field private final zzbxQ:Lcom/google/android/gms/internal/zzcna;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzcpa;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzcpa;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzcoz;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;JLcom/google/android/gms/nearby/connection/DiscoveryOptions;Landroid/os/IBinder;)V
    .locals 8
    .param p1    # Landroid/os/IBinder;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/os/IBinder;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Landroid/os/IBinder;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v7, 0x0

    if-nez p1, :cond_0

    move-object v1, v7

    :goto_0
    if-nez p2, :cond_2

    move-object v2, v7

    :goto_1
    if-nez p7, :cond_4

    :goto_2
    move-object v0, p0

    move-object v3, p3

    move-wide v4, p4

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/zzcoz;-><init>(Lcom/google/android/gms/internal/zzcni;Lcom/google/android/gms/internal/zzcmy;Ljava/lang/String;JLcom/google/android/gms/nearby/connection/DiscoveryOptions;Lcom/google/android/gms/internal/zzcna;)V

    return-void

    :cond_0
    const-string v0, "com.google.android.gms.nearby.internal.connection.IResultListener"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/zzcni;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/internal/zzcni;

    move-object v1, v0

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/zzcnk;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/zzcnk;-><init>(Landroid/os/IBinder;)V

    goto :goto_0

    :cond_2
    const-string v0, "com.google.android.gms.nearby.internal.connection.IDiscoveryCallback"

    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v2, v0, Lcom/google/android/gms/internal/zzcmy;

    if-eqz v2, :cond_3

    check-cast v0, Lcom/google/android/gms/internal/zzcmy;

    move-object v2, v0

    goto :goto_1

    :cond_3
    new-instance v2, Lcom/google/android/gms/internal/zzcmz;

    invoke-direct {v2, p2}, Lcom/google/android/gms/internal/zzcmz;-><init>(Landroid/os/IBinder;)V

    goto :goto_1

    :cond_4
    const-string v0, "com.google.android.gms.nearby.internal.connection.IDiscoveryListener"

    invoke-interface {p7, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v3, v0, Lcom/google/android/gms/internal/zzcna;

    if-eqz v3, :cond_5

    check-cast v0, Lcom/google/android/gms/internal/zzcna;

    move-object v7, v0

    goto :goto_2

    :cond_5
    new-instance v7, Lcom/google/android/gms/internal/zzcnc;

    invoke-direct {v7, p7}, Lcom/google/android/gms/internal/zzcnc;-><init>(Landroid/os/IBinder;)V

    goto :goto_2
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/zzcni;Lcom/google/android/gms/internal/zzcmy;Ljava/lang/String;JLcom/google/android/gms/nearby/connection/DiscoveryOptions;Lcom/google/android/gms/internal/zzcna;)V
    .locals 0
    .param p1    # Lcom/google/android/gms/internal/zzcni;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/internal/zzcmy;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Lcom/google/android/gms/internal/zzcna;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcoz;->zzbwE:Lcom/google/android/gms/internal/zzcni;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcoz;->zzbxO:Lcom/google/android/gms/internal/zzcmy;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcoz;->zzbwr:Ljava/lang/String;

    iput-wide p4, p0, Lcom/google/android/gms/internal/zzcoz;->durationMillis:J

    iput-object p6, p0, Lcom/google/android/gms/internal/zzcoz;->zzbxP:Lcom/google/android/gms/nearby/connection/DiscoveryOptions;

    iput-object p7, p0, Lcom/google/android/gms/internal/zzcoz;->zzbxQ:Lcom/google/android/gms/internal/zzcna;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/internal/zzcoz;

    if-eqz v2, :cond_3

    check-cast p1, Lcom/google/android/gms/internal/zzcoz;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcoz;->zzbwE:Lcom/google/android/gms/internal/zzcni;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcoz;->zzbwE:Lcom/google/android/gms/internal/zzcni;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzbe;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcoz;->zzbxO:Lcom/google/android/gms/internal/zzcmy;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcoz;->zzbxO:Lcom/google/android/gms/internal/zzcmy;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzbe;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcoz;->zzbwr:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcoz;->zzbwr:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzbe;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzcoz;->durationMillis:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v4, p1, Lcom/google/android/gms/internal/zzcoz;->durationMillis:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzbe;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcoz;->zzbxP:Lcom/google/android/gms/nearby/connection/DiscoveryOptions;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcoz;->zzbxP:Lcom/google/android/gms/nearby/connection/DiscoveryOptions;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzbe;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcoz;->zzbxQ:Lcom/google/android/gms/internal/zzcna;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcoz;->zzbxQ:Lcom/google/android/gms/internal/zzcna;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzbe;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 4

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcoz;->zzbwE:Lcom/google/android/gms/internal/zzcni;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcoz;->zzbxO:Lcom/google/android/gms/internal/zzcmy;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcoz;->zzbwr:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzcoz;->durationMillis:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcoz;->zzbxP:Lcom/google/android/gms/nearby/connection/DiscoveryOptions;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcoz;->zzbxQ:Lcom/google/android/gms/internal/zzcna;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 7

    const/4 v1, 0x0

    const/4 v6, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zze(Landroid/os/Parcel;)I

    move-result v2

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcoz;->zzbwE:Lcom/google/android/gms/internal/zzcni;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    invoke-static {p1, v3, v0, v6}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/4 v3, 0x2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcoz;->zzbxO:Lcom/google/android/gms/internal/zzcmy;

    if-nez v0, :cond_1

    move-object v0, v1

    :goto_1
    invoke-static {p1, v3, v0, v6}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/4 v0, 0x3

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcoz;->zzbwr:Ljava/lang/String;

    invoke-static {p1, v0, v3, v6}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x4

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzcoz;->durationMillis:J

    invoke-static {p1, v0, v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;IJ)V

    const/4 v0, 0x5

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcoz;->zzbxP:Lcom/google/android/gms/nearby/connection/DiscoveryOptions;

    invoke-static {p1, v0, v3, p2, v6}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v0, 0x6

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcoz;->zzbxQ:Lcom/google/android/gms/internal/zzcna;

    if-nez v3, :cond_2

    :goto_2
    invoke-static {p1, v0, v1, v6}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    invoke-static {p1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzI(Landroid/os/Parcel;I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcoz;->zzbwE:Lcom/google/android/gms/internal/zzcni;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzcni;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcoz;->zzbxO:Lcom/google/android/gms/internal/zzcmy;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzcmy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcoz;->zzbxQ:Lcom/google/android/gms/internal/zzcna;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzcna;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    goto :goto_2
.end method
