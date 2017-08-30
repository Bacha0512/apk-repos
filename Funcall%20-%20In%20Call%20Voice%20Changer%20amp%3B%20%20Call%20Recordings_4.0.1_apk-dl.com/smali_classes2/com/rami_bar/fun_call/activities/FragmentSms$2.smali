.class Lcom/rami_bar/fun_call/activities/FragmentSms$2;
.super Ljava/lang/Object;
.source "FragmentSms.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rami_bar/fun_call/activities/FragmentSms;->setAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rami_bar/fun_call/activities/FragmentSms;


# direct methods
.method constructor <init>(Lcom/rami_bar/fun_call/activities/FragmentSms;)V
    .locals 0
    .param p1, "this$0"    # Lcom/rami_bar/fun_call/activities/FragmentSms;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/rami_bar/fun_call/activities/FragmentSms$2;->this$0:Lcom/rami_bar/fun_call/activities/FragmentSms;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
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
    .line 157
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentSms$2;->this$0:Lcom/rami_bar/fun_call/activities/FragmentSms;

    # getter for: Lcom/rami_bar/fun_call/activities/FragmentSms;->contacts_array_list:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/rami_bar/fun_call/activities/FragmentSms;->access$000(Lcom/rami_bar/fun_call/activities/FragmentSms;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rami_bar/fun_call/objects/Contact;

    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/FragmentSms$2;->this$0:Lcom/rami_bar/fun_call/activities/FragmentSms;

    # getter for: Lcom/rami_bar/fun_call/activities/FragmentSms;->contacts_array_list:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/rami_bar/fun_call/activities/FragmentSms;->access$000(Lcom/rami_bar/fun_call/activities/FragmentSms;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rami_bar/fun_call/objects/Contact;

    iget-object v1, v1, Lcom/rami_bar/fun_call/objects/Contact;->selected:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/rami_bar/fun_call/objects/Contact;->selected:Ljava/lang/Boolean;

    .line 158
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentSms$2;->this$0:Lcom/rami_bar/fun_call/activities/FragmentSms;

    # getter for: Lcom/rami_bar/fun_call/activities/FragmentSms;->contacts_adapter:Lcom/rami_bar/fun_call/adapters/ContactFriendAdapter;
    invoke-static {v0}, Lcom/rami_bar/fun_call/activities/FragmentSms;->access$100(Lcom/rami_bar/fun_call/activities/FragmentSms;)Lcom/rami_bar/fun_call/adapters/ContactFriendAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rami_bar/fun_call/adapters/ContactFriendAdapter;->notifyDataSetChanged()V

    .line 159
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentSms$2;->this$0:Lcom/rami_bar/fun_call/activities/FragmentSms;

    # invokes: Lcom/rami_bar/fun_call/activities/FragmentSms;->setNumContactsSelected()I
    invoke-static {v0}, Lcom/rami_bar/fun_call/activities/FragmentSms;->access$200(Lcom/rami_bar/fun_call/activities/FragmentSms;)I

    .line 160
    return-void

    .line 157
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
