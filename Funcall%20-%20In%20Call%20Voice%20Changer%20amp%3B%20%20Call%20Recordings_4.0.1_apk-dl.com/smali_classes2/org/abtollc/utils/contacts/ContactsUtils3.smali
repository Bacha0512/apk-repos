.class public Lorg/abtollc/utils/contacts/ContactsUtils3;
.super Lorg/abtollc/utils/contacts/ContactsWrapper;
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

    .line 38
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "display_name"

    aput-object v1, v0, v3

    sput-object v0, Lorg/abtollc/utils/contacts/ContactsUtils3;->PROJECTION_CONTACTS:[Ljava/lang/String;

    .line 43
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "person"

    aput-object v1, v0, v3

    const-string v1, "type"

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "label"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "display_name"

    aput-object v2, v0, v1

    sput-object v0, Lorg/abtollc/utils/contacts/ContactsUtils3;->PROJECTION_PHONE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lorg/abtollc/utils/contacts/ContactsWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public bindAutoCompleteView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 196
    return-void
.end method

.method public bindContactPhoneView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 300
    return-void
.end method

.method public bindContactView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 318
    return-void
.end method

.method public findCallerInfo(Landroid/content/Context;Ljava/lang/String;)Lorg/abtollc/models/CallerInfo;
    .locals 11
    .param p1, "ctxt"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 200
    sget-object v0, Landroid/provider/Contacts$Phones;->CONTENT_FILTER_URL:Landroid/net/Uri;

    .line 201
    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 203
    .local v1, "searchUri":Landroid/net/Uri;
    new-instance v6, Lorg/abtollc/models/CallerInfo;

    invoke-direct {v6}, Lorg/abtollc/models/CallerInfo;-><init>()V

    .line 205
    .local v6, "callerInfo":Lorg/abtollc/models/CallerInfo;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 206
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_5

    .line 208
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 209
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 210
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 211
    .local v8, "cv":Landroid/content/ContentValues;
    invoke-static {v7, v8}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 212
    const/4 v0, 0x1

    iput-boolean v0, v6, Lorg/abtollc/models/CallerInfo;->contactExists:Z

    .line 213
    const-string v0, "display_name"

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    const-string v0, "display_name"

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lorg/abtollc/models/CallerInfo;->name:Ljava/lang/String;

    .line 217
    :cond_0
    const-string v0, "number"

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lorg/abtollc/models/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 219
    const-string v0, "type"

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "label"

    .line 220
    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 221
    const-string v0, "type"

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v6, Lorg/abtollc/models/CallerInfo;->numberType:I

    .line 222
    const-string v0, "label"

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lorg/abtollc/models/CallerInfo;->numberLabel:Ljava/lang/String;

    .line 223
    iget v0, v6, Lorg/abtollc/models/CallerInfo;->numberType:I

    iget-object v2, v6, Lorg/abtollc/models/CallerInfo;->numberLabel:Ljava/lang/String;

    invoke-static {p1, v0, v2}, Landroid/provider/Contacts$Phones;->getDisplayLabel(Landroid/content/Context;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 225
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lorg/abtollc/models/CallerInfo;->phoneLabel:Ljava/lang/String;

    .line 228
    :cond_1
    const-string v0, "person"

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 229
    const-string v0, "person"

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v6, Lorg/abtollc/models/CallerInfo;->personId:J

    .line 230
    sget-object v0, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v2, v6, Lorg/abtollc/models/CallerInfo;->personId:J

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v6, Lorg/abtollc/models/CallerInfo;->contactContentUri:Landroid/net/Uri;

    .line 234
    :cond_2
    const-string v0, "custom_ringtone"

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 235
    const-string v0, "custom_ringtone"

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 236
    .local v10, "ringtoneUriString":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 237
    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v6, Lorg/abtollc/models/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    .line 241
    .end local v10    # "ringtoneUriString":Ljava/lang/String;
    :cond_3
    iget-object v0, v6, Lorg/abtollc/models/CallerInfo;->name:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, v6, Lorg/abtollc/models/CallerInfo;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    .line 242
    const/4 v0, 0x0

    iput-object v0, v6, Lorg/abtollc/models/CallerInfo;->name:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    .end local v8    # "cv":Landroid/content/ContentValues;
    :cond_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 257
    :cond_5
    :goto_0
    iget-object v0, v6, Lorg/abtollc/models/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 258
    iput-object p2, v6, Lorg/abtollc/models/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 261
    :cond_6
    return-object v6

    .line 247
    :catch_0
    move-exception v9

    .line 248
    .local v9, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "ContactsUtils3"

    const-string v2, "Exception while retrieving cursor infos"

    invoke-static {v0, v2, v9}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 250
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public findSelfInfo(Landroid/content/Context;)Lorg/abtollc/models/CallerInfo;
    .locals 1
    .param p1, "ctxt"    # Landroid/content/Context;

    .prologue
    .line 267
    new-instance v0, Lorg/abtollc/models/CallerInfo;

    invoke-direct {v0}, Lorg/abtollc/models/CallerInfo;-><init>()V

    .line 268
    .local v0, "callerInfo":Lorg/abtollc/models/CallerInfo;
    return-object v0
.end method

.method public getAddContactIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    .line 334
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 336
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 337
    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 339
    :cond_0
    const-string v1, "im_handle"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 340
    const-string v1, "im_protocol"

    const-string v2, "csip"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 341
    return-object v0
.end method

.method public getContactIndexableColumnIndex(Landroid/database/Cursor;)I
    .locals 1
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 304
    const-string v0, "display_name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getContactPhoto(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/Integer;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "ctxt"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "defaultResource"    # Ljava/lang/Integer;

    .prologue
    .line 58
    const/4 v1, 0x0

    .line 60
    .local v1, "img":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {p1, p2, v2, v3}, Landroid/provider/Contacts$People;->loadContactPhoto(Landroid/content/Context;Landroid/net/Uri;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 64
    :goto_0
    return-object v1

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "Contact3"

    const-string v3, "Failed to find contact photo"

    invoke-static {v2, v3}, Lorg/abtollc/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getContactsByGroup(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .param p1, "ctxt"    # Landroid/content/Context;
    .param p2, "groupName"    # Ljava/lang/String;

    .prologue
    .line 311
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContactsPhones(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 7
    .param p1, "ctxt"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 274
    sget-object v1, Landroid/provider/Contacts$Phones;->CONTENT_URI:Landroid/net/Uri;

    .line 275
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lorg/abtollc/utils/contacts/ContactsUtils3;->PROJECTION_PHONE:[Ljava/lang/String;

    const-string v5, "display_name ASC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 277
    .local v6, "resCursor":Landroid/database/Cursor;
    return-object v6
.end method

.method public getGroups(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 346
    sget-object v1, Landroid/provider/Contacts$Groups;->CONTENT_URI:Landroid/net/Uri;

    .line 347
    .local v1, "searchUri":Landroid/net/Uri;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v0

    const/4 v0, 0x1

    const-string v4, "name AS \'title\'"

    aput-object v4, v2, v0

    .line 352
    .local v2, "projection":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "name ASC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneNumbers(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p1, "ctxt"    # Landroid/content/Context;
    .param p2, "id"    # Ljava/lang/String;
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

    .prologue
    const/4 v2, 0x0

    .line 68
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .local v8, "phones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/abtollc/utils/contacts/ContactsWrapper$Phone;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Contacts$Phones;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "person = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 73
    .local v7, "pCur":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 75
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 76
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    new-instance v0, Lorg/abtollc/utils/contacts/ContactsWrapper$Phone;

    const-string v1, "number"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "type"

    .line 78
    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 77
    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lorg/abtollc/utils/contacts/ContactsWrapper$Phone;-><init>(Lorg/abtollc/utils/contacts/ContactsWrapper;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 81
    :catch_0
    move-exception v6

    .line 82
    .local v6, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "ContactsUtils3"

    const-string v1, "Exception while retrieving cursor infos"

    invoke-static {v0, v1}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 87
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_1
    return-object v8

    .line 84
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public getPhonesByGroup(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
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
    .line 322
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public searchContact(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 13
    .param p1, "ctxt"    # Landroid/content/Context;
    .param p2, "constraint"    # Ljava/lang/CharSequence;

    .prologue
    .line 92
    const-string v7, ""

    .line 93
    .local v7, "phone":Ljava/lang/String;
    const-string v6, ""

    .line 95
    .local v6, "cons":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 96
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 98
    invoke-virtual {p0, v6}, Lorg/abtollc/utils/contacts/ContactsUtils3;->usefulAsDigits(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 100
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 101
    const-string v7, ""

    .line 108
    :cond_0
    :goto_0
    sget-object v1, Landroid/provider/Contacts$Phones;->CONTENT_URI:Landroid/net/Uri;

    .line 115
    .local v1, "uri":Landroid/net/Uri;
    const-string v0, "%s LIKE ? OR %s LIKE ?"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "number"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "display_name"

    aput-object v5, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 118
    .local v3, "selection":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lorg/abtollc/utils/contacts/ContactsUtils3;->PROJECTION_PHONE:[Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "%"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v5

    const/4 v5, 0x1

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "%"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "%"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v5

    const-string v5, "display_name ASC,type"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 126
    .local v8, "phoneCursor":Landroid/database/Cursor;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 128
    new-instance v10, Landroid/database/MatrixCursor;

    sget-object v0, Lorg/abtollc/utils/contacts/ContactsUtils3;->PROJECTION_PHONE:[Ljava/lang/String;

    const/4 v2, 0x1

    invoke-direct {v10, v0, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 130
    .local v10, "translated":Landroid/database/MatrixCursor;
    invoke-virtual {v10}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v9

    .line 131
    .local v9, "result":Landroid/database/MatrixCursor$RowBuilder;
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 132
    const-wide/16 v4, -0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 133
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 134
    invoke-virtual {v9, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 136
    const-string v0, "\u00a0"

    invoke-virtual {v9, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 137
    invoke-virtual {v9, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 156
    new-instance v0, Landroid/database/MergeCursor;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/database/Cursor;

    const/4 v4, 0x0

    aput-object v10, v2, v4

    const/4 v4, 0x1

    aput-object v8, v2, v4

    invoke-direct {v0, v2}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    move-object v8, v0

    .line 160
    .end local v8    # "phoneCursor":Landroid/database/Cursor;
    .end local v9    # "result":Landroid/database/MatrixCursor$RowBuilder;
    .end local v10    # "translated":Landroid/database/MatrixCursor;
    :cond_1
    return-object v8

    .line 103
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v3    # "selection":Ljava/lang/String;
    :cond_2
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0
.end method

.method public transformToSipUri(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "ctxt"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 166
    const/4 v1, 0x3

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, "number":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 168
    const-string v1, ""

    .line 171
    :goto_0
    return-object v1

    .line 170
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 171
    goto :goto_0
.end method

.method public updatePresence(Landroid/content/Context;Ljava/lang/String;Lorg/abtollc/api/SipManager$PresenceStatus;Ljava/lang/String;)V
    .locals 0
    .param p1, "ctxt"    # Landroid/content/Context;
    .param p2, "buddyUri"    # Ljava/lang/String;
    .param p3, "presStatus"    # Lorg/abtollc/api/SipManager$PresenceStatus;
    .param p4, "statusText"    # Ljava/lang/String;

    .prologue
    .line 329
    return-void
.end method
