.class Lcom/weirdvoice/ui/dialpad/DialerFragment$8;
.super Ljava/lang/Object;
.source "DialerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/weirdvoice/ui/dialpad/DialerFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/weirdvoice/ui/dialpad/DialerFragment;


# direct methods
.method constructor <init>(Lcom/weirdvoice/ui/dialpad/DialerFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment$8;->this$0:Lcom/weirdvoice/ui/dialpad/DialerFragment;

    .line 370
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 373
    iget-object v0, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment$8;->this$0:Lcom/weirdvoice/ui/dialpad/DialerFragment;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment$8;->this$0:Lcom/weirdvoice/ui/dialpad/DialerFragment;

    invoke-virtual {v2}, Lcom/weirdvoice/ui/dialpad/DialerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/weirdvoice/ui/Tabfav;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/weirdvoice/ui/dialpad/DialerFragment;->startActivity(Landroid/content/Intent;)V

    .line 374
    return-void
.end method
