.class public Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab;
.super Landroid/view/ViewGroup;
.source "SlidingTab.java"

# interfaces
.implements Lcom/weirdvoice/ui/incall/locker/IOnLeftRightChoice$IOnLeftRightProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;
    }
.end annotation


# static fields
.field private static final TARGET_ZONE:F = 0.6666667f

.field private static final THIS_FILE:Ljava/lang/String; = "SlidingTab"

.field private static final VIBRATE_LONG:J = 0x28L

.field private static final VIBRATE_SHORT:J = 0x1eL


# instance fields
.field private currentSlider:Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;

.field private density:F

.field private leftSlider:Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;

.field private mVibrator:Landroid/os/Vibrator;

.field private onTriggerListener:Lcom/weirdvoice/ui/incall/locker/IOnLeftRightChoice;

.field private rightSlider:Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;

.field private targetZone:F

.field private tracking:Z

.field private triggered:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 272
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 273
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 279
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab;->triggered:Z

    .line 281
    invoke-virtual {p0}, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab;->density:F

    .line 282
    new-instance v0, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;

    const v2, 0x7f0202bd

    const v3, 0x7f0203f0

    const v4, 0x7f0203e0

    const v5, 0x7f0203e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;-><init>(Landroid/view/ViewGroup;IIII)V

    iput-object v0, p0, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab;->leftSlider:Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;

    .line 283
    new-instance v0, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;

    const v2, 0x7f0202be

    const v3, 0x7f0203f1

    const v4, 0x7f0203e4

    const v5, 0x7f0203ed

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;-><init>(Landroid/view/ViewGroup;IIII)V

    iput-object v0, p0, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab;->rightSlider:Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;

    .line 284
    return-void
.end method

.method private dispatchTriggerEvent(I)V
    .locals 2
    .param p1, "whichHandle"    # I

    .prologue
    .line 522
    const-wide/16 v0, 0x28

    invoke-direct {p0, v0, v1}, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab;->vibrate(J)V

    .line 523
    const-string v0, "SlidingTab"

    const-string v1, "We take the call...."

    invoke-static {v0, v1}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab;->onTriggerListener:Lcom/weirdvoice/ui/incall/locker/IOnLeftRightChoice;

    if-eqz v0, :cond_0

    .line 525
    const-string v0, "SlidingTab"

    const-string v1, "We transmit to the parent...."

    invoke-static {v0, v1}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab;->onTriggerListener:Lcom/weirdvoice/ui/incall/locker/IOnLeftRightChoice;

    invoke-interface {v0, p1}, Lcom/weirdvoice/ui/incall/locker/IOnLeftRightChoice;->onLeftRightChoice(I)V

    .line 528
    :cond_0
    return-void
.end method

.method private moveHandle(FF)V
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 413
    iget-object v3, p0, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab;->currentSlider:Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;

    # getter for: Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;->tab:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;->access$0(Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;)Landroid/widget/ImageView;

    move-result-object v2

    .line 414
    .local v2, "handle":Landroid/view/View;
    iget-object v3, p0, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab;->currentSlider:Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;

    # getter for: Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;->text:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;->access$6(Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;)Landroid/widget/TextView;

    move-result-object v0

    .line 416
    .local v0, "content":Landroid/view/View;
    float-to-int v3, p1

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int v1, v3, v4

    .line 417
    .local v1, "deltaX":I
    invoke-virtual {v2, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 418
    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 420
    invoke-virtual {p0}, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab;->invalidate()V

    .line 421
    return-void
.end method

.method private declared-synchronized vibrate(J)V
    .locals 3
    .param p1, "duration"    # J

    .prologue
    .line 507
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    .line 508
    invoke-virtual {p0}, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab;->mVibrator:Landroid/os/Vibrator;

    .line 510
    :cond_0
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0, p1, p2}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 511
    monitor-exit p0

    return-void

    .line 507
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public applyTargetTitles(I)V
    .locals 2
    .param p1, "resArrayTitles"    # I

    .prologue
    .line 546
    invoke-virtual {p0}, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/weirdvoice/ui/incall/locker/LeftRightChooserUtils;->loadTargetsDescriptions(Landroid/content/Context;I)Ljava/util/ArrayList;

    move-result-object v0

    .line 550
    .local v0, "strings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab;->setRightHintText(Ljava/lang/String;)V

    .line 551
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab;->setLeftHintText(Ljava/lang/String;)V

    .line 552
    return-void
.end method

.method public getLayoutingHeight()I
    .locals 1

    .prologue
    .line 583
    const/4 v0, -0x2

    return v0
.end method

.method public getLayoutingWidth()I
    .locals 1

    .prologue
    .line 591
    const/4 v0, -0x1

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 312
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 313
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    .line 314
    .local v6, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    .line 315
    .local v7, "y":F
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 317
    .local v1, "frame":Landroid/graphics/Rect;
    iget-object v10, p0, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab;->leftSlider:Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;

    # getter for: Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;->tab:Landroid/widget/ImageView;
    invoke-static {v10}, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;->access$0(Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;)Landroid/widget/ImageView;

    move-result-object v2

    .line 318
    .local v2, "leftHandle":Landroid/view/View;
    invoke-virtual {v2, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 319
    float-to-int v10, v6

    float-to-int v11, v7

    invoke-virtual {v1, v10, v11}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    .line 321
    .local v3, "leftHit":Z
    iget-object v10, p0, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab;->rightSlider:Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;

    # getter for: Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;->tab:Landroid/widget/ImageView;
    invoke-static {v10}, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;->access$0(Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;)Landroid/widget/ImageView;

    move-result-object v4

    .line 322
    .local v4, "rightHandle":Landroid/view/View;
    invoke-virtual {v4, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 323
    float-to-int v10, v6

    float-to-int v11, v7

    invoke-virtual {v1, v10, v11}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    .line 325
    .local v5, "rightHit":Z
    iget-boolean v10, p0, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab;->tracking:Z

    if-nez v10, :cond_0

    if-nez v3, :cond_0

    if-nez v5, :cond_0

    .line 346
    :goto_0
    return v8

    .line 329
    :cond_0
    if-nez v0, :cond_1

    .line 330
    iput-boolean v9, p0, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab;->tracking:Z

    .line 331
    iput-boolean v8, p0, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab;->triggered:Z

    .line 332
    const-wide/16 v10, 0x1e

    invoke-direct {p0, v10, v11}, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab;->vibrate(J)V

    .line 333
    if-eqz v3, :cond_2

    .line 334
    iget-object v8, p0, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab;->leftSlider:Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;

    iput-object v8, p0, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab;->currentSlider:Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;

    .line 335
    const v8, 0x3f2aaaab

    iput v8, p0, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab;->targetZone:F

    .line 336
    iget-object v8, p0, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab;->rightSlider:Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;

    # invokes: Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;->hide()V
    invoke-static {v8}, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;->access$1(Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;)V

    .line 342
    :goto_1
    iget-object v8, p0, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab;->currentSlider:Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;

    # invokes: Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;->setState(I)V
    invoke-static {v8, v9}, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;->access$2(Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;I)V

    .line 343
    iget-object v8, p0, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab;->currentSlider:Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;

    # invokes: Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;->showTarget()V
    invoke-static {v8}, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;->access$3(Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;)V

    :cond_1
    move v8, v9

    .line 346
    goto :goto_0

    .line 338
    :cond_2
    iget-object v8, p0, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab;->rightSlider:Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;

    iput-object v8, p0, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab;->currentSlider:Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;

    .line 339
    const v8, 0x3eaaaaaa

    iput v8, p0, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab;->targetZone:F

    .line 340
    iget-object v8, p0, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab;->leftSlider:Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;

    # invokes: Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;->hide()V
    invoke-static {v8}, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;->access$1(Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;)V

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 399
    if-nez p1, :cond_0

    .line 403
    :goto_0
    return-void

    .line 402
    :cond_0
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab;->recomputeLayout(IIII)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v6, 0x3f000000    # 0.5f

    .line 289
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 302
    .local v3, "widthSpecSize":I
    iget v4, p0, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab;->density:F

    iget-object v5, p0, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab;->leftSlider:Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;

    invoke-virtual {v5}, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;->getTabHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    add-float/2addr v4, v6

    float-to-int v1, v4

    .line 303
    .local v1, "leftTabHeight":I
    iget v4, p0, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab;->density:F

    iget-object v5, p0, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab;->rightSlider:Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;

    invoke-virtual {v5}, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;->getTabHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    add-float/2addr v4, v6

    float-to-int v2, v4

    .line 305
    .local v2, "rightTabHeight":I
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 307
    .local v0, "height":I
    invoke-virtual {p0, v3, v0}, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab;->setMeasuredDimension(II)V

    .line 308
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 352
    iget-boolean v9, p0, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab;->tracking:Z

    if-eqz v9, :cond_0

    .line 353
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 354
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 355
    .local v5, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 356
    .local v6, "y":F
    iget-object v9, p0, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab;->currentSlider:Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;

    # getter for: Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;->tab:Landroid/widget/ImageView;
    invoke-static {v9}, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;->access$0(Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;)Landroid/widget/ImageView;

    move-result-object v1

    .line 357
    .local v1, "handle":Landroid/view/View;
    packed-switch v0, :pswitch_data_0

    .line 386
    .end local v0    # "action":I
    .end local v1    # "handle":Landroid/view/View;
    .end local v5    # "x":F
    .end local v6    # "y":F
    :cond_0
    :goto_0
    iget-boolean v9, p0, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab;->tracking:Z

    if-nez v9, :cond_7

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    if-nez v9, :cond_7

    :goto_1
    return v8

    .line 359
    .restart local v0    # "action":I
    .restart local v1    # "handle":Landroid/view/View;
    .restart local v5    # "x":F
    .restart local v6    # "y":F
    :pswitch_0
    invoke-direct {p0, v5, v6}, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab;->moveHandle(FF)V

    .line 360
    move v2, v5

    .line 361
    .local v2, "position":F
    iget v9, p0, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab;->targetZone:F

    invoke-virtual {p0}, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab;->getWidth()I

    move-result v10

    int-to-float v10, v10

    mul-float v3, v9, v10

    .line 362
    .local v3, "target":F
    iget-object v9, p0, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab;->currentSlider:Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;

    iget-object v10, p0, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab;->leftSlider:Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    cmpl-float v9, v2, v3

    if-lez v9, :cond_3

    move v4, v7

    .line 364
    .local v4, "targetZoneReached":Z
    :goto_2
    iget-boolean v9, p0, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab;->triggered:Z

    if-nez v9, :cond_1

    if-eqz v4, :cond_1

    .line 365
    iput-boolean v7, p0, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab;->triggered:Z

    .line 366
    iput-boolean v8, p0, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab;->tracking:Z

    .line 367
    iget-object v9, p0, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab;->currentSlider:Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;

    const/4 v10, 0x2

    # invokes: Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;->setState(I)V
    invoke-static {v9, v10}, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;->access$2(Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;I)V

    .line 368
    iget-object v9, p0, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab;->currentSlider:Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;

    iget-object v10, p0, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab;->leftSlider:Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    move v9, v8

    :goto_3
    invoke-direct {p0, v9}, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab;->dispatchTriggerEvent(I)V

    .line 371
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v9

    int-to-float v9, v9

    cmpg-float v9, v6, v9

    if-gtz v9, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v9

    int-to-float v9, v9

    cmpl-float v9, v6, v9

    if-gez v9, :cond_0

    .line 377
    .end local v2    # "position":F
    .end local v3    # "target":F
    .end local v4    # "targetZoneReached":Z
    :cond_2
    :pswitch_1
    iput-boolean v8, p0, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab;->tracking:Z

    .line 378
    iput-boolean v8, p0, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab;->triggered:Z

    .line 379
    invoke-virtual {p0}, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab;->resetView()V

    goto :goto_0

    .restart local v2    # "position":F
    .restart local v3    # "target":F
    :cond_3
    move v4, v8

    .line 362
    goto :goto_2

    :cond_4
    cmpg-float v9, v2, v3

    if-gez v9, :cond_5

    move v4, v7

    goto :goto_2

    :cond_5
    move v4, v8

    goto :goto_2

    .restart local v4    # "targetZoneReached":Z
    :cond_6
    move v9, v7

    .line 368
    goto :goto_3

    .end local v0    # "action":I
    .end local v1    # "handle":Landroid/view/View;
    .end local v2    # "position":F
    .end local v3    # "target":F
    .end local v4    # "targetZoneReached":Z
    .end local v5    # "x":F
    .end local v6    # "y":F
    :cond_7
    move v8, v7

    .line 386
    goto :goto_1

    .line 357
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public recomputeLayout(IIII)V
    .locals 6
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    .line 407
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab;->leftSlider:Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;

    const/4 v5, 0x0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    # invokes: Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;->layout(IIIII)V
    invoke-static/range {v0 .. v5}, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;->access$5(Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;IIIII)V

    .line 408
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab;->rightSlider:Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;

    const/4 v5, 0x1

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    # invokes: Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;->layout(IIIII)V
    invoke-static/range {v0 .. v5}, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;->access$5(Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;IIIII)V

    .line 409
    invoke-virtual {p0}, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab;->invalidate()V

    .line 410
    return-void
.end method

.method public resetView()V
    .locals 4

    .prologue
    .line 392
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab;->leftSlider:Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;

    # invokes: Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;->reset()V
    invoke-static {v0}, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;->access$4(Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;)V

    .line 393
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab;->rightSlider:Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;

    # invokes: Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;->reset()V
    invoke-static {v0}, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;->access$4(Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;)V

    .line 394
    invoke-virtual {p0}, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab;->getTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab;->getRight()I

    move-result v2

    invoke-virtual {p0}, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab;->getBottom()I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab;->recomputeLayout(IIII)V

    .line 395
    return-void
.end method

.method public setLeftHintText(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 452
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab;->leftSlider:Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;

    # invokes: Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;->setHintText(I)V
    invoke-static {v0, p1}, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;->access$9(Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;I)V

    .line 453
    return-void
.end method

.method public setLeftHintText(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 461
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab;->leftSlider:Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;

    # invokes: Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;->setHintText(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;->access$10(Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;Ljava/lang/String;)V

    .line 462
    return-void
.end method

.method public setLeftTabDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "iconD"    # Landroid/graphics/drawable/Drawable;
    .param p2, "targetD"    # Landroid/graphics/drawable/Drawable;
    .param p3, "barD"    # Landroid/graphics/drawable/Drawable;
    .param p4, "tabD"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 443
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab;->leftSlider:Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;

    # invokes: Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;->setDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    invoke-static {v0, p1, p2, p3, p4}, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;->access$8(Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 444
    return-void
.end method

.method public setLeftTabResources(IIII)V
    .locals 1
    .param p1, "iconId"    # I
    .param p2, "targetId"    # I
    .param p3, "barId"    # I
    .param p4, "tabId"    # I

    .prologue
    .line 439
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab;->leftSlider:Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;

    # invokes: Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;->setResources(IIII)V
    invoke-static {v0, p1, p2, p3, p4}, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;->access$7(Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;IIII)V

    .line 440
    return-void
.end method

.method public setOnLeftRightListener(Lcom/weirdvoice/ui/incall/locker/IOnLeftRightChoice;)V
    .locals 0
    .param p1, "l"    # Lcom/weirdvoice/ui/incall/locker/IOnLeftRightChoice;

    .prologue
    .line 538
    iput-object p1, p0, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab;->onTriggerListener:Lcom/weirdvoice/ui/incall/locker/IOnLeftRightChoice;

    .line 539
    return-void
.end method

.method public setRightHintText(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 492
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab;->rightSlider:Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;

    # invokes: Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;->setHintText(I)V
    invoke-static {v0, p1}, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;->access$9(Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;I)V

    .line 493
    return-void
.end method

.method public setRightHintText(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 500
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab;->rightSlider:Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;

    # invokes: Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;->setHintText(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;->access$10(Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;Ljava/lang/String;)V

    .line 501
    return-void
.end method

.method public setRightTabDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "iconD"    # Landroid/graphics/drawable/Drawable;
    .param p2, "targetD"    # Landroid/graphics/drawable/Drawable;
    .param p3, "barD"    # Landroid/graphics/drawable/Drawable;
    .param p4, "tabD"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 484
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab;->rightSlider:Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;

    # invokes: Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;->setDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    invoke-static {v0, p1, p2, p3, p4}, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;->access$8(Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 485
    return-void
.end method

.method public setRightTabResources(IIII)V
    .locals 1
    .param p1, "iconId"    # I
    .param p2, "targetId"    # I
    .param p3, "barId"    # I
    .param p4, "tabId"    # I

    .prologue
    .line 480
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab;->rightSlider:Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;

    # invokes: Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;->setResources(IIII)V
    invoke-static {v0, p1, p2, p3, p4}, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;->access$7(Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab$Slider;IIII)V

    .line 481
    return-void
.end method

.method public setTypeOfLock(Lcom/weirdvoice/ui/incall/locker/IOnLeftRightChoice$TypeOfLock;)V
    .locals 5
    .param p1, "lock"    # Lcom/weirdvoice/ui/incall/locker/IOnLeftRightChoice$TypeOfLock;

    .prologue
    .line 560
    sget-object v0, Lcom/weirdvoice/ui/incall/locker/IOnLeftRightChoice$TypeOfLock;->CALL:Lcom/weirdvoice/ui/incall/locker/IOnLeftRightChoice$TypeOfLock;

    if-ne p1, v0, :cond_0

    .line 563
    invoke-virtual {p0}, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0202bd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 564
    invoke-virtual {p0}, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0203f0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 565
    invoke-virtual {p0}, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0203e0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 566
    invoke-virtual {p0}, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0203e8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 563
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab;->setLeftTabDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 569
    invoke-virtual {p0}, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0202be

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 570
    invoke-virtual {p0}, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0203f1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 571
    invoke-virtual {p0}, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0203e4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 572
    invoke-virtual {p0}, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0203ed

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 568
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab;->setRightTabDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 574
    const v0, 0x7f0e0007

    invoke-virtual {p0, v0}, Lcom/weirdvoice/ui/incall/locker/slidingtab/SlidingTab;->applyTargetTitles(I)V

    .line 576
    :cond_0
    return-void
.end method
