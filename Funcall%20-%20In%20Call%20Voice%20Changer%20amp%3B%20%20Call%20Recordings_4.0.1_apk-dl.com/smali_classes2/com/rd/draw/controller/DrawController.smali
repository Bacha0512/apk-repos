.class public Lcom/rd/draw/controller/DrawController;
.super Ljava/lang/Object;
.source "DrawController.java"


# instance fields
.field private drawer:Lcom/rd/draw/drawer/Drawer;

.field private indicator:Lcom/rd/draw/data/Indicator;

.field private value:Lcom/rd/animation/data/Value;


# direct methods
.method public constructor <init>(Lcom/rd/draw/data/Indicator;)V
    .locals 1
    .param p1, "indicator"    # Lcom/rd/draw/data/Indicator;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/rd/draw/controller/DrawController;->indicator:Lcom/rd/draw/data/Indicator;

    .line 20
    new-instance v0, Lcom/rd/draw/drawer/Drawer;

    invoke-direct {v0, p1}, Lcom/rd/draw/drawer/Drawer;-><init>(Lcom/rd/draw/data/Indicator;)V

    iput-object v0, p0, Lcom/rd/draw/controller/DrawController;->drawer:Lcom/rd/draw/drawer/Drawer;

    .line 21
    return-void
.end method

.method private drawIndicator(Landroid/graphics/Canvas;III)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "position"    # I
    .param p3, "coordinateX"    # I
    .param p4, "coordinateY"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 43
    iget-object v8, p0, Lcom/rd/draw/controller/DrawController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v8}, Lcom/rd/draw/data/Indicator;->isInteractiveAnimation()Z

    move-result v0

    .line 44
    .local v0, "interactiveAnimation":Z
    iget-object v8, p0, Lcom/rd/draw/controller/DrawController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v8}, Lcom/rd/draw/data/Indicator;->getSelectedPosition()I

    move-result v4

    .line 45
    .local v4, "selectedPosition":I
    iget-object v8, p0, Lcom/rd/draw/controller/DrawController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v8}, Lcom/rd/draw/data/Indicator;->getSelectingPosition()I

    move-result v6

    .line 46
    .local v6, "selectingPosition":I
    iget-object v8, p0, Lcom/rd/draw/controller/DrawController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v8}, Lcom/rd/draw/data/Indicator;->getLastSelectedPosition()I

    move-result v2

    .line 48
    .local v2, "lastSelectedPosition":I
    if-nez v0, :cond_2

    if-eq p2, v4, :cond_0

    if-ne p2, v2, :cond_2

    :cond_0
    move v3, v5

    .line 49
    .local v3, "selectedItem":Z
    :goto_0
    if-eqz v0, :cond_3

    if-eq p2, v4, :cond_1

    if-ne p2, v6, :cond_3

    .line 50
    .local v5, "selectingItem":Z
    :cond_1
    :goto_1
    or-int v1, v3, v5

    .line 51
    .local v1, "isSelectedItem":Z
    iget-object v7, p0, Lcom/rd/draw/controller/DrawController;->drawer:Lcom/rd/draw/drawer/Drawer;

    invoke-virtual {v7, p2, p3, p4}, Lcom/rd/draw/drawer/Drawer;->setup(III)V

    .line 53
    iget-object v7, p0, Lcom/rd/draw/controller/DrawController;->value:Lcom/rd/animation/data/Value;

    if-eqz v7, :cond_4

    if-eqz v1, :cond_4

    .line 54
    invoke-direct {p0, p1}, Lcom/rd/draw/controller/DrawController;->drawWithAnimation(Landroid/graphics/Canvas;)V

    .line 58
    :goto_2
    return-void

    .end local v1    # "isSelectedItem":Z
    .end local v3    # "selectedItem":Z
    .end local v5    # "selectingItem":Z
    :cond_2
    move v3, v7

    .line 48
    goto :goto_0

    .restart local v3    # "selectedItem":Z
    :cond_3
    move v5, v7

    .line 49
    goto :goto_1

    .line 56
    .restart local v1    # "isSelectedItem":Z
    .restart local v5    # "selectingItem":Z
    :cond_4
    iget-object v7, p0, Lcom/rd/draw/controller/DrawController;->drawer:Lcom/rd/draw/drawer/Drawer;

    invoke-virtual {v7, p1, v1}, Lcom/rd/draw/drawer/Drawer;->drawBasic(Landroid/graphics/Canvas;Z)V

    goto :goto_2
.end method

.method private drawWithAnimation(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 61
    iget-object v1, p0, Lcom/rd/draw/controller/DrawController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v1}, Lcom/rd/draw/data/Indicator;->getAnimationType()Lcom/rd/animation/type/AnimationType;

    move-result-object v0

    .line 62
    .local v0, "animationType":Lcom/rd/animation/type/AnimationType;
    sget-object v1, Lcom/rd/draw/controller/DrawController$1;->$SwitchMap$com$rd$animation$type$AnimationType:[I

    invoke-virtual {v0}, Lcom/rd/animation/type/AnimationType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 99
    :goto_0
    return-void

    .line 64
    :pswitch_0
    iget-object v1, p0, Lcom/rd/draw/controller/DrawController;->drawer:Lcom/rd/draw/drawer/Drawer;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/rd/draw/drawer/Drawer;->drawBasic(Landroid/graphics/Canvas;Z)V

    goto :goto_0

    .line 68
    :pswitch_1
    iget-object v1, p0, Lcom/rd/draw/controller/DrawController;->drawer:Lcom/rd/draw/drawer/Drawer;

    iget-object v2, p0, Lcom/rd/draw/controller/DrawController;->value:Lcom/rd/animation/data/Value;

    invoke-virtual {v1, p1, v2}, Lcom/rd/draw/drawer/Drawer;->drawColor(Landroid/graphics/Canvas;Lcom/rd/animation/data/Value;)V

    goto :goto_0

    .line 72
    :pswitch_2
    iget-object v1, p0, Lcom/rd/draw/controller/DrawController;->drawer:Lcom/rd/draw/drawer/Drawer;

    iget-object v2, p0, Lcom/rd/draw/controller/DrawController;->value:Lcom/rd/animation/data/Value;

    invoke-virtual {v1, p1, v2}, Lcom/rd/draw/drawer/Drawer;->drawScale(Landroid/graphics/Canvas;Lcom/rd/animation/data/Value;)V

    goto :goto_0

    .line 76
    :pswitch_3
    iget-object v1, p0, Lcom/rd/draw/controller/DrawController;->drawer:Lcom/rd/draw/drawer/Drawer;

    iget-object v2, p0, Lcom/rd/draw/controller/DrawController;->value:Lcom/rd/animation/data/Value;

    invoke-virtual {v1, p1, v2}, Lcom/rd/draw/drawer/Drawer;->drawWorm(Landroid/graphics/Canvas;Lcom/rd/animation/data/Value;)V

    goto :goto_0

    .line 80
    :pswitch_4
    iget-object v1, p0, Lcom/rd/draw/controller/DrawController;->drawer:Lcom/rd/draw/drawer/Drawer;

    iget-object v2, p0, Lcom/rd/draw/controller/DrawController;->value:Lcom/rd/animation/data/Value;

    invoke-virtual {v1, p1, v2}, Lcom/rd/draw/drawer/Drawer;->drawSlide(Landroid/graphics/Canvas;Lcom/rd/animation/data/Value;)V

    goto :goto_0

    .line 84
    :pswitch_5
    iget-object v1, p0, Lcom/rd/draw/controller/DrawController;->drawer:Lcom/rd/draw/drawer/Drawer;

    iget-object v2, p0, Lcom/rd/draw/controller/DrawController;->value:Lcom/rd/animation/data/Value;

    invoke-virtual {v1, p1, v2}, Lcom/rd/draw/drawer/Drawer;->drawFill(Landroid/graphics/Canvas;Lcom/rd/animation/data/Value;)V

    goto :goto_0

    .line 88
    :pswitch_6
    iget-object v1, p0, Lcom/rd/draw/controller/DrawController;->drawer:Lcom/rd/draw/drawer/Drawer;

    iget-object v2, p0, Lcom/rd/draw/controller/DrawController;->value:Lcom/rd/animation/data/Value;

    invoke-virtual {v1, p1, v2}, Lcom/rd/draw/drawer/Drawer;->drawThinWorm(Landroid/graphics/Canvas;Lcom/rd/animation/data/Value;)V

    goto :goto_0

    .line 92
    :pswitch_7
    iget-object v1, p0, Lcom/rd/draw/controller/DrawController;->drawer:Lcom/rd/draw/drawer/Drawer;

    iget-object v2, p0, Lcom/rd/draw/controller/DrawController;->value:Lcom/rd/animation/data/Value;

    invoke-virtual {v1, p1, v2}, Lcom/rd/draw/drawer/Drawer;->drawDrop(Landroid/graphics/Canvas;Lcom/rd/animation/data/Value;)V

    goto :goto_0

    .line 96
    :pswitch_8
    iget-object v1, p0, Lcom/rd/draw/controller/DrawController;->drawer:Lcom/rd/draw/drawer/Drawer;

    iget-object v2, p0, Lcom/rd/draw/controller/DrawController;->value:Lcom/rd/animation/data/Value;

    invoke-virtual {v1, p1, v2}, Lcom/rd/draw/drawer/Drawer;->drawSwap(Landroid/graphics/Canvas;Lcom/rd/animation/data/Value;)V

    goto :goto_0

    .line 62
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 28
    iget-object v4, p0, Lcom/rd/draw/controller/DrawController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v4}, Lcom/rd/draw/data/Indicator;->getCount()I

    move-result v2

    .line 30
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "position":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 31
    iget-object v4, p0, Lcom/rd/draw/controller/DrawController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-static {v4, v3}, Lcom/rd/utils/CoordinatesUtils;->getXCoordinate(Lcom/rd/draw/data/Indicator;I)I

    move-result v0

    .line 32
    .local v0, "coordinateX":I
    iget-object v4, p0, Lcom/rd/draw/controller/DrawController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-static {v4, v3}, Lcom/rd/utils/CoordinatesUtils;->getYCoordinate(Lcom/rd/draw/data/Indicator;I)I

    move-result v1

    .line 33
    .local v1, "coordinateY":I
    invoke-direct {p0, p1, v3, v0, v1}, Lcom/rd/draw/controller/DrawController;->drawIndicator(Landroid/graphics/Canvas;III)V

    .line 30
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 35
    .end local v0    # "coordinateX":I
    .end local v1    # "coordinateY":I
    :cond_0
    return-void
.end method

.method public updateValue(Lcom/rd/animation/data/Value;)V
    .locals 0
    .param p1, "value"    # Lcom/rd/animation/data/Value;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 24
    iput-object p1, p0, Lcom/rd/draw/controller/DrawController;->value:Lcom/rd/animation/data/Value;

    .line 25
    return-void
.end method
