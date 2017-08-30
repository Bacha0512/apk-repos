.class public Lcom/weirdvoice/ui/help/Help;
.super Lcom/actionbarsherlock/app/SherlockDialogFragment;
.source "Help.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/weirdvoice/ui/help/Help$HelpArrayAdapter;,
        Lcom/weirdvoice/ui/help/Help$HelpEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/actionbarsherlock/app/SherlockDialogFragment;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# static fields
.field private static final ARG_KILL_LOADING:Ljava/lang/String; = "kill_loading"

.field private static final CHANGE_PREFS:I = 0x1

.field private static final CLOSE:I = 0x3

.field private static final FAQ:I = 0x0

.field private static final FAVORITES:I = 0xc

.field private static final FORREGCALLS:I = 0x6

.field private static final HOWTODIAL:I = 0x5

.field private static final LASTCALLS:I = 0xb

.field private static final LEGALS:I = 0x1

.field private static final MYACCOUNT:I = 0xa

.field private static final ORDER:I = 0x7

.field private static final OTHERAPP:I = 0x9

.field private static final PARAMS:I = 0x2

.field private static final RATES:I = 0x4

.field private static final REQUEST_SEND_LOGS:I = 0x0

.field private static final SUPPORT:I = 0x8

.field private static final THIS_FILE:Ljava/lang/String; = "Help"


# instance fields
.field private prefProviderWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockDialogFragment;-><init>()V

    return-void
.end method

.method private disconnect(Z)V
    .locals 5
    .param p1, "quit"    # Z

    .prologue
    .line 404
    const-string v1, "Help"

    const-string v2, "True disconnection..."

    invoke-static {v1, v2}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.weirdvoice.service.ACTION_OUTGOING_UNREGISTER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 406
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "outgoing_activity"

    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/weirdvoice/ui/help/Help;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lcom/weirdvoice/ui/SipHome;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 407
    invoke-virtual {p0}, Lcom/weirdvoice/ui/help/Help;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 408
    if-eqz p1, :cond_0

    .line 409
    invoke-virtual {p0}, Lcom/weirdvoice/ui/help/Help;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 411
    :cond_0
    return-void
.end method

.method public static newInstance()Lcom/weirdvoice/ui/help/Help;
    .locals 4

    .prologue
    .line 74
    new-instance v1, Lcom/weirdvoice/ui/help/Help;

    invoke-direct {v1}, Lcom/weirdvoice/ui/help/Help;-><init>()V

    .line 75
    .local v1, "instance":Lcom/weirdvoice/ui/help/Help;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 76
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "kill_loading"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 77
    invoke-virtual {v1, v0}, Lcom/weirdvoice/ui/help/Help;->setArguments(Landroid/os/Bundle;)V

    .line 78
    return-object v1
.end method


# virtual methods
.method public getCustomView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v9, 0x1080041

    const/4 v8, 0x0

    .line 135
    const v4, 0x7f03003d

    invoke-virtual {p1, v4, p2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 136
    .local v3, "v":Landroid/view/View;
    const v4, 0x102000a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 137
    .local v1, "lv":Landroid/widget/ListView;
    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 142
    .local v0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/weirdvoice/ui/help/Help$HelpEntry;>;"
    new-instance v4, Lcom/weirdvoice/ui/help/Help$HelpEntry;

    const v5, 0x1080030

    const v6, 0x7f0c020d

    const/4 v7, 0x3

    invoke-direct {v4, p0, v5, v6, v7}, Lcom/weirdvoice/ui/help/Help$HelpEntry;-><init>(Lcom/weirdvoice/ui/help/Help;III)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    new-instance v4, Lcom/weirdvoice/ui/help/Help$HelpEntry;

    const v5, 0x1080040

    const v6, 0x7f0c0255

    const/4 v7, 0x5

    invoke-direct {v4, p0, v5, v6, v7}, Lcom/weirdvoice/ui/help/Help$HelpEntry;-><init>(Lcom/weirdvoice/ui/help/Help;III)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    new-instance v4, Lcom/weirdvoice/ui/help/Help$HelpEntry;

    const v5, 0x7f0202e9

    const v6, 0x7f0c0273

    const/4 v7, 0x4

    invoke-direct {v4, p0, v5, v6, v7}, Lcom/weirdvoice/ui/help/Help$HelpEntry;-><init>(Lcom/weirdvoice/ui/help/Help;III)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    invoke-static {}, Lcom/weirdvoice/utils/CustomDistribution;->isWeirdApp()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 146
    new-instance v4, Lcom/weirdvoice/ui/help/Help$HelpEntry;

    const v5, 0x1080036

    const v6, 0x7f0c025a

    const/4 v7, 0x6

    invoke-direct {v4, p0, v5, v6, v7}, Lcom/weirdvoice/ui/help/Help$HelpEntry;-><init>(Lcom/weirdvoice/ui/help/Help;III)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    :cond_0
    new-instance v4, Lcom/weirdvoice/ui/help/Help$HelpEntry;

    const v5, 0x7f0202e7

    const v6, 0x7f0c0276

    const/16 v7, 0xa

    invoke-direct {v4, p0, v5, v6, v7}, Lcom/weirdvoice/ui/help/Help$HelpEntry;-><init>(Lcom/weirdvoice/ui/help/Help;III)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    new-instance v4, Lcom/weirdvoice/ui/help/Help$HelpEntry;

    const v5, 0x1080033

    const v6, 0x7f0c0275

    const/4 v7, 0x7

    invoke-direct {v4, p0, v5, v6, v7}, Lcom/weirdvoice/ui/help/Help$HelpEntry;-><init>(Lcom/weirdvoice/ui/help/Help;III)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    new-instance v4, Lcom/weirdvoice/ui/help/Help$HelpEntry;

    const v5, 0x7f0c0259

    const/16 v6, 0x8

    invoke-direct {v4, p0, v9, v5, v6}, Lcom/weirdvoice/ui/help/Help$HelpEntry;-><init>(Lcom/weirdvoice/ui/help/Help;III)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    new-instance v4, Lcom/weirdvoice/ui/help/Help$HelpEntry;

    const v5, 0x108004a

    const v6, 0x7f0c020a

    const/16 v7, 0xb

    invoke-direct {v4, p0, v5, v6, v7}, Lcom/weirdvoice/ui/help/Help$HelpEntry;-><init>(Lcom/weirdvoice/ui/help/Help;III)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    new-instance v4, Lcom/weirdvoice/ui/help/Help$HelpEntry;

    const v5, 0x7f02017e

    const v6, 0x7f0c020c

    const/16 v7, 0xc

    invoke-direct {v4, p0, v5, v6, v7}, Lcom/weirdvoice/ui/help/Help$HelpEntry;-><init>(Lcom/weirdvoice/ui/help/Help;III)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    invoke-static {}, Lcom/weirdvoice/utils/CustomDistribution;->isSamApp()Z

    move-result v4

    if-nez v4, :cond_1

    .line 153
    new-instance v4, Lcom/weirdvoice/ui/help/Help$HelpEntry;

    const v5, 0x1080045

    const v6, 0x7f0c0267

    const/16 v7, 0x9

    invoke-direct {v4, p0, v5, v6, v7}, Lcom/weirdvoice/ui/help/Help$HelpEntry;-><init>(Lcom/weirdvoice/ui/help/Help;III)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    :cond_1
    new-instance v4, Lcom/weirdvoice/ui/help/Help$HelpEntry;

    const v5, 0x108003f

    const v6, 0x7f0c0229

    const/4 v7, 0x1

    invoke-direct {v4, p0, v5, v6, v7}, Lcom/weirdvoice/ui/help/Help$HelpEntry;-><init>(Lcom/weirdvoice/ui/help/Help;III)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    invoke-static {}, Lcom/weirdvoice/utils/CustomDistribution;->getFaqLink()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 160
    new-instance v4, Lcom/weirdvoice/ui/help/Help$HelpEntry;

    const v5, 0x7f0c0213

    invoke-direct {v4, p0, v9, v5, v8}, Lcom/weirdvoice/ui/help/Help$HelpEntry;-><init>(Lcom/weirdvoice/ui/help/Help;III)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    :cond_2
    new-instance v4, Lcom/weirdvoice/ui/help/Help$HelpArrayAdapter;

    invoke-virtual {p0}, Lcom/weirdvoice/ui/help/Help;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v4, p0, v5, v0}, Lcom/weirdvoice/ui/help/Help$HelpArrayAdapter;-><init>(Lcom/weirdvoice/ui/help/Help;Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 183
    const v4, 0x1020014

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 184
    .local v2, "tv":Landroid/widget/TextView;
    const-string v4, "Based on GPL application"

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    return-object v3
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    .line 376
    if-nez p1, :cond_1

    .line 378
    :try_start_0
    invoke-virtual {p0}, Lcom/weirdvoice/ui/help/Help;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 391
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/actionbarsherlock/app/SherlockDialogFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 392
    return-void

    .line 379
    :catch_0
    move-exception v0

    .line 380
    .local v0, "ex":Ljava/lang/IllegalStateException;
    invoke-virtual {p0}, Lcom/weirdvoice/ui/help/Help;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "kill_loading"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 382
    .end local v0    # "ex":Ljava/lang/IllegalStateException;
    :cond_1
    if-ne p1, v4, :cond_0

    .line 384
    :try_start_1
    invoke-virtual {p0}, Lcom/weirdvoice/ui/help/Help;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.weirdvoice.service.ACTION_SIP_REQUEST_RESTART"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 385
    invoke-virtual {p0}, Lcom/weirdvoice/ui/help/Help;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/weirdvoice/utils/backup/BackupWrapper;->getInstance(Landroid/content/Context;)Lcom/weirdvoice/utils/backup/BackupWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/weirdvoice/utils/backup/BackupWrapper;->dataChanged()V

    .line 386
    invoke-virtual {p0}, Lcom/weirdvoice/ui/help/Help;->dismiss()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 387
    :catch_1
    move-exception v0

    .line 388
    .restart local v0    # "ex":Ljava/lang/IllegalStateException;
    invoke-virtual {p0}, Lcom/weirdvoice/ui/help/Help;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "kill_loading"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 101
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockDialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 103
    new-instance v0, Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    invoke-virtual {p0}, Lcom/weirdvoice/ui/help/Help;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/weirdvoice/ui/help/Help;->prefProviderWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    .line 105
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v3, 0x7f0c01e8

    .line 111
    invoke-virtual {p0}, Lcom/weirdvoice/ui/help/Help;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, "result":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/weirdvoice/ui/help/Help;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c01e8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 115
    invoke-virtual {p0}, Lcom/weirdvoice/ui/help/Help;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/weirdvoice/ui/help/Help;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 116
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " v."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 120
    .end local v0    # "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/weirdvoice/ui/help/Help;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 121
    const v3, 0x1080040

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 122
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 123
    const v3, 0x7f0c01f1

    new-instance v4, Lcom/weirdvoice/ui/help/Help$1;

    invoke-direct {v4, p0}, Lcom/weirdvoice/ui/help/Help$1;-><init>(Lcom/weirdvoice/ui/help/Help;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 129
    invoke-virtual {p0}, Lcom/weirdvoice/ui/help/Help;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4, p1}, Lcom/weirdvoice/ui/help/Help;->getCustomView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 130
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 120
    return-object v2

    .line 118
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 18
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 221
    .local p1, "av":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual/range {p1 .. p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v3

    check-cast v3, Lcom/weirdvoice/ui/help/Help$HelpArrayAdapter;

    .line 222
    .local v3, "haa":Lcom/weirdvoice/ui/help/Help$HelpArrayAdapter;
    move/from16 v0, p3

    invoke-virtual {v3, v0}, Lcom/weirdvoice/ui/help/Help$HelpArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/weirdvoice/ui/help/Help$HelpEntry;

    .line 225
    .local v4, "he":Lcom/weirdvoice/ui/help/Help$HelpEntry;
    invoke-virtual/range {p0 .. p0}, Lcom/weirdvoice/ui/help/Help;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v14

    invoke-static {v14}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 226
    .local v8, "prefs":Landroid/content/SharedPreferences;
    const-string v14, "username"

    const-string v15, ""

    invoke-interface {v8, v14, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 228
    .local v11, "username":Ljava/lang/String;
    iget v14, v4, Lcom/weirdvoice/ui/help/Help$HelpEntry;->choiceTag:I

    packed-switch v14, :pswitch_data_0

    .line 368
    :goto_0
    return-void

    .line 231
    :pswitch_0
    const-string v14, "Help"

    const-string v15, "CLOSE"

    invoke-static {v14, v15}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/weirdvoice/ui/help/Help;->prefProviderWrapper:Lcom/weirdvoice/utils/PreferencesProviderWrapper;

    const-string v15, "has_been_quit"

    const/16 v16, 0x1

    invoke-virtual/range {v14 .. v16}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 233
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/weirdvoice/ui/help/Help;->disconnect(Z)V

    goto :goto_0

    .line 236
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/weirdvoice/ui/help/Help;->dismiss()V

    .line 237
    new-instance v14, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/weirdvoice/ui/help/Help;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v15

    const-class v16, Lcom/weirdvoice/ui/rates/TabRates;

    invoke-direct/range {v14 .. v16}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/weirdvoice/ui/help/Help;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 240
    :pswitch_2
    invoke-static {}, Lcom/weirdvoice/ui/help/HowDialDialog;->newInstance()Lcom/weirdvoice/ui/help/HowDialDialog;

    move-result-object v6

    .line 241
    .local v6, "newFragment":Lcom/actionbarsherlock/app/SherlockDialogFragment;
    invoke-virtual/range {p0 .. p0}, Lcom/weirdvoice/ui/help/Help;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v14

    const-string v15, "dial"

    invoke-virtual {v6, v14, v15}, Lcom/actionbarsherlock/app/SherlockDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 244
    .end local v6    # "newFragment":Lcom/actionbarsherlock/app/SherlockDialogFragment;
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/weirdvoice/ui/help/Help;->dismiss()V

    .line 245
    new-instance v14, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/weirdvoice/ui/help/Help;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v15

    const-class v16, Lcom/weirdvoice/ui/help/WeirdWC;

    invoke-direct/range {v14 .. v16}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/weirdvoice/ui/help/Help;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 248
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lcom/weirdvoice/ui/help/Help;->dismiss()V

    .line 249
    new-instance v14, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/weirdvoice/ui/help/Help;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v15

    const-class v16, Lcom/weirdvoice/ui/Myaccount;

    invoke-direct/range {v14 .. v16}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/weirdvoice/ui/help/Help;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 252
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/weirdvoice/ui/help/Help;->dismiss()V

    .line 253
    const-string v14, "accregistered"

    const-string v15, ""

    invoke-interface {v8, v14, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 254
    .local v1, "accReg":Ljava/lang/String;
    const-string v14, ""

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 255
    const-string v14, "Help"

    const-string v15, "empty u"

    invoke-static {v14, v15}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    invoke-virtual/range {p0 .. p0}, Lcom/weirdvoice/ui/help/Help;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v14

    const v15, 0x7f0c0268

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 258
    :cond_0
    const-string v14, "noreg"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 259
    const-string v14, "Help"

    const-string v15, "noreg"

    invoke-static {v14, v15}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    invoke-virtual/range {p0 .. p0}, Lcom/weirdvoice/ui/help/Help;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v14

    const v15, 0x7f0c0268

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 261
    :cond_1
    const-string v14, "reg"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 262
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/weirdvoice/utils/CustomDistribution;->getBuyUrl()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 264
    .local v10, "url":Ljava/lang/String;
    invoke-static {}, Lcom/weirdvoice/utils/CustomDistribution;->isSamApp()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 265
    const/4 v12, 0x0

    .line 266
    .local v12, "version":I
    const-string v13, ""

    .line 268
    .local v13, "zename":Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/weirdvoice/ui/help/Help;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v14

    invoke-virtual {v14}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/weirdvoice/ui/help/Help;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v15

    invoke-virtual {v15}, Landroid/support/v4/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x80

    invoke-virtual/range {v14 .. v16}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    .line 269
    .local v7, "packageInfo":Landroid/content/pm/PackageInfo;
    iget v12, v7, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 270
    invoke-static {}, Lcom/weirdvoice/utils/CustomDistribution;->appname()Ljava/lang/String;

    move-result-object v14

    sget-object v15, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v14, v15}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    .line 272
    .end local v7    # "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_1
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, "&v="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 275
    .end local v12    # "version":I
    .end local v13    # "zename":Ljava/lang/String;
    :cond_2
    new-instance v5, Landroid/content/Intent;

    const-string v14, "android.intent.action.VIEW"

    invoke-direct {v5, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 276
    .local v5, "i":Landroid/content/Intent;
    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {v5, v14}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 277
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/weirdvoice/ui/help/Help;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 279
    .end local v5    # "i":Landroid/content/Intent;
    .end local v10    # "url":Ljava/lang/String;
    :cond_3
    const-string v14, "Help"

    const-string v15, "not sure reg"

    invoke-static {v14, v15}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    invoke-virtual/range {p0 .. p0}, Lcom/weirdvoice/ui/help/Help;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v14

    const v15, 0x7f0c025e

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 285
    .end local v1    # "accReg":Ljava/lang/String;
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Lcom/weirdvoice/ui/help/Help;->dismiss()V

    .line 286
    const/4 v14, 0x1

    new-array v9, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    invoke-static {}, Lcom/weirdvoice/utils/CustomDistribution;->getSupportEmail()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v9, v14

    .line 287
    .local v9, "recipients":[Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    const-string v14, "android.intent.action.SEND"

    invoke-direct {v2, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 288
    .local v2, "emailIntent":Landroid/content/Intent;
    const-string v14, "plain/text"

    invoke-virtual {v2, v14}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 289
    const-string v14, "android.intent.extra.EMAIL"

    invoke-virtual {v2, v14, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 290
    const-string v14, "android.intent.extra.SUBJECT"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "Support ("

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/weirdvoice/ui/help/Help;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f0c01e8

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", account "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 291
    const-string v14, "Email..."

    invoke-static {v2, v14}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/weirdvoice/ui/help/Help;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 294
    .end local v2    # "emailIntent":Landroid/content/Intent;
    .end local v9    # "recipients":[Ljava/lang/String;
    :pswitch_7
    invoke-virtual/range {p0 .. p0}, Lcom/weirdvoice/ui/help/Help;->dismiss()V

    .line 295
    new-instance v14, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/weirdvoice/ui/help/Help;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v15

    const-class v16, Lcom/weirdvoice/ui/CallHistory;

    invoke-direct/range {v14 .. v16}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/weirdvoice/ui/help/Help;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 298
    :pswitch_8
    invoke-virtual/range {p0 .. p0}, Lcom/weirdvoice/ui/help/Help;->dismiss()V

    .line 299
    new-instance v14, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/weirdvoice/ui/help/Help;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v15

    const-class v16, Lcom/weirdvoice/ui/Tabfav;

    invoke-direct/range {v14 .. v16}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/weirdvoice/ui/help/Help;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 306
    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Lcom/weirdvoice/ui/help/Help;->dismiss()V

    .line 307
    const-string v10, "http://www.tribair.com/policyios.rhtml"

    .line 308
    .restart local v10    # "url":Ljava/lang/String;
    new-instance v5, Landroid/content/Intent;

    const-string v14, "android.intent.action.VIEW"

    invoke-direct {v5, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 309
    .restart local v5    # "i":Landroid/content/Intent;
    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {v5, v14}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 310
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/weirdvoice/ui/help/Help;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 318
    .end local v5    # "i":Landroid/content/Intent;
    .end local v10    # "url":Ljava/lang/String;
    :pswitch_a
    new-instance v14, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/weirdvoice/ui/help/Help;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v15

    const-class v16, Lcom/weirdvoice/ui/prefs/PrefsFast;

    invoke-direct/range {v14 .. v16}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/weirdvoice/ui/help/Help;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 323
    :pswitch_b
    invoke-static {}, Lcom/weirdvoice/ui/help/Legal;->newInstance()Lcom/weirdvoice/ui/help/Legal;

    move-result-object v6

    .line 324
    .restart local v6    # "newFragment":Lcom/actionbarsherlock/app/SherlockDialogFragment;
    invoke-virtual/range {p0 .. p0}, Lcom/weirdvoice/ui/help/Help;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v14

    const-string v15, "issues"

    invoke-virtual {v6, v14, v15}, Lcom/actionbarsherlock/app/SherlockDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 271
    .end local v6    # "newFragment":Lcom/actionbarsherlock/app/SherlockDialogFragment;
    .restart local v1    # "accReg":Ljava/lang/String;
    .restart local v10    # "url":Ljava/lang/String;
    .restart local v12    # "version":I
    .restart local v13    # "zename":Ljava/lang/String;
    :catch_0
    move-exception v14

    goto/16 :goto_1

    .line 228
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_9
        :pswitch_4
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 396
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockDialogFragment;->onResume()V

    .line 397
    invoke-virtual {p0}, Lcom/weirdvoice/ui/help/Help;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "kill_loading"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 398
    .local v0, "kill":Z
    if-eqz v0, :cond_0

    .line 399
    invoke-virtual {p0}, Lcom/weirdvoice/ui/help/Help;->dismiss()V

    .line 401
    :cond_0
    return-void
.end method
