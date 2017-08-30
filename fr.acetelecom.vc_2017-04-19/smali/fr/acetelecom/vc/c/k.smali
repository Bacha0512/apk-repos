.class public Lfr/acetelecom/vc/c/k;
.super Ljava/lang/Object;


# instance fields
.field public final a:Landroid/widget/TextView;

.field public final b:I

.field final c:Landroid/os/Handler;

.field private final d:Landroid/widget/PopupWindow;

.field private e:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lfr/acetelecom/vc/c/k$1;

    invoke-direct {v0, p0}, Lfr/acetelecom/vc/c/k$1;-><init>(Lfr/acetelecom/vc/c/k;)V

    iput-object v0, p0, Lfr/acetelecom/vc/c/k;->c:Landroid/os/Handler;

    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lfr/acetelecom/vc/c/k;->d:Landroid/widget/PopupWindow;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f030056

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lfr/acetelecom/vc/c/k;->e:Landroid/view/View;

    iget-object v0, p0, Lfr/acetelecom/vc/c/k;->e:Landroid/view/View;

    const v1, 0x7f0e013f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfr/acetelecom/vc/c/k;->a:Landroid/widget/TextView;

    const/16 v0, 0x3e8

    iput v0, p0, Lfr/acetelecom/vc/c/k;->b:I

    return-void
.end method

.method static synthetic a(Lfr/acetelecom/vc/c/k;)Landroid/widget/PopupWindow;
    .locals 1

    iget-object v0, p0, Lfr/acetelecom/vc/c/k;->d:Landroid/widget/PopupWindow;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, -0x2

    const/4 v6, 0x1

    iget-object v0, p0, Lfr/acetelecom/vc/c/k;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v7}, Landroid/widget/PopupWindow;->setHeight(I)V

    iget-object v0, p0, Lfr/acetelecom/vc/c/k;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v7}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v0, p0, Lfr/acetelecom/vc/c/k;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v6}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v0, p0, Lfr/acetelecom/vc/c/k;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v6}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    iget-object v0, p0, Lfr/acetelecom/vc/c/k;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v6}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object v0, p0, Lfr/acetelecom/vc/c/k;->d:Landroid/widget/PopupWindow;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lfr/acetelecom/vc/c/k;->d:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lfr/acetelecom/vc/c/k;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    new-instance v1, Landroid/graphics/Rect;

    aget v2, v0, v8

    aget v3, v0, v6

    aget v4, v0, v8

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    aget v0, v0, v6

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v0, v5

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v0, p0, Lfr/acetelecom/vc/c/k;->e:Landroid/view/View;

    invoke-virtual {v0, v7, v7}, Landroid/view/View;->measure(II)V

    iget-object v0, p0, Lfr/acetelecom/vc/c/k;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    iget-object v0, p0, Lfr/acetelecom/vc/c/k;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    div-int/lit8 v0, v0, 0x2

    sub-int v0, v2, v0

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    sub-int v1, v2, v1

    iget-object v2, p0, Lfr/acetelecom/vc/c/k;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v2, p1, v8, v0, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    iget-object v0, p0, Lfr/acetelecom/vc/c/k;->c:Landroid/os/Handler;

    const/16 v1, 0x64

    iget v2, p0, Lfr/acetelecom/vc/c/k;->b:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
