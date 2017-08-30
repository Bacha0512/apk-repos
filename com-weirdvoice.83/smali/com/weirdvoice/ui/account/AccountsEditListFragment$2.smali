.class Lcom/weirdvoice/ui/account/AccountsEditListFragment$2;
.super Ljava/lang/Object;
.source "AccountsEditListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/weirdvoice/ui/account/AccountsEditListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/weirdvoice/ui/account/AccountsEditListFragment;


# direct methods
.method constructor <init>(Lcom/weirdvoice/ui/account/AccountsEditListFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/weirdvoice/ui/account/AccountsEditListFragment$2;->this$0:Lcom/weirdvoice/ui/account/AccountsEditListFragment;

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 272
    iget-object v0, p0, Lcom/weirdvoice/ui/account/AccountsEditListFragment$2;->this$0:Lcom/weirdvoice/ui/account/AccountsEditListFragment;

    # invokes: Lcom/weirdvoice/ui/account/AccountsEditListFragment;->onClickAddAccount()V
    invoke-static {v0}, Lcom/weirdvoice/ui/account/AccountsEditListFragment;->access$1(Lcom/weirdvoice/ui/account/AccountsEditListFragment;)V

    .line 273
    return-void
.end method
