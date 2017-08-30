.class Lcom/weirdvoice/ui/account/AccountsEditListFragment$AccountStatusContentObserver;
.super Landroid/database/ContentObserver;
.source "AccountsEditListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/weirdvoice/ui/account/AccountsEditListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AccountStatusContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/weirdvoice/ui/account/AccountsEditListFragment;


# direct methods
.method public constructor <init>(Lcom/weirdvoice/ui/account/AccountsEditListFragment;Landroid/os/Handler;)V
    .locals 0
    .param p2, "h"    # Landroid/os/Handler;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/weirdvoice/ui/account/AccountsEditListFragment$AccountStatusContentObserver;->this$0:Lcom/weirdvoice/ui/account/AccountsEditListFragment;

    .line 81
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 82
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 85
    # getter for: Lcom/weirdvoice/ui/account/AccountsEditListFragment;->THIS_FILE:Ljava/lang/String;
    invoke-static {}, Lcom/weirdvoice/ui/account/AccountsEditListFragment;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Accounts status.onChange( "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v0, p0, Lcom/weirdvoice/ui/account/AccountsEditListFragment$AccountStatusContentObserver;->this$0:Lcom/weirdvoice/ui/account/AccountsEditListFragment;

    invoke-virtual {v0}, Lcom/weirdvoice/ui/account/AccountsEditListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 87
    return-void
.end method
