.class public Lcom/weirdvoice/ui/account/AccountsChooserListFragment;
.super Lcom/weirdvoice/widgets/CSSListFragment;
.source "AccountsChooserListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/weirdvoice/ui/account/AccountsChooserListFragment$AccountsChooserAdapter;,
        Lcom/weirdvoice/ui/account/AccountsChooserListFragment$OnAccountClickListener;
    }
.end annotation


# instance fields
.field private INDEX_DISPLAY_NAME:Ljava/lang/Integer;

.field private INDEX_ID:Ljava/lang/Integer;

.field private INDEX_WIZARD:Ljava/lang/Integer;

.field private accListener:Lcom/weirdvoice/ui/account/AccountsChooserListFragment$OnAccountClickListener;

.field private accLoader:Lcom/weirdvoice/ui/account/AccountsLoader;

.field private mAdapter:Lcom/weirdvoice/ui/account/AccountsChooserListFragment$AccountsChooserAdapter;

.field private showExternal:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0}, Lcom/weirdvoice/widgets/CSSListFragment;-><init>()V

    .line 47
    iput-object v0, p0, Lcom/weirdvoice/ui/account/AccountsChooserListFragment;->INDEX_DISPLAY_NAME:Ljava/lang/Integer;

    .line 48
    iput-object v0, p0, Lcom/weirdvoice/ui/account/AccountsChooserListFragment;->INDEX_WIZARD:Ljava/lang/Integer;

    .line 49
    iput-object v0, p0, Lcom/weirdvoice/ui/account/AccountsChooserListFragment;->INDEX_ID:Ljava/lang/Integer;

    .line 132
    iput-object v0, p0, Lcom/weirdvoice/ui/account/AccountsChooserListFragment;->accListener:Lcom/weirdvoice/ui/account/AccountsChooserListFragment$OnAccountClickListener;

    .line 42
    return-void
.end method

.method static synthetic access$0(Lcom/weirdvoice/ui/account/AccountsChooserListFragment;Landroid/database/Cursor;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/weirdvoice/ui/account/AccountsChooserListFragment;->initIndexes(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$1(Lcom/weirdvoice/ui/account/AccountsChooserListFragment;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/weirdvoice/ui/account/AccountsChooserListFragment;->INDEX_ID:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$2(Lcom/weirdvoice/ui/account/AccountsChooserListFragment;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/weirdvoice/ui/account/AccountsChooserListFragment;->INDEX_DISPLAY_NAME:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$3(Lcom/weirdvoice/ui/account/AccountsChooserListFragment;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/weirdvoice/ui/account/AccountsChooserListFragment;->INDEX_WIZARD:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$4(Lcom/weirdvoice/ui/account/AccountsChooserListFragment;)Lcom/weirdvoice/ui/account/AccountsLoader;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/weirdvoice/ui/account/AccountsChooserListFragment;->accLoader:Lcom/weirdvoice/ui/account/AccountsLoader;

    return-object v0
.end method

.method private attachAdapter()V
    .locals 3

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/weirdvoice/ui/account/AccountsChooserListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-nez v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/weirdvoice/ui/account/AccountsChooserListFragment;->mAdapter:Lcom/weirdvoice/ui/account/AccountsChooserListFragment$AccountsChooserAdapter;

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Lcom/weirdvoice/ui/account/AccountsChooserListFragment$AccountsChooserAdapter;

    invoke-virtual {p0}, Lcom/weirdvoice/ui/account/AccountsChooserListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/weirdvoice/ui/account/AccountsChooserListFragment$AccountsChooserAdapter;-><init>(Lcom/weirdvoice/ui/account/AccountsChooserListFragment;Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/weirdvoice/ui/account/AccountsChooserListFragment;->mAdapter:Lcom/weirdvoice/ui/account/AccountsChooserListFragment$AccountsChooserAdapter;

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/weirdvoice/ui/account/AccountsChooserListFragment;->mAdapter:Lcom/weirdvoice/ui/account/AccountsChooserListFragment$AccountsChooserAdapter;

    invoke-virtual {p0, v0}, Lcom/weirdvoice/ui/account/AccountsChooserListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 91
    :cond_1
    return-void
.end method

.method private initIndexes(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/weirdvoice/ui/account/AccountsChooserListFragment;->INDEX_DISPLAY_NAME:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 54
    const-string v0, "id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/weirdvoice/ui/account/AccountsChooserListFragment;->INDEX_ID:Ljava/lang/Integer;

    .line 55
    const-string v0, "display_name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/weirdvoice/ui/account/AccountsChooserListFragment;->INDEX_DISPLAY_NAME:Ljava/lang/Integer;

    .line 56
    const-string v0, "wizard"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/weirdvoice/ui/account/AccountsChooserListFragment;->INDEX_WIZARD:Ljava/lang/Integer;

    .line 58
    :cond_0
    return-void
.end method


# virtual methods
.method public changeCursor(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/weirdvoice/ui/account/AccountsChooserListFragment;->mAdapter:Lcom/weirdvoice/ui/account/AccountsChooserListFragment$AccountsChooserAdapter;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/weirdvoice/ui/account/AccountsChooserListFragment;->mAdapter:Lcom/weirdvoice/ui/account/AccountsChooserListFragment$AccountsChooserAdapter;

    invoke-virtual {v0, p1}, Lcom/weirdvoice/ui/account/AccountsChooserListFragment$AccountsChooserAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 109
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 75
    invoke-super {p0, p1}, Lcom/weirdvoice/widgets/CSSListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 76
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/weirdvoice/widgets/CSSListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 63
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/weirdvoice/ui/account/AccountsChooserListFragment;->setHasOptionsMenu(Z)V

    .line 64
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 4
    .param p1, "loader"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    new-instance v0, Lcom/weirdvoice/ui/account/AccountsLoader;

    invoke-virtual {p0}, Lcom/weirdvoice/ui/account/AccountsChooserListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/weirdvoice/ui/account/AccountsChooserListFragment;->showExternal:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/weirdvoice/ui/account/AccountsLoader;-><init>(Landroid/content/Context;ZZ)V

    iput-object v0, p0, Lcom/weirdvoice/ui/account/AccountsChooserListFragment;->accLoader:Lcom/weirdvoice/ui/account/AccountsLoader;

    .line 97
    iget-object v0, p0, Lcom/weirdvoice/ui/account/AccountsChooserListFragment;->accLoader:Lcom/weirdvoice/ui/account/AccountsLoader;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 81
    const v0, 0x7f030016

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 6
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 113
    iget-object v5, p0, Lcom/weirdvoice/ui/account/AccountsChooserListFragment;->mAdapter:Lcom/weirdvoice/ui/account/AccountsChooserListFragment$AccountsChooserAdapter;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/weirdvoice/ui/account/AccountsChooserListFragment;->accListener:Lcom/weirdvoice/ui/account/AccountsChooserListFragment$OnAccountClickListener;

    if-eqz v5, :cond_0

    .line 114
    iget-object v5, p0, Lcom/weirdvoice/ui/account/AccountsChooserListFragment;->mAdapter:Lcom/weirdvoice/ui/account/AccountsChooserListFragment$AccountsChooserAdapter;

    invoke-virtual {v5, p3}, Lcom/weirdvoice/ui/account/AccountsChooserListFragment$AccountsChooserAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/Cursor;

    .line 115
    .local v2, "c":Landroid/database/Cursor;
    invoke-direct {p0, v2}, Lcom/weirdvoice/ui/account/AccountsChooserListFragment;->initIndexes(Landroid/database/Cursor;)V

    .line 116
    iget-object v5, p0, Lcom/weirdvoice/ui/account/AccountsChooserListFragment;->INDEX_ID:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 117
    .local v0, "accId":J
    iget-object v5, p0, Lcom/weirdvoice/ui/account/AccountsChooserListFragment;->INDEX_DISPLAY_NAME:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 118
    .local v3, "displayName":Ljava/lang/String;
    iget-object v5, p0, Lcom/weirdvoice/ui/account/AccountsChooserListFragment;->INDEX_WIZARD:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 119
    .local v4, "wizard":Ljava/lang/String;
    iget-object v5, p0, Lcom/weirdvoice/ui/account/AccountsChooserListFragment;->accListener:Lcom/weirdvoice/ui/account/AccountsChooserListFragment$OnAccountClickListener;

    invoke-interface {v5, v0, v1, v3, v4}, Lcom/weirdvoice/ui/account/AccountsChooserListFragment$OnAccountClickListener;->onAccountClicked(JLjava/lang/String;Ljava/lang/String;)V

    .line 121
    .end local v0    # "accId":J
    .end local v2    # "c":Landroid/database/Cursor;
    .end local v3    # "displayName":Ljava/lang/String;
    .end local v4    # "wizard":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 68
    invoke-super {p0}, Lcom/weirdvoice/widgets/CSSListFragment;->onResume()V

    .line 69
    invoke-direct {p0}, Lcom/weirdvoice/ui/account/AccountsChooserListFragment;->attachAdapter()V

    .line 70
    invoke-virtual {p0}, Lcom/weirdvoice/ui/account/AccountsChooserListFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/weirdvoice/ui/account/AccountsChooserListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 71
    return-void
.end method

.method public setOnAccountClickListener(Lcom/weirdvoice/ui/account/AccountsChooserListFragment$OnAccountClickListener;)V
    .locals 0
    .param p1, "l"    # Lcom/weirdvoice/ui/account/AccountsChooserListFragment$OnAccountClickListener;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/weirdvoice/ui/account/AccountsChooserListFragment;->accListener:Lcom/weirdvoice/ui/account/AccountsChooserListFragment$OnAccountClickListener;

    .line 135
    return-void
.end method

.method public setShowCallHandlerPlugins(Z)V
    .locals 0
    .param p1, "showInternalAccounts"    # Z

    .prologue
    .line 192
    iput-boolean p1, p0, Lcom/weirdvoice/ui/account/AccountsChooserListFragment;->showExternal:Z

    .line 193
    return-void
.end method
