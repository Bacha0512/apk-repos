.class public Lcom/weirdvoice/ui/favorites/FavAdapter;
.super Landroid/support/v4/widget/ResourceCursorAdapter;
.source "FavAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/weirdvoice/ui/favorites/FavAdapter$ConfigureObj;,
        Lcom/weirdvoice/ui/favorites/FavAdapter$MenuCallback;
    }
.end annotation


# static fields
.field private static final THIS_FILE:Ljava/lang/String; = "FavAdapter"


# instance fields
.field private final mPrimaryActionListener:Landroid/view/View$OnClickListener;

.field private final mSecondaryActionListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "c"    # Landroid/database/Cursor;

    .prologue
    .line 126
    const v0, 0x7f030038

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Landroid/support/v4/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;I)V

    .line 74
    new-instance v0, Lcom/weirdvoice/ui/favorites/FavAdapter$1;

    invoke-direct {v0, p0}, Lcom/weirdvoice/ui/favorites/FavAdapter$1;-><init>(Lcom/weirdvoice/ui/favorites/FavAdapter;)V

    iput-object v0, p0, Lcom/weirdvoice/ui/favorites/FavAdapter;->mPrimaryActionListener:Landroid/view/View$OnClickListener;

    .line 83
    new-instance v0, Lcom/weirdvoice/ui/favorites/FavAdapter$2;

    invoke-direct {v0, p0}, Lcom/weirdvoice/ui/favorites/FavAdapter$2;-><init>(Lcom/weirdvoice/ui/favorites/FavAdapter;)V

    iput-object v0, p0, Lcom/weirdvoice/ui/favorites/FavAdapter;->mSecondaryActionListener:Landroid/view/View$OnClickListener;

    .line 127
    return-void
.end method

.method static synthetic access$0(Lcom/weirdvoice/ui/favorites/FavAdapter;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/weirdvoice/ui/favorites/FavAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/weirdvoice/ui/favorites/FavAdapter;Ljava/lang/String;ILjava/lang/String;J)V
    .locals 0

    .prologue
    .line 362
    invoke-direct/range {p0 .. p5}, Lcom/weirdvoice/ui/favorites/FavAdapter;->applyNumbersToCSip(Ljava/lang/String;ILjava/lang/String;J)V

    return-void
.end method

.method private applyNumbersToCSip(Ljava/lang/String;ILjava/lang/String;J)V
    .locals 10
    .param p1, "groupName"    # Ljava/lang/String;
    .param p2, "flag"    # I
    .param p3, "domain"    # Ljava/lang/String;
    .param p4, "profileId"    # J

    .prologue
    .line 363
    const-string v7, "FavAdapter"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Apply numbers to csip "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " > "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    invoke-static {}, Lcom/weirdvoice/utils/contacts/ContactsWrapper;->getInstance()Lcom/weirdvoice/utils/contacts/ContactsWrapper;

    move-result-object v1

    .line 365
    .local v1, "cw":Lcom/weirdvoice/utils/contacts/ContactsWrapper;
    iget-object v7, p0, Lcom/weirdvoice/ui/favorites/FavAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v7, p1}, Lcom/weirdvoice/utils/contacts/ContactsWrapper;->getContactsByGroup(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 367
    .local v0, "c":Landroid/database/Cursor;
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-nez v7, :cond_1

    .line 386
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 388
    :goto_1
    return-void

    .line 368
    :cond_1
    :try_start_1
    const-string v7, "_id"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 369
    .local v2, "contactId":J
    iget-object v7, p0, Lcom/weirdvoice/ui/favorites/FavAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v7, v2, v3, p2}, Lcom/weirdvoice/utils/contacts/ContactsWrapper;->getPhoneNumbers(Landroid/content/Context;JI)Ljava/util/List;

    move-result-object v6

    .line 370
    .local v6, "phones":Ljava/util/List;, "Ljava/util/List<Lcom/weirdvoice/utils/contacts/ContactsWrapper$Phone;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 371
    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/weirdvoice/utils/contacts/ContactsWrapper$Phone;

    invoke-virtual {v7}, Lcom/weirdvoice/utils/contacts/ContactsWrapper$Phone;->getNumber()Ljava/lang/String;

    move-result-object v5

    .line 372
    .local v5, "nbr":Ljava/lang/String;
    const-string v7, "@"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 373
    sget v7, Lcom/weirdvoice/utils/contacts/ContactsWrapper;->URI_NBR:I

    if-ne p2, v7, :cond_2

    .line 375
    iget-object v7, p0, Lcom/weirdvoice/ui/favorites/FavAdapter;->mContext:Landroid/content/Context;

    invoke-static {v7, p4, p5, v5}, Lcom/weirdvoice/models/Filter;->rewritePhoneNumber(Landroid/content/Context;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 377
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "@"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 379
    :cond_3
    const-string v7, "FavAdapter"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Apply number to "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " > "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    iget-object v7, p0, Lcom/weirdvoice/ui/favorites/FavAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v7, v2, v3, v5}, Lcom/weirdvoice/utils/contacts/ContactsWrapper;->insertOrUpdateCSipUri(Landroid/content/Context;JLjava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 383
    .end local v2    # "contactId":J
    .end local v5    # "nbr":Ljava/lang/String;
    .end local v6    # "phones":Ljava/util/List;, "Ljava/util/List<Lcom/weirdvoice/utils/contacts/ContactsWrapper$Phone;>;"
    :catch_0
    move-exception v4

    .line 384
    .local v4, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v7, "FavAdapter"

    const-string v8, "Error while looping on contacts"

    invoke-static {v7, v8, v4}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 386
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 385
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 386
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 387
    throw v7
.end method

.method private showDialogForGroupSelection(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/String;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "profileId"    # Ljava/lang/Long;
    .param p3, "groupName"    # Ljava/lang/String;

    .prologue
    .line 283
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 284
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v7, 0x7f0c0242

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 285
    invoke-static {}, Lcom/weirdvoice/utils/contacts/ContactsWrapper;->getInstance()Lcom/weirdvoice/utils/contacts/ContactsWrapper;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/weirdvoice/utils/contacts/ContactsWrapper;->getGroups(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v1

    .line 286
    .local v1, "choiceCursor":Landroid/database/Cursor;
    const/4 v6, -0x1

    .line 287
    .local v6, "selectedIndex":I
    if-eqz v1, :cond_1

    .line 288
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 289
    const/4 v4, 0x0

    .line 290
    .local v4, "i":I
    const-string v7, "title"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 292
    .local v2, "colIdx":I
    :cond_0
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 293
    .local v5, "name":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v5, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 294
    move v6, v4

    .line 301
    .end local v2    # "colIdx":I
    .end local v4    # "i":I
    .end local v5    # "name":Ljava/lang/String;
    :cond_1
    :goto_0
    const-string v7, "title"

    new-instance v8, Lcom/weirdvoice/ui/favorites/FavAdapter$3;

    invoke-direct {v8, p0, v1, p1, p2}, Lcom/weirdvoice/ui/favorites/FavAdapter$3;-><init>(Lcom/weirdvoice/ui/favorites/FavAdapter;Landroid/database/Cursor;Landroid/content/Context;Ljava/lang/Long;)V

    invoke-virtual {v0, v1, v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/database/Cursor;ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 316
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 317
    const v7, 0x7f0c01f1

    new-instance v8, Lcom/weirdvoice/ui/favorites/FavAdapter$4;

    invoke-direct {v8, p0, v1}, Lcom/weirdvoice/ui/favorites/FavAdapter$4;-><init>(Lcom/weirdvoice/ui/favorites/FavAdapter;Landroid/database/Cursor;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 326
    new-instance v7, Lcom/weirdvoice/ui/favorites/FavAdapter$5;

    invoke-direct {v7, p0, v1}, Lcom/weirdvoice/ui/favorites/FavAdapter$5;-><init>(Lcom/weirdvoice/ui/favorites/FavAdapter;Landroid/database/Cursor;)V

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 334
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 335
    .local v3, "dialog":Landroid/app/Dialog;
    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 336
    return-void

    .line 297
    .end local v3    # "dialog":Landroid/app/Dialog;
    .restart local v2    # "colIdx":I
    .restart local v4    # "i":I
    .restart local v5    # "name":Ljava/lang/String;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 298
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-nez v7, :cond_0

    goto :goto_0
.end method

.method private showDialogForSipData(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "profileId"    # Ljava/lang/Long;
    .param p3, "groupName"    # Ljava/lang/String;
    .param p4, "domain"    # Ljava/lang/String;

    .prologue
    .line 339
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 340
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0c0242

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 341
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 342
    const v2, 0x7f0e0002

    new-instance v3, Lcom/weirdvoice/ui/favorites/FavAdapter$6;

    invoke-direct {v3, p0, p3, p4, p2}, Lcom/weirdvoice/ui/favorites/FavAdapter$6;-><init>(Lcom/weirdvoice/ui/favorites/FavAdapter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 349
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 350
    .local v1, "dialog":Landroid/app/Dialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 351
    return-void
.end method

.method private showViewForType(Landroid/view/View;I)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "type"    # I

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 237
    const v0, 0x7f0b00d6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-nez p2, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 238
    const v0, 0x7f0b00da

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 239
    const v0, 0x7f0b00dc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v3, 0x2

    if-ne p2, v3, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 240
    return-void

    :cond_0
    move v0, v2

    .line 237
    goto :goto_0

    :cond_1
    move v0, v2

    .line 238
    goto :goto_1

    :cond_2
    move v1, v2

    .line 239
    goto :goto_2
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 34
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 131
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 132
    .local v15, "cv":Landroid/content/ContentValues;
    move-object/from16 v0, p3

    invoke-static {v0, v15}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 134
    const/16 v28, 0x1

    .line 135
    .local v28, "type":I
    const-string v5, "wrapped_type"

    invoke-virtual {v15, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 136
    const-string v5, "wrapped_type"

    invoke-virtual {v15, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v28

    .line 139
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/weirdvoice/ui/favorites/FavAdapter;->showViewForType(Landroid/view/View;I)V

    .line 142
    if-nez v28, :cond_6

    .line 144
    const v5, 0x7f0b0063

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    .line 145
    .local v27, "tv":Landroid/widget/TextView;
    const v5, 0x7f0b00d7

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    .line 146
    .local v17, "icon":Landroid/widget/ImageView;
    const v5, 0x7f0b00d9

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/weirdvoice/ui/favorites/PresenceStatusSpinner;

    .line 149
    .local v24, "presSpinner":Lcom/weirdvoice/ui/favorites/PresenceStatusSpinner;
    new-instance v11, Lcom/weirdvoice/api/SipProfile;

    move-object/from16 v0, p3

    invoke-direct {v11, v0}, Lcom/weirdvoice/api/SipProfile;-><init>(Landroid/database/Cursor;)V

    .line 151
    .local v11, "acc":Lcom/weirdvoice/api/SipProfile;
    const-string v5, "_id"

    invoke-virtual {v15, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    .line 152
    .local v7, "profileId":Ljava/lang/Long;
    iget-object v8, v11, Lcom/weirdvoice/api/SipProfile;->android_group:Ljava/lang/String;

    .line 153
    .local v8, "groupName":Ljava/lang/String;
    iget-object v0, v11, Lcom/weirdvoice/api/SipProfile;->display_name:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 154
    .local v16, "displayName":Ljava/lang/String;
    iget-object v0, v11, Lcom/weirdvoice/api/SipProfile;->wizard:Ljava/lang/String;

    move-object/from16 v30, v0

    .line 155
    .local v30, "wizard":Ljava/lang/String;
    iget v5, v11, Lcom/weirdvoice/api/SipProfile;->publish_enabled:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    const/4 v10, 0x1

    .line 156
    .local v10, "publishedEnabled":Z
    :goto_0
    invoke-virtual {v11}, Lcom/weirdvoice/api/SipProfile;->getDefaultDomain()Ljava/lang/String;

    move-result-object v9

    .line 159
    .local v9, "domain":Ljava/lang/String;
    move-object/from16 v0, v27

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    invoke-static/range {v30 .. v30}, Lcom/weirdvoice/wizards/WizardUtils;->getWizardIconRes(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 161
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v32

    move-object/from16 v0, v24

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Lcom/weirdvoice/ui/favorites/PresenceStatusSpinner;->setProfileId(J)V

    .line 164
    const v5, 0x7f0b00d8

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/view/ViewGroup;

    .line 166
    .local v23, "menuViewWrapper":Landroid/view/ViewGroup;
    new-instance v4, Lcom/weirdvoice/ui/favorites/FavAdapter$MenuCallback;

    move-object/from16 v5, p0

    move-object/from16 v6, p2

    invoke-direct/range {v4 .. v10}, Lcom/weirdvoice/ui/favorites/FavAdapter$MenuCallback;-><init>(Lcom/weirdvoice/ui/favorites/FavAdapter;Landroid/content/Context;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 168
    .local v4, "newMcb":Lcom/weirdvoice/ui/favorites/FavAdapter$MenuCallback;
    invoke-virtual/range {v23 .. v23}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_3

    .line 170
    new-instance v19, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x2

    .line 171
    const/4 v6, -0x1

    .line 170
    move-object/from16 v0, v19

    invoke-direct {v0, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 173
    .local v19, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    new-instance v20, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/weirdvoice/ui/favorites/FavAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, v20

    invoke-direct {v0, v5}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    .line 174
    .local v20, "mActionMenuPresenter":Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;
    const/4 v5, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->setReserveOverflow(Z)V

    .line 175
    new-instance v21, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    .line 176
    .local v21, "menuBuilder":Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;
    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->setCallback(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder$Callback;)V

    .line 177
    new-instance v18, Lcom/actionbarsherlock/view/MenuInflater;

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/actionbarsherlock/view/MenuInflater;-><init>(Landroid/content/Context;)V

    .line 178
    .local v18, "inflater":Lcom/actionbarsherlock/view/MenuInflater;
    const v5, 0x7f0f0001

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v5, v1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 179
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/actionbarsherlock/internal/view/menu/MenuPresenter;)V

    .line 180
    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/actionbarsherlock/internal/view/menu/MenuView;

    move-result-object v22

    check-cast v22, Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;

    .line 181
    .local v22, "menuView":Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;
    invoke-static {}, Lcom/actionbarsherlock/internal/utils/UtilityWrapper;->getInstance()Lcom/actionbarsherlock/internal/utils/UtilityWrapper;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v5, v0, v6}, Lcom/actionbarsherlock/internal/utils/UtilityWrapper;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 182
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 183
    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 188
    .end local v18    # "inflater":Lcom/actionbarsherlock/view/MenuInflater;
    .end local v19    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v20    # "mActionMenuPresenter":Lcom/actionbarsherlock/internal/view/menu/ActionMenuPresenter;
    .end local v22    # "menuView":Lcom/actionbarsherlock/internal/view/menu/ActionMenuView;
    :goto_1
    const v5, 0x7f0b0162

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v6

    if-eqz v10, :cond_4

    const v5, 0x7f0c023f

    :goto_2
    invoke-interface {v6, v5}, Lcom/actionbarsherlock/view/MenuItem;->setTitle(I)Lcom/actionbarsherlock/view/MenuItem;

    .line 189
    const v5, 0x7f0b0161

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v6

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x0

    :goto_3
    invoke-interface {v6, v5}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 228
    .end local v4    # "newMcb":Lcom/weirdvoice/ui/favorites/FavAdapter$MenuCallback;
    .end local v7    # "profileId":Ljava/lang/Long;
    .end local v8    # "groupName":Ljava/lang/String;
    .end local v9    # "domain":Ljava/lang/String;
    .end local v10    # "publishedEnabled":Z
    .end local v11    # "acc":Lcom/weirdvoice/api/SipProfile;
    .end local v16    # "displayName":Ljava/lang/String;
    .end local v17    # "icon":Landroid/widget/ImageView;
    .end local v21    # "menuBuilder":Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;
    .end local v23    # "menuViewWrapper":Landroid/view/ViewGroup;
    .end local v24    # "presSpinner":Lcom/weirdvoice/ui/favorites/PresenceStatusSpinner;
    .end local v27    # "tv":Landroid/widget/TextView;
    .end local v30    # "wizard":Ljava/lang/String;
    :cond_1
    :goto_4
    return-void

    .line 155
    .restart local v7    # "profileId":Ljava/lang/Long;
    .restart local v8    # "groupName":Ljava/lang/String;
    .restart local v11    # "acc":Lcom/weirdvoice/api/SipProfile;
    .restart local v16    # "displayName":Ljava/lang/String;
    .restart local v17    # "icon":Landroid/widget/ImageView;
    .restart local v24    # "presSpinner":Lcom/weirdvoice/ui/favorites/PresenceStatusSpinner;
    .restart local v27    # "tv":Landroid/widget/TextView;
    .restart local v30    # "wizard":Ljava/lang/String;
    :cond_2
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 185
    .restart local v4    # "newMcb":Lcom/weirdvoice/ui/favorites/FavAdapter$MenuCallback;
    .restart local v9    # "domain":Ljava/lang/String;
    .restart local v10    # "publishedEnabled":Z
    .restart local v23    # "menuViewWrapper":Landroid/view/ViewGroup;
    :cond_3
    invoke-virtual/range {v23 .. v23}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;

    .line 186
    .restart local v21    # "menuBuilder":Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;
    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;->setCallback(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder$Callback;)V

    goto :goto_1

    .line 188
    :cond_4
    const v5, 0x7f0c023e

    goto :goto_2

    .line 189
    :cond_5
    const/4 v5, 0x1

    goto :goto_3

    .line 191
    .end local v4    # "newMcb":Lcom/weirdvoice/ui/favorites/FavAdapter$MenuCallback;
    .end local v7    # "profileId":Ljava/lang/Long;
    .end local v8    # "groupName":Ljava/lang/String;
    .end local v9    # "domain":Ljava/lang/String;
    .end local v10    # "publishedEnabled":Z
    .end local v11    # "acc":Lcom/weirdvoice/api/SipProfile;
    .end local v16    # "displayName":Ljava/lang/String;
    .end local v17    # "icon":Landroid/widget/ImageView;
    .end local v21    # "menuBuilder":Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;
    .end local v23    # "menuViewWrapper":Landroid/view/ViewGroup;
    .end local v24    # "presSpinner":Lcom/weirdvoice/ui/favorites/PresenceStatusSpinner;
    .end local v27    # "tv":Landroid/widget/TextView;
    .end local v30    # "wizard":Ljava/lang/String;
    :cond_6
    const/4 v5, 0x1

    move/from16 v0, v28

    if-ne v0, v5, :cond_a

    .line 192
    invoke-static {}, Lcom/weirdvoice/utils/contacts/ContactsWrapper;->getInstance()Lcom/weirdvoice/utils/contacts/ContactsWrapper;

    move-result-object v5

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v5, v0, v1}, Lcom/weirdvoice/utils/contacts/ContactsWrapper;->getContactInfo(Landroid/content/Context;Landroid/database/Cursor;)Lcom/weirdvoice/utils/contacts/ContactsWrapper$ContactInfo;

    move-result-object v14

    .line 193
    .local v14, "ci":Lcom/weirdvoice/utils/contacts/ContactsWrapper$ContactInfo;
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v14, Lcom/weirdvoice/utils/contacts/ContactsWrapper$ContactInfo;->userData:Ljava/lang/Object;

    .line 195
    const v5, 0x7f0b00db

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    .line 196
    .restart local v27    # "tv":Landroid/widget/TextView;
    const v5, 0x7f0b0071

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/weirdvoice/widgets/contactbadge/QuickContactBadge;

    .line 197
    .local v12, "badge":Lcom/weirdvoice/widgets/contactbadge/QuickContactBadge;
    const v5, 0x7f0b00b6

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    .line 198
    .local v26, "statusText":Landroid/widget/TextView;
    const v5, 0x7f0b00b5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/ImageView;

    .line 201
    .local v25, "statusImage":Landroid/widget/ImageView;
    iget-object v5, v14, Lcom/weirdvoice/utils/contacts/ContactsWrapper$ContactInfo;->contactId:Ljava/lang/Long;

    if-eqz v5, :cond_7

    .line 202
    iget-object v5, v14, Lcom/weirdvoice/utils/contacts/ContactsWrapper$ContactInfo;->displayName:Ljava/lang/String;

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    iget-object v5, v14, Lcom/weirdvoice/utils/contacts/ContactsWrapper$ContactInfo;->callerInfo:Lcom/weirdvoice/models/CallerInfo;

    iget-object v5, v5, Lcom/weirdvoice/models/CallerInfo;->contactContentUri:Landroid/net/Uri;

    invoke-virtual {v12, v5}, Lcom/weirdvoice/widgets/contactbadge/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 204
    invoke-virtual {v12}, Lcom/weirdvoice/widgets/contactbadge/QuickContactBadge;->getImageView()Landroid/widget/ImageView;

    move-result-object v5

    .line 205
    iget-object v6, v14, Lcom/weirdvoice/utils/contacts/ContactsWrapper$ContactInfo;->callerInfo:Lcom/weirdvoice/models/CallerInfo;

    .line 206
    const v31, 0x7f020189

    .line 204
    move-object/from16 v0, p2

    move/from16 v1, v31

    invoke-static {v0, v5, v6, v1}, Lcom/weirdvoice/utils/ContactsAsyncHelper;->updateImageViewWithContactPhotoAsync(Landroid/content/Context;Landroid/widget/ImageView;Lcom/weirdvoice/models/CallerInfo;I)V

    .line 208
    iget-boolean v5, v14, Lcom/weirdvoice/utils/contacts/ContactsWrapper$ContactInfo;->hasPresence:Z

    if-eqz v5, :cond_8

    const/4 v5, 0x0

    :goto_5
    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 209
    iget-object v5, v14, Lcom/weirdvoice/utils/contacts/ContactsWrapper$ContactInfo;->status:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    iget-boolean v5, v14, Lcom/weirdvoice/utils/contacts/ContactsWrapper$ContactInfo;->hasPresence:Z

    if-eqz v5, :cond_9

    const/4 v5, 0x0

    :goto_6
    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 211
    invoke-static {}, Lcom/weirdvoice/utils/contacts/ContactsWrapper;->getInstance()Lcom/weirdvoice/utils/contacts/ContactsWrapper;

    move-result-object v5

    iget v6, v14, Lcom/weirdvoice/utils/contacts/ContactsWrapper$ContactInfo;->presence:I

    invoke-virtual {v5, v6}, Lcom/weirdvoice/utils/contacts/ContactsWrapper;->getPresenceIconResourceId(I)I

    move-result v5

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 214
    :cond_7
    const v5, 0x7f0b00da

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v29

    .line 215
    .local v29, "v":Landroid/view/View;
    move-object/from16 v0, v29

    invoke-virtual {v0, v14}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 216
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/weirdvoice/ui/favorites/FavAdapter;->mPrimaryActionListener:Landroid/view/View$OnClickListener;

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    const v5, 0x7f0b0072

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v29

    .line 218
    move-object/from16 v0, v29

    invoke-virtual {v0, v14}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 219
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/weirdvoice/ui/favorites/FavAdapter;->mSecondaryActionListener:Landroid/view/View$OnClickListener;

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_4

    .line 208
    .end local v29    # "v":Landroid/view/View;
    :cond_8
    const/16 v5, 0x8

    goto :goto_5

    .line 210
    :cond_9
    const/16 v5, 0x8

    goto :goto_6

    .line 220
    .end local v12    # "badge":Lcom/weirdvoice/widgets/contactbadge/QuickContactBadge;
    .end local v14    # "ci":Lcom/weirdvoice/utils/contacts/ContactsWrapper$ContactInfo;
    .end local v25    # "statusImage":Landroid/widget/ImageView;
    .end local v26    # "statusText":Landroid/widget/TextView;
    .end local v27    # "tv":Landroid/widget/TextView;
    :cond_a
    const/4 v5, 0x2

    move/from16 v0, v28

    if-ne v0, v5, :cond_1

    .line 222
    const v5, 0x7f0b00dc

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v29

    .line 223
    .restart local v29    # "v":Landroid/view/View;
    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    new-instance v13, Lcom/weirdvoice/ui/favorites/FavAdapter$ConfigureObj;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v5}, Lcom/weirdvoice/ui/favorites/FavAdapter$ConfigureObj;-><init>(Lcom/weirdvoice/ui/favorites/FavAdapter;Lcom/weirdvoice/ui/favorites/FavAdapter$ConfigureObj;)V

    .line 225
    .local v13, "cfg":Lcom/weirdvoice/ui/favorites/FavAdapter$ConfigureObj;
    const-string v5, "_id"

    invoke-virtual {v15, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, v13, Lcom/weirdvoice/ui/favorites/FavAdapter$ConfigureObj;->profileId:Ljava/lang/Long;

    .line 226
    move-object/from16 v0, v29

    invoke-virtual {v0, v13}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_4
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 355
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 360
    .local v0, "id":I
    return-void
.end method
