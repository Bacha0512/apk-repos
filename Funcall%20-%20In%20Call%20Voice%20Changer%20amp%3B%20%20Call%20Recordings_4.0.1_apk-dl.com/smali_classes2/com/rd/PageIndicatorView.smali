.class public Lcom/rd/PageIndicatorView;
.super Landroid/view/View;
.source "PageIndicatorView.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;
.implements Lcom/rd/IndicatorManager$Listener;


# instance fields
.field private manager:Lcom/rd/IndicatorManager;

.field private setObserver:Landroid/database/DataSetObserver;

.field private viewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/rd/PageIndicatorView;->init(Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    invoke-direct {p0, p2}, Lcom/rd/PageIndicatorView;->init(Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    invoke-direct {p0, p2}, Lcom/rd/PageIndicatorView;->init(Landroid/util/AttributeSet;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 50
    invoke-direct {p0, p2}, Lcom/rd/PageIndicatorView;->init(Landroid/util/AttributeSet;)V

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/rd/PageIndicatorView;)V
    .locals 0
    .param p0, "x0"    # Lcom/rd/PageIndicatorView;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/rd/PageIndicatorView;->updateCount()V

    return-void
.end method

.method private findViewPager()V
    .locals 4

    .prologue
    .line 722
    invoke-virtual {p0}, Lcom/rd/PageIndicatorView;->getContext()Landroid/content/Context;

    move-result-object v3

    instance-of v3, v3, Landroid/app/Activity;

    if-eqz v3, :cond_0

    .line 723
    invoke-virtual {p0}, Lcom/rd/PageIndicatorView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 724
    .local v0, "activity":Landroid/app/Activity;
    iget-object v3, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v3}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/rd/draw/data/Indicator;->getViewPagerId()I

    move-result v2

    .line 726
    .local v2, "viewPagerId":I
    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 727
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_0

    instance-of v3, v1, Landroid/support/v4/view/ViewPager;

    if-eqz v3, :cond_0

    .line 728
    check-cast v1, Landroid/support/v4/view/ViewPager;

    .end local v1    # "view":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/rd/PageIndicatorView;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 731
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v2    # "viewPagerId":I
    :cond_0
    return-void
.end method

.method private getViewPagerCount()I
    .locals 1

    .prologue
    .line 662
    iget-object v0, p0, Lcom/rd/PageIndicatorView;->viewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rd/PageIndicatorView;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 663
    iget-object v0, p0, Lcom/rd/PageIndicatorView;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    .line 665
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v0}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rd/draw/data/Indicator;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 576
    invoke-direct {p0}, Lcom/rd/PageIndicatorView;->setupId()V

    .line 577
    invoke-direct {p0, p1}, Lcom/rd/PageIndicatorView;->initIndicatorManager(Landroid/util/AttributeSet;)V

    .line 578
    return-void
.end method

.method private initIndicatorManager(Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 587
    new-instance v1, Lcom/rd/IndicatorManager;

    invoke-direct {v1, p0}, Lcom/rd/IndicatorManager;-><init>(Lcom/rd/IndicatorManager$Listener;)V

    iput-object v1, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    .line 588
    iget-object v1, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v1}, Lcom/rd/IndicatorManager;->drawer()Lcom/rd/draw/DrawManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/rd/PageIndicatorView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/rd/draw/DrawManager;->initAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 590
    iget-object v1, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v1}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v0

    .line 591
    .local v0, "indicator":Lcom/rd/draw/data/Indicator;
    invoke-virtual {p0}, Lcom/rd/PageIndicatorView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/rd/draw/data/Indicator;->setPaddingLeft(I)V

    .line 592
    invoke-virtual {p0}, Lcom/rd/PageIndicatorView;->getPaddingTop()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/rd/draw/data/Indicator;->setPaddingTop(I)V

    .line 593
    invoke-virtual {p0}, Lcom/rd/PageIndicatorView;->getPaddingRight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/rd/draw/data/Indicator;->setPaddingRight(I)V

    .line 594
    invoke-virtual {p0}, Lcom/rd/PageIndicatorView;->getPaddingBottom()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/rd/draw/data/Indicator;->setPaddingBottom(I)V

    .line 595
    return-void
.end method

.method private isRtl()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 703
    sget-object v2, Lcom/rd/PageIndicatorView$2;->$SwitchMap$com$rd$draw$data$RtlMode:[I

    iget-object v3, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v3}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/rd/draw/data/Indicator;->getRtlMode()Lcom/rd/draw/data/RtlMode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/rd/draw/data/RtlMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 714
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    move v0, v1

    .line 708
    goto :goto_0

    .line 711
    :pswitch_2
    invoke-virtual {p0}, Lcom/rd/PageIndicatorView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v2}, Landroid/support/v4/text/TextUtilsCompat;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v2

    if-eq v2, v0, :cond_0

    move v0, v1

    goto :goto_0

    .line 703
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private isViewMeasured()Z
    .locals 1

    .prologue
    .line 718
    invoke-virtual {p0}, Lcom/rd/PageIndicatorView;->getMeasuredHeight()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/rd/PageIndicatorView;->getMeasuredWidth()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private registerSetObserver()V
    .locals 3

    .prologue
    .line 598
    iget-object v1, p0, Lcom/rd/PageIndicatorView;->setObserver:Landroid/database/DataSetObserver;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/rd/PageIndicatorView;->viewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/rd/PageIndicatorView;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    if-nez v1, :cond_1

    .line 614
    :cond_0
    :goto_0
    return-void

    .line 602
    :cond_1
    new-instance v1, Lcom/rd/PageIndicatorView$1;

    invoke-direct {v1, p0}, Lcom/rd/PageIndicatorView$1;-><init>(Lcom/rd/PageIndicatorView;)V

    iput-object v1, p0, Lcom/rd/PageIndicatorView;->setObserver:Landroid/database/DataSetObserver;

    .line 610
    :try_start_0
    iget-object v1, p0, Lcom/rd/PageIndicatorView;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/rd/PageIndicatorView;->setObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 611
    :catch_0
    move-exception v0

    .line 612
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method

.method private selectIndicator(I)V
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 670
    iget-object v5, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v5}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v3

    .line 671
    .local v3, "indicator":Lcom/rd/draw/data/Indicator;
    invoke-virtual {v3}, Lcom/rd/draw/data/Indicator;->getCount()I

    move-result v2

    .line 673
    .local v2, "count":I
    invoke-virtual {v3}, Lcom/rd/draw/data/Indicator;->getAnimationType()Lcom/rd/animation/type/AnimationType;

    move-result-object v0

    .line 674
    .local v0, "animationType":Lcom/rd/animation/type/AnimationType;
    invoke-virtual {v3}, Lcom/rd/draw/data/Indicator;->isInteractiveAnimation()Z

    move-result v4

    .line 675
    .local v4, "interactiveAnimation":Z
    invoke-direct {p0}, Lcom/rd/PageIndicatorView;->isViewMeasured()Z

    move-result v5

    if-eqz v5, :cond_3

    if-eqz v4, :cond_0

    sget-object v5, Lcom/rd/animation/type/AnimationType;->NONE:Lcom/rd/animation/type/AnimationType;

    if-ne v0, v5, :cond_3

    :cond_0
    const/4 v1, 0x1

    .line 677
    .local v1, "canSelectIndicator":Z
    :goto_0
    if-eqz v1, :cond_2

    .line 678
    invoke-direct {p0}, Lcom/rd/PageIndicatorView;->isRtl()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 679
    add-int/lit8 v5, v2, -0x1

    sub-int p1, v5, p1

    .line 682
    :cond_1
    invoke-virtual {p0, p1}, Lcom/rd/PageIndicatorView;->setSelection(I)V

    .line 684
    :cond_2
    return-void

    .line 675
    .end local v1    # "canSelectIndicator":Z
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private selectInteractiveIndicator(IF)V
    .locals 8
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F

    .prologue
    .line 687
    iget-object v7, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v7}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v2

    .line 688
    .local v2, "indicator":Lcom/rd/draw/data/Indicator;
    invoke-virtual {v2}, Lcom/rd/draw/data/Indicator;->getAnimationType()Lcom/rd/animation/type/AnimationType;

    move-result-object v0

    .line 689
    .local v0, "animationType":Lcom/rd/animation/type/AnimationType;
    invoke-virtual {v2}, Lcom/rd/draw/data/Indicator;->isInteractiveAnimation()Z

    move-result v3

    .line 690
    .local v3, "interactiveAnimation":Z
    invoke-direct {p0}, Lcom/rd/PageIndicatorView;->isViewMeasured()Z

    move-result v7

    if-eqz v7, :cond_0

    if-eqz v3, :cond_0

    sget-object v7, Lcom/rd/animation/type/AnimationType;->NONE:Lcom/rd/animation/type/AnimationType;

    if-eq v0, v7, :cond_0

    const/4 v1, 0x1

    .line 692
    .local v1, "canSelectIndicator":Z
    :goto_0
    if-nez v1, :cond_1

    .line 700
    :goto_1
    return-void

    .line 690
    .end local v1    # "canSelectIndicator":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 696
    .restart local v1    # "canSelectIndicator":Z
    :cond_1
    invoke-direct {p0}, Lcom/rd/PageIndicatorView;->isRtl()Z

    move-result v7

    invoke-static {v2, p1, p2, v7}, Lcom/rd/utils/CoordinatesUtils;->getProgress(Lcom/rd/draw/data/Indicator;IFZ)Landroid/util/Pair;

    move-result-object v4

    .line 697
    .local v4, "progressPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Float;>;"
    iget-object v7, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 698
    .local v5, "selectingPosition":I
    iget-object v7, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v6

    .line 699
    .local v6, "selectingProgress":F
    invoke-virtual {p0, v5, v6}, Lcom/rd/PageIndicatorView;->setProgress(IF)V

    goto :goto_1
.end method

.method private setupId()V
    .locals 2

    .prologue
    .line 581
    invoke-virtual {p0}, Lcom/rd/PageIndicatorView;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 582
    invoke-static {}, Lcom/rd/utils/IdUtils;->generateViewId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/rd/PageIndicatorView;->setId(I)V

    .line 584
    :cond_0
    return-void
.end method

.method private unRegisterSetObserver()V
    .locals 3

    .prologue
    .line 617
    iget-object v1, p0, Lcom/rd/PageIndicatorView;->setObserver:Landroid/database/DataSetObserver;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/rd/PageIndicatorView;->viewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/rd/PageIndicatorView;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    if-nez v1, :cond_1

    .line 627
    :cond_0
    :goto_0
    return-void

    .line 622
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/rd/PageIndicatorView;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/rd/PageIndicatorView;->setObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 623
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/rd/PageIndicatorView;->setObserver:Landroid/database/DataSetObserver;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 624
    :catch_0
    move-exception v0

    .line 625
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method

.method private updateCount()V
    .locals 3

    .prologue
    .line 630
    iget-object v2, p0, Lcom/rd/PageIndicatorView;->viewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/rd/PageIndicatorView;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    if-nez v2, :cond_1

    .line 643
    :cond_0
    :goto_0
    return-void

    .line 634
    :cond_1
    iget-object v2, p0, Lcom/rd/PageIndicatorView;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    .line 635
    .local v1, "newCount":I
    iget-object v2, p0, Lcom/rd/PageIndicatorView;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 637
    .local v0, "currItem":I
    iget-object v2, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v2}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/rd/draw/data/Indicator;->setSelectedPosition(I)V

    .line 638
    iget-object v2, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v2}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/rd/draw/data/Indicator;->setSelectingPosition(I)V

    .line 639
    iget-object v2, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v2}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/rd/draw/data/Indicator;->setLastSelectedPosition(I)V

    .line 640
    iget-object v2, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v2}, Lcom/rd/IndicatorManager;->animate()Lcom/rd/animation/AnimationManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/rd/animation/AnimationManager;->end()V

    .line 642
    invoke-virtual {p0, v1}, Lcom/rd/PageIndicatorView;->setCount(I)V

    goto :goto_0
.end method

.method private updateVisibility()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    .line 646
    iget-object v2, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v2}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/rd/draw/data/Indicator;->isAutoVisibility()Z

    move-result v2

    if-nez v2, :cond_1

    .line 659
    :cond_0
    :goto_0
    return-void

    .line 650
    :cond_1
    iget-object v2, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v2}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/rd/draw/data/Indicator;->getCount()I

    move-result v0

    .line 651
    .local v0, "count":I
    invoke-virtual {p0}, Lcom/rd/PageIndicatorView;->getVisibility()I

    move-result v1

    .line 653
    .local v1, "visibility":I
    if-eqz v1, :cond_2

    if-le v0, v3, :cond_2

    .line 654
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/rd/PageIndicatorView;->setVisibility(I)V

    goto :goto_0

    .line 656
    :cond_2
    if-eq v1, v4, :cond_0

    if-gt v0, v3, :cond_0

    .line 657
    invoke-virtual {p0, v4}, Lcom/rd/PageIndicatorView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public getAnimationDuration()J
    .locals 2

    .prologue
    .line 395
    iget-object v0, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v0}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rd/draw/data/Indicator;->getAnimationDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v0}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rd/draw/data/Indicator;->getCount()I

    move-result v0

    return v0
.end method

.method public getPadding()I
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v0}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rd/draw/data/Indicator;->getPadding()I

    move-result v0

    return v0
.end method

.method public getRadius()I
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v0}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rd/draw/data/Indicator;->getRadius()I

    move-result v0

    return v0
.end method

.method public getScaleFactor()F
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v0}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rd/draw/data/Indicator;->getScaleFactor()F

    move-result v0

    return v0
.end method

.method public getSelectedColor()I
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v0}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rd/draw/data/Indicator;->getSelectedColor()I

    move-result v0

    return v0
.end method

.method public getSelection()I
    .locals 1

    .prologue
    .line 535
    iget-object v0, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v0}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rd/draw/data/Indicator;->getSelectedPosition()I

    move-result v0

    return v0
.end method

.method public getStrokeWidth()I
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v0}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rd/draw/data/Indicator;->getStroke()I

    move-result v0

    return v0
.end method

.method public getUnselectedColor()I
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v0}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rd/draw/data/Indicator;->getUnselectedColor()I

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 55
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 56
    invoke-direct {p0}, Lcom/rd/PageIndicatorView;->findViewPager()V

    .line 57
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/rd/PageIndicatorView;->unRegisterSetObserver()V

    .line 62
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 63
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v0}, Lcom/rd/IndicatorManager;->drawer()Lcom/rd/draw/DrawManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/rd/draw/DrawManager;->draw(Landroid/graphics/Canvas;)V

    .line 100
    return-void
.end method

.method public onIndicatorUpdated()V
    .locals 0

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/rd/PageIndicatorView;->invalidate()V

    .line 105
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 93
    iget-object v1, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v1}, Lcom/rd/IndicatorManager;->drawer()Lcom/rd/draw/DrawManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/rd/draw/DrawManager;->measureViewSize(II)Landroid/util/Pair;

    move-result-object v0

    .line 94
    .local v0, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v2, v1}, Lcom/rd/PageIndicatorView;->setMeasuredDimension(II)V

    .line 95
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 118
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 109
    invoke-direct {p0, p1, p2}, Lcom/rd/PageIndicatorView;->selectInteractiveIndicator(IF)V

    .line 110
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/rd/PageIndicatorView;->selectIndicator(I)V

    .line 115
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 78
    instance-of v2, p1, Lcom/rd/draw/data/PositionSavedState;

    if-eqz v2, :cond_0

    .line 79
    iget-object v2, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v2}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v0

    .local v0, "indicator":Lcom/rd/draw/data/Indicator;
    move-object v1, p1

    .line 80
    check-cast v1, Lcom/rd/draw/data/PositionSavedState;

    .line 81
    .local v1, "positionSavedState":Lcom/rd/draw/data/PositionSavedState;
    invoke-virtual {v1}, Lcom/rd/draw/data/PositionSavedState;->getSelectedPosition()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/rd/draw/data/Indicator;->setSelectedPosition(I)V

    .line 82
    invoke-virtual {v1}, Lcom/rd/draw/data/PositionSavedState;->getSelectingPosition()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/rd/draw/data/Indicator;->setSelectingPosition(I)V

    .line 83
    invoke-virtual {v1}, Lcom/rd/draw/data/PositionSavedState;->getLastSelectedPosition()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/rd/draw/data/Indicator;->setLastSelectedPosition(I)V

    .line 84
    invoke-virtual {v1}, Lcom/rd/draw/data/PositionSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 89
    .end local v0    # "indicator":Lcom/rd/draw/data/Indicator;
    .end local v1    # "positionSavedState":Lcom/rd/draw/data/PositionSavedState;
    :goto_0
    return-void

    .line 87
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 67
    iget-object v2, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v2}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v0

    .line 68
    .local v0, "indicator":Lcom/rd/draw/data/Indicator;
    new-instance v1, Lcom/rd/draw/data/PositionSavedState;

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/rd/draw/data/PositionSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 69
    .local v1, "positionSavedState":Lcom/rd/draw/data/PositionSavedState;
    invoke-virtual {v0}, Lcom/rd/draw/data/Indicator;->getSelectedPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/rd/draw/data/PositionSavedState;->setSelectedPosition(I)V

    .line 70
    invoke-virtual {v0}, Lcom/rd/draw/data/Indicator;->getSelectingPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/rd/draw/data/PositionSavedState;->setSelectingPosition(I)V

    .line 71
    invoke-virtual {v0}, Lcom/rd/draw/data/Indicator;->getLastSelectedPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/rd/draw/data/PositionSavedState;->setLastSelectedPosition(I)V

    .line 73
    return-object v1
.end method

.method public releaseViewPager()V
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lcom/rd/PageIndicatorView;->viewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/rd/PageIndicatorView;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->removeOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 459
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/rd/PageIndicatorView;->viewPager:Landroid/support/v4/view/ViewPager;

    .line 461
    :cond_0
    return-void
.end method

.method public setAnimationDuration(J)V
    .locals 1
    .param p1, "duration"    # J

    .prologue
    .line 387
    iget-object v0, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v0}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/rd/draw/data/Indicator;->setAnimationDuration(J)V

    .line 388
    return-void
.end method

.method public setAnimationType(Lcom/rd/animation/type/AnimationType;)V
    .locals 2
    .param p1, "type"    # Lcom/rd/animation/type/AnimationType;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 405
    iget-object v0, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/rd/IndicatorManager;->onValueUpdated(Lcom/rd/animation/data/Value;)V

    .line 407
    if-eqz p1, :cond_0

    .line 408
    iget-object v0, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v0}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/rd/draw/data/Indicator;->setAnimationType(Lcom/rd/animation/type/AnimationType;)V

    .line 412
    :goto_0
    invoke-virtual {p0}, Lcom/rd/PageIndicatorView;->invalidate()V

    .line 413
    return-void

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v0}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v0

    sget-object v1, Lcom/rd/animation/type/AnimationType;->NONE:Lcom/rd/animation/type/AnimationType;

    invoke-virtual {v0, v1}, Lcom/rd/draw/data/Indicator;->setAnimationType(Lcom/rd/animation/type/AnimationType;)V

    goto :goto_0
.end method

.method public setAutoVisibility(Z)V
    .locals 1
    .param p1, "autoVisibility"    # Z

    .prologue
    .line 358
    if-nez p1, :cond_0

    .line 359
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/rd/PageIndicatorView;->setVisibility(I)V

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v0}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/rd/draw/data/Indicator;->setAutoVisibility(Z)V

    .line 363
    invoke-direct {p0}, Lcom/rd/PageIndicatorView;->updateVisibility()V

    .line 364
    return-void
.end method

.method public setCount(I)V
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 126
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v0}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rd/draw/data/Indicator;->getCount()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 127
    iget-object v0, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v0}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/rd/draw/data/Indicator;->setCount(I)V

    .line 128
    invoke-direct {p0}, Lcom/rd/PageIndicatorView;->updateVisibility()V

    .line 130
    invoke-virtual {p0}, Lcom/rd/PageIndicatorView;->requestLayout()V

    .line 132
    :cond_0
    return-void
.end method

.method public setDynamicCount(Z)V
    .locals 1
    .param p1, "dynamicCount"    # Z

    .prologue
    .line 150
    iget-object v0, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v0}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/rd/draw/data/Indicator;->setDynamicCount(Z)V

    .line 152
    if-eqz p1, :cond_0

    .line 153
    invoke-direct {p0}, Lcom/rd/PageIndicatorView;->registerSetObserver()V

    .line 157
    :goto_0
    return-void

    .line 155
    :cond_0
    invoke-direct {p0}, Lcom/rd/PageIndicatorView;->unRegisterSetObserver()V

    goto :goto_0
.end method

.method public setInteractiveAnimation(Z)V
    .locals 1
    .param p1, "isInteractive"    # Z

    .prologue
    .line 423
    iget-object v0, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v0}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/rd/draw/data/Indicator;->setInteractiveAnimation(Z)V

    .line 424
    return-void
.end method

.method public setOrientation(Lcom/rd/draw/data/Orientation;)V
    .locals 1
    .param p1, "orientation"    # Lcom/rd/draw/data/Orientation;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 373
    if-eqz p1, :cond_0

    .line 374
    iget-object v0, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v0}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/rd/draw/data/Indicator;->setOrientation(Lcom/rd/draw/data/Orientation;)V

    .line 375
    invoke-virtual {p0}, Lcom/rd/PageIndicatorView;->requestLayout()V

    .line 377
    :cond_0
    return-void
.end method

.method public setPadding(F)V
    .locals 2
    .param p1, "paddingPx"    # F

    .prologue
    .line 219
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 220
    const/4 p1, 0x0

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v0}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v0

    float-to-int v1, p1

    invoke-virtual {v0, v1}, Lcom/rd/draw/data/Indicator;->setPadding(I)V

    .line 224
    invoke-virtual {p0}, Lcom/rd/PageIndicatorView;->invalidate()V

    .line 225
    return-void
.end method

.method public setPadding(I)V
    .locals 2
    .param p1, "paddingDp"    # I

    .prologue
    .line 204
    if-gez p1, :cond_0

    .line 205
    const/4 p1, 0x0

    .line 208
    :cond_0
    invoke-static {p1}, Lcom/rd/utils/DensityUtils;->dpToPx(I)I

    move-result v0

    .line 209
    .local v0, "paddingPx":I
    iget-object v1, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v1}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/rd/draw/data/Indicator;->setPadding(I)V

    .line 210
    invoke-virtual {p0}, Lcom/rd/PageIndicatorView;->invalidate()V

    .line 211
    return-void
.end method

.method public setProgress(IF)V
    .locals 4
    .param p1, "selectingPosition"    # I
    .param p2, "progress"    # F

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 546
    iget-object v2, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v2}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v1

    .line 547
    .local v1, "indicator":Lcom/rd/draw/data/Indicator;
    invoke-virtual {v1}, Lcom/rd/draw/data/Indicator;->isInteractiveAnimation()Z

    move-result v2

    if-nez v2, :cond_0

    .line 573
    :goto_0
    return-void

    .line 551
    :cond_0
    invoke-virtual {v1}, Lcom/rd/draw/data/Indicator;->getCount()I

    move-result v0

    .line 552
    .local v0, "count":I
    if-lez v0, :cond_1

    if-gez p1, :cond_5

    .line 553
    :cond_1
    const/4 p1, 0x0

    .line 559
    :cond_2
    :goto_1
    const/4 v2, 0x0

    cmpg-float v2, p2, v2

    if-gez v2, :cond_6

    .line 560
    const/4 p2, 0x0

    .line 566
    :cond_3
    :goto_2
    cmpl-float v2, p2, v3

    if-nez v2, :cond_4

    .line 567
    invoke-virtual {v1}, Lcom/rd/draw/data/Indicator;->getSelectedPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/rd/draw/data/Indicator;->setLastSelectedPosition(I)V

    .line 568
    invoke-virtual {v1, p1}, Lcom/rd/draw/data/Indicator;->setSelectedPosition(I)V

    .line 571
    :cond_4
    invoke-virtual {v1, p1}, Lcom/rd/draw/data/Indicator;->setSelectingPosition(I)V

    .line 572
    iget-object v2, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v2}, Lcom/rd/IndicatorManager;->animate()Lcom/rd/animation/AnimationManager;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/rd/animation/AnimationManager;->interactive(F)V

    goto :goto_0

    .line 555
    :cond_5
    add-int/lit8 v2, v0, -0x1

    if-le p1, v2, :cond_2

    .line 556
    add-int/lit8 p1, v0, -0x1

    goto :goto_1

    .line 562
    :cond_6
    cmpl-float v2, p2, v3

    if-lez v2, :cond_3

    .line 563
    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_2
.end method

.method public setRadius(F)V
    .locals 2
    .param p1, "radiusPx"    # F

    .prologue
    .line 182
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 183
    const/4 p1, 0x0

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v0}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v0

    float-to-int v1, p1

    invoke-virtual {v0, v1}, Lcom/rd/draw/data/Indicator;->setRadius(I)V

    .line 187
    invoke-virtual {p0}, Lcom/rd/PageIndicatorView;->invalidate()V

    .line 188
    return-void
.end method

.method public setRadius(I)V
    .locals 2
    .param p1, "radiusDp"    # I

    .prologue
    .line 166
    if-gez p1, :cond_0

    .line 167
    const/4 p1, 0x0

    .line 170
    :cond_0
    invoke-static {p1}, Lcom/rd/utils/DensityUtils;->dpToPx(I)I

    move-result v0

    .line 171
    .local v0, "radiusPx":I
    iget-object v1, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v1}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/rd/draw/data/Indicator;->setRadius(I)V

    .line 172
    invoke-virtual {p0}, Lcom/rd/PageIndicatorView;->invalidate()V

    .line 173
    return-void
.end method

.method public setRtlMode(Lcom/rd/draw/data/RtlMode;)V
    .locals 4
    .param p1, "mode"    # Lcom/rd/draw/data/RtlMode;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 472
    iget-object v3, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v3}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v0

    .line 473
    .local v0, "indicator":Lcom/rd/draw/data/Indicator;
    if-nez p1, :cond_0

    .line 474
    sget-object v3, Lcom/rd/draw/data/RtlMode;->Off:Lcom/rd/draw/data/RtlMode;

    invoke-virtual {v0, v3}, Lcom/rd/draw/data/Indicator;->setRtlMode(Lcom/rd/draw/data/RtlMode;)V

    .line 479
    :goto_0
    iget-object v3, p0, Lcom/rd/PageIndicatorView;->viewPager:Landroid/support/v4/view/ViewPager;

    if-nez v3, :cond_1

    .line 497
    :goto_1
    return-void

    .line 476
    :cond_0
    invoke-virtual {v0, p1}, Lcom/rd/draw/data/Indicator;->setRtlMode(Lcom/rd/draw/data/RtlMode;)V

    goto :goto_0

    .line 483
    :cond_1
    invoke-virtual {v0}, Lcom/rd/draw/data/Indicator;->getSelectedPosition()I

    move-result v2

    .line 484
    .local v2, "selectedPosition":I
    move v1, v2

    .line 486
    .local v1, "position":I
    invoke-direct {p0}, Lcom/rd/PageIndicatorView;->isRtl()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 487
    invoke-virtual {v0}, Lcom/rd/draw/data/Indicator;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    sub-int v1, v3, v2

    .line 493
    :cond_2
    :goto_2
    invoke-virtual {v0, v1}, Lcom/rd/draw/data/Indicator;->setSelectedPosition(I)V

    .line 494
    invoke-virtual {v0, v1}, Lcom/rd/draw/data/Indicator;->setSelectingPosition(I)V

    .line 495
    invoke-virtual {v0, v1}, Lcom/rd/draw/data/Indicator;->setLastSelectedPosition(I)V

    .line 496
    invoke-virtual {p0}, Lcom/rd/PageIndicatorView;->invalidate()V

    goto :goto_1

    .line 489
    :cond_3
    iget-object v3, p0, Lcom/rd/PageIndicatorView;->viewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v3, :cond_2

    .line 490
    iget-object v3, p0, Lcom/rd/PageIndicatorView;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    goto :goto_2
.end method

.method public setScaleFactor(F)V
    .locals 1
    .param p1, "factor"    # F

    .prologue
    .line 244
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 245
    const/high16 p1, 0x3f800000    # 1.0f

    .line 251
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v0}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/rd/draw/data/Indicator;->setScaleFactor(F)V

    .line 252
    return-void

    .line 247
    :cond_1
    const v0, 0x3e99999a    # 0.3f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 248
    const p1, 0x3e99999a    # 0.3f

    goto :goto_0
.end method

.method public setSelectedColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 321
    iget-object v0, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v0}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/rd/draw/data/Indicator;->setSelectedColor(I)V

    .line 322
    invoke-virtual {p0}, Lcom/rd/PageIndicatorView;->invalidate()V

    .line 323
    return-void
.end method

.method public setSelection(I)V
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 507
    iget-object v4, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v4}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v1

    .line 508
    .local v1, "indicator":Lcom/rd/draw/data/Indicator;
    invoke-virtual {v1}, Lcom/rd/draw/data/Indicator;->isInteractiveAnimation()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Lcom/rd/draw/data/Indicator;->getAnimationType()Lcom/rd/animation/type/AnimationType;

    move-result-object v4

    sget-object v5, Lcom/rd/animation/type/AnimationType;->NONE:Lcom/rd/animation/type/AnimationType;

    if-eq v4, v5, :cond_1

    .line 529
    :cond_0
    :goto_0
    return-void

    .line 512
    :cond_1
    invoke-virtual {v1}, Lcom/rd/draw/data/Indicator;->getSelectedPosition()I

    move-result v3

    .line 513
    .local v3, "selectedPosition":I
    invoke-virtual {v1}, Lcom/rd/draw/data/Indicator;->getCount()I

    move-result v0

    .line 514
    .local v0, "count":I
    add-int/lit8 v2, v0, -0x1

    .line 516
    .local v2, "lastPosition":I
    if-gez p1, :cond_3

    .line 517
    const/4 p1, 0x0

    .line 522
    :cond_2
    :goto_1
    if-eq v3, p1, :cond_0

    .line 526
    invoke-virtual {v1}, Lcom/rd/draw/data/Indicator;->getSelectedPosition()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/rd/draw/data/Indicator;->setLastSelectedPosition(I)V

    .line 527
    invoke-virtual {v1, p1}, Lcom/rd/draw/data/Indicator;->setSelectedPosition(I)V

    .line 528
    iget-object v4, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v4}, Lcom/rd/IndicatorManager;->animate()Lcom/rd/animation/AnimationManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/rd/animation/AnimationManager;->basic()V

    goto :goto_0

    .line 518
    :cond_3
    if-le p1, v2, :cond_2

    .line 519
    move p1, v2

    goto :goto_1
.end method

.method public setStrokeWidth(F)V
    .locals 3
    .param p1, "strokePx"    # F

    .prologue
    .line 273
    iget-object v1, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v1}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/rd/draw/data/Indicator;->getRadius()I

    move-result v0

    .line 275
    .local v0, "radiusPx":I
    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-gez v1, :cond_1

    .line 276
    const/4 p1, 0x0

    .line 282
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v1}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v1

    float-to-int v2, p1

    invoke-virtual {v1, v2}, Lcom/rd/draw/data/Indicator;->setStroke(I)V

    .line 283
    invoke-virtual {p0}, Lcom/rd/PageIndicatorView;->invalidate()V

    .line 284
    return-void

    .line 278
    :cond_1
    int-to-float v1, v0

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    .line 279
    int-to-float p1, v0

    goto :goto_0
.end method

.method public setStrokeWidth(I)V
    .locals 3
    .param p1, "strokeDp"    # I

    .prologue
    .line 294
    invoke-static {p1}, Lcom/rd/utils/DensityUtils;->dpToPx(I)I

    move-result v1

    .line 295
    .local v1, "strokePx":I
    iget-object v2, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v2}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/rd/draw/data/Indicator;->getRadius()I

    move-result v0

    .line 297
    .local v0, "radiusPx":I
    if-gez v1, :cond_1

    .line 298
    const/4 v1, 0x0

    .line 304
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v2}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/rd/draw/data/Indicator;->setStroke(I)V

    .line 305
    invoke-virtual {p0}, Lcom/rd/PageIndicatorView;->invalidate()V

    .line 306
    return-void

    .line 300
    :cond_1
    if-le v1, v0, :cond_0

    .line 301
    move v1, v0

    goto :goto_0
.end method

.method public setUnselectedColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 339
    iget-object v0, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v0}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/rd/draw/data/Indicator;->setUnselectedColor(I)V

    .line 340
    invoke-virtual {p0}, Lcom/rd/PageIndicatorView;->invalidate()V

    .line 341
    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 4
    .param p1, "pager"    # Landroid/support/v4/view/ViewPager;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 433
    invoke-virtual {p0}, Lcom/rd/PageIndicatorView;->releaseViewPager()V

    .line 434
    if-nez p1, :cond_0

    .line 451
    :goto_0
    return-void

    .line 438
    :cond_0
    iput-object p1, p0, Lcom/rd/PageIndicatorView;->viewPager:Landroid/support/v4/view/ViewPager;

    .line 439
    iget-object v2, p0, Lcom/rd/PageIndicatorView;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, p0}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 440
    iget-object v2, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v2}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v2

    iget-object v3, p0, Lcom/rd/PageIndicatorView;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/rd/draw/data/Indicator;->setViewPagerId(I)V

    .line 442
    iget-object v2, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v2}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/rd/draw/data/Indicator;->isDynamicCount()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/rd/PageIndicatorView;->setDynamicCount(Z)V

    .line 443
    invoke-direct {p0}, Lcom/rd/PageIndicatorView;->getViewPagerCount()I

    move-result v0

    .line 445
    .local v0, "count":I
    invoke-direct {p0}, Lcom/rd/PageIndicatorView;->isRtl()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 446
    add-int/lit8 v2, v0, -0x1

    iget-object v3, p0, Lcom/rd/PageIndicatorView;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v3

    sub-int v1, v2, v3

    .line 447
    .local v1, "selectedPosition":I
    iget-object v2, p0, Lcom/rd/PageIndicatorView;->manager:Lcom/rd/IndicatorManager;

    invoke-virtual {v2}, Lcom/rd/IndicatorManager;->indicator()Lcom/rd/draw/data/Indicator;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/rd/draw/data/Indicator;->setSelectedPosition(I)V

    .line 450
    .end local v1    # "selectedPosition":I
    :cond_1
    invoke-virtual {p0, v0}, Lcom/rd/PageIndicatorView;->setCount(I)V

    goto :goto_0
.end method
