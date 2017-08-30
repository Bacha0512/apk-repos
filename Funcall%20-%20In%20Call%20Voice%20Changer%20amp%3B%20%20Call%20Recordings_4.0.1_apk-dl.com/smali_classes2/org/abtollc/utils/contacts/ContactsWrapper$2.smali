.class Lorg/abtollc/utils/contacts/ContactsWrapper$2;
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


# direct methods
.method constructor <init>(Lorg/abtollc/utils/contacts/ContactsWrapper;)V
    .locals 0
    .param p1, "this$0"    # Lorg/abtollc/utils/contacts/ContactsWrapper;

    .prologue
    .line 246
    iput-object p1, p0, Lorg/abtollc/utils/contacts/ContactsWrapper$2;->this$0:Lorg/abtollc/utils/contacts/ContactsWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 250
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 251
    return-void
.end method
