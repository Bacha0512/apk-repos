.class public Lcom/weirdvoice/ui/incall/InCallInfoGrid;
.super Landroid/widget/FrameLayout;
.source "InCallInfoGrid.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/weirdvoice/ui/incall/InCallInfoGrid$CallDataObserver;
    }
.end annotation


# static fields
.field private static final THIS_FILE:Ljava/lang/String; = "InCallInfoGrid"


# instance fields
.field private final handler:Landroid/os/Handler;

.field private mAdapter:Landroid/widget/ListAdapter;

.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mObserver:Lcom/weirdvoice/ui/incall/InCallInfoGrid$CallDataObserver;

.field private minColumnWidth:I

.field private minRowHeight:I

.field private final postLayout:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/weirdvoice/ui/incall/InCallInfoGrid;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v1, 0x190

    .line 50
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/weirdvoice/ui/incall/InCallInfoGrid;->mItems:Ljava/util/ArrayList;

    .line 53
    iput v1, p0, Lcom/weirdvoice/ui/incall/InCallInfoGrid;->minColumnWidth:I

    .line 54
    iput v1, p0, Lcom/weirdvoice/ui/incall/InCallInfoGrid;->minRowHeight:I

    .line 101
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/weirdvoice/ui/incall/InCallInfoGrid;->handler:Landroid/os/Handler;

    .line 102
    new-instance v0, Lcom/weirdvoice/ui/incall/InCallInfoGrid$1;

    invoke-direct {v0, p0}, Lcom/weirdvoice/ui/incall/InCallInfoGrid$1;-><init>(Lcom/weirdvoice/ui/incall/InCallInfoGrid;)V

    iput-object v0, p0, Lcom/weirdvoice/ui/incall/InCallInfoGrid;->postLayout:Ljava/lang/Runnable;

    .line 51
    return-void
.end method


# virtual methods
.method protected declared-synchronized onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 111
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 112
    :try_start_0
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/InCallInfoGrid;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/weirdvoice/ui/incall/InCallInfoGrid;->postLayout:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 114
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    monitor-exit p0

    return-void

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized populate()V
    .locals 19

    .prologue
    .line 119
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/ui/incall/InCallInfoGrid;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v16, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v16, :cond_1

    .line 215
    :cond_0
    monitor-exit p0

    return-void

    .line 126
    :cond_1
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/weirdvoice/ui/incall/InCallInfoGrid;->getWindowToken()Landroid/os/IBinder;

    move-result-object v16

    if-eqz v16, :cond_0

    .line 130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/ui/incall/InCallInfoGrid;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    .line 131
    .local v4, "count":I
    const-string v16, "InCallInfoGrid"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "Populate "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " children"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-virtual/range {p0 .. p0}, Lcom/weirdvoice/ui/incall/InCallInfoGrid;->getWidth()I

    move-result v16

    invoke-virtual/range {p0 .. p0}, Lcom/weirdvoice/ui/incall/InCallInfoGrid;->getPaddingRight()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lcom/weirdvoice/ui/incall/InCallInfoGrid;->getPaddingLeft()I

    move-result v18

    add-int v17, v17, v18

    sub-int v15, v16, v17

    .line 136
    .local v15, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/weirdvoice/ui/incall/InCallInfoGrid;->getHeight()I

    move-result v16

    invoke-virtual/range {p0 .. p0}, Lcom/weirdvoice/ui/incall/InCallInfoGrid;->getPaddingTop()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lcom/weirdvoice/ui/incall/InCallInfoGrid;->getPaddingBottom()I

    move-result v18

    add-int v17, v17, v18

    sub-int v6, v16, v17

    .line 137
    .local v6, "height":I
    move v3, v15

    .line 138
    .local v3, "cellWidth":I
    move v2, v6

    .line 139
    .local v2, "cellHeight":I
    const/4 v10, 0x1

    .line 140
    .local v10, "numRows":I
    const/4 v9, 0x1

    .line 141
    .local v9, "numColumns":I
    if-lez v4, :cond_5

    .line 142
    int-to-float v0, v15

    move/from16 v16, v0

    const/high16 v17, 0x3f800000    # 1.0f

    mul-float v16, v16, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/weirdvoice/ui/incall/InCallInfoGrid;->minColumnWidth:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x3f800000    # 1.0f

    mul-float v17, v17, v18

    div-float v16, v16, v17

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->floor(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-int v14, v0

    .line 143
    .local v14, "possibleColumns":I
    if-gtz v14, :cond_2

    .line 144
    const/4 v14, 0x1

    .line 146
    :cond_2
    invoke-static {v14, v4}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 147
    div-int v10, v4, v9

    .line 149
    const-string v16, "InCallInfoGrid"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "Render a grid of "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " x "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/weirdvoice/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    div-int v3, v15, v9

    .line 152
    div-int v2, v6, v10

    .line 155
    move-object/from16 v0, p0

    iget v0, v0, Lcom/weirdvoice/ui/incall/InCallInfoGrid;->minRowHeight:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v2, v0, :cond_3

    .line 156
    const-string v16, "InCallInfoGrid"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "May render weird... min height not correct "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    :cond_3
    if-lez v2, :cond_4

    if-gtz v3, :cond_5

    .line 159
    :cond_4
    const-string v16, "InCallInfoGrid"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "The call grid cannot render "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "x"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 160
    const-string v18, " for "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "x"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 159
    invoke-static/range {v16 .. v17}, Lcom/weirdvoice/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    move-object/from16 v0, p0

    iget v3, v0, Lcom/weirdvoice/ui/incall/InCallInfoGrid;->minColumnWidth:I

    .line 162
    move-object/from16 v0, p0

    iget v2, v0, Lcom/weirdvoice/ui/incall/InCallInfoGrid;->minRowHeight:I

    .line 167
    .end local v14    # "possibleColumns":I
    :cond_5
    const/4 v5, -0x1

    .line 168
    .local v5, "curIndex":I
    const/4 v5, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/ui/incall/InCallInfoGrid;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Landroid/widget/ListAdapter;->getCount()I

    move-result v16

    move/from16 v0, v16

    if-lt v5, v0, :cond_6

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/ui/incall/InCallInfoGrid;->mItems:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/ui/incall/InCallInfoGrid;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Landroid/widget/ListAdapter;->getCount()I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_0

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/ui/incall/InCallInfoGrid;->mItems:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    add-int/lit8 v5, v16, -0x1

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/ui/incall/InCallInfoGrid;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Landroid/widget/ListAdapter;->getCount()I

    move-result v16

    move/from16 v0, v16

    if-lt v5, v0, :cond_0

    .line 211
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/weirdvoice/ui/incall/InCallInfoGrid;->removeViewAt(I)V

    .line 210
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 170
    :cond_6
    const/4 v7, 0x0

    .line 171
    .local v7, "ii":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/ui/incall/InCallInfoGrid;->mItems:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    move/from16 v0, v16

    if-le v0, v5, :cond_7

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/ui/incall/InCallInfoGrid;->mItems:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "ii":Landroid/view/View;
    check-cast v7, Landroid/view/View;

    .line 174
    .restart local v7    # "ii":Landroid/view/View;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/ui/incall/InCallInfoGrid;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-interface {v0, v5, v7, v1}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/ui/incall/InCallInfoGrid;->mItems:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    move/from16 v0, v16

    if-le v0, v5, :cond_8

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/ui/incall/InCallInfoGrid;->mItems:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 182
    :goto_2
    rem-int v12, v5, v9

    .line 183
    .local v12, "posX":I
    div-int v13, v5, v9

    .line 184
    .local v13, "posY":I
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 185
    .local v8, "lp":Landroid/widget/FrameLayout$LayoutParams;
    if-nez v8, :cond_9

    .line 186
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    .end local v8    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-direct {v8, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 191
    .restart local v8    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :goto_3
    mul-int v16, v12, v3

    move/from16 v0, v16

    iput v0, v8, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 192
    mul-int v16, v13, v2

    move/from16 v0, v16

    iput v0, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 193
    invoke-virtual {v7, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 195
    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    .line 196
    .local v11, "p":Landroid/view/ViewParent;
    if-nez v11, :cond_a

    .line 197
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/weirdvoice/ui/incall/InCallInfoGrid;->addView(Landroid/view/View;)V

    .line 205
    :goto_4
    invoke-virtual {v7}, Landroid/view/View;->forceLayout()V

    .line 168
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 178
    .end local v8    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v11    # "p":Landroid/view/ViewParent;
    .end local v12    # "posX":I
    .end local v13    # "posY":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/ui/incall/InCallInfoGrid;->mItems:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 119
    .end local v2    # "cellHeight":I
    .end local v3    # "cellWidth":I
    .end local v4    # "count":I
    .end local v5    # "curIndex":I
    .end local v6    # "height":I
    .end local v7    # "ii":Landroid/view/View;
    .end local v9    # "numColumns":I
    .end local v10    # "numRows":I
    .end local v15    # "width":I
    :catchall_0
    move-exception v16

    monitor-exit p0

    throw v16

    .line 188
    .restart local v2    # "cellHeight":I
    .restart local v3    # "cellWidth":I
    .restart local v4    # "count":I
    .restart local v5    # "curIndex":I
    .restart local v6    # "height":I
    .restart local v7    # "ii":Landroid/view/View;
    .restart local v8    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v9    # "numColumns":I
    .restart local v10    # "numRows":I
    .restart local v12    # "posX":I
    .restart local v13    # "posY":I
    .restart local v15    # "width":I
    :cond_9
    :try_start_2
    iput v2, v8, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 189
    iput v3, v8, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_3

    .line 199
    .restart local v11    # "p":Landroid/view/ViewParent;
    :cond_a
    move-object/from16 v0, p0

    if-ne v11, v0, :cond_b

    .line 200
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Lcom/weirdvoice/ui/incall/InCallInfoGrid;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4

    .line 202
    :cond_b
    const-string v16, "InCallInfoGrid"

    const-string v17, "Call card already attached to somebody else"

    invoke-static/range {v16 .. v17}, Lcom/weirdvoice/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4
.end method

.method public removeViewAt(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 69
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/weirdvoice/ui/incall/InCallInfoGrid;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 70
    :cond_0
    const-string v1, "InCallInfoGrid"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Trying to remove unknown view at "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/weirdvoice/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->removeViewAt(I)V

    .line 80
    return-void

    .line 72
    :cond_1
    iget-object v1, p0, Lcom/weirdvoice/ui/incall/InCallInfoGrid;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 73
    .local v0, "ii":Landroid/view/View;
    instance-of v1, v0, Lcom/weirdvoice/ui/incall/InCallCard;

    if-eqz v1, :cond_2

    .line 74
    check-cast v0, Lcom/weirdvoice/ui/incall/InCallCard;

    .end local v0    # "ii":Landroid/view/View;
    invoke-virtual {v0}, Lcom/weirdvoice/ui/incall/InCallCard;->terminate()V

    .line 76
    :cond_2
    iget-object v1, p0, Lcom/weirdvoice/ui/incall/InCallInfoGrid;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/InCallInfoGrid;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/InCallInfoGrid;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/weirdvoice/ui/incall/InCallInfoGrid;->mObserver:Lcom/weirdvoice/ui/incall/InCallInfoGrid$CallDataObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 87
    invoke-virtual {p0}, Lcom/weirdvoice/ui/incall/InCallInfoGrid;->terminate()V

    .line 90
    :cond_0
    iput-object p1, p0, Lcom/weirdvoice/ui/incall/InCallInfoGrid;->mAdapter:Landroid/widget/ListAdapter;

    .line 92
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/InCallInfoGrid;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_2

    .line 93
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/InCallInfoGrid;->mObserver:Lcom/weirdvoice/ui/incall/InCallInfoGrid$CallDataObserver;

    if-nez v0, :cond_1

    .line 94
    new-instance v0, Lcom/weirdvoice/ui/incall/InCallInfoGrid$CallDataObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/weirdvoice/ui/incall/InCallInfoGrid$CallDataObserver;-><init>(Lcom/weirdvoice/ui/incall/InCallInfoGrid;Lcom/weirdvoice/ui/incall/InCallInfoGrid$CallDataObserver;)V

    iput-object v0, p0, Lcom/weirdvoice/ui/incall/InCallInfoGrid;->mObserver:Lcom/weirdvoice/ui/incall/InCallInfoGrid$CallDataObserver;

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/weirdvoice/ui/incall/InCallInfoGrid;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/weirdvoice/ui/incall/InCallInfoGrid;->mObserver:Lcom/weirdvoice/ui/incall/InCallInfoGrid$CallDataObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 97
    invoke-virtual {p0}, Lcom/weirdvoice/ui/incall/InCallInfoGrid;->populate()V

    .line 99
    :cond_2
    return-void
.end method

.method public setMinCellSize(II)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 63
    iput p1, p0, Lcom/weirdvoice/ui/incall/InCallInfoGrid;->minColumnWidth:I

    .line 64
    iput p2, p0, Lcom/weirdvoice/ui/incall/InCallInfoGrid;->minRowHeight:I

    .line 65
    return-void
.end method

.method public declared-synchronized terminate()V
    .locals 2

    .prologue
    .line 232
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/weirdvoice/ui/incall/InCallInfoGrid;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-gez v0, :cond_0

    .line 235
    iget-object v1, p0, Lcom/weirdvoice/ui/incall/InCallInfoGrid;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    monitor-exit p0

    return-void

    .line 233
    :cond_0
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/weirdvoice/ui/incall/InCallInfoGrid;->removeViewAt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 232
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
