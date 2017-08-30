.class Lcom/rami_bar/fun_call/activities/FragmentSms$4;
.super Ljava/lang/Object;
.source "FragmentSms.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 175
    iput-object p1, p0, Lcom/rami_bar/fun_call/activities/FragmentSms$4;->this$0:Lcom/rami_bar/fun_call/activities/FragmentSms;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 178
    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/FragmentSms$4;->this$0:Lcom/rami_bar/fun_call/activities/FragmentSms;

    # getter for: Lcom/rami_bar/fun_call/activities/FragmentSms;->ctv_select_all:Landroid/widget/CheckedTextView;
    invoke-static {v1}, Lcom/rami_bar/fun_call/activities/FragmentSms;->access$400(Lcom/rami_bar/fun_call/activities/FragmentSms;)Landroid/widget/CheckedTextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    sget-object v1, Lcom/rami_bar/fun_call/utiles/MyApp;->tracker:Lcom/google/android/gms/analytics/Tracker;

    new-instance v2, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    const-string v3, "Select all"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    const-string v3, "none"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 181
    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/FragmentSms$4;->this$0:Lcom/rami_bar/fun_call/activities/FragmentSms;

    # getter for: Lcom/rami_bar/fun_call/activities/FragmentSms;->ctv_select_all:Landroid/widget/CheckedTextView;
    invoke-static {v1}, Lcom/rami_bar/fun_call/activities/FragmentSms;->access$400(Lcom/rami_bar/fun_call/activities/FragmentSms;)Landroid/widget/CheckedTextView;

    move-result-object v1

    iget-object v2, p0, Lcom/rami_bar/fun_call/activities/FragmentSms$4;->this$0:Lcom/rami_bar/fun_call/activities/FragmentSms;

    const v3, 0x7f0900e0

    invoke-virtual {v2, v3}, Lcom/rami_bar/fun_call/activities/FragmentSms;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/FragmentSms$4;->this$0:Lcom/rami_bar/fun_call/activities/FragmentSms;

    # getter for: Lcom/rami_bar/fun_call/activities/FragmentSms;->ctv_select_all:Landroid/widget/CheckedTextView;
    invoke-static {v1}, Lcom/rami_bar/fun_call/activities/FragmentSms;->access$400(Lcom/rami_bar/fun_call/activities/FragmentSms;)Landroid/widget/CheckedTextView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 183
    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/FragmentSms$4;->this$0:Lcom/rami_bar/fun_call/activities/FragmentSms;

    # getter for: Lcom/rami_bar/fun_call/activities/FragmentSms;->contacts_array_list:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/rami_bar/fun_call/activities/FragmentSms;->access$000(Lcom/rami_bar/fun_call/activities/FragmentSms;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rami_bar/fun_call/objects/Contact;

    .line 184
    .local v0, "contact":Lcom/rami_bar/fun_call/objects/Contact;
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Lcom/rami_bar/fun_call/objects/Contact;->selected:Ljava/lang/Boolean;

    goto :goto_0

    .line 187
    .end local v0    # "contact":Lcom/rami_bar/fun_call/objects/Contact;
    :cond_0
    sget-object v1, Lcom/rami_bar/fun_call/utiles/MyApp;->tracker:Lcom/google/android/gms/analytics/Tracker;

    new-instance v2, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    const-string v3, "Select all"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    const-string v3, "all"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 189
    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/FragmentSms$4;->this$0:Lcom/rami_bar/fun_call/activities/FragmentSms;

    # getter for: Lcom/rami_bar/fun_call/activities/FragmentSms;->ctv_select_all:Landroid/widget/CheckedTextView;
    invoke-static {v1}, Lcom/rami_bar/fun_call/activities/FragmentSms;->access$400(Lcom/rami_bar/fun_call/activities/FragmentSms;)Landroid/widget/CheckedTextView;

    move-result-object v1

    iget-object v2, p0, Lcom/rami_bar/fun_call/activities/FragmentSms$4;->this$0:Lcom/rami_bar/fun_call/activities/FragmentSms;

    const v3, 0x7f0900dd

    invoke-virtual {v2, v3}, Lcom/rami_bar/fun_call/activities/FragmentSms;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/FragmentSms$4;->this$0:Lcom/rami_bar/fun_call/activities/FragmentSms;

    # getter for: Lcom/rami_bar/fun_call/activities/FragmentSms;->ctv_select_all:Landroid/widget/CheckedTextView;
    invoke-static {v1}, Lcom/rami_bar/fun_call/activities/FragmentSms;->access$400(Lcom/rami_bar/fun_call/activities/FragmentSms;)Landroid/widget/CheckedTextView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 191
    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/FragmentSms$4;->this$0:Lcom/rami_bar/fun_call/activities/FragmentSms;

    # getter for: Lcom/rami_bar/fun_call/activities/FragmentSms;->contacts_array_list:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/rami_bar/fun_call/activities/FragmentSms;->access$000(Lcom/rami_bar/fun_call/activities/FragmentSms;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rami_bar/fun_call/objects/Contact;

    .line 192
    .restart local v0    # "contact":Lcom/rami_bar/fun_call/objects/Contact;
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Lcom/rami_bar/fun_call/objects/Contact;->selected:Ljava/lang/Boolean;

    goto :goto_1

    .line 195
    .end local v0    # "contact":Lcom/rami_bar/fun_call/objects/Contact;
    :cond_1
    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/FragmentSms$4;->this$0:Lcom/rami_bar/fun_call/activities/FragmentSms;

    # getter for: Lcom/rami_bar/fun_call/activities/FragmentSms;->contacts_adapter:Lcom/rami_bar/fun_call/adapters/ContactFriendAdapter;
    invoke-static {v1}, Lcom/rami_bar/fun_call/activities/FragmentSms;->access$100(Lcom/rami_bar/fun_call/activities/FragmentSms;)Lcom/rami_bar/fun_call/adapters/ContactFriendAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/rami_bar/fun_call/adapters/ContactFriendAdapter;->notifyDataSetChanged()V

    .line 196
    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/FragmentSms$4;->this$0:Lcom/rami_bar/fun_call/activities/FragmentSms;

    # invokes: Lcom/rami_bar/fun_call/activities/FragmentSms;->setNumContactsSelected()I
    invoke-static {v1}, Lcom/rami_bar/fun_call/activities/FragmentSms;->access$200(Lcom/rami_bar/fun_call/activities/FragmentSms;)I

    .line 197
    return-void
.end method
