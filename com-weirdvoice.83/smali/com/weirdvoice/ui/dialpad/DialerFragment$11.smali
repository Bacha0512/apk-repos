.class Lcom/weirdvoice/ui/dialpad/DialerFragment$11;
.super Ljava/lang/Object;
.source "DialerFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/weirdvoice/ui/dialpad/DialerFragment;->doDial(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/weirdvoice/ui/dialpad/DialerFragment;

.field private final synthetic val$newNum:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/weirdvoice/ui/dialpad/DialerFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment$11;->this$0:Lcom/weirdvoice/ui/dialpad/DialerFragment;

    iput-object p2, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment$11;->val$newNum:Ljava/lang/String;

    .line 1201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 1204
    iget-object v0, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment$11;->this$0:Lcom/weirdvoice/ui/dialpad/DialerFragment;

    # getter for: Lcom/weirdvoice/ui/dialpad/DialerFragment;->digits:Lcom/weirdvoice/ui/dialpad/DigitsEditText;
    invoke-static {v0}, Lcom/weirdvoice/ui/dialpad/DialerFragment;->access$6(Lcom/weirdvoice/ui/dialpad/DialerFragment;)Lcom/weirdvoice/ui/dialpad/DigitsEditText;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "1"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment$11;->val$newNum:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/weirdvoice/ui/dialpad/DigitsEditText;->setText(Ljava/lang/CharSequence;)V

    .line 1205
    iget-object v0, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment$11;->this$0:Lcom/weirdvoice/ui/dialpad/DialerFragment;

    const/4 v1, 0x0

    # invokes: Lcom/weirdvoice/ui/dialpad/DialerFragment;->placeCallWithOption(Landroid/os/Bundle;)V
    invoke-static {v0, v1}, Lcom/weirdvoice/ui/dialpad/DialerFragment;->access$7(Lcom/weirdvoice/ui/dialpad/DialerFragment;Landroid/os/Bundle;)V

    .line 1206
    return-void
.end method
