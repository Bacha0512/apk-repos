.class Lcom/weirdvoice/widgets/EditSipUri$1;
.super Ljava/lang/Object;
.source "EditSipUri.java"

# interfaces
.implements Lcom/weirdvoice/widgets/AccountChooserButton$OnAccountChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/weirdvoice/widgets/EditSipUri;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/weirdvoice/widgets/EditSipUri;


# direct methods
.method constructor <init>(Lcom/weirdvoice/widgets/EditSipUri;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/weirdvoice/widgets/EditSipUri$1;->this$0:Lcom/weirdvoice/widgets/EditSipUri;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChooseAccount(Lcom/weirdvoice/api/SipProfile;)V
    .locals 3
    .param p1, "account"    # Lcom/weirdvoice/api/SipProfile;

    .prologue
    .line 75
    iget-object v2, p0, Lcom/weirdvoice/widgets/EditSipUri$1;->this$0:Lcom/weirdvoice/widgets/EditSipUri;

    # invokes: Lcom/weirdvoice/widgets/EditSipUri;->updateDialTextHelper()V
    invoke-static {v2}, Lcom/weirdvoice/widgets/EditSipUri;->access$0(Lcom/weirdvoice/widgets/EditSipUri;)V

    .line 76
    const-wide/16 v0, -0x1

    .line 77
    .local v0, "accId":J
    if-eqz p1, :cond_0

    .line 78
    iget-wide v0, p1, Lcom/weirdvoice/api/SipProfile;->id:J

    .line 80
    :cond_0
    iget-object v2, p0, Lcom/weirdvoice/widgets/EditSipUri$1;->this$0:Lcom/weirdvoice/widgets/EditSipUri;

    # getter for: Lcom/weirdvoice/widgets/EditSipUri;->contactsAdapter:Lcom/weirdvoice/utils/contacts/ContactsSearchAdapter;
    invoke-static {v2}, Lcom/weirdvoice/widgets/EditSipUri;->access$1(Lcom/weirdvoice/widgets/EditSipUri;)Lcom/weirdvoice/utils/contacts/ContactsSearchAdapter;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 81
    iget-object v2, p0, Lcom/weirdvoice/widgets/EditSipUri$1;->this$0:Lcom/weirdvoice/widgets/EditSipUri;

    # getter for: Lcom/weirdvoice/widgets/EditSipUri;->contactsAdapter:Lcom/weirdvoice/utils/contacts/ContactsSearchAdapter;
    invoke-static {v2}, Lcom/weirdvoice/widgets/EditSipUri;->access$1(Lcom/weirdvoice/widgets/EditSipUri;)Lcom/weirdvoice/utils/contacts/ContactsSearchAdapter;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/weirdvoice/utils/contacts/ContactsSearchAdapter;->setSelectedAccount(J)V

    .line 83
    :cond_1
    return-void
.end method
