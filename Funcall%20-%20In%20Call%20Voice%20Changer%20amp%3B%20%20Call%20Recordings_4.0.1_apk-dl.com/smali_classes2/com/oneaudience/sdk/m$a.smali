.class final Lcom/oneaudience/sdk/m$a;
.super Landroid/webkit/WebView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneaudience/sdk/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/oneaudience/sdk/m;

.field private b:F

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(Lcom/oneaudience/sdk/m;Landroid/content/Context;)V
    .locals 3

    iput-object p1, p0, Lcom/oneaudience/sdk/m$a;->a:Lcom/oneaudience/sdk/m;

    invoke-direct {p0, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    const/high16 v2, 0x41700000    # 15.0f

    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lcom/oneaudience/sdk/m$a;->b:F

    return-void
.end method

.method private a(Landroid/view/View;Z)V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    if-nez p2, :cond_2

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private b()Landroid/graphics/Paint;
    .locals 3

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-object v0
.end method


# virtual methods
.method a()V
    .locals 2

    iget-object v0, p0, Lcom/oneaudience/sdk/m$a;->a:Lcom/oneaudience/sdk/m;

    invoke-static {v0}, Lcom/oneaudience/sdk/m;->c(Lcom/oneaudience/sdk/m;)Lcom/oneaudience/sdk/m$f;

    move-result-object v1

    iget-object v0, p0, Lcom/oneaudience/sdk/m$a;->a:Lcom/oneaudience/sdk/m;

    invoke-static {v0}, Lcom/oneaudience/sdk/m;->f(Lcom/oneaudience/sdk/m;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oneaudience/sdk/m$a;->getScrollY()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/oneaudience/sdk/m$a;->a(Landroid/view/View;Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/webkit/WebView;->onDraw(Landroid/graphics/Canvas;)V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    sget-object v1, Landroid/graphics/Path$FillType;->INVERSE_WINDING:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    new-instance v1, Landroid/graphics/RectF;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/oneaudience/sdk/m$a;->getScrollY()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/oneaudience/sdk/m$a;->c:I

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/oneaudience/sdk/m$a;->getScrollY()I

    move-result v5

    iget v6, p0, Lcom/oneaudience/sdk/m$a;->d:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v2, p0, Lcom/oneaudience/sdk/m$a;->b:F

    iget v3, p0, Lcom/oneaudience/sdk/m$a;->b:F

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    invoke-direct {p0}, Lcom/oneaudience/sdk/m$a;->b()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onScrollChanged(IIII)V

    invoke-virtual {p0}, Lcom/oneaudience/sdk/m$a;->a()V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onSizeChanged(IIII)V

    iput p1, p0, Lcom/oneaudience/sdk/m$a;->c:I

    iput p2, p0, Lcom/oneaudience/sdk/m$a;->d:I

    return-void
.end method
