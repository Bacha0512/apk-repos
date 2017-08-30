.class public abstract Landroid/support/v4/app/_ActionBarSherlockTrojanHorse;
.super Landroid/support/v4/app/FragmentActivity;
.source "_ActionBarSherlockTrojanHorse.java"

# interfaces
.implements Lcom/actionbarsherlock/ActionBarSherlock$OnCreatePanelMenuListener;
.implements Lcom/actionbarsherlock/ActionBarSherlock$OnPreparePanelListener;
.implements Lcom/actionbarsherlock/ActionBarSherlock$OnMenuItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/_ActionBarSherlockTrojanHorse$OnCreateOptionsMenuListener;,
        Landroid/support/v4/app/_ActionBarSherlockTrojanHorse$OnOptionsItemSelectedListener;,
        Landroid/support/v4/app/_ActionBarSherlockTrojanHorse$OnPrepareOptionsMenuListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "_ActionBarSherlockTrojanHorse"


# instance fields
.field private mCreatedMenus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method

.method private getAddedFragments()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    invoke-virtual {p0}, Landroid/support/v4/app/_ActionBarSherlockTrojanHorse;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v0, v0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public abstract getSupportMenuInflater()Lcom/actionbarsherlock/view/MenuInflater;
.end method

.method public abstract onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
.end method

.method public onCreatePanelMenu(ILcom/actionbarsherlock/view/Menu;)Z
    .locals 8
    .param p1, "featureId"    # I
    .param p2, "menu"    # Lcom/actionbarsherlock/view/Menu;

    .prologue
    .line 50
    if-nez p1, :cond_8

    .line 51
    invoke-direct {p0}, Landroid/support/v4/app/_ActionBarSherlockTrojanHorse;->getAddedFragments()Ljava/util/List;

    move-result-object v1

    .line 52
    .local v1, "fragments":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/Fragment;>;"
    invoke-virtual {p0, p2}, Landroid/support/v4/app/_ActionBarSherlockTrojanHorse;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z

    move-result v5

    .line 55
    .local v5, "result":Z
    invoke-virtual {p0}, Landroid/support/v4/app/_ActionBarSherlockTrojanHorse;->getSupportMenuInflater()Lcom/actionbarsherlock/view/MenuInflater;

    move-result-object v3

    .line 56
    .local v3, "inflater":Lcom/actionbarsherlock/view/MenuInflater;
    const/4 v6, 0x0

    .line 57
    .local v6, "show":Z
    const/4 v4, 0x0

    .line 58
    .local v4, "newMenus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/Fragment;>;"
    if-eqz v1, :cond_0

    .line 59
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-lt v2, v7, :cond_2

    .line 72
    .end local v2    # "i":I
    :cond_0
    iget-object v7, p0, Landroid/support/v4/app/_ActionBarSherlockTrojanHorse;->mCreatedMenus:Ljava/util/ArrayList;

    if-eqz v7, :cond_1

    .line 73
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    iget-object v7, p0, Landroid/support/v4/app/_ActionBarSherlockTrojanHorse;->mCreatedMenus:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt v2, v7, :cond_5

    .line 81
    .end local v2    # "i":I
    :cond_1
    iput-object v4, p0, Landroid/support/v4/app/_ActionBarSherlockTrojanHorse;->mCreatedMenus:Ljava/util/ArrayList;

    .line 84
    or-int/2addr v5, v6

    .line 89
    .end local v1    # "fragments":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/Fragment;>;"
    .end local v3    # "inflater":Lcom/actionbarsherlock/view/MenuInflater;
    .end local v4    # "newMenus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/Fragment;>;"
    .end local v5    # "result":Z
    .end local v6    # "show":Z
    :goto_2
    return v5

    .line 60
    .restart local v1    # "fragments":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/Fragment;>;"
    .restart local v2    # "i":I
    .restart local v3    # "inflater":Lcom/actionbarsherlock/view/MenuInflater;
    .restart local v4    # "newMenus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/Fragment;>;"
    .restart local v5    # "result":Z
    .restart local v6    # "show":Z
    :cond_2
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 61
    .local v0, "f":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_4

    iget-boolean v7, v0, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-nez v7, :cond_4

    iget-boolean v7, v0, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v7, :cond_4

    iget-boolean v7, v0, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v7, :cond_4

    instance-of v7, v0, Landroid/support/v4/app/_ActionBarSherlockTrojanHorse$OnCreateOptionsMenuListener;

    if-eqz v7, :cond_4

    .line 62
    const/4 v6, 0x1

    move-object v7, v0

    .line 63
    check-cast v7, Landroid/support/v4/app/_ActionBarSherlockTrojanHorse$OnCreateOptionsMenuListener;

    invoke-interface {v7, p2, v3}, Landroid/support/v4/app/_ActionBarSherlockTrojanHorse$OnCreateOptionsMenuListener;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V

    .line 64
    if-nez v4, :cond_3

    .line 65
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "newMenus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/Fragment;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .restart local v4    # "newMenus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/Fragment;>;"
    :cond_3
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 74
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    :cond_5
    iget-object v7, p0, Landroid/support/v4/app/_ActionBarSherlockTrojanHorse;->mCreatedMenus:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 75
    .restart local v0    # "f":Landroid/support/v4/app/Fragment;
    if-eqz v4, :cond_6

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 76
    :cond_6
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->onDestroyOptionsMenu()V

    .line 73
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 89
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    .end local v1    # "fragments":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/Fragment;>;"
    .end local v2    # "i":I
    .end local v3    # "inflater":Lcom/actionbarsherlock/view/MenuInflater;
    .end local v4    # "newMenus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/Fragment;>;"
    .end local v5    # "result":Z
    .end local v6    # "show":Z
    :cond_8
    const/4 v5, 0x0

    goto :goto_2
.end method

.method public bridge synthetic onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v4/app/FragmentActivity;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onMenuItemSelected(ILcom/actionbarsherlock/view/MenuItem;)Z
    .locals 5
    .param p1, "featureId"    # I
    .param p2, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    const/4 v3, 0x1

    .line 127
    if-nez p1, :cond_2

    .line 128
    invoke-virtual {p0, p2}, Landroid/support/v4/app/_ActionBarSherlockTrojanHorse;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 145
    :cond_0
    :goto_0
    return v3

    .line 131
    :cond_1
    invoke-direct {p0}, Landroid/support/v4/app/_ActionBarSherlockTrojanHorse;->getAddedFragments()Ljava/util/List;

    move-result-object v1

    .line 134
    .local v1, "fragments":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/Fragment;>;"
    if-eqz v1, :cond_2

    .line 135
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lt v2, v4, :cond_3

    .line 145
    .end local v1    # "fragments":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/Fragment;>;"
    .end local v2    # "i":I
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 136
    .restart local v1    # "fragments":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/Fragment;>;"
    .restart local v2    # "i":I
    :cond_3
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 137
    .local v0, "f":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_4

    iget-boolean v4, v0, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-nez v4, :cond_4

    iget-boolean v4, v0, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v4, :cond_4

    iget-boolean v4, v0, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v4, :cond_4

    instance-of v4, v0, Landroid/support/v4/app/_ActionBarSherlockTrojanHorse$OnOptionsItemSelectedListener;

    if-eqz v4, :cond_4

    .line 138
    check-cast v0, Landroid/support/v4/app/_ActionBarSherlockTrojanHorse$OnOptionsItemSelectedListener;

    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    invoke-interface {v0, p2}, Landroid/support/v4/app/_ActionBarSherlockTrojanHorse$OnOptionsItemSelectedListener;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 135
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public abstract onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
.end method

.method public abstract onPrepareOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
.end method

.method public onPreparePanel(ILandroid/view/View;Lcom/actionbarsherlock/view/Menu;)Z
    .locals 6
    .param p1, "featureId"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menu"    # Lcom/actionbarsherlock/view/Menu;

    .prologue
    .line 96
    if-nez p1, :cond_3

    .line 97
    invoke-direct {p0}, Landroid/support/v4/app/_ActionBarSherlockTrojanHorse;->getAddedFragments()Ljava/util/List;

    move-result-object v1

    .line 98
    .local v1, "fragments":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/Fragment;>;"
    invoke-virtual {p0, p3}, Landroid/support/v4/app/_ActionBarSherlockTrojanHorse;->onPrepareOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z

    move-result v3

    .line 101
    .local v3, "result":Z
    const/4 v4, 0x0

    .line 103
    .local v4, "show":Z
    if-eqz v1, :cond_0

    .line 104
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lt v2, v5, :cond_1

    .line 114
    .end local v2    # "i":I
    :cond_0
    or-int/2addr v3, v4

    .line 116
    invoke-interface {p3}, Lcom/actionbarsherlock/view/Menu;->hasVisibleItems()Z

    move-result v5

    and-int/2addr v3, v5

    .line 120
    .end local v1    # "fragments":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/Fragment;>;"
    .end local v3    # "result":Z
    .end local v4    # "show":Z
    :goto_1
    return v3

    .line 105
    .restart local v1    # "fragments":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/Fragment;>;"
    .restart local v2    # "i":I
    .restart local v3    # "result":Z
    .restart local v4    # "show":Z
    :cond_1
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 106
    .local v0, "f":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_2

    iget-boolean v5, v0, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-nez v5, :cond_2

    iget-boolean v5, v0, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v5, :cond_2

    iget-boolean v5, v0, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v5, :cond_2

    instance-of v5, v0, Landroid/support/v4/app/_ActionBarSherlockTrojanHorse$OnPrepareOptionsMenuListener;

    if-eqz v5, :cond_2

    .line 107
    const/4 v4, 0x1

    .line 108
    check-cast v0, Landroid/support/v4/app/_ActionBarSherlockTrojanHorse$OnPrepareOptionsMenuListener;

    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    invoke-interface {v0, p3}, Landroid/support/v4/app/_ActionBarSherlockTrojanHorse$OnPrepareOptionsMenuListener;->onPrepareOptionsMenu(Lcom/actionbarsherlock/view/Menu;)V

    .line 104
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 120
    .end local v1    # "fragments":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/Fragment;>;"
    .end local v2    # "i":I
    .end local v3    # "result":Z
    .end local v4    # "show":Z
    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public bridge synthetic startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-super/range {p0 .. p6}, Landroid/support/v4/app/FragmentActivity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    return-void
.end method

.method public bridge synthetic startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-super/range {p0 .. p7}, Landroid/support/v4/app/FragmentActivity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void
.end method
