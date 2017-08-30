.class public final Lcom/tapjoy/internal/gy;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/gy$a;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:F

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/widget/FrameLayout;

.field private f:Landroid/widget/ImageView;

.field private g:Lcom/tapjoy/internal/gv;

.field private h:Lcom/tapjoy/internal/gh;

.field private i:Lcom/tapjoy/internal/gy$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tapjoy/internal/gh;Lcom/tapjoy/internal/gy$a;)V
    .locals 6

    const/4 v0, 0x1

    const/16 v5, 0xd

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/tapjoy/internal/gy;->b:F

    iput-object p2, p0, Lcom/tapjoy/internal/gy;->h:Lcom/tapjoy/internal/gh;

    iput-object p3, p0, Lcom/tapjoy/internal/gy;->i:Lcom/tapjoy/internal/gy$a;

    invoke-virtual {p0}, Lcom/tapjoy/internal/gy;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/view/View;

    invoke-direct {v3, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/tapjoy/internal/gy;->c:Landroid/view/View;

    iget-object v3, p0, Lcom/tapjoy/internal/gy;->c:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setId(I)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v4, p0, Lcom/tapjoy/internal/gy;->c:Landroid/view/View;

    invoke-virtual {p0, v4, v3}, Lcom/tapjoy/internal/gy;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/view/View;

    invoke-direct {v3, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/tapjoy/internal/gy;->d:Landroid/view/View;

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v4, p0, Lcom/tapjoy/internal/gy;->d:Landroid/view/View;

    invoke-virtual {p0, v4, v3}, Lcom/tapjoy/internal/gy;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/tapjoy/internal/gy;->e:Landroid/widget/FrameLayout;

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v4, p0, Lcom/tapjoy/internal/gy;->e:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v4, v3}, Lcom/tapjoy/internal/gy;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/tapjoy/internal/gy;->f:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/tapjoy/internal/gy;->f:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v4, 0x7

    iget-object v5, p0, Lcom/tapjoy/internal/gy;->c:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v4, 0x6

    iget-object v5, p0, Lcom/tapjoy/internal/gy;->c:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v4, p0, Lcom/tapjoy/internal/gy;->f:Landroid/widget/ImageView;

    invoke-virtual {p0, v4, v3}, Lcom/tapjoy/internal/gy;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/tapjoy/internal/gy;->h:Lcom/tapjoy/internal/gh;

    iget-object v3, v3, Lcom/tapjoy/internal/gh;->m:Lcom/tapjoy/internal/gi;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/tapjoy/internal/gy;->h:Lcom/tapjoy/internal/gh;

    iget-object v3, v3, Lcom/tapjoy/internal/gh;->m:Lcom/tapjoy/internal/gi;

    iget-object v4, v3, Lcom/tapjoy/internal/gi;->a:Lcom/tapjoy/internal/gk;

    if-eqz v4, :cond_3

    iget-object v4, v3, Lcom/tapjoy/internal/gi;->b:Landroid/graphics/Point;

    if-nez v4, :cond_0

    iget-object v3, v3, Lcom/tapjoy/internal/gi;->c:Landroid/graphics/Point;

    if-eqz v3, :cond_3

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    new-instance v0, Lcom/tapjoy/internal/gv;

    invoke-direct {v0, v2}, Lcom/tapjoy/internal/gv;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tapjoy/internal/gy;->g:Lcom/tapjoy/internal/gv;

    iget-object v0, p0, Lcom/tapjoy/internal/gy;->g:Lcom/tapjoy/internal/gv;

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/gv;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/tapjoy/internal/gy;->d:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/tapjoy/internal/gy;->d:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/tapjoy/internal/gy;->g:Lcom/tapjoy/internal/gv;

    invoke-virtual {p0, v1, v0}, Lcom/tapjoy/internal/gy;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object v0, p0, Lcom/tapjoy/internal/gy;->f:Landroid/widget/ImageView;

    iget-object v1, p2, Lcom/tapjoy/internal/gh;->c:Lcom/tapjoy/internal/gk;

    iget-object v1, v1, Lcom/tapjoy/internal/gk;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/tapjoy/internal/gy;->g:Lcom/tapjoy/internal/gv;

    if-eqz v0, :cond_2

    iget-object v0, p2, Lcom/tapjoy/internal/gh;->m:Lcom/tapjoy/internal/gi;

    if-eqz v0, :cond_2

    iget-object v0, p2, Lcom/tapjoy/internal/gh;->m:Lcom/tapjoy/internal/gi;

    iget-object v0, v0, Lcom/tapjoy/internal/gi;->a:Lcom/tapjoy/internal/gk;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tapjoy/internal/gy;->g:Lcom/tapjoy/internal/gv;

    iget-object v1, p2, Lcom/tapjoy/internal/gh;->m:Lcom/tapjoy/internal/gi;

    iget-object v1, v1, Lcom/tapjoy/internal/gi;->a:Lcom/tapjoy/internal/gk;

    iget-object v1, v1, Lcom/tapjoy/internal/gk;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/gv;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_2
    return-void

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private a(I)I
    .locals 2

    int-to-float v0, p1

    iget v1, p0, Lcom/tapjoy/internal/gy;->b:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/tapjoy/internal/gy;->f:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/tapjoy/internal/gy;->i:Lcom/tapjoy/internal/gy$a;

    invoke-interface {v0}, Lcom/tapjoy/internal/gy$a;->a()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/tapjoy/internal/gy;->g:Lcom/tapjoy/internal/gv;

    if-ne p1, v0, :cond_3

    iget-object v1, p0, Lcom/tapjoy/internal/gy;->g:Lcom/tapjoy/internal/gv;

    iget-boolean v0, v1, Lcom/tapjoy/internal/gv;->a:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, v1, Lcom/tapjoy/internal/gv;->a:Z

    invoke-virtual {v1}, Lcom/tapjoy/internal/gv;->a()V

    invoke-virtual {v1}, Lcom/tapjoy/internal/gv;->invalidate()V

    iget-object v0, p0, Lcom/tapjoy/internal/gy;->i:Lcom/tapjoy/internal/gy$a;

    invoke-interface {v0}, Lcom/tapjoy/internal/gy$a;->b()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/tapjoy/internal/gg;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tapjoy/internal/gy;->i:Lcom/tapjoy/internal/gy$a;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/gg;

    invoke-interface {v1, v0}, Lcom/tapjoy/internal/gy$a;->a(Lcom/tapjoy/internal/gg;)V

    goto :goto_0
.end method

.method protected final onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    return-void
.end method

.method protected final onMeasure(II)V
    .locals 8

    const/16 v2, 0x10

    const/16 v3, 0xf

    const/high16 v7, 0x43f00000    # 480.0f

    const/high16 v6, 0x43a00000    # 320.0f

    const/4 v4, 0x0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iget-boolean v5, p0, Lcom/tapjoy/internal/gy;->a:Z

    if-eqz v5, :cond_0

    int-to-float v0, v0

    div-float/2addr v0, v7

    int-to-float v1, v1

    div-float/2addr v1, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/tapjoy/internal/gy;->b:F

    :goto_0
    iget-object v0, p0, Lcom/tapjoy/internal/gy;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-boolean v1, p0, Lcom/tapjoy/internal/gy;->a:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x1e0

    :goto_1
    invoke-direct {p0, v1}, Lcom/tapjoy/internal/gy;->a(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget-boolean v1, p0, Lcom/tapjoy/internal/gy;->a:Z

    if-eqz v1, :cond_2

    const/16 v1, 0x140

    :goto_2
    invoke-direct {p0, v1}, Lcom/tapjoy/internal/gy;->a(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v0, p0, Lcom/tapjoy/internal/gy;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-boolean v1, p0, Lcom/tapjoy/internal/gy;->a:Z

    if-eqz v1, :cond_3

    const/16 v1, 0x1c0

    :goto_3
    invoke-direct {p0, v1}, Lcom/tapjoy/internal/gy;->a(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget-boolean v1, p0, Lcom/tapjoy/internal/gy;->a:Z

    if-eqz v1, :cond_4

    const/16 v1, 0x122

    :goto_4
    invoke-direct {p0, v1}, Lcom/tapjoy/internal/gy;->a(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v1, p0, Lcom/tapjoy/internal/gy;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v5, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v0, p0, Lcom/tapjoy/internal/gy;->e:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lcom/tapjoy/internal/ah;->a(Landroid/view/ViewGroup;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/gg;

    iget-object v0, v0, Lcom/tapjoy/internal/gg;->a:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/tapjoy/internal/gy;->a(I)I

    move-result v6

    iput v6, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/tapjoy/internal/gy;->a(I)I

    move-result v6

    iput v6, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget v6, v0, Landroid/graphics/Rect;->left:I

    invoke-direct {p0, v6}, Lcom/tapjoy/internal/gy;->a(I)I

    move-result v6

    iput v6, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/gy;->a(I)I

    move-result v0

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_5

    :cond_0
    int-to-float v0, v0

    div-float/2addr v0, v6

    int-to-float v1, v1

    div-float/2addr v1, v7

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/tapjoy/internal/gy;->b:F

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0x140

    goto/16 :goto_1

    :cond_2
    const/16 v1, 0x1e0

    goto/16 :goto_2

    :cond_3
    const/16 v1, 0x122

    goto/16 :goto_3

    :cond_4
    const/16 v1, 0x1c0

    goto :goto_4

    :cond_5
    invoke-direct {p0, v4}, Lcom/tapjoy/internal/gy;->a(I)I

    move-result v1

    iget-object v0, p0, Lcom/tapjoy/internal/gy;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    iget-object v0, p0, Lcom/tapjoy/internal/gy;->f:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v5, 0x1e

    invoke-direct {p0, v5}, Lcom/tapjoy/internal/gy;->a(I)I

    move-result v5

    iput v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    neg-int v5, v1

    iget-object v6, p0, Lcom/tapjoy/internal/gy;->h:Lcom/tapjoy/internal/gh;

    iget-object v6, v6, Lcom/tapjoy/internal/gh;->d:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    invoke-direct {p0, v6}, Lcom/tapjoy/internal/gy;->a(I)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    neg-int v5, v1

    iget-object v6, p0, Lcom/tapjoy/internal/gy;->h:Lcom/tapjoy/internal/gh;

    iget-object v6, v6, Lcom/tapjoy/internal/gh;->d:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v6}, Lcom/tapjoy/internal/gy;->a(I)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/tapjoy/internal/gy;->g:Lcom/tapjoy/internal/gv;

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/tapjoy/internal/gy;->a:Z

    if-eqz v0, :cond_7

    move v0, v2

    :goto_6
    invoke-direct {p0, v0}, Lcom/tapjoy/internal/gy;->a(I)I

    move-result v5

    iget-boolean v0, p0, Lcom/tapjoy/internal/gy;->a:Z

    if-eqz v0, :cond_8

    :goto_7
    invoke-direct {p0, v3}, Lcom/tapjoy/internal/gy;->a(I)I

    move-result v2

    iget-object v0, p0, Lcom/tapjoy/internal/gy;->g:Lcom/tapjoy/internal/gv;

    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/tapjoy/internal/gv;->setPadding(IIII)V

    iget-object v0, p0, Lcom/tapjoy/internal/gy;->g:Lcom/tapjoy/internal/gv;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gv;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0x1a

    invoke-direct {p0, v1}, Lcom/tapjoy/internal/gy;->a(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v1, p0, Lcom/tapjoy/internal/gy;->h:Lcom/tapjoy/internal/gh;

    iget-object v1, v1, Lcom/tapjoy/internal/gh;->m:Lcom/tapjoy/internal/gi;

    if-eqz v1, :cond_c

    iget-boolean v1, p0, Lcom/tapjoy/internal/gy;->a:Z

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/tapjoy/internal/gy;->h:Lcom/tapjoy/internal/gh;

    iget-object v1, v1, Lcom/tapjoy/internal/gh;->m:Lcom/tapjoy/internal/gi;

    iget-object v3, v1, Lcom/tapjoy/internal/gi;->b:Landroid/graphics/Point;

    if-nez v3, :cond_9

    iget-object v1, v1, Lcom/tapjoy/internal/gi;->c:Landroid/graphics/Point;

    :goto_8
    if-eqz v1, :cond_c

    iget v4, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    :goto_9
    invoke-direct {p0, v4}, Lcom/tapjoy/internal/gy;->a(I)I

    move-result v3

    add-int/2addr v3, v5

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-direct {p0, v1}, Lcom/tapjoy/internal/gy;->a(I)I

    move-result v1

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    :cond_6
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    return-void

    :cond_7
    move v0, v3

    goto :goto_6

    :cond_8
    move v3, v2

    goto :goto_7

    :cond_9
    iget-object v1, v1, Lcom/tapjoy/internal/gi;->b:Landroid/graphics/Point;

    goto :goto_8

    :cond_a
    iget-object v1, p0, Lcom/tapjoy/internal/gy;->h:Lcom/tapjoy/internal/gh;

    iget-object v1, v1, Lcom/tapjoy/internal/gh;->m:Lcom/tapjoy/internal/gi;

    iget-object v3, v1, Lcom/tapjoy/internal/gi;->c:Landroid/graphics/Point;

    if-nez v3, :cond_b

    iget-object v1, v1, Lcom/tapjoy/internal/gi;->b:Landroid/graphics/Point;

    goto :goto_8

    :cond_b
    iget-object v1, v1, Lcom/tapjoy/internal/gi;->c:Landroid/graphics/Point;

    goto :goto_8

    :cond_c
    move v1, v4

    goto :goto_9
.end method

.method public final setLandscape(Z)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    iput-boolean p1, p0, Lcom/tapjoy/internal/gy;->a:Z

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/tapjoy/internal/gy;->h:Lcom/tapjoy/internal/gh;

    iget-object v0, v0, Lcom/tapjoy/internal/gh;->b:Lcom/tapjoy/internal/gk;

    iget-object v2, v0, Lcom/tapjoy/internal/gk;->b:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/tapjoy/internal/gy;->h:Lcom/tapjoy/internal/gh;

    iget-object v0, v0, Lcom/tapjoy/internal/gh;->f:Lcom/tapjoy/internal/gk;

    iget-object v1, v0, Lcom/tapjoy/internal/gk;->b:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/tapjoy/internal/gy;->h:Lcom/tapjoy/internal/gh;

    iget-object v0, v0, Lcom/tapjoy/internal/gh;->j:Ljava/util/ArrayList;

    :goto_0
    iget-object v3, p0, Lcom/tapjoy/internal/gy;->c:Landroid/view/View;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4, v6, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-static {v3, v4}, Lcom/tapjoy/internal/ag;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/tapjoy/internal/gy;->d:Landroid/view/View;

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v6, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-static {v2, v3}, Lcom/tapjoy/internal/ag;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/tapjoy/internal/gy;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/tapjoy/internal/gy;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    :cond_0
    invoke-virtual {p0}, Lcom/tapjoy/internal/gy;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/gg;

    new-instance v3, Landroid/view/View;

    invoke-direct {v3, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v4, 0x33

    invoke-direct {v0, v5, v5, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget-object v4, p0, Lcom/tapjoy/internal/gy;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v3, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/tapjoy/internal/gy;->h:Lcom/tapjoy/internal/gh;

    iget-object v0, v0, Lcom/tapjoy/internal/gh;->a:Lcom/tapjoy/internal/gk;

    iget-object v2, v0, Lcom/tapjoy/internal/gk;->b:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/tapjoy/internal/gy;->h:Lcom/tapjoy/internal/gh;

    iget-object v0, v0, Lcom/tapjoy/internal/gh;->e:Lcom/tapjoy/internal/gk;

    iget-object v1, v0, Lcom/tapjoy/internal/gk;->b:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/tapjoy/internal/gy;->h:Lcom/tapjoy/internal/gh;

    iget-object v0, v0, Lcom/tapjoy/internal/gh;->i:Ljava/util/ArrayList;

    goto :goto_0

    :cond_2
    return-void
.end method
