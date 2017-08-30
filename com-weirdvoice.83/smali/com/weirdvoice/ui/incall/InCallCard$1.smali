.class Lcom/weirdvoice/ui/incall/InCallCard$1;
.super Ljava/lang/Object;
.source "InCallCard.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/weirdvoice/ui/incall/InCallCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/weirdvoice/ui/incall/InCallCard;


# direct methods
.method constructor <init>(Lcom/weirdvoice/ui/incall/InCallCard;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/weirdvoice/ui/incall/InCallCard$1;->this$0:Lcom/weirdvoice/ui/incall/InCallCard;

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/high16 v12, 0x40000000    # 2.0f

    const/4 v9, 0x0

    const/4 v11, 0x0

    .line 259
    iget-object v8, p0, Lcom/weirdvoice/ui/incall/InCallCard$1;->this$0:Lcom/weirdvoice/ui/incall/InCallCard;

    invoke-virtual {v8}, Lcom/weirdvoice/ui/incall/InCallCard;->getWidth()I

    move-result v8

    int-to-float v7, v8

    .line 260
    .local v7, "w":F
    iget-object v8, p0, Lcom/weirdvoice/ui/incall/InCallCard$1;->this$0:Lcom/weirdvoice/ui/incall/InCallCard;

    invoke-virtual {v8}, Lcom/weirdvoice/ui/incall/InCallCard;->getHeight()I

    move-result v8

    int-to-float v1, v8

    .line 261
    .local v1, "h":F
    cmpl-float v8, v7, v9

    if-lez v8, :cond_0

    cmpl-float v8, v1, v9

    if-lez v8, :cond_0

    .line 262
    div-float v0, v7, v1

    .line 263
    .local v0, "currentRatio":F
    move v4, v7

    .line 264
    .local v4, "newWidth":F
    move v3, v1

    .line 265
    .local v3, "newHeight":F
    const-string v8, "InCallCard"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Current ratio is "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    # getter for: Lcom/weirdvoice/ui/incall/InCallCard;->minRatio:F
    invoke-static {}, Lcom/weirdvoice/ui/incall/InCallCard;->access$0()F

    move-result v8

    cmpg-float v8, v0, v8

    if-gez v8, :cond_1

    .line 267
    # getter for: Lcom/weirdvoice/ui/incall/InCallCard;->minRatio:F
    invoke-static {}, Lcom/weirdvoice/ui/incall/InCallCard;->access$0()F

    move-result v8

    div-float v3, v7, v8

    .line 268
    sub-float v8, v1, v3

    div-float/2addr v8, v12

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-int v5, v8

    .line 269
    .local v5, "padding":I
    iget-object v8, p0, Lcom/weirdvoice/ui/incall/InCallCard$1;->this$0:Lcom/weirdvoice/ui/incall/InCallCard;

    invoke-virtual {v8, v11, v5, v11, v5}, Lcom/weirdvoice/ui/incall/InCallCard;->setPadding(IIII)V

    .line 277
    .end local v5    # "padding":I
    :goto_0
    iget-object v8, p0, Lcom/weirdvoice/ui/incall/InCallCard$1;->this$0:Lcom/weirdvoice/ui/incall/InCallCard;

    const v9, 0x7f0b00ee

    invoke-virtual {v8, v9}, Lcom/weirdvoice/ui/incall/InCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 278
    .local v6, "v":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 279
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    # getter for: Lcom/weirdvoice/ui/incall/InCallCard;->minButtonRation:F
    invoke-static {}, Lcom/weirdvoice/ui/incall/InCallCard;->access$2()F

    move-result v8

    cmpg-float v8, v0, v8

    if-gez v8, :cond_3

    iget-object v8, p0, Lcom/weirdvoice/ui/incall/InCallCard$1;->this$0:Lcom/weirdvoice/ui/incall/InCallCard;

    # getter for: Lcom/weirdvoice/ui/incall/InCallCard;->hasVideo:Z
    invoke-static {v8}, Lcom/weirdvoice/ui/incall/InCallCard;->access$3(Lcom/weirdvoice/ui/incall/InCallCard;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 280
    const/high16 v8, 0x3f800000    # 1.0f

    # getter for: Lcom/weirdvoice/ui/incall/InCallCard;->minButtonRation:F
    invoke-static {}, Lcom/weirdvoice/ui/incall/InCallCard;->access$2()F

    move-result v9

    sub-float/2addr v8, v9

    mul-float/2addr v8, v3

    float-to-int v8, v8

    iput v8, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 284
    :goto_1
    invoke-virtual {v6, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 285
    iget-object v8, p0, Lcom/weirdvoice/ui/incall/InCallCard$1;->this$0:Lcom/weirdvoice/ui/incall/InCallCard;

    # invokes: Lcom/weirdvoice/ui/incall/InCallCard;->updateMenuView()V
    invoke-static {v8}, Lcom/weirdvoice/ui/incall/InCallCard;->access$4(Lcom/weirdvoice/ui/incall/InCallCard;)V

    .line 287
    .end local v0    # "currentRatio":F
    .end local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v3    # "newHeight":F
    .end local v4    # "newWidth":F
    .end local v6    # "v":Landroid/view/View;
    :cond_0
    return-void

    .line 270
    .restart local v0    # "currentRatio":F
    .restart local v3    # "newHeight":F
    .restart local v4    # "newWidth":F
    :cond_1
    # getter for: Lcom/weirdvoice/ui/incall/InCallCard;->maxRatio:F
    invoke-static {}, Lcom/weirdvoice/ui/incall/InCallCard;->access$1()F

    move-result v8

    cmpl-float v8, v0, v8

    if-lez v8, :cond_2

    .line 271
    # getter for: Lcom/weirdvoice/ui/incall/InCallCard;->maxRatio:F
    invoke-static {}, Lcom/weirdvoice/ui/incall/InCallCard;->access$1()F

    move-result v8

    mul-float v4, v1, v8

    .line 272
    sub-float v8, v7, v4

    div-float/2addr v8, v12

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-int v5, v8

    .line 273
    .restart local v5    # "padding":I
    iget-object v8, p0, Lcom/weirdvoice/ui/incall/InCallCard$1;->this$0:Lcom/weirdvoice/ui/incall/InCallCard;

    invoke-virtual {v8, v5, v11, v5, v11}, Lcom/weirdvoice/ui/incall/InCallCard;->setPadding(IIII)V

    goto :goto_0

    .line 275
    .end local v5    # "padding":I
    :cond_2
    iget-object v8, p0, Lcom/weirdvoice/ui/incall/InCallCard$1;->this$0:Lcom/weirdvoice/ui/incall/InCallCard;

    invoke-virtual {v8, v11, v11, v11, v11}, Lcom/weirdvoice/ui/incall/InCallCard;->setPadding(IIII)V

    goto :goto_0

    .line 282
    .restart local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v6    # "v":Landroid/view/View;
    :cond_3
    const/4 v8, -0x2

    iput v8, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1
.end method
