.class public Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;
.super Ljava/lang/Object;
.source "TargetDrawable.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable$DrawableWithAlpha;
    }
.end annotation


# static fields
.field public static final STATE_ACTIVE:[I

.field public static final STATE_FOCUSED:[I

.field public static final STATE_INACTIVE:[I


# instance fields
.field private mAlpha:F

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mEnabled:Z

.field private mPositionX:F

.field private mPositionY:F

.field private final mResourceId:I

.field private mScaleX:F

.field private mScaleY:F

.field private mTranslationX:F

.field private mTranslationY:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 43
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .line 42
    sput-object v0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->STATE_ACTIVE:[I

    .line 45
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    .line 44
    sput-object v0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    .line 47
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    .line 46
    sput-object v0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->STATE_FOCUSED:[I

    .line 48
    return-void

    .line 43
    :array_0
    .array-data 4
        0x101009e
        0x10100a2
    .end array-data

    .line 45
    :array_1
    .array-data 4
        0x101009e
        -0x10100a2
    .end array-data

    .line 47
    :array_2
    .array-data 4
        0x101009e
        -0x10100a2
        0x101009c
    .end array-data
.end method

.method public constructor <init>(Landroid/content/res/Resources;I)V
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "resId"    # I

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->mTranslationX:F

    .line 51
    iput v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->mTranslationY:F

    .line 52
    iput v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->mPositionX:F

    .line 53
    iput v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->mPositionY:F

    .line 54
    iput v1, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->mScaleX:F

    .line 55
    iput v1, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->mScaleY:F

    .line 56
    iput v1, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->mAlpha:F

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->mEnabled:Z

    .line 91
    iput p2, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->mResourceId:I

    .line 92
    invoke-virtual {p0, p1, p2}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->setDrawable(Landroid/content/res/Resources;I)V

    .line 93
    return-void
.end method

.method public constructor <init>(Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;)V
    .locals 2
    .param p1, "other"    # Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->mTranslationX:F

    .line 51
    iput v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->mTranslationY:F

    .line 52
    iput v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->mPositionX:F

    .line 53
    iput v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->mPositionY:F

    .line 54
    iput v1, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->mScaleX:F

    .line 55
    iput v1, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->mScaleY:F

    .line 56
    iput v1, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->mAlpha:F

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->mEnabled:Z

    .line 106
    iget v0, p1, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->mResourceId:I

    iput v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->mResourceId:I

    .line 108
    iget-object v0, p1, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 109
    invoke-direct {p0}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->resizeDrawables()V

    .line 110
    sget-object v0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {p0, v0}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->setState([I)V

    .line 111
    return-void

    .line 108
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resizeDrawables()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 165
    iget-object v6, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v6, v6, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v6, :cond_5

    .line 166
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 167
    .local v5, "possiblesStates":Ljava/util/List;, "Ljava/util/List<[I>;"
    sget-object v6, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->STATE_ACTIVE:[I

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    sget-object v6, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    sget-object v6, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->STATE_FOCUSED:[I

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    iget-object v1, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/StateListDrawable;

    .line 172
    .local v1, "d":Landroid/graphics/drawable/StateListDrawable;
    const/4 v3, 0x0

    .line 173
    .local v3, "maxWidth":I
    const/4 v2, 0x0

    .line 174
    .local v2, "maxHeight":I
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_3

    .line 182
    invoke-virtual {v1, v9, v9, v3, v2}, Landroid/graphics/drawable/StateListDrawable;->setBounds(IIII)V

    .line 183
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_4

    .line 195
    .end local v1    # "d":Landroid/graphics/drawable/StateListDrawable;
    .end local v2    # "maxHeight":I
    .end local v3    # "maxWidth":I
    .end local v5    # "possiblesStates":Ljava/util/List;, "Ljava/util/List<[I>;"
    :cond_2
    :goto_2
    return-void

    .line 174
    .restart local v1    # "d":Landroid/graphics/drawable/StateListDrawable;
    .restart local v2    # "maxHeight":I
    .restart local v3    # "maxWidth":I
    .restart local v5    # "possiblesStates":Ljava/util/List;, "Ljava/util/List<[I>;"
    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    .line 175
    .local v4, "possState":[I
    invoke-virtual {v1, v4}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    .line 176
    invoke-virtual {v1}, Landroid/graphics/drawable/StateListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 177
    .local v0, "childDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 179
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_0

    .line 183
    .end local v0    # "childDrawable":Landroid/graphics/drawable/Drawable;
    .end local v4    # "possState":[I
    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    .line 184
    .restart local v4    # "possState":[I
    invoke-virtual {v1, v4}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    .line 185
    invoke-virtual {v1}, Landroid/graphics/drawable/StateListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 186
    .restart local v0    # "childDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 187
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 188
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_1

    .line 191
    .end local v0    # "childDrawable":Landroid/graphics/drawable/Drawable;
    .end local v1    # "d":Landroid/graphics/drawable/StateListDrawable;
    .end local v2    # "maxHeight":I
    .end local v3    # "maxWidth":I
    .end local v4    # "possState":[I
    .end local v5    # "possiblesStates":Ljava/util/List;, "Ljava/util/List<[I>;"
    :cond_5
    iget-object v6, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_2

    .line 192
    iget-object v6, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 193
    iget-object v7, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    iget-object v8, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    .line 192
    invoke-virtual {v6, v9, v9, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_2
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v4, -0x41000000    # -0.5f

    .line 262
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->mEnabled:Z

    if-nez v0, :cond_1

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 265
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 266
    iget v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->mScaleX:F

    iget v1, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->mScaleY:F

    iget v2, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->mPositionX:F

    iget v3, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->mPositionY:F

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 267
    iget v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->mTranslationX:F

    iget v1, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->mPositionX:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->mTranslationY:F

    iget v2, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->mPositionY:F

    add-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 268
    invoke-virtual {p0}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v4

    invoke-virtual {p0}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v4

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 269
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->mAlpha:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 270
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 271
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method public getAlpha()F
    .locals 1

    .prologue
    .line 234
    iget v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->mAlpha:F

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPositionX()F
    .locals 1

    .prologue
    .line 246
    iget v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->mPositionX:F

    return v0
.end method

.method public getPositionY()F
    .locals 1

    .prologue
    .line 250
    iget v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->mPositionY:F

    return v0
.end method

.method public getResourceId()I
    .locals 1

    .prologue
    .line 279
    iget v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->mResourceId:I

    return v0
.end method

.method public getScaleX()F
    .locals 1

    .prologue
    .line 226
    iget v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->mScaleX:F

    return v0
.end method

.method public getScaleY()F
    .locals 1

    .prologue
    .line 230
    iget v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->mScaleY:F

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 218
    iget v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->mTranslationX:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 222
    iget v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->mTranslationY:F

    return v0
.end method

.method public hasState([I)Z
    .locals 1
    .param p1, "state"    # [I

    .prologue
    .line 121
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v0, :cond_0

    .line 125
    const/4 v0, 0x1

    .line 127
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isActive()Z
    .locals 5

    .prologue
    .line 136
    iget-object v3, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v3, v3, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v3, :cond_0

    .line 137
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    .line 138
    .local v0, "d":Landroid/graphics/drawable/StateListDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/StateListDrawable;->getState()[I

    move-result-object v2

    .line 139
    .local v2, "states":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-lt v1, v3, :cond_1

    .line 145
    .end local v0    # "d":Landroid/graphics/drawable/StateListDrawable;
    .end local v1    # "i":I
    .end local v2    # "states":[I
    :cond_0
    const/4 v3, 0x0

    :goto_1
    return v3

    .line 140
    .restart local v0    # "d":Landroid/graphics/drawable/StateListDrawable;
    .restart local v1    # "i":I
    .restart local v2    # "states":[I
    :cond_1
    aget v3, v2, v1

    const v4, 0x101009c

    if-ne v3, v4, :cond_2

    .line 141
    const/4 v3, 0x1

    goto :goto_1

    .line 139
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->mEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAlpha(F)V
    .locals 0
    .param p1, "alpha"    # F

    .prologue
    .line 214
    iput p1, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->mAlpha:F

    .line 215
    return-void
.end method

.method public setDrawable(Landroid/content/res/Resources;I)V
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "resId"    # I

    .prologue
    const/4 v1, 0x0

    .line 98
    if-nez p2, :cond_1

    move-object v0, v1

    .line 100
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_0
    iput-object v1, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 101
    invoke-direct {p0}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->resizeDrawables()V

    .line 102
    sget-object v1, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {p0, v1}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->setState([I)V

    .line 103
    return-void

    .line 98
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 275
    iput-boolean p1, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->mEnabled:Z

    .line 276
    return-void
.end method

.method public setPositionX(F)V
    .locals 0
    .param p1, "x"    # F

    .prologue
    .line 238
    iput p1, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->mPositionX:F

    .line 239
    return-void
.end method

.method public setPositionY(F)V
    .locals 0
    .param p1, "y"    # F

    .prologue
    .line 242
    iput p1, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->mPositionY:F

    .line 243
    return-void
.end method

.method public setScaleX(F)V
    .locals 0
    .param p1, "x"    # F

    .prologue
    .line 206
    iput p1, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->mScaleX:F

    .line 207
    return-void
.end method

.method public setScaleY(F)V
    .locals 0
    .param p1, "y"    # F

    .prologue
    .line 210
    iput p1, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->mScaleY:F

    .line 211
    return-void
.end method

.method public setState([I)V
    .locals 2
    .param p1, "state"    # [I

    .prologue
    .line 114
    iget-object v1, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v1, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v1, :cond_0

    .line 115
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    .line 116
    .local v0, "d":Landroid/graphics/drawable/StateListDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    .line 118
    .end local v0    # "d":Landroid/graphics/drawable/StateListDrawable;
    :cond_0
    return-void
.end method

.method public setX(F)V
    .locals 0
    .param p1, "x"    # F

    .prologue
    .line 198
    iput p1, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->mTranslationX:F

    .line 199
    return-void
.end method

.method public setY(F)V
    .locals 0
    .param p1, "y"    # F

    .prologue
    .line 202
    iput p1, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;->mTranslationY:F

    .line 203
    return-void
.end method
