.class Lcom/weirdvoice/ui/dialpad/DialerFragment$4;
.super Ljava/lang/Object;
.source "DialerFragment.java"

# interfaces
.implements Lcom/actionbarsherlock/view/MenuItem$OnMenuItemClickListener;


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
    iput-object p1, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment$4;->this$0:Lcom/weirdvoice/ui/dialpad/DialerFragment;

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 283
    iget-object v2, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment$4;->this$0:Lcom/weirdvoice/ui/dialpad/DialerFragment;

    iget-object v0, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment$4;->this$0:Lcom/weirdvoice/ui/dialpad/DialerFragment;

    # getter for: Lcom/weirdvoice/ui/dialpad/DialerFragment;->accountChooserFilterItem:Lcom/actionbarsherlock/view/MenuItem;
    invoke-static {v0}, Lcom/weirdvoice/ui/dialpad/DialerFragment;->access$4(Lcom/weirdvoice/ui/dialpad/DialerFragment;)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/actionbarsherlock/view/MenuItem;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    # invokes: Lcom/weirdvoice/ui/dialpad/DialerFragment;->setRewritingFeature(Z)V
    invoke-static {v2, v0}, Lcom/weirdvoice/ui/dialpad/DialerFragment;->access$5(Lcom/weirdvoice/ui/dialpad/DialerFragment;Z)V

    .line 284
    return v1

    :cond_0
    move v0, v1

    .line 283
    goto :goto_0
.end method
