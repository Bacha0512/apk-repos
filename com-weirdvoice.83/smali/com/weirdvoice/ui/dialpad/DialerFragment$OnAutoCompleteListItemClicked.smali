.class Lcom/weirdvoice/ui/dialpad/DialerFragment$OnAutoCompleteListItemClicked;
.super Ljava/lang/Object;
.source "DialerFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/weirdvoice/ui/dialpad/DialerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnAutoCompleteListItemClicked"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field private searchAdapter:Lcom/weirdvoice/utils/contacts/ContactsSearchAdapter;

.field final synthetic this$0:Lcom/weirdvoice/ui/dialpad/DialerFragment;


# direct methods
.method public constructor <init>(Lcom/weirdvoice/ui/dialpad/DialerFragment;Lcom/weirdvoice/utils/contacts/ContactsSearchAdapter;)V
    .locals 0
    .param p2, "adapter"    # Lcom/weirdvoice/utils/contacts/ContactsSearchAdapter;

    .prologue
    .line 666
    iput-object p1, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment$OnAutoCompleteListItemClicked;->this$0:Lcom/weirdvoice/ui/dialpad/DialerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 667
    iput-object p2, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment$OnAutoCompleteListItemClicked;->searchAdapter:Lcom/weirdvoice/utils/contacts/ContactsSearchAdapter;

    .line 668
    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 672
    .local p1, "list":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment$OnAutoCompleteListItemClicked;->searchAdapter:Lcom/weirdvoice/utils/contacts/ContactsSearchAdapter;

    invoke-virtual {v2, p3}, Lcom/weirdvoice/utils/contacts/ContactsSearchAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .line 673
    .local v1, "selectedItem":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 674
    iget-object v2, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment$OnAutoCompleteListItemClicked;->searchAdapter:Lcom/weirdvoice/utils/contacts/ContactsSearchAdapter;

    invoke-virtual {v2}, Lcom/weirdvoice/utils/contacts/ContactsSearchAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/Filter;->convertResultToString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 676
    .local v0, "newValue":Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment$OnAutoCompleteListItemClicked;->this$0:Lcom/weirdvoice/ui/dialpad/DialerFragment;

    invoke-virtual {v2, v0}, Lcom/weirdvoice/ui/dialpad/DialerFragment;->setTextFieldValue(Ljava/lang/CharSequence;)V

    .line 678
    .end local v0    # "newValue":Ljava/lang/CharSequence;
    :cond_0
    return-void
.end method
