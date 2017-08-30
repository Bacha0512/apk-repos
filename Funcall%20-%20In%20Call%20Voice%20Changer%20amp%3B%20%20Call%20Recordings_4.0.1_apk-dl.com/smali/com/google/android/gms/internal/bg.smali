.class public final Lcom/google/android/gms/internal/bg;
.super Lcom/google/android/gms/internal/zzcxq;


# static fields
.field private static final zzbKg:Lcom/google/android/gms/internal/dt;

.field private static final zzbKh:Lcom/google/android/gms/internal/dt;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/dt;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/dt;-><init>(Ljava/lang/Double;)V

    sput-object v0, Lcom/google/android/gms/internal/bg;->zzbKg:Lcom/google/android/gms/internal/dt;

    new-instance v0, Lcom/google/android/gms/internal/dt;

    const-wide v2, 0x41dfffffffc00000L    # 2.147483647E9

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/dt;-><init>(Ljava/lang/Double;)V

    sput-object v0, Lcom/google/android/gms/internal/bg;->zzbKh:Lcom/google/android/gms/internal/dt;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcxq;-><init>()V

    return-void
.end method

.method private static zzg(Lcom/google/android/gms/internal/dp;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/dp",
            "<*>;)Z"
        }
    .end annotation

    instance-of v0, p0, Lcom/google/android/gms/internal/dt;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/android/gms/internal/dt;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dt;->zzDo()Ljava/lang/Double;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final varargs zza(Lcom/google/android/gms/internal/zzcwa;[Lcom/google/android/gms/internal/dp;)Lcom/google/android/gms/internal/dp;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzcwa;",
            "[",
            "Lcom/google/android/gms/internal/dp",
            "<*>;)",
            "Lcom/google/android/gms/internal/dp",
            "<*>;"
        }
    .end annotation

    const/4 v6, 0x1

    invoke-static {v6}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    const-wide/16 v4, 0x0

    const-wide v2, 0x41dfffffffc00000L    # 2.147483647E9

    array-length v0, p2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget-object v0, p2, v0

    :goto_0
    array-length v1, p2

    if-le v1, v6, :cond_1

    aget-object v1, p2, v6

    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/internal/bg;->zzg(Lcom/google/android/gms/internal/dp;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v1}, Lcom/google/android/gms/internal/bg;->zzg(Lcom/google/android/gms/internal/dp;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzcxp;->zzb(Lcom/google/android/gms/internal/dp;Lcom/google/android/gms/internal/dp;)Z

    move-result v6

    if-eqz v6, :cond_2

    check-cast v0, Lcom/google/android/gms/internal/dt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dt;->zzDo()Ljava/lang/Double;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    move-object v0, v1

    check-cast v0, Lcom/google/android/gms/internal/dt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dt;->zzDo()Ljava/lang/Double;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    :goto_2
    new-instance v4, Lcom/google/android/gms/internal/dt;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    sub-double/2addr v0, v2

    mul-double/2addr v0, v6

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/google/android/gms/internal/dt;-><init>(Ljava/lang/Double;)V

    return-object v4

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/bg;->zzbKg:Lcom/google/android/gms/internal/dt;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/google/android/gms/internal/bg;->zzbKh:Lcom/google/android/gms/internal/dt;

    goto :goto_1

    :cond_2
    move-wide v0, v2

    move-wide v2, v4

    goto :goto_2
.end method
