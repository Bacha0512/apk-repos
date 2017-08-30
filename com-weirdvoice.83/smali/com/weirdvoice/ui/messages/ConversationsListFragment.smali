.class public Lcom/weirdvoice/ui/messages/ConversationsListFragment;
.super Lcom/weirdvoice/widgets/CSSListFragment;
.source "ConversationsListFragment.java"

# interfaces
.implements Lcom/weirdvoice/ui/SipHome$ViewPagerVisibilityListener;


# static fields
.field public static final MENU_COMPOSE_NEW:I = 0x0

.field public static final MENU_DELETE:I = 0x0

.field public static final MENU_DELETE_ALL:I = 0x1

.field public static final MENU_VIEW:I = 0x1


# instance fields
.field alreadyLoaded:Z

.field private mAdapter:Lcom/weirdvoice/ui/messages/ConversationsAdapter;

.field private mDualPane:Z

.field private mHeaderView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/weirdvoice/widgets/CSSListFragment;-><init>()V

    .line 339
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/weirdvoice/ui/messages/ConversationsListFragment;->alreadyLoaded:Z

    .line 60
    return-void
.end method

.method static synthetic access$0(Lcom/weirdvoice/ui/messages/ConversationsListFragment;)V
    .locals 0

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/weirdvoice/ui/messages/ConversationsListFragment;->onClickAddMessage()V

    return-void
.end method

.method static synthetic access$1(Lcom/weirdvoice/ui/messages/ConversationsListFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 314
    invoke-direct {p0, p1}, Lcom/weirdvoice/ui/messages/ConversationsListFragment;->confirmDeleteThread(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Lcom/weirdvoice/ui/messages/ConversationsListFragment;)Lcom/weirdvoice/ui/messages/ConversationsAdapter;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/weirdvoice/ui/messages/ConversationsListFragment;->mAdapter:Lcom/weirdvoice/ui/messages/ConversationsAdapter;

    return-object v0
.end method

.method private attachAdapter()V
    .locals 3

    .prologue
    .line 85
    iget-object v0, p0, Lcom/weirdvoice/ui/messages/ConversationsListFragment;->mAdapter:Lcom/weirdvoice/ui/messages/ConversationsAdapter;

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Lcom/weirdvoice/ui/messages/ConversationsAdapter;

    invoke-virtual {p0}, Lcom/weirdvoice/ui/messages/ConversationsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/weirdvoice/ui/messages/ConversationsAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/weirdvoice/ui/messages/ConversationsListFragment;->mAdapter:Lcom/weirdvoice/ui/messages/ConversationsAdapter;

    .line 88
    iget-object v0, p0, Lcom/weirdvoice/ui/messages/ConversationsListFragment;->mAdapter:Lcom/weirdvoice/ui/messages/ConversationsAdapter;

    invoke-virtual {p0, v0}, Lcom/weirdvoice/ui/messages/ConversationsListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 91
    :cond_0
    return-void
.end method

.method private confirmDeleteThread(Ljava/lang/String;)V
    .locals 4
    .param p1, "from"    # Ljava/lang/String;

    .prologue
    .line 316
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/weirdvoice/ui/messages/ConversationsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 317
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0c0087

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 318
    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 319
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 320
    const v2, 0x7f0c008d

    new-instance v3, Lcom/weirdvoice/ui/messages/ConversationsListFragment$4;

    invoke-direct {v3, p0, p1}, Lcom/weirdvoice/ui/messages/ConversationsListFragment$4;-><init>(Lcom/weirdvoice/ui/messages/ConversationsListFragment;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 332
    const v2, 0x7f0c0084

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 333
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 334
    const v1, 0x7f0c0089

    .line 333
    :goto_0
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 336
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 337
    return-void

    .line 335
    :cond_0
    const v1, 0x7f0c0088

    goto :goto_0
.end method

.method private onClickAddMessage()V
    .locals 2

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/weirdvoice/ui/messages/ConversationsListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    neg-int v0, v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/weirdvoice/ui/messages/ConversationsListFragment;->viewDetails(ILcom/weirdvoice/ui/messages/ConversationsAdapter$ConversationListItemViews;)V

    .line 126
    return-void
.end method


# virtual methods
.method public changeCursor(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 388
    iget-object v0, p0, Lcom/weirdvoice/ui/messages/ConversationsListFragment;->mAdapter:Lcom/weirdvoice/ui/messages/ConversationsAdapter;

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/weirdvoice/ui/messages/ConversationsListFragment;->mAdapter:Lcom/weirdvoice/ui/messages/ConversationsAdapter;

    invoke-virtual {v0, p1}, Lcom/weirdvoice/ui/messages/ConversationsAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 391
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 79
    invoke-super {p0, p1}, Lcom/weirdvoice/widgets/CSSListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 80
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/weirdvoice/ui/messages/ConversationsListFragment;->setHasOptionsMenu(Z)V

    .line 81
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 242
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v1

    check-cast v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 244
    .local v1, "info":Landroid/widget/AdapterView$AdapterContextMenuInfo;, "Landroid/widget/AdapterView$AdapterContextMenuInfo;"
    iget v2, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    if-lez v2, :cond_0

    .line 245
    iget-object v2, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/weirdvoice/ui/messages/ConversationsAdapter$ConversationListItemViews;

    .line 247
    .local v0, "cri":Lcom/weirdvoice/ui/messages/ConversationsAdapter$ConversationListItemViews;
    if-eqz v0, :cond_0

    .line 248
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 262
    .end local v0    # "cri":Lcom/weirdvoice/ui/messages/ConversationsAdapter$ConversationListItemViews;
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/weirdvoice/widgets/CSSListFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    return v2

    .line 250
    .restart local v0    # "cri":Lcom/weirdvoice/ui/messages/ConversationsAdapter$ConversationListItemViews;
    :pswitch_0
    invoke-virtual {v0}, Lcom/weirdvoice/ui/messages/ConversationsAdapter$ConversationListItemViews;->getRemoteNumber()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/weirdvoice/ui/messages/ConversationsListFragment;->confirmDeleteThread(Ljava/lang/String;)V

    goto :goto_0

    .line 254
    :pswitch_1
    iget v2, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {p0, v2, v0}, Lcom/weirdvoice/ui/messages/ConversationsListFragment;->viewDetails(ILcom/weirdvoice/ui/messages/ConversationsAdapter$ConversationListItemViews;)V

    goto :goto_0

    .line 248
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    const/4 v3, 0x0

    .line 232
    move-object v0, p3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 233
    .local v0, "info":Landroid/widget/AdapterView$AdapterContextMenuInfo;, "Landroid/widget/AdapterView$AdapterContextMenuInfo;"
    iget v1, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    if-lez v1, :cond_0

    .line 234
    const/4 v1, 0x1

    const v2, 0x7f0c0069

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 235
    const v1, 0x7f0c0068

    invoke-interface {p1, v3, v3, v3, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 237
    :cond_0
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 7
    .param p1, "id"    # I
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
    const/4 v3, 0x0

    .line 226
    new-instance v0, Landroid/support/v4/content/CursorLoader;

    invoke-virtual {p0}, Lcom/weirdvoice/ui/messages/ConversationsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/weirdvoice/api/SipMessage;->THREAD_URI:Landroid/net/Uri;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 4
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;
    .param p2, "inflater"    # Lcom/actionbarsherlock/view/MenuInflater;

    .prologue
    .line 195
    invoke-super {p0, p1, p2}, Lcom/weirdvoice/widgets/CSSListFragment;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V

    .line 198
    const v2, 0x7f0c0065

    invoke-interface {p1, v2}, Lcom/actionbarsherlock/view/Menu;->add(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v1

    .line 199
    .local v1, "writeMenu":Lcom/actionbarsherlock/view/MenuItem;
    const v2, 0x7f0202d6

    invoke-interface {v1, v2}, Lcom/actionbarsherlock/view/MenuItem;->setIcon(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/actionbarsherlock/view/MenuItem;->setShowAsAction(I)V

    .line 200
    new-instance v2, Lcom/weirdvoice/ui/messages/ConversationsListFragment$2;

    invoke-direct {v2, p0}, Lcom/weirdvoice/ui/messages/ConversationsListFragment$2;-><init>(Lcom/weirdvoice/ui/messages/ConversationsListFragment;)V

    invoke-interface {v1, v2}, Lcom/actionbarsherlock/view/MenuItem;->setOnMenuItemClickListener(Lcom/actionbarsherlock/view/MenuItem$OnMenuItemClickListener;)Lcom/actionbarsherlock/view/MenuItem;

    .line 208
    invoke-virtual {p0}, Lcom/weirdvoice/ui/messages/ConversationsListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/weirdvoice/ui/messages/ConversationsListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 210
    const v2, 0x7f0c0067

    invoke-interface {p1, v2}, Lcom/actionbarsherlock/view/Menu;->add(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    .line 211
    .local v0, "deleteAllMenu":Lcom/actionbarsherlock/view/MenuItem;
    const v2, 0x108003c

    invoke-interface {v0, v2}, Lcom/actionbarsherlock/view/MenuItem;->setIcon(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/actionbarsherlock/view/MenuItem;->setShowAsAction(I)V

    .line 212
    new-instance v2, Lcom/weirdvoice/ui/messages/ConversationsListFragment$3;

    invoke-direct {v2, p0}, Lcom/weirdvoice/ui/messages/ConversationsListFragment$3;-><init>(Lcom/weirdvoice/ui/messages/ConversationsListFragment;)V

    invoke-interface {v0, v2}, Lcom/actionbarsherlock/view/MenuItem;->setOnMenuItemClickListener(Lcom/actionbarsherlock/view/MenuItem$OnMenuItemClickListener;)Lcom/actionbarsherlock/view/MenuItem;

    .line 220
    .end local v0    # "deleteAllMenu":Lcom/actionbarsherlock/view/MenuItem;
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 95
    const v4, 0x7f030049

    invoke-virtual {p1, v4, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 97
    .local v3, "v":Landroid/view/View;
    const v4, 0x102000a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 99
    .local v2, "lv":Landroid/widget/ListView;
    new-instance v0, Lcom/weirdvoice/ui/messages/ConversationsListFragment$1;

    invoke-direct {v0, p0}, Lcom/weirdvoice/ui/messages/ConversationsListFragment$1;-><init>(Lcom/weirdvoice/ui/messages/ConversationsListFragment;)V

    .line 109
    .local v0, "addClickButtonListener":Landroid/view/View$OnClickListener;
    const v4, 0x7f03002a

    invoke-virtual {p1, v4, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 108
    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/weirdvoice/ui/messages/ConversationsListFragment;->mHeaderView:Landroid/view/View;

    .line 110
    iget-object v4, p0, Lcom/weirdvoice/ui/messages/ConversationsListFragment;->mHeaderView:Landroid/view/View;

    const v5, 0x7f0b008c

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0c0063

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 111
    iget-object v4, p0, Lcom/weirdvoice/ui/messages/ConversationsListFragment;->mHeaderView:Landroid/view/View;

    const v5, 0x7f0b0083

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0c0064

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 112
    iget-object v4, p0, Lcom/weirdvoice/ui/messages/ConversationsListFragment;->mHeaderView:Landroid/view/View;

    const v5, 0x7f0b0071

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 113
    iget-object v4, p0, Lcom/weirdvoice/ui/messages/ConversationsListFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    const v4, 0x1020004

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 116
    .local v1, "bt":Landroid/widget/Button;
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object v4, p0, Lcom/weirdvoice/ui/messages/ConversationsListFragment;->mHeaderView:Landroid/view/View;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v2, v4, v5, v6}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 119
    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 121
    return-object v3
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 1
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 267
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/weirdvoice/ui/messages/ConversationsAdapter$ConversationListItemViews;

    .line 268
    .local v0, "cri":Lcom/weirdvoice/ui/messages/ConversationsAdapter$ConversationListItemViews;
    invoke-virtual {p0, p3, v0}, Lcom/weirdvoice/ui/messages/ConversationsListFragment;->viewDetails(ILcom/weirdvoice/ui/messages/ConversationsAdapter$ConversationListItemViews;)V

    .line 269
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 150
    invoke-super {p0}, Lcom/weirdvoice/widgets/CSSListFragment;->onResume()V

    .line 152
    new-instance v0, Lcom/weirdvoice/service/SipNotifications;

    invoke-virtual {p0}, Lcom/weirdvoice/ui/messages/ConversationsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/weirdvoice/service/SipNotifications;-><init>(Landroid/content/Context;)V

    .line 153
    .local v0, "nManager":Lcom/weirdvoice/service/SipNotifications;
    invoke-virtual {v0}, Lcom/weirdvoice/service/SipNotifications;->cancelMessages()V

    .line 154
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 130
    invoke-super {p0, p1, p2}, Lcom/weirdvoice/widgets/CSSListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 133
    invoke-virtual {p0}, Lcom/weirdvoice/ui/messages/ConversationsListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/weirdvoice/ui/messages/ConversationsListFragment;->mDualPane:Z

    .line 136
    invoke-virtual {p0}, Lcom/weirdvoice/ui/messages/ConversationsListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 137
    .local v0, "lv":Landroid/widget/ListView;
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 139
    iget-boolean v1, p0, Lcom/weirdvoice/ui/messages/ConversationsListFragment;->mDualPane:Z

    if-eqz v1, :cond_0

    .line 140
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 141
    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 146
    :goto_0
    return-void

    .line 143
    :cond_0
    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 144
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    goto :goto_0
.end method

.method public onVisibilityChanged(Z)V
    .locals 6
    .param p1, "visible"    # Z

    .prologue
    .line 344
    if-eqz p1, :cond_0

    .line 345
    invoke-direct {p0}, Lcom/weirdvoice/ui/messages/ConversationsListFragment;->attachAdapter()V

    .line 347
    iget-boolean v3, p0, Lcom/weirdvoice/ui/messages/ConversationsListFragment;->alreadyLoaded:Z

    if-nez v3, :cond_0

    .line 348
    invoke-virtual {p0}, Lcom/weirdvoice/ui/messages/ConversationsListFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 349
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/weirdvoice/ui/messages/ConversationsListFragment;->alreadyLoaded:Z

    .line 353
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/weirdvoice/ui/messages/ConversationsListFragment;->isResumed()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 354
    invoke-virtual {p0}, Lcom/weirdvoice/ui/messages/ConversationsListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 355
    .local v1, "lv":Landroid/widget/ListView;
    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/weirdvoice/ui/messages/ConversationsListFragment;->mAdapter:Lcom/weirdvoice/ui/messages/ConversationsAdapter;

    if-eqz v3, :cond_1

    .line 356
    invoke-virtual {v1}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v0

    .line 357
    .local v0, "checkedPos":I
    if-ltz v0, :cond_1

    .line 359
    new-instance v2, Lcom/weirdvoice/ui/messages/ConversationsListFragment$5;

    invoke-direct {v2, p0, v0}, Lcom/weirdvoice/ui/messages/ConversationsListFragment$5;-><init>(Lcom/weirdvoice/ui/messages/ConversationsListFragment;I)V

    .line 380
    .local v2, "t":Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 384
    .end local v0    # "checkedPos":I
    .end local v1    # "lv":Landroid/widget/ListView;
    .end local v2    # "t":Ljava/lang/Thread;
    :cond_1
    return-void
.end method

.method public viewDetails(ILcom/weirdvoice/ui/messages/ConversationsAdapter$ConversationListItemViews;)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "cri"    # Lcom/weirdvoice/ui/messages/ConversationsAdapter$ConversationListItemViews;

    .prologue
    .line 157
    const/4 v1, 0x0

    .line 158
    .local v1, "number":Ljava/lang/String;
    const/4 v0, 0x0

    .line 159
    .local v0, "fromFull":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 160
    invoke-virtual {p2}, Lcom/weirdvoice/ui/messages/ConversationsAdapter$ConversationListItemViews;->getRemoteNumber()Ljava/lang/String;

    move-result-object v1

    .line 161
    iget-object v0, p2, Lcom/weirdvoice/ui/messages/ConversationsAdapter$ConversationListItemViews;->fromFull:Ljava/lang/String;

    .line 163
    :cond_0
    invoke-virtual {p0, p1, v1, v0}, Lcom/weirdvoice/ui/messages/ConversationsListFragment;->viewDetails(ILjava/lang/String;Ljava/lang/String;)V

    .line 164
    return-void
.end method

.method public viewDetails(ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "position"    # I
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "fromFull"    # Ljava/lang/String;

    .prologue
    .line 169
    invoke-static {p2, p3}, Lcom/weirdvoice/ui/messages/MessageFragment;->getArguments(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 171
    .local v0, "b":Landroid/os/Bundle;
    iget-boolean v4, p0, Lcom/weirdvoice/ui/messages/ConversationsListFragment;->mDualPane:Z

    if-eqz v4, :cond_0

    .line 174
    new-instance v1, Lcom/weirdvoice/ui/messages/MessageFragment;

    invoke-direct {v1}, Lcom/weirdvoice/ui/messages/MessageFragment;-><init>()V

    .line 175
    .local v1, "df":Lcom/weirdvoice/ui/messages/MessageFragment;
    invoke-virtual {v1, v0}, Lcom/weirdvoice/ui/messages/MessageFragment;->setArguments(Landroid/os/Bundle;)V

    .line 178
    invoke-virtual {p0}, Lcom/weirdvoice/ui/messages/ConversationsListFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 179
    .local v2, "ft":Landroid/support/v4/app/FragmentTransaction;
    const v4, 0x7f0b007c

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v1, v5}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 180
    const/16 v4, 0x1003

    invoke-virtual {v2, v4}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    .line 181
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 183
    invoke-virtual {p0}, Lcom/weirdvoice/ui/messages/ConversationsListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, p1, v5}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 189
    .end local v1    # "df":Lcom/weirdvoice/ui/messages/MessageFragment;
    .end local v2    # "ft":Landroid/support/v4/app/FragmentTransaction;
    :goto_0
    return-void

    .line 185
    :cond_0
    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/weirdvoice/ui/messages/ConversationsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-class v5, Lcom/weirdvoice/ui/messages/MessageActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 186
    .local v3, "it":Landroid/content/Intent;
    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 187
    invoke-virtual {p0, v3}, Lcom/weirdvoice/ui/messages/ConversationsListFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
