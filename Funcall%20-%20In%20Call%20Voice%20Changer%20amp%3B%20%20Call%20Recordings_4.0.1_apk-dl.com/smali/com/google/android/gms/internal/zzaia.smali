.class public final Lcom/google/android/gms/internal/zzaia;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzn;
.end annotation


# instance fields
.field private final zzZS:[Ljava/lang/String;

.field private final zzZT:[D

.field private final zzZU:[D

.field private final zzZV:[I

.field private zzZW:I


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzaid;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/zzaid;->zza(Lcom/google/android/gms/internal/zzaid;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzaid;->zzb(Lcom/google/android/gms/internal/zzaid;)Ljava/util/List;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaia;->zzZS:[Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzaid;->zza(Lcom/google/android/gms/internal/zzaid;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaia;->zzo(Ljava/util/List;)[D

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaia;->zzZT:[D

    invoke-static {p1}, Lcom/google/android/gms/internal/zzaid;->zzc(Lcom/google/android/gms/internal/zzaid;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaia;->zzo(Ljava/util/List;)[D

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaia;->zzZU:[D

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaia;->zzZV:[I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzaia;->zzZW:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzaid;Lcom/google/android/gms/internal/zzaib;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzaia;-><init>(Lcom/google/android/gms/internal/zzaid;)V

    return-void
.end method

.method private static zzo(Ljava/util/List;)[D
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;)[D"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v2, v0, [D

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, v2

    if-ge v1, v0, :cond_0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    aput-wide v4, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-object v2
.end method


# virtual methods
.method public final getBuckets()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzaic;",
            ">;"
        }
    .end annotation

    new-instance v10, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaia;->zzZS:[Ljava/lang/String;

    array-length v0, v0

    invoke-direct {v10, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    move v9, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaia;->zzZS:[Ljava/lang/String;

    array-length v0, v0

    if-ge v9, v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzaic;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaia;->zzZS:[Ljava/lang/String;

    aget-object v1, v1, v9

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaia;->zzZU:[D

    aget-wide v2, v2, v9

    iget-object v4, p0, Lcom/google/android/gms/internal/zzaia;->zzZT:[D

    aget-wide v4, v4, v9

    iget-object v6, p0, Lcom/google/android/gms/internal/zzaia;->zzZV:[I

    aget v6, v6, v9

    int-to-double v6, v6

    iget v8, p0, Lcom/google/android/gms/internal/zzaia;->zzZW:I

    int-to-double v12, v8

    div-double/2addr v6, v12

    iget-object v8, p0, Lcom/google/android/gms/internal/zzaia;->zzZV:[I

    aget v8, v8, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/zzaic;-><init>(Ljava/lang/String;DDDI)V

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_0

    :cond_0
    return-object v10
.end method

.method public final zza(D)V
    .locals 5

    iget v0, p0, Lcom/google/android/gms/internal/zzaia;->zzZW:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzaia;->zzZW:I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaia;->zzZU:[D

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaia;->zzZU:[D

    aget-wide v2, v1, v0

    cmpg-double v1, v2, p1

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaia;->zzZT:[D

    aget-wide v2, v1, v0

    cmpg-double v1, p1, v2

    if-gez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaia;->zzZV:[I

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaia;->zzZU:[D

    aget-wide v2, v1, v0

    cmpg-double v1, p1, v2

    if-ltz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method