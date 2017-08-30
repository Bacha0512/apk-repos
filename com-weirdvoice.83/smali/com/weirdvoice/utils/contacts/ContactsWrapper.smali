.class public abstract Lcom/weirdvoice/utils/contacts/ContactsWrapper;
.super Ljava/lang/Object;
.source "ContactsWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/weirdvoice/utils/contacts/ContactsWrapper$ContactInfo;,
        Lcom/weirdvoice/utils/contacts/ContactsWrapper$OnPhoneNumberSelected;,
        Lcom/weirdvoice/utils/contacts/ContactsWrapper$Phone;
    }
.end annotation


# static fields
.field public static final FIELD_GROUP_NAME:Ljava/lang/String; = "title"

.field public static final FIELD_TYPE:Ljava/lang/String; = "wrapped_type"

.field public static final TYPE_CONFIGURE:I = 0x2

.field public static final TYPE_CONTACT:I = 0x1

.field public static final TYPE_GROUP:I

.field public static URI_ALLS:I

.field public static URI_IM:I

.field public static URI_NBR:I

.field public static URI_SIP:I

.field private static instance:Lcom/weirdvoice/utils/contacts/ContactsWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 77
    const/4 v0, 0x1

    sput v0, Lcom/weirdvoice/utils/contacts/ContactsWrapper;->URI_NBR:I

    .line 78
    const/4 v0, 0x2

    sput v0, Lcom/weirdvoice/utils/contacts/ContactsWrapper;->URI_IM:I

    .line 79
    const/4 v0, 0x4

    sput v0, Lcom/weirdvoice/utils/contacts/ContactsWrapper;->URI_SIP:I

    .line 80
    sget v0, Lcom/weirdvoice/utils/contacts/ContactsWrapper;->URI_IM:I

    sget v1, Lcom/weirdvoice/utils/contacts/ContactsWrapper;->URI_NBR:I

    or-int/2addr v0, v1

    sget v1, Lcom/weirdvoice/utils/contacts/ContactsWrapper;->URI_SIP:I

    or-int/2addr v0, v1

    sput v0, Lcom/weirdvoice/utils/contacts/ContactsWrapper;->URI_ALLS:I

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method

.method public static getInstance()Lcom/weirdvoice/utils/contacts/ContactsWrapper;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/weirdvoice/utils/contacts/ContactsWrapper;->instance:Lcom/weirdvoice/utils/contacts/ContactsWrapper;

    if-nez v0, :cond_0

    .line 48
    const/16 v0, 0xe

    invoke-static {v0}, Lcom/weirdvoice/utils/Compatibility;->isCompatible(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    new-instance v0, Lcom/weirdvoice/utils/contacts/ContactsUtils14;

    invoke-direct {v0}, Lcom/weirdvoice/utils/contacts/ContactsUtils14;-><init>()V

    sput-object v0, Lcom/weirdvoice/utils/contacts/ContactsWrapper;->instance:Lcom/weirdvoice/utils/contacts/ContactsWrapper;

    .line 57
    :cond_0
    :goto_0
    sget-object v0, Lcom/weirdvoice/utils/contacts/ContactsWrapper;->instance:Lcom/weirdvoice/utils/contacts/ContactsWrapper;

    return-object v0

    .line 50
    :cond_1
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/weirdvoice/utils/Compatibility;->isCompatible(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 51
    new-instance v0, Lcom/weirdvoice/utils/contacts/ContactsUtils5;

    invoke-direct {v0}, Lcom/weirdvoice/utils/contacts/ContactsUtils5;-><init>()V

    sput-object v0, Lcom/weirdvoice/utils/contacts/ContactsWrapper;->instance:Lcom/weirdvoice/utils/contacts/ContactsWrapper;

    goto :goto_0

    .line 53
    :cond_2
    new-instance v0, Lcom/weirdvoice/utils/contacts/ContactsUtils3;

    invoke-direct {v0}, Lcom/weirdvoice/utils/contacts/ContactsUtils3;-><init>()V

    sput-object v0, Lcom/weirdvoice/utils/contacts/ContactsWrapper;->instance:Lcom/weirdvoice/utils/contacts/ContactsWrapper;

    goto :goto_0
.end method


# virtual methods
.method public abstract bindContactPhoneView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
.end method

.method public abstract findCallerInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/weirdvoice/models/CallerInfo;
.end method

.method public abstract findCallerInfoForUri(Landroid/content/Context;Ljava/lang/String;)Lcom/weirdvoice/models/CallerInfo;
.end method

.method public abstract findSelfInfo(Landroid/content/Context;)Lcom/weirdvoice/models/CallerInfo;
.end method

.method public abstract getAddContactIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
.end method

.method public abstract getCSipPhonesByGroup(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
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

.method public abstract getCSipPhonesContact(Landroid/content/Context;Ljava/lang/Long;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Long;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getContactIndexableColumnIndex(Landroid/database/Cursor;)I
.end method

.method public abstract getContactInfo(Landroid/content/Context;Landroid/database/Cursor;)Lcom/weirdvoice/utils/contacts/ContactsWrapper$ContactInfo;
.end method

.method public abstract getContactPhoto(Landroid/content/Context;Landroid/net/Uri;ZLjava/lang/Integer;)Landroid/graphics/Bitmap;
.end method

.method public abstract getContactsByGroup(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;
.end method

.method public abstract getContactsPhones(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/database/Cursor;
.end method

.method public abstract getGroups(Landroid/content/Context;)Landroid/database/Cursor;
.end method

.method public abstract getPhoneNumbers(Landroid/content/Context;JI)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "JI)",
            "Ljava/util/List",
            "<",
            "Lcom/weirdvoice/utils/contacts/ContactsWrapper$Phone;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPresenceIconResourceId(I)I
.end method

.method public abstract getViewContactIntent(Ljava/lang/Long;)Landroid/content/Intent;
.end method

.method public abstract insertOrUpdateCSipUri(Landroid/content/Context;JLjava/lang/String;)Z
.end method

.method public abstract isExternalPhoneNumber(Landroid/content/Context;Landroid/database/Cursor;)Z
.end method

.method public abstract transformToSipUri(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/CharSequence;
.end method

.method public abstract updateCSipPresence(Landroid/content/Context;Ljava/lang/String;Lcom/weirdvoice/api/SipManager$PresenceStatus;Ljava/lang/String;)V
.end method

.method protected usefulAsDigits(Ljava/lang/CharSequence;)Z
    .locals 4
    .param p1, "cons"    # Ljava/lang/CharSequence;

    .prologue
    .line 261
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 263
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 283
    const/4 v3, 0x1

    :goto_1
    return v3

    .line 264
    :cond_0
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 266
    .local v0, "c":C
    const/16 v3, 0x30

    if-lt v0, v3, :cond_2

    const/16 v3, 0x39

    if-gt v0, v3, :cond_2

    .line 263
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 269
    :cond_2
    const/16 v3, 0x20

    if-eq v0, v3, :cond_1

    const/16 v3, 0x2d

    if-eq v0, v3, :cond_1

    const/16 v3, 0x28

    if-eq v0, v3, :cond_1

    const/16 v3, 0x29

    if-eq v0, v3, :cond_1

    const/16 v3, 0x2e

    if-eq v0, v3, :cond_1

    const/16 v3, 0x2b

    if-eq v0, v3, :cond_1

    .line 270
    const/16 v3, 0x23

    if-eq v0, v3, :cond_1

    const/16 v3, 0x2a

    if-eq v0, v3, :cond_1

    .line 273
    const/16 v3, 0x41

    if-lt v0, v3, :cond_3

    const/16 v3, 0x5a

    if-le v0, v3, :cond_1

    .line 276
    :cond_3
    const/16 v3, 0x61

    if-lt v0, v3, :cond_4

    const/16 v3, 0x7a

    if-le v0, v3, :cond_1

    .line 280
    :cond_4
    const/4 v3, 0x0

    goto :goto_1
.end method
