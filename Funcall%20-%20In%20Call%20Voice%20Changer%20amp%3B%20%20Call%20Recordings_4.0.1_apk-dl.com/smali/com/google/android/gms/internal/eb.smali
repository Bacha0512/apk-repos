.class public final Lcom/google/android/gms/internal/eb;
.super Lcom/google/android/gms/internal/dp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/dp",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final zzbLo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzcxo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "charAt"

    new-instance v2, Lcom/google/android/gms/internal/e;

    invoke-direct {v2}, Lcom/google/android/gms/internal/e;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "concat"

    new-instance v2, Lcom/google/android/gms/internal/f;

    invoke-direct {v2}, Lcom/google/android/gms/internal/f;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "hasOwnProperty"

    sget-object v2, Lcom/google/android/gms/internal/zzczp;->zzbJW:Lcom/google/android/gms/internal/zzczp;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "indexOf"

    new-instance v2, Lcom/google/android/gms/internal/g;

    invoke-direct {v2}, Lcom/google/android/gms/internal/g;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "lastIndexOf"

    new-instance v2, Lcom/google/android/gms/internal/h;

    invoke-direct {v2}, Lcom/google/android/gms/internal/h;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "match"

    new-instance v2, Lcom/google/android/gms/internal/i;

    invoke-direct {v2}, Lcom/google/android/gms/internal/i;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "replace"

    new-instance v2, Lcom/google/android/gms/internal/j;

    invoke-direct {v2}, Lcom/google/android/gms/internal/j;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "search"

    new-instance v2, Lcom/google/android/gms/internal/k;

    invoke-direct {v2}, Lcom/google/android/gms/internal/k;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "slice"

    new-instance v2, Lcom/google/android/gms/internal/l;

    invoke-direct {v2}, Lcom/google/android/gms/internal/l;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "split"

    new-instance v2, Lcom/google/android/gms/internal/m;

    invoke-direct {v2}, Lcom/google/android/gms/internal/m;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "substring"

    new-instance v2, Lcom/google/android/gms/internal/n;

    invoke-direct {v2}, Lcom/google/android/gms/internal/n;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "toLocaleLowerCase"

    new-instance v2, Lcom/google/android/gms/internal/o;

    invoke-direct {v2}, Lcom/google/android/gms/internal/o;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "toLocaleUpperCase"

    new-instance v2, Lcom/google/android/gms/internal/p;

    invoke-direct {v2}, Lcom/google/android/gms/internal/p;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "toLowerCase"

    new-instance v2, Lcom/google/android/gms/internal/q;

    invoke-direct {v2}, Lcom/google/android/gms/internal/q;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "toUpperCase"

    new-instance v2, Lcom/google/android/gms/internal/s;

    invoke-direct {v2}, Lcom/google/android/gms/internal/s;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "toString"

    new-instance v2, Lcom/google/android/gms/internal/r;

    invoke-direct {v2}, Lcom/google/android/gms/internal/r;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "trim"

    new-instance v2, Lcom/google/android/gms/internal/t;

    invoke-direct {v2}, Lcom/google/android/gms/internal/t;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/eb;->zzbLo:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/dp;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/eb;->mValue:Ljava/lang/String;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/eb;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/eb;->mValue:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/eb;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/eb;->mValue:Ljava/lang/String;

    check-cast p1, Lcom/google/android/gms/internal/eb;

    iget-object v0, p1, Lcom/google/android/gms/internal/eb;->mValue:Ljava/lang/String;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/eb;->mValue:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final value()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/eb;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public final zzDk()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/android/gms/internal/dp",
            "<*>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ec;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ec;-><init>(Lcom/google/android/gms/internal/eb;)V

    return-object v0
.end method

.method public final synthetic zzDl()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/eb;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public final zzbI(I)Lcom/google/android/gms/internal/dp;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/android/gms/internal/dp",
            "<*>;"
        }
    .end annotation

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/eb;->mValue:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/eb;

    iget-object v1, p0, Lcom/google/android/gms/internal/eb;->mValue:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/eb;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/dv;->zzbLu:Lcom/google/android/gms/internal/dv;

    goto :goto_0
.end method

.method public final zzga(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/eb;->zzbLo:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final zzgb(Ljava/lang/String;)Lcom/google/android/gms/internal/zzcxo;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/eb;->zzga(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/eb;->zzbLo:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzcxo;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x33

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Native Method "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not defined for type ListWrapper."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
