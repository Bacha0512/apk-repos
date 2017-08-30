.class Lcom/weirdvoice/ui/dialpad/DialerFragment$7;
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
    iput-object p1, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment$7;->this$0:Lcom/weirdvoice/ui/dialpad/DialerFragment;

    .line 357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 360
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment$7;->this$0:Lcom/weirdvoice/ui/dialpad/DialerFragment;

    invoke-virtual {v1}, Lcom/weirdvoice/ui/dialpad/DialerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/weirdvoice/ui/CountryCodeTab;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 361
    .local v0, "goCountryCode":Landroid/content/Intent;
    const-string v1, "from"

    const-string v2, "SipHome"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 362
    iget-object v1, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment$7;->this$0:Lcom/weirdvoice/ui/dialpad/DialerFragment;

    invoke-virtual {v1, v0}, Lcom/weirdvoice/ui/dialpad/DialerFragment;->startActivity(Landroid/content/Intent;)V

    .line 363
    return-void
.end method
