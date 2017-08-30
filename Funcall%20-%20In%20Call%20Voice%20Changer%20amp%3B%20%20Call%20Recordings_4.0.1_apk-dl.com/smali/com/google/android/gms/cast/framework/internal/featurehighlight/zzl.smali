.class final Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzl;
.super Landroid/graphics/drawable/Drawable;


# instance fields
.field private centerX:F

.field private centerY:F

.field private final zzasL:Landroid/graphics/Paint;

.field private zzasM:F

.field private final zzasQ:Landroid/graphics/Rect;

.field private zzatA:F

.field private zzatB:F

.field private zzatC:I

.field private zzato:F

.field private final zzatr:Landroid/graphics/Rect;

.field private final zzatx:I

.field private final zzaty:I

.field private final zzatz:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/16 v4, 0xf4

    const/4 v3, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzl;->zzasQ:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzl;->zzatr:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzl;->zzasL:Landroid/graphics/Paint;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzl;->zzato:F

    iput v1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzl;->zzatA:F

    iput v1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzl;->zzatB:F

    iput v4, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzl;->zzatC:I

    invoke-static {}, Lcom/google/android/gms/common/util/zzq;->zzse()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010433

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v0, v0, Landroid/util/TypedValue;->data:I

    invoke-static {v0, v4}, Landroid/support/v4/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzl;->setColor(I)V

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzl;->zzasL:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzl;->zzasL:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/gms/R$dimen;->cast_libraries_material_featurehighlight_center_threshold:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzl;->zzatx:I

    sget v1, Lcom/google/android/gms/R$dimen;->cast_libraries_material_featurehighlight_center_horizontal_offset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzl;->zzaty:I

    sget v1, Lcom/google/android/gms/R$dimen;->cast_libraries_material_featurehighlight_outer_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzl;->zzatz:I

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/gms/R$color;->cast_libraries_material_featurehighlight_outer_highlight_default_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzl;->setColor(I)V

    goto :goto_0
.end method

.method private static zza(FFLandroid/graphics/Rect;)F
    .locals 5

    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v1, v0

    iget v0, p2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    invoke-static {p0, p1, v3, v1}, Lcom/google/android/gms/internal/hw;->zza(FFFF)F

    move-result v0

    invoke-static {p0, p1, v2, v1}, Lcom/google/android/gms/internal/hw;->zza(FFFF)F

    move-result v1

    invoke-static {p0, p1, v2, v4}, Lcom/google/android/gms/internal/hw;->zza(FFFF)F

    move-result v2

    invoke-static {p0, p1, v3, v4}, Lcom/google/android/gms/internal/hw;->zza(FFFF)F

    move-result v3

    cmpl-float v4, v0, v1

    if-lez v4, :cond_0

    cmpl-float v4, v0, v2

    if-lez v4, :cond_0

    cmpl-float v4, v0, v3

    if-lez v4, :cond_0

    :goto_0
    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0

    :cond_0
    cmpl-float v0, v1, v2

    if-lez v0, :cond_1

    cmpl-float v0, v1, v3

    if-lez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    cmpl-float v0, v2, v3

    if-lez v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_0
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 4

    iget v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzl;->centerX:F

    iget v1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzl;->zzatA:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzl;->centerY:F

    iget v2, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzl;->zzatB:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzl;->zzasM:F

    iget v3, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzl;->zzato:F

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzl;->zzasL:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public final getAlpha()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzl;->zzasL:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    return v0
.end method

.method public final getCenterX()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzl;->centerX:F

    return v0
.end method

.method public final getCenterY()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzl;->centerY:F

    return v0
.end method

.method public final getColor()I
    .locals 1
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzl;->zzasL:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public final getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public final setAlpha(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzl;->zzasL:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzl;->invalidateSelf()V

    return-void
.end method

.method public final setColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzl;->zzasL:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzl;->zzasL:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzl;->zzatC:I

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzl;->invalidateSelf()V

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzl;->zzasL:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzl;->invalidateSelf()V

    return-void
.end method

.method public final setScale(F)V
    .locals 0
    .annotation build Lcom/google/android/apps/common/proguard/UsedByReflection;
        value = "FeatureHighlightView.java"
    .end annotation

    iput p1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzl;->zzato:F

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzl;->invalidateSelf()V

    return-void
.end method

.method public final setTranslationX(F)V
    .locals 0
    .annotation build Lcom/google/android/apps/common/proguard/UsedByReflection;
        value = "FeatureHighlightView.java"
    .end annotation

    iput p1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzl;->zzatA:F

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzl;->invalidateSelf()V

    return-void
.end method

.method public final setTranslationY(F)V
    .locals 0
    .annotation build Lcom/google/android/apps/common/proguard/UsedByReflection;
        value = "FeatureHighlightView.java"
    .end annotation

    iput p1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzl;->zzatB:F

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzl;->invalidateSelf()V

    return-void
.end method

.method public final zzb(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzl;->zzasQ:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzl;->zzatr:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzl;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v3, v2, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float v3, v1, v3

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sub-float/2addr v4, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iget v4, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzl;->zzatx:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    iput v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzl;->centerX:F

    iput v1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzl;->centerY:F

    :goto_0
    iget v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzl;->zzatz:I

    int-to-float v0, v0

    iget v1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzl;->centerX:F

    iget v2, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzl;->centerY:F

    invoke-static {v1, v2, p1}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzl;->zza(FFLandroid/graphics/Rect;)F

    move-result v1

    iget v2, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzl;->centerX:F

    iget v3, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzl;->centerY:F

    invoke-static {v2, v3, p2}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzl;->zza(FFLandroid/graphics/Rect;)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzl;->zzasM:F

    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzl;->invalidateSelf()V

    return-void

    :cond_0
    invoke-virtual {v2}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v0

    iget v1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzl;->zzaty:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    :goto_2
    iput v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzl;->centerX:F

    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v0

    iput v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzl;->centerY:F

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v0

    iget v1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzl;->zzaty:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    goto :goto_2
.end method

.method public final zzd(FF)Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzl;->centerX:F

    iget v1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzl;->centerY:F

    invoke-static {p1, p2, v0, v1}, Lcom/google/android/gms/internal/hw;->zza(FFFF)F

    move-result v0

    iget v1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzl;->zzasM:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final zze(FF)Landroid/animation/Animator;
    .locals 9

    const/4 v4, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x2

    const/4 v6, 0x0

    const-string v0, "scale"

    new-array v1, v7, [F

    fill-array-data v1, :array_0

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    const-string v1, "translationX"

    new-array v2, v7, [F

    aput p1, v2, v6

    aput v4, v2, v8

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    const-string v2, "translationY"

    new-array v3, v7, [F

    aput p2, v3, v6

    aput v4, v3, v8

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    const-string v3, "alpha"

    new-array v4, v7, [I

    aput v6, v4, v6

    iget v5, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzl;->zzatC:I

    aput v5, v4, v8

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    const/4 v4, 0x4

    new-array v4, v4, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v4, v6

    aput-object v1, v4, v8

    aput-object v2, v4, v7

    const/4 v0, 0x3

    aput-object v3, v4, v0

    invoke-static {p0, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/hu;->zzEg()Lcom/google/android/gms/internal/ia;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
