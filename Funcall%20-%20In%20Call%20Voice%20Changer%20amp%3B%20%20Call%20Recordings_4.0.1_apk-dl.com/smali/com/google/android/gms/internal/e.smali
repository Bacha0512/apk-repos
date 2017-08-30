.class public final Lcom/google/android/gms/internal/e;
.super Lcom/google/android/gms/internal/zzcxq;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcxq;-><init>()V

    return-void
.end method


# virtual methods
.method protected final varargs zza(Lcom/google/android/gms/internal/zzcwa;[Lcom/google/android/gms/internal/dp;)Lcom/google/android/gms/internal/dp;
    .locals 5
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

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    array-length v0, p2

    if-eq v0, v2, :cond_0

    array-length v0, p2

    if-ne v0, v4, :cond_2

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    aget-object v0, p2, v1

    instance-of v0, v0, Lcom/google/android/gms/internal/eb;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    aget-object v0, p2, v1

    check-cast v0, Lcom/google/android/gms/internal/eb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/eb;->value()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    array-length v3, p2

    if-ne v3, v4, :cond_4

    aget-object v1, p2, v2

    invoke-static {v1}, Lcom/google/android/gms/internal/zzcxp;->zzc(Lcom/google/android/gms/internal/dp;)D

    move-result-wide v2

    double-to-int v1, v2

    move v2, v1

    :goto_1
    if-ltz v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v2, v1, :cond_3

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/eb;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/eb;-><init>(Ljava/lang/String;)V

    :goto_2
    return-object v0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    new-instance v1, Lcom/google/android/gms/internal/eb;

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/eb;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_2

    :cond_4
    move v2, v1

    goto :goto_1
.end method
