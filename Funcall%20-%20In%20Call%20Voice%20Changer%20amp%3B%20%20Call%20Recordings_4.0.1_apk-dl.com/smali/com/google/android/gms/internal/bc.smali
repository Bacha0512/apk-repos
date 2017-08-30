.class public final Lcom/google/android/gms/internal/bc;
.super Lcom/google/android/gms/internal/zzcxq;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzbJZ:Lcom/google/android/gms/internal/zzcvy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzcvy;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcxq;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/bc;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/bc;->zzbJZ:Lcom/google/android/gms/internal/zzcvy;

    return-void
.end method


# virtual methods
.method protected final varargs zza(Lcom/google/android/gms/internal/zzcwa;[Lcom/google/android/gms/internal/dp;)Lcom/google/android/gms/internal/dp;
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

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    array-length v0, p2

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    aget-object v0, p2, v2

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcxp;->zzd(Lcom/google/android/gms/internal/dp;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/bc;->zzbJZ:Lcom/google/android/gms/internal/zzcvy;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzcvy;->zzCy()Lcom/google/android/gms/internal/zzcut;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcut;->zzBh()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    array-length v2, p2

    if-le v2, v1, :cond_0

    aget-object v0, p2, v1

    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ed;->zzQ(Ljava/lang/Object;)Lcom/google/android/gms/internal/dp;

    move-result-object v0

    return-object v0

    :cond_1
    move v0, v2

    goto :goto_0
.end method
