.class final Lcom/google/android/gms/internal/zzcyj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/android/gms/internal/dp",
        "<*>;>;"
    }
.end annotation


# instance fields
.field private synthetic zzbJU:Lcom/google/android/gms/internal/du;

.field private synthetic zzbJV:Lcom/google/android/gms/internal/zzcwa;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcyh;Lcom/google/android/gms/internal/du;Lcom/google/android/gms/internal/zzcwa;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcyj;->zzbJU:Lcom/google/android/gms/internal/du;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcyj;->zzbJV:Lcom/google/android/gms/internal/zzcwa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    check-cast p1, Lcom/google/android/gms/internal/dp;

    check-cast p2, Lcom/google/android/gms/internal/dp;

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    if-nez p2, :cond_3

    if-eqz p1, :cond_2

    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcyj;->zzbJU:Lcom/google/android/gms/internal/du;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/du;->zzDp()Lcom/google/android/gms/internal/zzcxo;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzcxo;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcyj;->zzbJV:Lcom/google/android/gms/internal/zzcwa;

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/google/android/gms/internal/dp;

    aput-object p1, v4, v2

    aput-object p2, v4, v1

    invoke-interface {v0, v3, v4}, Lcom/google/android/gms/internal/zzcxo;->zzb(Lcom/google/android/gms/internal/zzcwa;[Lcom/google/android/gms/internal/dp;)Lcom/google/android/gms/internal/dp;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/dt;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzbo;->zzae(Z)V

    check-cast v0, Lcom/google/android/gms/internal/dt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dt;->zzDo()Ljava/lang/Double;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_0
.end method
