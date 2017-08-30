.class public final Lcom/tapjoy/internal/gv;
.super Landroid/view/View;


# instance fields
.field public a:Z

.field private b:Landroid/graphics/Bitmap;

.field private c:Landroid/graphics/Rect;

.field private d:Landroid/graphics/Rect;

.field private e:Landroid/graphics/Rect;

.field private f:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/internal/gv;->a:Z

    iput-object v1, p0, Lcom/tapjoy/internal/gv;->b:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/tapjoy/internal/gv;->c:Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/tapjoy/internal/gv;->d:Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/tapjoy/internal/gv;->e:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/gv;->f:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method final a()V
    .locals 1

    iget-boolean v0, p0, Lcom/tapjoy/internal/gv;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/internal/gv;->c:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/tapjoy/internal/gv;->e:Landroid/graphics/Rect;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/gv;->d:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/tapjoy/internal/gv;->e:Landroid/graphics/Rect;

    goto :goto_0
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lcom/tapjoy/internal/gv;->e:Landroid/graphics/Rect;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tapjoy/internal/gv;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/internal/gv;->f:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/gv;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/tapjoy/internal/gv;->b:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/tapjoy/internal/gv;->e:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/tapjoy/internal/gv;->f:Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public final setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 5

    const/4 v4, 0x0

    iput-object p1, p0, Lcom/tapjoy/internal/gv;->b:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/tapjoy/internal/gv;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/tapjoy/internal/gv;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    new-instance v2, Landroid/graphics/Rect;

    div-int/lit8 v3, v0, 0x2

    invoke-direct {v2, v4, v4, v3, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/tapjoy/internal/gv;->d:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    div-int/lit8 v3, v0, 0x2

    invoke-direct {v2, v3, v4, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/tapjoy/internal/gv;->c:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/tapjoy/internal/gv;->a()V

    return-void
.end method
