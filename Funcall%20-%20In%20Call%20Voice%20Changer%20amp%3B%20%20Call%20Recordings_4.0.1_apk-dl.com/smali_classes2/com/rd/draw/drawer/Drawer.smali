.class public Lcom/rd/draw/drawer/Drawer;
.super Ljava/lang/Object;
.source "Drawer.java"


# instance fields
.field private basicDrawer:Lcom/rd/draw/drawer/type/BasicDrawer;

.field private colorDrawer:Lcom/rd/draw/drawer/type/ColorDrawer;

.field private coordinateX:I

.field private coordinateY:I

.field private dropDrawer:Lcom/rd/draw/drawer/type/DropDrawer;

.field private fillDrawer:Lcom/rd/draw/drawer/type/FillDrawer;

.field private position:I

.field private scaleDrawer:Lcom/rd/draw/drawer/type/ScaleDrawer;

.field private slideDrawer:Lcom/rd/draw/drawer/type/SlideDrawer;

.field private swapDrawer:Lcom/rd/draw/drawer/type/SwapDrawer;

.field private thinWormDrawer:Lcom/rd/draw/drawer/type/ThinWormDrawer;

.field private wormDrawer:Lcom/rd/draw/drawer/type/WormDrawer;


# direct methods
.method public constructor <init>(Lcom/rd/draw/data/Indicator;)V
    .locals 2
    .param p1, "indicator"    # Lcom/rd/draw/data/Indicator;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 28
    .local v0, "paint":Landroid/graphics/Paint;
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 29
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 31
    new-instance v1, Lcom/rd/draw/drawer/type/BasicDrawer;

    invoke-direct {v1, v0, p1}, Lcom/rd/draw/drawer/type/BasicDrawer;-><init>(Landroid/graphics/Paint;Lcom/rd/draw/data/Indicator;)V

    iput-object v1, p0, Lcom/rd/draw/drawer/Drawer;->basicDrawer:Lcom/rd/draw/drawer/type/BasicDrawer;

    .line 32
    new-instance v1, Lcom/rd/draw/drawer/type/ColorDrawer;

    invoke-direct {v1, v0, p1}, Lcom/rd/draw/drawer/type/ColorDrawer;-><init>(Landroid/graphics/Paint;Lcom/rd/draw/data/Indicator;)V

    iput-object v1, p0, Lcom/rd/draw/drawer/Drawer;->colorDrawer:Lcom/rd/draw/drawer/type/ColorDrawer;

    .line 33
    new-instance v1, Lcom/rd/draw/drawer/type/ScaleDrawer;

    invoke-direct {v1, v0, p1}, Lcom/rd/draw/drawer/type/ScaleDrawer;-><init>(Landroid/graphics/Paint;Lcom/rd/draw/data/Indicator;)V

    iput-object v1, p0, Lcom/rd/draw/drawer/Drawer;->scaleDrawer:Lcom/rd/draw/drawer/type/ScaleDrawer;

    .line 34
    new-instance v1, Lcom/rd/draw/drawer/type/WormDrawer;

    invoke-direct {v1, v0, p1}, Lcom/rd/draw/drawer/type/WormDrawer;-><init>(Landroid/graphics/Paint;Lcom/rd/draw/data/Indicator;)V

    iput-object v1, p0, Lcom/rd/draw/drawer/Drawer;->wormDrawer:Lcom/rd/draw/drawer/type/WormDrawer;

    .line 35
    new-instance v1, Lcom/rd/draw/drawer/type/SlideDrawer;

    invoke-direct {v1, v0, p1}, Lcom/rd/draw/drawer/type/SlideDrawer;-><init>(Landroid/graphics/Paint;Lcom/rd/draw/data/Indicator;)V

    iput-object v1, p0, Lcom/rd/draw/drawer/Drawer;->slideDrawer:Lcom/rd/draw/drawer/type/SlideDrawer;

    .line 36
    new-instance v1, Lcom/rd/draw/drawer/type/FillDrawer;

    invoke-direct {v1, v0, p1}, Lcom/rd/draw/drawer/type/FillDrawer;-><init>(Landroid/graphics/Paint;Lcom/rd/draw/data/Indicator;)V

    iput-object v1, p0, Lcom/rd/draw/drawer/Drawer;->fillDrawer:Lcom/rd/draw/drawer/type/FillDrawer;

    .line 37
    new-instance v1, Lcom/rd/draw/drawer/type/ThinWormDrawer;

    invoke-direct {v1, v0, p1}, Lcom/rd/draw/drawer/type/ThinWormDrawer;-><init>(Landroid/graphics/Paint;Lcom/rd/draw/data/Indicator;)V

    iput-object v1, p0, Lcom/rd/draw/drawer/Drawer;->thinWormDrawer:Lcom/rd/draw/drawer/type/ThinWormDrawer;

    .line 38
    new-instance v1, Lcom/rd/draw/drawer/type/DropDrawer;

    invoke-direct {v1, v0, p1}, Lcom/rd/draw/drawer/type/DropDrawer;-><init>(Landroid/graphics/Paint;Lcom/rd/draw/data/Indicator;)V

    iput-object v1, p0, Lcom/rd/draw/drawer/Drawer;->dropDrawer:Lcom/rd/draw/drawer/type/DropDrawer;

    .line 39
    new-instance v1, Lcom/rd/draw/drawer/type/SwapDrawer;

    invoke-direct {v1, v0, p1}, Lcom/rd/draw/drawer/type/SwapDrawer;-><init>(Landroid/graphics/Paint;Lcom/rd/draw/data/Indicator;)V

    iput-object v1, p0, Lcom/rd/draw/drawer/Drawer;->swapDrawer:Lcom/rd/draw/drawer/type/SwapDrawer;

    .line 40
    return-void
.end method


# virtual methods
.method public drawBasic(Landroid/graphics/Canvas;Z)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "isSelectedItem"    # Z

    .prologue
    .line 49
    iget-object v0, p0, Lcom/rd/draw/drawer/Drawer;->colorDrawer:Lcom/rd/draw/drawer/type/ColorDrawer;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/rd/draw/drawer/Drawer;->basicDrawer:Lcom/rd/draw/drawer/type/BasicDrawer;

    iget v2, p0, Lcom/rd/draw/drawer/Drawer;->position:I

    iget v4, p0, Lcom/rd/draw/drawer/Drawer;->coordinateX:I

    iget v5, p0, Lcom/rd/draw/drawer/Drawer;->coordinateY:I

    move-object v1, p1

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/rd/draw/drawer/type/BasicDrawer;->draw(Landroid/graphics/Canvas;IZII)V

    .line 52
    :cond_0
    return-void
.end method

.method public drawColor(Landroid/graphics/Canvas;Lcom/rd/animation/data/Value;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "value"    # Lcom/rd/animation/data/Value;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 55
    iget-object v0, p0, Lcom/rd/draw/drawer/Drawer;->colorDrawer:Lcom/rd/draw/drawer/type/ColorDrawer;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/rd/draw/drawer/Drawer;->colorDrawer:Lcom/rd/draw/drawer/type/ColorDrawer;

    iget v3, p0, Lcom/rd/draw/drawer/Drawer;->position:I

    iget v4, p0, Lcom/rd/draw/drawer/Drawer;->coordinateX:I

    iget v5, p0, Lcom/rd/draw/drawer/Drawer;->coordinateY:I

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/rd/draw/drawer/type/ColorDrawer;->draw(Landroid/graphics/Canvas;Lcom/rd/animation/data/Value;III)V

    .line 58
    :cond_0
    return-void
.end method

.method public drawDrop(Landroid/graphics/Canvas;Lcom/rd/animation/data/Value;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "value"    # Lcom/rd/animation/data/Value;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 91
    iget-object v0, p0, Lcom/rd/draw/drawer/Drawer;->dropDrawer:Lcom/rd/draw/drawer/type/DropDrawer;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/rd/draw/drawer/Drawer;->dropDrawer:Lcom/rd/draw/drawer/type/DropDrawer;

    iget v1, p0, Lcom/rd/draw/drawer/Drawer;->coordinateX:I

    iget v2, p0, Lcom/rd/draw/drawer/Drawer;->coordinateY:I

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/rd/draw/drawer/type/DropDrawer;->draw(Landroid/graphics/Canvas;Lcom/rd/animation/data/Value;II)V

    .line 94
    :cond_0
    return-void
.end method

.method public drawFill(Landroid/graphics/Canvas;Lcom/rd/animation/data/Value;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "value"    # Lcom/rd/animation/data/Value;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 79
    iget-object v0, p0, Lcom/rd/draw/drawer/Drawer;->fillDrawer:Lcom/rd/draw/drawer/type/FillDrawer;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/rd/draw/drawer/Drawer;->fillDrawer:Lcom/rd/draw/drawer/type/FillDrawer;

    iget v3, p0, Lcom/rd/draw/drawer/Drawer;->position:I

    iget v4, p0, Lcom/rd/draw/drawer/Drawer;->coordinateX:I

    iget v5, p0, Lcom/rd/draw/drawer/Drawer;->coordinateY:I

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/rd/draw/drawer/type/FillDrawer;->draw(Landroid/graphics/Canvas;Lcom/rd/animation/data/Value;III)V

    .line 82
    :cond_0
    return-void
.end method

.method public drawScale(Landroid/graphics/Canvas;Lcom/rd/animation/data/Value;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "value"    # Lcom/rd/animation/data/Value;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 61
    iget-object v0, p0, Lcom/rd/draw/drawer/Drawer;->scaleDrawer:Lcom/rd/draw/drawer/type/ScaleDrawer;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/rd/draw/drawer/Drawer;->scaleDrawer:Lcom/rd/draw/drawer/type/ScaleDrawer;

    iget v3, p0, Lcom/rd/draw/drawer/Drawer;->position:I

    iget v4, p0, Lcom/rd/draw/drawer/Drawer;->coordinateX:I

    iget v5, p0, Lcom/rd/draw/drawer/Drawer;->coordinateY:I

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/rd/draw/drawer/type/ScaleDrawer;->draw(Landroid/graphics/Canvas;Lcom/rd/animation/data/Value;III)V

    .line 64
    :cond_0
    return-void
.end method

.method public drawSlide(Landroid/graphics/Canvas;Lcom/rd/animation/data/Value;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "value"    # Lcom/rd/animation/data/Value;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 73
    iget-object v0, p0, Lcom/rd/draw/drawer/Drawer;->slideDrawer:Lcom/rd/draw/drawer/type/SlideDrawer;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/rd/draw/drawer/Drawer;->slideDrawer:Lcom/rd/draw/drawer/type/SlideDrawer;

    iget v1, p0, Lcom/rd/draw/drawer/Drawer;->coordinateX:I

    iget v2, p0, Lcom/rd/draw/drawer/Drawer;->coordinateY:I

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/rd/draw/drawer/type/SlideDrawer;->draw(Landroid/graphics/Canvas;Lcom/rd/animation/data/Value;II)V

    .line 76
    :cond_0
    return-void
.end method

.method public drawSwap(Landroid/graphics/Canvas;Lcom/rd/animation/data/Value;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "value"    # Lcom/rd/animation/data/Value;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 97
    iget-object v0, p0, Lcom/rd/draw/drawer/Drawer;->swapDrawer:Lcom/rd/draw/drawer/type/SwapDrawer;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/rd/draw/drawer/Drawer;->swapDrawer:Lcom/rd/draw/drawer/type/SwapDrawer;

    iget v3, p0, Lcom/rd/draw/drawer/Drawer;->position:I

    iget v4, p0, Lcom/rd/draw/drawer/Drawer;->coordinateX:I

    iget v5, p0, Lcom/rd/draw/drawer/Drawer;->coordinateY:I

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/rd/draw/drawer/type/SwapDrawer;->draw(Landroid/graphics/Canvas;Lcom/rd/animation/data/Value;III)V

    .line 100
    :cond_0
    return-void
.end method

.method public drawThinWorm(Landroid/graphics/Canvas;Lcom/rd/animation/data/Value;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "value"    # Lcom/rd/animation/data/Value;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 85
    iget-object v0, p0, Lcom/rd/draw/drawer/Drawer;->thinWormDrawer:Lcom/rd/draw/drawer/type/ThinWormDrawer;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/rd/draw/drawer/Drawer;->thinWormDrawer:Lcom/rd/draw/drawer/type/ThinWormDrawer;

    iget v1, p0, Lcom/rd/draw/drawer/Drawer;->coordinateX:I

    iget v2, p0, Lcom/rd/draw/drawer/Drawer;->coordinateY:I

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/rd/draw/drawer/type/ThinWormDrawer;->draw(Landroid/graphics/Canvas;Lcom/rd/animation/data/Value;II)V

    .line 88
    :cond_0
    return-void
.end method

.method public drawWorm(Landroid/graphics/Canvas;Lcom/rd/animation/data/Value;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "value"    # Lcom/rd/animation/data/Value;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 67
    iget-object v0, p0, Lcom/rd/draw/drawer/Drawer;->wormDrawer:Lcom/rd/draw/drawer/type/WormDrawer;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/rd/draw/drawer/Drawer;->wormDrawer:Lcom/rd/draw/drawer/type/WormDrawer;

    iget v1, p0, Lcom/rd/draw/drawer/Drawer;->coordinateX:I

    iget v2, p0, Lcom/rd/draw/drawer/Drawer;->coordinateY:I

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/rd/draw/drawer/type/WormDrawer;->draw(Landroid/graphics/Canvas;Lcom/rd/animation/data/Value;II)V

    .line 70
    :cond_0
    return-void
.end method

.method public setup(III)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "coordinateX"    # I
    .param p3, "coordinateY"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/rd/draw/drawer/Drawer;->position:I

    .line 44
    iput p2, p0, Lcom/rd/draw/drawer/Drawer;->coordinateX:I

    .line 45
    iput p3, p0, Lcom/rd/draw/drawer/Drawer;->coordinateY:I

    .line 46
    return-void
.end method
