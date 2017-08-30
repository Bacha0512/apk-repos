.class Lcom/weirdvoice/ui/dialpad/DialerFragment$3;
.super Ljava/lang/Object;
.source "DialerFragment.java"

# interfaces
.implements Lcom/weirdvoice/widgets/AccountChooserButton$OnAccountChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/weirdvoice/ui/dialpad/DialerFragment;
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
    iput-object p1, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment$3;->this$0:Lcom/weirdvoice/ui/dialpad/DialerFragment;

    .line 605
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChooseAccount(Lcom/weirdvoice/api/SipProfile;)V
    .locals 3
    .param p1, "account"    # Lcom/weirdvoice/api/SipProfile;

    .prologue
    .line 608
    const-wide/16 v0, -0x1

    .line 609
    .local v0, "accId":J
    if-eqz p1, :cond_0

    .line 610
    iget-wide v0, p1, Lcom/weirdvoice/api/SipProfile;->id:J

    .line 612
    :cond_0
    iget-object v2, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment$3;->this$0:Lcom/weirdvoice/ui/dialpad/DialerFragment;

    # getter for: Lcom/weirdvoice/ui/dialpad/DialerFragment;->autoCompleteAdapter:Lcom/weirdvoice/utils/contacts/ContactsSearchAdapter;
    invoke-static {v2}, Lcom/weirdvoice/ui/dialpad/DialerFragment;->access$1(Lcom/weirdvoice/ui/dialpad/DialerFragment;)Lcom/weirdvoice/utils/contacts/ContactsSearchAdapter;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/weirdvoice/utils/contacts/ContactsSearchAdapter;->setSelectedAccount(J)V

    .line 613
    iget-object v2, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment$3;->this$0:Lcom/weirdvoice/ui/dialpad/DialerFragment;

    # invokes: Lcom/weirdvoice/ui/dialpad/DialerFragment;->applyRewritingInfo()V
    invoke-static {v2}, Lcom/weirdvoice/ui/dialpad/DialerFragment;->access$2(Lcom/weirdvoice/ui/dialpad/DialerFragment;)V

    .line 614
    return-void
.end method
