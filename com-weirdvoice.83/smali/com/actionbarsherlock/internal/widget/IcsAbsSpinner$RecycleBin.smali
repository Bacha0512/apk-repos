.class Lcom/actionbarsherlock/internal/widget/IcsAbsSpinner$RecycleBin;
.super Ljava/lang/Object;
.source "IcsAbsSpinner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/actionbarsherlock/internal/widget/IcsAbsSpinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RecycleBin"
.end annotation


# instance fields
.field private final mScrapHeap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/actionbarsherlock/internal/widget/IcsAbsSpinner;


# direct methods
.method constructor <init>(Lcom/actionbarsherlock/internal/widget/IcsAbsSpinner;)V
    .locals 1

    .prologue
    .line 445
    iput-object p1, p0, Lcom/actionbarsherlock/internal/widget/IcsAbsSpinner$RecycleBin;->this$0:Lcom/actionbarsherlock/internal/widget/IcsAbsSpinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 446
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsAbsSpinner$RecycleBin;->mScrapHeap:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method clear()V
    .locals 6

    .prologue
    .line 465
    iget-object v2, p0, Lcom/actionbarsherlock/internal/widget/IcsAbsSpinner$RecycleBin;->mScrapHeap:Landroid/util/SparseArray;

    .line 466
    .local v2, "scrapHeap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/View;>;"
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 467
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 473
    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 474
    return-void

    .line 468
    :cond_0
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 469
    .local v3, "view":Landroid/view/View;
    if-eqz v3, :cond_1

    .line 470
    iget-object v4, p0, Lcom/actionbarsherlock/internal/widget/IcsAbsSpinner$RecycleBin;->this$0:Lcom/actionbarsherlock/internal/widget/IcsAbsSpinner;

    const/4 v5, 0x1

    # invokes: Lcom/actionbarsherlock/internal/widget/IcsAbsSpinner;->removeDetachedView(Landroid/view/View;Z)V
    invoke-static {v4, v3, v5}, Lcom/actionbarsherlock/internal/widget/IcsAbsSpinner;->access$2(Lcom/actionbarsherlock/internal/widget/IcsAbsSpinner;Landroid/view/View;Z)V

    .line 467
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method get(I)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 454
    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/IcsAbsSpinner$RecycleBin;->mScrapHeap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 455
    .local v0, "result":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 457
    iget-object v1, p0, Lcom/actionbarsherlock/internal/widget/IcsAbsSpinner$RecycleBin;->mScrapHeap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 461
    :cond_0
    return-object v0
.end method

.method public put(ILandroid/view/View;)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "v"    # Landroid/view/View;

    .prologue
    .line 449
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsAbsSpinner$RecycleBin;->mScrapHeap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 450
    return-void
.end method