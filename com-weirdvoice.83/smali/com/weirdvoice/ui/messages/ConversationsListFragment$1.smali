.class Lcom/weirdvoice/ui/messages/ConversationsListFragment$1;
.super Ljava/lang/Object;
.source "ConversationsListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/weirdvoice/ui/messages/ConversationsListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/weirdvoice/ui/messages/ConversationsListFragment;


# direct methods
.method constructor <init>(Lcom/weirdvoice/ui/messages/ConversationsListFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/weirdvoice/ui/messages/ConversationsListFragment$1;->this$0:Lcom/weirdvoice/ui/messages/ConversationsListFragment;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/weirdvoice/ui/messages/ConversationsListFragment$1;->this$0:Lcom/weirdvoice/ui/messages/ConversationsListFragment;

    # invokes: Lcom/weirdvoice/ui/messages/ConversationsListFragment;->onClickAddMessage()V
    invoke-static {v0}, Lcom/weirdvoice/ui/messages/ConversationsListFragment;->access$0(Lcom/weirdvoice/ui/messages/ConversationsListFragment;)V

    .line 103
    return-void
.end method
