.class Landroid/support/design/widget/h;
.super Landroid/support/design/widget/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/h$a;,
        Landroid/support/design/widget/h$b;,
        Landroid/support/design/widget/h$c;,
        Landroid/support/design/widget/h$d;
    }
.end annotation


# instance fields
.field a:Landroid/support/design/widget/m;

.field private final q:Landroid/support/design/widget/p;


# direct methods
.method constructor <init>(Landroid/support/design/widget/VisibilityAwareImageButton;Landroid/support/design/widget/n;Landroid/support/design/widget/r$d;)V
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Landroid/support/design/widget/j;-><init>(Landroid/support/design/widget/VisibilityAwareImageButton;Landroid/support/design/widget/n;Landroid/support/design/widget/r$d;)V

    new-instance v0, Landroid/support/design/widget/p;

    invoke-direct {v0}, Landroid/support/design/widget/p;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/h;->q:Landroid/support/design/widget/p;

    iget-object v0, p0, Landroid/support/design/widget/h;->q:Landroid/support/design/widget/p;

    sget-object v1, Landroid/support/design/widget/h;->j:[I

    new-instance v2, Landroid/support/design/widget/h$b;

    invoke-direct {v2, p0}, Landroid/support/design/widget/h$b;-><init>(Landroid/support/design/widget/h;)V

    invoke-direct {p0, v2}, Landroid/support/design/widget/h;->a(Landroid/support/design/widget/h$d;)Landroid/support/design/widget/r;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/p;->a([ILandroid/support/design/widget/r;)V

    iget-object v0, p0, Landroid/support/design/widget/h;->q:Landroid/support/design/widget/p;

    sget-object v1, Landroid/support/design/widget/h;->k:[I

    new-instance v2, Landroid/support/design/widget/h$b;

    invoke-direct {v2, p0}, Landroid/support/design/widget/h$b;-><init>(Landroid/support/design/widget/h;)V

    invoke-direct {p0, v2}, Landroid/support/design/widget/h;->a(Landroid/support/design/widget/h$d;)Landroid/support/design/widget/r;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/p;->a([ILandroid/support/design/widget/r;)V

    iget-object v0, p0, Landroid/support/design/widget/h;->q:Landroid/support/design/widget/p;

    sget-object v1, Landroid/support/design/widget/h;->l:[I

    new-instance v2, Landroid/support/design/widget/h$c;

    invoke-direct {v2, p0}, Landroid/support/design/widget/h$c;-><init>(Landroid/support/design/widget/h;)V

    invoke-direct {p0, v2}, Landroid/support/design/widget/h;->a(Landroid/support/design/widget/h$d;)Landroid/support/design/widget/r;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/p;->a([ILandroid/support/design/widget/r;)V

    iget-object v0, p0, Landroid/support/design/widget/h;->q:Landroid/support/design/widget/p;

    sget-object v1, Landroid/support/design/widget/h;->m:[I

    new-instance v2, Landroid/support/design/widget/h$a;

    invoke-direct {v2, p0}, Landroid/support/design/widget/h$a;-><init>(Landroid/support/design/widget/h;)V

    invoke-direct {p0, v2}, Landroid/support/design/widget/h;->a(Landroid/support/design/widget/h$d;)Landroid/support/design/widget/r;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/p;->a([ILandroid/support/design/widget/r;)V

    return-void
.end method

.method private a(Landroid/support/design/widget/h$d;)Landroid/support/design/widget/r;
    .locals 4

    iget-object v0, p0, Landroid/support/design/widget/h;->p:Landroid/support/design/widget/r$d;

    invoke-interface {v0}, Landroid/support/design/widget/r$d;->a()Landroid/support/design/widget/r;

    move-result-object v0

    sget-object v1, Landroid/support/design/widget/h;->b:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/r;->a(Landroid/view/animation/Interpolator;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/support/design/widget/r;->a(J)V

    invoke-virtual {v0, p1}, Landroid/support/design/widget/r;->a(Landroid/support/design/widget/r$a;)V

    invoke-virtual {v0, p1}, Landroid/support/design/widget/r;->a(Landroid/support/design/widget/r$c;)V

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/r;->a(FF)V

    return-object v0
.end method

.method private static b(I)Landroid/content/res/ColorStateList;
    .locals 5

    const/4 v1, 0x3

    const/4 v4, 0x0

    new-array v0, v1, [[I

    new-array v1, v1, [I

    sget-object v2, Landroid/support/design/widget/h;->k:[I

    aput-object v2, v0, v4

    aput p0, v1, v4

    const/4 v2, 0x1

    sget-object v3, Landroid/support/design/widget/h;->j:[I

    aput-object v3, v0, v2

    aput p0, v1, v2

    const/4 v2, 0x2

    new-array v3, v4, [I

    aput-object v3, v0, v2

    aput v4, v1, v2

    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v0, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v2
.end method


# virtual methods
.method a()F
    .locals 1

    iget v0, p0, Landroid/support/design/widget/h;->h:F

    return v0
.end method

.method a(FF)V
    .locals 2

    iget-object v0, p0, Landroid/support/design/widget/h;->a:Landroid/support/design/widget/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/h;->a:Landroid/support/design/widget/m;

    iget v1, p0, Landroid/support/design/widget/h;->i:F

    add-float/2addr v1, p1

    invoke-virtual {v0, p1, v1}, Landroid/support/design/widget/m;->a(FF)V

    invoke-virtual {p0}, Landroid/support/design/widget/h;->g()V

    :cond_0
    return-void
.end method

.method a(I)V
    .locals 2

    iget-object v0, p0, Landroid/support/design/widget/h;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/h;->e:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Landroid/support/design/widget/h;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method a(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/h;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/h;->d:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/h;->f:Landroid/support/design/widget/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/h;->f:Landroid/support/design/widget/c;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/c;->a(Landroid/content/res/ColorStateList;)V

    :cond_1
    return-void
.end method

.method a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;II)V
    .locals 8

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/support/design/widget/h;->k()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/h;->d:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Landroid/support/design/widget/h;->d:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/h;->d:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p2}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    invoke-virtual {p0}, Landroid/support/design/widget/h;->k()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/h;->e:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Landroid/support/design/widget/h;->e:Landroid/graphics/drawable/Drawable;

    invoke-static {p3}, Landroid/support/design/widget/h;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    if-lez p4, :cond_1

    invoke-virtual {p0, p4, p1}, Landroid/support/design/widget/h;->a(ILandroid/content/res/ColorStateList;)Landroid/support/design/widget/c;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/h;->f:Landroid/support/design/widget/c;

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/design/widget/h;->f:Landroid/support/design/widget/c;

    aput-object v1, v0, v7

    iget-object v1, p0, Landroid/support/design/widget/h;->d:Landroid/graphics/drawable/Drawable;

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/support/design/widget/h;->e:Landroid/graphics/drawable/Drawable;

    aput-object v1, v0, v3

    :goto_0
    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v1, p0, Landroid/support/design/widget/h;->g:Landroid/graphics/drawable/Drawable;

    new-instance v0, Landroid/support/design/widget/m;

    iget-object v1, p0, Landroid/support/design/widget/h;->n:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v1}, Landroid/support/design/widget/VisibilityAwareImageButton;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/support/design/widget/h;->g:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Landroid/support/design/widget/h;->o:Landroid/support/design/widget/n;

    invoke-interface {v3}, Landroid/support/design/widget/n;->a()F

    move-result v3

    iget v4, p0, Landroid/support/design/widget/h;->h:F

    iget v5, p0, Landroid/support/design/widget/h;->h:F

    iget v6, p0, Landroid/support/design/widget/h;->i:F

    add-float/2addr v5, v6

    invoke-direct/range {v0 .. v5}, Landroid/support/design/widget/m;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;FFF)V

    iput-object v0, p0, Landroid/support/design/widget/h;->a:Landroid/support/design/widget/m;

    iget-object v0, p0, Landroid/support/design/widget/h;->a:Landroid/support/design/widget/m;

    invoke-virtual {v0, v7}, Landroid/support/design/widget/m;->a(Z)V

    iget-object v0, p0, Landroid/support/design/widget/h;->o:Landroid/support/design/widget/n;

    iget-object v1, p0, Landroid/support/design/widget/h;->a:Landroid/support/design/widget/m;

    invoke-interface {v0, v1}, Landroid/support/design/widget/n;->a(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/h;->f:Landroid/support/design/widget/c;

    new-array v0, v3, [Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/design/widget/h;->d:Landroid/graphics/drawable/Drawable;

    aput-object v1, v0, v7

    iget-object v1, p0, Landroid/support/design/widget/h;->e:Landroid/graphics/drawable/Drawable;

    aput-object v1, v0, v2

    goto :goto_0
.end method

.method a(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/h;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/h;->d:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method a(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/h;->a:Landroid/support/design/widget/m;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/m;->getPadding(Landroid/graphics/Rect;)Z

    return-void
.end method

.method a(Landroid/support/design/widget/j$a;Z)V
    .locals 4

    invoke-virtual {p0}, Landroid/support/design/widget/h;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/design/widget/h;->c:I

    iget-object v0, p0, Landroid/support/design/widget/h;->n:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v0}, Landroid/support/design/widget/VisibilityAwareImageButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Landroid/support/design/a$a;->design_fab_out:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    sget-object v1, Landroid/support/design/widget/a;->c:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v1, Landroid/support/design/widget/h$1;

    invoke-direct {v1, p0, p2, p1}, Landroid/support/design/widget/h$1;-><init>(Landroid/support/design/widget/h;ZLandroid/support/design/widget/j$a;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Landroid/support/design/widget/h;->n:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v1, v0}, Landroid/support/design/widget/VisibilityAwareImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method a([I)V
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/h;->q:Landroid/support/design/widget/p;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/p;->a([I)V

    return-void
.end method

.method b()V
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/h;->q:Landroid/support/design/widget/p;

    invoke-virtual {v0}, Landroid/support/design/widget/p;->a()V

    return-void
.end method

.method b(Landroid/support/design/widget/j$a;Z)V
    .locals 4

    invoke-virtual {p0}, Landroid/support/design/widget/h;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Landroid/support/design/widget/h;->c:I

    iget-object v0, p0, Landroid/support/design/widget/h;->n:Landroid/support/design/widget/VisibilityAwareImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Landroid/support/design/widget/VisibilityAwareImageButton;->a(IZ)V

    iget-object v0, p0, Landroid/support/design/widget/h;->n:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v0}, Landroid/support/design/widget/VisibilityAwareImageButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Landroid/support/design/a$a;->design_fab_in:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    sget-object v1, Landroid/support/design/widget/a;->d:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v1, Landroid/support/design/widget/h$2;

    invoke-direct {v1, p0, p1}, Landroid/support/design/widget/h$2;-><init>(Landroid/support/design/widget/h;Landroid/support/design/widget/j$a;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Landroid/support/design/widget/h;->n:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v1, v0}, Landroid/support/design/widget/VisibilityAwareImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method c()V
    .locals 0

    return-void
.end method
