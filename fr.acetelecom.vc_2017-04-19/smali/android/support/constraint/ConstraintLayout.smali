.class public Landroid/support/constraint/ConstraintLayout;
.super Landroid/view/ViewGroup;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/constraint/ConstraintLayout$LayoutParams;
    }
.end annotation


# instance fields
.field a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field b:Landroid/support/constraint/a/a/d;

.field c:I

.field d:I

.field e:I

.field f:I

.field private final g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/constraint/a/a/c;",
            ">;"
        }
    .end annotation
.end field

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:Z

.field private m:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    const v4, 0x7fffffff

    const/4 v3, 0x0

    const/4 v2, -0x1

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->a:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->g:Ljava/util/ArrayList;

    new-instance v0, Landroid/support/constraint/a/a/d;

    invoke-direct {v0}, Landroid/support/constraint/a/a/d;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/a/a/d;

    iput v3, p0, Landroid/support/constraint/ConstraintLayout;->h:I

    iput v3, p0, Landroid/support/constraint/ConstraintLayout;->i:I

    iput v4, p0, Landroid/support/constraint/ConstraintLayout;->j:I

    iput v4, p0, Landroid/support/constraint/ConstraintLayout;->k:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/constraint/ConstraintLayout;->l:Z

    const/4 v0, 0x2

    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->m:I

    iput v2, p0, Landroid/support/constraint/ConstraintLayout;->c:I

    iput v2, p0, Landroid/support/constraint/ConstraintLayout;->d:I

    iput v2, p0, Landroid/support/constraint/ConstraintLayout;->e:I

    iput v2, p0, Landroid/support/constraint/ConstraintLayout;->f:I

    invoke-direct {p0, p2}, Landroid/support/constraint/ConstraintLayout;->b(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    const v4, 0x7fffffff

    const/4 v3, 0x0

    const/4 v2, -0x1

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->a:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->g:Ljava/util/ArrayList;

    new-instance v0, Landroid/support/constraint/a/a/d;

    invoke-direct {v0}, Landroid/support/constraint/a/a/d;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/a/a/d;

    iput v3, p0, Landroid/support/constraint/ConstraintLayout;->h:I

    iput v3, p0, Landroid/support/constraint/ConstraintLayout;->i:I

    iput v4, p0, Landroid/support/constraint/ConstraintLayout;->j:I

    iput v4, p0, Landroid/support/constraint/ConstraintLayout;->k:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/constraint/ConstraintLayout;->l:Z

    const/4 v0, 0x2

    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->m:I

    iput v2, p0, Landroid/support/constraint/ConstraintLayout;->c:I

    iput v2, p0, Landroid/support/constraint/ConstraintLayout;->d:I

    iput v2, p0, Landroid/support/constraint/ConstraintLayout;->e:I

    iput v2, p0, Landroid/support/constraint/ConstraintLayout;->f:I

    invoke-direct {p0, p2}, Landroid/support/constraint/ConstraintLayout;->b(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private final a(I)Landroid/support/constraint/a/a/c;
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/a/a/d;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-ne v0, p0, :cond_1

    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/a/a/d;

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->T:Landroid/support/constraint/a/a/c;

    goto :goto_0
.end method

.method private final a(Landroid/view/View;)Landroid/support/constraint/a/a/c;
    .locals 1

    if-ne p1, p0, :cond_0

    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/a/a/d;

    :goto_0
    return-object v0

    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->T:Landroid/support/constraint/a/a/c;

    goto :goto_0
.end method

.method private a(II)V
    .locals 11

    const/4 v10, -0x2

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingBottom()I

    move-result v1

    add-int v4, v0, v1

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingRight()I

    move-result v1

    add-int v5, v0, v1

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v6

    const/4 v0, 0x0

    move v3, v0

    :goto_0
    if-ge v3, v6, :cond_6

    invoke-virtual {p0, v3}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iget-object v8, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->T:Landroid/support/constraint/a/a/c;

    iget-boolean v1, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->L:Z

    if-nez v1, :cond_0

    iget v2, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    iget v1, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    iget-boolean v9, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->I:Z

    if-nez v9, :cond_2

    iget-boolean v9, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->J:Z

    if-eqz v9, :cond_3

    :cond_2
    if-nez v2, :cond_4

    invoke-static {p1, v5, v10}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v2

    :goto_2
    if-nez v1, :cond_5

    invoke-static {p2, v4, v10}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v1

    :goto_3
    invoke-virtual {v7, v2, v1}, Landroid/view/View;->measure(II)V

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    :cond_3
    invoke-virtual {v8, v2}, Landroid/support/constraint/a/a/c;->d(I)V

    invoke-virtual {v8, v1}, Landroid/support/constraint/a/a/c;->e(I)V

    iget-boolean v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->K:Z

    if-eqz v0, :cond_0

    invoke-virtual {v7}, Landroid/view/View;->getBaseline()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {v8, v0}, Landroid/support/constraint/a/a/c;->h(I)V

    goto :goto_1

    :cond_4
    invoke-static {p1, v5, v2}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v2

    goto :goto_2

    :cond_5
    invoke-static {p2, v4, v1}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v1

    goto :goto_3

    :cond_6
    return-void
.end method

.method private b(II)V
    .locals 10

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingBottom()I

    move-result v3

    add-int v7, v1, v3

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingRight()I

    move-result v3

    add-int v8, v1, v3

    sget-object v3, Landroid/support/constraint/a/a/c$a;->a:Landroid/support/constraint/a/a/c$a;

    sget-object v1, Landroid/support/constraint/a/a/c$a;->a:Landroid/support/constraint/a/a/c$a;

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    sparse-switch v2, :sswitch_data_0

    move v2, v0

    :goto_0
    sparse-switch v5, :sswitch_data_1

    :goto_1
    iget-object v4, p0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/a/a/d;

    iget v5, p0, Landroid/support/constraint/ConstraintLayout;->h:I

    invoke-virtual {v4, v5}, Landroid/support/constraint/a/a/d;->f(I)V

    iget-object v4, p0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/a/a/d;

    iget v5, p0, Landroid/support/constraint/ConstraintLayout;->i:I

    invoke-virtual {v4, v5}, Landroid/support/constraint/a/a/d;->g(I)V

    iget-object v4, p0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/a/a/d;

    invoke-virtual {v4, v3}, Landroid/support/constraint/a/a/d;->a(Landroid/support/constraint/a/a/c$a;)V

    iget-object v3, p0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/a/a/d;

    invoke-virtual {v3, v2}, Landroid/support/constraint/a/a/d;->d(I)V

    iget-object v2, p0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/a/a/d;

    invoke-virtual {v2, v1}, Landroid/support/constraint/a/a/d;->b(Landroid/support/constraint/a/a/c$a;)V

    iget-object v1, p0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/a/a/d;

    invoke-virtual {v1, v0}, Landroid/support/constraint/a/a/d;->e(I)V

    return-void

    :sswitch_0
    sget-object v2, Landroid/support/constraint/a/a/c$a;->b:Landroid/support/constraint/a/a/c$a;

    move-object v3, v2

    move v2, v0

    goto :goto_0

    :sswitch_1
    iget v2, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lez v2, :cond_0

    iget v2, p0, Landroid/support/constraint/ConstraintLayout;->j:I

    iget v4, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_0

    :cond_0
    sget-object v2, Landroid/support/constraint/a/a/c$a;->b:Landroid/support/constraint/a/a/c$a;

    move-object v3, v2

    move v2, v0

    goto :goto_0

    :sswitch_2
    iget v2, p0, Landroid/support/constraint/ConstraintLayout;->j:I

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    sub-int/2addr v2, v8

    goto :goto_0

    :sswitch_3
    sget-object v1, Landroid/support/constraint/a/a/c$a;->b:Landroid/support/constraint/a/a/c$a;

    goto :goto_1

    :sswitch_4
    iget v4, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v4, :cond_1

    iget v0, p0, Landroid/support/constraint/ConstraintLayout;->k:I

    iget v4, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1

    :cond_1
    sget-object v1, Landroid/support/constraint/a/a/c$a;->b:Landroid/support/constraint/a/a/c$a;

    goto :goto_1

    :sswitch_5
    iget v0, p0, Landroid/support/constraint/ConstraintLayout;->k:I

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int/2addr v0, v7

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x0 -> :sswitch_1
        0x40000000 -> :sswitch_2
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x80000000 -> :sswitch_3
        0x0 -> :sswitch_4
        0x40000000 -> :sswitch_5
    .end sparse-switch
.end method

.method private b(Landroid/util/AttributeSet;)V
    .locals 5

    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/a/a/d;

    invoke-virtual {v0, p0}, Landroid/support/constraint/a/a/d;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->a:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/support/constraint/a$a;->ConstraintLayout_Layout:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_5

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    sget v4, Landroid/support/constraint/a$a;->ConstraintLayout_Layout_android_minWidth:I

    if-ne v3, v4, :cond_1

    iget v4, p0, Landroid/support/constraint/ConstraintLayout;->h:I

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, p0, Landroid/support/constraint/ConstraintLayout;->h:I

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget v4, Landroid/support/constraint/a$a;->ConstraintLayout_Layout_android_minHeight:I

    if-ne v3, v4, :cond_2

    iget v4, p0, Landroid/support/constraint/ConstraintLayout;->i:I

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, p0, Landroid/support/constraint/ConstraintLayout;->i:I

    goto :goto_1

    :cond_2
    sget v4, Landroid/support/constraint/a$a;->ConstraintLayout_Layout_android_maxWidth:I

    if-ne v3, v4, :cond_3

    iget v4, p0, Landroid/support/constraint/ConstraintLayout;->j:I

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, p0, Landroid/support/constraint/ConstraintLayout;->j:I

    goto :goto_1

    :cond_3
    sget v4, Landroid/support/constraint/a$a;->ConstraintLayout_Layout_android_maxHeight:I

    if-ne v3, v4, :cond_4

    iget v4, p0, Landroid/support/constraint/ConstraintLayout;->k:I

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, p0, Landroid/support/constraint/ConstraintLayout;->k:I

    goto :goto_1

    :cond_4
    sget v4, Landroid/support/constraint/a$a;->ConstraintLayout_Layout_layout_optimizationLevel:I

    if-ne v3, v4, :cond_0

    iget v4, p0, Landroid/support/constraint/ConstraintLayout;->m:I

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Landroid/support/constraint/ConstraintLayout;->m:I

    goto :goto_1

    :cond_5
    return-void
.end method

.method private c()V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->isLayoutRequested()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    :cond_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0}, Landroid/support/constraint/ConstraintLayout;->d()V

    :cond_1
    return-void

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private d()V
    .locals 13

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v12

    const/4 v0, 0x0

    move v11, v0

    :goto_0
    if-ge v11, v12, :cond_1d

    invoke-virtual {p0, v11}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/support/constraint/ConstraintLayout;->a(Landroid/view/View;)Landroid/support/constraint/a/a/c;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v11, 0x1

    move v11, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/c;->a()V

    iget-object v1, p0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/a/a/d;

    invoke-virtual {v0, v1}, Landroid/support/constraint/a/a/c;->a(Landroid/support/constraint/a/a/c;)V

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/constraint/a/a/c;->a(I)V

    invoke-virtual {v0, v2}, Landroid/support/constraint/a/a/c;->a(Ljava/lang/Object;)V

    iget-boolean v1, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->J:Z

    if-eqz v1, :cond_2

    iget-boolean v1, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->I:Z

    if-nez v1, :cond_3

    :cond_2
    iget-object v1, p0, Landroid/support/constraint/ConstraintLayout;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-boolean v1, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->L:Z

    if-eqz v1, :cond_6

    check-cast v0, Landroid/support/constraint/a/a/e;

    iget v1, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->a:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    iget v1, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->a:I

    invoke-virtual {v0, v1}, Landroid/support/constraint/a/a/e;->l(I)V

    :cond_4
    iget v1, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->b:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_5

    iget v1, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->b:I

    invoke-virtual {v0, v1}, Landroid/support/constraint/a/a/e;->m(I)V

    :cond_5
    iget v1, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->c:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    iget v1, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->c:F

    invoke-virtual {v0, v1}, Landroid/support/constraint/a/a/e;->e(F)V

    goto :goto_1

    :cond_6
    iget v1, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->M:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_7

    iget v1, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->N:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_7

    iget v1, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->O:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_7

    iget v1, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->P:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_7

    iget v1, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->h:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_7

    iget v1, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->i:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_7

    iget v1, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->j:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_7

    iget v1, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->k:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_7

    iget v1, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->l:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_7

    iget v1, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->F:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_7

    iget v1, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->G:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    :cond_7
    iget v7, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->M:I

    iget v6, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->N:I

    iget v4, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->O:I

    iget v3, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->P:I

    iget v5, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->Q:I

    iget v2, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->R:I

    iget v1, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->S:F

    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x11

    if-ge v9, v10, :cond_1e

    iget v7, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->d:I

    iget v6, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->e:I

    iget v4, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->f:I

    iget v3, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->g:I

    iget v5, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->q:I

    iget v2, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->s:I

    iget v1, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->w:F

    const/4 v9, -0x1

    if-ne v7, v9, :cond_8

    const/4 v9, -0x1

    if-ne v6, v9, :cond_8

    iget v9, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->n:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_15

    iget v7, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->n:I

    :cond_8
    :goto_2
    const/4 v9, -0x1

    if-ne v4, v9, :cond_1e

    const/4 v9, -0x1

    if-ne v3, v9, :cond_1e

    iget v9, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->o:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_16

    iget v4, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->o:I

    move v9, v1

    move v10, v4

    move v1, v6

    move v6, v2

    move v2, v7

    move v7, v3

    :goto_3
    const/4 v3, -0x1

    if-eq v2, v3, :cond_17

    invoke-direct {p0, v2}, Landroid/support/constraint/ConstraintLayout;->a(I)Landroid/support/constraint/a/a/c;

    move-result-object v2

    if-eqz v2, :cond_9

    sget-object v1, Landroid/support/constraint/a/a/b$c;->b:Landroid/support/constraint/a/a/b$c;

    sget-object v3, Landroid/support/constraint/a/a/b$c;->b:Landroid/support/constraint/a/a/b$c;

    iget v4, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftMargin:I

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/a/a/c;->a(Landroid/support/constraint/a/a/b$c;Landroid/support/constraint/a/a/c;Landroid/support/constraint/a/a/b$c;II)V

    :cond_9
    :goto_4
    const/4 v1, -0x1

    if-eq v10, v1, :cond_18

    invoke-direct {p0, v10}, Landroid/support/constraint/ConstraintLayout;->a(I)Landroid/support/constraint/a/a/c;

    move-result-object v2

    if-eqz v2, :cond_a

    sget-object v1, Landroid/support/constraint/a/a/b$c;->d:Landroid/support/constraint/a/a/b$c;

    sget-object v3, Landroid/support/constraint/a/a/b$c;->b:Landroid/support/constraint/a/a/b$c;

    iget v4, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightMargin:I

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/a/a/c;->a(Landroid/support/constraint/a/a/b$c;Landroid/support/constraint/a/a/c;Landroid/support/constraint/a/a/b$c;II)V

    :cond_a
    :goto_5
    iget v1, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->h:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_19

    iget v1, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->h:I

    invoke-direct {p0, v1}, Landroid/support/constraint/ConstraintLayout;->a(I)Landroid/support/constraint/a/a/c;

    move-result-object v2

    if-eqz v2, :cond_b

    sget-object v1, Landroid/support/constraint/a/a/b$c;->c:Landroid/support/constraint/a/a/b$c;

    sget-object v3, Landroid/support/constraint/a/a/b$c;->c:Landroid/support/constraint/a/a/b$c;

    iget v4, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topMargin:I

    iget v5, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->r:I

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/a/a/c;->a(Landroid/support/constraint/a/a/b$c;Landroid/support/constraint/a/a/c;Landroid/support/constraint/a/a/b$c;II)V

    :cond_b
    :goto_6
    iget v1, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->j:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1a

    iget v1, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->j:I

    invoke-direct {p0, v1}, Landroid/support/constraint/ConstraintLayout;->a(I)Landroid/support/constraint/a/a/c;

    move-result-object v2

    if-eqz v2, :cond_c

    sget-object v1, Landroid/support/constraint/a/a/b$c;->e:Landroid/support/constraint/a/a/b$c;

    sget-object v3, Landroid/support/constraint/a/a/b$c;->c:Landroid/support/constraint/a/a/b$c;

    iget v4, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomMargin:I

    iget v5, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->t:I

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/a/a/c;->a(Landroid/support/constraint/a/a/b$c;Landroid/support/constraint/a/a/c;Landroid/support/constraint/a/a/b$c;II)V

    :cond_c
    :goto_7
    iget v1, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->l:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_d

    iget-object v1, p0, Landroid/support/constraint/ConstraintLayout;->a:Landroid/util/SparseArray;

    iget v2, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->l:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget v2, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->l:I

    invoke-direct {p0, v2}, Landroid/support/constraint/ConstraintLayout;->a(I)Landroid/support/constraint/a/a/c;

    move-result-object v2

    if-eqz v2, :cond_d

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    instance-of v3, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    if-eqz v3, :cond_d

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    const/4 v3, 0x1

    iput-boolean v3, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->K:Z

    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->K:Z

    sget-object v1, Landroid/support/constraint/a/a/b$c;->f:Landroid/support/constraint/a/a/b$c;

    invoke-virtual {v0, v1}, Landroid/support/constraint/a/a/c;->a(Landroid/support/constraint/a/a/b$c;)Landroid/support/constraint/a/a/b;

    move-result-object v1

    sget-object v3, Landroid/support/constraint/a/a/b$c;->f:Landroid/support/constraint/a/a/b$c;

    invoke-virtual {v2, v3}, Landroid/support/constraint/a/a/c;->a(Landroid/support/constraint/a/a/b$c;)Landroid/support/constraint/a/a/b;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    sget-object v5, Landroid/support/constraint/a/a/b$b;->b:Landroid/support/constraint/a/a/b$b;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual/range {v1 .. v7}, Landroid/support/constraint/a/a/b;->a(Landroid/support/constraint/a/a/b;IILandroid/support/constraint/a/a/b$b;IZ)Z

    sget-object v1, Landroid/support/constraint/a/a/b$c;->c:Landroid/support/constraint/a/a/b$c;

    invoke-virtual {v0, v1}, Landroid/support/constraint/a/a/c;->a(Landroid/support/constraint/a/a/b$c;)Landroid/support/constraint/a/a/b;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/constraint/a/a/b;->i()V

    sget-object v1, Landroid/support/constraint/a/a/b$c;->e:Landroid/support/constraint/a/a/b$c;

    invoke-virtual {v0, v1}, Landroid/support/constraint/a/a/c;->a(Landroid/support/constraint/a/a/b$c;)Landroid/support/constraint/a/a/b;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/constraint/a/a/b;->i()V

    :cond_d
    const/4 v1, 0x0

    cmpl-float v1, v9, v1

    if-ltz v1, :cond_e

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v1, v9, v1

    if-eqz v1, :cond_e

    invoke-virtual {v0, v9}, Landroid/support/constraint/a/a/c;->a(F)V

    :cond_e
    iget v1, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->x:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_f

    iget v1, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->x:F

    const/high16 v2, 0x3f000000    # 0.5f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_f

    iget v1, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->x:F

    invoke-virtual {v0, v1}, Landroid/support/constraint/a/a/c;->b(F)V

    :cond_f
    iget-boolean v1, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->I:Z

    if-nez v1, :cond_1b

    sget-object v1, Landroid/support/constraint/a/a/c$a;->c:Landroid/support/constraint/a/a/c$a;

    invoke-virtual {v0, v1}, Landroid/support/constraint/a/a/c;->a(Landroid/support/constraint/a/a/c$a;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/constraint/a/a/c;->d(I)V

    iget v1, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_10

    iget-object v1, p0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/a/a/d;

    invoke-virtual {v1}, Landroid/support/constraint/a/a/d;->k()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/constraint/a/a/c;->d(I)V

    :cond_10
    :goto_8
    iget-boolean v1, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->J:Z

    if-nez v1, :cond_1c

    sget-object v1, Landroid/support/constraint/a/a/c$a;->c:Landroid/support/constraint/a/a/c$a;

    invoke-virtual {v0, v1}, Landroid/support/constraint/a/a/c;->b(Landroid/support/constraint/a/a/c$a;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/constraint/a/a/c;->e(I)V

    iget v1, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_11

    iget-object v1, p0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/a/a/d;

    invoke-virtual {v1}, Landroid/support/constraint/a/a/d;->l()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/constraint/a/a/c;->d(I)V

    :cond_11
    :goto_9
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_13

    iget v1, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->F:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_12

    iget v1, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->G:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_13

    :cond_12
    iget v1, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->F:I

    iget v2, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->G:I

    invoke-virtual {v0, v1, v2}, Landroid/support/constraint/a/a/c;->a(II)V

    :cond_13
    iget-object v1, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->y:Ljava/lang/String;

    if-eqz v1, :cond_14

    iget-object v1, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/constraint/a/a/c;->a(Ljava/lang/String;)V

    :cond_14
    iget v1, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->B:F

    invoke-virtual {v0, v1}, Landroid/support/constraint/a/a/c;->c(F)V

    iget v1, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->C:F

    invoke-virtual {v0, v1}, Landroid/support/constraint/a/a/c;->d(F)V

    iget v1, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->D:I

    invoke-virtual {v0, v1}, Landroid/support/constraint/a/a/c;->i(I)V

    iget v1, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->E:I

    invoke-virtual {v0, v1}, Landroid/support/constraint/a/a/c;->j(I)V

    goto/16 :goto_1

    :cond_15
    iget v9, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->m:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_8

    iget v6, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->m:I

    goto/16 :goto_2

    :cond_16
    iget v9, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->p:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_1e

    iget v3, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->p:I

    move v9, v1

    move v10, v4

    move v1, v6

    move v6, v2

    move v2, v7

    move v7, v3

    goto/16 :goto_3

    :cond_17
    const/4 v2, -0x1

    if-eq v1, v2, :cond_9

    invoke-direct {p0, v1}, Landroid/support/constraint/ConstraintLayout;->a(I)Landroid/support/constraint/a/a/c;

    move-result-object v2

    if-eqz v2, :cond_9

    sget-object v1, Landroid/support/constraint/a/a/b$c;->b:Landroid/support/constraint/a/a/b$c;

    sget-object v3, Landroid/support/constraint/a/a/b$c;->d:Landroid/support/constraint/a/a/b$c;

    iget v4, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftMargin:I

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/a/a/c;->a(Landroid/support/constraint/a/a/b$c;Landroid/support/constraint/a/a/c;Landroid/support/constraint/a/a/b$c;II)V

    goto/16 :goto_4

    :cond_18
    const/4 v1, -0x1

    if-eq v7, v1, :cond_a

    invoke-direct {p0, v7}, Landroid/support/constraint/ConstraintLayout;->a(I)Landroid/support/constraint/a/a/c;

    move-result-object v2

    if-eqz v2, :cond_a

    sget-object v1, Landroid/support/constraint/a/a/b$c;->d:Landroid/support/constraint/a/a/b$c;

    sget-object v3, Landroid/support/constraint/a/a/b$c;->d:Landroid/support/constraint/a/a/b$c;

    iget v4, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightMargin:I

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/a/a/c;->a(Landroid/support/constraint/a/a/b$c;Landroid/support/constraint/a/a/c;Landroid/support/constraint/a/a/b$c;II)V

    goto/16 :goto_5

    :cond_19
    iget v1, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->i:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_b

    iget v1, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->i:I

    invoke-direct {p0, v1}, Landroid/support/constraint/ConstraintLayout;->a(I)Landroid/support/constraint/a/a/c;

    move-result-object v2

    if-eqz v2, :cond_b

    sget-object v1, Landroid/support/constraint/a/a/b$c;->c:Landroid/support/constraint/a/a/b$c;

    sget-object v3, Landroid/support/constraint/a/a/b$c;->e:Landroid/support/constraint/a/a/b$c;

    iget v4, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topMargin:I

    iget v5, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->r:I

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/a/a/c;->a(Landroid/support/constraint/a/a/b$c;Landroid/support/constraint/a/a/c;Landroid/support/constraint/a/a/b$c;II)V

    goto/16 :goto_6

    :cond_1a
    iget v1, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->k:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_c

    iget v1, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->k:I

    invoke-direct {p0, v1}, Landroid/support/constraint/ConstraintLayout;->a(I)Landroid/support/constraint/a/a/c;

    move-result-object v2

    if-eqz v2, :cond_c

    sget-object v1, Landroid/support/constraint/a/a/b$c;->e:Landroid/support/constraint/a/a/b$c;

    sget-object v3, Landroid/support/constraint/a/a/b$c;->e:Landroid/support/constraint/a/a/b$c;

    iget v4, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomMargin:I

    iget v5, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->t:I

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/a/a/c;->a(Landroid/support/constraint/a/a/b$c;Landroid/support/constraint/a/a/c;Landroid/support/constraint/a/a/b$c;II)V

    goto/16 :goto_7

    :cond_1b
    sget-object v1, Landroid/support/constraint/a/a/c$a;->a:Landroid/support/constraint/a/a/c$a;

    invoke-virtual {v0, v1}, Landroid/support/constraint/a/a/c;->a(Landroid/support/constraint/a/a/c$a;)V

    iget v1, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    invoke-virtual {v0, v1}, Landroid/support/constraint/a/a/c;->d(I)V

    goto/16 :goto_8

    :cond_1c
    sget-object v1, Landroid/support/constraint/a/a/c$a;->a:Landroid/support/constraint/a/a/c$a;

    invoke-virtual {v0, v1}, Landroid/support/constraint/a/a/c;->b(Landroid/support/constraint/a/a/c$a;)V

    iget v1, v8, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    invoke-virtual {v0, v1}, Landroid/support/constraint/a/a/c;->e(I)V

    goto/16 :goto_9

    :cond_1d
    return-void

    :cond_1e
    move v9, v1

    move v10, v4

    move v1, v6

    move v6, v2

    move v2, v7

    move v7, v3

    goto/16 :goto_3
.end method


# virtual methods
.method public a(Landroid/util/AttributeSet;)Landroid/support/constraint/ConstraintLayout$LayoutParams;
    .locals 2

    new-instance v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/constraint/ConstraintLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected a()V
    .locals 3

    const/4 v2, 0x0

    invoke-static {v2}, Landroid/support/constraint/a/a/a;->a(Z)V

    iget v0, p0, Landroid/support/constraint/ConstraintLayout;->m:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/a/a/d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/constraint/a/a/d;->a(Z)V

    :goto_0
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/a/a/d;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/d;->A()V

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/a/a/d;

    invoke-virtual {v0, v2}, Landroid/support/constraint/a/a/d;->a(Z)V

    goto :goto_0
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, p1}, Landroid/support/constraint/ConstraintLayout;->onViewAdded(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected b()Landroid/support/constraint/ConstraintLayout$LayoutParams;
    .locals 2

    const/4 v1, -0x2

    new-instance v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/support/constraint/ConstraintLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    instance-of v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    return v0
.end method

.method protected synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->b()Landroid/support/constraint/ConstraintLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/support/constraint/ConstraintLayout;->a(Landroid/util/AttributeSet;)Landroid/support/constraint/ConstraintLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/constraint/ConstraintLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getMaxHeight()I
    .locals 1

    iget v0, p0, Landroid/support/constraint/ConstraintLayout;->k:I

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    iget v0, p0, Landroid/support/constraint/ConstraintLayout;->j:I

    return v0
.end method

.method public getMinHeight()I
    .locals 1

    iget v0, p0, Landroid/support/constraint/ConstraintLayout;->i:I

    return v0
.end method

.method public getMinWidth()I
    .locals 1

    iget v0, p0, Landroid/support/constraint/ConstraintLayout;->h:I

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 7

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_0

    iget-boolean v4, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->L:Z

    if-nez v4, :cond_0

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->T:Landroid/support/constraint/a/a/c;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/c;->m()I

    move-result v4

    invoke-virtual {v0}, Landroid/support/constraint/a/a/c;->n()I

    move-result v5

    invoke-virtual {v0}, Landroid/support/constraint/a/a/c;->k()I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {v0}, Landroid/support/constraint/a/a/c;->l()I

    move-result v0

    add-int/2addr v0, v5

    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 13

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingTop()I

    move-result v1

    iget v2, p0, Landroid/support/constraint/ConstraintLayout;->c:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget v2, p0, Landroid/support/constraint/ConstraintLayout;->d:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget v2, p0, Landroid/support/constraint/ConstraintLayout;->f:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget v2, p0, Landroid/support/constraint/ConstraintLayout;->e:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget v2, p0, Landroid/support/constraint/ConstraintLayout;->c:I

    if-ne v2, v0, :cond_0

    iget v2, p0, Landroid/support/constraint/ConstraintLayout;->d:I

    if-ne v2, v1, :cond_0

    iget v2, p0, Landroid/support/constraint/ConstraintLayout;->e:I

    if-ne v2, p1, :cond_0

    iget v2, p0, Landroid/support/constraint/ConstraintLayout;->f:I

    if-eq v2, p2, :cond_1

    :cond_0
    iget-object v2, p0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/a/a/d;

    invoke-virtual {v2, v0}, Landroid/support/constraint/a/a/d;->b(I)V

    iget-object v2, p0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/a/a/d;

    invoke-virtual {v2, v1}, Landroid/support/constraint/a/a/d;->c(I)V

    invoke-direct {p0, p1, p2}, Landroid/support/constraint/ConstraintLayout;->b(II)V

    :cond_1
    iget-boolean v2, p0, Landroid/support/constraint/ConstraintLayout;->l:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout;->l:Z

    invoke-direct {p0}, Landroid/support/constraint/ConstraintLayout;->c()V

    :cond_2
    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->c:I

    iput v1, p0, Landroid/support/constraint/ConstraintLayout;->d:I

    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->e:I

    iput p2, p0, Landroid/support/constraint/ConstraintLayout;->f:I

    invoke-direct {p0, p1, p2}, Landroid/support/constraint/ConstraintLayout;->a(II)V

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v2

    if-lez v2, :cond_3

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->a()V

    :cond_3
    const/4 v6, 0x0

    iget-object v2, p0, Landroid/support/constraint/ConstraintLayout;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingBottom()I

    move-result v2

    add-int v9, v1, v2

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingRight()I

    move-result v1

    add-int v10, v0, v1

    if-lez v8, :cond_c

    const/4 v5, 0x0

    const/4 v0, 0x0

    move v7, v0

    :goto_0
    if-ge v7, v8, :cond_b

    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/a/a/c;

    instance-of v1, v0, Landroid/support/constraint/a/a/e;

    if-eqz v1, :cond_4

    move v0, v6

    :goto_1
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    move v6, v0

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Landroid/support/constraint/a/a/c;->u()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-nez v1, :cond_5

    move v0, v6

    goto :goto_1

    :cond_5
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_6

    move v0, v6

    goto :goto_1

    :cond_6
    invoke-virtual {v0}, Landroid/support/constraint/a/a/c;->k()I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v0}, Landroid/support/constraint/a/a/c;->l()I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iget v11, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    const/4 v12, -0x2

    if-ne v11, v12, :cond_a

    iget v4, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    invoke-static {p1, v10, v4}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v4

    :cond_7
    :goto_2
    invoke-virtual {v1, v4, v3}, Landroid/view/View;->measure(II)V

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v0}, Landroid/support/constraint/a/a/c;->k()I

    move-result v11

    if-eq v3, v11, :cond_f

    invoke-virtual {v0, v3}, Landroid/support/constraint/a/a/c;->d(I)V

    const/4 v3, 0x1

    :goto_3
    invoke-virtual {v0}, Landroid/support/constraint/a/a/c;->l()I

    move-result v5

    if-eq v4, v5, :cond_8

    invoke-virtual {v0, v4}, Landroid/support/constraint/a/a/c;->e(I)V

    const/4 v3, 0x1

    :cond_8
    iget-boolean v2, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->K:Z

    if-eqz v2, :cond_9

    invoke-virtual {v1}, Landroid/view/View;->getBaseline()I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_9

    invoke-virtual {v0}, Landroid/support/constraint/a/a/c;->t()I

    move-result v4

    if-eq v2, v4, :cond_9

    invoke-virtual {v0, v2}, Landroid/support/constraint/a/a/c;->h(I)V

    const/4 v3, 0x1

    :cond_9
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v0, v2, :cond_e

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredState()I

    move-result v0

    invoke-static {v6, v0}, Landroid/support/constraint/ConstraintLayout;->combineMeasuredStates(II)I

    move-result v0

    move v5, v3

    goto/16 :goto_1

    :cond_a
    iget v11, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    const/4 v12, -0x2

    if-ne v11, v12, :cond_7

    iget v3, v2, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    invoke-static {p2, v9, v3}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v3

    goto :goto_2

    :cond_b
    if-eqz v5, :cond_c

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->a()V

    :cond_c
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/a/a/d;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/d;->k()I

    move-result v0

    add-int/2addr v0, v10

    iget-object v1, p0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/a/a/d;

    invoke-virtual {v1}, Landroid/support/constraint/a/a/d;->l()I

    move-result v1

    add-int/2addr v1, v9

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_d

    invoke-static {v0, p1, v6}, Landroid/support/constraint/ConstraintLayout;->resolveSizeAndState(III)I

    move-result v0

    shl-int/lit8 v2, v6, 0x10

    invoke-static {v1, p2, v2}, Landroid/support/constraint/ConstraintLayout;->resolveSizeAndState(III)I

    move-result v1

    iget v2, p0, Landroid/support/constraint/ConstraintLayout;->j:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v2, p0, Landroid/support/constraint/ConstraintLayout;->k:I

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const v2, 0xffffff

    and-int/2addr v0, v2

    const v2, 0xffffff

    and-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/support/constraint/ConstraintLayout;->setMeasuredDimension(II)V

    :goto_4
    return-void

    :cond_d
    invoke-virtual {p0, v0, v1}, Landroid/support/constraint/ConstraintLayout;->setMeasuredDimension(II)V

    goto :goto_4

    :cond_e
    move v5, v3

    move v0, v6

    goto/16 :goto_1

    :cond_f
    move v3, v5

    goto :goto_3
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    :cond_0
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintLayout;->a(Landroid/view/View;)Landroid/support/constraint/a/a/c;

    move-result-object v0

    instance-of v1, p1, Landroid/support/constraint/Guideline;

    if-eqz v1, :cond_1

    instance-of v1, v0, Landroid/support/constraint/a/a/e;

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    new-instance v1, Landroid/support/constraint/a/a/e;

    invoke-direct {v1}, Landroid/support/constraint/a/a/e;-><init>()V

    iput-object v1, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->T:Landroid/support/constraint/a/a/c;

    iput-boolean v4, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->L:Z

    iget-object v1, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->T:Landroid/support/constraint/a/a/c;

    check-cast v1, Landroid/support/constraint/a/a/e;

    iget v2, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->H:I

    invoke-virtual {v1, v2}, Landroid/support/constraint/a/a/e;->k(I)V

    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->T:Landroid/support/constraint/a/a/c;

    :cond_1
    iget-object v1, p0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/a/a/d;

    invoke-virtual {v0, p1}, Landroid/support/constraint/a/a/c;->a(Ljava/lang/Object;)V

    iget-object v2, p0, Landroid/support/constraint/ConstraintLayout;->a:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v1, v0}, Landroid/support/constraint/a/a/d;->b(Landroid/support/constraint/a/a/c;)V

    invoke-virtual {v0, v1}, Landroid/support/constraint/a/a/c;->a(Landroid/support/constraint/a/a/c;)V

    iput-boolean v4, p0, Landroid/support/constraint/ConstraintLayout;->l:Z

    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->a:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/a/a/d;

    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintLayout;->a(Landroid/view/View;)Landroid/support/constraint/a/a/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/constraint/a/a/d;->c(Landroid/support/constraint/a/a/c;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/constraint/ConstraintLayout;->l:Z

    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, p1}, Landroid/support/constraint/ConstraintLayout;->onViewRemoved(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/constraint/ConstraintLayout;->l:Z

    return-void
.end method

.method protected setDebugDirectResolution(Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->b:Landroid/support/constraint/a/a/d;

    invoke-virtual {v0, p1}, Landroid/support/constraint/a/a/d;->a(Z)V

    return-void
.end method

.method public setMaxHeight(I)V
    .locals 0

    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->k:I

    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0

    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->j:I

    return-void
.end method

.method public setMinHeight(I)V
    .locals 0

    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->i:I

    return-void
.end method

.method public setMinWidth(I)V
    .locals 0

    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->h:I

    return-void
.end method
