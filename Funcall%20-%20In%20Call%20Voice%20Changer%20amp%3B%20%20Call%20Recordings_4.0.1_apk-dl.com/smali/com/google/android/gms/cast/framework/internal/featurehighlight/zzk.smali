.class final Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzk;
.super Ljava/lang/Object;


# instance fields
.field private final zzatr:Landroid/graphics/Rect;

.field private final zzats:I

.field private final zzatt:I

.field private final zzatu:I

.field private final zzatv:I

.field private final zzatw:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzk;->zzatr:Landroid/graphics/Rect;

    invoke-static {p1}, Lcom/google/android/gms/internal/ik;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzk;->zzatw:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/gms/R$dimen;->cast_libraries_material_featurehighlight_inner_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzk;->zzats:I

    sget v1, Lcom/google/android/gms/R$dimen;->cast_libraries_material_featurehighlight_inner_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzk;->zzatt:I

    sget v1, Lcom/google/android/gms/R$dimen;->cast_libraries_material_featurehighlight_text_max_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzk;->zzatu:I

    sget v1, Lcom/google/android/gms/R$dimen;->cast_libraries_material_featurehighlight_text_horizontal_offset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzk;->zzatv:I

    return-void
.end method

.method private final zza(Landroid/view/View;IIII)I
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    div-int/lit8 v1, p4, 0x2

    sub-int v2, p5, p2

    sub-int v3, p3, p5

    if-gt v2, v3, :cond_1

    sub-int v1, p5, v1

    iget v2, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzk;->zzatv:I

    add-int/2addr v1, v2

    :goto_0
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int v2, v1, v2

    if-ge v2, p2, :cond_2

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int v1, p2, v0

    :cond_0
    :goto_1
    return v1

    :cond_1
    sub-int v1, p5, v1

    iget v2, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzk;->zzatv:I

    sub-int/2addr v1, v2

    goto :goto_0

    :cond_2
    add-int v2, v1, p4

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v2, v3

    if-le v2, p3, :cond_0

    sub-int v1, p3, p4

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v1, v0

    goto :goto_1
.end method

.method private final zza(Landroid/view/View;II)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int v1, p2, v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int v0, v1, v0

    iget v1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzk;->zzatu:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/high16 v1, -0x80000000

    invoke-static {p3, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    return-void
.end method


# virtual methods
.method final zza(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzk;->zzatw:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;

    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zznO()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/view/View;->layout(IIII)V

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzk;->zzatr:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzk;->zzatw:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zznP()Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzl;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzk;->zzatr:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzl;->zzb(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzk;->zzatw:Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zza;->zznQ()Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzj;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzj;->zzc(Landroid/graphics/Rect;)V

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    if-ge v2, v3, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget v4, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzk;->zzats:I

    mul-int/lit8 v4, v4, 0x2

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    div-int/lit8 v4, v3, 0x2

    add-int/2addr v4, v2

    iget v6, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzk;->zzatt:I

    add-int/2addr v6, v4

    if-eqz v0, :cond_3

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v6

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-direct {p0, v1, v2, v0}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzk;->zza(Landroid/view/View;II)V

    iget v2, p2, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzk;->zza(Landroid/view/View;IIII)I

    move-result v0

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v6

    invoke-virtual {v1, v0, v6, v2, v3}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    :cond_3
    div-int/lit8 v0, v3, 0x2

    sub-int v0, v2, v0

    iget v2, p0, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzk;->zzatt:I

    sub-int v6, v0, v2

    iget v0, p2, Landroid/graphics/Rect;->top:I

    sub-int v0, v6, v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-direct {p0, v1, v2, v0}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzk;->zza(Landroid/view/View;II)V

    iget v2, p2, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/cast/framework/internal/featurehighlight/zzk;->zza(Landroid/view/View;IIII)I

    move-result v0

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int v2, v6, v2

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {v1, v0, v2, v3, v6}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_0
.end method
