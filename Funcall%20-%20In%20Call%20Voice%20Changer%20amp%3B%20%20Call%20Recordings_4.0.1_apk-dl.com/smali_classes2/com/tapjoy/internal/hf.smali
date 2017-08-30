.class public final Lcom/tapjoy/internal/hf;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/hf$a;
    }
.end annotation


# instance fields
.field private a:Lcom/tapjoy/internal/gn;

.field private b:Lcom/tapjoy/internal/hf$a;

.field private c:Lcom/tapjoy/internal/af;

.field private d:I

.field private e:I

.field private f:Ljava/util/ArrayList;

.field private g:Lcom/tapjoy/internal/gw;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tapjoy/internal/gn;Lcom/tapjoy/internal/hf$a;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 28
    sget-object v0, Lcom/tapjoy/internal/af;->a:Lcom/tapjoy/internal/af;

    iput-object v0, p0, Lcom/tapjoy/internal/hf;->c:Lcom/tapjoy/internal/af;

    .line 29
    iput v1, p0, Lcom/tapjoy/internal/hf;->d:I

    .line 30
    iput v1, p0, Lcom/tapjoy/internal/hf;->e:I

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/hf;->f:Ljava/util/ArrayList;

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/internal/hf;->g:Lcom/tapjoy/internal/gw;

    .line 36
    iput-object p2, p0, Lcom/tapjoy/internal/hf;->a:Lcom/tapjoy/internal/gn;

    .line 37
    iput-object p3, p0, Lcom/tapjoy/internal/hf;->b:Lcom/tapjoy/internal/hf$a;

    .line 38
    return-void
.end method

.method static synthetic a(Lcom/tapjoy/internal/hf;)Lcom/tapjoy/internal/hf$a;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/tapjoy/internal/hf;->b:Lcom/tapjoy/internal/hf$a;

    return-object v0
.end method

.method private a()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v2, 0x0

    .line 76
    .line 77
    iget-object v0, p0, Lcom/tapjoy/internal/hf;->a:Lcom/tapjoy/internal/gn;

    iget-object v0, v0, Lcom/tapjoy/internal/gn;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/gw;

    .line 78
    iget-object v4, v0, Lcom/tapjoy/internal/gw;->a:Lcom/tapjoy/internal/af;

    iget-object v5, p0, Lcom/tapjoy/internal/hf;->c:Lcom/tapjoy/internal/af;

    if-ne v4, v5, :cond_0

    .line 87
    :goto_1
    invoke-virtual {p0}, Lcom/tapjoy/internal/hf;->removeAllViews()V

    .line 88
    if-eqz v0, :cond_3

    .line 2093
    iput-object v0, p0, Lcom/tapjoy/internal/hf;->g:Lcom/tapjoy/internal/gw;

    .line 2095
    invoke-virtual {p0}, Lcom/tapjoy/internal/hf;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 2096
    iget-object v0, v0, Lcom/tapjoy/internal/gw;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/gv;

    .line 2097
    new-instance v6, Landroid/view/View;

    invoke-direct {v6, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2099
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v7, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2101
    iget-object v1, v0, Lcom/tapjoy/internal/gv;->l:Lcom/tapjoy/internal/gt;

    .line 3037
    iget-object v3, v1, Lcom/tapjoy/internal/gt;->b:Landroid/graphics/Bitmap;

    .line 2102
    iget-object v1, v0, Lcom/tapjoy/internal/gv;->m:Lcom/tapjoy/internal/gt;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/tapjoy/internal/gv;->m:Lcom/tapjoy/internal/gt;

    .line 4037
    iget-object v1, v1, Lcom/tapjoy/internal/gt;->b:Landroid/graphics/Bitmap;

    .line 2105
    :goto_3
    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v8, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 2106
    if-eqz v1, :cond_2

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object v1, v3

    .line 2109
    :goto_4
    invoke-static {v6, v8}, Lcom/tapjoy/internal/ag;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 2111
    new-instance v3, Lcom/tapjoy/internal/hf$1;

    invoke-direct {v3, p0, v1, v8}, Lcom/tapjoy/internal/hf$1;-><init>(Lcom/tapjoy/internal/hf;Landroid/graphics/drawable/BitmapDrawable;Landroid/graphics/drawable/BitmapDrawable;)V

    invoke-virtual {v6, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2125
    new-instance v1, Lcom/tapjoy/internal/hf$2;

    invoke-direct {v1, p0, v0}, Lcom/tapjoy/internal/hf$2;-><init>(Lcom/tapjoy/internal/hf;Lcom/tapjoy/internal/gv;)V

    invoke-virtual {v6, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2132
    invoke-virtual {v6, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2133
    invoke-virtual {p0, v6, v7}, Lcom/tapjoy/internal/hf;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 82
    :cond_0
    iget-object v4, v0, Lcom/tapjoy/internal/gw;->a:Lcom/tapjoy/internal/af;

    sget-object v5, Lcom/tapjoy/internal/af;->a:Lcom/tapjoy/internal/af;

    if-ne v4, v5, :cond_4

    :goto_5
    move-object v1, v0

    .line 85
    goto :goto_0

    :cond_1
    move-object v1, v2

    .line 2102
    goto :goto_3

    :cond_2
    move-object v1, v2

    .line 2106
    goto :goto_4

    .line 90
    :cond_3
    return-void

    :cond_4
    move-object v0, v1

    goto :goto_5

    :cond_5
    move-object v0, v1

    goto :goto_1
.end method


# virtual methods
.method protected final onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 44
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 45
    iget-object v0, p0, Lcom/tapjoy/internal/hf;->b:Lcom/tapjoy/internal/hf$a;

    invoke-interface {v0}, Lcom/tapjoy/internal/hf$a;->a()V

    .line 46
    return-void
.end method

.method protected final onMeasure(II)V
    .locals 14
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 50
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 51
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 53
    if-lt v0, v1, :cond_6

    .line 54
    iget-object v2, p0, Lcom/tapjoy/internal/hf;->c:Lcom/tapjoy/internal/af;

    sget-object v3, Lcom/tapjoy/internal/af;->c:Lcom/tapjoy/internal/af;

    if-eq v2, v3, :cond_0

    .line 55
    sget-object v2, Lcom/tapjoy/internal/af;->c:Lcom/tapjoy/internal/af;

    iput-object v2, p0, Lcom/tapjoy/internal/hf;->c:Lcom/tapjoy/internal/af;

    .line 56
    invoke-direct {p0}, Lcom/tapjoy/internal/hf;->a()V

    .line 66
    :cond_0
    :goto_0
    iget v2, p0, Lcom/tapjoy/internal/hf;->d:I

    if-ne v2, v0, :cond_1

    iget v2, p0, Lcom/tapjoy/internal/hf;->e:I

    if-eq v2, v1, :cond_a

    .line 67
    :cond_1
    iput v0, p0, Lcom/tapjoy/internal/hf;->d:I

    .line 68
    iput v1, p0, Lcom/tapjoy/internal/hf;->e:I

    .line 1138
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1139
    int-to-float v2, v0

    .line 1140
    int-to-float v1, v1

    .line 1141
    iget-object v0, p0, Lcom/tapjoy/internal/hf;->g:Lcom/tapjoy/internal/gw;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/tapjoy/internal/hf;->g:Lcom/tapjoy/internal/gw;

    iget-object v0, v0, Lcom/tapjoy/internal/gw;->b:Landroid/graphics/PointF;

    if-eqz v0, :cond_b

    .line 1142
    iget-object v0, p0, Lcom/tapjoy/internal/hf;->g:Lcom/tapjoy/internal/gw;

    iget-object v0, v0, Lcom/tapjoy/internal/gw;->b:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v0, v2

    iget-object v5, p0, Lcom/tapjoy/internal/hf;->g:Lcom/tapjoy/internal/gw;

    iget-object v5, v5, Lcom/tapjoy/internal/gw;->b:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    div-float/2addr v0, v5

    div-float/2addr v0, v1

    .line 1143
    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v5, v0, v5

    if-gez v5, :cond_7

    .line 1145
    iget-object v0, p0, Lcom/tapjoy/internal/hf;->g:Lcom/tapjoy/internal/gw;

    iget-object v0, v0, Lcom/tapjoy/internal/gw;->b:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v0, v2

    iget-object v3, p0, Lcom/tapjoy/internal/hf;->g:Lcom/tapjoy/internal/gw;

    iget-object v3, v3, Lcom/tapjoy/internal/gw;->b:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    div-float/2addr v0, v3

    .line 1146
    sub-float/2addr v1, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    move v3, v2

    move v5, v4

    move v4, v1

    move v2, v0

    .line 1156
    :goto_1
    invoke-static {p0}, Lcom/tapjoy/internal/ah;->a(Landroid/view/ViewGroup;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1157
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1158
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/gv;

    .line 1160
    iget-object v6, v0, Lcom/tapjoy/internal/gv;->a:Lcom/tapjoy/internal/gx;

    invoke-virtual {v6, v3, v2}, Lcom/tapjoy/internal/gx;->a(FF)F

    move-result v8

    .line 1161
    iget-object v6, v0, Lcom/tapjoy/internal/gv;->b:Lcom/tapjoy/internal/gx;

    invoke-virtual {v6, v3, v2}, Lcom/tapjoy/internal/gx;->a(FF)F

    move-result v6

    .line 1162
    iget-object v7, v0, Lcom/tapjoy/internal/gv;->c:Lcom/tapjoy/internal/gx;

    invoke-virtual {v7, v3, v2}, Lcom/tapjoy/internal/gx;->a(FF)F

    move-result v10

    .line 1163
    iget-object v7, v0, Lcom/tapjoy/internal/gv;->d:Lcom/tapjoy/internal/gx;

    invoke-virtual {v7, v3, v2}, Lcom/tapjoy/internal/gx;->a(FF)F

    move-result v11

    .line 1165
    iget v7, v0, Lcom/tapjoy/internal/gv;->e:I

    .line 1166
    iget v0, v0, Lcom/tapjoy/internal/gv;->f:I

    .line 1168
    const/16 v12, 0xe

    if-ne v7, v12, :cond_3

    .line 1169
    const/16 v7, 0x9

    .line 1170
    sub-float v12, v3, v10

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    add-float/2addr v8, v12

    .line 1172
    :cond_3
    const/16 v12, 0xf

    if-ne v0, v12, :cond_4

    .line 1173
    const/16 v0, 0xa

    .line 1174
    sub-float v12, v2, v11

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    add-float/2addr v6, v12

    .line 1177
    :cond_4
    const/4 v12, -0x1

    invoke-virtual {v1, v7, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1178
    const/4 v12, -0x1

    invoke-virtual {v1, v0, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1179
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    iput v10, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 1180
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v10

    iput v10, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 1182
    const/16 v10, 0x9

    if-ne v7, v10, :cond_8

    .line 1183
    add-float v7, v5, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    iput v7, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 1189
    :cond_5
    :goto_3
    const/16 v7, 0xa

    if-ne v0, v7, :cond_9

    .line 1190
    add-float v0, v4, v6

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_2

    .line 60
    :cond_6
    iget-object v2, p0, Lcom/tapjoy/internal/hf;->c:Lcom/tapjoy/internal/af;

    sget-object v3, Lcom/tapjoy/internal/af;->b:Lcom/tapjoy/internal/af;

    if-eq v2, v3, :cond_0

    .line 61
    sget-object v2, Lcom/tapjoy/internal/af;->b:Lcom/tapjoy/internal/af;

    iput-object v2, p0, Lcom/tapjoy/internal/hf;->c:Lcom/tapjoy/internal/af;

    .line 62
    invoke-direct {p0}, Lcom/tapjoy/internal/hf;->a()V

    goto/16 :goto_0

    .line 1149
    :cond_7
    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v5

    if-lez v0, :cond_b

    .line 1151
    iget-object v0, p0, Lcom/tapjoy/internal/hf;->g:Lcom/tapjoy/internal/gw;

    iget-object v0, v0, Lcom/tapjoy/internal/gw;->b:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    mul-float/2addr v0, v1

    iget-object v4, p0, Lcom/tapjoy/internal/hf;->g:Lcom/tapjoy/internal/gw;

    iget-object v4, v4, Lcom/tapjoy/internal/gw;->b:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    div-float/2addr v0, v4

    .line 1152
    sub-float/2addr v2, v0

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    move v4, v3

    move v5, v2

    move v2, v1

    move v3, v0

    .line 1153
    goto/16 :goto_1

    .line 1185
    :cond_8
    const/16 v10, 0xb

    if-ne v7, v10, :cond_5

    .line 1186
    add-float v7, v5, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    iput v7, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_3

    .line 1192
    :cond_9
    const/16 v7, 0xc

    if-ne v0, v7, :cond_2

    .line 1193
    add-float v0, v4, v6

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_2

    .line 72
    :cond_a
    invoke-super/range {p0 .. p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 73
    return-void

    :cond_b
    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v1

    goto/16 :goto_1
.end method
