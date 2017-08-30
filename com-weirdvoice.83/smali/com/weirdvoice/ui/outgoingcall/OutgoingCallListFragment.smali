.class public Lcom/weirdvoice/ui/outgoingcall/OutgoingCallListFragment;
.super Lcom/weirdvoice/widgets/CSSListFragment;
.source "OutgoingCallListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/weirdvoice/ui/outgoingcall/OutgoingCallListFragment$PluginCallRunnable;
    }
.end annotation


# static fields
.field private static final THIS_FILE:Ljava/lang/String; = "OutgoingCallListFragment"


# instance fields
.field final MOBILE_CALL_DELAY_MS:J

.field private accLoader:Lcom/weirdvoice/ui/account/AccountsLoader;

.field private callMade:Z

.field private mAdapter:Lcom/weirdvoice/ui/outgoingcall/OutgoingAccountsAdapter;

.field private startDate:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/weirdvoice/widgets/CSSListFragment;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/weirdvoice/ui/outgoingcall/OutgoingCallListFragment;->callMade:Z

    .line 86
    const-wide/16 v0, 0x258

    iput-wide v0, p0, Lcom/weirdvoice/ui/outgoingcall/OutgoingCallListFragment;->MOBILE_CALL_DELAY_MS:J

    .line 40
    return-void
.end method

.method private attachAdapter()V
    .locals 2

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/weirdvoice/ui/outgoingcall/OutgoingCallListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-nez v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/weirdvoice/ui/outgoingcall/OutgoingCallListFragment;->mAdapter:Lcom/weirdvoice/ui/outgoingcall/OutgoingAccountsAdapter;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Lcom/weirdvoice/ui/outgoingcall/OutgoingAccountsAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/weirdvoice/ui/outgoingcall/OutgoingAccountsAdapter;-><init>(Lcom/weirdvoice/ui/outgoingcall/OutgoingCallListFragment;Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/weirdvoice/ui/outgoingcall/OutgoingCallListFragment;->mAdapter:Lcom/weirdvoice/ui/outgoingcall/OutgoingAccountsAdapter;

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/weirdvoice/ui/outgoingcall/OutgoingCallListFragment;->mAdapter:Lcom/weirdvoice/ui/outgoingcall/OutgoingAccountsAdapter;

    invoke-virtual {p0, v0}, Lcom/weirdvoice/ui/outgoingcall/OutgoingCallListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 75
    :cond_1
    return-void
.end method

.method private placeCall(Landroid/database/Cursor;)Z
    .locals 20
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 94
    invoke-virtual/range {p0 .. p0}, Lcom/weirdvoice/ui/outgoingcall/OutgoingCallListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v12

    check-cast v12, Lcom/weirdvoice/ui/outgoingcall/OutgoingCallChooser;

    .line 96
    .local v12, "superActivity":Lcom/weirdvoice/ui/outgoingcall/OutgoingCallChooser;
    invoke-virtual {v12}, Lcom/weirdvoice/ui/outgoingcall/OutgoingCallChooser;->getConnectedService()Lcom/weirdvoice/api/ISipService;

    move-result-object v11

    .line 97
    .local v11, "service":Lcom/weirdvoice/api/ISipService;
    const-string v14, "id"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 98
    .local v2, "accountId":J
    const-wide/16 v14, -0x1

    cmp-long v14, v2, v14

    if-lez v14, :cond_5

    .line 100
    if-nez v11, :cond_0

    .line 101
    const/4 v14, 0x0

    .line 144
    :goto_0
    return v14

    .line 103
    :cond_0
    const-string v14, "status_for_outgoing"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_1

    const/4 v4, 0x1

    .line 104
    .local v4, "canCall":Z
    :goto_1
    if-nez v4, :cond_2

    .line 105
    const/4 v14, 0x0

    goto :goto_0

    .line 103
    .end local v4    # "canCall":Z
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 108
    .restart local v4    # "canCall":Z
    :cond_2
    :try_start_0
    const-string v14, "nbr_to_call"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 109
    .local v13, "toCall":Ljava/lang/String;
    long-to-int v14, v2

    invoke-interface {v11, v13, v14}, Lcom/weirdvoice/api/ISipService;->makeCall(Ljava/lang/String;I)V

    .line 110
    if-eqz v12, :cond_3

    .line 111
    const/4 v14, 0x1

    invoke-virtual {v12, v14}, Lcom/weirdvoice/ui/outgoingcall/OutgoingCallChooser;->finishServiceIfNeeded(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :cond_3
    const/4 v14, 0x1

    goto :goto_0

    .line 114
    .end local v13    # "toCall":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 115
    .local v8, "e":Landroid/os/RemoteException;
    const-string v14, "OutgoingCallListFragment"

    const-string v15, "Unable to make the call"

    invoke-static {v14, v15, v8}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 144
    .end local v4    # "canCall":Z
    .end local v8    # "e":Landroid/os/RemoteException;
    :cond_4
    const/4 v14, 0x0

    goto :goto_0

    .line 117
    :cond_5
    const-wide/16 v14, -0x1

    cmp-long v14, v2, v14

    if-gez v14, :cond_4

    .line 119
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/weirdvoice/ui/outgoingcall/OutgoingCallListFragment;->accLoader:Lcom/weirdvoice/ui/account/AccountsLoader;

    if-eqz v14, :cond_4

    .line 120
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/weirdvoice/ui/outgoingcall/OutgoingCallListFragment;->accLoader:Lcom/weirdvoice/ui/account/AccountsLoader;

    invoke-virtual {v14, v2, v3}, Lcom/weirdvoice/ui/account/AccountsLoader;->getCallHandlerWithAccountId(J)Lcom/weirdvoice/utils/CallHandlerPlugin;

    move-result-object v5

    .line 121
    .local v5, "ch":Lcom/weirdvoice/utils/CallHandlerPlugin;
    if-nez v5, :cond_6

    .line 122
    const-string v14, "OutgoingCallListFragment"

    const-string v15, "Call handler not anymore available in loader... something gone wrong"

    invoke-static {v14, v15}, Lcom/weirdvoice/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const/4 v14, 0x0

    goto :goto_0

    .line 125
    :cond_6
    invoke-virtual {v5}, Lcom/weirdvoice/utils/CallHandlerPlugin;->getNextExcludeTelNumber()Ljava/lang/String;

    move-result-object v9

    .line 126
    .local v9, "nextExclude":Ljava/lang/String;
    const-wide/16 v6, 0x0

    .line 127
    .local v6, "delay":J
    if-eqz v9, :cond_7

    if-eqz v11, :cond_7

    .line 129
    :try_start_1
    invoke-interface {v11, v9}, Lcom/weirdvoice/api/ISipService;->ignoreNextOutgoingCallFor(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 133
    :goto_2
    const-wide/16 v14, 0x258

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/weirdvoice/ui/outgoingcall/OutgoingCallListFragment;->startDate:J

    move-wide/from16 v18, v0

    sub-long v16, v16, v18

    sub-long v6, v14, v16

    .line 136
    :cond_7
    invoke-virtual {v5}, Lcom/weirdvoice/utils/CallHandlerPlugin;->getIntent()Landroid/app/PendingIntent;

    move-result-object v14

    if-eqz v14, :cond_8

    .line 137
    new-instance v10, Lcom/weirdvoice/ui/outgoingcall/OutgoingCallListFragment$PluginCallRunnable;

    invoke-virtual {v5}, Lcom/weirdvoice/utils/CallHandlerPlugin;->getIntent()Landroid/app/PendingIntent;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v14, v6, v7}, Lcom/weirdvoice/ui/outgoingcall/OutgoingCallListFragment$PluginCallRunnable;-><init>(Lcom/weirdvoice/ui/outgoingcall/OutgoingCallListFragment;Landroid/app/PendingIntent;J)V

    .line 138
    .local v10, "pendingTask":Lcom/weirdvoice/ui/outgoingcall/OutgoingCallListFragment$PluginCallRunnable;
    const-string v14, "OutgoingCallListFragment"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "Deferring call task of "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-virtual {v10}, Lcom/weirdvoice/ui/outgoingcall/OutgoingCallListFragment$PluginCallRunnable;->start()V

    .line 141
    .end local v10    # "pendingTask":Lcom/weirdvoice/ui/outgoingcall/OutgoingCallListFragment$PluginCallRunnable;
    :cond_8
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 130
    :catch_1
    move-exception v8

    .line 131
    .restart local v8    # "e":Landroid/os/RemoteException;
    const-string v14, "OutgoingCallListFragment"

    const-string v15, "Ignore next outgoing number failed"

    invoke-static {v14, v15}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method


# virtual methods
.method public declared-synchronized changeCursor(Landroid/database/Cursor;)V
    .locals 9
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    const/4 v8, 0x1

    .line 178
    monitor-enter p0

    if-eqz p1, :cond_4

    :try_start_0
    iget-boolean v3, p0, Lcom/weirdvoice/ui/outgoingcall/OutgoingCallListFragment;->callMade:Z

    if-nez v3, :cond_4

    .line 179
    invoke-virtual {p0}, Lcom/weirdvoice/ui/outgoingcall/OutgoingCallListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/weirdvoice/ui/outgoingcall/OutgoingCallChooser;

    .line 180
    .local v2, "superActivity":Lcom/weirdvoice/ui/outgoingcall/OutgoingCallChooser;
    invoke-virtual {v2}, Lcom/weirdvoice/ui/outgoingcall/OutgoingCallChooser;->getAccountToCallTo()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 181
    .local v0, "accountToCall":Ljava/lang/Long;
    invoke-virtual {v2}, Lcom/weirdvoice/ui/outgoingcall/OutgoingCallChooser;->canCallAutomatically()Z

    move-result v1

    .line 183
    .local v1, "canCallOtherAccounts":Z
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 187
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-ne v3, v8, :cond_1

    if-eqz v1, :cond_1

    .line 188
    invoke-direct {p0, p1}, Lcom/weirdvoice/ui/outgoingcall/OutgoingCallListFragment;->placeCall(Landroid/database/Cursor;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 189
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 190
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/weirdvoice/ui/outgoingcall/OutgoingCallListFragment;->callMade:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    .end local v0    # "accountToCall":Ljava/lang/Long;
    .end local v1    # "canCallOtherAccounts":Z
    .end local v2    # "superActivity":Lcom/weirdvoice/ui/outgoingcall/OutgoingCallChooser;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 195
    .restart local v0    # "accountToCall":Ljava/lang/Long;
    .restart local v1    # "canCallOtherAccounts":Z
    .restart local v2    # "superActivity":Lcom/weirdvoice/ui/outgoingcall/OutgoingCallChooser;
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-eqz v3, :cond_2

    .line 197
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-string v3, "id"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    .line 198
    invoke-direct {p0, p1}, Lcom/weirdvoice/ui/outgoingcall/OutgoingCallListFragment;->placeCall(Landroid/database/Cursor;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 199
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 200
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/weirdvoice/ui/outgoingcall/OutgoingCallListFragment;->callMade:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 178
    .end local v0    # "accountToCall":Ljava/lang/Long;
    .end local v1    # "canCallOtherAccounts":Z
    .end local v2    # "superActivity":Lcom/weirdvoice/ui/outgoingcall/OutgoingCallChooser;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 204
    .restart local v0    # "accountToCall":Ljava/lang/Long;
    .restart local v1    # "canCallOtherAccounts":Z
    .restart local v2    # "superActivity":Lcom/weirdvoice/ui/outgoingcall/OutgoingCallChooser;
    :cond_2
    :try_start_2
    const-string v3, "force_call"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-ne v3, v8, :cond_3

    if-eqz v1, :cond_3

    .line 207
    invoke-direct {p0, p1}, Lcom/weirdvoice/ui/outgoingcall/OutgoingCallListFragment;->placeCall(Landroid/database/Cursor;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 208
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 209
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/weirdvoice/ui/outgoingcall/OutgoingCallListFragment;->callMade:Z

    goto :goto_0

    .line 213
    :cond_3
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 219
    .end local v0    # "accountToCall":Ljava/lang/Long;
    .end local v1    # "canCallOtherAccounts":Z
    .end local v2    # "superActivity":Lcom/weirdvoice/ui/outgoingcall/OutgoingCallChooser;
    :cond_4
    iget-object v3, p0, Lcom/weirdvoice/ui/outgoingcall/OutgoingCallListFragment;->mAdapter:Lcom/weirdvoice/ui/outgoingcall/OutgoingAccountsAdapter;

    if-eqz v3, :cond_0

    .line 220
    iget-object v3, p0, Lcom/weirdvoice/ui/outgoingcall/OutgoingCallListFragment;->mAdapter:Lcom/weirdvoice/ui/outgoingcall/OutgoingAccountsAdapter;

    invoke-virtual {v3, p1}, Lcom/weirdvoice/ui/outgoingcall/OutgoingAccountsAdapter;->changeCursor(Landroid/database/Cursor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public getAccountLoader()Lcom/weirdvoice/ui/account/AccountsLoader;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/weirdvoice/ui/outgoingcall/OutgoingCallListFragment;->accLoader:Lcom/weirdvoice/ui/account/AccountsLoader;

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/weirdvoice/widgets/CSSListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 66
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/weirdvoice/widgets/CSSListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/weirdvoice/ui/outgoingcall/OutgoingCallListFragment;->setHasOptionsMenu(Z)V

    .line 52
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 5
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
    .line 80
    invoke-virtual {p0}, Lcom/weirdvoice/ui/outgoingcall/OutgoingCallListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/weirdvoice/ui/outgoingcall/OutgoingCallChooser;

    .line 81
    .local v0, "superActivity":Lcom/weirdvoice/ui/outgoingcall/OutgoingCallChooser;
    new-instance v1, Lcom/weirdvoice/ui/account/AccountsLoader;

    invoke-virtual {p0}, Lcom/weirdvoice/ui/outgoingcall/OutgoingCallListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v0}, Lcom/weirdvoice/ui/outgoingcall/OutgoingCallChooser;->getPhoneNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/weirdvoice/ui/outgoingcall/OutgoingCallChooser;->shouldIgnoreRewritingRules()Z

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/weirdvoice/ui/account/AccountsLoader;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    iput-object v1, p0, Lcom/weirdvoice/ui/outgoingcall/OutgoingCallListFragment;->accLoader:Lcom/weirdvoice/ui/account/AccountsLoader;

    .line 82
    iget-object v1, p0, Lcom/weirdvoice/ui/outgoingcall/OutgoingCallListFragment;->accLoader:Lcom/weirdvoice/ui/account/AccountsLoader;

    return-object v1
.end method

.method public declared-synchronized onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 1
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 226
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/weirdvoice/ui/outgoingcall/OutgoingCallListFragment;->mAdapter:Lcom/weirdvoice/ui/outgoingcall/OutgoingAccountsAdapter;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/weirdvoice/ui/outgoingcall/OutgoingCallListFragment;->mAdapter:Lcom/weirdvoice/ui/outgoingcall/OutgoingAccountsAdapter;

    invoke-virtual {v0, p3}, Lcom/weirdvoice/ui/outgoingcall/OutgoingAccountsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    invoke-direct {p0, v0}, Lcom/weirdvoice/ui/outgoingcall/OutgoingCallListFragment;->placeCall(Landroid/database/Cursor;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    :cond_0
    monitor-exit p0

    return-void

    .line 226
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 56
    invoke-super {p0}, Lcom/weirdvoice/widgets/CSSListFragment;->onResume()V

    .line 57
    iput-boolean v2, p0, Lcom/weirdvoice/ui/outgoingcall/OutgoingCallListFragment;->callMade:Z

    .line 58
    invoke-direct {p0}, Lcom/weirdvoice/ui/outgoingcall/OutgoingCallListFragment;->attachAdapter()V

    .line 59
    invoke-virtual {p0}, Lcom/weirdvoice/ui/outgoingcall/OutgoingCallListFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/weirdvoice/ui/outgoingcall/OutgoingCallListFragment;->startDate:J

    .line 61
    return-void
.end method
