.class public final Lcom/google/android/gms/internal/xb;
.super Lcom/google/android/gms/internal/xh;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/xh",
        "<",
        "Lcom/google/android/gms/internal/xb;",
        ">;"
    }
.end annotation


# instance fields
.field private zzcih:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;Lcom/google/android/gms/internal/xm;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/android/gms/internal/xm;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/xh;-><init>(Lcom/google/android/gms/internal/xm;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/xb;->zzcih:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/google/android/gms/internal/xb;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/xb;

    iget-object v1, p0, Lcom/google/android/gms/internal/xb;->zzcih:Ljava/util/Map;

    iget-object v2, p1, Lcom/google/android/gms/internal/xb;->zzcih:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/xb;->zzchS:Lcom/google/android/gms/internal/xm;

    iget-object v2, p1, Lcom/google/android/gms/internal/xb;->zzchS:Lcom/google/android/gms/internal/xm;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/xb;->zzcih:Ljava/util/Map;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/xb;->zzcih:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/xb;->zzchS:Lcom/google/android/gms/internal/xm;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method protected final zzII()Lcom/google/android/gms/internal/xj;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/xj;->zzcip:Lcom/google/android/gms/internal/xj;

    return-object v0
.end method

.method protected final bridge synthetic zza(Lcom/google/android/gms/internal/xh;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final zza(Lcom/google/android/gms/internal/xo;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/xb;->zzb(Lcom/google/android/gms/internal/xo;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/xb;->zzcih:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0xe

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "deferredValue:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zzf(Lcom/google/android/gms/internal/xm;)Lcom/google/android/gms/internal/xm;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/xb;

    iget-object v1, p0, Lcom/google/android/gms/internal/xb;->zzcih:Ljava/util/Map;

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/xb;-><init>(Ljava/util/Map;Lcom/google/android/gms/internal/xm;)V

    return-object v0
.end method
