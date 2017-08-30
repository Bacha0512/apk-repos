.class public Lcom/google/android/gms/cast/AdBreakStatus;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final AD_BREAK_CLIP_NOT_SKIPPABLE:I = -0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/cast/AdBreakStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzaoH:J

.field private final zzaoI:J

.field private final zzaoJ:Ljava/lang/String;

.field private final zzaoK:Ljava/lang/String;

.field private final zzaoL:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/cast/zzc;

    invoke-direct {v0}, Lcom/google/android/gms/cast/zzc;-><init>()V

    sput-object v0, Lcom/google/android/gms/cast/AdBreakStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(JJLjava/lang/String;Ljava/lang/String;J)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/cast/AdBreakStatus;->zzaoH:J

    iput-wide p3, p0, Lcom/google/android/gms/cast/AdBreakStatus;->zzaoI:J

    iput-object p5, p0, Lcom/google/android/gms/cast/AdBreakStatus;->zzaoJ:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/cast/AdBreakStatus;->zzaoK:Ljava/lang/String;

    iput-wide p7, p0, Lcom/google/android/gms/cast/AdBreakStatus;->zzaoL:J

    return-void
.end method

.method static zzj(Lorg/json/JSONObject;)Lcom/google/android/gms/cast/AdBreakStatus;
    .locals 14

    const-wide/16 v12, -0x1

    const-wide v10, 0x408f400000000000L    # 1000.0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "currentBreakTime"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "currentBreakClipTime"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    move-object v1, v0

    goto :goto_0

    :cond_2
    :try_start_0
    const-string v1, "currentBreakTime"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    long-to-double v2, v2

    mul-double/2addr v2, v10

    double-to-long v2, v2

    const-string v1, "currentBreakClipTime"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    long-to-double v4, v4

    mul-double/2addr v4, v10

    double-to-long v4, v4

    const-string v1, "breakId"

    const/4 v6, 0x0

    invoke-virtual {p0, v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v1, "breakClipId"

    const/4 v7, 0x0

    invoke-virtual {p0, v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v1, "whenSkippable"

    const-wide/16 v8, -0x1

    invoke-virtual {p0, v1, v8, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v8

    cmp-long v1, v8, v12

    if-eqz v1, :cond_3

    long-to-double v8, v8

    mul-double/2addr v8, v10

    double-to-long v8, v8

    :cond_3
    new-instance v1, Lcom/google/android/gms/cast/AdBreakStatus;

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/cast/AdBreakStatus;-><init>(JJLjava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "AdBreakInfo"

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v4, "Error while creating an AdBreakClipInfo from JSON: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/cast/AdBreakStatus;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/cast/AdBreakStatus;

    iget-wide v2, p0, Lcom/google/android/gms/cast/AdBreakStatus;->zzaoH:J

    iget-wide v4, p1, Lcom/google/android/gms/cast/AdBreakStatus;->zzaoH:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget-wide v2, p0, Lcom/google/android/gms/cast/AdBreakStatus;->zzaoI:J

    iget-wide v4, p1, Lcom/google/android/gms/cast/AdBreakStatus;->zzaoI:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/cast/AdBreakStatus;->zzaoJ:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/cast/AdBreakStatus;->zzaoJ:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzaye;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/cast/AdBreakStatus;->zzaoK:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/cast/AdBreakStatus;->zzaoK:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzaye;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-wide v2, p0, Lcom/google/android/gms/cast/AdBreakStatus;->zzaoL:J

    iget-wide v4, p1, Lcom/google/android/gms/cast/AdBreakStatus;->zzaoL:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public getBreakClipId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/AdBreakStatus;->zzaoK:Ljava/lang/String;

    return-object v0
.end method

.method public getBreakId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/AdBreakStatus;->zzaoJ:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentBreakClipTimeInMs()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/cast/AdBreakStatus;->zzaoI:J

    return-wide v0
.end method

.method public getCurrentBreakTimeInMs()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/cast/AdBreakStatus;->zzaoH:J

    return-wide v0
.end method

.method public getWhenSkippableInMs()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/cast/AdBreakStatus;->zzaoL:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/google/android/gms/cast/AdBreakStatus;->zzaoH:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/android/gms/cast/AdBreakStatus;->zzaoI:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/cast/AdBreakStatus;->zzaoJ:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/cast/AdBreakStatus;->zzaoK:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-wide v2, p0, Lcom/google/android/gms/cast/AdBreakStatus;->zzaoL:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    const/4 v4, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zze(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/gms/cast/AdBreakStatus;->getCurrentBreakTimeInMs()J

    move-result-wide v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;IJ)V

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/gms/cast/AdBreakStatus;->getCurrentBreakClipTimeInMs()J

    move-result-wide v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;IJ)V

    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/gms/cast/AdBreakStatus;->getBreakId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/gms/cast/AdBreakStatus;->getBreakClipId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/gms/cast/AdBreakStatus;->getWhenSkippableInMs()J

    move-result-wide v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;IJ)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzI(Landroid/os/Parcel;I)V

    return-void
.end method
