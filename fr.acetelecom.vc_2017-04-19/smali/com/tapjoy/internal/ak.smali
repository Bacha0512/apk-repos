.class public final Lcom/tapjoy/internal/ak;
.super Landroid/view/animation/Animation;


# instance fields
.field private final a:Z

.field private final b:F

.field private final c:F

.field private final d:I

.field private final e:F

.field private final f:I

.field private final g:F

.field private h:F

.field private i:F

.field private j:Landroid/graphics/Camera;


# direct methods
.method public constructor <init>(ZFFIFIF)V
    .locals 0

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    iput-boolean p1, p0, Lcom/tapjoy/internal/ak;->a:Z

    iput p2, p0, Lcom/tapjoy/internal/ak;->b:F

    iput p3, p0, Lcom/tapjoy/internal/ak;->c:F

    iput p4, p0, Lcom/tapjoy/internal/ak;->d:I

    iput p5, p0, Lcom/tapjoy/internal/ak;->e:F

    iput p6, p0, Lcom/tapjoy/internal/ak;->f:I

    iput p7, p0, Lcom/tapjoy/internal/ak;->g:F

    return-void
.end method


# virtual methods
.method protected final applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 5

    iget v0, p0, Lcom/tapjoy/internal/ak;->b:F

    iget v1, p0, Lcom/tapjoy/internal/ak;->c:F

    sub-float/2addr v1, v0

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/internal/ak;->j:Landroid/graphics/Camera;

    invoke-virtual {v2}, Landroid/graphics/Camera;->save()V

    iget-boolean v3, p0, Lcom/tapjoy/internal/ak;->a:Z

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Landroid/graphics/Camera;->rotateX(F)V

    :goto_0
    invoke-virtual {v2, v1}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {v2}, Landroid/graphics/Camera;->restore()V

    iget v0, p0, Lcom/tapjoy/internal/ak;->h:F

    iget v2, p0, Lcom/tapjoy/internal/ak;->i:F

    neg-float v3, v0

    neg-float v4, v2

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void

    :cond_0
    invoke-virtual {v2, v0}, Landroid/graphics/Camera;->rotateY(F)V

    goto :goto_0
.end method

.method public final initialize(IIII)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    iget v0, p0, Lcom/tapjoy/internal/ak;->d:I

    iget v1, p0, Lcom/tapjoy/internal/ak;->e:F

    invoke-virtual {p0, v0, v1, p1, p3}, Lcom/tapjoy/internal/ak;->resolveSize(IFII)F

    move-result v0

    iput v0, p0, Lcom/tapjoy/internal/ak;->h:F

    iget v0, p0, Lcom/tapjoy/internal/ak;->f:I

    iget v1, p0, Lcom/tapjoy/internal/ak;->g:F

    invoke-virtual {p0, v0, v1, p2, p4}, Lcom/tapjoy/internal/ak;->resolveSize(IFII)F

    move-result v0

    iput v0, p0, Lcom/tapjoy/internal/ak;->i:F

    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/ak;->j:Landroid/graphics/Camera;

    return-void
.end method
