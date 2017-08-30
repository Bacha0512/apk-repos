.class public final Lcom/google/android/gms/internal/bh;
.super Lcom/google/android/gms/internal/zzcxq;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcxq;-><init>()V

    return-void
.end method


# virtual methods
.method protected final varargs zza(Lcom/google/android/gms/internal/zzcwa;[Lcom/google/android/gms/internal/dp;)Lcom/google/android/gms/internal/dp;
    .locals 10
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

    const/4 v2, 0x0

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    array-length v0, p2

    if-lt v0, v6, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    aget-object v0, p2, v2

    sget-object v3, Lcom/google/android/gms/internal/dv;->zzbLu:Lcom/google/android/gms/internal/dv;

    if-eq v0, v3, :cond_0

    aget-object v0, p2, v1

    sget-object v3, Lcom/google/android/gms/internal/dv;->zzbLu:Lcom/google/android/gms/internal/dv;

    if-ne v0, v3, :cond_2

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/dv;->zzbLu:Lcom/google/android/gms/internal/dv;

    :goto_1
    return-object v0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    aget-object v0, p2, v2

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcxp;->zzd(Lcom/google/android/gms/internal/dp;)Ljava/lang/String;

    move-result-object v3

    aget-object v0, p2, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcxp;->zzd(Lcom/google/android/gms/internal/dp;)Ljava/lang/String;

    move-result-object v4

    const/16 v0, 0x40

    array-length v2, p2

    if-le v2, v6, :cond_3

    aget-object v2, p2, v6

    sget-object v5, Lcom/google/android/gms/internal/dv;->zzbLu:Lcom/google/android/gms/internal/dv;

    if-eq v2, v5, :cond_3

    aget-object v2, p2, v6

    invoke-static {v2}, Lcom/google/android/gms/internal/zzcxp;->zza(Lcom/google/android/gms/internal/dp;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v0, 0x42

    :cond_3
    array-length v2, p2

    if-le v2, v7, :cond_9

    aget-object v2, p2, v7

    sget-object v5, Lcom/google/android/gms/internal/dv;->zzbLu:Lcom/google/android/gms/internal/dv;

    if-eq v2, v5, :cond_9

    aget-object v1, p2, v7

    instance-of v1, v1, Lcom/google/android/gms/internal/dt;

    if-nez v1, :cond_4

    sget-object v0, Lcom/google/android/gms/internal/dv;->zzbLu:Lcom/google/android/gms/internal/dv;

    goto :goto_1

    :cond_4
    aget-object v1, p2, v7

    invoke-static {v1}, Lcom/google/android/gms/internal/zzcxp;->zzc(Lcom/google/android/gms/internal/dp;)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v1

    if-nez v1, :cond_5

    const-wide/16 v8, 0x0

    cmpg-double v1, v6, v8

    if-gez v1, :cond_6

    :cond_5
    sget-object v0, Lcom/google/android/gms/internal/dv;->zzbLu:Lcom/google/android/gms/internal/dv;

    goto :goto_1

    :cond_6
    double-to-int v1, v6

    move v2, v1

    :goto_2
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v4, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v3

    if-lt v3, v2, :cond_7

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :cond_7
    if-nez v1, :cond_8

    sget-object v0, Lcom/google/android/gms/internal/dv;->zzbLu:Lcom/google/android/gms/internal/dv;

    goto :goto_1

    :cond_8
    new-instance v0, Lcom/google/android/gms/internal/eb;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/eb;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v0, Lcom/google/android/gms/internal/dv;->zzbLu:Lcom/google/android/gms/internal/dv;

    goto :goto_1

    :cond_9
    move v2, v1

    goto :goto_2
.end method
