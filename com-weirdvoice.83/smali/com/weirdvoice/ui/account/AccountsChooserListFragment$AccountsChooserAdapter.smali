.class Lcom/weirdvoice/ui/account/AccountsChooserListFragment$AccountsChooserAdapter;
.super Landroid/support/v4/widget/ResourceCursorAdapter;
.source "AccountsChooserListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/weirdvoice/ui/account/AccountsChooserListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccountsChooserAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/weirdvoice/ui/account/AccountsChooserListFragment$AccountsChooserAdapter$AccListItemViewTag;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/weirdvoice/ui/account/AccountsChooserListFragment;


# direct methods
.method public constructor <init>(Lcom/weirdvoice/ui/account/AccountsChooserListFragment;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "c"    # Landroid/database/Cursor;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/weirdvoice/ui/account/AccountsChooserListFragment$AccountsChooserAdapter;->this$0:Lcom/weirdvoice/ui/account/AccountsChooserListFragment;

    .line 140
    const v0, 0x7f030017

    const/4 v1, 0x0

    invoke-direct {p0, p2, v0, p3, v1}, Landroid/support/v4/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;I)V

    .line 141
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 164
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/weirdvoice/ui/account/AccountsChooserListFragment$AccountsChooserAdapter$AccListItemViewTag;

    .line 165
    .local v4, "tag":Lcom/weirdvoice/ui/account/AccountsChooserListFragment$AccountsChooserAdapter$AccListItemViewTag;
    if-eqz v4, :cond_1

    .line 166
    iget-object v6, p0, Lcom/weirdvoice/ui/account/AccountsChooserListFragment$AccountsChooserAdapter;->this$0:Lcom/weirdvoice/ui/account/AccountsChooserListFragment;

    # invokes: Lcom/weirdvoice/ui/account/AccountsChooserListFragment;->initIndexes(Landroid/database/Cursor;)V
    invoke-static {v6, p3}, Lcom/weirdvoice/ui/account/AccountsChooserListFragment;->access$0(Lcom/weirdvoice/ui/account/AccountsChooserListFragment;Landroid/database/Cursor;)V

    .line 167
    iget-object v6, p0, Lcom/weirdvoice/ui/account/AccountsChooserListFragment$AccountsChooserAdapter;->this$0:Lcom/weirdvoice/ui/account/AccountsChooserListFragment;

    # getter for: Lcom/weirdvoice/ui/account/AccountsChooserListFragment;->INDEX_ID:Ljava/lang/Integer;
    invoke-static {v6}, Lcom/weirdvoice/ui/account/AccountsChooserListFragment;->access$1(Lcom/weirdvoice/ui/account/AccountsChooserListFragment;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 168
    .local v0, "accId":Ljava/lang/Long;
    iget-object v6, p0, Lcom/weirdvoice/ui/account/AccountsChooserListFragment$AccountsChooserAdapter;->this$0:Lcom/weirdvoice/ui/account/AccountsChooserListFragment;

    # getter for: Lcom/weirdvoice/ui/account/AccountsChooserListFragment;->INDEX_DISPLAY_NAME:Ljava/lang/Integer;
    invoke-static {v6}, Lcom/weirdvoice/ui/account/AccountsChooserListFragment;->access$2(Lcom/weirdvoice/ui/account/AccountsChooserListFragment;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 169
    .local v3, "name":Ljava/lang/String;
    iget-object v6, p0, Lcom/weirdvoice/ui/account/AccountsChooserListFragment$AccountsChooserAdapter;->this$0:Lcom/weirdvoice/ui/account/AccountsChooserListFragment;

    # getter for: Lcom/weirdvoice/ui/account/AccountsChooserListFragment;->INDEX_WIZARD:Ljava/lang/Integer;
    invoke-static {v6}, Lcom/weirdvoice/ui/account/AccountsChooserListFragment;->access$3(Lcom/weirdvoice/ui/account/AccountsChooserListFragment;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 171
    .local v5, "wizard":Ljava/lang/String;
    iget-object v6, v4, Lcom/weirdvoice/ui/account/AccountsChooserListFragment$AccountsChooserAdapter$AccListItemViewTag;->name:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    const/4 v2, 0x0

    .line 174
    .local v2, "iconSet":Z
    iget-object v6, p0, Lcom/weirdvoice/ui/account/AccountsChooserListFragment$AccountsChooserAdapter;->this$0:Lcom/weirdvoice/ui/account/AccountsChooserListFragment;

    # getter for: Lcom/weirdvoice/ui/account/AccountsChooserListFragment;->accLoader:Lcom/weirdvoice/ui/account/AccountsLoader;
    invoke-static {v6}, Lcom/weirdvoice/ui/account/AccountsChooserListFragment;->access$4(Lcom/weirdvoice/ui/account/AccountsChooserListFragment;)Lcom/weirdvoice/ui/account/AccountsLoader;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 175
    iget-object v6, p0, Lcom/weirdvoice/ui/account/AccountsChooserListFragment$AccountsChooserAdapter;->this$0:Lcom/weirdvoice/ui/account/AccountsChooserListFragment;

    # getter for: Lcom/weirdvoice/ui/account/AccountsChooserListFragment;->accLoader:Lcom/weirdvoice/ui/account/AccountsLoader;
    invoke-static {v6}, Lcom/weirdvoice/ui/account/AccountsChooserListFragment;->access$4(Lcom/weirdvoice/ui/account/AccountsChooserListFragment;)Lcom/weirdvoice/ui/account/AccountsLoader;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lcom/weirdvoice/ui/account/AccountsLoader;->getCallHandlerWithAccountId(J)Lcom/weirdvoice/utils/CallHandlerPlugin;

    move-result-object v1

    .line 176
    .local v1, "ch":Lcom/weirdvoice/utils/CallHandlerPlugin;
    if-eqz v1, :cond_0

    .line 177
    iget-object v6, v4, Lcom/weirdvoice/ui/account/AccountsChooserListFragment$AccountsChooserAdapter$AccListItemViewTag;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Lcom/weirdvoice/utils/CallHandlerPlugin;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 178
    const/4 v2, 0x1

    .line 182
    .end local v1    # "ch":Lcom/weirdvoice/utils/CallHandlerPlugin;
    :cond_0
    if-nez v2, :cond_1

    .line 183
    iget-object v6, v4, Lcom/weirdvoice/ui/account/AccountsChooserListFragment$AccountsChooserAdapter$AccListItemViewTag;->icon:Landroid/widget/ImageView;

    invoke-static {v5}, Lcom/weirdvoice/wizards/WizardUtils;->getWizardIconRes(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 186
    .end local v0    # "accId":Ljava/lang/Long;
    .end local v2    # "iconSet":Z
    .end local v3    # "name":Ljava/lang/String;
    .end local v5    # "wizard":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 146
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/widget/ResourceCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 148
    .local v1, "v":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 149
    new-instance v0, Lcom/weirdvoice/ui/account/AccountsChooserListFragment$AccountsChooserAdapter$AccListItemViewTag;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/weirdvoice/ui/account/AccountsChooserListFragment$AccountsChooserAdapter$AccListItemViewTag;-><init>(Lcom/weirdvoice/ui/account/AccountsChooserListFragment$AccountsChooserAdapter;Lcom/weirdvoice/ui/account/AccountsChooserListFragment$AccountsChooserAdapter$AccListItemViewTag;)V

    .line 150
    .local v0, "tag":Lcom/weirdvoice/ui/account/AccountsChooserListFragment$AccountsChooserAdapter$AccListItemViewTag;
    const v2, 0x7f0b003c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/weirdvoice/ui/account/AccountsChooserListFragment$AccountsChooserAdapter$AccListItemViewTag;->name:Landroid/widget/TextView;

    .line 151
    const v2, 0x7f0b003b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/weirdvoice/ui/account/AccountsChooserListFragment$AccountsChooserAdapter$AccListItemViewTag;->icon:Landroid/widget/ImageView;

    .line 152
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 154
    .end local v0    # "tag":Lcom/weirdvoice/ui/account/AccountsChooserListFragment$AccountsChooserAdapter$AccListItemViewTag;
    :cond_0
    return-object v1
.end method
