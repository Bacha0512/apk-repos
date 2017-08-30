.class public Lcom/rd/utils/CoordinatesUtils;
.super Ljava/lang/Object;
.source "CoordinatesUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCoordinate(Lcom/rd/draw/data/Indicator;I)I
    .locals 2
    .param p0, "indicator"    # Lcom/rd/draw/data/Indicator;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "position"    # I

    .prologue
    .line 14
    if-nez p0, :cond_0

    .line 15
    const/4 v0, 0x0

    .line 21
    :goto_0
    return v0

    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/rd/draw/data/Indicator;->getOrientation()Lcom/rd/draw/data/Orientation;

    move-result-object v0

    sget-object v1, Lcom/rd/draw/data/Orientation;->HORIZONTAL:Lcom/rd/draw/data/Orientation;

    if-ne v0, v1, :cond_1

    .line 19
    invoke-static {p0, p1}, Lcom/rd/utils/CoordinatesUtils;->getXCoordinate(Lcom/rd/draw/data/Indicator;I)I

    move-result v0

    goto :goto_0

    .line 21
    :cond_1
    invoke-static {p0, p1}, Lcom/rd/utils/CoordinatesUtils;->getYCoordinate(Lcom/rd/draw/data/Indicator;I)I

    move-result v0

    goto :goto_0
.end method

.method private static getHorizontalCoordinate(Lcom/rd/draw/data/Indicator;I)I
    .locals 9
    .param p0, "indicator"    # Lcom/rd/draw/data/Indicator;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "position"    # I

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/rd/draw/data/Indicator;->getCount()I

    move-result v2

    .line 60
    .local v2, "count":I
    invoke-virtual {p0}, Lcom/rd/draw/data/Indicator;->getRadius()I

    move-result v5

    .line 61
    .local v5, "radius":I
    invoke-virtual {p0}, Lcom/rd/draw/data/Indicator;->getStroke()I

    move-result v6

    .line 62
    .local v6, "stroke":I
    invoke-virtual {p0}, Lcom/rd/draw/data/Indicator;->getPadding()I

    move-result v4

    .line 64
    .local v4, "padding":I
    const/4 v0, 0x0

    .line 65
    .local v0, "coordinate":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 66
    div-int/lit8 v7, v6, 0x2

    add-int/2addr v7, v5

    add-int/2addr v0, v7

    .line 68
    if-ne p1, v3, :cond_0

    move v1, v0

    .line 79
    .end local v0    # "coordinate":I
    .local v1, "coordinate":I
    :goto_1
    return v1

    .line 72
    .end local v1    # "coordinate":I
    .restart local v0    # "coordinate":I
    :cond_0
    add-int v7, v5, v4

    div-int/lit8 v8, v6, 0x2

    add-int/2addr v7, v8

    add-int/2addr v0, v7

    .line 65
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 75
    :cond_1
    invoke-virtual {p0}, Lcom/rd/draw/data/Indicator;->getAnimationType()Lcom/rd/animation/type/AnimationType;

    move-result-object v7

    sget-object v8, Lcom/rd/animation/type/AnimationType;->DROP:Lcom/rd/animation/type/AnimationType;

    if-ne v7, v8, :cond_2

    .line 76
    mul-int/lit8 v7, v5, 0x2

    add-int/2addr v0, v7

    :cond_2
    move v1, v0

    .line 79
    .end local v0    # "coordinate":I
    .restart local v1    # "coordinate":I
    goto :goto_1
.end method

.method public static getProgress(Lcom/rd/draw/data/Indicator;IFZ)Landroid/util/Pair;
    .locals 12
    .param p0, "indicator"    # Lcom/rd/draw/data/Indicator;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "isRtl"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/rd/draw/data/Indicator;",
            "IFZ)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 96
    invoke-virtual {p0}, Lcom/rd/draw/data/Indicator;->getCount()I

    move-result v0

    .line 97
    .local v0, "count":I
    invoke-virtual {p0}, Lcom/rd/draw/data/Indicator;->getSelectedPosition()I

    move-result v3

    .line 99
    .local v3, "selectedPosition":I
    if-eqz p3, :cond_0

    .line 100
    add-int/lit8 v9, v0, -0x1

    sub-int p1, v9, p1

    .line 104
    :cond_0
    if-gez p1, :cond_5

    .line 105
    const/4 p1, 0x0

    .line 111
    :cond_1
    :goto_0
    if-le p1, v3, :cond_6

    move v2, v7

    .line 114
    .local v2, "isRightOverScrolled":Z
    :goto_1
    if-eqz p3, :cond_8

    .line 115
    add-int/lit8 v9, p1, -0x1

    if-ge v9, v3, :cond_7

    move v1, v7

    .line 120
    .local v1, "isLeftOverScrolled":Z
    :goto_2
    if-nez v2, :cond_2

    if-eqz v1, :cond_3

    .line 121
    :cond_2
    move v3, p1

    .line 122
    invoke-virtual {p0, v3}, Lcom/rd/draw/data/Indicator;->setSelectedPosition(I)V

    .line 125
    :cond_3
    if-ne v3, p1, :cond_a

    cmpl-float v9, p2, v10

    if-eqz v9, :cond_a

    move v6, v7

    .line 129
    .local v6, "slideToRightSide":Z
    :goto_3
    if-eqz v6, :cond_c

    .line 130
    if-eqz p3, :cond_b

    add-int/lit8 v4, p1, -0x1

    .line 131
    .local v4, "selectingPosition":I
    :goto_4
    move v5, p2

    .line 138
    .local v5, "selectingProgress":F
    :goto_5
    cmpl-float v7, v5, v11

    if-lez v7, :cond_d

    .line 139
    const/high16 v5, 0x3f800000    # 1.0f

    .line 145
    :cond_4
    :goto_6
    new-instance v7, Landroid/util/Pair;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v7

    .line 107
    .end local v1    # "isLeftOverScrolled":Z
    .end local v2    # "isRightOverScrolled":Z
    .end local v4    # "selectingPosition":I
    .end local v5    # "selectingProgress":F
    .end local v6    # "slideToRightSide":Z
    :cond_5
    add-int/lit8 v9, v0, -0x1

    if-le p1, v9, :cond_1

    .line 108
    add-int/lit8 p1, v0, -0x1

    goto :goto_0

    :cond_6
    move v2, v8

    .line 111
    goto :goto_1

    .restart local v2    # "isRightOverScrolled":Z
    :cond_7
    move v1, v8

    .line 115
    goto :goto_2

    .line 117
    :cond_8
    add-int/lit8 v9, p1, 0x1

    if-ge v9, v3, :cond_9

    move v1, v7

    .restart local v1    # "isLeftOverScrolled":Z
    :goto_7
    goto :goto_2

    .end local v1    # "isLeftOverScrolled":Z
    :cond_9
    move v1, v8

    goto :goto_7

    .restart local v1    # "isLeftOverScrolled":Z
    :cond_a
    move v6, v8

    .line 125
    goto :goto_3

    .line 130
    .restart local v6    # "slideToRightSide":Z
    :cond_b
    add-int/lit8 v4, p1, 0x1

    goto :goto_4

    .line 134
    :cond_c
    move v4, p1

    .line 135
    .restart local v4    # "selectingPosition":I
    sub-float v5, v11, p2

    .restart local v5    # "selectingProgress":F
    goto :goto_5

    .line 141
    :cond_d
    cmpg-float v7, v5, v10

    if-gez v7, :cond_4

    .line 142
    const/4 v5, 0x0

    goto :goto_6
.end method

.method private static getVerticalCoordinate(Lcom/rd/draw/data/Indicator;)I
    .locals 4
    .param p0, "indicator"    # Lcom/rd/draw/data/Indicator;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/rd/draw/data/Indicator;->getRadius()I

    move-result v1

    .line 86
    .local v1, "radius":I
    invoke-virtual {p0}, Lcom/rd/draw/data/Indicator;->getAnimationType()Lcom/rd/animation/type/AnimationType;

    move-result-object v2

    sget-object v3, Lcom/rd/animation/type/AnimationType;->DROP:Lcom/rd/animation/type/AnimationType;

    if-ne v2, v3, :cond_0

    .line 87
    mul-int/lit8 v0, v1, 0x3

    .line 92
    .local v0, "coordinate":I
    :goto_0
    return v0

    .line 89
    .end local v0    # "coordinate":I
    :cond_0
    move v0, v1

    .restart local v0    # "coordinate":I
    goto :goto_0
.end method

.method public static getXCoordinate(Lcom/rd/draw/data/Indicator;I)I
    .locals 3
    .param p0, "indicator"    # Lcom/rd/draw/data/Indicator;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "position"    # I

    .prologue
    .line 27
    if-nez p0, :cond_0

    .line 28
    const/4 v0, 0x0

    .line 39
    :goto_0
    return v0

    .line 32
    :cond_0
    invoke-virtual {p0}, Lcom/rd/draw/data/Indicator;->getOrientation()Lcom/rd/draw/data/Orientation;

    move-result-object v1

    sget-object v2, Lcom/rd/draw/data/Orientation;->HORIZONTAL:Lcom/rd/draw/data/Orientation;

    if-ne v1, v2, :cond_1

    .line 33
    invoke-static {p0, p1}, Lcom/rd/utils/CoordinatesUtils;->getHorizontalCoordinate(Lcom/rd/draw/data/Indicator;I)I

    move-result v0

    .line 38
    .local v0, "coordinate":I
    :goto_1
    invoke-virtual {p0}, Lcom/rd/draw/data/Indicator;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    .line 39
    goto :goto_0

    .line 35
    .end local v0    # "coordinate":I
    :cond_1
    invoke-static {p0}, Lcom/rd/utils/CoordinatesUtils;->getVerticalCoordinate(Lcom/rd/draw/data/Indicator;)I

    move-result v0

    .restart local v0    # "coordinate":I
    goto :goto_1
.end method

.method public static getYCoordinate(Lcom/rd/draw/data/Indicator;I)I
    .locals 3
    .param p0, "indicator"    # Lcom/rd/draw/data/Indicator;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "position"    # I

    .prologue
    .line 43
    if-nez p0, :cond_0

    .line 44
    const/4 v0, 0x0

    .line 55
    :goto_0
    return v0

    .line 48
    :cond_0
    invoke-virtual {p0}, Lcom/rd/draw/data/Indicator;->getOrientation()Lcom/rd/draw/data/Orientation;

    move-result-object v1

    sget-object v2, Lcom/rd/draw/data/Orientation;->HORIZONTAL:Lcom/rd/draw/data/Orientation;

    if-ne v1, v2, :cond_1

    .line 49
    invoke-static {p0}, Lcom/rd/utils/CoordinatesUtils;->getVerticalCoordinate(Lcom/rd/draw/data/Indicator;)I

    move-result v0

    .line 54
    .local v0, "coordinate":I
    :goto_1
    invoke-virtual {p0}, Lcom/rd/draw/data/Indicator;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    .line 55
    goto :goto_0

    .line 51
    .end local v0    # "coordinate":I
    :cond_1
    invoke-static {p0, p1}, Lcom/rd/utils/CoordinatesUtils;->getHorizontalCoordinate(Lcom/rd/draw/data/Indicator;I)I

    move-result v0

    .restart local v0    # "coordinate":I
    goto :goto_1
.end method
