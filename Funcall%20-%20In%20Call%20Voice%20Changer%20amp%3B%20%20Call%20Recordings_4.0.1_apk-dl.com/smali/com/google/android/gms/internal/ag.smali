.class public final Lcom/google/android/gms/internal/ag;
.super Lcom/google/android/gms/internal/zzcxq;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzbJZ:Lcom/google/android/gms/internal/zzcvy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzcvy;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcxq;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/gms/internal/ag;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ag;->zzbJZ:Lcom/google/android/gms/internal/zzcvy;

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

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    array-length v0, p2

    if-eqz v0, :cond_0

    aget-object v0, p2, v3

    sget-object v2, Lcom/google/android/gms/internal/dv;->zzbLu:Lcom/google/android/gms/internal/dv;

    if-ne v0, v2, :cond_1

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/eb;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/eb;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ag;->zzbJZ:Lcom/google/android/gms/internal/zzcvy;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzcvy;->zzCy()Lcom/google/android/gms/internal/zzcut;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcut;->zzBh()Ljava/util/Map;

    move-result-object v0

    const-string v2, "_ldl"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/eb;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/eb;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/google/android/gms/internal/ed;->zzQ(Ljava/lang/Object;)Lcom/google/android/gms/internal/dp;

    move-result-object v0

    instance-of v2, v0, Lcom/google/android/gms/internal/eb;

    if-nez v2, :cond_3

    new-instance v0, Lcom/google/android/gms/internal/eb;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/eb;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    check-cast v0, Lcom/google/android/gms/internal/eb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/eb;->value()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "conv"

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzcvj;->zzV(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aget-object v3, p2, v3

    invoke-static {v3}, Lcom/google/android/gms/internal/zzcxp;->zzd(Lcom/google/android/gms/internal/dp;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    new-instance v0, Lcom/google/android/gms/internal/eb;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/eb;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    array-length v2, p2

    if-le v2, v4, :cond_5

    aget-object v2, p2, v4

    sget-object v3, Lcom/google/android/gms/internal/dv;->zzbLu:Lcom/google/android/gms/internal/dv;

    if-ne v2, v3, :cond_6

    :cond_5
    :goto_1
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzcvj;->zzV(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    new-instance v0, Lcom/google/android/gms/internal/eb;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/eb;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    aget-object v1, p2, v4

    invoke-static {v1}, Lcom/google/android/gms/internal/zzcxp;->zzd(Lcom/google/android/gms/internal/dp;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_7
    new-instance v0, Lcom/google/android/gms/internal/eb;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/eb;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method
