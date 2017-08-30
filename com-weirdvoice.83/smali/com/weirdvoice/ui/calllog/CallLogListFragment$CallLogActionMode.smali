.class Lcom/weirdvoice/ui/calllog/CallLogListFragment$CallLogActionMode;
.super Ljava/lang/Object;
.source "CallLogListFragment.java"

# interfaces
.implements Lcom/actionbarsherlock/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/weirdvoice/ui/calllog/CallLogListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallLogActionMode"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/weirdvoice/ui/calllog/CallLogListFragment;


# direct methods
.method private constructor <init>(Lcom/weirdvoice/ui/calllog/CallLogListFragment;)V
    .locals 0

    .prologue
    .line 425
    iput-object p1, p0, Lcom/weirdvoice/ui/calllog/CallLogListFragment$CallLogActionMode;->this$0:Lcom/weirdvoice/ui/calllog/CallLogListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/weirdvoice/ui/calllog/CallLogListFragment;Lcom/weirdvoice/ui/calllog/CallLogListFragment$CallLogActionMode;)V
    .locals 0

    .prologue
    .line 425
    invoke-direct {p0, p1}, Lcom/weirdvoice/ui/calllog/CallLogListFragment$CallLogActionMode;-><init>(Lcom/weirdvoice/ui/calllog/CallLogListFragment;)V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Lcom/actionbarsherlock/view/ActionMode;Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 3
    .param p1, "mode"    # Lcom/actionbarsherlock/view/ActionMode;
    .param p2, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 452
    invoke-interface {p2}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    .line 453
    .local v0, "itemId":I
    const v2, 0x7f0b015d

    if-ne v0, v2, :cond_0

    .line 454
    iget-object v2, p0, Lcom/weirdvoice/ui/calllog/CallLogListFragment$CallLogActionMode;->this$0:Lcom/weirdvoice/ui/calllog/CallLogListFragment;

    # invokes: Lcom/weirdvoice/ui/calllog/CallLogListFragment;->actionModeDelete()V
    invoke-static {v2}, Lcom/weirdvoice/ui/calllog/CallLogListFragment;->access$1(Lcom/weirdvoice/ui/calllog/CallLogListFragment;)V

    .line 463
    :goto_0
    return v1

    .line 456
    :cond_0
    const v2, 0x7f0b015f

    if-ne v0, v2, :cond_1

    .line 457
    iget-object v2, p0, Lcom/weirdvoice/ui/calllog/CallLogListFragment$CallLogActionMode;->this$0:Lcom/weirdvoice/ui/calllog/CallLogListFragment;

    # invokes: Lcom/weirdvoice/ui/calllog/CallLogListFragment;->actionModeInvertSelection()V
    invoke-static {v2}, Lcom/weirdvoice/ui/calllog/CallLogListFragment;->access$2(Lcom/weirdvoice/ui/calllog/CallLogListFragment;)V

    goto :goto_0

    .line 459
    :cond_1
    const v2, 0x7f0b015e

    if-ne v0, v2, :cond_2

    .line 460
    iget-object v2, p0, Lcom/weirdvoice/ui/calllog/CallLogListFragment$CallLogActionMode;->this$0:Lcom/weirdvoice/ui/calllog/CallLogListFragment;

    # invokes: Lcom/weirdvoice/ui/calllog/CallLogListFragment;->actionModeDialpad()V
    invoke-static {v2}, Lcom/weirdvoice/ui/calllog/CallLogListFragment;->access$3(Lcom/weirdvoice/ui/calllog/CallLogListFragment;)V

    goto :goto_0

    .line 463
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCreateActionMode(Lcom/actionbarsherlock/view/ActionMode;Lcom/actionbarsherlock/view/Menu;)Z
    .locals 2
    .param p1, "mode"    # Lcom/actionbarsherlock/view/ActionMode;
    .param p2, "menu"    # Lcom/actionbarsherlock/view/Menu;

    .prologue
    .line 429
    const-string v0, "CallLogFragment"

    const-string v1, "onCreateActionMode"

    invoke-static {v0, v1}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    iget-object v0, p0, Lcom/weirdvoice/ui/calllog/CallLogListFragment$CallLogActionMode;->this$0:Lcom/weirdvoice/ui/calllog/CallLogListFragment;

    invoke-virtual {v0}, Lcom/weirdvoice/ui/calllog/CallLogListFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportMenuInflater()Lcom/actionbarsherlock/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0f0000

    invoke-virtual {v0, v1, p2}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 431
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroyActionMode(Lcom/actionbarsherlock/view/ActionMode;)V
    .locals 5
    .param p1, "mode"    # Lcom/actionbarsherlock/view/ActionMode;

    .prologue
    .line 468
    const-string v3, "CallLogFragment"

    const-string v4, "onDestroyActionMode"

    invoke-static {v3, v4}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    iget-object v3, p0, Lcom/weirdvoice/ui/calllog/CallLogListFragment$CallLogActionMode;->this$0:Lcom/weirdvoice/ui/calllog/CallLogListFragment;

    invoke-virtual {v3}, Lcom/weirdvoice/ui/calllog/CallLogListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 472
    .local v2, "lv":Landroid/widget/ListView;
    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 473
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 476
    iget-object v3, p0, Lcom/weirdvoice/ui/calllog/CallLogListFragment$CallLogActionMode;->this$0:Lcom/weirdvoice/ui/calllog/CallLogListFragment;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/weirdvoice/ui/calllog/CallLogListFragment;->access$4(Lcom/weirdvoice/ui/calllog/CallLogListFragment;Lcom/actionbarsherlock/view/ActionMode;)V

    .line 477
    return-void

    .line 474
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 473
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public onPrepareActionMode(Lcom/actionbarsherlock/view/ActionMode;Lcom/actionbarsherlock/view/Menu;)Z
    .locals 7
    .param p1, "mode"    # Lcom/actionbarsherlock/view/ActionMode;
    .param p2, "menu"    # Lcom/actionbarsherlock/view/Menu;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 436
    const-string v3, "CallLogFragment"

    const-string v6, "onPrepareActionMode"

    invoke-static {v3, v6}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    iget-object v3, p0, Lcom/weirdvoice/ui/calllog/CallLogListFragment$CallLogActionMode;->this$0:Lcom/weirdvoice/ui/calllog/CallLogListFragment;

    invoke-virtual {v3}, Lcom/weirdvoice/ui/calllog/CallLogListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 438
    .local v1, "lv":Landroid/widget/ListView;
    const/4 v2, 0x0

    .line 440
    .local v2, "nbrCheckedItem":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v3

    if-lt v0, v3, :cond_0

    .line 445
    const v3, 0x7f0b015d

    invoke-interface {p2, v3}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v6

    if-lez v2, :cond_2

    move v3, v4

    :goto_1
    invoke-interface {v6, v3}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 446
    const v3, 0x7f0b015e

    invoke-interface {p2, v3}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v3

    if-ne v2, v4, :cond_3

    :goto_2
    invoke-interface {v3, v4}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 447
    return v5

    .line 441
    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 442
    add-int/lit8 v2, v2, 0x1

    .line 440
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v3, v5

    .line 445
    goto :goto_1

    :cond_3
    move v4, v5

    .line 446
    goto :goto_2
.end method
