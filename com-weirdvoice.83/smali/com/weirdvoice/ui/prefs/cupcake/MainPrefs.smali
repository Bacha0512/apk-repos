.class public Lcom/weirdvoice/ui/prefs/cupcake/MainPrefs;
.super Lcom/actionbarsherlock/app/SherlockListActivity;
.source "MainPrefs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/weirdvoice/ui/prefs/cupcake/MainPrefs$PrefGroup;,
        Lcom/weirdvoice/ui/prefs/cupcake/MainPrefs$PrefGroupAdapter;
    }
.end annotation


# static fields
.field private static final THIS_FILE:Ljava/lang/String; = "Main prefs"


# instance fields
.field private adapter:Lcom/weirdvoice/ui/prefs/cupcake/MainPrefs$PrefGroupAdapter;

.field private prefsWrapper:Lcom/weirdvoice/utils/PreferencesWrapper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockListActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/weirdvoice/ui/prefs/cupcake/MainPrefs;)Lcom/weirdvoice/ui/prefs/cupcake/MainPrefs$PrefGroupAdapter;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/weirdvoice/ui/prefs/cupcake/MainPrefs;->adapter:Lcom/weirdvoice/ui/prefs/cupcake/MainPrefs$PrefGroupAdapter;

    return-object v0
.end method

.method private getIntentForType(I)Landroid/content/Intent;
    .locals 2
    .param p1, "t"    # I

    .prologue
    .line 56
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/weirdvoice/ui/prefs/cupcake/PrefsLoaderActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 57
    .local v0, "it":Landroid/content/Intent;
    const-string v1, "preference_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 58
    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    new-instance v0, Lcom/weirdvoice/utils/PreferencesWrapper;

    invoke-direct {v0, p0}, Lcom/weirdvoice/utils/PreferencesWrapper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/weirdvoice/ui/prefs/cupcake/MainPrefs;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesWrapper;

    .line 67
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .local v6, "prefs_list":Ljava/util/List;, "Ljava/util/List<Lcom/weirdvoice/ui/prefs/cupcake/MainPrefs$PrefGroup;>;"
    new-instance v0, Lcom/weirdvoice/ui/prefs/cupcake/MainPrefs$PrefGroup;

    const v2, 0x7f0c009c

    const v3, 0x7f0c009d

    .line 69
    const v4, 0x7f0202dc

    new-instance v5, Landroid/content/Intent;

    const-string v1, "com.weirdvoice.ui.action.PREFS_FAST"

    invoke-direct {v5, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/weirdvoice/ui/prefs/cupcake/MainPrefs$PrefGroup;-><init>(Lcom/weirdvoice/ui/prefs/cupcake/MainPrefs;IIILandroid/content/Intent;)V

    .line 68
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    new-instance v0, Lcom/weirdvoice/ui/prefs/cupcake/MainPrefs$PrefGroup;

    const v2, 0x7f0c00a0

    const v3, 0x7f0c00a1

    .line 73
    const v4, 0x7f0202de

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/weirdvoice/ui/prefs/cupcake/MainPrefs;->getIntentForType(I)Landroid/content/Intent;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/weirdvoice/ui/prefs/cupcake/MainPrefs$PrefGroup;-><init>(Lcom/weirdvoice/ui/prefs/cupcake/MainPrefs;IIILandroid/content/Intent;)V

    .line 72
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    new-instance v0, Lcom/weirdvoice/ui/prefs/cupcake/MainPrefs$PrefGroup;

    const v2, 0x7f0c00a2

    const v3, 0x7f0c00a3

    .line 75
    const v4, 0x7f0202e1

    const/16 v1, 0x3c

    invoke-direct {p0, v1}, Lcom/weirdvoice/ui/prefs/cupcake/MainPrefs;->getIntentForType(I)Landroid/content/Intent;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/weirdvoice/ui/prefs/cupcake/MainPrefs$PrefGroup;-><init>(Lcom/weirdvoice/ui/prefs/cupcake/MainPrefs;IIILandroid/content/Intent;)V

    .line 74
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    new-instance v0, Lcom/weirdvoice/ui/prefs/cupcake/MainPrefs$PrefGroup;

    const v2, 0x7f0c00a4

    const v3, 0x7f0c00a5

    .line 77
    const v4, 0x7f0202db

    const/16 v1, 0x28

    invoke-direct {p0, v1}, Lcom/weirdvoice/ui/prefs/cupcake/MainPrefs;->getIntentForType(I)Landroid/content/Intent;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/weirdvoice/ui/prefs/cupcake/MainPrefs$PrefGroup;-><init>(Lcom/weirdvoice/ui/prefs/cupcake/MainPrefs;IIILandroid/content/Intent;)V

    .line 76
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    new-instance v0, Lcom/weirdvoice/ui/prefs/cupcake/MainPrefs$PrefGroupAdapter;

    invoke-direct {v0, p0, p0, v6}, Lcom/weirdvoice/ui/prefs/cupcake/MainPrefs$PrefGroupAdapter;-><init>(Lcom/weirdvoice/ui/prefs/cupcake/MainPrefs;Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/weirdvoice/ui/prefs/cupcake/MainPrefs;->adapter:Lcom/weirdvoice/ui/prefs/cupcake/MainPrefs$PrefGroupAdapter;

    .line 82
    iget-object v0, p0, Lcom/weirdvoice/ui/prefs/cupcake/MainPrefs;->adapter:Lcom/weirdvoice/ui/prefs/cupcake/MainPrefs$PrefGroupAdapter;

    invoke-virtual {p0, v0}, Lcom/weirdvoice/ui/prefs/cupcake/MainPrefs;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 84
    invoke-virtual {p0}, Lcom/weirdvoice/ui/prefs/cupcake/MainPrefs;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 85
    return-void
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/weirdvoice/ui/prefs/cupcake/MainPrefs;->getSupportMenuInflater()Lcom/actionbarsherlock/view/MenuInflater;

    move-result-object v0

    .line 150
    .local v0, "inflater":Lcom/actionbarsherlock/view/MenuInflater;
    const v1, 0x7f0f0004

    invoke-virtual {v0, v1, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 151
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockListActivity;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z

    move-result v1

    return v1
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 90
    const-string v1, "Main prefs"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Click at index "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/weirdvoice/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-super/range {p0 .. p5}, Lcom/actionbarsherlock/app/SherlockListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 93
    iget-object v1, p0, Lcom/weirdvoice/ui/prefs/cupcake/MainPrefs;->adapter:Lcom/weirdvoice/ui/prefs/cupcake/MainPrefs$PrefGroupAdapter;

    invoke-virtual {v1, p3}, Lcom/weirdvoice/ui/prefs/cupcake/MainPrefs$PrefGroupAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/weirdvoice/ui/prefs/cupcake/MainPrefs$PrefGroup;

    .line 94
    .local v0, "pref_gp":Lcom/weirdvoice/ui/prefs/cupcake/MainPrefs$PrefGroup;
    iget-object v1, v0, Lcom/weirdvoice/ui/prefs/cupcake/MainPrefs$PrefGroup;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/weirdvoice/ui/prefs/cupcake/MainPrefs;->startActivity(Landroid/content/Intent;)V

    .line 96
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/weirdvoice/ui/prefs/cupcake/MainPrefs;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesWrapper;

    invoke-static {p1, p0, v0}, Lcom/weirdvoice/ui/prefs/PrefsLogic;->onMainActivityOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;Landroid/content/Context;Lcom/weirdvoice/utils/PreferencesWrapper;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    const/4 v0, 0x1

    .line 165
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockListActivity;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/weirdvoice/ui/prefs/cupcake/MainPrefs;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesWrapper;

    invoke-static {p1, p0, v0}, Lcom/weirdvoice/ui/prefs/PrefsLogic;->onMainActivityPrepareOptionMenu(Lcom/actionbarsherlock/view/Menu;Landroid/content/Context;Lcom/weirdvoice/utils/PreferencesWrapper;)V

    .line 157
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockListActivity;->onPrepareOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z

    move-result v0

    return v0
.end method
