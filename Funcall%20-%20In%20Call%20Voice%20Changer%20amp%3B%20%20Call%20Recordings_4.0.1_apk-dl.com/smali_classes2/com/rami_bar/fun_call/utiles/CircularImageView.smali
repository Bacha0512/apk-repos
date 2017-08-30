.class public Lcom/rami_bar/fun_call/utiles/CircularImageView;
.super Landroid/support/v7/widget/AppCompatImageView;
.source "CircularImageView.java"


# instance fields
.field private borderWidth:I

.field private canvasSize:I

.field private hasBorder:Z

.field private hasSelector:Z

.field private image:Landroid/graphics/Bitmap;

.field private isSelected:Z

.field private paint:Landroid/graphics/Paint;

.field private paintBorder:Landroid/graphics/Paint;

.field private paintSelectorBorder:Landroid/graphics/Paint;

.field private selectorFilter:Landroid/graphics/ColorFilter;

.field private selectorStrokeWidth:I

.field private shader:Landroid/graphics/BitmapShader;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/rami_bar/fun_call/utiles/CircularImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 44
    const v0, 0x7f0100b0

    invoke-direct {p0, p1, p2, v0}, Lcom/rami_bar/fun_call/utiles/CircularImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/rami_bar/fun_call/utiles/CircularImageView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 61
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/rami_bar/fun_call/utiles/CircularImageView;->paint:Landroid/graphics/Paint;

    .line 62
    iget-object v3, p0, Lcom/rami_bar/fun_call/utiles/CircularImageView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 63
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/rami_bar/fun_call/utiles/CircularImageView;->paintBorder:Landroid/graphics/Paint;

    .line 64
    iget-object v3, p0, Lcom/rami_bar/fun_call/utiles/CircularImageView;->paintBorder:Landroid/graphics/Paint;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 65
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/rami_bar/fun_call/utiles/CircularImageView;->paintSelectorBorder:Landroid/graphics/Paint;

    .line 66
    iget-object v3, p0, Lcom/rami_bar/fun_call/utiles/CircularImageView;->paintSelectorBorder:Landroid/graphics/Paint;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 69
    sget-object v3, Lcom/rami_bar/fun_call/R$styleable;->CircularImageView:[I

    invoke-virtual {p1, p2, v3, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 72
    .local v0, "attributes":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/rami_bar/fun_call/utiles/CircularImageView;->hasBorder:Z

    .line 73
    const/4 v3, 0x3

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/rami_bar/fun_call/utiles/CircularImageView;->hasSelector:Z

    .line 76
    iget-boolean v3, p0, Lcom/rami_bar/fun_call/utiles/CircularImageView;->hasBorder:Z

    if-eqz v3, :cond_0

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v7

    add-float/2addr v3, v6

    float-to-int v1, v3

    .line 78
    .local v1, "defaultBorderSize":I
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/rami_bar/fun_call/utiles/CircularImageView;->setBorderWidth(I)V

    .line 79
    const/4 v3, -0x1

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/rami_bar/fun_call/utiles/CircularImageView;->setBorderColor(I)V

    .line 83
    .end local v1    # "defaultBorderSize":I
    :cond_0
    iget-boolean v3, p0, Lcom/rami_bar/fun_call/utiles/CircularImageView;->hasSelector:Z

    if-eqz v3, :cond_1

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v7

    add-float/2addr v3, v6

    float-to-int v2, v3

    .line 85
    .local v2, "defaultSelectorSize":I
    const/4 v3, 0x4

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/rami_bar/fun_call/utiles/CircularImageView;->setSelectorColor(I)V

    .line 86
    const/4 v3, 0x6

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/rami_bar/fun_call/utiles/CircularImageView;->setSelectorStrokeWidth(I)V

    .line 87
    const/4 v3, 0x5

    const v4, -0xffff01

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/rami_bar/fun_call/utiles/CircularImageView;->setSelectorStrokeColor(I)V

    .line 91
    .end local v2    # "defaultSelectorSize":I
    :cond_1
    const/4 v3, 0x7

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 92
    invoke-virtual {p0}, Lcom/rami_bar/fun_call/utiles/CircularImageView;->addShadow()V

    .line 95
    :cond_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 96
    return-void
.end method

.method private measureHeight(I)I
    .locals 4
    .param p1, "measureSpecHeight"    # I

    .prologue
    .line 289
    const/4 v0, 0x0

    .line 290
    .local v0, "result":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 291
    .local v1, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 293
    .local v2, "specSize":I
    const/high16 v3, 0x40000000    # 2.0f

    if-ne v1, v3, :cond_0

    .line 295
    move v0, v2

    .line 304
    :goto_0
    add-int/lit8 v3, v0, 0x2

    return v3

    .line 296
    :cond_0
    const/high16 v3, -0x80000000

    if-ne v1, v3, :cond_1

    .line 298
    move v0, v2

    goto :goto_0

    .line 301
    :cond_1
    iget v0, p0, Lcom/rami_bar/fun_call/utiles/CircularImageView;->canvasSize:I

    goto :goto_0
.end method

.method private measureWidth(I)I
    .locals 4
    .param p1, "measureSpec"    # I

    .prologue
    .line 270
    const/4 v0, 0x0

    .line 271
    .local v0, "result":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 272
    .local v1, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 274
    .local v2, "specSize":I
    const/high16 v3, 0x40000000    # 2.0f

    if-ne v1, v3, :cond_0

    .line 276
    move v0, v2

    .line 285
    :goto_0
    return v0

    .line 277
    :cond_0
    const/high16 v3, -0x80000000

    if-ne v1, v3, :cond_1

    .line 279
    move v0, v2

    goto :goto_0

    .line 282
    :cond_1
    iget v0, p0, Lcom/rami_bar/fun_call/utiles/CircularImageView;->canvasSize:I

    goto :goto_0
.end method


# virtual methods
.method public addShadow()V
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 159
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/rami_bar/fun_call/utiles/CircularImageView;->paintBorder:Landroid/graphics/Paint;

    invoke-virtual {p0, v0, v1}, Lcom/rami_bar/fun_call/utiles/CircularImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 160
    iget-object v0, p0, Lcom/rami_bar/fun_call/utiles/CircularImageView;->paintBorder:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/rami_bar/fun_call/utiles/CircularImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e002c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v4, v1, v4, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 161
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 217
    invoke-virtual {p0}, Lcom/rami_bar/fun_call/utiles/CircularImageView;->isClickable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 218
    iput-boolean v1, p0, Lcom/rami_bar/fun_call/utiles/CircularImageView;->isSelected:Z

    .line 219
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 237
    :goto_0
    return v0

    .line 223
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 236
    :goto_1
    :pswitch_0
    invoke-virtual {p0}, Lcom/rami_bar/fun_call/utiles/CircularImageView;->invalidate()V

    .line 237
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatImageView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 225
    :pswitch_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rami_bar/fun_call/utiles/CircularImageView;->isSelected:Z

    goto :goto_1

    .line 231
    :pswitch_2
    iput-boolean v1, p0, Lcom/rami_bar/fun_call/utiles/CircularImageView;->isSelected:Z

    goto :goto_1

    .line 223
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v5, 0x0

    .line 314
    if-nez p1, :cond_0

    .line 315
    const/4 v0, 0x0

    .line 326
    .end local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v0

    .line 316
    .restart local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    instance-of v2, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_1

    .line 317
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 321
    .restart local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 322
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 323
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    invoke-virtual {p1, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 324
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public getImageBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/rami_bar/fun_call/utiles/CircularImageView;->image:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 256
    invoke-super {p0}, Landroid/support/v7/widget/AppCompatImageView;->invalidate()V

    .line 257
    invoke-virtual {p0}, Lcom/rami_bar/fun_call/utiles/CircularImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/rami_bar/fun_call/utiles/CircularImageView;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/rami_bar/fun_call/utiles/CircularImageView;->image:Landroid/graphics/Bitmap;

    .line 258
    iget-object v0, p0, Lcom/rami_bar/fun_call/utiles/CircularImageView;->shader:Landroid/graphics/BitmapShader;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/rami_bar/fun_call/utiles/CircularImageView;->canvasSize:I

    if-lez v0, :cond_1

    .line 259
    :cond_0
    invoke-virtual {p0}, Lcom/rami_bar/fun_call/utiles/CircularImageView;->refreshBitmapShader()V

    .line 260
    :cond_1
    return-void
.end method

.method public invalidate(IIII)V
    .locals 1
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    .line 248
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/AppCompatImageView;->invalidate(IIII)V

    .line 249
    invoke-virtual {p0}, Lcom/rami_bar/fun_call/utiles/CircularImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/rami_bar/fun_call/utiles/CircularImageView;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/rami_bar/fun_call/utiles/CircularImageView;->image:Landroid/graphics/Bitmap;

    .line 250
    iget-object v0, p0, Lcom/rami_bar/fun_call/utiles/CircularImageView;->shader:Landroid/graphics/BitmapShader;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/rami_bar/fun_call/utiles/CircularImageView;->canvasSize:I

    if-lez v0, :cond_1

    .line 251
    :cond_0
    invoke-virtual {p0}, Lcom/rami_bar/fun_call/utiles/CircularImageView;->refreshBitmapShader()V

    .line 252
    :cond_1
    return-void
.end method

.method public invalidate(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "dirty"    # Landroid/graphics/Rect;

    .prologue
    .line 241
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatImageView;->invalidate(Landroid/graphics/Rect;)V

    .line 242
    invoke-virtual {p0}, Lcom/rami_bar/fun_call/utiles/CircularImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/rami_bar/fun_call/utiles/CircularImageView;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/rami_bar/fun_call/utiles/CircularImageView;->image:Landroid/graphics/Bitmap;

    .line 243
    iget-object v0, p0, Lcom/rami_bar/fun_call/utiles/CircularImageView;->shader:Landroid/graphics/BitmapShader;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/rami_bar/fun_call/utiles/CircularImageView;->canvasSize:I

    if-lez v0, :cond_1

    .line 244
    :cond_0
    invoke-virtual {p0}, Lcom/rami_bar/fun_call/utiles/CircularImageView;->refreshBitmapShader()V

    .line 245
    :cond_1
    return-void
.end method

.method public isSelected()Z
    .locals 1

    .prologue
    .line 349
    iget-boolean v0, p0, Lcom/rami_bar/fun_call/utiles/CircularImageView;->isSelected:Z

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v5, 0x0

    const/high16 v7, 0x40800000    # 4.0f

    .line 167
    iget-object v3, p0, Lcom/rami_bar/fun_call/utiles/CircularImageView;->image:Landroid/graphics/Bitmap;

    if-nez v3, :cond_1

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    iget-object v3, p0, Lcom/rami_bar/fun_call/utiles/CircularImageView;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/rami_bar/fun_call/utiles/CircularImageView;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-eqz v3, :cond_0

    .line 175
    iget v1, p0, Lcom/rami_bar/fun_call/utiles/CircularImageView;->canvasSize:I

    .line 177
    .local v1, "oldCanvasSize":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    iput v3, p0, Lcom/rami_bar/fun_call/utiles/CircularImageView;->canvasSize:I

    .line 178
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/rami_bar/fun_call/utiles/CircularImageView;->canvasSize:I

    if-ge v3, v4, :cond_2

    .line 179
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    iput v3, p0, Lcom/rami_bar/fun_call/utiles/CircularImageView;->canvasSize:I

    .line 182
    :cond_2
    iget v3, p0, Lcom/rami_bar/fun_call/utiles/CircularImageView;->canvasSize:I

    if-eq v1, v3, :cond_3

    .line 183
    invoke-virtual {p0}, Lcom/rami_bar/fun_call/utiles/CircularImageView;->refreshBitmapShader()V

    .line 186
    :cond_3
    iget-object v3, p0, Lcom/rami_bar/fun_call/utiles/CircularImageView;->paint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/rami_bar/fun_call/utiles/CircularImageView;->shader:Landroid/graphics/BitmapShader;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 189
    const/4 v2, 0x0

    .line 192
    .local v2, "outerWidth":I
    iget v3, p0, Lcom/rami_bar/fun_call/utiles/CircularImageView;->canvasSize:I

    div-int/lit8 v0, v3, 0x2

    .line 195
    .local v0, "center":I
    iget-boolean v3, p0, Lcom/rami_bar/fun_call/utiles/CircularImageView;->hasSelector:Z

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/rami_bar/fun_call/utiles/CircularImageView;->isSelected:Z

    if-eqz v3, :cond_4

    .line 196
    iget v2, p0, Lcom/rami_bar/fun_call/utiles/CircularImageView;->selectorStrokeWidth:I

    .line 197
    iget v3, p0, Lcom/rami_bar/fun_call/utiles/CircularImageView;->canvasSize:I

    mul-int/lit8 v4, v2, 0x2

    sub-int/2addr v3, v4

    div-int/lit8 v0, v3, 0x2

    .line 199
    iget-object v3, p0, Lcom/rami_bar/fun_call/utiles/CircularImageView;->paint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/rami_bar/fun_call/utiles/CircularImageView;->selectorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 200
    add-int v3, v0, v2

    int-to-float v3, v3

    add-int v4, v0, v2

    int-to-float v4, v4

    iget v5, p0, Lcom/rami_bar/fun_call/utiles/CircularImageView;->canvasSize:I

    mul-int/lit8 v6, v2, 0x2

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v2

    int-to-float v5, v5

    sub-float/2addr v5, v7

    iget-object v6, p0, Lcom/rami_bar/fun_call/utiles/CircularImageView;->paintSelectorBorder:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 211
    :goto_1
    add-int v3, v0, v2

    int-to-float v3, v3

    add-int v4, v0, v2

    int-to-float v4, v4

    iget v5, p0, Lcom/rami_bar/fun_call/utiles/CircularImageView;->canvasSize:I

    mul-int/lit8 v6, v2, 0x2

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr v5, v7

    iget-object v6, p0, Lcom/rami_bar/fun_call/utiles/CircularImageView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 201
    :cond_4
    iget-boolean v3, p0, Lcom/rami_bar/fun_call/utiles/CircularImageView;->hasBorder:Z

    if-eqz v3, :cond_5

    .line 202
    iget v2, p0, Lcom/rami_bar/fun_call/utiles/CircularImageView;->borderWidth:I

    .line 203
    iget v3, p0, Lcom/rami_bar/fun_call/utiles/CircularImageView;->canvasSize:I

    mul-int/lit8 v4, v2, 0x2

    sub-int/2addr v3, v4

    div-int/lit8 v0, v3, 0x2

    .line 205
    iget-object v3, p0, Lcom/rami_bar/fun_call/utiles/CircularImageView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 206
    add-int v3, v0, v2

    int-to-float v3, v3

    add-int v4, v0, v2

    int-to-float v4, v4

    iget v5, p0, Lcom/rami_bar/fun_call/utiles/CircularImageView;->canvasSize:I

    mul-int/lit8 v6, v2, 0x2

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v2

    int-to-float v5, v5

    sub-float/2addr v5, v7

    iget-object v6, p0, Lcom/rami_bar/fun_call/utiles/CircularImageView;->paintBorder:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 208
    :cond_5
    iget-object v3, p0, Lcom/rami_bar/fun_call/utiles/CircularImageView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 264
    invoke-direct {p0, p1}, Lcom/rami_bar/fun_call/utiles/CircularImageView;->measureWidth(I)I

    move-result v1

    .line 265
    .local v1, "width":I
    invoke-direct {p0, p2}, Lcom/rami_bar/fun_call/utiles/CircularImageView;->measureHeight(I)I

    move-result v0

    .line 266
    .local v0, "height":I
    invoke-virtual {p0, v1, v0}, Lcom/rami_bar/fun_call/utiles/CircularImageView;->setMeasuredDimension(II)V

    .line 267
    return-void
.end method

.method public refreshBitmapShader()V
    .locals 6

    .prologue
    .line 334
    iget-object v1, p0, Lcom/rami_bar/fun_call/utiles/CircularImageView;->image:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 342
    :goto_0
    return-void

    .line 338
    :cond_0
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapShader;

    iget-object v2, p0, Lcom/rami_bar/fun_call/utiles/CircularImageView;->image:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/rami_bar/fun_call/utiles/CircularImageView;->canvasSize:I

    iget v4, p0, Lcom/rami_bar/fun_call/utiles/CircularImageView;->canvasSize:I

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, v2, v3, v4}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v1, p0, Lcom/rami_bar/fun_call/utiles/CircularImageView;->shader:Landroid/graphics/BitmapShader;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 339
    :catch_0
    move-exception v0

    .line 340
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setBorderColor(I)V
    .locals 1
    .param p1, "borderColor"    # I

    .prologue
    .line 115
    iget-object v0, p0, Lcom/rami_bar/fun_call/utiles/CircularImageView;->paintBorder:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/rami_bar/fun_call/utiles/CircularImageView;->paintBorder:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 117
    :cond_0
    invoke-virtual {p0}, Lcom/rami_bar/fun_call/utiles/CircularImageView;->invalidate()V

    .line 118
    return-void
.end method

.method public setBorderWidth(I)V
    .locals 0
    .param p1, "borderWidth"    # I

    .prologue
    .line 104
    iput p1, p0, Lcom/rami_bar/fun_call/utiles/CircularImageView;->borderWidth:I

    .line 105
    invoke-virtual {p0}, Lcom/rami_bar/fun_call/utiles/CircularImageView;->requestLayout()V

    .line 106
    invoke-virtual {p0}, Lcom/rami_bar/fun_call/utiles/CircularImageView;->invalidate()V

    .line 107
    return-void
.end method

.method public setSelectorColor(I)V
    .locals 2
    .param p1, "selectorColor"    # I

    .prologue
    .line 127
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, p1, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/rami_bar/fun_call/utiles/CircularImageView;->selectorFilter:Landroid/graphics/ColorFilter;

    .line 128
    invoke-virtual {p0}, Lcom/rami_bar/fun_call/utiles/CircularImageView;->invalidate()V

    .line 129
    return-void
.end method

.method public setSelectorStrokeColor(I)V
    .locals 1
    .param p1, "selectorStrokeColor"    # I

    .prologue
    .line 150
    iget-object v0, p0, Lcom/rami_bar/fun_call/utiles/CircularImageView;->paintSelectorBorder:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/rami_bar/fun_call/utiles/CircularImageView;->paintSelectorBorder:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 152
    :cond_0
    invoke-virtual {p0}, Lcom/rami_bar/fun_call/utiles/CircularImageView;->invalidate()V

    .line 153
    return-void
.end method

.method public setSelectorStrokeWidth(I)V
    .locals 0
    .param p1, "selectorStrokeWidth"    # I

    .prologue
    .line 138
    iput p1, p0, Lcom/rami_bar/fun_call/utiles/CircularImageView;->selectorStrokeWidth:I

    .line 139
    invoke-virtual {p0}, Lcom/rami_bar/fun_call/utiles/CircularImageView;->requestLayout()V

    .line 140
    invoke-virtual {p0}, Lcom/rami_bar/fun_call/utiles/CircularImageView;->invalidate()V

    .line 141
    return-void
.end method
