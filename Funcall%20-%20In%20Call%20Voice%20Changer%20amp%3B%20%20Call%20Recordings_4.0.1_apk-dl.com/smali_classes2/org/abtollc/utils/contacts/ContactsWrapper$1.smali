.class Lorg/abtollc/utils/contacts/ContactsWrapper$1;
.super Ljava/lang/Object;
.source "ContactsWrapper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/abtollc/utils/contacts/ContactsWrapper;->treatContactPickerPositiveResult(Landroid/content/Context;Ljava/lang/String;Lorg/abtollc/utils/contacts/ContactsWrapper$OnPhoneNumberSelected;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/abtollc/utils/contacts/ContactsWrapper;

.field final synthetic val$l:Lorg/abtollc/utils/contacts/ContactsWrapper$OnPhoneNumberSelected;

.field final synthetic val$phoneChoiceAdapter:Landroid/widget/ArrayAdapter;


# direct methods
.method constructor <init>(Lorg/abtollc/utils/contacts/ContactsWrapper;Lorg/abtollc/utils/contacts/ContactsWrapper$OnPhoneNumberSelected;Landroid/widget/ArrayAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lorg/abtollc/utils/contacts/ContactsWrapper;

    .prologue
    .line 237
    iput-object p1, p0, Lorg/abtollc/utils/contacts/ContactsWrapper$1;->this$0:Lorg/abtollc/utils/contacts/ContactsWrapper;

    iput-object p2, p0, Lorg/abtollc/utils/contacts/ContactsWrapper$1;->val$l:Lorg/abtollc/utils/contacts/ContactsWrapper$OnPhoneNumberSelected;

    iput-object p3, p0, Lorg/abtollc/utils/contacts/ContactsWrapper$1;->val$phoneChoiceAdapter:Landroid/widget/ArrayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 240
    iget-object v0, p0, Lorg/abtollc/utils/contacts/ContactsWrapper$1;->val$l:Lorg/abtollc/utils/contacts/ContactsWrapper$OnPhoneNumberSelected;

    if-eqz v0, :cond_0

    .line 241
    iget-object v1, p0, Lorg/abtollc/utils/contacts/ContactsWrapper$1;->val$l:Lorg/abtollc/utils/contacts/ContactsWrapper$OnPhoneNumberSelected;

    iget-object v0, p0, Lorg/abtollc/utils/contacts/ContactsWrapper$1;->val$phoneChoiceAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Lorg/abtollc/utils/contacts/ContactsWrapper$OnPhoneNumberSelected;->onTrigger(Ljava/lang/String;)V

    .line 243
    :cond_0
    return-void
.end method
