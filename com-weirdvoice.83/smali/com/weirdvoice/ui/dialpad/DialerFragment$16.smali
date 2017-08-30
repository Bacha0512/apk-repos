.class Lcom/weirdvoice/ui/dialpad/DialerFragment$16;
.super Ljava/lang/Object;
.source "DialerFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/weirdvoice/ui/dialpad/DialerFragment;->placeVMCall()V
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
    iput-object p1, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment$16;->this$0:Lcom/weirdvoice/ui/dialpad/DialerFragment;

    .line 1341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1343
    iget-object v0, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment$16;->this$0:Lcom/weirdvoice/ui/dialpad/DialerFragment;

    # getter for: Lcom/weirdvoice/ui/dialpad/DialerFragment;->missingVoicemailDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/weirdvoice/ui/dialpad/DialerFragment;->access$8(Lcom/weirdvoice/ui/dialpad/DialerFragment;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1344
    iget-object v0, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment$16;->this$0:Lcom/weirdvoice/ui/dialpad/DialerFragment;

    # getter for: Lcom/weirdvoice/ui/dialpad/DialerFragment;->missingVoicemailDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/weirdvoice/ui/dialpad/DialerFragment;->access$8(Lcom/weirdvoice/ui/dialpad/DialerFragment;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->hide()V

    .line 1346
    :cond_0
    return-void
.end method
