.class public Lcom/weirdvoice/ui/messages/MessageActivity;
.super Lcom/actionbarsherlock/app/SherlockFragmentActivity;
.source "MessageActivity.java"

# interfaces
.implements Lcom/weirdvoice/ui/messages/MessageFragment$OnQuitListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    if-nez p1, :cond_0

    .line 40
    new-instance v0, Lcom/weirdvoice/ui/messages/MessageFragment;

    invoke-direct {v0}, Lcom/weirdvoice/ui/messages/MessageFragment;-><init>()V

    .line 41
    .local v0, "detailFragment":Lcom/weirdvoice/ui/messages/MessageFragment;
    invoke-virtual {p0}, Lcom/weirdvoice/ui/messages/MessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/weirdvoice/ui/messages/MessageFragment;->setArguments(Landroid/os/Bundle;)V

    .line 43
    invoke-virtual {p0}, Lcom/weirdvoice/ui/messages/MessageActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 44
    const v2, 0x1020002

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 45
    invoke-virtual {v0, p0}, Lcom/weirdvoice/ui/messages/MessageFragment;->setOnQuitListener(Lcom/weirdvoice/ui/messages/MessageFragment$OnQuitListener;)V

    .line 47
    .end local v0    # "detailFragment":Lcom/weirdvoice/ui/messages/MessageFragment;
    :cond_0
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
    .line 57
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    invoke-static {}, Lcom/weirdvoice/utils/Compatibility;->getHomeMenuId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/weirdvoice/ui/messages/MessageActivity;->finish()V

    .line 59
    const/4 v0, 0x1

    .line 62
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onQuit()V
    .locals 0

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/weirdvoice/ui/messages/MessageActivity;->finish()V

    .line 68
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 51
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onStart()V

    .line 52
    invoke-virtual {p0}, Lcom/weirdvoice/ui/messages/MessageActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 53
    return-void
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
