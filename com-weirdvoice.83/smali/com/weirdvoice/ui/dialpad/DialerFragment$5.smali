.class Lcom/weirdvoice/ui/dialpad/DialerFragment$5;
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
    iput-object p1, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment$5;->this$0:Lcom/weirdvoice/ui/dialpad/DialerFragment;

    .line 334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 337
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 338
    .local v0, "contactPickerIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment$5;->this$0:Lcom/weirdvoice/ui/dialpad/DialerFragment;

    const/16 v2, 0xc7

    invoke-virtual {v1, v0, v2}, Lcom/weirdvoice/ui/dialpad/DialerFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 339
    return-void
.end method
