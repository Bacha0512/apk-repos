.class public Lcom/weirdvoice/ui/dialpad/DialerLayout;
.super Landroid/widget/LinearLayout;
.source "DialerLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/weirdvoice/ui/dialpad/DialerLayout$OnAutoCompleteListVisibilityChangedListener;
    }
.end annotation


# static fields
.field private static final LIST_BTNS_HEIGHT:I = 0x64

.field private static final LIST_DIALPAD_HEIGHT:I = 0x154

.field private static final LIST_DIGITS_HEIGHT:I = 0x64

.field private static final LIST_MIN_HEIGHT:I = 0xa0

.field private static final MIN_BTNS_HEIGHT:I = 0x2b

.field private static final THIS_FILE:Ljava/lang/String; = "DialerLayout"


# instance fields
.field private canShowList:Z

.field private expectedBtnHeightFactor:F

.field private forceNoList:Z

.field private onAutoCompleteListVisibilityChangedListener:Lcom/weirdvoice/ui/dialpad/DialerLayout$OnAutoCompleteListVisibilityChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 44
    iput-boolean v0, p0, Lcom/weirdvoice/ui/dialpad/DialerLayout;->forceNoList:Z

    .line 45
    iput-boolean v0, p0, Lcom/weirdvoice/ui/dialpad/DialerLayout;->canShowList:Z

    .line 63
    invoke-direct {p0}, Lcom/weirdvoice/ui/dialpad/DialerLayout;->init()V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    iput-boolean v0, p0, Lcom/weirdvoice/ui/dialpad/DialerLayout;->forceNoList:Z

    .line 45
    iput-boolean v0, p0, Lcom/weirdvoice/ui/dialpad/DialerLayout;->canShowList:Z

    .line 68
    invoke-direct {p0}, Lcom/weirdvoice/ui/dialpad/DialerLayout;->init()V

    .line 69
    return-void
.end method

.method private init()V
    .locals 6

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    .line 73
    invoke-virtual {p0}, Lcom/weirdvoice/ui/dialpad/DialerLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 74
    .local v0, "btnsWeight":I
    invoke-virtual {p0}, Lcom/weirdvoice/ui/dialpad/DialerLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 75
    .local v2, "padWeight":I
    invoke-virtual {p0}, Lcom/weirdvoice/ui/dialpad/DialerLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0003

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 77
    .local v1, "digitsWeight":I
    int-to-float v3, v0

    mul-float/2addr v3, v5

    add-int v4, v0, v2

    add-int/2addr v4, v1

    int-to-float v4, v4

    mul-float/2addr v4, v5

    div-float/2addr v3, v4

    iput v3, p0, Lcom/weirdvoice/ui/dialpad/DialerLayout;->expectedBtnHeightFactor:F

    .line 78
    return-void
.end method


# virtual methods
.method public canShowList()Z
    .locals 1

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/weirdvoice/ui/dialpad/DialerLayout;->canShowList:Z

    return v0
.end method

.method protected onMeasure(II)V
    .locals 12
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 82
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 83
    .local v3, "height":I
    invoke-virtual {p0}, Lcom/weirdvoice/ui/dialpad/DialerLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 84
    .local v2, "dm":Landroid/util/DisplayMetrics;
    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 87
    .local v0, "density":F
    const v10, 0x7f0b00b4

    invoke-virtual {p0, v10}, Lcom/weirdvoice/ui/dialpad/DialerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 88
    .local v1, "dialerCallBar":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 89
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 90
    .local v6, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v7, 0x0

    .line 91
    .local v7, "orientation":I
    instance-of v10, v1, Landroid/widget/LinearLayout;

    if-eqz v10, :cond_0

    move-object v10, v1

    .line 92
    check-cast v10, Landroid/widget/LinearLayout;

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v7

    .line 94
    :cond_0
    int-to-float v10, v3

    iget v11, p0, Lcom/weirdvoice/ui/dialpad/DialerLayout;->expectedBtnHeightFactor:F

    mul-float/2addr v10, v11

    const/high16 v11, 0x422c0000    # 43.0f

    mul-float/2addr v11, v0

    cmpg-float v10, v10, v11

    if-gez v10, :cond_4

    .line 95
    if-nez v7, :cond_3

    .line 96
    const/high16 v10, 0x422c0000    # 43.0f

    mul-float/2addr v10, v0

    float-to-int v10, v10

    iput v10, v6, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 97
    const/4 v10, 0x0

    iput v10, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 109
    :goto_0
    invoke-virtual {v1, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    .end local v6    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v7    # "orientation":I
    :cond_1
    iget-boolean v8, p0, Lcom/weirdvoice/ui/dialpad/DialerLayout;->canShowList:Z

    .line 116
    .local v8, "previousState":Z
    iget-boolean v10, p0, Lcom/weirdvoice/ui/dialpad/DialerLayout;->forceNoList:Z

    if-nez v10, :cond_b

    .line 117
    int-to-float v10, v3

    const/high16 v11, 0x442f0000    # 700.0f

    mul-float/2addr v11, v0

    cmpl-float v10, v10, v11

    if-lez v10, :cond_b

    .line 118
    const-string v10, "DialerLayout"

    const-string v11, "We force height to show list"

    invoke-static {v10, v11}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/weirdvoice/ui/dialpad/DialerLayout;->canShowList:Z

    .line 120
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/weirdvoice/ui/dialpad/DialerLayout;->getChildCount()I

    move-result v10

    if-lt v4, v10, :cond_6

    .line 147
    .end local v4    # "i":I
    :goto_2
    iget-boolean v10, p0, Lcom/weirdvoice/ui/dialpad/DialerLayout;->canShowList:Z

    if-eq v8, v10, :cond_2

    iget-object v10, p0, Lcom/weirdvoice/ui/dialpad/DialerLayout;->onAutoCompleteListVisibilityChangedListener:Lcom/weirdvoice/ui/dialpad/DialerLayout$OnAutoCompleteListVisibilityChangedListener;

    if-eqz v10, :cond_2

    .line 148
    iget-object v10, p0, Lcom/weirdvoice/ui/dialpad/DialerLayout;->onAutoCompleteListVisibilityChangedListener:Lcom/weirdvoice/ui/dialpad/DialerLayout$OnAutoCompleteListVisibilityChangedListener;

    invoke-interface {v10}, Lcom/weirdvoice/ui/dialpad/DialerLayout$OnAutoCompleteListVisibilityChangedListener;->onAutoCompleteListVisibiltyChanged()V

    .line 150
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 151
    return-void

    .line 99
    .end local v8    # "previousState":Z
    .restart local v6    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v7    # "orientation":I
    :cond_3
    invoke-virtual {p0}, Lcom/weirdvoice/ui/dialpad/DialerLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a0002

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    int-to-float v10, v10

    iput v10, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_0

    .line 102
    :cond_4
    if-nez v7, :cond_5

    .line 103
    const/4 v10, 0x0

    iput v10, v6, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 107
    :goto_3
    invoke-virtual {p0}, Lcom/weirdvoice/ui/dialpad/DialerLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a0002

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    int-to-float v10, v10

    iput v10, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_0

    .line 105
    :cond_5
    const/4 v10, 0x0

    iput v10, v6, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_3

    .line 121
    .end local v6    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v7    # "orientation":I
    .restart local v4    # "i":I
    .restart local v8    # "previousState":Z
    :cond_6
    invoke-virtual {p0, v4}, Lcom/weirdvoice/ui/dialpad/DialerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 122
    .local v9, "v":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getId()I

    move-result v5

    .line 123
    .local v5, "id":I
    const v10, 0x7f0b00b4

    if-ne v5, v10, :cond_8

    .line 124
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 125
    .restart local v6    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v10, 0x42c80000    # 100.0f

    mul-float/2addr v10, v0

    float-to-int v10, v10

    iput v10, v6, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 126
    const/4 v10, 0x0

    iput v10, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 127
    invoke-virtual {v9, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    .end local v6    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_7
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 128
    :cond_8
    const v10, 0x7f0b00b3

    if-ne v5, v10, :cond_9

    .line 129
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 130
    .restart local v6    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v10, 0x43aa0000    # 340.0f

    mul-float/2addr v10, v0

    float-to-int v10, v10

    iput v10, v6, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 131
    const/4 v10, 0x0

    iput v10, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 132
    invoke-virtual {v9, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4

    .line 133
    .end local v6    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_9
    const v10, 0x7f0b0098

    if-ne v5, v10, :cond_a

    .line 134
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 135
    .restart local v6    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v10, 0x42c80000    # 100.0f

    mul-float/2addr v10, v0

    float-to-int v10, v10

    iput v10, v6, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 136
    const/4 v10, 0x0

    iput v10, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 137
    invoke-virtual {v9, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4

    .line 138
    .end local v6    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_a
    const v10, 0x7f0b00a3

    if-ne v5, v10, :cond_7

    .line 139
    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 143
    .end local v4    # "i":I
    .end local v5    # "id":I
    .end local v9    # "v":Landroid/view/View;
    :cond_b
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/weirdvoice/ui/dialpad/DialerLayout;->canShowList:Z

    goto/16 :goto_2
.end method

.method public setAutoCompleteListVisibiltyChangedListener(Lcom/weirdvoice/ui/dialpad/DialerLayout$OnAutoCompleteListVisibilityChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/weirdvoice/ui/dialpad/DialerLayout$OnAutoCompleteListVisibilityChangedListener;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/weirdvoice/ui/dialpad/DialerLayout;->onAutoCompleteListVisibilityChangedListener:Lcom/weirdvoice/ui/dialpad/DialerLayout$OnAutoCompleteListVisibilityChangedListener;

    .line 52
    return-void
.end method

.method public setForceNoList(Z)V
    .locals 0
    .param p1, "noList"    # Z

    .prologue
    .line 154
    iput-boolean p1, p0, Lcom/weirdvoice/ui/dialpad/DialerLayout;->forceNoList:Z

    .line 155
    return-void
.end method
