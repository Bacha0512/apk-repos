.class public Lcom/weirdvoice/ui/filters/AccountFilters;
.super Lcom/actionbarsherlock/app/SherlockFragmentActivity;
.source "AccountFilters.java"


# static fields
.field private static final THIS_FILE:Ljava/lang/String; = "AccountFilters"


# instance fields
.field private accountId:J

.field private listFragment:Lcom/weirdvoice/ui/filters/AccountFiltersListFragment;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;-><init>()V

    .line 40
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/weirdvoice/ui/filters/AccountFilters;->accountId:J

    .line 37
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v6, -0x1

    .line 45
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const/4 v1, 0x0

    .line 47
    .local v1, "accountName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 48
    .local v3, "wizard":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/weirdvoice/ui/filters/AccountFilters;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 49
    .local v2, "extras":Landroid/os/Bundle;
    if-eqz v2, :cond_0

    .line 50
    const-string v4, "id"

    invoke-virtual {v2, v4, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/weirdvoice/ui/filters/AccountFilters;->accountId:J

    .line 51
    const-string v4, "display_name"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 52
    const-string v4, "wizard"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 55
    :cond_0
    iget-wide v4, p0, Lcom/weirdvoice/ui/filters/AccountFilters;->accountId:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 56
    const-string v4, "AccountFilters"

    const-string v5, "You provide an empty account id...."

    invoke-static {v4, v5}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lcom/weirdvoice/ui/filters/AccountFilters;->finish()V

    .line 59
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 60
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/weirdvoice/ui/filters/AccountFilters;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c01fd

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/weirdvoice/ui/filters/AccountFilters;->setTitle(Ljava/lang/CharSequence;)V

    .line 62
    :cond_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 63
    invoke-virtual {p0}, Lcom/weirdvoice/ui/filters/AccountFilters;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    .line 64
    .local v0, "ab":Lcom/actionbarsherlock/app/ActionBar;
    if-eqz v0, :cond_3

    .line 65
    invoke-static {v3}, Lcom/weirdvoice/wizards/WizardUtils;->getWizardIconRes(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/actionbarsherlock/app/ActionBar;->setIcon(I)V

    .line 69
    .end local v0    # "ab":Lcom/actionbarsherlock/app/ActionBar;
    :cond_3
    const v4, 0x7f030015

    invoke-virtual {p0, v4}, Lcom/weirdvoice/ui/filters/AccountFilters;->setContentView(I)V

    .line 70
    invoke-virtual {p0}, Lcom/weirdvoice/ui/filters/AccountFilters;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    const v5, 0x7f0b0039

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v4

    check-cast v4, Lcom/weirdvoice/ui/filters/AccountFiltersListFragment;

    iput-object v4, p0, Lcom/weirdvoice/ui/filters/AccountFilters;->listFragment:Lcom/weirdvoice/ui/filters/AccountFiltersListFragment;

    .line 71
    iget-object v4, p0, Lcom/weirdvoice/ui/filters/AccountFilters;->listFragment:Lcom/weirdvoice/ui/filters/AccountFiltersListFragment;

    iget-wide v6, p0, Lcom/weirdvoice/ui/filters/AccountFilters;->accountId:J

    invoke-virtual {v4, v6, v7}, Lcom/weirdvoice/ui/filters/AccountFiltersListFragment;->setAccountId(J)V

    .line 72
    invoke-virtual {p0}, Lcom/weirdvoice/ui/filters/AccountFilters;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 73
    return-void
.end method

.method public bridge synthetic onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 76
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    invoke-static {}, Lcom/weirdvoice/utils/Compatibility;->getHomeMenuId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/weirdvoice/ui/filters/AccountFilters;->finish()V

    .line 78
    const/4 v0, 0x1

    .line 80
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

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
    invoke-super/range {p0 .. p6}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

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
    invoke-super/range {p0 .. p7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void
.end method
