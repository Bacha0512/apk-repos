.class public Lorg/abtollc/utils/contacts/ContactsUtils5;
.super Lorg/abtollc/utils/contacts/ContactsWrapper;
.source "ContactsUtils5.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x5
.end annotation


# static fields
.field public static final CONTACT_ID_INDEX:I = 0x1

.field public static final LABEL_INDEX:I = 0x4

.field public static final NAME_INDEX:I = 0x5

.field public static final NUMBER_INDEX:I = 0x3

.field private static final PROJECTION_PHONE:[Ljava/lang/String;

.field private static final SORT_ORDER:Ljava/lang/String; = "times_contacted DESC,display_name,data2"

.field private static final THIS_FILE:Ljava/lang/String; = "ContactsUtils5"

.field public static final TYPE_INDEX:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 51
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "data2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "data3"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "display_name"

    aput-object v2, v0, v1

    sput-object v0, Lorg/abtollc/utils/contacts/ContactsUtils5;->PROJECTION_PHONE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
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
    .line 279
    return-void
.end method

.method public bindContactPhoneView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 470
    return-void
.end method

.method public bindContactView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 689
    return-void
.end method

.method public findCallerInfo(Landroid/content/Context;Ljava/lang/String;)Lorg/abtollc/models/CallerInfo;
    .locals 12
    .param p1, "ctxt"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 283
    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 285
    .local v1, "searchUri":Landroid/net/Uri;
    new-instance v6, Lorg/abtollc/models/CallerInfo;

    invoke-direct {v6}, Lorg/abtollc/models/CallerInfo;-><init>()V

    .line 288
    .local v6, "callerInfo":Lorg/abtollc/models/CallerInfo;
    const/16 v0, 0xb

    invoke-static {v0}, Lorg/abtollc/utils/Compatibility;->isCompatible(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 289
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v5

    const-string v0, "display_name"

    aput-object v0, v2, v4

    const-string v0, "type"

    aput-object v0, v2, v10

    const-string v0, "label"

    aput-object v0, v2, v11

    const/4 v0, 0x4

    const-string v3, "number"

    aput-object v3, v2, v0

    const/4 v0, 0x5

    const-string v3, "photo_id"

    aput-object v3, v2, v0

    const/4 v0, 0x6

    const-string v3, "lookup"

    aput-object v3, v2, v0

    const/4 v0, 0x7

    const-string v3, "photo_uri"

    aput-object v3, v2, v0

    .line 310
    .local v2, "projection":[Ljava/lang/String;
    :goto_0
    const/4 v7, 0x0

    .line 313
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    .line 317
    :goto_1
    if-eqz v7, :cond_7

    .line 319
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_6

    .line 320
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 322
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 323
    .local v8, "cv":Landroid/content/ContentValues;
    invoke-static {v7, v8}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 324
    const/4 v0, 0x1

    iput-boolean v0, v6, Lorg/abtollc/models/CallerInfo;->contactExists:Z

    .line 325
    const-string v0, "display_name"

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    const-string v0, "display_name"

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lorg/abtollc/models/CallerInfo;->name:Ljava/lang/String;

    .line 329
    :cond_0
    const-string v0, "number"

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lorg/abtollc/models/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 331
    const-string v0, "type"

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "label"

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 332
    const-string v0, "type"

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v6, Lorg/abtollc/models/CallerInfo;->numberType:I

    .line 333
    const-string v0, "label"

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lorg/abtollc/models/CallerInfo;->numberLabel:Ljava/lang/String;

    .line 335
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v3, v6, Lorg/abtollc/models/CallerInfo;->numberType:I

    iget-object v4, v6, Lorg/abtollc/models/CallerInfo;->numberLabel:Ljava/lang/String;

    invoke-static {v0, v3, v4}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v6, Lorg/abtollc/models/CallerInfo;->phoneLabel:Ljava/lang/String;

    .line 339
    :cond_1
    const-string v0, "_id"

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 340
    const-string v0, "_id"

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, v6, Lorg/abtollc/models/CallerInfo;->personId:J

    .line 349
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, v6, Lorg/abtollc/models/CallerInfo;->personId:J

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v6, Lorg/abtollc/models/CallerInfo;->contactContentUri:Landroid/net/Uri;

    .line 353
    :cond_2
    const-string v0, "custom_ringtone"

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 354
    const-string v0, "custom_ringtone"

    .line 355
    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 354
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v6, Lorg/abtollc/models/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    .line 358
    :cond_3
    const-string v0, "photo_id"

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 359
    const-string v0, "photo_id"

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, v6, Lorg/abtollc/models/CallerInfo;->photoId:J

    .line 362
    :cond_4
    const-string v0, "photo_uri"

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 363
    const-string v0, "photo_uri"

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v6, Lorg/abtollc/models/CallerInfo;->photoUri:Landroid/net/Uri;

    .line 366
    :cond_5
    iget-object v0, v6, Lorg/abtollc/models/CallerInfo;->name:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, v6, Lorg/abtollc/models/CallerInfo;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_6

    .line 367
    const/4 v0, 0x0

    iput-object v0, v6, Lorg/abtollc/models/CallerInfo;->name:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 374
    .end local v8    # "cv":Landroid/content/ContentValues;
    :cond_6
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 381
    :cond_7
    :goto_2
    iget-object v0, v6, Lorg/abtollc/models/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 382
    iput-object p2, v6, Lorg/abtollc/models/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 385
    :cond_8
    return-object v6

    .line 300
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v7    # "cursor":Landroid/database/Cursor;
    :cond_9
    const/4 v0, 0x6

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v5

    const-string v0, "display_name"

    aput-object v0, v2, v4

    const-string v0, "type"

    aput-object v0, v2, v10

    const-string v0, "label"

    aput-object v0, v2, v11

    const/4 v0, 0x4

    const-string v3, "number"

    aput-object v3, v2, v0

    const/4 v0, 0x5

    const-string v3, "lookup"

    aput-object v3, v2, v0

    .restart local v2    # "projection":[Ljava/lang/String;
    goto/16 :goto_0

    .line 371
    .restart local v7    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v9

    .line 372
    .local v9, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v0, "ContactsUtils5"

    const-string v3, "Exception while retrieving cursor infos"

    invoke-static {v0, v3}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 374
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .line 314
    :catch_1
    move-exception v0

    goto/16 :goto_1
.end method

.method public findSelfInfo(Landroid/content/Context;)Lorg/abtollc/models/CallerInfo;
    .locals 1
    .param p1, "ctxt"    # Landroid/content/Context;

    .prologue
    .line 390
    new-instance v0, Lorg/abtollc/models/CallerInfo;

    invoke-direct {v0}, Lorg/abtollc/models/CallerInfo;-><init>()V

    .line 391
    .local v0, "callerInfo":Lorg/abtollc/models/CallerInfo;
    return-object v0
.end method

.method public getAddContactIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 5
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    .line 693
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.INSERT_OR_EDIT"

    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 694
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "vnd.android.cursor.item/contact"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 696
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 697
    const-string v3, "name"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 700
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 701
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 702
    .local v0, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 703
    .local v2, "proto":Landroid/content/ContentValues;
    const-string v3, "mimetype"

    const-string v4, "vnd.android.cursor.item/im"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    const-string v3, "data5"

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 705
    const-string v3, "data6"

    const-string v4, "csip"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    const-string v3, "data1"

    const/4 v4, 0x0

    invoke-static {p2, v4}, Lorg/abtollc/api/SipUri;->getCanonicalSipContact(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 709
    const-string v3, "data"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 712
    .end local v0    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v2    # "proto":Landroid/content/ContentValues;
    :cond_1
    return-object v1
.end method

.method public getContactIndexableColumnIndex(Landroid/database/Cursor;)I
    .locals 1
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 474
    const-string v0, "display_name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getContactPhoto(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/Integer;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "ctxt"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "defaultResource"    # Ljava/lang/Integer;

    .prologue
    .line 65
    const/4 v1, 0x0

    .line 68
    .local v1, "img":Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 67
    invoke-static {v3, p2}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 69
    .local v2, "s":Ljava/io/InputStream;
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 71
    if-nez v1, :cond_0

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 73
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 72
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 74
    .local v0, "drawableBitmap":Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 78
    .end local v0    # "drawableBitmap":Landroid/graphics/drawable/BitmapDrawable;
    :cond_0
    return-object v1
.end method

.method public getContactsByGroup(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .param p1, "ctxt"    # Landroid/content/Context;
    .param p2, "groupName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 480
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 507
    :goto_0
    return-object v3

    .line 485
    :cond_0
    const/16 v0, 0xb

    invoke-static {v0}, Lorg/abtollc/utils/Compatibility;->isCompatible(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 486
    const/4 v0, 0x7

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v4

    const-string v0, "display_name"

    aput-object v0, v2, v5

    const-string v0, "photo_id"

    aput-object v0, v2, v6

    const-string v0, "contact_status_icon"

    aput-object v0, v2, v7

    const/4 v0, 0x4

    const-string v4, "contact_status"

    aput-object v4, v2, v0

    const/4 v0, 0x5

    const-string v4, "contact_presence"

    aput-object v4, v2, v0

    const/4 v0, 0x6

    const-string v4, "photo_uri"

    aput-object v4, v2, v0

    .line 505
    .local v2, "projection":[Ljava/lang/String;
    :goto_1
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_GROUP_URI:Landroid/net/Uri;

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 507
    .local v1, "searchUri":Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "display_name ASC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    goto :goto_0

    .line 496
    .end local v1    # "searchUri":Landroid/net/Uri;
    .end local v2    # "projection":[Ljava/lang/String;
    :cond_1
    const/4 v0, 0x5

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v4

    const-string v0, "display_name"

    aput-object v0, v2, v5

    const-string v0, "photo_id"

    aput-object v0, v2, v6

    const-string v0, "contact_status"

    aput-object v0, v2, v7

    const/4 v0, 0x4

    const-string v4, "contact_presence"

    aput-object v4, v2, v0

    .restart local v2    # "projection":[Ljava/lang/String;
    goto :goto_1
.end method

.method public getContactsPhones(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 12
    .param p1, "ctxt"    # Landroid/content/Context;

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 397
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 400
    .local v1, "uri":Landroid/net/Uri;
    const-string v6, "(mimetype=\'vnd.android.cursor.item/phone_v2\' AND data1 IS NOT NULL ) "

    .line 404
    .local v6, "isPhoneType":Ljava/lang/String;
    const/16 v0, 0x9

    invoke-static {v0}, Lorg/abtollc/utils/Compatibility;->isCompatible(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " OR mimetype=\'vnd.android.cursor.item/sip_address\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 409
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " OR (mimetype=\'vnd.android.cursor.item/im\'  AND data5=-1 AND data6=\'sip\')"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " OR (mimetype=\'vnd.android.cursor.item/im\'  AND data5=-1 AND data6=\'csip\')"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "display_name IS NOT NULL  AND ("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 422
    .local v3, "query":Ljava/lang/String;
    const/16 v0, 0xb

    invoke-static {v0}, Lorg/abtollc/utils/Compatibility;->isCompatible(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 423
    const/4 v0, 0x7

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v5

    const-string v0, "contact_id"

    aput-object v0, v2, v8

    const-string v0, "data1"

    aput-object v0, v2, v9

    const-string v0, "display_name"

    aput-object v0, v2, v10

    const-string v0, "photo_id"

    aput-object v0, v2, v11

    const/4 v0, 0x5

    const-string v4, "lookup"

    aput-object v4, v2, v0

    const/4 v0, 0x6

    const-string v4, "photo_uri"

    aput-object v4, v2, v0

    .line 443
    .local v2, "projection":[Ljava/lang/String;
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v4, 0x0

    const-string v5, "display_name ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 447
    .local v7, "resCursor":Landroid/database/Cursor;
    return-object v7

    .line 433
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v7    # "resCursor":Landroid/database/Cursor;
    :cond_1
    const/4 v0, 0x6

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v5

    const-string v0, "contact_id"

    aput-object v0, v2, v8

    const-string v0, "data1"

    aput-object v0, v2, v9

    const-string v0, "display_name"

    aput-object v0, v2, v10

    const-string v0, "photo_id"

    aput-object v0, v2, v11

    const/4 v0, 0x5

    const-string v4, "lookup"

    aput-object v4, v2, v0

    .restart local v2    # "projection":[Ljava/lang/String;
    goto :goto_0
.end method

.method public getGroups(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 717
    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    .line 718
    .local v1, "searchUri":Landroid/net/Uri;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v0

    const/4 v0, 0x1

    const-string v4, "title"

    aput-object v4, v2, v0

    .line 723
    .local v2, "projection":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "title ASC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneNumbers(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 11
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
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 82
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .local v7, "phones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/abtollc/utils/contacts/ContactsWrapper$Phone;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "contact_id = ?"

    new-array v4, v9, [Ljava/lang/String;

    aput-object p2, v4, v8

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 91
    .local v6, "pCur":Landroid/database/Cursor;
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    new-instance v0, Lorg/abtollc/utils/contacts/ContactsWrapper$Phone;

    const-string v1, "data1"

    .line 94
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 93
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "data2"

    .line 95
    invoke-interface {v6, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p0, v1, v3}, Lorg/abtollc/utils/contacts/ContactsWrapper$Phone;-><init>(Lorg/abtollc/utils/contacts/ContactsWrapper;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 99
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 102
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "contact_id = ? AND mimetype = ?"

    new-array v4, v10, [Ljava/lang/String;

    aput-object p2, v4, v8

    const-string v5, "vnd.android.cursor.item/im"

    aput-object v5, v4, v9

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 110
    :cond_1
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 113
    const-string v0, "data5"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 114
    const-string v0, "sip"

    const-string v1, "data6"

    .line 115
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 114
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    new-instance v0, Lorg/abtollc/utils/contacts/ContactsWrapper$Phone;

    const-string v1, "data1"

    .line 117
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 116
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "sip"

    invoke-direct {v0, p0, v1, v3}, Lorg/abtollc/utils/contacts/ContactsWrapper$Phone;-><init>(Lorg/abtollc/utils/contacts/ContactsWrapper;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 122
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 125
    const/16 v0, 0x9

    invoke-static {v0}, Lorg/abtollc/utils/Compatibility;->isCompatible(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 126
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "contact_id = ? AND mimetype = ?"

    new-array v4, v10, [Ljava/lang/String;

    aput-object p2, v4, v8

    const-string v5, "vnd.android.cursor.item/sip_address"

    aput-object v5, v4, v9

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 134
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 137
    new-instance v0, Lorg/abtollc/utils/contacts/ContactsWrapper$Phone;

    const-string v1, "data1"

    .line 138
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 137
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sip"

    invoke-direct {v0, p0, v1, v2}, Lorg/abtollc/utils/contacts/ContactsWrapper$Phone;-><init>(Lorg/abtollc/utils/contacts/ContactsWrapper;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 140
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 143
    :cond_4
    return-object v7
.end method

.method public getPhonesByGroup(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 14
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
    .line 515
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 516
    .local v1, "dataUri":Landroid/net/Uri;
    const-string v8, "mimetype=\'vnd.android.cursor.item/im\'  AND data5=-1 AND  LOWER(data6)=\'csip\'"

    .line 522
    .local v8, "dataQuery":Ljava/lang/String;
    invoke-virtual/range {p0 .. p2}, Lorg/abtollc/utils/contacts/ContactsUtils5;->getContactsByGroup(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 523
    .local v6, "contacts":Landroid/database/Cursor;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 524
    .local v10, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v6, :cond_1

    .line 526
    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 528
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "data1"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "contact_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v12, "_id"

    .line 537
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 536
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v4, v5

    const/4 v5, 0x0

    .line 529
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 539
    .local v7, "dataCursor":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 540
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 541
    const-string v0, "data1"

    .line 542
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 541
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 545
    .local v11, "val":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 546
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 550
    .end local v11    # "val":Ljava/lang/String;
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 552
    .end local v7    # "dataCursor":Landroid/database/Cursor;
    :catch_0
    move-exception v9

    .line 553
    .local v9, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "ContactsUtils5"

    const-string v2, "Error while looping on contacts"

    invoke-static {v0, v2, v9}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 555
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 558
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-object v10

    .line 555
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public searchContact(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 11
    .param p1, "ctxt"    # Landroid/content/Context;
    .param p2, "constraint"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v3, 0x0

    .line 148
    const-string v7, ""

    .line 149
    .local v7, "phone":Ljava/lang/String;
    const/4 v6, 0x0

    .line 151
    .local v6, "cons":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 152
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 154
    invoke-virtual {p0, v6}, Lorg/abtollc/utils/contacts/ContactsUtils5;->usefulAsDigits(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 156
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 157
    const-string v7, ""

    .line 165
    :cond_0
    :goto_0
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_FILTER_URI:Landroid/net/Uri;

    .line 166
    invoke-static {v6}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 165
    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 174
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lorg/abtollc/utils/contacts/ContactsUtils5;->PROJECTION_PHONE:[Ljava/lang/String;

    const-string v5, "times_contacted DESC,display_name,data2"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 180
    .local v8, "phoneCursor":Landroid/database/Cursor;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 182
    new-instance v10, Landroid/database/MatrixCursor;

    sget-object v0, Lorg/abtollc/utils/contacts/ContactsUtils5;->PROJECTION_PHONE:[Ljava/lang/String;

    const/4 v2, 0x1

    invoke-direct {v10, v0, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 184
    .local v10, "translated":Landroid/database/MatrixCursor;
    invoke-virtual {v10}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v9

    .line 185
    .local v9, "result":Landroid/database/MatrixCursor$RowBuilder;
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 186
    const-wide/16 v2, -0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 187
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 188
    invoke-virtual {v9, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 190
    const-string v0, "\u00a0"

    invoke-virtual {v9, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 191
    invoke-virtual {v9, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 213
    .end local v9    # "result":Landroid/database/MatrixCursor$RowBuilder;
    .end local v10    # "translated":Landroid/database/MatrixCursor;
    :cond_1
    return-object v8

    .line 159
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v8    # "phoneCursor":Landroid/database/Cursor;
    :cond_2
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    goto :goto_0
.end method

.method public transformToSipUri(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "ctxt"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 219
    const/4 v1, 0x3

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, "number":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 221
    const-string v1, ""

    .line 251
    :goto_0
    return-object v1

    .line 223
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 251
    goto :goto_0
.end method

.method public updatePresence(Landroid/content/Context;Ljava/lang/String;Lorg/abtollc/api/SipManager$PresenceStatus;Ljava/lang/String;)V
    .locals 10
    .param p1, "ctxt"    # Landroid/content/Context;
    .param p2, "buddyUri"    # Ljava/lang/String;
    .param p3, "presStatus"    # Lorg/abtollc/api/SipManager$PresenceStatus;
    .param p4, "statusText"    # Ljava/lang/String;

    .prologue
    const/4 v8, -0x1

    .line 565
    const/16 v6, 0x8

    invoke-static {v6}, Lorg/abtollc/utils/Compatibility;->isCompatible(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 568
    const/4 v5, 0x0

    .line 569
    .local v5, "presence":I
    const-string v1, ""

    .line 570
    .local v1, "correspondingPresence":Ljava/lang/String;
    sget-object v6, Lorg/abtollc/utils/contacts/ContactsUtils5$1;->$SwitchMap$org$abtollc$api$SipManager$PresenceStatus:[I

    invoke-virtual {p3}, Lorg/abtollc/api/SipManager$PresenceStatus;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 590
    :goto_0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 591
    move-object p4, v1

    .line 594
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 596
    .local v3, "operationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v6, Landroid/provider/ContactsContract$StatusUpdates;->CONTENT_URI:Landroid/net/Uri;

    .line 597
    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 599
    .local v0, "builder":Landroid/content/ContentProviderOperation$Builder;
    const-string v6, "custom_protocol"

    const-string v7, "csip"

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 600
    const-string v6, "protocol"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 601
    const-string v6, "im_handle"

    invoke-virtual {v0, v6, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 602
    const-string v6, "status"

    invoke-virtual {v0, v6, p4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 603
    const-string v6, "mode"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 605
    const/16 v6, 0xb

    invoke-static {v6}, Lorg/abtollc/utils/Compatibility;->isCompatible(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 606
    const-string v6, "chat_capability"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 609
    :cond_1
    invoke-static {p1}, Lorg/abtollc/utils/PreferencesProviderWrapper;->getCurrentPackageInfos(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 610
    .local v4, "pkg":Ljava/lang/String;
    const-string v6, "status_res_package"

    invoke-virtual {v0, v6, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 611
    const-string v6, "status_label"

    const-string v7, "App_default"

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 612
    const-string v6, "status_icon"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 613
    const-string v6, "status_ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 614
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 622
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "com.android.contacts"

    invoke-virtual {v6, v7, v3}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 647
    .end local v0    # "builder":Landroid/content/ContentProviderOperation$Builder;
    .end local v1    # "correspondingPresence":Ljava/lang/String;
    .end local v3    # "operationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v4    # "pkg":Ljava/lang/String;
    .end local v5    # "presence":I
    :cond_2
    :goto_1
    return-void

    .line 572
    .restart local v1    # "correspondingPresence":Ljava/lang/String;
    .restart local v5    # "presence":I
    :pswitch_0
    const/4 v5, 0x5

    .line 573
    const-string v1, "Online"

    .line 574
    goto/16 :goto_0

    .line 576
    :pswitch_1
    const/4 v5, 0x1

    .line 577
    const-string v1, "Offline"

    .line 578
    goto/16 :goto_0

    .line 580
    :pswitch_2
    const/4 v5, 0x2

    .line 581
    const-string v1, "Away"

    .line 582
    goto/16 :goto_0

    .line 584
    :pswitch_3
    const/4 v5, 0x4

    .line 585
    const-string v1, "Busy"

    .line 586
    goto/16 :goto_0

    .line 623
    .restart local v0    # "builder":Landroid/content/ContentProviderOperation$Builder;
    .restart local v3    # "operationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v4    # "pkg":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 624
    .local v2, "e":Landroid/os/RemoteException;
    const-string v6, "ContactsUtils5"

    const-string v7, "Can\'t update status"

    invoke-static {v6, v7, v2}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 625
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 626
    .local v2, "e":Landroid/content/OperationApplicationException;
    const-string v6, "ContactsUtils5"

    const-string v7, "Can\'t update status"

    invoke-static {v6, v7, v2}, Lorg/abtollc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 570
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
