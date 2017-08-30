.class Lcom/weirdvoice/ui/dialpad/DialerFragment$12;
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
    iput-object p1, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment$12;->this$0:Lcom/weirdvoice/ui/dialpad/DialerFragment;

    iput-object p2, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment$12;->val$newNum:Ljava/lang/String;

    .line 1208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 1211
    iget-object v0, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment$12;->this$0:Lcom/weirdvoice/ui/dialpad/DialerFragment;

    # getter for: Lcom/weirdvoice/ui/dialpad/DialerFragment;->digits:Lcom/weirdvoice/ui/dialpad/DigitsEditText;
    invoke-static {v0}, Lcom/weirdvoice/ui/dialpad/DialerFragment;->access$6(Lcom/weirdvoice/ui/dialpad/DialerFragment;)Lcom/weirdvoice/ui/dialpad/DigitsEditText;

    move-result-object v0

    iget-object v1, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment$12;->val$newNum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/weirdvoice/ui/dialpad/DigitsEditText;->setText(Ljava/lang/CharSequence;)V

    .line 1212
    iget-object v0, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment$12;->this$0:Lcom/weirdvoice/ui/dialpad/DialerFragment;

    const/4 v1, 0x0

    # invokes: Lcom/weirdvoice/ui/dialpad/DialerFragment;->placeCallWithOption(Landroid/os/Bundle;)V
    invoke-static {v0, v1}, Lcom/weirdvoice/ui/dialpad/DialerFragment;->access$7(Lcom/weirdvoice/ui/dialpad/DialerFragment;Landroid/os/Bundle;)V

    .line 1213
    return-void
.end method
