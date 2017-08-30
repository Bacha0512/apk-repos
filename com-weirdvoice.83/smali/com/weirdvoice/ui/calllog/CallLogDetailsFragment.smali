.class public Lcom/weirdvoice/ui/calllog/CallLogDetailsFragment;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "CallLogDetailsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/weirdvoice/ui/calllog/CallLogDetailsFragment$OnQuitListener;
    }
.end annotation


# static fields
.field private static final CALL_LOG_PROJECTION:[Ljava/lang/String;

.field private static final CALL_TYPE_COLUMN_INDEX:I = 0x3

.field private static final DATE_COLUMN_INDEX:I = 0x0

.field private static final DURATION_COLUMN_INDEX:I = 0x1

.field public static final EXTRA_CALL_LOG_IDS:Ljava/lang/String; = "EXTRA_CALL_LOG_IDS"

.field private static final NUMBER_COLUMN_INDEX:I = 0x2

.field private static final PROFILE_ID_COLUMN_INDEX:I = 0x4

.field private static final STATUS_CODE_COLUMN_INDEX:I = 0x5

.field private static final STATUS_TEXT_COLUMN_INDEX:I = 0x6

.field private static final THIS_FILE:Ljava/lang/String; = "CallLogDetailsFragment"


# instance fields
.field private connection:Landroid/content/ServiceConnection;

.field private mAccountChooserButton:Lcom/weirdvoice/widgets/AccountChooserButton;

.field private mContactBackgroundView:Landroid/widget/ImageView;

.field private mHeaderOverlayView:Landroid/view/View;

.field private mHeaderTextView:Landroid/widget/TextView;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mMainActionPushLayerView:Landroid/widget/ImageButton;

.field private mMainActionView:Landroid/widget/ImageView;

.field private mPhoneCallDetailsHelper:Lcom/weirdvoice/ui/calllog/PhoneCallDetailsHelper;

.field private final mPrimaryActionListener:Landroid/view/View$OnClickListener;

.field mResources:Landroid/content/res/Resources;

.field private quitListener:Lcom/weirdvoice/ui/calllog/CallLogDetailsFragment$OnQuitListener;

.field private service:Lcom/weirdvoice/api/ISipService;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 99
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 100
    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 101
    const-string v2, "duration"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 102
    const-string v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 103
    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 104
    const-string v2, "account_id"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 105
    const-string v2, "status_code"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 106
    const-string v2, "status_text"

    aput-object v2, v0, v1

    .line 99
    sput-object v0, Lcom/weirdvoice/ui/calllog/CallLogDetailsFragment;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    .line 115
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 136
    new-instance v0, Lcom/weirdvoice/ui/calllog/CallLogDetailsFragment$1;

    invoke-direct {v0, p0}, Lcom/weirdvoice/ui/calllog/CallLogDetailsFragment$1;-><init>(Lcom/weirdvoice/ui/calllog/CallLogDetailsFragment;)V

    iput-object v0, p0, Lcom/weirdvoice/ui/calllog/CallLogDetailsFragment;->connection:Landroid/content/ServiceConnection;

    .line 151
    new-instance v0, Lcom/weirdvoice/ui/calllog/CallLogDetailsFragment$2;

    invoke-direct {v0, p0}, Lcom/weirdvoice/ui/calllog/CallLogDetailsFragment$2;-><init>(Lcom/weirdvoice/ui/calllog/CallLogDetailsFragment;)V

    iput-object v0, p0, Lcom/weirdvoice/ui/calllog/CallLogDetailsFragment;->mPrimaryActionListener:Landroid/view/View$OnClickListener;

    .line 71
    return-void
.end method

.method static synthetic access$0(Lcom/weirdvoice/ui/calllog/CallLogDetailsFragment;Lcom/weirdvoice/api/ISipService;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/weirdvoice/ui/calllog/CallLogDetailsFragment;->service:Lcom/weirdvoice/api/ISipService;

    return-void
.end method

.method static synthetic access$1(Lcom/weirdvoice/ui/calllog/CallLogDetailsFragment;)Lcom/weirdvoice/api/ISipService;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/weirdvoice/ui/calllog/CallLogDetailsFragment;->service:Lcom/weirdvoice/api/ISipService;

    return-object v0
.end method

.method static synthetic access$2(Lcom/weirdvoice/ui/calllog/CallLogDetailsFragment;)Lcom/weirdvoice/widgets/AccountChooserButton;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/weirdvoice/ui/calllog/CallLogDetailsFragment;->mAccountChooserButton:Lcom/weirdvoice/widgets/AccountChooserButton;

    return-object v0
.end method

.method private configureCallButton(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 8
    .param p1, "callText"    # Ljava/lang/String;
    .param p2, "nbrLabel"    # Ljava/lang/CharSequence;
    .param p3, "number"    # Ljava/lang/CharSequence;

    .prologue
    const/16 v5, 0x8

    const/4 v6, 0x0

    .line 437
    invoke-virtual {p0}, Lcom/weirdvoice/ui/calllog/CallLogDetailsFragment;->getView()Landroid/view/View;

    move-result-object v4

    const v7, 0x7f0b0066

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 438
    .local v0, "convertView":Landroid/view/View;
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v5

    :goto_0
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 440
    const v4, 0x7f0b0068

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 442
    .local v3, "text":Landroid/widget/TextView;
    const v4, 0x7f0b0067

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 443
    .local v2, "mainAction":Landroid/view/View;
    iget-object v4, p0, Lcom/weirdvoice/ui/calllog/CallLogDetailsFragment;->mPrimaryActionListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 444
    invoke-virtual {v2, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 445
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 446
    const-string p3, ""

    .line 448
    :cond_0
    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v6}, Lcom/weirdvoice/api/SipUri;->getCanonicalSipContact(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 449
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 451
    const v4, 0x7f0b0069

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 452
    .local v1, "label":Landroid/widget/TextView;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 453
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 458
    :goto_1
    return-void

    .end local v1    # "label":Landroid/widget/TextView;
    .end local v2    # "mainAction":Landroid/view/View;
    .end local v3    # "text":Landroid/widget/TextView;
    :cond_1
    move v4, v6

    .line 438
    goto :goto_0

    .line 455
    .restart local v1    # "label":Landroid/widget/TextView;
    .restart local v2    # "mainAction":Landroid/view/View;
    .restart local v3    # "text":Landroid/widget/TextView;
    :cond_2
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 456
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method private getCallLogEntryUris()[Landroid/net/Uri;
    .locals 6

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/weirdvoice/ui/calllog/CallLogDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "EXTRA_CALL_LOG_IDS"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    .line 215
    .local v0, "ids":[J
    array-length v3, v0

    new-array v2, v3, [Landroid/net/Uri;

    .line 216
    .local v2, "uris":[Landroid/net/Uri;
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    array-length v3, v0

    if-lt v1, v3, :cond_0

    .line 219
    return-object v2

    .line 217
    :cond_0
    sget-object v3, Lcom/weirdvoice/api/SipManager;->CALLLOG_ID_URI_BASE:Landroid/net/Uri;

    aget-wide v4, v0, v1

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    aput-object v3, v2, v1

    .line 216
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getPhoneCallDetailsForUri(Landroid/net/Uri;)Lcom/weirdvoice/ui/calllog/PhoneCallDetails;
    .locals 30
    .param p1, "callUri"    # Landroid/net/Uri;

    .prologue
    .line 337
    invoke-virtual/range {p0 .. p0}, Lcom/weirdvoice/ui/calllog/CallLogDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 338
    .local v2, "resolver":Landroid/content/ContentResolver;
    sget-object v4, Lcom/weirdvoice/ui/calllog/CallLogDetailsFragment;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 340
    .local v20, "callCursor":Landroid/database/Cursor;
    if-eqz v20, :cond_0

    :try_start_0
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_2

    .line 341
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "Cannot find content: "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 407
    :catchall_0
    move-exception v3

    .line 408
    if-eqz v20, :cond_1

    .line 409
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 411
    :cond_1
    throw v3

    .line 345
    :cond_2
    const/4 v3, 0x2

    :try_start_1
    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 346
    .local v5, "number":Ljava/lang/String;
    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 347
    .local v8, "date":J
    const/4 v3, 0x1

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 348
    .local v10, "duration":J
    const/4 v3, 0x3

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 349
    .local v21, "callType":I
    const/4 v3, 0x4

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v28

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    .line 350
    .local v12, "accountId":Ljava/lang/Long;
    const/4 v3, 0x5

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 351
    .local v13, "statusCode":I
    const/4 v3, 0x6

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 363
    .local v14, "statusText":Ljava/lang/String;
    const-string v24, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 365
    .local v24, "numberDig":Ljava/lang/String;
    :try_start_2
    const-string v26, ""

    .line 366
    .local v26, "tmp":Ljava/lang/String;
    move-object/from16 v24, v5

    .line 368
    const-string v3, "_"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v25

    .line 369
    .local v25, "parts":[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v3, v25, v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v24, v3, v4

    .line 371
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x10

    if-ge v3, v4, :cond_3

    .line 372
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_0
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    move/from16 v0, v22

    if-lt v0, v3, :cond_5

    .line 379
    .end local v22    # "i":I
    :cond_3
    move-object/from16 v24, v26

    .line 383
    .end local v25    # "parts":[Ljava/lang/String;
    .end local v26    # "tmp":Ljava/lang/String;
    :goto_1
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/weirdvoice/ui/calllog/CallLogDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-static {v3, v0}, Lcom/weirdvoice/models/CallerInfo;->getCallerInfoFromSipUri(Landroid/content/Context;Ljava/lang/String;)Lcom/weirdvoice/models/CallerInfo;

    move-result-object v23

    .line 385
    .local v23, "info":Lcom/weirdvoice/models/CallerInfo;
    if-nez v23, :cond_8

    .line 386
    move-object v6, v5

    .line 387
    .local v6, "formattedNumber":Ljava/lang/CharSequence;
    const-string v15, ""

    .line 388
    .local v15, "nameText":Ljava/lang/CharSequence;
    const/16 v16, 0x0

    .line 389
    .local v16, "numberType":I
    const-string v17, ""

    .line 390
    .local v17, "numberLabel":Ljava/lang/CharSequence;
    const/16 v19, 0x0

    .line 391
    .local v19, "photoUri":Landroid/net/Uri;
    const/16 v18, 0x0

    .line 401
    .local v18, "lookupUri":Landroid/net/Uri;
    :goto_2
    new-instance v4, Lcom/weirdvoice/ui/calllog/PhoneCallDetails;

    .line 402
    const/4 v3, 0x1

    new-array v7, v3, [I

    const/4 v3, 0x0

    .line 403
    aput v21, v7, v3

    .line 401
    invoke-direct/range {v4 .. v19}, Lcom/weirdvoice/ui/calllog/PhoneCallDetails;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[IJJLjava/lang/Long;ILjava/lang/String;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 408
    if-eqz v20, :cond_4

    .line 409
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 401
    :cond_4
    return-object v4

    .line 373
    .end local v6    # "formattedNumber":Ljava/lang/CharSequence;
    .end local v15    # "nameText":Ljava/lang/CharSequence;
    .end local v16    # "numberType":I
    .end local v17    # "numberLabel":Ljava/lang/CharSequence;
    .end local v18    # "lookupUri":Landroid/net/Uri;
    .end local v19    # "photoUri":Landroid/net/Uri;
    .end local v23    # "info":Lcom/weirdvoice/models/CallerInfo;
    .restart local v22    # "i":I
    .restart local v25    # "parts":[Ljava/lang/String;
    .restart local v26    # "tmp":Ljava/lang/String;
    :cond_5
    :try_start_4
    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-eq v3, v4, :cond_6

    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x31

    if-eq v3, v4, :cond_6

    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x32

    if-eq v3, v4, :cond_6

    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x33

    if-eq v3, v4, :cond_6

    .line 374
    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x34

    if-eq v3, v4, :cond_6

    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x35

    if-eq v3, v4, :cond_6

    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x36

    if-eq v3, v4, :cond_6

    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x37

    if-eq v3, v4, :cond_6

    .line 375
    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x38

    if-eq v3, v4, :cond_6

    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x39

    if-ne v3, v4, :cond_7

    .line 376
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v26

    .line 372
    :cond_7
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_0

    .line 393
    .end local v22    # "i":I
    .end local v25    # "parts":[Ljava/lang/String;
    .end local v26    # "tmp":Ljava/lang/String;
    .restart local v23    # "info":Lcom/weirdvoice/models/CallerInfo;
    :cond_8
    move-object/from16 v6, v24

    .line 394
    .restart local v6    # "formattedNumber":Ljava/lang/CharSequence;
    :try_start_5
    move-object/from16 v0, v23

    iget-object v15, v0, Lcom/weirdvoice/models/CallerInfo;->name:Ljava/lang/String;

    .line 395
    .restart local v15    # "nameText":Ljava/lang/CharSequence;
    move-object/from16 v0, v23

    iget v0, v0, Lcom/weirdvoice/models/CallerInfo;->numberType:I

    move/from16 v16, v0

    .line 396
    .restart local v16    # "numberType":I
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/weirdvoice/models/CallerInfo;->phoneLabel:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 397
    .restart local v17    # "numberLabel":Ljava/lang/CharSequence;
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/weirdvoice/models/CallerInfo;->photoUri:Landroid/net/Uri;

    move-object/from16 v19, v0

    .line 398
    .restart local v19    # "photoUri":Landroid/net/Uri;
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/weirdvoice/models/CallerInfo;->contactContentUri:Landroid/net/Uri;

    move-object/from16 v18, v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .restart local v18    # "lookupUri":Landroid/net/Uri;
    goto/16 :goto_2

    .line 381
    .end local v6    # "formattedNumber":Ljava/lang/CharSequence;
    .end local v15    # "nameText":Ljava/lang/CharSequence;
    .end local v16    # "numberType":I
    .end local v17    # "numberLabel":Ljava/lang/CharSequence;
    .end local v18    # "lookupUri":Landroid/net/Uri;
    .end local v19    # "photoUri":Landroid/net/Uri;
    .end local v23    # "info":Lcom/weirdvoice/models/CallerInfo;
    :catch_0
    move-exception v3

    goto/16 :goto_1
.end method

.method private loadContactPhotos(Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 4
    .param p1, "photoUri"    # Landroid/net/Uri;
    .param p2, "contactUri"    # Landroid/net/Uri;

    .prologue
    .line 416
    const v0, 0x7f020187

    .line 418
    .local v0, "defaultLargePhoto":I
    if-eqz p1, :cond_0

    .line 420
    invoke-virtual {p0}, Lcom/weirdvoice/ui/calllog/CallLogDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    .line 421
    iget-object v3, p0, Lcom/weirdvoice/ui/calllog/CallLogDetailsFragment;->mContactBackgroundView:Landroid/widget/ImageView;

    .line 420
    invoke-static {v2, v3, p1, v0}, Lcom/weirdvoice/utils/ContactsAsyncHelper;->updateImageViewWithContactPhotoAsync(Landroid/content/Context;Landroid/widget/ImageView;Landroid/net/Uri;I)V

    .line 433
    :goto_0
    return-void

    .line 423
    :cond_0
    if-eqz p2, :cond_1

    .line 424
    new-instance v1, Lcom/weirdvoice/models/CallerInfo;

    invoke-direct {v1}, Lcom/weirdvoice/models/CallerInfo;-><init>()V

    .line 425
    .local v1, "person":Lcom/weirdvoice/models/CallerInfo;
    iput-object p2, v1, Lcom/weirdvoice/models/CallerInfo;->contactContentUri:Landroid/net/Uri;

    .line 427
    invoke-virtual {p0}, Lcom/weirdvoice/ui/calllog/CallLogDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    .line 428
    iget-object v3, p0, Lcom/weirdvoice/ui/calllog/CallLogDetailsFragment;->mContactBackgroundView:Landroid/widget/ImageView;

    .line 427
    invoke-static {v2, v3, v1, v0}, Lcom/weirdvoice/utils/ContactsAsyncHelper;->updateImageViewWithContactPhotoAsync(Landroid/content/Context;Landroid/widget/ImageView;Lcom/weirdvoice/models/CallerInfo;I)V

    goto :goto_0

    .line 431
    .end local v1    # "person":Lcom/weirdvoice/models/CallerInfo;
    :cond_1
    iget-object v2, p0, Lcom/weirdvoice/ui/calllog/CallLogDetailsFragment;->mContactBackgroundView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private varargs updateData([Landroid/net/Uri;)V
    .locals 17
    .param p1, "callUris"    # [Landroid/net/Uri;

    .prologue
    .line 230
    move-object/from16 v0, p1

    array-length v12, v0

    .line 231
    .local v12, "numCalls":I
    if-nez v12, :cond_0

    .line 232
    const-string v14, "CallLogDetailsFragment"

    const-string v15, "No calls logs as parameters"

    invoke-static {v14, v15}, Lcom/weirdvoice/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    :goto_0
    return-void

    .line 236
    :cond_0
    new-array v3, v12, [Lcom/weirdvoice/ui/calllog/PhoneCallDetails;

    .line 237
    .local v3, "details":[Lcom/weirdvoice/ui/calllog/PhoneCallDetails;
    const/4 v7, 0x0

    .local v7, "index":I
    :goto_1
    if-lt v7, v12, :cond_1

    .line 244
    const/4 v14, 0x0

    aget-object v5, v3, v14

    .line 245
    .local v5, "firstDetails":Lcom/weirdvoice/ui/calllog/PhoneCallDetails;
    iget-object v2, v5, Lcom/weirdvoice/ui/calllog/PhoneCallDetails;->contactUri:Landroid/net/Uri;

    .line 246
    .local v2, "contactUri":Landroid/net/Uri;
    iget-object v13, v5, Lcom/weirdvoice/ui/calllog/PhoneCallDetails;->photoUri:Landroid/net/Uri;

    .line 249
    .local v13, "photoUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/weirdvoice/ui/calllog/CallLogDetailsFragment;->mPhoneCallDetailsHelper:Lcom/weirdvoice/ui/calllog/PhoneCallDetailsHelper;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/weirdvoice/ui/calllog/CallLogDetailsFragment;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v14, v15, v5}, Lcom/weirdvoice/ui/calllog/PhoneCallDetailsHelper;->setCallDetailsHeader(Landroid/widget/TextView;Lcom/weirdvoice/ui/calllog/PhoneCallDetails;)V

    .line 267
    iget-object v14, v5, Lcom/weirdvoice/ui/calllog/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 268
    iget-object v11, v5, Lcom/weirdvoice/ui/calllog/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    .line 273
    .local v11, "nameOrNumber":Ljava/lang/CharSequence;
    :goto_2
    if-eqz v2, :cond_3

    .line 274
    new-instance v10, Landroid/content/Intent;

    const-string v14, "android.intent.action.VIEW"

    invoke-direct {v10, v14, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 275
    .local v10, "mainActionIntent":Landroid/content/Intent;
    const v9, 0x7f02018a

    .line 276
    .local v9, "mainActionIcon":I
    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    .line 296
    .local v8, "mainActionDescription":Ljava/lang/String;
    :goto_3
    if-nez v10, :cond_4

    .line 297
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/weirdvoice/ui/calllog/CallLogDetailsFragment;->mMainActionView:Landroid/widget/ImageView;

    const/4 v15, 0x4

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 298
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/weirdvoice/ui/calllog/CallLogDetailsFragment;->mMainActionPushLayerView:Landroid/widget/ImageButton;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 299
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/weirdvoice/ui/calllog/CallLogDetailsFragment;->mHeaderTextView:Landroid/widget/TextView;

    const/4 v15, 0x4

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 300
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/weirdvoice/ui/calllog/CallLogDetailsFragment;->mHeaderOverlayView:Landroid/view/View;

    const/4 v15, 0x4

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    .line 319
    :goto_4
    iget-object v14, v5, Lcom/weirdvoice/ui/calllog/PhoneCallDetails;->formattedNumber:Ljava/lang/CharSequence;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_5

    .line 320
    iget-object v4, v5, Lcom/weirdvoice/ui/calllog/PhoneCallDetails;->formattedNumber:Ljava/lang/CharSequence;

    .line 325
    .local v4, "displayNumber":Ljava/lang/CharSequence;
    :goto_5
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 326
    .local v1, "callText":Ljava/lang/String;
    iget-object v14, v5, Lcom/weirdvoice/ui/calllog/PhoneCallDetails;->numberLabel:Ljava/lang/CharSequence;

    iget-object v15, v5, Lcom/weirdvoice/ui/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v14, v15}, Lcom/weirdvoice/ui/calllog/CallLogDetailsFragment;->configureCallButton(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 328
    invoke-virtual/range {p0 .. p0}, Lcom/weirdvoice/ui/calllog/CallLogDetailsFragment;->getView()Landroid/view/View;

    move-result-object v14

    const v15, 0x7f0b006b

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ListView;

    .line 329
    .local v6, "historyList":Landroid/widget/ListView;
    new-instance v14, Lcom/weirdvoice/ui/calllog/CallDetailHistoryAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/weirdvoice/ui/calllog/CallLogDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/ui/calllog/CallLogDetailsFragment;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v14, v15, v0, v3}, Lcom/weirdvoice/ui/calllog/CallDetailHistoryAdapter;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;[Lcom/weirdvoice/ui/calllog/PhoneCallDetails;)V

    invoke-virtual {v6, v14}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 331
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/weirdvoice/ui/calllog/CallLogDetailsFragment;->mAccountChooserButton:Lcom/weirdvoice/widgets/AccountChooserButton;

    iget-object v15, v5, Lcom/weirdvoice/ui/calllog/PhoneCallDetails;->accountId:Ljava/lang/Long;

    invoke-virtual {v14, v15}, Lcom/weirdvoice/widgets/AccountChooserButton;->setTargetAccount(Ljava/lang/Long;)V

    .line 332
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v2}, Lcom/weirdvoice/ui/calllog/CallLogDetailsFragment;->loadContactPhotos(Landroid/net/Uri;Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 238
    .end local v1    # "callText":Ljava/lang/String;
    .end local v2    # "contactUri":Landroid/net/Uri;
    .end local v4    # "displayNumber":Ljava/lang/CharSequence;
    .end local v5    # "firstDetails":Lcom/weirdvoice/ui/calllog/PhoneCallDetails;
    .end local v6    # "historyList":Landroid/widget/ListView;
    .end local v8    # "mainActionDescription":Ljava/lang/String;
    .end local v9    # "mainActionIcon":I
    .end local v10    # "mainActionIntent":Landroid/content/Intent;
    .end local v11    # "nameOrNumber":Ljava/lang/CharSequence;
    .end local v13    # "photoUri":Landroid/net/Uri;
    :cond_1
    aget-object v14, p1, v7

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/weirdvoice/ui/calllog/CallLogDetailsFragment;->getPhoneCallDetailsForUri(Landroid/net/Uri;)Lcom/weirdvoice/ui/calllog/PhoneCallDetails;

    move-result-object v14

    aput-object v14, v3, v7

    .line 237
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 270
    .restart local v2    # "contactUri":Landroid/net/Uri;
    .restart local v5    # "firstDetails":Lcom/weirdvoice/ui/calllog/PhoneCallDetails;
    .restart local v13    # "photoUri":Landroid/net/Uri;
    :cond_2
    iget-object v11, v5, Lcom/weirdvoice/ui/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    .restart local v11    # "nameOrNumber":Ljava/lang/CharSequence;
    goto/16 :goto_2

    .line 291
    :cond_3
    const/4 v10, 0x0

    .line 292
    .restart local v10    # "mainActionIntent":Landroid/content/Intent;
    const/4 v9, 0x0

    .line 293
    .restart local v9    # "mainActionIcon":I
    const/4 v8, 0x0

    .restart local v8    # "mainActionDescription":Ljava/lang/String;
    goto :goto_3

    .line 302
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/weirdvoice/ui/calllog/CallLogDetailsFragment;->mMainActionView:Landroid/widget/ImageView;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 303
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/weirdvoice/ui/calllog/CallLogDetailsFragment;->mMainActionView:Landroid/widget/ImageView;

    invoke-virtual {v14, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 304
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/weirdvoice/ui/calllog/CallLogDetailsFragment;->mMainActionPushLayerView:Landroid/widget/ImageButton;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 305
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/weirdvoice/ui/calllog/CallLogDetailsFragment;->mMainActionPushLayerView:Landroid/widget/ImageButton;

    new-instance v15, Lcom/weirdvoice/ui/calllog/CallLogDetailsFragment$3;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v10}, Lcom/weirdvoice/ui/calllog/CallLogDetailsFragment$3;-><init>(Lcom/weirdvoice/ui/calllog/CallLogDetailsFragment;Landroid/content/Intent;)V

    invoke-virtual {v14, v15}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 311
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/weirdvoice/ui/calllog/CallLogDetailsFragment;->mMainActionPushLayerView:Landroid/widget/ImageButton;

    invoke-virtual {v14, v8}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 312
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/weirdvoice/ui/calllog/CallLogDetailsFragment;->mHeaderTextView:Landroid/widget/TextView;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 313
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/weirdvoice/ui/calllog/CallLogDetailsFragment;->mHeaderOverlayView:Landroid/view/View;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    .line 322
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/weirdvoice/ui/calllog/CallLogDetailsFragment;->mResources:Landroid/content/res/Resources;

    const v15, 0x7f0c0058

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "displayNumber":Ljava/lang/CharSequence;
    goto/16 :goto_5
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 119
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onAttach(Landroid/app/Activity;)V

    .line 120
    invoke-virtual {p0}, Lcom/weirdvoice/ui/calllog/CallLogDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/weirdvoice/ui/calllog/CallLogDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/weirdvoice/service/SipService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/weirdvoice/ui/calllog/CallLogDetailsFragment;->connection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 121
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 184
    const v1, 0x7f030021

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 185
    .local v0, "v":Landroid/view/View;
    invoke-virtual {p0}, Lcom/weirdvoice/ui/calllog/CallLogDetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/weirdvoice/ui/calllog/CallLogDetailsFragment;->mResources:Landroid/content/res/Resources;

    .line 186
    iput-object p1, p0, Lcom/weirdvoice/ui/calllog/CallLogDetailsFragment;->mInflater:Landroid/view/LayoutInflater;

    .line 188
    new-instance v1, Lcom/weirdvoice/ui/calllog/PhoneCallDetailsHelper;

    iget-object v2, p0, Lcom/weirdvoice/ui/calllog/CallLogDetailsFragment;->mResources:Landroid/content/res/Resources;

    invoke-direct {v1, v2}, Lcom/weirdvoice/ui/calllog/PhoneCallDetailsHelper;-><init>(Landroid/content/res/Resources;)V

    iput-object v1, p0, Lcom/weirdvoice/ui/calllog/CallLogDetailsFragment;->mPhoneCallDetailsHelper:Lcom/weirdvoice/ui/calllog/PhoneCallDetailsHelper;

    .line 189
    const v1, 0x7f0b0063

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/weirdvoice/ui/calllog/CallLogDetailsFragment;->mHeaderTextView:Landroid/widget/TextView;

    .line 190
    const v1, 0x7f0b0061

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/weirdvoice/ui/calllog/CallLogDetailsFragment;->mHeaderOverlayView:Landroid/view/View;

    .line 191
    const v1, 0x7f0b0062

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/weirdvoice/ui/calllog/CallLogDetailsFragment;->mMainActionView:Landroid/widget/ImageView;

    .line 192
    const v1, 0x7f0b0064

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/weirdvoice/ui/calllog/CallLogDetailsFragment;->mMainActionPushLayerView:Landroid/widget/ImageButton;

    .line 193
    const v1, 0x7f0b005f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/weirdvoice/ui/calllog/CallLogDetailsFragment;->mContactBackgroundView:Landroid/widget/ImageView;

    .line 194
    const v1, 0x7f0b006a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/weirdvoice/widgets/AccountChooserButton;

    iput-object v1, p0, Lcom/weirdvoice/ui/calllog/CallLogDetailsFragment;->mAccountChooserButton:Lcom/weirdvoice/widgets/AccountChooserButton;

    .line 195
    return-object v0
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 126
    :try_start_0
    invoke-virtual {p0}, Lcom/weirdvoice/ui/calllog/CallLogDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/weirdvoice/ui/calllog/CallLogDetailsFragment;->connection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/weirdvoice/ui/calllog/CallLogDetailsFragment;->service:Lcom/weirdvoice/api/ISipService;

    .line 131
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onDetach()V

    .line 132
    return-void

    .line 127
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onMenuRemoveFromCallLog(Landroid/view/MenuItem;)V
    .locals 8
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 462
    .local v0, "callIds":Ljava/lang/StringBuilder;
    invoke-direct {p0}, Lcom/weirdvoice/ui/calllog/CallLogDetailsFragment;->getCallLogEntryUris()[Landroid/net/Uri;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v4, :cond_1

    .line 469
    invoke-virtual {p0}, Lcom/weirdvoice/ui/calllog/CallLogDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/weirdvoice/api/SipManager;->CALLLOG_URI:Landroid/net/Uri;

    .line 470
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "_id IN ("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 469
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 471
    iget-object v2, p0, Lcom/weirdvoice/ui/calllog/CallLogDetailsFragment;->quitListener:Lcom/weirdvoice/ui/calllog/CallLogDetailsFragment$OnQuitListener;

    if-eqz v2, :cond_0

    .line 472
    iget-object v2, p0, Lcom/weirdvoice/ui/calllog/CallLogDetailsFragment;->quitListener:Lcom/weirdvoice/ui/calllog/CallLogDetailsFragment$OnQuitListener;

    invoke-interface {v2}, Lcom/weirdvoice/ui/calllog/CallLogDetailsFragment$OnQuitListener;->onQuit()V

    .line 474
    :cond_0
    return-void

    .line 462
    :cond_1
    aget-object v1, v3, v2

    .line 463
    .local v1, "callUri":Landroid/net/Uri;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-eqz v5, :cond_2

    .line 464
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    :cond_2
    invoke-static {v1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 462
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 200
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onResume()V

    .line 201
    invoke-direct {p0}, Lcom/weirdvoice/ui/calllog/CallLogDetailsFragment;->getCallLogEntryUris()[Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/weirdvoice/ui/calllog/CallLogDetailsFragment;->updateData([Landroid/net/Uri;)V

    .line 202
    return-void
.end method

.method public setOnQuitListener(Lcom/weirdvoice/ui/calllog/CallLogDetailsFragment$OnQuitListener;)V
    .locals 0
    .param p1, "l"    # Lcom/weirdvoice/ui/calllog/CallLogDetailsFragment$OnQuitListener;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/weirdvoice/ui/calllog/CallLogDetailsFragment;->quitListener:Lcom/weirdvoice/ui/calllog/CallLogDetailsFragment$OnQuitListener;

    .line 97
    return-void
.end method
