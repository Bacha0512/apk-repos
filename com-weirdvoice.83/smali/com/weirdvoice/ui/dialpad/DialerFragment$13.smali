.class Lcom/weirdvoice/ui/dialpad/DialerFragment$13;
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


# direct methods
.method constructor <init>(Lcom/weirdvoice/ui/dialpad/DialerFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment$13;->this$0:Lcom/weirdvoice/ui/dialpad/DialerFragment;

    .line 1215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 1218
    iget-object v0, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment$13;->this$0:Lcom/weirdvoice/ui/dialpad/DialerFragment;

    invoke-virtual {v0}, Lcom/weirdvoice/ui/dialpad/DialerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0c0258

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1219
    return-void
.end method
