.class public Lcom/weirdvoice/utils/contacts/ContactsUtils3;
.super Lcom/weirdvoice/utils/contacts/ContactsWrapper;
.source "ContactsUtils3.java"


# static fields
.field public static final CONTACT_ID_INDEX:I = 0x1

.field public static final LABEL_INDEX:I = 0x4

.field public static final NAME_INDEX:I = 0x5

.field public static final NUMBER_INDEX:I = 0x3

.field protected static final PROJECTION_CONTACTS:[Ljava/lang/String;

.field private static final PROJECTION_PHONE:[Ljava/lang/String;

.field private static final SORT_ORDER:Ljava/lang/String; = "display_name ASC,type"

.field private static final THIS_FILE:Ljava/lang/String; = "ContactsUtils3"

.field public static final TYPE_INDEX:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 59
    new-array v0, v4, [Ljava/lang/String;

    .line 60
    const-string v1, "_id"

    aput-object v1, v0, v2

    .line 61
    const-string v1, "display_name"

    aput-object v1, v0, v3

    .line 59
    sput-object v0, Lcom/weirdvoice/utils/contacts/ContactsUtils3;->PROJECTION_CONTACTS:[Ljava/lang/String;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    .line 65
    const-string v1, "_id"

    aput-object v1, v0, v2

    .line 66
    const-string v1, "person"

    aput-object v1, v0, v3

    .line 67
    const-string v1, "type"

    aput-object v1, v0, v4

    const/4 v1, 0x3

    .line 68
    const-string v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 69
    const-string v2, "label"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 17
    const-string v2, "display_name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/weirdvoice/utils/contacts/ContactsUtils3;->PROJECTION_PHONE:[Ljava/lang/String;

    .line 75
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/weirdvoice/utils/contacts/ContactsWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public bindContactPhoneView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 220
    const-string v9, "number"

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 221
    .local v8, "value":Ljava/lang/String;
    const-string v9, "display_name"

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 222
    .local v1, "displayName":Ljava/lang/String;
    const-string v9, "person"

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 223
    .local v4, "peopleId":Ljava/lang/Long;
    sget-object v9, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v9, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    .line 224
    .local v7, "uri":Landroid/net/Uri;
    const/4 v9, 0x0

    const v10, 0x7f020189

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p0, p2, v7, v9, v10}, Lcom/weirdvoice/utils/contacts/ContactsUtils3;->getContactPhoto(Landroid/content/Context;Landroid/net/Uri;ZLjava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 227
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const v9, 0x7f0b0073

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 228
    .local v6, "tv":Landroid/widget/TextView;
    const v9, 0x7f0b0074

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 229
    .local v5, "sub":Landroid/widget/TextView;
    const v9, 0x7f0b012a

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 230
    .local v3, "label":Landroid/widget/TextView;
    const v9, 0x7f0b00e4

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 233
    .local v2, "imageView":Landroid/widget/ImageView;
    const/16 v9, 0x8

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 234
    invoke-virtual {p1, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 235
    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 238
    return-void
.end method

.method public findCallerInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/weirdvoice/models/CallerInfo;
    .locals 11
    .param p1, "ctxt"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 123
    sget-object v0, Landroid/provider/Contacts$Phones;->CONTENT_FILTER_URL:Landroid/net/Uri;

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 125
    .local v1, "searchUri":Landroid/net/Uri;
    new-instance v6, Lcom/weirdvoice/models/CallerInfo;

    invoke-direct {v6}, Lcom/weirdvoice/models/CallerInfo;-><init>()V

    .line 127
    .local v6, "callerInfo":Lcom/weirdvoice/models/CallerInfo;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 128
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_5

    .line 130
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 131
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 132
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 133
    .local v8, "cv":Landroid/content/ContentValues;
    invoke-static {v7, v8}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 134
    const/4 v0, 0x1

    iput-boolean v0, v6, Lcom/weirdvoice/models/CallerInfo;->contactExists:Z

    .line 135
    const-string v0, "display_name"

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    const-string v0, "display_name"

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/weirdvoice/models/CallerInfo;->name:Ljava/lang/String;

    .line 139
    :cond_0
    const-string v0, "number"

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/weirdvoice/models/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 141
    const-string v0, "type"

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    const-string v0, "label"

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    const-string v0, "type"

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v6, Lcom/weirdvoice/models/CallerInfo;->numberType:I

    .line 144
    const-string v0, "label"

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/weirdvoice/models/CallerInfo;->numberLabel:Ljava/lang/String;

    .line 146
    iget v0, v6, Lcom/weirdvoice/models/CallerInfo;->numberType:I

    iget-object v2, v6, Lcom/weirdvoice/models/CallerInfo;->numberLabel:Ljava/lang/String;

    .line 145
    invoke-static {p1, v0, v2}, Landroid/provider/Contacts$Phones;->getDisplayLabel(Landroid/content/Context;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 147
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 145
    iput-object v0, v6, Lcom/weirdvoice/models/CallerInfo;->phoneLabel:Ljava/lang/String;

    .line 150
    :cond_1
    const-string v0, "person"

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 151
    const-string v0, "person"

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v6, Lcom/weirdvoice/models/CallerInfo;->personId:J

    .line 153
    sget-object v0, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v2, v6, Lcom/weirdvoice/models/CallerInfo;->personId:J

    .line 152
    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v6, Lcom/weirdvoice/models/CallerInfo;->contactContentUri:Landroid/net/Uri;

    .line 156
    :cond_2
    const-string v0, "custom_ringtone"

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 157
    const-string v0, "custom_ringtone"

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 158
    .local v10, "ringtoneUriString":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 159
    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v6, Lcom/weirdvoice/models/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    .line 163
    .end local v10    # "ringtoneUriString":Ljava/lang/String;
    :cond_3
    iget-object v0, v6, Lcom/weirdvoice/models/CallerInfo;->name:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, v6, Lcom/weirdvoice/models/CallerInfo;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    .line 164
    const/4 v0, 0x0

    iput-object v0, v6, Lcom/weirdvoice/models/CallerInfo;->name:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    .end local v8    # "cv":Landroid/content/ContentValues;
    :cond_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 179
    :cond_5
    :goto_0
    iget-object v0, v6, Lcom/weirdvoice/models/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 180
    iput-object p2, v6, Lcom/weirdvoice/models/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 183
    :cond_6
    return-object v6

    .line 169
    :catch_0
    move-exception v9

    .line 170
    .local v9, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "ContactsUtils3"

    const-string v2, "Exception while retrieving cursor infos"

    invoke-static {v0, v2, v9}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 172
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 171
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 172
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 173
    throw v0
.end method

.method public findCallerInfoForUri(Landroid/content/Context;Ljava/lang/String;)Lcom/weirdvoice/models/CallerInfo;
    .locals 1
    .param p1, "ctxt"    # Landroid/content/Context;
    .param p2, "sipUri"    # Ljava/lang/String;

    .prologue
    .line 190
    new-instance v0, Lcom/weirdvoice/models/CallerInfo;

    invoke-direct {v0}, Lcom/weirdvoice/models/CallerInfo;-><init>()V

    .line 191
    .local v0, "callerInfo":Lcom/weirdvoice/models/CallerInfo;
    iput-object p2, v0, Lcom/weirdvoice/models/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 193
    return-object v0
.end method

.method public findSelfInfo(Landroid/content/Context;)Lcom/weirdvoice/models/CallerInfo;
    .locals 1
    .param p1, "ctxt"    # Landroid/content/Context;

    .prologue
    .line 198
    new-instance v0, Lcom/weirdvoice/models/CallerInfo;

    invoke-direct {v0}, Lcom/weirdvoice/models/CallerInfo;-><init>()V

    .line 199
    .local v0, "callerInfo":Lcom/weirdvoice/models/CallerInfo;
    return-object v0
.end method

.method public getAddContactIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "csipUri"    # Ljava/lang/String;

    .prologue
    .line 278
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 280
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 281
    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 283
    :cond_0
    const-string v1, "im_handle"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 284
    const-string v1, "im_protocol"

    const-string v2, "csip"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 285
    return-object v0
.end method

.method public getCSipPhonesByGroup(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "ctxt"    # Landroid/content/Context;
    .param p2, "groupName"    # Ljava/lang/String;
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

    .prologue
    .line 266
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getCSipPhonesContact(Landroid/content/Context;Ljava/lang/Long;)Ljava/util/List;
    .locals 1
    .param p1, "ctxt"    # Landroid/content/Context;
    .param p2, "contactId"    # Ljava/lang/Long;
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

    .prologue
    .line 316
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getContactIndexableColumnIndex(Landroid/database/Cursor;)I
    .locals 1
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 242
    const-string v0, "display_name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getContactInfo(Landroid/content/Context;Landroid/database/Cursor;)Lcom/weirdvoice/utils/contacts/ContactsWrapper$ContactInfo;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 255
    new-instance v0, Lcom/weirdvoice/utils/contacts/ContactsWrapper$ContactInfo;

    invoke-direct {v0, p0}, Lcom/weirdvoice/utils/contacts/ContactsWrapper$ContactInfo;-><init>(Lcom/weirdvoice/utils/contacts/ContactsWrapper;)V

    .line 257
    .local v0, "ci":Lcom/weirdvoice/utils/contacts/ContactsWrapper$ContactInfo;
    return-object v0
.end method

.method public getContactPhoto(Landroid/content/Context;Landroid/net/Uri;ZLjava/lang/Integer;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "ctxt"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "hiRes"    # Z
    .param p4, "defaultResource"    # Ljava/lang/Integer;

    .prologue
    .line 79
    const/4 v1, 0x0

    .line 81
    .local v1, "img":Landroid/graphics/Bitmap;
    if-eqz p4, :cond_0

    :try_start_0
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_0
    const/4 v3, 0x0

    invoke-static {p1, p2, v2, v3}, Landroid/provider/Contacts$People;->loadContactPhoto(Landroid/content/Context;Landroid/net/Uri;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 85
    :goto_1
    return-object v1

    .line 81
    :cond_0
    const v2, 0x7f020189

    goto :goto_0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "Contact3"

    const-string v3, "Failed to find contact photo"

    invoke-static {v2, v3}, Lcom/weirdvoice/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getContactsByGroup(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .param p1, "ctxt"    # Landroid/content/Context;
    .param p2, "groupName"    # Ljava/lang/String;

    .prologue
    .line 250
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContactsPhones(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 10
    .param p1, "ctxt"    # Landroid/content/Context;
    .param p2, "constraint"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 205
    sget-object v1, Landroid/provider/Contacts$Phones;->CONTENT_URI:Landroid/net/Uri;

    .line 206
    .local v1, "uri":Landroid/net/Uri;
    const-string v0, "%s LIKE ? OR %s LIKE ?"

    new-array v2, v9, [Ljava/lang/Object;

    const-string v5, "number"

    aput-object v5, v2, v7

    .line 207
    const-string v5, "display_name"

    aput-object v5, v2, v8

    .line 206
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 208
    .local v3, "selection":Ljava/lang/String;
    new-array v4, v9, [Ljava/lang/String;

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "%"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    .line 211
    .local v4, "selectionArgs":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/weirdvoice/utils/contacts/ContactsUtils3;->PROJECTION_PHONE:[Ljava/lang/String;

    .line 212
    const-string v5, "display_name ASC"

    .line 211
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 213
    .local v6, "resCursor":Landroid/database/Cursor;
    return-object v6
.end method

.method public getGroups(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 297
    sget-object v1, Landroid/provider/Contacts$Groups;->CONTENT_URI:Landroid/net/Uri;

    .line 298
    .local v1, "searchUri":Landroid/net/Uri;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 299
    const-string v4, "_id"

    aput-object v4, v2, v0

    const/4 v0, 0x1

    .line 300
    const-string v4, "name AS \'title\'"

    aput-object v4, v2, v0

    .line 303
    .local v2, "projection":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 304
    const-string v5, "name ASC"

    move-object v4, v3

    .line 303
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneNumbers(Landroid/content/Context;JI)Ljava/util/List;
    .locals 10
    .param p1, "ctxt"    # Landroid/content/Context;
    .param p2, "contactId"    # J
    .param p4, "flags"    # I
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

    .prologue
    const/4 v2, 0x0

    .line 89
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .local v7, "phones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/weirdvoice/utils/contacts/ContactsWrapper$Phone;>;"
    sget v0, Lcom/weirdvoice/utils/contacts/ContactsWrapper;->URI_NBR:I

    and-int/2addr v0, p4

    if-lez v0, :cond_0

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 92
    sget-object v1, Landroid/provider/Contacts$Phones;->CONTENT_URI:Landroid/net/Uri;

    .line 94
    const-string v3, "person = ?"

    .line 95
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 96
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    move-object v5, v2

    .line 91
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 98
    .local v6, "pCur":Landroid/database/Cursor;
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 104
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 106
    .end local v6    # "pCur":Landroid/database/Cursor;
    :cond_0
    return-object v7

    .line 99
    .restart local v6    # "pCur":Landroid/database/Cursor;
    :cond_1
    new-instance v0, Lcom/weirdvoice/utils/contacts/ContactsWrapper$Phone;

    .line 100
    const-string v1, "number"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 101
    const-string v2, "type"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/weirdvoice/utils/contacts/ContactsWrapper$Phone;-><init>(Lcom/weirdvoice/utils/contacts/ContactsWrapper;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getPresenceIconResourceId(I)I
    .locals 1
    .param p1, "presence"    # I

    .prologue
    .line 261
    const v0, 0x7f02007f

    return v0
.end method

.method public getViewContactIntent(Ljava/lang/Long;)Landroid/content/Intent;
    .locals 4
    .param p1, "contactId"    # Ljava/lang/Long;

    .prologue
    .line 290
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 291
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Landroid/provider/Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 292
    return-object v0
.end method

.method public insertOrUpdateCSipUri(Landroid/content/Context;JLjava/lang/String;)Z
    .locals 1
    .param p1, "ctxt"    # Landroid/content/Context;
    .param p2, "contactId"    # J
    .param p4, "uri"    # Ljava/lang/String;

    .prologue
    .line 310
    const/4 v0, 0x0

    return v0
.end method

.method public isExternalPhoneNumber(Landroid/content/Context;Landroid/database/Cursor;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 324
    const/4 v0, 0x1

    return v0
.end method

.method public transformToSipUri(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "ctxt"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 112
    const/4 v1, 0x3

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, "number":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 114
    const-string v1, ""

    .line 117
    :goto_0
    return-object v1

    .line 116
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 117
    goto :goto_0
.end method

.method public updateCSipPresence(Landroid/content/Context;Ljava/lang/String;Lcom/weirdvoice/api/SipManager$PresenceStatus;Ljava/lang/String;)V
    .locals 0
    .param p1, "ctxt"    # Landroid/content/Context;
    .param p2, "buddyUri"    # Ljava/lang/String;
    .param p3, "presStatus"    # Lcom/weirdvoice/api/SipManager$PresenceStatus;
    .param p4, "statusText"    # Ljava/lang/String;

    .prologue
    .line 273
    return-void
.end method
