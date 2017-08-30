.class public final Lcom/google/android/gms/internal/ab;
.super Lcom/google/android/gms/internal/zzcxq;


# instance fields
.field private final zzamr:I

.field private final zzbIJ:Lcom/google/android/gms/internal/zzcwa;


# direct methods
.method public constructor <init>(ILcom/google/android/gms/internal/zzcwa;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcxq;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ab;->zzamr:I

    iput-object p2, p0, Lcom/google/android/gms/internal/ab;->zzbIJ:Lcom/google/android/gms/internal/zzcwa;

    return-void
.end method


# virtual methods
.method public final varargs zza(Lcom/google/android/gms/internal/zzcwa;[Lcom/google/android/gms/internal/dp;)Lcom/google/android/gms/internal/dp;
    .locals 3
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

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    array-length v2, p2

    if-ne v2, v0, :cond_1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    aget-object v0, p2, v1

    instance-of v0, v0, Lcom/google/android/gms/internal/eb;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    const/4 v0, 0x0

    aget-object v0, p2, v0

    check-cast v0, Lcom/google/android/gms/internal/eb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/eb;->value()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/cb;->zzO(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzcxn;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ab;->zzbIJ:Lcom/google/android/gms/internal/zzcwa;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcxn;->zza(Lcom/google/android/gms/internal/zzcwa;)V

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/gms/internal/dp;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/zzcxn;->zzb(Lcom/google/android/gms/internal/zzcwa;[Lcom/google/android/gms/internal/dp;)Lcom/google/android/gms/internal/dp;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/ab;->zzamr:I

    if-nez v1, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/dv;->zzbLu:Lcom/google/android/gms/internal/dv;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Unable to convert Custom Pixie to instruction"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzcvk;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v0, Lcom/google/android/gms/internal/dv;->zzbLu:Lcom/google/android/gms/internal/dv;

    goto :goto_1
.end method
