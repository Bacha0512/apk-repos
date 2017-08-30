.class public final Lcom/google/android/gms/fitness/request/zzan;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/fitness/request/zzan;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mPendingIntent:Landroid/app/PendingIntent;

.field private zzaUd:Lcom/google/android/gms/fitness/data/DataSource;

.field private zzaUe:Lcom/google/android/gms/fitness/data/DataType;

.field private final zzaVj:J

.field private final zzaVk:I

.field private zzaWV:Lcom/google/android/gms/fitness/data/zzt;

.field private final zzaWW:J

.field private final zzaWX:J

.field private final zzaWY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/LocationRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final zzaWZ:J

.field private final zzaWo:Lcom/google/android/gms/internal/zzbxg;

.field private final zzaXa:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzcbz;",
            ">;"
        }
    .end annotation
.end field

.field private final zzaku:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/fitness/request/zzao;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/zzao;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/request/zzan;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/fitness/data/DataSource;Lcom/google/android/gms/fitness/data/DataType;Landroid/os/IBinder;IIJJLandroid/app/PendingIntent;JILjava/util/List;JLandroid/os/IBinder;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/gms/fitness/data/DataSource;",
            "Lcom/google/android/gms/fitness/data/DataType;",
            "Landroid/os/IBinder;",
            "IIJJ",
            "Landroid/app/PendingIntent;",
            "JI",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/LocationRequest;",
            ">;J",
            "Landroid/os/IBinder;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/request/zzan;->zzaku:I

    iput-object p2, p0, Lcom/google/android/gms/fitness/request/zzan;->zzaUd:Lcom/google/android/gms/fitness/data/DataSource;

    iput-object p3, p0, Lcom/google/android/gms/fitness/request/zzan;->zzaUe:Lcom/google/android/gms/fitness/data/DataType;

    if-nez p4, :cond_2

    const/4 v2, 0x0

    :goto_0
    iput-object v2, p0, Lcom/google/android/gms/fitness/request/zzan;->zzaWV:Lcom/google/android/gms/fitness/data/zzt;

    const-wide/16 v2, 0x0

    cmp-long v2, p7, v2

    if-nez v2, :cond_0

    int-to-long p7, p5

    :cond_0
    iput-wide p7, p0, Lcom/google/android/gms/fitness/request/zzan;->zzaVj:J

    move-wide/from16 v0, p12

    iput-wide v0, p0, Lcom/google/android/gms/fitness/request/zzan;->zzaWX:J

    const-wide/16 v2, 0x0

    cmp-long v2, p9, v2

    if-nez v2, :cond_1

    int-to-long p9, p6

    :cond_1
    iput-wide p9, p0, Lcom/google/android/gms/fitness/request/zzan;->zzaWW:J

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/zzan;->zzaWY:Ljava/util/List;

    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/zzan;->mPendingIntent:Landroid/app/PendingIntent;

    move/from16 v0, p14

    iput v0, p0, Lcom/google/android/gms/fitness/request/zzan;->zzaVk:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/fitness/request/zzan;->zzaXa:Ljava/util/List;

    move-wide/from16 v0, p16

    iput-wide v0, p0, Lcom/google/android/gms/fitness/request/zzan;->zzaWZ:J

    invoke-static/range {p18 .. p18}, Lcom/google/android/gms/internal/zzbxh;->zzW(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzbxg;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/fitness/request/zzan;->zzaWo:Lcom/google/android/gms/internal/zzbxg;

    return-void

    :cond_2
    invoke-static {p4}, Lcom/google/android/gms/fitness/data/zzu;->zzN(Landroid/os/IBinder;)Lcom/google/android/gms/fitness/data/zzt;

    move-result-object v2

    goto :goto_0
.end method

.method private constructor <init>(Lcom/google/android/gms/fitness/data/DataSource;Lcom/google/android/gms/fitness/data/DataType;Lcom/google/android/gms/fitness/data/zzt;Landroid/app/PendingIntent;JJJILjava/util/List;Ljava/util/List;JLcom/google/android/gms/internal/zzbxg;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/fitness/data/DataSource;",
            "Lcom/google/android/gms/fitness/data/DataType;",
            "Lcom/google/android/gms/fitness/data/zzt;",
            "Landroid/app/PendingIntent;",
            "JJJI",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/LocationRequest;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzcbz;",
            ">;J",
            "Lcom/google/android/gms/internal/zzbxg;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    const/4 v2, 0x6

    iput v2, p0, Lcom/google/android/gms/fitness/request/zzan;->zzaku:I

    iput-object p1, p0, Lcom/google/android/gms/fitness/request/zzan;->zzaUd:Lcom/google/android/gms/fitness/data/DataSource;

    iput-object p2, p0, Lcom/google/android/gms/fitness/request/zzan;->zzaUe:Lcom/google/android/gms/fitness/data/DataType;

    iput-object p3, p0, Lcom/google/android/gms/fitness/request/zzan;->zzaWV:Lcom/google/android/gms/fitness/data/zzt;

    iput-object p4, p0, Lcom/google/android/gms/fitness/request/zzan;->mPendingIntent:Landroid/app/PendingIntent;

    iput-wide p5, p0, Lcom/google/android/gms/fitness/request/zzan;->zzaVj:J

    iput-wide p7, p0, Lcom/google/android/gms/fitness/request/zzan;->zzaWX:J

    iput-wide p9, p0, Lcom/google/android/gms/fitness/request/zzan;->zzaWW:J

    iput p11, p0, Lcom/google/android/gms/fitness/request/zzan;->zzaVk:I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/fitness/request/zzan;->zzaWY:Ljava/util/List;

    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/zzan;->zzaXa:Ljava/util/List;

    move-wide/from16 v0, p14

    iput-wide v0, p0, Lcom/google/android/gms/fitness/request/zzan;->zzaWZ:J

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/zzan;->zzaWo:Lcom/google/android/gms/internal/zzbxg;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/fitness/request/SensorRequest;Lcom/google/android/gms/fitness/data/zzt;Landroid/app/PendingIntent;Lcom/google/android/gms/internal/zzbxg;)V
    .locals 20

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/fitness/request/SensorRequest;->getDataSource()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/fitness/request/SensorRequest;->getDataType()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v5

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/google/android/gms/fitness/request/SensorRequest;->getSamplingRate(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v8

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/google/android/gms/fitness/request/SensorRequest;->getFastestRate(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v10

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/google/android/gms/fitness/request/SensorRequest;->getMaxDeliveryLatency(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v12

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/fitness/request/SensorRequest;->getAccuracyMode()I

    move-result v14

    const/4 v15, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/fitness/request/SensorRequest;->zztW()J

    move-result-wide v17

    move-object/from16 v3, p0

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v19, p4

    invoke-direct/range {v3 .. v19}, Lcom/google/android/gms/fitness/request/zzan;-><init>(Lcom/google/android/gms/fitness/data/DataSource;Lcom/google/android/gms/fitness/data/DataType;Lcom/google/android/gms/fitness/data/zzt;Landroid/app/PendingIntent;JJJILjava/util/List;Ljava/util/List;JLcom/google/android/gms/internal/zzbxg;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eq p0, p1, :cond_0

    instance-of v2, p1, Lcom/google/android/gms/fitness/request/zzan;

    if-eqz v2, :cond_1

    check-cast p1, Lcom/google/android/gms/fitness/request/zzan;

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/zzan;->zzaUd:Lcom/google/android/gms/fitness/data/DataSource;

    iget-object v3, p1, Lcom/google/android/gms/fitness/request/zzan;->zzaUd:Lcom/google/android/gms/fitness/data/DataSource;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzbe;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/zzan;->zzaUe:Lcom/google/android/gms/fitness/data/DataType;

    iget-object v3, p1, Lcom/google/android/gms/fitness/request/zzan;->zzaUe:Lcom/google/android/gms/fitness/data/DataType;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzbe;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lcom/google/android/gms/fitness/request/zzan;->zzaVj:J

    iget-wide v4, p1, Lcom/google/android/gms/fitness/request/zzan;->zzaVj:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/google/android/gms/fitness/request/zzan;->zzaWX:J

    iget-wide v4, p1, Lcom/google/android/gms/fitness/request/zzan;->zzaWX:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/google/android/gms/fitness/request/zzan;->zzaWW:J

    iget-wide v4, p1, Lcom/google/android/gms/fitness/request/zzan;->zzaWW:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget v2, p0, Lcom/google/android/gms/fitness/request/zzan;->zzaVk:I

    iget v3, p1, Lcom/google/android/gms/fitness/request/zzan;->zzaVk:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/zzan;->zzaWY:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/gms/fitness/request/zzan;->zzaWY:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzbe;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v1

    :goto_0
    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0

    :cond_2
    move v2, v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 4

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/zzan;->zzaUd:Lcom/google/android/gms/fitness/data/DataSource;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/zzan;->zzaUe:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/zzan;->zzaWV:Lcom/google/android/gms/fitness/data/zzt;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/android/gms/fitness/request/zzan;->zzaVj:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-wide v2, p0, Lcom/google/android/gms/fitness/request/zzan;->zzaWX:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-wide v2, p0, Lcom/google/android/gms/fitness/request/zzan;->zzaWW:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget v2, p0, Lcom/google/android/gms/fitness/request/zzan;->zzaVk:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/zzan;->zzaWY:Ljava/util/List;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    const-string v0, "SensorRegistrationRequest{type %s source %s interval %s fastest %s latency %s}"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/fitness/request/zzan;->zzaUe:Lcom/google/android/gms/fitness/data/DataType;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/gms/fitness/request/zzan;->zzaUd:Lcom/google/android/gms/fitness/data/DataSource;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-wide v4, p0, Lcom/google/android/gms/fitness/request/zzan;->zzaVj:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-wide v4, p0, Lcom/google/android/gms/fitness/request/zzan;->zzaWX:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-wide v4, p0, Lcom/google/android/gms/fitness/request/zzan;->zzaWW:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 7

    const/4 v1, 0x0

    const/4 v6, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zze(Landroid/os/Parcel;)I

    move-result v2

    const/4 v0, 0x1

    iget-object v3, p0, Lcom/google/android/gms/fitness/request/zzan;->zzaUd:Lcom/google/android/gms/fitness/data/DataSource;

    invoke-static {p1, v0, v3, p2, v6}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v0, 0x2

    iget-object v3, p0, Lcom/google/android/gms/fitness/request/zzan;->zzaUe:Lcom/google/android/gms/fitness/data/DataType;

    invoke-static {p1, v0, v3, p2, v6}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v3, 0x3

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/zzan;->zzaWV:Lcom/google/android/gms/fitness/data/zzt;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    invoke-static {p1, v3, v0, v6}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/4 v0, 0x4

    invoke-static {p1, v0, v6}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzc(Landroid/os/Parcel;II)V

    const/4 v0, 0x5

    invoke-static {p1, v0, v6}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzc(Landroid/os/Parcel;II)V

    const/4 v0, 0x6

    iget-wide v4, p0, Lcom/google/android/gms/fitness/request/zzan;->zzaVj:J

    invoke-static {p1, v0, v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;IJ)V

    const/4 v0, 0x7

    iget-wide v4, p0, Lcom/google/android/gms/fitness/request/zzan;->zzaWW:J

    invoke-static {p1, v0, v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;IJ)V

    const/16 v0, 0x3e8

    iget v3, p0, Lcom/google/android/gms/fitness/request/zzan;->zzaku:I

    invoke-static {p1, v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzc(Landroid/os/Parcel;II)V

    const/16 v0, 0x8

    iget-object v3, p0, Lcom/google/android/gms/fitness/request/zzan;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-static {p1, v0, v3, p2, v6}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v0, 0x9

    iget-wide v4, p0, Lcom/google/android/gms/fitness/request/zzan;->zzaWX:J

    invoke-static {p1, v0, v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;IJ)V

    const/16 v0, 0xa

    iget v3, p0, Lcom/google/android/gms/fitness/request/zzan;->zzaVk:I

    invoke-static {p1, v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzc(Landroid/os/Parcel;II)V

    const/16 v0, 0xb

    iget-object v3, p0, Lcom/google/android/gms/fitness/request/zzan;->zzaWY:Ljava/util/List;

    invoke-static {p1, v0, v3, v6}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzc(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/16 v0, 0xc

    iget-wide v4, p0, Lcom/google/android/gms/fitness/request/zzan;->zzaWZ:J

    invoke-static {p1, v0, v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;IJ)V

    const/16 v0, 0xd

    iget-object v3, p0, Lcom/google/android/gms/fitness/request/zzan;->zzaWo:Lcom/google/android/gms/internal/zzbxg;

    if-nez v3, :cond_1

    :goto_1
    invoke-static {p1, v0, v1, v6}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    invoke-static {p1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzI(Landroid/os/Parcel;I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/zzan;->zzaWV:Lcom/google/android/gms/fitness/data/zzt;

    invoke-interface {v0}, Lcom/google/android/gms/fitness/data/zzt;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/fitness/request/zzan;->zzaWo:Lcom/google/android/gms/internal/zzbxg;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzbxg;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    goto :goto_1
.end method
