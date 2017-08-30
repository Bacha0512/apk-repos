.class public Lcom/rd/animation/controller/AnimationController;
.super Ljava/lang/Object;
.source "AnimationController.java"


# instance fields
.field private indicator:Lcom/rd/draw/data/Indicator;

.field private isInteractive:Z

.field private listener:Lcom/rd/animation/controller/ValueController$UpdateListener;

.field private progress:F

.field private runningAnimation:Lcom/rd/animation/type/BaseAnimation;

.field private valueController:Lcom/rd/animation/controller/ValueController;


# direct methods
.method public constructor <init>(Lcom/rd/draw/data/Indicator;Lcom/rd/animation/controller/ValueController$UpdateListener;)V
    .locals 1
    .param p1, "indicator"    # Lcom/rd/draw/data/Indicator;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "listener"    # Lcom/rd/animation/controller/ValueController$UpdateListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/rd/animation/controller/ValueController;

    invoke-direct {v0, p2}, Lcom/rd/animation/controller/ValueController;-><init>(Lcom/rd/animation/controller/ValueController$UpdateListener;)V

    iput-object v0, p0, Lcom/rd/animation/controller/AnimationController;->valueController:Lcom/rd/animation/controller/ValueController;

    .line 23
    iput-object p2, p0, Lcom/rd/animation/controller/AnimationController;->listener:Lcom/rd/animation/controller/ValueController$UpdateListener;

    .line 24
    iput-object p1, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    .line 25
    return-void
.end method

.method private animate()V
    .locals 3

    .prologue
    .line 46
    iget-object v1, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v1}, Lcom/rd/draw/data/Indicator;->getAnimationType()Lcom/rd/animation/type/AnimationType;

    move-result-object v0

    .line 47
    .local v0, "animationType":Lcom/rd/animation/type/AnimationType;
    sget-object v1, Lcom/rd/animation/controller/AnimationController$1;->$SwitchMap$com$rd$animation$type$AnimationType:[I

    invoke-virtual {v0}, Lcom/rd/animation/type/AnimationType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 84
    :goto_0
    return-void

    .line 49
    :pswitch_0
    iget-object v1, p0, Lcom/rd/animation/controller/AnimationController;->listener:Lcom/rd/animation/controller/ValueController$UpdateListener;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/rd/animation/controller/ValueController$UpdateListener;->onValueUpdated(Lcom/rd/animation/data/Value;)V

    goto :goto_0

    .line 53
    :pswitch_1
    invoke-direct {p0}, Lcom/rd/animation/controller/AnimationController;->colorAnimation()V

    goto :goto_0

    .line 57
    :pswitch_2
    invoke-direct {p0}, Lcom/rd/animation/controller/AnimationController;->scaleAnimation()V

    goto :goto_0

    .line 61
    :pswitch_3
    invoke-direct {p0}, Lcom/rd/animation/controller/AnimationController;->wormAnimation()V

    goto :goto_0

    .line 65
    :pswitch_4
    invoke-direct {p0}, Lcom/rd/animation/controller/AnimationController;->fillAnimation()V

    goto :goto_0

    .line 69
    :pswitch_5
    invoke-direct {p0}, Lcom/rd/animation/controller/AnimationController;->slideAnimation()V

    goto :goto_0

    .line 73
    :pswitch_6
    invoke-direct {p0}, Lcom/rd/animation/controller/AnimationController;->thinWormAnimation()V

    goto :goto_0

    .line 77
    :pswitch_7
    invoke-direct {p0}, Lcom/rd/animation/controller/AnimationController;->dropAnimation()V

    goto :goto_0

    .line 81
    :pswitch_8
    invoke-direct {p0}, Lcom/rd/animation/controller/AnimationController;->swapAnimation()V

    goto :goto_0

    .line 47
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

.method private colorAnimation()V
    .locals 6

    .prologue
    .line 87
    iget-object v5, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v5}, Lcom/rd/draw/data/Indicator;->getSelectedColor()I

    move-result v1

    .line 88
    .local v1, "selectedColor":I
    iget-object v5, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v5}, Lcom/rd/draw/data/Indicator;->getUnselectedColor()I

    move-result v4

    .line 89
    .local v4, "unselectedColor":I
    iget-object v5, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v5}, Lcom/rd/draw/data/Indicator;->getAnimationDuration()J

    move-result-wide v2

    .line 91
    .local v2, "animationDuration":J
    iget-object v5, p0, Lcom/rd/animation/controller/AnimationController;->valueController:Lcom/rd/animation/controller/ValueController;

    .line 92
    invoke-virtual {v5}, Lcom/rd/animation/controller/ValueController;->color()Lcom/rd/animation/type/ColorAnimation;

    move-result-object v5

    .line 93
    invoke-virtual {v5, v4, v1}, Lcom/rd/animation/type/ColorAnimation;->with(II)Lcom/rd/animation/type/ColorAnimation;

    move-result-object v5

    .line 94
    invoke-virtual {v5, v2, v3}, Lcom/rd/animation/type/ColorAnimation;->duration(J)Lcom/rd/animation/type/BaseAnimation;

    move-result-object v0

    .line 96
    .local v0, "animation":Lcom/rd/animation/type/BaseAnimation;
    iget-boolean v5, p0, Lcom/rd/animation/controller/AnimationController;->isInteractive:Z

    if-eqz v5, :cond_0

    .line 97
    iget v5, p0, Lcom/rd/animation/controller/AnimationController;->progress:F

    invoke-virtual {v0, v5}, Lcom/rd/animation/type/BaseAnimation;->progress(F)Lcom/rd/animation/type/BaseAnimation;

    .line 102
    :goto_0
    iput-object v0, p0, Lcom/rd/animation/controller/AnimationController;->runningAnimation:Lcom/rd/animation/type/BaseAnimation;

    .line 103
    return-void

    .line 99
    :cond_0
    invoke-virtual {v0}, Lcom/rd/animation/type/BaseAnimation;->start()V

    goto :goto_0
.end method

.method private dropAnimation()V
    .locals 15

    .prologue
    .line 220
    iget-object v0, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v0}, Lcom/rd/draw/data/Indicator;->isInteractiveAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v0}, Lcom/rd/draw/data/Indicator;->getSelectedPosition()I

    move-result v7

    .line 221
    .local v7, "fromPosition":I
    :goto_0
    iget-object v0, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v0}, Lcom/rd/draw/data/Indicator;->isInteractiveAnimation()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v0}, Lcom/rd/draw/data/Indicator;->getSelectingPosition()I

    move-result v13

    .line 223
    .local v13, "toPosition":I
    :goto_1
    iget-object v0, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-static {v0, v7}, Lcom/rd/utils/CoordinatesUtils;->getCoordinate(Lcom/rd/draw/data/Indicator;I)I

    move-result v1

    .line 224
    .local v1, "widthFrom":I
    iget-object v0, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-static {v0, v13}, Lcom/rd/utils/CoordinatesUtils;->getCoordinate(Lcom/rd/draw/data/Indicator;I)I

    move-result v2

    .line 226
    .local v2, "widthTo":I
    iget-object v0, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v0}, Lcom/rd/draw/data/Indicator;->getPaddingTop()I

    move-result v12

    .line 227
    .local v12, "paddingTop":I
    iget-object v0, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v0}, Lcom/rd/draw/data/Indicator;->getPaddingLeft()I

    move-result v11

    .line 228
    .local v11, "paddingLeft":I
    iget-object v0, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v0}, Lcom/rd/draw/data/Indicator;->getOrientation()Lcom/rd/draw/data/Orientation;

    move-result-object v0

    sget-object v14, Lcom/rd/draw/data/Orientation;->HORIZONTAL:Lcom/rd/draw/data/Orientation;

    if-ne v0, v14, :cond_2

    move v10, v12

    .line 230
    .local v10, "padding":I
    :goto_2
    iget-object v0, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v0}, Lcom/rd/draw/data/Indicator;->getRadius()I

    move-result v5

    .line 231
    .local v5, "radius":I
    mul-int/lit8 v0, v5, 0x3

    add-int v3, v0, v10

    .line 232
    .local v3, "heightFrom":I
    add-int v4, v5, v10

    .line 234
    .local v4, "heightTo":I
    iget-object v0, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v0}, Lcom/rd/draw/data/Indicator;->getAnimationDuration()J

    move-result-wide v8

    .line 236
    .local v8, "animationDuration":J
    iget-object v0, p0, Lcom/rd/animation/controller/AnimationController;->valueController:Lcom/rd/animation/controller/ValueController;

    .line 237
    invoke-virtual {v0}, Lcom/rd/animation/controller/ValueController;->drop()Lcom/rd/animation/type/DropAnimation;

    move-result-object v0

    .line 238
    invoke-virtual {v0, v8, v9}, Lcom/rd/animation/type/DropAnimation;->duration(J)Lcom/rd/animation/type/DropAnimation;

    move-result-object v0

    .line 239
    invoke-virtual/range {v0 .. v5}, Lcom/rd/animation/type/DropAnimation;->with(IIIII)Lcom/rd/animation/type/DropAnimation;

    move-result-object v6

    .line 241
    .local v6, "animation":Lcom/rd/animation/type/BaseAnimation;
    iget-boolean v0, p0, Lcom/rd/animation/controller/AnimationController;->isInteractive:Z

    if-eqz v0, :cond_3

    .line 242
    iget v0, p0, Lcom/rd/animation/controller/AnimationController;->progress:F

    invoke-virtual {v6, v0}, Lcom/rd/animation/type/BaseAnimation;->progress(F)Lcom/rd/animation/type/BaseAnimation;

    .line 247
    :goto_3
    iput-object v6, p0, Lcom/rd/animation/controller/AnimationController;->runningAnimation:Lcom/rd/animation/type/BaseAnimation;

    .line 248
    return-void

    .line 220
    .end local v1    # "widthFrom":I
    .end local v2    # "widthTo":I
    .end local v3    # "heightFrom":I
    .end local v4    # "heightTo":I
    .end local v5    # "radius":I
    .end local v6    # "animation":Lcom/rd/animation/type/BaseAnimation;
    .end local v7    # "fromPosition":I
    .end local v8    # "animationDuration":J
    .end local v10    # "padding":I
    .end local v11    # "paddingLeft":I
    .end local v12    # "paddingTop":I
    .end local v13    # "toPosition":I
    :cond_0
    iget-object v0, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v0}, Lcom/rd/draw/data/Indicator;->getLastSelectedPosition()I

    move-result v7

    goto :goto_0

    .line 221
    .restart local v7    # "fromPosition":I
    :cond_1
    iget-object v0, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v0}, Lcom/rd/draw/data/Indicator;->getSelectedPosition()I

    move-result v13

    goto :goto_1

    .restart local v1    # "widthFrom":I
    .restart local v2    # "widthTo":I
    .restart local v11    # "paddingLeft":I
    .restart local v12    # "paddingTop":I
    .restart local v13    # "toPosition":I
    :cond_2
    move v10, v11

    .line 228
    goto :goto_2

    .line 244
    .restart local v3    # "heightFrom":I
    .restart local v4    # "heightTo":I
    .restart local v5    # "radius":I
    .restart local v6    # "animation":Lcom/rd/animation/type/BaseAnimation;
    .restart local v8    # "animationDuration":J
    .restart local v10    # "padding":I
    :cond_3
    invoke-virtual {v6}, Lcom/rd/animation/type/BaseAnimation;->start()V

    goto :goto_3
.end method

.method private fillAnimation()V
    .locals 8

    .prologue
    .line 174
    iget-object v7, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v7}, Lcom/rd/draw/data/Indicator;->getSelectedColor()I

    move-result v4

    .line 175
    .local v4, "selectedColor":I
    iget-object v7, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v7}, Lcom/rd/draw/data/Indicator;->getUnselectedColor()I

    move-result v6

    .line 176
    .local v6, "unselectedColor":I
    iget-object v7, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v7}, Lcom/rd/draw/data/Indicator;->getRadius()I

    move-result v1

    .line 177
    .local v1, "radiusPx":I
    iget-object v7, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v7}, Lcom/rd/draw/data/Indicator;->getStroke()I

    move-result v5

    .line 178
    .local v5, "strokePx":I
    iget-object v7, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v7}, Lcom/rd/draw/data/Indicator;->getAnimationDuration()J

    move-result-wide v2

    .line 180
    .local v2, "animationDuration":J
    iget-object v7, p0, Lcom/rd/animation/controller/AnimationController;->valueController:Lcom/rd/animation/controller/ValueController;

    .line 181
    invoke-virtual {v7}, Lcom/rd/animation/controller/ValueController;->fill()Lcom/rd/animation/type/FillAnimation;

    move-result-object v7

    .line 182
    invoke-virtual {v7, v6, v4, v1, v5}, Lcom/rd/animation/type/FillAnimation;->with(IIII)Lcom/rd/animation/type/FillAnimation;

    move-result-object v7

    .line 183
    invoke-virtual {v7, v2, v3}, Lcom/rd/animation/type/FillAnimation;->duration(J)Lcom/rd/animation/type/BaseAnimation;

    move-result-object v0

    .line 185
    .local v0, "animation":Lcom/rd/animation/type/BaseAnimation;
    iget-boolean v7, p0, Lcom/rd/animation/controller/AnimationController;->isInteractive:Z

    if-eqz v7, :cond_0

    .line 186
    iget v7, p0, Lcom/rd/animation/controller/AnimationController;->progress:F

    invoke-virtual {v0, v7}, Lcom/rd/animation/type/BaseAnimation;->progress(F)Lcom/rd/animation/type/BaseAnimation;

    .line 191
    :goto_0
    iput-object v0, p0, Lcom/rd/animation/controller/AnimationController;->runningAnimation:Lcom/rd/animation/type/BaseAnimation;

    .line 192
    return-void

    .line 188
    :cond_0
    invoke-virtual {v0}, Lcom/rd/animation/type/BaseAnimation;->start()V

    goto :goto_0
.end method

.method private scaleAnimation()V
    .locals 8

    .prologue
    .line 106
    iget-object v7, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v7}, Lcom/rd/draw/data/Indicator;->getSelectedColor()I

    move-result v5

    .line 107
    .local v5, "selectedColor":I
    iget-object v7, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v7}, Lcom/rd/draw/data/Indicator;->getUnselectedColor()I

    move-result v6

    .line 108
    .local v6, "unselectedColor":I
    iget-object v7, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v7}, Lcom/rd/draw/data/Indicator;->getRadius()I

    move-result v1

    .line 109
    .local v1, "radiusPx":I
    iget-object v7, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v7}, Lcom/rd/draw/data/Indicator;->getScaleFactor()F

    move-result v4

    .line 110
    .local v4, "scaleFactor":F
    iget-object v7, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v7}, Lcom/rd/draw/data/Indicator;->getAnimationDuration()J

    move-result-wide v2

    .line 112
    .local v2, "animationDuration":J
    iget-object v7, p0, Lcom/rd/animation/controller/AnimationController;->valueController:Lcom/rd/animation/controller/ValueController;

    .line 113
    invoke-virtual {v7}, Lcom/rd/animation/controller/ValueController;->scale()Lcom/rd/animation/type/ScaleAnimation;

    move-result-object v7

    .line 114
    invoke-virtual {v7, v6, v5, v1, v4}, Lcom/rd/animation/type/ScaleAnimation;->with(IIIF)Lcom/rd/animation/type/ScaleAnimation;

    move-result-object v7

    .line 115
    invoke-virtual {v7, v2, v3}, Lcom/rd/animation/type/ScaleAnimation;->duration(J)Lcom/rd/animation/type/BaseAnimation;

    move-result-object v0

    .line 117
    .local v0, "animation":Lcom/rd/animation/type/BaseAnimation;
    iget-boolean v7, p0, Lcom/rd/animation/controller/AnimationController;->isInteractive:Z

    if-eqz v7, :cond_0

    .line 118
    iget v7, p0, Lcom/rd/animation/controller/AnimationController;->progress:F

    invoke-virtual {v0, v7}, Lcom/rd/animation/type/BaseAnimation;->progress(F)Lcom/rd/animation/type/BaseAnimation;

    .line 123
    :goto_0
    iput-object v0, p0, Lcom/rd/animation/controller/AnimationController;->runningAnimation:Lcom/rd/animation/type/BaseAnimation;

    .line 124
    return-void

    .line 120
    :cond_0
    invoke-virtual {v0}, Lcom/rd/animation/type/BaseAnimation;->start()V

    goto :goto_0
.end method

.method private slideAnimation()V
    .locals 8

    .prologue
    .line 152
    iget-object v7, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v7}, Lcom/rd/draw/data/Indicator;->isInteractiveAnimation()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v7}, Lcom/rd/draw/data/Indicator;->getSelectedPosition()I

    move-result v4

    .line 153
    .local v4, "fromPosition":I
    :goto_0
    iget-object v7, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v7}, Lcom/rd/draw/data/Indicator;->isInteractiveAnimation()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v7}, Lcom/rd/draw/data/Indicator;->getSelectingPosition()I

    move-result v6

    .line 155
    .local v6, "toPosition":I
    :goto_1
    iget-object v7, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-static {v7, v4}, Lcom/rd/utils/CoordinatesUtils;->getCoordinate(Lcom/rd/draw/data/Indicator;I)I

    move-result v1

    .line 156
    .local v1, "from":I
    iget-object v7, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-static {v7, v6}, Lcom/rd/utils/CoordinatesUtils;->getCoordinate(Lcom/rd/draw/data/Indicator;I)I

    move-result v5

    .line 157
    .local v5, "to":I
    iget-object v7, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v7}, Lcom/rd/draw/data/Indicator;->getAnimationDuration()J

    move-result-wide v2

    .line 159
    .local v2, "animationDuration":J
    iget-object v7, p0, Lcom/rd/animation/controller/AnimationController;->valueController:Lcom/rd/animation/controller/ValueController;

    .line 160
    invoke-virtual {v7}, Lcom/rd/animation/controller/ValueController;->slide()Lcom/rd/animation/type/SlideAnimation;

    move-result-object v7

    .line 161
    invoke-virtual {v7, v1, v5}, Lcom/rd/animation/type/SlideAnimation;->with(II)Lcom/rd/animation/type/SlideAnimation;

    move-result-object v7

    .line 162
    invoke-virtual {v7, v2, v3}, Lcom/rd/animation/type/SlideAnimation;->duration(J)Lcom/rd/animation/type/BaseAnimation;

    move-result-object v0

    .line 164
    .local v0, "animation":Lcom/rd/animation/type/BaseAnimation;
    iget-boolean v7, p0, Lcom/rd/animation/controller/AnimationController;->isInteractive:Z

    if-eqz v7, :cond_2

    .line 165
    iget v7, p0, Lcom/rd/animation/controller/AnimationController;->progress:F

    invoke-virtual {v0, v7}, Lcom/rd/animation/type/BaseAnimation;->progress(F)Lcom/rd/animation/type/BaseAnimation;

    .line 170
    :goto_2
    iput-object v0, p0, Lcom/rd/animation/controller/AnimationController;->runningAnimation:Lcom/rd/animation/type/BaseAnimation;

    .line 171
    return-void

    .line 152
    .end local v0    # "animation":Lcom/rd/animation/type/BaseAnimation;
    .end local v1    # "from":I
    .end local v2    # "animationDuration":J
    .end local v4    # "fromPosition":I
    .end local v5    # "to":I
    .end local v6    # "toPosition":I
    :cond_0
    iget-object v7, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v7}, Lcom/rd/draw/data/Indicator;->getLastSelectedPosition()I

    move-result v4

    goto :goto_0

    .line 153
    .restart local v4    # "fromPosition":I
    :cond_1
    iget-object v7, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v7}, Lcom/rd/draw/data/Indicator;->getSelectedPosition()I

    move-result v6

    goto :goto_1

    .line 167
    .restart local v0    # "animation":Lcom/rd/animation/type/BaseAnimation;
    .restart local v1    # "from":I
    .restart local v2    # "animationDuration":J
    .restart local v5    # "to":I
    .restart local v6    # "toPosition":I
    :cond_2
    invoke-virtual {v0}, Lcom/rd/animation/type/BaseAnimation;->start()V

    goto :goto_2
.end method

.method private swapAnimation()V
    .locals 8

    .prologue
    .line 251
    iget-object v7, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v7}, Lcom/rd/draw/data/Indicator;->isInteractiveAnimation()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v7}, Lcom/rd/draw/data/Indicator;->getSelectedPosition()I

    move-result v4

    .line 252
    .local v4, "fromPosition":I
    :goto_0
    iget-object v7, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v7}, Lcom/rd/draw/data/Indicator;->isInteractiveAnimation()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v7}, Lcom/rd/draw/data/Indicator;->getSelectingPosition()I

    move-result v6

    .line 254
    .local v6, "toPosition":I
    :goto_1
    iget-object v7, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-static {v7, v4}, Lcom/rd/utils/CoordinatesUtils;->getCoordinate(Lcom/rd/draw/data/Indicator;I)I

    move-result v1

    .line 255
    .local v1, "from":I
    iget-object v7, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-static {v7, v6}, Lcom/rd/utils/CoordinatesUtils;->getCoordinate(Lcom/rd/draw/data/Indicator;I)I

    move-result v5

    .line 256
    .local v5, "to":I
    iget-object v7, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v7}, Lcom/rd/draw/data/Indicator;->getAnimationDuration()J

    move-result-wide v2

    .line 258
    .local v2, "animationDuration":J
    iget-object v7, p0, Lcom/rd/animation/controller/AnimationController;->valueController:Lcom/rd/animation/controller/ValueController;

    .line 259
    invoke-virtual {v7}, Lcom/rd/animation/controller/ValueController;->swap()Lcom/rd/animation/type/SwapAnimation;

    move-result-object v7

    .line 260
    invoke-virtual {v7, v1, v5}, Lcom/rd/animation/type/SwapAnimation;->with(II)Lcom/rd/animation/type/SwapAnimation;

    move-result-object v7

    .line 261
    invoke-virtual {v7, v2, v3}, Lcom/rd/animation/type/SwapAnimation;->duration(J)Lcom/rd/animation/type/BaseAnimation;

    move-result-object v0

    .line 263
    .local v0, "animation":Lcom/rd/animation/type/BaseAnimation;
    iget-boolean v7, p0, Lcom/rd/animation/controller/AnimationController;->isInteractive:Z

    if-eqz v7, :cond_2

    .line 264
    iget v7, p0, Lcom/rd/animation/controller/AnimationController;->progress:F

    invoke-virtual {v0, v7}, Lcom/rd/animation/type/BaseAnimation;->progress(F)Lcom/rd/animation/type/BaseAnimation;

    .line 269
    :goto_2
    iput-object v0, p0, Lcom/rd/animation/controller/AnimationController;->runningAnimation:Lcom/rd/animation/type/BaseAnimation;

    .line 270
    return-void

    .line 251
    .end local v0    # "animation":Lcom/rd/animation/type/BaseAnimation;
    .end local v1    # "from":I
    .end local v2    # "animationDuration":J
    .end local v4    # "fromPosition":I
    .end local v5    # "to":I
    .end local v6    # "toPosition":I
    :cond_0
    iget-object v7, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v7}, Lcom/rd/draw/data/Indicator;->getLastSelectedPosition()I

    move-result v4

    goto :goto_0

    .line 252
    .restart local v4    # "fromPosition":I
    :cond_1
    iget-object v7, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v7}, Lcom/rd/draw/data/Indicator;->getSelectedPosition()I

    move-result v6

    goto :goto_1

    .line 266
    .restart local v0    # "animation":Lcom/rd/animation/type/BaseAnimation;
    .restart local v1    # "from":I
    .restart local v2    # "animationDuration":J
    .restart local v5    # "to":I
    .restart local v6    # "toPosition":I
    :cond_2
    invoke-virtual {v0}, Lcom/rd/animation/type/BaseAnimation;->start()V

    goto :goto_2
.end method

.method private thinWormAnimation()V
    .locals 10

    .prologue
    .line 195
    iget-object v9, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v9}, Lcom/rd/draw/data/Indicator;->isInteractiveAnimation()Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v9}, Lcom/rd/draw/data/Indicator;->getSelectedPosition()I

    move-result v4

    .line 196
    .local v4, "fromPosition":I
    :goto_0
    iget-object v9, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v9}, Lcom/rd/draw/data/Indicator;->isInteractiveAnimation()Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v9}, Lcom/rd/draw/data/Indicator;->getSelectingPosition()I

    move-result v8

    .line 198
    .local v8, "toPosition":I
    :goto_1
    iget-object v9, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-static {v9, v4}, Lcom/rd/utils/CoordinatesUtils;->getCoordinate(Lcom/rd/draw/data/Indicator;I)I

    move-result v1

    .line 199
    .local v1, "from":I
    iget-object v9, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-static {v9, v8}, Lcom/rd/utils/CoordinatesUtils;->getCoordinate(Lcom/rd/draw/data/Indicator;I)I

    move-result v7

    .line 200
    .local v7, "to":I
    if-le v8, v4, :cond_2

    const/4 v5, 0x1

    .line 202
    .local v5, "isRightSide":Z
    :goto_2
    iget-object v9, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v9}, Lcom/rd/draw/data/Indicator;->getRadius()I

    move-result v6

    .line 203
    .local v6, "radiusPx":I
    iget-object v9, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v9}, Lcom/rd/draw/data/Indicator;->getAnimationDuration()J

    move-result-wide v2

    .line 205
    .local v2, "animationDuration":J
    iget-object v9, p0, Lcom/rd/animation/controller/AnimationController;->valueController:Lcom/rd/animation/controller/ValueController;

    .line 206
    invoke-virtual {v9}, Lcom/rd/animation/controller/ValueController;->thinWorm()Lcom/rd/animation/type/ThinWormAnimation;

    move-result-object v9

    .line 207
    invoke-virtual {v9, v1, v7, v6, v5}, Lcom/rd/animation/type/ThinWormAnimation;->with(IIIZ)Lcom/rd/animation/type/WormAnimation;

    move-result-object v9

    .line 208
    invoke-virtual {v9, v2, v3}, Lcom/rd/animation/type/WormAnimation;->duration(J)Lcom/rd/animation/type/WormAnimation;

    move-result-object v0

    .line 210
    .local v0, "animation":Lcom/rd/animation/type/BaseAnimation;
    iget-boolean v9, p0, Lcom/rd/animation/controller/AnimationController;->isInteractive:Z

    if-eqz v9, :cond_3

    .line 211
    iget v9, p0, Lcom/rd/animation/controller/AnimationController;->progress:F

    invoke-virtual {v0, v9}, Lcom/rd/animation/type/BaseAnimation;->progress(F)Lcom/rd/animation/type/BaseAnimation;

    .line 216
    :goto_3
    iput-object v0, p0, Lcom/rd/animation/controller/AnimationController;->runningAnimation:Lcom/rd/animation/type/BaseAnimation;

    .line 217
    return-void

    .line 195
    .end local v0    # "animation":Lcom/rd/animation/type/BaseAnimation;
    .end local v1    # "from":I
    .end local v2    # "animationDuration":J
    .end local v4    # "fromPosition":I
    .end local v5    # "isRightSide":Z
    .end local v6    # "radiusPx":I
    .end local v7    # "to":I
    .end local v8    # "toPosition":I
    :cond_0
    iget-object v9, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v9}, Lcom/rd/draw/data/Indicator;->getLastSelectedPosition()I

    move-result v4

    goto :goto_0

    .line 196
    .restart local v4    # "fromPosition":I
    :cond_1
    iget-object v9, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v9}, Lcom/rd/draw/data/Indicator;->getSelectedPosition()I

    move-result v8

    goto :goto_1

    .line 200
    .restart local v1    # "from":I
    .restart local v7    # "to":I
    .restart local v8    # "toPosition":I
    :cond_2
    const/4 v5, 0x0

    goto :goto_2

    .line 213
    .restart local v0    # "animation":Lcom/rd/animation/type/BaseAnimation;
    .restart local v2    # "animationDuration":J
    .restart local v5    # "isRightSide":Z
    .restart local v6    # "radiusPx":I
    :cond_3
    invoke-virtual {v0}, Lcom/rd/animation/type/BaseAnimation;->start()V

    goto :goto_3
.end method

.method private wormAnimation()V
    .locals 10

    .prologue
    .line 127
    iget-object v9, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v9}, Lcom/rd/draw/data/Indicator;->isInteractiveAnimation()Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v9}, Lcom/rd/draw/data/Indicator;->getSelectedPosition()I

    move-result v4

    .line 128
    .local v4, "fromPosition":I
    :goto_0
    iget-object v9, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v9}, Lcom/rd/draw/data/Indicator;->isInteractiveAnimation()Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v9}, Lcom/rd/draw/data/Indicator;->getSelectingPosition()I

    move-result v8

    .line 130
    .local v8, "toPosition":I
    :goto_1
    iget-object v9, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-static {v9, v4}, Lcom/rd/utils/CoordinatesUtils;->getCoordinate(Lcom/rd/draw/data/Indicator;I)I

    move-result v1

    .line 131
    .local v1, "from":I
    iget-object v9, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-static {v9, v8}, Lcom/rd/utils/CoordinatesUtils;->getCoordinate(Lcom/rd/draw/data/Indicator;I)I

    move-result v7

    .line 132
    .local v7, "to":I
    if-le v8, v4, :cond_2

    const/4 v5, 0x1

    .line 134
    .local v5, "isRightSide":Z
    :goto_2
    iget-object v9, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v9}, Lcom/rd/draw/data/Indicator;->getRadius()I

    move-result v6

    .line 135
    .local v6, "radiusPx":I
    iget-object v9, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v9}, Lcom/rd/draw/data/Indicator;->getAnimationDuration()J

    move-result-wide v2

    .line 137
    .local v2, "animationDuration":J
    iget-object v9, p0, Lcom/rd/animation/controller/AnimationController;->valueController:Lcom/rd/animation/controller/ValueController;

    .line 138
    invoke-virtual {v9}, Lcom/rd/animation/controller/ValueController;->worm()Lcom/rd/animation/type/WormAnimation;

    move-result-object v9

    .line 139
    invoke-virtual {v9, v1, v7, v6, v5}, Lcom/rd/animation/type/WormAnimation;->with(IIIZ)Lcom/rd/animation/type/WormAnimation;

    move-result-object v9

    .line 140
    invoke-virtual {v9, v2, v3}, Lcom/rd/animation/type/WormAnimation;->duration(J)Lcom/rd/animation/type/WormAnimation;

    move-result-object v0

    .line 142
    .local v0, "animation":Lcom/rd/animation/type/BaseAnimation;
    iget-boolean v9, p0, Lcom/rd/animation/controller/AnimationController;->isInteractive:Z

    if-eqz v9, :cond_3

    .line 143
    iget v9, p0, Lcom/rd/animation/controller/AnimationController;->progress:F

    invoke-virtual {v0, v9}, Lcom/rd/animation/type/BaseAnimation;->progress(F)Lcom/rd/animation/type/BaseAnimation;

    .line 148
    :goto_3
    iput-object v0, p0, Lcom/rd/animation/controller/AnimationController;->runningAnimation:Lcom/rd/animation/type/BaseAnimation;

    .line 149
    return-void

    .line 127
    .end local v0    # "animation":Lcom/rd/animation/type/BaseAnimation;
    .end local v1    # "from":I
    .end local v2    # "animationDuration":J
    .end local v4    # "fromPosition":I
    .end local v5    # "isRightSide":Z
    .end local v6    # "radiusPx":I
    .end local v7    # "to":I
    .end local v8    # "toPosition":I
    :cond_0
    iget-object v9, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v9}, Lcom/rd/draw/data/Indicator;->getLastSelectedPosition()I

    move-result v4

    goto :goto_0

    .line 128
    .restart local v4    # "fromPosition":I
    :cond_1
    iget-object v9, p0, Lcom/rd/animation/controller/AnimationController;->indicator:Lcom/rd/draw/data/Indicator;

    invoke-virtual {v9}, Lcom/rd/draw/data/Indicator;->getSelectedPosition()I

    move-result v8

    goto :goto_1

    .line 132
    .restart local v1    # "from":I
    .restart local v7    # "to":I
    .restart local v8    # "toPosition":I
    :cond_2
    const/4 v5, 0x0

    goto :goto_2

    .line 145
    .restart local v0    # "animation":Lcom/rd/animation/type/BaseAnimation;
    .restart local v2    # "animationDuration":J
    .restart local v5    # "isRightSide":Z
    .restart local v6    # "radiusPx":I
    :cond_3
    invoke-virtual {v0}, Lcom/rd/animation/type/BaseAnimation;->start()V

    goto :goto_3
.end method


# virtual methods
.method public basic()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rd/animation/controller/AnimationController;->isInteractive:Z

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/rd/animation/controller/AnimationController;->progress:F

    .line 36
    invoke-direct {p0}, Lcom/rd/animation/controller/AnimationController;->animate()V

    .line 37
    return-void
.end method

.method public end()V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/rd/animation/controller/AnimationController;->runningAnimation:Lcom/rd/animation/type/BaseAnimation;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/rd/animation/controller/AnimationController;->runningAnimation:Lcom/rd/animation/type/BaseAnimation;

    invoke-virtual {v0}, Lcom/rd/animation/type/BaseAnimation;->end()V

    .line 43
    :cond_0
    return-void
.end method

.method public interactive(F)V
    .locals 1
    .param p1, "progress"    # F

    .prologue
    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rd/animation/controller/AnimationController;->isInteractive:Z

    .line 29
    iput p1, p0, Lcom/rd/animation/controller/AnimationController;->progress:F

    .line 30
    invoke-direct {p0}, Lcom/rd/animation/controller/AnimationController;->animate()V

    .line 31
    return-void
.end method
