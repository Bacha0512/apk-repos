.class public Lcom/rami_bar/fun_call/utiles/CarouselEffectTransformer;
.super Ljava/lang/Object;
.source "CarouselEffectTransformer.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$PageTransformer;


# instance fields
.field private maxTranslateOffsetX:I

.field private viewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/high16 v0, 0x43340000    # 180.0f

    invoke-direct {p0, p1, v0}, Lcom/rami_bar/fun_call/utiles/CarouselEffectTransformer;->dp2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/rami_bar/fun_call/utiles/CarouselEffectTransformer;->maxTranslateOffsetX:I

    .line 14
    return-void
.end method

.method private dp2px(Landroid/content/Context;F)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dipValue"    # F

    .prologue
    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 35
    .local v0, "m":F
    mul-float v1, p2, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method


# virtual methods
.method public transformPage(Landroid/view/View;F)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # F

    .prologue
    .line 17
    iget-object v5, p0, Lcom/rami_bar/fun_call/utiles/CarouselEffectTransformer;->viewPager:Landroid/support/v4/view/ViewPager;

    if-nez v5, :cond_0

    .line 18
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/support/v4/view/ViewPager;

    iput-object v5, p0, Lcom/rami_bar/fun_call/utiles/CarouselEffectTransformer;->viewPager:Landroid/support/v4/view/ViewPager;

    .line 21
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v5

    iget-object v6, p0, Lcom/rami_bar/fun_call/utiles/CarouselEffectTransformer;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v6}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v6

    sub-int v1, v5, v6

    .line 22
    .local v1, "leftInScreen":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int v0, v1, v5

    .line 23
    .local v0, "centerXInViewPager":I
    iget-object v5, p0, Lcom/rami_bar/fun_call/utiles/CarouselEffectTransformer;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5}, Landroid/support/v4/view/ViewPager;->getMeasuredWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int v3, v0, v5

    .line 24
    .local v3, "offsetX":I
    int-to-float v5, v3

    const v6, 0x3ec28f5c    # 0.38f

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/rami_bar/fun_call/utiles/CarouselEffectTransformer;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v6}, Landroid/support/v4/view/ViewPager;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    div-float v2, v5, v6

    .line 25
    .local v2, "offsetRate":F
    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v6

    sub-float v4, v5, v6

    .line 26
    .local v4, "scaleFactor":F
    const/4 v5, 0x0

    cmpl-float v5, v4, v5

    if-lez v5, :cond_1

    .line 27
    invoke-virtual {p1, v4}, Landroid/view/View;->setScaleX(F)V

    .line 28
    invoke-virtual {p1, v4}, Landroid/view/View;->setScaleY(F)V

    .line 29
    iget v5, p0, Lcom/rami_bar/fun_call/utiles/CarouselEffectTransformer;->maxTranslateOffsetX:I

    neg-int v5, v5

    int-to-float v5, v5

    mul-float/2addr v5, v2

    invoke-virtual {p1, v5}, Landroid/view/View;->setTranslationX(F)V

    .line 31
    :cond_1
    return-void
.end method
