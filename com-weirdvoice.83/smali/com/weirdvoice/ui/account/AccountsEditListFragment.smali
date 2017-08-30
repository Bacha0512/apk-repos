.class public Lcom/weirdvoice/ui/account/AccountsEditListFragment;
.super Lcom/weirdvoice/widgets/CSSListFragment;
.source "AccountsEditListFragment.java"

# interfaces
.implements Lcom/weirdvoice/ui/account/AccountsEditListAdapter$OnCheckedRowListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/weirdvoice/ui/account/AccountsEditListFragment$AccountStatusContentObserver;
    }
.end annotation


# static fields
.field private static final CHANGE_WIZARD:I = 0x1

.field private static final CHOOSE_WIZARD:I = 0x0

.field private static final CURRENT_CHOICE:Ljava/lang/String; = "curChoice"

.field public static final MENU_ITEM_ACTIVATE:I = 0x1

.field public static final MENU_ITEM_DELETE:I = 0x3

.field public static final MENU_ITEM_MODIFY:I = 0x2

.field public static final MENU_ITEM_WIZARD:I = 0x4

.field private static final THIS_FILE:Ljava/lang/String;


# instance fields
.field private curCheckPosition:Ljava/lang/Long;

.field private dualPane:Z

.field private mAdapter:Lcom/weirdvoice/ui/account/AccountsEditListAdapter;

.field private final mHandler:Landroid/os/Handler;

.field private mHeaderView:Landroid/view/View;

.field private statusObserver:Lcom/weirdvoice/ui/account/AccountsEditListFragment$AccountStatusContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 225
    const/4 v0, 0x0

    sput-object v0, Lcom/weirdvoice/ui/account/AccountsEditListFragment;->THIS_FILE:Ljava/lang/String;

    .line 466
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/weirdvoice/widgets/CSSListFragment;-><init>()V

    .line 71
    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/weirdvoice/ui/account/AccountsEditListFragment;->curCheckPosition:Ljava/lang/Long;

    .line 73
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/weirdvoice/ui/account/AccountsEditListFragment;->mHandler:Landroid/os/Handler;

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/weirdvoice/ui/account/AccountsEditListFragment;->statusObserver:Lcom/weirdvoice/ui/account/AccountsEditListFragment$AccountStatusContentObserver;

    .line 68
    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    sget-object v0, Lcom/weirdvoice/ui/account/AccountsEditListFragment;->THIS_FILE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/weirdvoice/ui/account/AccountsEditListFragment;)V
    .locals 0

    .prologue
    .line 546
    invoke-direct {p0}, Lcom/weirdvoice/ui/account/AccountsEditListFragment;->onClickAddAccount()V

    return-void
.end method

.method private onClickAddAccount()V
    .locals 0

    .prologue
    .line 548
    return-void
.end method

.method private profileFromContextMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)Lcom/weirdvoice/api/SipProfile;
    .locals 8
    .param p1, "cmi"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    const/4 v4, 0x0

    .line 476
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 481
    .local v3, "info":Landroid/widget/AdapterView$AdapterContextMenuInfo;, "Landroid/widget/AdapterView$AdapterContextMenuInfo;"
    invoke-virtual {p0}, Lcom/weirdvoice/ui/account/AccountsEditListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    iget v6, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {p0}, Lcom/weirdvoice/ui/account/AccountsEditListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-interface {v5, v6}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;

    .line 482
    .local v1, "c":Landroid/database/Cursor;
    if-nez v1, :cond_0

    .line 486
    .end local v1    # "c":Landroid/database/Cursor;
    .end local v3    # "info":Landroid/widget/AdapterView$AdapterContextMenuInfo;, "Landroid/widget/AdapterView$AdapterContextMenuInfo;"
    :goto_0
    return-object v4

    .line 477
    :catch_0
    move-exception v2

    .line 478
    .local v2, "e":Ljava/lang/ClassCastException;
    sget-object v5, Lcom/weirdvoice/ui/account/AccountsEditListFragment;->THIS_FILE:Ljava/lang/String;

    const-string v6, "bad menuInfo"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 486
    .end local v2    # "e":Ljava/lang/ClassCastException;
    .restart local v1    # "c":Landroid/database/Cursor;
    .restart local v3    # "info":Landroid/widget/AdapterView$AdapterContextMenuInfo;, "Landroid/widget/AdapterView$AdapterContextMenuInfo;"
    :cond_0
    new-instance v4, Lcom/weirdvoice/api/SipProfile;

    invoke-direct {v4, v1}, Lcom/weirdvoice/api/SipProfile;-><init>(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method private showDetails(JLjava/lang/String;)V
    .locals 5
    .param p1, "profileId"    # J
    .param p3, "wizard"    # Ljava/lang/String;

    .prologue
    .line 371
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 373
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/weirdvoice/ui/account/AccountsEditListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/weirdvoice/wizards/BasePrefsWizard;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 374
    const-wide/16 v2, -0x1

    cmp-long v1, p1, v2

    if-eqz v1, :cond_0

    .line 375
    const-string v1, "id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 377
    :cond_0
    const-string v1, "wizard"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 383
    return-void
.end method

.method private updateCheckedItem()V
    .locals 8

    .prologue
    .line 287
    iget-object v1, p0, Lcom/weirdvoice/ui/account/AccountsEditListFragment;->curCheckPosition:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-eqz v1, :cond_3

    .line 288
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/weirdvoice/ui/account/AccountsEditListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 299
    :cond_0
    return-void

    .line 289
    :cond_1
    invoke-virtual {p0}, Lcom/weirdvoice/ui/account/AccountsEditListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    .line 290
    .local v2, "profId":J
    iget-object v1, p0, Lcom/weirdvoice/ui/account/AccountsEditListFragment;->curCheckPosition:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    .line 291
    invoke-virtual {p0}, Lcom/weirdvoice/ui/account/AccountsEditListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {v1, v0, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 288
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 295
    .end local v0    # "i":I
    .end local v2    # "profId":J
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/weirdvoice/ui/account/AccountsEditListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 296
    invoke-virtual {p0}, Lcom/weirdvoice/ui/account/AccountsEditListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 295
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public changeCursor(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 552
    iget-object v0, p0, Lcom/weirdvoice/ui/account/AccountsEditListFragment;->mAdapter:Lcom/weirdvoice/ui/account/AccountsEditListAdapter;

    if-eqz v0, :cond_0

    .line 553
    iget-object v0, p0, Lcom/weirdvoice/ui/account/AccountsEditListFragment;->mAdapter:Lcom/weirdvoice/ui/account/AccountsEditListAdapter;

    invoke-virtual {v0, p1}, Lcom/weirdvoice/ui/account/AccountsEditListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 555
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 103
    invoke-super {p0, p1}, Lcom/weirdvoice/widgets/CSSListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 104
    invoke-virtual {p0}, Lcom/weirdvoice/ui/account/AccountsEditListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 107
    .local v1, "lv":Landroid/widget/ListView;
    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 111
    invoke-virtual {p0}, Lcom/weirdvoice/ui/account/AccountsEditListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v5, 0x7f0b007c

    invoke-virtual {v2, v5}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 112
    .local v0, "detailsFrame":Landroid/view/View;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/weirdvoice/ui/account/AccountsEditListFragment;->dualPane:Z

    .line 115
    if-eqz p1, :cond_0

    .line 117
    const-string v2, "curChoice"

    const-wide/16 v6, -0x1

    invoke-virtual {p1, v2, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/weirdvoice/ui/account/AccountsEditListFragment;->curCheckPosition:Ljava/lang/Long;

    .line 120
    :cond_0
    invoke-virtual {p0, v4}, Lcom/weirdvoice/ui/account/AccountsEditListFragment;->setListShown(Z)V

    .line 121
    iget-object v2, p0, Lcom/weirdvoice/ui/account/AccountsEditListFragment;->mAdapter:Lcom/weirdvoice/ui/account/AccountsEditListAdapter;

    if-nez v2, :cond_2

    .line 122
    iget-object v2, p0, Lcom/weirdvoice/ui/account/AccountsEditListFragment;->mHeaderView:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 123
    iget-object v2, p0, Lcom/weirdvoice/ui/account/AccountsEditListFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v1, v2, v8, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 125
    :cond_1
    new-instance v2, Lcom/weirdvoice/ui/account/AccountsEditListAdapter;

    invoke-virtual {p0}, Lcom/weirdvoice/ui/account/AccountsEditListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v2, v5, v8}, Lcom/weirdvoice/ui/account/AccountsEditListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v2, p0, Lcom/weirdvoice/ui/account/AccountsEditListFragment;->mAdapter:Lcom/weirdvoice/ui/account/AccountsEditListAdapter;

    .line 126
    iget-object v2, p0, Lcom/weirdvoice/ui/account/AccountsEditListFragment;->mAdapter:Lcom/weirdvoice/ui/account/AccountsEditListAdapter;

    invoke-virtual {v2, p0}, Lcom/weirdvoice/ui/account/AccountsEditListAdapter;->setOnCheckedRowListener(Lcom/weirdvoice/ui/account/AccountsEditListAdapter$OnCheckedRowListener;)V

    .line 129
    iget-object v2, p0, Lcom/weirdvoice/ui/account/AccountsEditListFragment;->mAdapter:Lcom/weirdvoice/ui/account/AccountsEditListAdapter;

    invoke-virtual {p0, v2}, Lcom/weirdvoice/ui/account/AccountsEditListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 130
    invoke-virtual {p0, v1}, Lcom/weirdvoice/ui/account/AccountsEditListFragment;->registerForContextMenu(Landroid/view/View;)V

    .line 134
    invoke-virtual {p0}, Lcom/weirdvoice/ui/account/AccountsEditListFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v2

    invoke-virtual {v2, v4, v8, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 136
    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 139
    :cond_2
    iget-boolean v2, p0, Lcom/weirdvoice/ui/account/AccountsEditListFragment;->dualPane:Z

    if-eqz v2, :cond_4

    .line 141
    const-string v2, "lp"

    const-string v5, "dual pane mode"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 144
    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 145
    const/16 v2, 0x32

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setFadingEdgeLength(I)V

    .line 147
    invoke-direct {p0}, Lcom/weirdvoice/ui/account/AccountsEditListFragment;->updateCheckedItem()V

    .line 155
    :goto_1
    return-void

    :cond_3
    move v2, v4

    .line 112
    goto :goto_0

    .line 152
    :cond_4
    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 153
    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setFadingEdgeLength(I)V

    goto :goto_1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x0

    const-wide/16 v6, -0x1

    .line 429
    invoke-super {p0, p1, p2, p3}, Lcom/weirdvoice/widgets/CSSListFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 430
    const/4 v4, -0x1

    if-ne p2, v4, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 432
    if-nez p1, :cond_1

    .line 434
    const-string v4, "ID"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 435
    .local v3, "wizardId":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 436
    invoke-direct {p0, v6, v7, v3}, Lcom/weirdvoice/ui/account/AccountsEditListFragment;->showDetails(JLjava/lang/String;)V

    .line 455
    .end local v3    # "wizardId":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 438
    :cond_1
    const/4 v4, 0x1

    if-ne p1, v4, :cond_0

    .line 440
    const-string v4, "ID"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 441
    .restart local v3    # "wizardId":Ljava/lang/String;
    const-string v4, "android.intent.extra.UID"

    invoke-virtual {p3, v4, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 443
    .local v0, "accountId":J
    if-eqz v3, :cond_0

    cmp-long v4, v0, v6

    if-eqz v4, :cond_0

    .line 444
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 445
    .local v2, "cv":Landroid/content/ContentValues;
    const-string v4, "wizard"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    invoke-virtual {p0}, Lcom/weirdvoice/ui/account/AccountsEditListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 447
    sget-object v5, Lcom/weirdvoice/api/SipProfile;->ACCOUNT_ID_URI_BASE:Landroid/net/Uri;

    invoke-static {v5, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 446
    invoke-virtual {v4, v5, v2, v8, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 9
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x1

    .line 514
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/weirdvoice/ui/account/AccountsEditListFragment;->profileFromContextMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)Lcom/weirdvoice/api/SipProfile;

    move-result-object v0

    .line 515
    .local v0, "account":Lcom/weirdvoice/api/SipProfile;
    if-nez v0, :cond_0

    .line 517
    invoke-super {p0, p1}, Lcom/weirdvoice/widgets/CSSListFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    .line 542
    :goto_0
    return v4

    .line 520
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 542
    invoke-super {p0, p1}, Lcom/weirdvoice/widgets/CSSListFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    goto :goto_0

    .line 522
    :pswitch_0
    invoke-virtual {p0}, Lcom/weirdvoice/ui/account/AccountsEditListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Lcom/weirdvoice/api/SipProfile;->ACCOUNT_ID_URI_BASE:Landroid/net/Uri;

    iget-wide v6, v0, Lcom/weirdvoice/api/SipProfile;->id:J

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v3, v5, v8, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 526
    :pswitch_1
    iget-wide v6, v0, Lcom/weirdvoice/api/SipProfile;->id:J

    iget-object v3, v0, Lcom/weirdvoice/api/SipProfile;->wizard:Ljava/lang/String;

    invoke-direct {p0, v6, v7, v3}, Lcom/weirdvoice/ui/account/AccountsEditListFragment;->showDetails(JLjava/lang/String;)V

    goto :goto_0

    .line 530
    :pswitch_2
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 531
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v5, "active"

    iget-boolean v3, v0, Lcom/weirdvoice/api/SipProfile;->active:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 532
    invoke-virtual {p0}, Lcom/weirdvoice/ui/account/AccountsEditListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Lcom/weirdvoice/api/SipProfile;->ACCOUNT_ID_URI_BASE:Landroid/net/Uri;

    iget-wide v6, v0, Lcom/weirdvoice/api/SipProfile;->id:J

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v3, v5, v1, v8, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    move v3, v4

    .line 531
    goto :goto_1

    .line 536
    .end local v1    # "cv":Landroid/content/ContentValues;
    :pswitch_3
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/weirdvoice/ui/account/AccountsEditListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-class v5, Lcom/weirdvoice/wizards/WizardChooser;

    invoke-direct {v2, v3, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 537
    .local v2, "it":Landroid/content/Intent;
    const-string v3, "android.intent.extra.UID"

    iget-wide v6, v0, Lcom/weirdvoice/api/SipProfile;->id:J

    invoke-virtual {v2, v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 538
    invoke-virtual {p0, v2, v4}, Lcom/weirdvoice/ui/account/AccountsEditListFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 520
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 97
    invoke-super {p0, p1}, Lcom/weirdvoice/widgets/CSSListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 98
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/weirdvoice/ui/account/AccountsEditListFragment;->setHasOptionsMenu(Z)V

    .line 99
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 5
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    const/4 v4, 0x0

    .line 491
    invoke-super {p0, p1, p2, p3}, Lcom/weirdvoice/widgets/CSSListFragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 492
    invoke-direct {p0, p3}, Lcom/weirdvoice/ui/account/AccountsEditListFragment;->profileFromContextMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)Lcom/weirdvoice/api/SipProfile;

    move-result-object v0

    .line 493
    .local v0, "account":Lcom/weirdvoice/api/SipProfile;
    if-nez v0, :cond_0

    .line 510
    :goto_0
    return-void

    .line 496
    :cond_0
    iget-object v2, v0, Lcom/weirdvoice/api/SipProfile;->wizard:Ljava/lang/String;

    invoke-static {v2}, Lcom/weirdvoice/wizards/WizardUtils;->getWizardClass(Ljava/lang/String;)Lcom/weirdvoice/wizards/WizardUtils$WizardInfo;

    move-result-object v1

    .line 499
    .local v1, "wizardInfos":Lcom/weirdvoice/wizards/WizardUtils$WizardInfo;
    iget-object v2, v0, Lcom/weirdvoice/api/SipProfile;->display_name:Ljava/lang/String;

    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 500
    if-eqz v1, :cond_1

    .line 501
    iget v2, v1, Lcom/weirdvoice/wizards/WizardUtils$WizardInfo;->icon:I

    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->setHeaderIcon(I)Landroid/view/ContextMenu;

    .line 504
    :cond_1
    const/4 v3, 0x1

    iget-boolean v2, v0, Lcom/weirdvoice/api/SipProfile;->active:Z

    if-eqz v2, :cond_2

    const v2, 0x7f0c01f3

    :goto_1
    invoke-interface {p1, v4, v3, v4, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 506
    const/4 v2, 0x2

    const v3, 0x7f0c01f5

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 507
    const/4 v2, 0x3

    const v3, 0x7f0c01f4

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 508
    const/4 v2, 0x4

    const v3, 0x7f0c01f7

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0

    .line 505
    :cond_2
    const v2, 0x7f0c01f2

    goto :goto_1
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
    const/4 v4, 0x0

    .line 410
    new-instance v0, Landroid/support/v4/content/CursorLoader;

    invoke-virtual {p0}, Lcom/weirdvoice/ui/account/AccountsEditListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/weirdvoice/api/SipProfile;->ACCOUNT_URI:Landroid/net/Uri;

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 411
    const-string v6, "id AS _id"

    aput-object v6, v3, v5

    const/4 v5, 0x1

    .line 412
    const-string v6, "id"

    aput-object v6, v3, v5

    const/4 v5, 0x2

    .line 413
    const-string v6, "display_name"

    aput-object v6, v3, v5

    const/4 v5, 0x3

    .line 414
    const-string v6, "wizard"

    aput-object v6, v3, v5

    const/4 v5, 0x4

    .line 415
    const-string v6, "active"

    aput-object v6, v3, v5

    move-object v5, v4

    move-object v6, v4

    .line 410
    invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 0
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;
    .param p2, "inflater"    # Lcom/actionbarsherlock/view/MenuInflater;

    .prologue
    .line 222
    invoke-super {p0, p1, p2}, Lcom/weirdvoice/widgets/CSSListFragment;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V

    .line 223
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 231
    const v4, 0x7f030019

    invoke-virtual {p1, v4, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 233
    .local v3, "v":Landroid/view/View;
    const v4, 0x102000a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/weirdvoice/widgets/DragnDropListView;

    .line 235
    .local v2, "lv":Lcom/weirdvoice/widgets/DragnDropListView;
    const v4, 0x7f0b0041

    invoke-virtual {v2, v4}, Lcom/weirdvoice/widgets/DragnDropListView;->setGrabberId(I)V

    .line 237
    new-instance v4, Lcom/weirdvoice/ui/account/AccountsEditListFragment$1;

    invoke-direct {v4, p0, v2}, Lcom/weirdvoice/ui/account/AccountsEditListFragment$1;-><init>(Lcom/weirdvoice/ui/account/AccountsEditListFragment;Lcom/weirdvoice/widgets/DragnDropListView;)V

    invoke-virtual {v2, v4}, Lcom/weirdvoice/widgets/DragnDropListView;->setOnDropListener(Lcom/weirdvoice/widgets/DragnDropListView$DropListener;)V

    .line 269
    new-instance v0, Lcom/weirdvoice/ui/account/AccountsEditListFragment$2;

    invoke-direct {v0, p0}, Lcom/weirdvoice/ui/account/AccountsEditListFragment$2;-><init>(Lcom/weirdvoice/ui/account/AccountsEditListFragment;)V

    .line 276
    .local v0, "addClickButtonListener":Landroid/view/View$OnClickListener;
    const v4, 0x7f03003b

    invoke-virtual {p1, v4, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/weirdvoice/ui/account/AccountsEditListFragment;->mHeaderView:Landroid/view/View;

    .line 277
    iget-object v4, p0, Lcom/weirdvoice/ui/account/AccountsEditListFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    const v4, 0x1020004

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 281
    .local v1, "bt":Landroid/widget/Button;
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 283
    return-object v3
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 6
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 332
    sget-object v2, Lcom/weirdvoice/ui/account/AccountsEditListFragment;->THIS_FILE:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Checked "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " et "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    invoke-virtual {p0}, Lcom/weirdvoice/ui/account/AccountsEditListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 335
    .local v1, "lv":Landroid/widget/ListView;
    const/4 v2, 0x1

    invoke-virtual {v1, p3, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 337
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/weirdvoice/ui/account/AccountsEditListFragment;->curCheckPosition:Ljava/lang/Long;

    .line 338
    invoke-virtual {p0}, Lcom/weirdvoice/ui/account/AccountsEditListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v3

    sub-int v3, p3, v3

    invoke-interface {v2, v3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 339
    .local v0, "c":Landroid/database/Cursor;
    const-string v2, "wizard"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p4, p5, v2}, Lcom/weirdvoice/ui/account/AccountsEditListFragment;->showDetails(JLjava/lang/String;)V

    .line 340
    return-void
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 0
    .param p2, "data"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 422
    .local p1, "loader":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    invoke-super {p0, p1, p2}, Lcom/weirdvoice/widgets/CSSListFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    .line 424
    invoke-direct {p0}, Lcom/weirdvoice/ui/account/AccountsEditListFragment;->updateCheckedItem()V

    .line 425
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 321
    invoke-super {p0}, Lcom/weirdvoice/widgets/CSSListFragment;->onPause()V

    .line 322
    iget-object v0, p0, Lcom/weirdvoice/ui/account/AccountsEditListFragment;->statusObserver:Lcom/weirdvoice/ui/account/AccountsEditListFragment$AccountStatusContentObserver;

    if-eqz v0, :cond_0

    .line 323
    invoke-virtual {p0}, Lcom/weirdvoice/ui/account/AccountsEditListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/weirdvoice/ui/account/AccountsEditListFragment;->statusObserver:Lcom/weirdvoice/ui/account/AccountsEditListFragment$AccountStatusContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 324
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/weirdvoice/ui/account/AccountsEditListFragment;->statusObserver:Lcom/weirdvoice/ui/account/AccountsEditListFragment$AccountStatusContentObserver;

    .line 326
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 311
    invoke-super {p0}, Lcom/weirdvoice/widgets/CSSListFragment;->onResume()V

    .line 312
    iget-object v0, p0, Lcom/weirdvoice/ui/account/AccountsEditListFragment;->statusObserver:Lcom/weirdvoice/ui/account/AccountsEditListFragment$AccountStatusContentObserver;

    if-nez v0, :cond_0

    .line 313
    new-instance v0, Lcom/weirdvoice/ui/account/AccountsEditListFragment$AccountStatusContentObserver;

    iget-object v1, p0, Lcom/weirdvoice/ui/account/AccountsEditListFragment;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/weirdvoice/ui/account/AccountsEditListFragment$AccountStatusContentObserver;-><init>(Lcom/weirdvoice/ui/account/AccountsEditListFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/weirdvoice/ui/account/AccountsEditListFragment;->statusObserver:Lcom/weirdvoice/ui/account/AccountsEditListFragment$AccountStatusContentObserver;

    .line 314
    invoke-virtual {p0}, Lcom/weirdvoice/ui/account/AccountsEditListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/weirdvoice/api/SipProfile;->ACCOUNT_STATUS_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/weirdvoice/ui/account/AccountsEditListFragment;->statusObserver:Lcom/weirdvoice/ui/account/AccountsEditListFragment$AccountStatusContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/weirdvoice/ui/account/AccountsEditListFragment;->mAdapter:Lcom/weirdvoice/ui/account/AccountsEditListAdapter;

    invoke-virtual {v0}, Lcom/weirdvoice/ui/account/AccountsEditListAdapter;->notifyDataSetChanged()V

    .line 317
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 304
    invoke-super {p0, p1}, Lcom/weirdvoice/widgets/CSSListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 305
    const-string v0, "curChoice"

    iget-object v1, p0, Lcom/weirdvoice/ui/account/AccountsEditListFragment;->curCheckPosition:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 306
    return-void
.end method

.method public onToggleRow(Lcom/weirdvoice/ui/account/AccountsEditListAdapter$AccountRowTag;)V
    .locals 6
    .param p1, "tag"    # Lcom/weirdvoice/ui/account/AccountsEditListAdapter$AccountRowTag;

    .prologue
    const/4 v3, 0x0

    .line 403
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 404
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v2, "active"

    iget-boolean v1, p1, Lcom/weirdvoice/ui/account/AccountsEditListAdapter$AccountRowTag;->activated:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 405
    invoke-virtual {p0}, Lcom/weirdvoice/ui/account/AccountsEditListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/weirdvoice/api/SipProfile;->ACCOUNT_ID_URI_BASE:Landroid/net/Uri;

    iget-wide v4, p1, Lcom/weirdvoice/ui/account/AccountsEditListAdapter$AccountRowTag;->accountId:J

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 406
    return-void

    .line 404
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method
