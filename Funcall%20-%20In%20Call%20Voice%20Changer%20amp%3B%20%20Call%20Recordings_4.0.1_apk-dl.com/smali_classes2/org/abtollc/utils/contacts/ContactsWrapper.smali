.class public abstract Lorg/abtollc/utils/contacts/ContactsWrapper;
.super Ljava/lang/Object;
.source "ContactsWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/abtollc/utils/contacts/ContactsWrapper$OnPhoneNumberSelected;,
        Lorg/abtollc/utils/contacts/ContactsWrapper$Phone;
    }
.end annotation


# static fields
.field public static final FIELD_GROUP_NAME:Ljava/lang/String; = "title"

.field public static final FIELD_TYPE:Ljava/lang/String; = "wrapped_type"

.field public static final TYPE_CONTACT:I = 0x1

.field public static final TYPE_GROUP:I

.field private static instance:Lorg/abtollc/utils/contacts/ContactsWrapper;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method private formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 259
    if-eqz p2, :cond_1

    const-string v1, "sip"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 260
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sip:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 270
    .end local p1    # "number":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 262
    .restart local p1    # "number":Ljava/lang/String;
    :cond_1
    const-string v1, "sip:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 267
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 268
    .local v0, "rNumber":Ljava/lang/String;
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static getInstance()Lorg/abtollc/utils/contacts/ContactsWrapper;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lorg/abtollc/utils/contacts/ContactsWrapper;->instance:Lorg/abtollc/utils/contacts/ContactsWrapper;

    if-nez v0, :cond_0

    .line 31
    const/16 v0, 0xe

    invoke-static {v0}, Lorg/abtollc/utils/Compatibility;->isCompatible(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 32
    new-instance v0, Lorg/abtollc/utils/contacts/ContactsUtils14;

    invoke-direct {v0}, Lorg/abtollc/utils/contacts/ContactsUtils14;-><init>()V

    sput-object v0, Lorg/abtollc/utils/contacts/ContactsWrapper;->instance:Lorg/abtollc/utils/contacts/ContactsWrapper;

    .line 40
    :cond_0
    :goto_0
    sget-object v0, Lorg/abtollc/utils/contacts/ContactsWrapper;->instance:Lorg/abtollc/utils/contacts/ContactsWrapper;

    return-object v0

    .line 33
    :cond_1
    const/4 v0, 0x5

    invoke-static {v0}, Lorg/abtollc/utils/Compatibility;->isCompatible(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 34
    new-instance v0, Lorg/abtollc/utils/contacts/ContactsUtils5;

    invoke-direct {v0}, Lorg/abtollc/utils/contacts/ContactsUtils5;-><init>()V

    sput-object v0, Lorg/abtollc/utils/contacts/ContactsWrapper;->instance:Lorg/abtollc/utils/contacts/ContactsWrapper;

    goto :goto_0

    .line 36
    :cond_2
    new-instance v0, Lorg/abtollc/utils/contacts/ContactsUtils3;

    invoke-direct {v0}, Lorg/abtollc/utils/contacts/ContactsUtils3;-><init>()V

    sput-object v0, Lorg/abtollc/utils/contacts/ContactsWrapper;->instance:Lorg/abtollc/utils/contacts/ContactsWrapper;

    goto :goto_0
.end method


# virtual methods
.method public abstract bindAutoCompleteView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
.end method

.method public abstract bindContactPhoneView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
.end method

.method public abstract bindContactView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
.end method

.method public abstract findCallerInfo(Landroid/content/Context;Ljava/lang/String;)Lorg/abtollc/models/CallerInfo;
.end method

.method public abstract findSelfInfo(Landroid/content/Context;)Lorg/abtollc/models/CallerInfo;
.end method

.method public abstract getAddContactIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
.end method

.method public abstract getContactIndexableColumnIndex(Landroid/database/Cursor;)I
.end method

.method public abstract getContactPhoto(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/Integer;)Landroid/graphics/Bitmap;
.end method

.method public abstract getContactsByGroup(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;
.end method

.method public abstract getContactsPhones(Landroid/content/Context;)Landroid/database/Cursor;
.end method

.method public abstract getGroups(Landroid/content/Context;)Landroid/database/Cursor;
.end method

.method public abstract getPhoneNumbers(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/abtollc/utils/contacts/ContactsWrapper$Phone;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPhonesByGroup(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract searchContact(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/database/Cursor;
.end method

.method public abstract transformToSipUri(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/CharSequence;
.end method

.method public treatContactPickerPositiveResult(Landroid/content/Context;Landroid/content/Intent;Lorg/abtollc/utils/contacts/ContactsWrapper$OnPhoneNumberSelected;)V
    .locals 4
    .param p1, "ctxt"    # Landroid/content/Context;
    .param p2, "data"    # Landroid/content/Intent;
    .param p3, "l"    # Lorg/abtollc/utils/contacts/ContactsWrapper$OnPhoneNumberSelected;

    .prologue
    .line 204
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 205
    .local v1, "contactUri":Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    .line 206
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 207
    .local v0, "contactId":Ljava/lang/String;
    invoke-virtual {p0, p1, v0, p3}, Lorg/abtollc/utils/contacts/ContactsWrapper;->treatContactPickerPositiveResult(Landroid/content/Context;Ljava/lang/String;Lorg/abtollc/utils/contacts/ContactsWrapper$OnPhoneNumberSelected;)V

    .line 208
    return-void
.end method

.method public treatContactPickerPositiveResult(Landroid/content/Context;Ljava/lang/String;Lorg/abtollc/utils/contacts/ContactsWrapper$OnPhoneNumberSelected;)V
    .locals 10
    .param p1, "ctxt"    # Landroid/content/Context;
    .param p2, "contactId"    # Ljava/lang/String;
    .param p3, "l"    # Lorg/abtollc/utils/contacts/ContactsWrapper$OnPhoneNumberSelected;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 212
    invoke-virtual {p0, p1, p2}, Lorg/abtollc/utils/contacts/ContactsWrapper;->getPhoneNumbers(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 214
    .local v5, "phones":Ljava/util/List;, "Ljava/util/List<Lorg/abtollc/utils/contacts/ContactsWrapper$Phone;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_1

    .line 215
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 216
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v6, "Ok"

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 217
    const-string v6, "Choose phone"

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 218
    const-string v6, "No phone found for this contact"

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 219
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 220
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 256
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "dialog":Landroid/app/AlertDialog;
    :cond_0
    :goto_0
    return-void

    .line 221
    :cond_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ne v6, v9, :cond_2

    .line 222
    if-eqz p3, :cond_0

    .line 223
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/abtollc/utils/contacts/ContactsWrapper$Phone;

    invoke-virtual {v6}, Lorg/abtollc/utils/contacts/ContactsWrapper$Phone;->getNumber()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/abtollc/utils/contacts/ContactsWrapper$Phone;

    invoke-virtual {v6}, Lorg/abtollc/utils/contacts/ContactsWrapper$Phone;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v7, v6}, Lorg/abtollc/utils/contacts/ContactsWrapper;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p3, v6}, Lorg/abtollc/utils/contacts/ContactsWrapper$OnPhoneNumberSelected;->onTrigger(Ljava/lang/String;)V

    goto :goto_0

    .line 226
    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 228
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 229
    .local v2, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/abtollc/utils/contacts/ContactsWrapper$Phone;

    .line 230
    .local v3, "phone":Lorg/abtollc/utils/contacts/ContactsWrapper$Phone;
    invoke-virtual {v3}, Lorg/abtollc/utils/contacts/ContactsWrapper$Phone;->getNumber()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lorg/abtollc/utils/contacts/ContactsWrapper$Phone;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lorg/abtollc/utils/contacts/ContactsWrapper;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 233
    .end local v3    # "phone":Lorg/abtollc/utils/contacts/ContactsWrapper$Phone;
    :cond_3
    new-instance v4, Landroid/widget/ArrayAdapter;

    const v6, 0x109000a

    invoke-direct {v4, p1, v6, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 236
    .local v4, "phoneChoiceAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const-string v6, "Choose phone"

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 237
    new-instance v6, Lorg/abtollc/utils/contacts/ContactsWrapper$1;

    invoke-direct {v6, p0, p3, v4}, Lorg/abtollc/utils/contacts/ContactsWrapper$1;-><init>(Lorg/abtollc/utils/contacts/ContactsWrapper;Lorg/abtollc/utils/contacts/ContactsWrapper$OnPhoneNumberSelected;Landroid/widget/ArrayAdapter;)V

    invoke-virtual {v0, v4, v6}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 245
    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 246
    const-string v6, "Cansel"

    new-instance v7, Lorg/abtollc/utils/contacts/ContactsWrapper$2;

    invoke-direct {v7, p0}, Lorg/abtollc/utils/contacts/ContactsWrapper$2;-><init>(Lorg/abtollc/utils/contacts/ContactsWrapper;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 253
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 254
    .restart local v1    # "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method public abstract updatePresence(Landroid/content/Context;Ljava/lang/String;Lorg/abtollc/api/SipManager$PresenceStatus;Ljava/lang/String;)V
.end method

.method protected usefulAsDigits(Ljava/lang/CharSequence;)Z
    .locals 4
    .param p1, "cons"    # Ljava/lang/CharSequence;

    .prologue
    .line 291
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 293
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_4

    .line 294
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 296
    .local v0, "c":C
    const/16 v3, 0x30

    if-lt v0, v3, :cond_1

    const/16 v3, 0x39

    if-gt v0, v3, :cond_1

    .line 293
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 299
    :cond_1
    const/16 v3, 0x20

    if-eq v0, v3, :cond_0

    const/16 v3, 0x2d

    if-eq v0, v3, :cond_0

    const/16 v3, 0x28

    if-eq v0, v3, :cond_0

    const/16 v3, 0x29

    if-eq v0, v3, :cond_0

    const/16 v3, 0x2e

    if-eq v0, v3, :cond_0

    const/16 v3, 0x2b

    if-eq v0, v3, :cond_0

    const/16 v3, 0x23

    if-eq v0, v3, :cond_0

    const/16 v3, 0x2a

    if-eq v0, v3, :cond_0

    .line 303
    const/16 v3, 0x41

    if-lt v0, v3, :cond_2

    const/16 v3, 0x5a

    if-le v0, v3, :cond_0

    .line 306
    :cond_2
    const/16 v3, 0x61

    if-lt v0, v3, :cond_3

    const/16 v3, 0x7a

    if-le v0, v3, :cond_0

    .line 310
    :cond_3
    const/4 v3, 0x0

    .line 313
    .end local v0    # "c":C
    :goto_1
    return v3

    :cond_4
    const/4 v3, 0x1

    goto :goto_1
.end method
