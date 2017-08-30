.class public final Lcom/google/android/gms/internal/ia;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private zzbUA:[F

.field private zzbUB:[F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 7

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ib;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ib;-><init>()V

    invoke-virtual {v0, v2, v2}, Lcom/google/android/gms/internal/ib;->moveTo(FF)V

    move v1, p1

    move v3, p3

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/ib;->cubicTo(FFFFFF)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ia;->zza(Lcom/google/android/gms/internal/ib;)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/ib;)V
    .locals 9

    const/4 v0, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const v2, 0x3b03126f    # 0.002f

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ib;->zzf(F)[F

    move-result-object v6

    array-length v2, v6

    div-int/lit8 v7, v2, 0x3

    const/4 v2, 0x1

    aget v2, v6, v2

    cmpl-float v2, v2, v1

    if-nez v2, :cond_0

    const/4 v2, 0x2

    aget v2, v6, v2

    cmpl-float v2, v2, v1

    if-nez v2, :cond_0

    array-length v2, v6

    add-int/lit8 v2, v2, -0x2

    aget v2, v6, v2

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    array-length v2, v6

    add-int/lit8 v2, v2, -0x1

    aget v2, v6, v2

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Path must start at (0,0) and end at (1,1)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-array v2, v7, [F

    iput-object v2, p0, Lcom/google/android/gms/internal/ia;->zzbUA:[F

    new-array v2, v7, [F

    iput-object v2, p0, Lcom/google/android/gms/internal/ia;->zzbUB:[F

    move v2, v1

    move v4, v1

    move v1, v0

    :goto_0
    if-ge v0, v7, :cond_4

    add-int/lit8 v5, v1, 0x1

    aget v3, v6, v1

    add-int/lit8 v8, v5, 0x1

    aget v5, v6, v5

    add-int/lit8 v1, v8, 0x1

    aget v8, v6, v8

    cmpl-float v2, v3, v2

    if-nez v2, :cond_2

    cmpl-float v2, v5, v4

    if-eqz v2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Path cannot have discontinuity in the X axis."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    cmpg-float v2, v5, v4

    if-gez v2, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Path cannot loop back on itself."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/internal/ia;->zzbUA:[F

    aput v5, v2, v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ia;->zzbUB:[F

    aput v8, v2, v0

    add-int/lit8 v0, v0, 0x1

    move v2, v3

    move v4, v5

    goto :goto_0

    :cond_4
    return-void
.end method


# virtual methods
.method public final getInterpolation(F)F
    .locals 5

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    cmpg-float v2, p1, v0

    if-gtz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    cmpl-float v2, p1, v1

    if-ltz v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/ia;->zzbUA:[F

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    move v3, v2

    :goto_1
    sub-int v2, v1, v3

    const/4 v4, 0x1

    if-le v2, v4, :cond_3

    add-int v2, v3, v1

    div-int/lit8 v2, v2, 0x2

    iget-object v4, p0, Lcom/google/android/gms/internal/ia;->zzbUA:[F

    aget v4, v4, v2

    cmpg-float v4, p1, v4

    if-gez v4, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    move v3, v2

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/internal/ia;->zzbUA:[F

    aget v2, v2, v1

    iget-object v4, p0, Lcom/google/android/gms/internal/ia;->zzbUA:[F

    aget v4, v4, v3

    sub-float/2addr v2, v4

    cmpl-float v0, v2, v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/ia;->zzbUB:[F

    aget v0, v0, v3

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ia;->zzbUA:[F

    aget v0, v0, v3

    sub-float v0, p1, v0

    div-float/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/gms/internal/ia;->zzbUB:[F

    aget v2, v2, v3

    iget-object v3, p0, Lcom/google/android/gms/internal/ia;->zzbUB:[F

    aget v1, v3, v1

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    goto :goto_0
.end method
