.class public Lcom/weirdvoice/utils/contacts/ContactsUtils5;
.super Lcom/weirdvoice/utils/contacts/ContactsWrapper;
.source "ContactsUtils5.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x5
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$weirdvoice$api$SipManager$PresenceStatus:[I = null

.field public static final CONTACT_ID_INDEX:I = 0x1

.field private static final DISPLAY_NAME_ORDER:Ljava/lang/String; = "display_name COLLATE LOCALIZED"

.field public static final LABEL_INDEX:I = 0x4

.field public static final NAME_INDEX:I = 0x5

.field public static final NUMBER_INDEX:I = 0x3

.field private static final PROJECTION_PHONE:[Ljava/lang/String;

.field private static final SORT_ORDER:Ljava/lang/String; = "times_contacted DESC,display_name COLLATE LOCALIZED,data2"

.field private static final THIS_FILE:Ljava/lang/String; = "ContactsUtils5"

.field public static final TYPE_INDEX:I = 0x2


# direct methods
.method static synthetic $SWITCH_TABLE$com$weirdvoice$api$SipManager$PresenceStatus()[I
    .locals 3

    .prologue
    .line 71
    sget-object v0, Lcom/weirdvoice/utils/contacts/ContactsUtils5;->$SWITCH_TABLE$com$weirdvoice$api$SipManager$PresenceStatus:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/weirdvoice/api/SipManager$PresenceStatus;->values()[Lcom/weirdvoice/api/SipManager$PresenceStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/weirdvoice/api/SipManager$PresenceStatus;->AWAY:Lcom/weirdvoice/api/SipManager$PresenceStatus;

    invoke-virtual {v1}, Lcom/weirdvoice/api/SipManager$PresenceStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_1
    :try_start_1
    sget-object v1, Lcom/weirdvoice/api/SipManager$PresenceStatus;->BUSY:Lcom/weirdvoice/api/SipManager$PresenceStatus;

    invoke-virtual {v1}, Lcom/weirdvoice/api/SipManager$PresenceStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_2
    :try_start_2
    sget-object v1, Lcom/weirdvoice/api/SipManager$PresenceStatus;->OFFLINE:Lcom/weirdvoice/api/SipManager$PresenceStatus;

    invoke-virtual {v1}, Lcom/weirdvoice/api/SipManager$PresenceStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    :try_start_3
    sget-object v1, Lcom/weirdvoice/api/SipManager$PresenceStatus;->ONLINE:Lcom/weirdvoice/api/SipManager$PresenceStatus;

    invoke-virtual {v1}, Lcom/weirdvoice/api/SipManager$PresenceStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_4
    :try_start_4
    sget-object v1, Lcom/weirdvoice/api/SipManager$PresenceStatus;->UNKNOWN:Lcom/weirdvoice/api/SipManager$PresenceStatus;

    invoke-virtual {v1}, Lcom/weirdvoice/api/SipManager$PresenceStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_5
    sput-object v0, Lcom/weirdvoice/utils/contacts/ContactsUtils5;->$SWITCH_TABLE$com$weirdvoice$api$SipManager$PresenceStatus:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 79
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 80
    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 81
    const-string v2, "contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 82
    const-string v2, "data2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 83
    const-string v2, "data1"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 84
    const-string v2, "data3"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 85
    const-string v2, "display_name"

    aput-object v2, v0, v1

    .line 79
    sput-object v0, Lcom/weirdvoice/utils/contacts/ContactsUtils5;->PROJECTION_PHONE:[Ljava/lang/String;

    .line 91
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/weirdvoice/utils/contacts/ContactsWrapper;-><init>()V

    return-void
.end method

.method private getContactDataCustomProtocolFilter(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "protocol"    # Ljava/lang/String;

    .prologue
    .line 290
    const-string v0, " %s=\'%s\' AND %s=%s AND LOWER(%s)=\'%s\'"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 291
    const-string v3, "mimetype"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "vnd.android.cursor.item/im"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    .line 292
    const-string v3, "data5"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    .line 293
    const-string v3, "data6"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 290
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bindContactPhoneView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 24
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 542
    const-string v21, "data1"

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 543
    .local v20, "value":Ljava/lang/String;
    const-string v21, "display_name"

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 544
    .local v8, "displayName":Ljava/lang/String;
    const-string v21, "contact_id"

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 545
    .local v7, "contactId":Ljava/lang/Long;
    sget-object v21, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    invoke-static/range {v21 .. v23}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v19

    .line 546
    .local v19, "uri":Landroid/net/Uri;
    const/16 v21, 0x0

    const v22, 0x7f020189

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v19

    move/from16 v3, v21

    move-object/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/weirdvoice/utils/contacts/ContactsUtils5;->getContactPhoto(Landroid/content/Context;Landroid/net/Uri;ZLjava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 547
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    const-string v13, ""

    .line 548
    .local v13, "labelName":Ljava/lang/CharSequence;
    const-string v21, "mimetype"

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 549
    .local v14, "mimeType":Ljava/lang/String;
    const-string v21, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 550
    const-string v21, "data2"

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 551
    .local v17, "typeColumnIdx":I
    const-string v21, "data3"

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 552
    .local v11, "labelColumnIdx":I
    const/16 v21, -0x1

    move/from16 v0, v21

    if-eq v11, v0, :cond_0

    const/16 v21, -0x1

    move/from16 v0, v17

    move/from16 v1, v21

    if-eq v0, v1, :cond_0

    .line 553
    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 554
    .local v12, "labelField":Ljava/lang/String;
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 555
    .local v18, "typeField":I
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-static {v0, v1, v12}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v13

    .line 568
    .end local v11    # "labelColumnIdx":I
    .end local v12    # "labelField":Ljava/lang/String;
    .end local v17    # "typeColumnIdx":I
    .end local v18    # "typeField":I
    :cond_0
    :goto_0
    const v21, 0x7f0b0073

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 569
    .local v16, "tv":Landroid/widget/TextView;
    const v21, 0x7f0b012a

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 570
    .local v10, "label":Landroid/widget/TextView;
    const v21, 0x7f0b0074

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 571
    .local v15, "sub":Landroid/widget/TextView;
    const v21, 0x7f0b00e4

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 575
    .local v9, "imageView":Landroid/widget/ImageView;
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 576
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 577
    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 580
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_1

    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_4

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-interface {v13, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v21

    const/16 v22, 0xa0

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_4

    .line 581
    :cond_1
    const/16 v21, 0x8

    move/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 586
    :goto_1
    if-eqz v9, :cond_2

    .line 587
    invoke-virtual {v9, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 591
    :cond_2
    return-void

    .line 557
    .end local v9    # "imageView":Landroid/widget/ImageView;
    .end local v10    # "label":Landroid/widget/TextView;
    .end local v15    # "sub":Landroid/widget/TextView;
    .end local v16    # "tv":Landroid/widget/TextView;
    :cond_3
    const-string v21, "vnd.android.cursor.item/im"

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_0

    .line 558
    const-string v21, "data5"

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 559
    .restart local v17    # "typeColumnIdx":I
    const-string v21, "data6"

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 560
    .restart local v11    # "labelColumnIdx":I
    const/16 v21, -0x1

    move/from16 v0, v17

    move/from16 v1, v21

    if-eq v0, v1, :cond_0

    const/16 v21, -0x1

    move/from16 v0, v21

    if-eq v11, v0, :cond_0

    .line 561
    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 562
    .restart local v12    # "labelField":Ljava/lang/String;
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 563
    .restart local v18    # "typeField":I
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-static {v0, v1, v12}, Landroid/provider/ContactsContract$CommonDataKinds$Im;->getProtocolLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v13

    goto/16 :goto_0

    .line 583
    .end local v11    # "labelColumnIdx":I
    .end local v12    # "labelField":Ljava/lang/String;
    .end local v17    # "typeColumnIdx":I
    .end local v18    # "typeField":I
    .restart local v9    # "imageView":Landroid/widget/ImageView;
    .restart local v10    # "label":Landroid/widget/TextView;
    .restart local v15    # "sub":Landroid/widget/TextView;
    .restart local v16    # "tv":Landroid/widget/TextView;
    :cond_4
    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 584
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public findCallerInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/weirdvoice/models/CallerInfo;
    .locals 12
    .param p1, "ctxt"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 184
    new-instance v8, Lcom/weirdvoice/models/CallerInfo;

    invoke-direct {v8}, Lcom/weirdvoice/models/CallerInfo;-><init>()V

    .line 190
    .local v8, "callerInfo":Lcom/weirdvoice/models/CallerInfo;
    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 192
    .local v1, "searchUri":Landroid/net/Uri;
    const/16 v0, 0xb

    invoke-static {v0}, Lcom/weirdvoice/utils/Compatibility;->isCompatible(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 193
    const/16 v0, 0x9

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 194
    const-string v3, "_id"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    .line 195
    const-string v3, "display_name"

    aput-object v3, v2, v0

    const/4 v0, 0x2

    .line 196
    const-string v3, "type"

    aput-object v3, v2, v0

    const/4 v0, 0x3

    .line 197
    const-string v3, "label"

    aput-object v3, v2, v0

    const/4 v0, 0x4

    .line 198
    const-string v3, "number"

    aput-object v3, v2, v0

    const/4 v0, 0x5

    .line 199
    const-string v3, "photo_id"

    aput-object v3, v2, v0

    const/4 v0, 0x6

    .line 200
    const-string v3, "lookup"

    aput-object v3, v2, v0

    const/4 v0, 0x7

    .line 201
    const-string v3, "custom_ringtone"

    aput-object v3, v2, v0

    const/16 v0, 0x8

    .line 202
    const-string v3, "photo_uri"

    aput-object v3, v2, v0

    .line 215
    .local v2, "projection":[Ljava/lang/String;
    :goto_0
    const/4 v9, 0x0

    .line 217
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 221
    :goto_1
    if-eqz v9, :cond_7

    .line 223
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_6

    .line 224
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 226
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 227
    .local v10, "cv":Landroid/content/ContentValues;
    invoke-static {v9, v10}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 228
    const/4 v0, 0x1

    iput-boolean v0, v8, Lcom/weirdvoice/models/CallerInfo;->contactExists:Z

    .line 229
    const-string v0, "display_name"

    invoke-virtual {v10, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    const-string v0, "display_name"

    invoke-virtual {v10, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/weirdvoice/models/CallerInfo;->name:Ljava/lang/String;

    .line 233
    :cond_0
    const-string v0, "number"

    invoke-virtual {v10, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/weirdvoice/models/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 235
    const-string v0, "type"

    invoke-virtual {v10, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "label"

    invoke-virtual {v10, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 236
    const-string v0, "type"

    invoke-virtual {v10, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v8, Lcom/weirdvoice/models/CallerInfo;->numberType:I

    .line 237
    const-string v0, "label"

    invoke-virtual {v10, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/weirdvoice/models/CallerInfo;->numberLabel:Ljava/lang/String;

    .line 239
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v3, v8, Lcom/weirdvoice/models/CallerInfo;->numberType:I

    .line 240
    iget-object v4, v8, Lcom/weirdvoice/models/CallerInfo;->numberLabel:Ljava/lang/String;

    .line 239
    invoke-static {v0, v3, v4}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 238
    check-cast v0, Ljava/lang/String;

    iput-object v0, v8, Lcom/weirdvoice/models/CallerInfo;->phoneLabel:Ljava/lang/String;

    .line 243
    :cond_1
    const-string v0, "_id"

    invoke-virtual {v10, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 244
    const-string v0, "_id"

    invoke-virtual {v10, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, v8, Lcom/weirdvoice/models/CallerInfo;->personId:J

    .line 246
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, v8, Lcom/weirdvoice/models/CallerInfo;->personId:J

    .line 245
    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v8, Lcom/weirdvoice/models/CallerInfo;->contactContentUri:Landroid/net/Uri;

    .line 249
    :cond_2
    const-string v0, "custom_ringtone"

    invoke-virtual {v10, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 250
    const-string v0, "custom_ringtone"

    invoke-virtual {v10, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 251
    .local v7, "cRt":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 252
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v8, Lcom/weirdvoice/models/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    .line 256
    .end local v7    # "cRt":Ljava/lang/String;
    :cond_3
    const-string v0, "photo_id"

    invoke-virtual {v10, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "photo_id"

    invoke-virtual {v10, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 257
    const-string v0, "photo_id"

    invoke-virtual {v10, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, v8, Lcom/weirdvoice/models/CallerInfo;->photoId:J

    .line 260
    :cond_4
    const-string v0, "photo_uri"

    invoke-virtual {v10, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 261
    const-string v0, "photo_uri"

    invoke-virtual {v10, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 262
    .local v6, "cPu":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 263
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v8, Lcom/weirdvoice/models/CallerInfo;->photoUri:Landroid/net/Uri;

    .line 267
    .end local v6    # "cPu":Ljava/lang/String;
    :cond_5
    iget-object v0, v8, Lcom/weirdvoice/models/CallerInfo;->name:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, v8, Lcom/weirdvoice/models/CallerInfo;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_6

    .line 268
    const/4 v0, 0x0

    iput-object v0, v8, Lcom/weirdvoice/models/CallerInfo;->name:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 275
    .end local v10    # "cv":Landroid/content/ContentValues;
    :cond_6
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 282
    :cond_7
    :goto_2
    iget-object v0, v8, Lcom/weirdvoice/models/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 283
    iput-object p2, v8, Lcom/weirdvoice/models/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 286
    :cond_8
    return-object v8

    .line 205
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v9    # "cursor":Landroid/database/Cursor;
    :cond_9
    const/4 v0, 0x7

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 206
    const-string v3, "_id"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    .line 207
    const-string v3, "display_name"

    aput-object v3, v2, v0

    const/4 v0, 0x2

    .line 208
    const-string v3, "type"

    aput-object v3, v2, v0

    const/4 v0, 0x3

    .line 209
    const-string v3, "label"

    aput-object v3, v2, v0

    const/4 v0, 0x4

    .line 210
    const-string v3, "number"

    aput-object v3, v2, v0

    const/4 v0, 0x5

    .line 211
    const-string v3, "custom_ringtone"

    aput-object v3, v2, v0

    const/4 v0, 0x6

    .line 212
    const-string v3, "lookup"

    aput-object v3, v2, v0

    .line 205
    .restart local v2    # "projection":[Ljava/lang/String;
    goto/16 :goto_0

    .line 218
    .restart local v9    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v11

    .line 219
    .local v11, "e":Ljava/lang/Exception;
    const-string v0, "ContactsUtils5"

    const-string v3, "Stock contact app is not able to resolve contacts"

    invoke-static {v0, v3, v11}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 272
    .end local v11    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v11

    .line 273
    .restart local v11    # "e":Ljava/lang/Exception;
    :try_start_2
    const-string v0, "ContactsUtils5"

    const-string v3, "Exception while retrieving cursor infos"

    invoke-static {v0, v3, v11}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 275
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 274
    .end local v11    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 275
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 276
    throw v0
.end method

.method public findCallerInfoForUri(Landroid/content/Context;Ljava/lang/String;)Lcom/weirdvoice/models/CallerInfo;
    .locals 17
    .param p1, "ctxt"    # Landroid/content/Context;
    .param p2, "sipUri"    # Ljava/lang/String;

    .prologue
    .line 298
    new-instance v10, Lcom/weirdvoice/models/CallerInfo;

    invoke-direct {v10}, Lcom/weirdvoice/models/CallerInfo;-><init>()V

    .line 300
    .local v10, "callerInfo":Lcom/weirdvoice/models/CallerInfo;
    const/16 v2, 0xb

    invoke-static {v2}, Lcom/weirdvoice/utils/Compatibility;->isCompatible(I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 301
    const/16 v2, 0x8

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 302
    const-string v6, "_id"

    aput-object v6, v4, v2

    const/4 v2, 0x1

    .line 303
    const-string v6, "contact_id"

    aput-object v6, v4, v2

    const/4 v2, 0x2

    .line 304
    const-string v6, "data1"

    aput-object v6, v4, v2

    const/4 v2, 0x3

    .line 305
    const-string v6, "display_name"

    aput-object v6, v4, v2

    const/4 v2, 0x4

    .line 306
    const-string v6, "photo_id"

    aput-object v6, v4, v2

    const/4 v2, 0x5

    .line 307
    const-string v6, "custom_ringtone"

    aput-object v6, v4, v2

    const/4 v2, 0x6

    .line 308
    const-string v6, "lookup"

    aput-object v6, v4, v2

    const/4 v2, 0x7

    .line 309
    const-string v6, "photo_uri"

    aput-object v6, v4, v2

    .line 324
    .local v4, "projection":[Ljava/lang/String;
    :goto_0
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 327
    .local v3, "uri":Landroid/net/Uri;
    const-string v2, "(%s)"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v15, "sip"

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/weirdvoice/utils/contacts/ContactsUtils5;->getContactDataCustomProtocolFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v6, v7

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 328
    .local v14, "whereSipUriClause":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " OR (%s)"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string v16, "csip"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/weirdvoice/utils/contacts/ContactsUtils5;->getContactDataCustomProtocolFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v7, v15

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 329
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " OR (%s)"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string v16, "sips"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/weirdvoice/utils/contacts/ContactsUtils5;->getContactDataCustomProtocolFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v7, v15

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 332
    const/16 v2, 0x9

    invoke-static {v2}, Lcom/weirdvoice/utils/Compatibility;->isCompatible(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 333
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " OR mimetype=\'vnd.android.cursor.item/sip_address\'"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 337
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "display_name IS NOT NULL  AND ("

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 338
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ") AND "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "data1"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "=?"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 337
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 341
    .local v5, "query":Ljava/lang/String;
    const/4 v11, 0x0

    .line 343
    .local v11, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p2, v6, v7

    const-string v7, "display_name ASC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 348
    :goto_1
    if-eqz v11, :cond_7

    .line 350
    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_6

    .line 351
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 353
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 354
    .local v12, "cv":Landroid/content/ContentValues;
    invoke-static {v11, v12}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 355
    const/4 v2, 0x1

    iput-boolean v2, v10, Lcom/weirdvoice/models/CallerInfo;->contactExists:Z

    .line 356
    const-string v2, "display_name"

    invoke-virtual {v12, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 357
    const-string v2, "display_name"

    invoke-virtual {v12, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v10, Lcom/weirdvoice/models/CallerInfo;->name:Ljava/lang/String;

    .line 360
    :cond_1
    move-object/from16 v0, p2

    iput-object v0, v10, Lcom/weirdvoice/models/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 362
    const-string v2, "sip"

    iput-object v2, v10, Lcom/weirdvoice/models/CallerInfo;->numberLabel:Ljava/lang/String;

    .line 363
    const-string v2, "sip"

    iput-object v2, v10, Lcom/weirdvoice/models/CallerInfo;->phoneLabel:Ljava/lang/String;

    .line 365
    const-string v2, "contact_id"

    invoke-virtual {v12, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 366
    const-string v2, "contact_id"

    invoke-virtual {v12, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, v10, Lcom/weirdvoice/models/CallerInfo;->personId:J

    .line 369
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v6, v10, Lcom/weirdvoice/models/CallerInfo;->personId:J

    .line 368
    invoke-static {v2, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v10, Lcom/weirdvoice/models/CallerInfo;->contactContentUri:Landroid/net/Uri;

    .line 372
    :cond_2
    const-string v2, "custom_ringtone"

    invoke-virtual {v12, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 373
    const-string v2, "custom_ringtone"

    invoke-virtual {v12, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 374
    .local v9, "cRt":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 375
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v10, Lcom/weirdvoice/models/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    .line 379
    .end local v9    # "cRt":Ljava/lang/String;
    :cond_3
    const-string v2, "photo_id"

    invoke-virtual {v12, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "photo_id"

    invoke-virtual {v12, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 380
    const-string v2, "photo_id"

    invoke-virtual {v12, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, v10, Lcom/weirdvoice/models/CallerInfo;->photoId:J

    .line 383
    :cond_4
    const-string v2, "photo_uri"

    invoke-virtual {v12, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 384
    const-string v2, "photo_uri"

    invoke-virtual {v12, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 385
    .local v8, "cPu":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 386
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v10, Lcom/weirdvoice/models/CallerInfo;->photoUri:Landroid/net/Uri;

    .line 390
    .end local v8    # "cPu":Ljava/lang/String;
    :cond_5
    iget-object v2, v10, Lcom/weirdvoice/models/CallerInfo;->name:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, v10, Lcom/weirdvoice/models/CallerInfo;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_6

    .line 391
    const/4 v2, 0x0

    iput-object v2, v10, Lcom/weirdvoice/models/CallerInfo;->name:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 398
    .end local v12    # "cv":Landroid/content/ContentValues;
    :cond_6
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 403
    :cond_7
    :goto_2
    return-object v10

    .line 312
    .end local v3    # "uri":Landroid/net/Uri;
    .end local v4    # "projection":[Ljava/lang/String;
    .end local v5    # "query":Ljava/lang/String;
    .end local v11    # "cursor":Landroid/database/Cursor;
    .end local v14    # "whereSipUriClause":Ljava/lang/String;
    :cond_8
    const/4 v2, 0x7

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 313
    const-string v6, "_id"

    aput-object v6, v4, v2

    const/4 v2, 0x1

    .line 314
    const-string v6, "contact_id"

    aput-object v6, v4, v2

    const/4 v2, 0x2

    .line 315
    const-string v6, "data1"

    aput-object v6, v4, v2

    const/4 v2, 0x3

    .line 316
    const-string v6, "display_name"

    aput-object v6, v4, v2

    const/4 v2, 0x4

    .line 317
    const-string v6, "photo_id"

    aput-object v6, v4, v2

    const/4 v2, 0x5

    .line 318
    const-string v6, "custom_ringtone"

    aput-object v6, v4, v2

    const/4 v2, 0x6

    .line 319
    const-string v6, "lookup"

    aput-object v6, v4, v2

    .line 312
    .restart local v4    # "projection":[Ljava/lang/String;
    goto/16 :goto_0

    .line 344
    .restart local v3    # "uri":Landroid/net/Uri;
    .restart local v5    # "query":Ljava/lang/String;
    .restart local v11    # "cursor":Landroid/database/Cursor;
    .restart local v14    # "whereSipUriClause":Ljava/lang/String;
    :catch_0
    move-exception v13

    .line 345
    .local v13, "e":Ljava/lang/Exception;
    const-string v2, "ContactsUtils5"

    const-string v6, "Stock contact app is not able to resolve contact display name"

    invoke-static {v2, v6, v13}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 395
    .end local v13    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v13

    .line 396
    .restart local v13    # "e":Ljava/lang/Exception;
    :try_start_2
    const-string v2, "ContactsUtils5"

    const-string v6, "Exception while retrieving cursor infos"

    invoke-static {v2, v6, v13}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 398
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 397
    .end local v13    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 398
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 399
    throw v2
.end method

.method public findSelfInfo(Landroid/content/Context;)Lcom/weirdvoice/models/CallerInfo;
    .locals 1
    .param p1, "ctxt"    # Landroid/content/Context;

    .prologue
    .line 408
    new-instance v0, Lcom/weirdvoice/models/CallerInfo;

    invoke-direct {v0}, Lcom/weirdvoice/models/CallerInfo;-><init>()V

    .line 409
    .local v0, "callerInfo":Lcom/weirdvoice/models/CallerInfo;
    return-object v0
.end method

.method public getAddContactIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 5
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "csipUri"    # Ljava/lang/String;

    .prologue
    .line 816
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.INSERT_OR_EDIT"

    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 817
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "vnd.android.cursor.item/contact"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 819
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 820
    const-string v3, "name"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 823
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 824
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 825
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 826
    .local v0, "csipProto":Landroid/content/ContentValues;
    const-string v3, "mimetype"

    const-string v4, "vnd.android.cursor.item/im"

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 827
    const-string v3, "data5"

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 828
    const-string v3, "data6"

    const-string v4, "csip"

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    const-string v3, "data1"

    const/4 v4, 0x0

    invoke-static {p2, v4}, Lcom/weirdvoice/api/SipUri;->getCanonicalSipContact(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 832
    const-string v3, "data"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 835
    .end local v0    # "csipProto":Landroid/content/ContentValues;
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :cond_1
    return-object v2
.end method

.method public getCSipPhonesByGroup(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 6
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
    .line 642
    invoke-virtual {p0, p1, p2}, Lcom/weirdvoice/utils/contacts/ContactsUtils5;->getContactsByGroup(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 643
    .local v0, "contacts":Landroid/database/Cursor;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 644
    .local v3, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 646
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_1

    .line 654
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 657
    :cond_0
    :goto_1
    return-object v3

    .line 648
    :cond_1
    :try_start_1
    const-string v4, "_id"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 647
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p0, p1, v4}, Lcom/weirdvoice/utils/contacts/ContactsUtils5;->getCSipPhonesContact(Landroid/content/Context;Ljava/lang/Long;)Ljava/util/List;

    move-result-object v2

    .line 649
    .local v2, "res":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 651
    .end local v2    # "res":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 652
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v4, "ContactsUtils5"

    const-string v5, "Error while looping on contacts"

    invoke-static {v4, v5, v1}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 654
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 653
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 654
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 655
    throw v4
.end method

.method public getCSipPhonesContact(Landroid/content/Context;Ljava/lang/Long;)Ljava/util/List;
    .locals 14
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
    .line 662
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 663
    .local v9, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 664
    .local v1, "dataUri":Landroid/net/Uri;
    const-string v7, "mimetype=\'vnd.android.cursor.item/im\'  AND data5=-1 AND  LOWER(data6)=\'csip\'"

    .line 670
    .local v7, "dataQuery":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 672
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 673
    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 674
    const-string v4, "data1"

    aput-object v4, v2, v3

    .line 676
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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

    .line 677
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 678
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v5

    .line 679
    const/4 v5, 0x0

    .line 671
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 682
    .local v6, "dataCursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 683
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 685
    const-string v0, "data1"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 684
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 686
    .local v10, "val":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 687
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 693
    .end local v10    # "val":Ljava/lang/String;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 696
    :goto_0
    return-object v9

    .line 690
    :catch_0
    move-exception v8

    .line 691
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "ContactsUtils5"

    const-string v2, "Error while looping on data"

    invoke-static {v0, v2, v8}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 693
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 692
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 693
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 694
    throw v0
.end method

.method public getContactIndexableColumnIndex(Landroid/database/Cursor;)I
    .locals 1
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 595
    const-string v0, "display_name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getContactInfo(Landroid/content/Context;Landroid/database/Cursor;)Lcom/weirdvoice/utils/contacts/ContactsWrapper$ContactInfo;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 790
    new-instance v0, Lcom/weirdvoice/utils/contacts/ContactsWrapper$ContactInfo;

    invoke-direct {v0, p0}, Lcom/weirdvoice/utils/contacts/ContactsWrapper$ContactInfo;-><init>(Lcom/weirdvoice/utils/contacts/ContactsWrapper;)V

    .line 792
    .local v0, "ci":Lcom/weirdvoice/utils/contacts/ContactsWrapper$ContactInfo;
    const-string v3, "display_name"

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/weirdvoice/utils/contacts/ContactsWrapper$ContactInfo;->displayName:Ljava/lang/String;

    .line 793
    const-string v3, "_id"

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v0, Lcom/weirdvoice/utils/contacts/ContactsWrapper$ContactInfo;->contactId:Ljava/lang/Long;

    .line 794
    iget-object v3, v0, Lcom/weirdvoice/utils/contacts/ContactsWrapper$ContactInfo;->callerInfo:Lcom/weirdvoice/models/CallerInfo;

    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-object v5, v0, Lcom/weirdvoice/utils/contacts/ContactsWrapper$ContactInfo;->contactId:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v4, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, v3, Lcom/weirdvoice/models/CallerInfo;->contactContentUri:Landroid/net/Uri;

    .line 795
    iget-object v3, v0, Lcom/weirdvoice/utils/contacts/ContactsWrapper$ContactInfo;->callerInfo:Lcom/weirdvoice/models/CallerInfo;

    const-string v4, "photo_id"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/weirdvoice/models/CallerInfo;->photoId:J

    .line 796
    const-string v3, "photo_id"

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 797
    .local v2, "photoUriColIndex":I
    const-string v3, "contact_status"

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/weirdvoice/utils/contacts/ContactsWrapper$ContactInfo;->status:Ljava/lang/String;

    .line 798
    const-string v3, "contact_presence"

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v0, Lcom/weirdvoice/utils/contacts/ContactsWrapper$ContactInfo;->presence:I

    .line 800
    if-ltz v2, :cond_0

    .line 801
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 802
    .local v1, "photoUri":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 803
    iget-object v3, v0, Lcom/weirdvoice/utils/contacts/ContactsWrapper$ContactInfo;->callerInfo:Lcom/weirdvoice/models/CallerInfo;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, v3, Lcom/weirdvoice/models/CallerInfo;->photoUri:Landroid/net/Uri;

    .line 806
    .end local v1    # "photoUri":Ljava/lang/String;
    :cond_0
    iget-object v3, v0, Lcom/weirdvoice/utils/contacts/ContactsWrapper$ContactInfo;->status:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    :goto_0
    iput-boolean v3, v0, Lcom/weirdvoice/utils/contacts/ContactsWrapper$ContactInfo;->hasPresence:Z

    .line 807
    return-object v0

    .line 806
    :cond_1
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public getContactPhoto(Landroid/content/Context;Landroid/net/Uri;ZLjava/lang/Integer;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "ctxt"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "hiRes"    # Z
    .param p4, "defaultResource"    # Ljava/lang/Integer;

    .prologue
    .line 94
    const/4 v1, 0x0

    .line 96
    .local v1, "img":Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 95
    invoke-static {v3, p2}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 97
    .local v2, "s":Ljava/io/InputStream;
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 99
    if-nez v1, :cond_0

    if-eqz p4, :cond_0

    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 101
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 100
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 102
    .local v0, "drawableBitmap":Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 106
    .end local v0    # "drawableBitmap":Landroid/graphics/drawable/BitmapDrawable;
    :cond_0
    return-object v1
.end method

.method public getContactsByGroup(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .param p1, "ctxt"    # Landroid/content/Context;
    .param p2, "groupName"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 601
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 636
    :goto_0
    return-object v6

    .line 606
    :cond_0
    const/16 v0, 0xb

    invoke-static {v0}, Lcom/weirdvoice/utils/Compatibility;->isCompatible(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 607
    const/4 v0, 0x7

    new-array v2, v0, [Ljava/lang/String;

    .line 608
    const-string v0, "_id"

    aput-object v0, v2, v3

    .line 609
    const-string v0, "display_name"

    aput-object v0, v2, v4

    .line 610
    const-string v0, "photo_id"

    aput-object v0, v2, v5

    .line 611
    const-string v0, "contact_status_icon"

    aput-object v0, v2, v8

    const/4 v0, 0x4

    .line 612
    const-string v3, "contact_status"

    aput-object v3, v2, v0

    const/4 v0, 0x5

    .line 613
    const-string v3, "contact_presence"

    aput-object v3, v2, v0

    const/4 v0, 0x6

    .line 614
    const-string v3, "photo_uri"

    aput-object v3, v2, v0

    .line 626
    .local v2, "projection":[Ljava/lang/String;
    :goto_1
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_GROUP_URI:Landroid/net/Uri;

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 629
    .local v1, "searchUri":Landroid/net/Uri;
    const/4 v6, 0x0

    .line 631
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 632
    const-string v5, "display_name ASC"

    .line 631
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_0

    .line 617
    .end local v1    # "searchUri":Landroid/net/Uri;
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_1
    const/4 v0, 0x5

    new-array v2, v0, [Ljava/lang/String;

    .line 618
    const-string v0, "_id"

    aput-object v0, v2, v3

    .line 619
    const-string v0, "display_name"

    aput-object v0, v2, v4

    .line 620
    const-string v0, "photo_id"

    aput-object v0, v2, v5

    .line 621
    const-string v0, "contact_status"

    aput-object v0, v2, v8

    const/4 v0, 0x4

    .line 622
    const-string v3, "contact_presence"

    aput-object v3, v2, v0

    .line 617
    .restart local v2    # "projection":[Ljava/lang/String;
    goto :goto_1

    .line 633
    .restart local v1    # "searchUri":Landroid/net/Uri;
    .restart local v6    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 634
    .local v7, "e":Ljava/lang/Exception;
    const-string v0, "ContactsUtils5"

    const-string v3, "Error while retrieving group"

    invoke-static {v0, v3, v7}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getContactsPhones(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 17
    .param p1, "ctxt"    # Landroid/content/Context;
    .param p2, "constraint"    # Ljava/lang/CharSequence;

    .prologue
    .line 415
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 418
    .local v3, "uri":Landroid/net/Uri;
    const-string v10, "(mimetype=\'vnd.android.cursor.item/phone_v2\' AND data1 IS NOT NULL ) "

    .line 422
    .local v10, "isPhoneType":Ljava/lang/String;
    const/16 v2, 0x9

    invoke-static {v2}, Lcom/weirdvoice/utils/Compatibility;->isCompatible(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 423
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " OR (mimetype=\'vnd.android.cursor.item/sip_address\')"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 428
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " OR ( %s)"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string v16, "sip"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/weirdvoice/utils/contacts/ContactsUtils5;->getContactDataCustomProtocolFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v7, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 429
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " OR ( %s)"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string v16, "sips"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/weirdvoice/utils/contacts/ContactsUtils5;->getContactDataCustomProtocolFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v7, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 430
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " OR ( %s)"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string v16, "csip"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/weirdvoice/utils/contacts/ContactsUtils5;->getContactDataCustomProtocolFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v7, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 432
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "display_name IS NOT NULL  AND ("

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 433
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ")"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 432
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 436
    .local v5, "query":Ljava/lang/String;
    const/16 v2, 0xb

    invoke-static {v2}, Lcom/weirdvoice/utils/Compatibility;->isCompatible(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 437
    const/16 v2, 0xc

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 438
    const-string v7, "_id"

    aput-object v7, v4, v2

    const/4 v2, 0x1

    .line 439
    const-string v7, "contact_id"

    aput-object v7, v4, v2

    const/4 v2, 0x2

    .line 440
    const-string v7, "data1"

    aput-object v7, v4, v2

    const/4 v2, 0x3

    .line 441
    const-string v7, "display_name"

    aput-object v7, v4, v2

    const/4 v2, 0x4

    .line 442
    const-string v7, "photo_id"

    aput-object v7, v4, v2

    const/4 v2, 0x5

    .line 443
    const-string v7, "lookup"

    aput-object v7, v4, v2

    const/4 v2, 0x6

    .line 444
    const-string v7, "photo_uri"

    aput-object v7, v4, v2

    const/4 v2, 0x7

    .line 445
    const-string v7, "mimetype"

    aput-object v7, v4, v2

    const/16 v2, 0x8

    .line 446
    const-string v7, "data2"

    aput-object v7, v4, v2

    const/16 v2, 0x9

    .line 447
    const-string v7, "data3"

    aput-object v7, v4, v2

    const/16 v2, 0xa

    .line 448
    const-string v7, "data5"

    aput-object v7, v4, v2

    const/16 v2, 0xb

    .line 449
    const-string v7, "data6"

    aput-object v7, v4, v2

    .line 467
    .local v4, "projection":[Ljava/lang/String;
    :goto_0
    const/4 v6, 0x0

    .line 468
    .local v6, "selectionArgs":[Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 469
    const/4 v11, 0x0

    .line 470
    .local v11, "phoneConstraint":Ljava/lang/String;
    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v7, "^[0-9\\-\\(\\)+ ]+$"

    invoke-virtual {v2, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    .line 471
    .local v9, "isDigitOnly":Z
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/weirdvoice/utils/contacts/ContactsUtils5;->usefulAsDigits(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 472
    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 473
    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 474
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 479
    :cond_1
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 480
    .local v13, "selectionArgsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " AND ("

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 482
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "%s LIKE ?"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string v16, "data1"

    aput-object v16, v14, v15

    invoke-static {v7, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 483
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "%"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 484
    if-eqz v9, :cond_2

    .line 485
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " OR replace(replace(replace(replace(%s, \' \', \'\'), \'-\', \'\'), \'(\', \'\'), \')\', \'\') LIKE ?"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string v16, "data1"

    aput-object v16, v14, v15

    invoke-static {v7, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 486
    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v7, "[ \\-()]"

    const-string v14, ""

    invoke-virtual {v2, v7, v14}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 487
    .local v8, "cleanNumber":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "%"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 489
    .end local v8    # "cleanNumber":Ljava/lang/String;
    :cond_2
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 490
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " OR %s LIKE ?"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string v16, "data1"

    aput-object v16, v14, v15

    invoke-static {v7, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 491
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "%"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 494
    :cond_3
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    if-nez v9, :cond_4

    .line 495
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " OR raw_contact_id IN (SELECT name_data.raw_contact_id FROM view_data AS name_data WHERE name_data.mimetype=\'vnd.android.cursor.item/name\' AND (name_data.data3 LIKE ? OR name_data.data2 LIKE ?))"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 504
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "%"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 505
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "%"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 507
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ")"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 508
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "selectionArgs":[Ljava/lang/String;
    check-cast v6, [Ljava/lang/String;

    .line 512
    .end local v9    # "isDigitOnly":Z
    .end local v11    # "phoneConstraint":Ljava/lang/String;
    .end local v13    # "selectionArgsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6    # "selectionArgs":[Ljava/lang/String;
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 513
    const-string v7, "display_name ASC"

    .line 512
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 515
    .local v12, "resCursor":Landroid/database/Cursor;
    return-object v12

    .line 452
    .end local v4    # "projection":[Ljava/lang/String;
    .end local v6    # "selectionArgs":[Ljava/lang/String;
    .end local v12    # "resCursor":Landroid/database/Cursor;
    :cond_6
    const/16 v2, 0xb

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 453
    const-string v7, "_id"

    aput-object v7, v4, v2

    const/4 v2, 0x1

    .line 454
    const-string v7, "contact_id"

    aput-object v7, v4, v2

    const/4 v2, 0x2

    .line 455
    const-string v7, "data1"

    aput-object v7, v4, v2

    const/4 v2, 0x3

    .line 456
    const-string v7, "display_name"

    aput-object v7, v4, v2

    const/4 v2, 0x4

    .line 457
    const-string v7, "photo_id"

    aput-object v7, v4, v2

    const/4 v2, 0x5

    .line 458
    const-string v7, "lookup"

    aput-object v7, v4, v2

    const/4 v2, 0x6

    .line 459
    const-string v7, "mimetype"

    aput-object v7, v4, v2

    const/4 v2, 0x7

    .line 460
    const-string v7, "data2"

    aput-object v7, v4, v2

    const/16 v2, 0x8

    .line 461
    const-string v7, "data3"

    aput-object v7, v4, v2

    const/16 v2, 0x9

    .line 462
    const-string v7, "data5"

    aput-object v7, v4, v2

    const/16 v2, 0xa

    .line 463
    const-string v7, "data6"

    aput-object v7, v4, v2

    .line 452
    .restart local v4    # "projection":[Ljava/lang/String;
    goto/16 :goto_0
.end method

.method public getGroups(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 847
    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    .line 848
    .local v1, "searchUri":Landroid/net/Uri;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 849
    const-string v4, "_id"

    aput-object v4, v2, v0

    const/4 v0, 0x1

    .line 850
    const-string v4, "title"

    aput-object v4, v2, v0

    .line 853
    .local v2, "projection":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 854
    const-string v5, "title ASC"

    move-object v4, v3

    .line 853
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneNumbers(Landroid/content/Context;JI)Ljava/util/List;
    .locals 12
    .param p1, "ctxt"    # Landroid/content/Context;
    .param p2, "contactId"    # J
    .param p4, "flag"    # I
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
    .line 110
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    .line 111
    .local v6, "id":Ljava/lang/String;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 114
    .local v8, "phones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/weirdvoice/utils/contacts/ContactsWrapper$Phone;>;"
    sget v0, Lcom/weirdvoice/utils/contacts/ContactsWrapper;->URI_NBR:I

    and-int v0, v0, p4

    if-lez v0, :cond_0

    .line 115
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 116
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    .line 117
    const/4 v2, 0x0

    .line 118
    const-string v3, "contact_id = ?"

    .line 119
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 120
    aput-object v6, v4, v5

    .line 121
    const/4 v5, 0x0

    .line 115
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 122
    .local v7, "pCur":Landroid/database/Cursor;
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 130
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 134
    .end local v7    # "pCur":Landroid/database/Cursor;
    :cond_0
    sget v0, Lcom/weirdvoice/utils/contacts/ContactsWrapper;->URI_IM:I

    and-int v0, v0, p4

    if-lez v0, :cond_2

    .line 135
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 136
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 137
    const/4 v2, 0x0

    .line 138
    const-string v3, "contact_id = ? AND mimetype = ?"

    .line 140
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 141
    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v10, "vnd.android.cursor.item/im"

    aput-object v10, v4, v5

    .line 142
    const/4 v5, 0x0

    .line 135
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 143
    .restart local v7    # "pCur":Landroid/database/Cursor;
    :cond_1
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_5

    .line 156
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 160
    .end local v7    # "pCur":Landroid/database/Cursor;
    :cond_2
    const/16 v0, 0x9

    invoke-static {v0}, Lcom/weirdvoice/utils/Compatibility;->isCompatible(I)Z

    move-result v0

    if-eqz v0, :cond_3

    sget v0, Lcom/weirdvoice/utils/contacts/ContactsWrapper;->URI_SIP:I

    and-int v0, v0, p4

    if-lez v0, :cond_3

    .line 161
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 162
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 163
    const/4 v2, 0x0

    .line 164
    const-string v3, "contact_id = ? AND mimetype = ?"

    .line 166
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 167
    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v10, "vnd.android.cursor.item/sip_address"

    aput-object v10, v4, v5

    .line 168
    const/4 v5, 0x0

    .line 161
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 169
    .restart local v7    # "pCur":Landroid/database/Cursor;
    :goto_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_7

    .line 175
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 178
    .end local v7    # "pCur":Landroid/database/Cursor;
    :cond_3
    return-object v8

    .line 123
    .restart local v7    # "pCur":Landroid/database/Cursor;
    :cond_4
    new-instance v0, Lcom/weirdvoice/utils/contacts/ContactsWrapper$Phone;

    .line 125
    const-string v1, "data1"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 124
    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 126
    const-string v2, "data2"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/weirdvoice/utils/contacts/ContactsWrapper$Phone;-><init>(Lcom/weirdvoice/utils/contacts/ContactsWrapper;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 146
    :cond_5
    const-string v0, "data5"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 148
    const-string v0, "data6"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 147
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 149
    .local v9, "proto":Ljava/lang/String;
    const-string v0, "sip"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "csip"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    :cond_6
    new-instance v0, Lcom/weirdvoice/utils/contacts/ContactsWrapper$Phone;

    .line 151
    const-string v1, "data1"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 150
    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 151
    const-string v2, "sip"

    invoke-direct {v0, p0, v1, v2}, Lcom/weirdvoice/utils/contacts/ContactsWrapper$Phone;-><init>(Lcom/weirdvoice/utils/contacts/ContactsWrapper;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 172
    .end local v9    # "proto":Ljava/lang/String;
    :cond_7
    new-instance v0, Lcom/weirdvoice/utils/contacts/ContactsWrapper$Phone;

    .line 173
    const-string v1, "data1"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 172
    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 173
    const-string v2, "sip"

    invoke-direct {v0, p0, v1, v2}, Lcom/weirdvoice/utils/contacts/ContactsWrapper$Phone;-><init>(Lcom/weirdvoice/utils/contacts/ContactsWrapper;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public getPresenceIconResourceId(I)I
    .locals 1
    .param p1, "presence"    # I

    .prologue
    .line 811
    invoke-static {p1}, Landroid/provider/ContactsContract$StatusUpdates;->getPresenceIconResourceId(I)I

    move-result v0

    return v0
.end method

.method public getViewContactIntent(Ljava/lang/Long;)Landroid/content/Intent;
    .locals 4
    .param p1, "contactId"    # Ljava/lang/Long;

    .prologue
    .line 840
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 841
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 842
    return-object v0
.end method

.method public insertOrUpdateCSipUri(Landroid/content/Context;JLjava/lang/String;)Z
    .locals 20
    .param p1, "ctxt"    # Landroid/content/Context;
    .param p2, "contactId"    # J
    .param p4, "uri"    # Ljava/lang/String;

    .prologue
    .line 860
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 861
    .local v2, "cr":Landroid/content/ContentResolver;
    const-wide/16 v16, -0x1

    .line 862
    .local v16, "rawContactId":J
    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    .line 863
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    .line 864
    const-string v5, "contact_id=?"

    .line 865
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v6, v7

    const/4 v7, 0x0

    .line 862
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 867
    .local v8, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 868
    const-string v3, "_id"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v16

    .line 873
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 876
    :goto_0
    const-wide/16 v4, -0x1

    cmp-long v3, v16, v4

    if-eqz v3, :cond_3

    .line 877
    const/4 v3, 0x0

    move-object/from16 v0, p4

    invoke-static {v0, v3}, Lcom/weirdvoice/api/SipUri;->getCanonicalSipContact(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v11

    .line 879
    .local v11, "csipUri":Ljava/lang/String;
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 880
    .local v12, "cv":Landroid/content/ContentValues;
    const-string v3, "data1"

    invoke-virtual {v12, v3, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 881
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    .line 882
    const-string v5, "mimetype=? AND data5=? AND data6=? AND raw_contact_id=?"

    .line 885
    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    .line 886
    const-string v18, "vnd.android.cursor.item/im"

    aput-object v18, v6, v7

    const/4 v7, 0x1

    .line 887
    const/16 v18, -0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v6, v7

    const/4 v7, 0x2

    .line 888
    const-string v18, "csip"

    aput-object v18, v6, v7

    const/4 v7, 0x3

    .line 889
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v6, v7

    .line 890
    const/4 v7, 0x0

    .line 881
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 891
    .local v10, "cs":Landroid/database/Cursor;
    if-eqz v10, :cond_3

    .line 892
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 893
    .local v9, "count":I
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 896
    if-lez v9, :cond_1

    .line 897
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 898
    const-string v4, "mimetype=? AND data5=? AND data6=? AND raw_contact_id=?"

    .line 901
    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    .line 902
    const-string v7, "vnd.android.cursor.item/im"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 903
    const/4 v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    .line 904
    const-string v7, "csip"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    .line 905
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 897
    invoke-virtual {v2, v3, v12, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    .line 907
    .local v15, "updated":I
    const-string v3, "ContactsUtils5"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Updated : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 920
    .end local v15    # "updated":I
    :goto_1
    const/4 v3, 0x1

    .line 923
    .end local v9    # "count":I
    .end local v10    # "cs":Landroid/database/Cursor;
    .end local v11    # "csipUri":Ljava/lang/String;
    .end local v12    # "cv":Landroid/content/ContentValues;
    :goto_2
    return v3

    .line 870
    :catch_0
    move-exception v13

    .line 871
    .local v13, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v3, "ContactsUtils5"

    const-string v4, "Error while looping on contacts"

    invoke-static {v3, v4, v13}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 873
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 872
    .end local v13    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 873
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 874
    throw v3

    .line 909
    .restart local v9    # "count":I
    .restart local v10    # "cs":Landroid/database/Cursor;
    .restart local v11    # "csipUri":Ljava/lang/String;
    .restart local v12    # "cv":Landroid/content/ContentValues;
    :cond_1
    const-string v3, "mimetype"

    const-string v4, "vnd.android.cursor.item/im"

    invoke-virtual {v12, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 910
    const-string v3, "data5"

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 911
    const-string v3, "data6"

    const-string v4, "csip"

    invoke-virtual {v12, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 912
    const-string v3, "raw_contact_id"

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v12, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 913
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v12}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v14

    .line 914
    .local v14, "insertedUri":Landroid/net/Uri;
    if-nez v14, :cond_2

    .line 915
    const/4 v3, 0x0

    goto :goto_2

    .line 917
    :cond_2
    const-string v3, "ContactsUtils5"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Inserted : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 923
    .end local v9    # "count":I
    .end local v10    # "cs":Landroid/database/Cursor;
    .end local v11    # "csipUri":Ljava/lang/String;
    .end local v12    # "cv":Landroid/content/ContentValues;
    .end local v14    # "insertedUri":Landroid/net/Uri;
    :cond_3
    const/4 v3, 0x0

    goto :goto_2
.end method

.method public isExternalPhoneNumber(Landroid/content/Context;Landroid/database/Cursor;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 532
    const-string v1, "mimetype"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 533
    .local v0, "mimeType":Ljava/lang/String;
    const-string v1, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public transformToSipUri(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "ctxt"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 520
    const-string v1, "data1"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 521
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 522
    const-string v1, ""

    .line 525
    :goto_0
    return-object v1

    .line 524
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 525
    goto :goto_0
.end method

.method public updateCSipPresence(Landroid/content/Context;Ljava/lang/String;Lcom/weirdvoice/api/SipManager$PresenceStatus;Ljava/lang/String;)V
    .locals 10
    .param p1, "ctxt"    # Landroid/content/Context;
    .param p2, "buddyUri"    # Ljava/lang/String;
    .param p3, "presStatus"    # Lcom/weirdvoice/api/SipManager$PresenceStatus;
    .param p4, "statusText"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    .line 704
    const/16 v6, 0x8

    invoke-static {v6}, Lcom/weirdvoice/utils/Compatibility;->isCompatible(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 707
    const/4 v5, 0x0

    .line 708
    .local v5, "presence":I
    const-string v1, ""

    .line 709
    .local v1, "correspondingPresence":Ljava/lang/String;
    invoke-static {}, Lcom/weirdvoice/utils/contacts/ContactsUtils5;->$SWITCH_TABLE$com$weirdvoice$api$SipManager$PresenceStatus()[I

    move-result-object v6

    invoke-virtual {p3}, Lcom/weirdvoice/api/SipManager$PresenceStatus;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 729
    :goto_0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 730
    move-object p4, v1

    .line 733
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 736
    .local v3, "operationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v6, Landroid/provider/ContactsContract$StatusUpdates;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 738
    .local v0, "builder":Landroid/content/ContentProviderOperation$Builder;
    const-string v6, "custom_protocol"

    const-string v7, "csip"

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 739
    const-string v6, "protocol"

    const/4 v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 740
    const-string v6, "im_handle"

    invoke-virtual {v0, v6, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 741
    const-string v6, "status"

    invoke-virtual {v0, v6, p4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 742
    const-string v6, "mode"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 744
    const/16 v6, 0xb

    invoke-static {v6}, Lcom/weirdvoice/utils/Compatibility;->isCompatible(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 745
    const-string v6, "chat_capability"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 748
    :cond_1
    invoke-static {p1}, Lcom/weirdvoice/utils/PreferencesProviderWrapper;->getCurrentPackageInfos(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 749
    .local v4, "pkg":Ljava/lang/String;
    const-string v6, "status_res_package"

    invoke-virtual {v0, v6, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 750
    const-string v6, "status_label"

    const v7, 0x7f0c01e8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 751
    const-string v6, "status_icon"

    const v7, 0x7f0202c1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 752
    const-string v6, "status_ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 753
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 761
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "com.android.contacts"

    invoke-virtual {v6, v7, v3}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 786
    .end local v0    # "builder":Landroid/content/ContentProviderOperation$Builder;
    .end local v1    # "correspondingPresence":Ljava/lang/String;
    .end local v3    # "operationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v4    # "pkg":Ljava/lang/String;
    .end local v5    # "presence":I
    :cond_2
    :goto_1
    return-void

    .line 711
    .restart local v1    # "correspondingPresence":Ljava/lang/String;
    .restart local v5    # "presence":I
    :pswitch_0
    const/4 v5, 0x5

    .line 712
    const v6, 0x7f0c023a

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 713
    goto/16 :goto_0

    .line 715
    :pswitch_1
    const/4 v5, 0x1

    .line 716
    const v6, 0x7f0c023b

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 717
    goto/16 :goto_0

    .line 719
    :pswitch_2
    const/4 v5, 0x2

    .line 720
    const v6, 0x7f0c023c

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 721
    goto/16 :goto_0

    .line 723
    :pswitch_3
    const/4 v5, 0x4

    .line 724
    const v6, 0x7f0c023d

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 725
    goto/16 :goto_0

    .line 762
    .restart local v0    # "builder":Landroid/content/ContentProviderOperation$Builder;
    .restart local v3    # "operationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v4    # "pkg":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 763
    .local v2, "e":Landroid/os/RemoteException;
    const-string v6, "ContactsUtils5"

    const-string v7, "Can\'t update status"

    invoke-static {v6, v7, v2}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 764
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 765
    .local v2, "e":Landroid/content/OperationApplicationException;
    const-string v6, "ContactsUtils5"

    const-string v7, "Can\'t update status"

    invoke-static {v6, v7, v2}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 709
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
