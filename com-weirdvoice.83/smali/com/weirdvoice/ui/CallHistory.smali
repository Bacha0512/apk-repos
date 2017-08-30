.class public Lcom/weirdvoice/ui/CallHistory;
.super Lcom/actionbarsherlock/app/SherlockListActivity;
.source "CallHistory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/weirdvoice/ui/CallHistory$CallhistoryTask;
    }
.end annotation


# instance fields
.field adapter:Lcom/weirdvoice/ui/CallList;

.field context:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockListActivity;-><init>()V

    .line 33
    iput-object p0, p0, Lcom/weirdvoice/ui/CallHistory;->context:Landroid/content/Context;

    .line 30
    return-void
.end method


# virtual methods
.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 175
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/weirdvoice/ui/CallHistory;->context:Landroid/content/Context;

    const-class v2, Lcom/weirdvoice/ui/SipHome;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 176
    .local v0, "goNext":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/weirdvoice/ui/CallHistory;->startActivity(Landroid/content/Intent;)V

    .line 177
    invoke-virtual {p0}, Lcom/weirdvoice/ui/CallHistory;->finish()V

    .line 178
    const/4 v1, 0x1

    return v1
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 37
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockListActivity;->onResume()V

    .line 39
    new-instance v0, Lcom/weirdvoice/ui/CallHistory$CallhistoryTask;

    invoke-direct {v0, p0}, Lcom/weirdvoice/ui/CallHistory$CallhistoryTask;-><init>(Lcom/weirdvoice/ui/CallHistory;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/weirdvoice/ui/CallHistory$CallhistoryTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 41
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 169
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockListActivity;->onStart()V

    .line 170
    invoke-virtual {p0}, Lcom/weirdvoice/ui/CallHistory;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 171
    return-void
.end method
