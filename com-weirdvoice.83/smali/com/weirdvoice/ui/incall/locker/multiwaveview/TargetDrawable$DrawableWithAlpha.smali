.class Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable$DrawableWithAlpha;
.super Landroid/graphics/drawable/Drawable;
.source "TargetDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DrawableWithAlpha"
.end annotation


# instance fields
.field private mAlpha:I

.field private mRealDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "realDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 62
    const/16 v0, 0xff

    iput v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable$DrawableWithAlpha;->mAlpha:I

    .line 65
    iput-object p1, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable$DrawableWithAlpha;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    .line 66
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable$DrawableWithAlpha;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable$DrawableWithAlpha;->mAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 72
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable$DrawableWithAlpha;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 73
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable$DrawableWithAlpha;->mAlpha:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable$DrawableWithAlpha;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    return v0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 77
    iput p1, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable$DrawableWithAlpha;->mAlpha:I

    .line 78
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable$DrawableWithAlpha;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 79
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/TargetDrawable$DrawableWithAlpha;->mRealDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 83
    return-void
.end method
