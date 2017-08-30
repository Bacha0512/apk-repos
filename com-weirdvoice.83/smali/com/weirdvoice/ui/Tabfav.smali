.class public Lcom/weirdvoice/ui/Tabfav;
.super Landroid/app/Activity;
.source "Tabfav.java"


# static fields
.field private static final CONTACT_PICKER_RESULT:I = 0xc7

.field private static LOGTAG:Ljava/lang/String; = null

.field static final NUMBER_0:I = 0x1b58

.field private static final THIS_FILE:Ljava/lang/String; = "TabFav"


# instance fields
.field private contactName:Ljava/lang/String;

.field private nbPhones:I

.field private phonelist_num:[Ljava/lang/String;

.field private phonelist_typ:[Ljava/lang/String;

.field private picked:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-string v0, "Tabfav"

    sput-object v0, Lcom/weirdvoice/ui/Tabfav;->LOGTAG:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x64

    .line 54
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lcom/weirdvoice/ui/Tabfav;->contactName:Ljava/lang/String;

    .line 59
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/weirdvoice/ui/Tabfav;->phonelist_num:[Ljava/lang/String;

    .line 60
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/weirdvoice/ui/Tabfav;->phonelist_typ:[Ljava/lang/String;

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/weirdvoice/ui/Tabfav;->nbPhones:I

    .line 54
    return-void
.end method

.method private addLine(Ljava/lang/String;)V
    .locals 12
    .param p1, "destination"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x4

    const/4 v9, 0x0

    const/4 v8, -0x1

    const/4 v7, -0x2

    .line 157
    const v6, 0x7f0b0136

    invoke-virtual {p0, v6}, Lcom/weirdvoice/ui/Tabfav;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TableLayout;

    .line 159
    .local v4, "tl":Landroid/widget/TableLayout;
    new-instance v5, Landroid/widget/TableRow;

    invoke-direct {v5, p0}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 160
    .local v5, "tr":Landroid/widget/TableRow;
    new-instance v6, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v6, v8, v7}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/widget/TableRow;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 161
    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Landroid/widget/TableRow;->setGravity(I)V

    .line 162
    invoke-virtual {v5, p1}, Landroid/widget/TableRow;->setTag(Ljava/lang/Object;)V

    .line 164
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 165
    .local v1, "field_destination":Landroid/widget/TextView;
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 167
    const/high16 v6, 0x41800000    # 16.0f

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 168
    invoke-virtual {v1, v10, v11, v10, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 169
    sget-object v6, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 170
    new-instance v6, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v6, v7, v7}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    new-instance v6, Lcom/weirdvoice/ui/Tabfav$4;

    invoke-direct {v6, p0, p1}, Lcom/weirdvoice/ui/Tabfav$4;-><init>(Lcom/weirdvoice/ui/Tabfav;Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    invoke-virtual {v5, v1}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 247
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 248
    .local v3, "ima_call":Landroid/widget/ImageView;
    const v6, 0x7f02017c

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 249
    new-instance v6, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v6, v8, v7}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 250
    invoke-virtual {v3, v10, v11, v10, v9}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 252
    new-instance v6, Lcom/weirdvoice/ui/Tabfav$5;

    invoke-direct {v6, p0, p1}, Lcom/weirdvoice/ui/Tabfav$5;-><init>(Lcom/weirdvoice/ui/Tabfav;Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 262
    invoke-virtual {v5, v3}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 264
    new-instance v6, Landroid/widget/TableLayout$LayoutParams;

    invoke-direct {v6, v8, v7}, Landroid/widget/TableLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5, v6}, Landroid/widget/TableLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 265
    new-instance v5, Landroid/widget/TableRow;

    .end local v5    # "tr":Landroid/widget/TableRow;
    invoke-direct {v5, p0}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 266
    .restart local v5    # "tr":Landroid/widget/TableRow;
    new-instance v6, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v6, v8, v7}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/widget/TableRow;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 267
    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Landroid/widget/TableRow;->setGravity(I)V

    .line 269
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 270
    .local v2, "field_name":Landroid/widget/TextView;
    invoke-direct {p0, p1}, Lcom/weirdvoice/ui/Tabfav;->getContactNameFromNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    const/high16 v6, 0x41400000    # 12.0f

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 272
    invoke-virtual {v2, v10, v9, v10, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 273
    new-instance v6, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v6, v8, v7}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 274
    new-instance v6, Lcom/weirdvoice/ui/Tabfav$6;

    invoke-direct {v6, p0, p1}, Lcom/weirdvoice/ui/Tabfav$6;-><init>(Lcom/weirdvoice/ui/Tabfav;Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    invoke-virtual {v5, v2}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 282
    new-instance v6, Landroid/widget/TableLayout$LayoutParams;

    invoke-direct {v6, v8, v7}, Landroid/widget/TableLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5, v6}, Landroid/widget/TableLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 283
    const/4 v6, 0x1

    invoke-virtual {v4, v9, v6}, Landroid/widget/TableLayout;->setColumnStretchable(IZ)V

    .line 286
    new-instance v5, Landroid/widget/TableRow;

    .end local v5    # "tr":Landroid/widget/TableRow;
    invoke-direct {v5, p0}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 287
    .restart local v5    # "tr":Landroid/widget/TableRow;
    new-instance v6, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v6, v8, v7}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/widget/TableRow;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 288
    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Landroid/widget/TableRow;->setGravity(I)V

    .line 289
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 290
    .local v0, "divider":Landroid/widget/ImageView;
    invoke-virtual {v0, v9, v11, v9, v11}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 291
    const v6, 0x7f02006e

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 292
    new-instance v6, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v6, v8, v7}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 293
    invoke-virtual {v5, v0}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 294
    new-instance v6, Landroid/widget/TableLayout$LayoutParams;

    invoke-direct {v6, v8, v7}, Landroid/widget/TableLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5, v6}, Landroid/widget/TableLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 295
    const/4 v6, 0x1

    invoke-virtual {v4, v9, v6}, Landroid/widget/TableLayout;->setColumnStretchable(IZ)V

    .line 296
    return-void
.end method

.method private editContact()V
    .locals 5

    .prologue
    .line 415
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 416
    .local v2, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 418
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "fav1"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 419
    .local v1, "fav":Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 420
    const-string v3, "fav1"

    iget-object v4, p0, Lcom/weirdvoice/ui/Tabfav;->picked:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 438
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 440
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/weirdvoice/ui/Tabfav;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v3}, Lcom/weirdvoice/ui/Tabfav;->startActivity(Landroid/content/Intent;)V

    .line 441
    invoke-virtual {p0}, Lcom/weirdvoice/ui/Tabfav;->finish()V

    .line 443
    return-void

    .line 422
    :cond_0
    const-string v3, "fav2"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 423
    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 424
    const-string v3, "fav2"

    iget-object v4, p0, Lcom/weirdvoice/ui/Tabfav;->picked:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 426
    :cond_1
    const-string v3, "fav3"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 427
    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 428
    const-string v3, "fav3"

    iget-object v4, p0, Lcom/weirdvoice/ui/Tabfav;->picked:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 430
    :cond_2
    const-string v3, "fav4"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 431
    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 432
    const-string v3, "fav4"

    iget-object v4, p0, Lcom/weirdvoice/ui/Tabfav;->picked:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 434
    :cond_3
    const-string v3, "fav5"

    iget-object v4, p0, Lcom/weirdvoice/ui/Tabfav;->picked:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method private getContactNameFromNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 135
    const-string v8, ""

    .line 138
    .local v8, "name":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/weirdvoice/ui/Tabfav;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0c0058

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object v8, v0

    .line 139
    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "display_name"

    aput-object v4, v3, v1

    const/4 v1, 0x1

    const-string v4, "number"

    aput-object v4, v3, v1

    .line 140
    .local v3, "projection":[Ljava/lang/String;
    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 141
    .local v2, "contactUri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/weirdvoice/ui/Tabfav;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 143
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 144
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    const-string v1, "display_name"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 148
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    .end local v2    # "contactUri":Landroid/net/Uri;
    .end local v3    # "projection":[Ljava/lang/String;
    .end local v7    # "c":Landroid/database/Cursor;
    :goto_0
    return-object v8

    .line 150
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 19
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 300
    sget-object v2, Lcom/weirdvoice/ui/Tabfav;->LOGTAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "onActivityResult(): "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    const/16 v2, 0xc7

    move/from16 v0, p1

    if-ne v0, v2, :cond_1

    .line 302
    const/4 v2, -0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_1

    .line 304
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 305
    .local v3, "contactData":Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/weirdvoice/ui/Tabfav;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 307
    .local v11, "c":Landroid/database/Cursor;
    if-eqz v11, :cond_1

    .line 308
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 309
    const-string v2, "_id"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 310
    .local v14, "n":Ljava/lang/String;
    const-string v2, "display_name"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 312
    .local v12, "cn":Ljava/lang/String;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/weirdvoice/ui/Tabfav;->nbPhones:I

    .line 313
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/weirdvoice/ui/Tabfav;->contactName:Ljava/lang/String;

    .line 315
    invoke-virtual/range {p0 .. p0}, Lcom/weirdvoice/ui/Tabfav;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 316
    .local v4, "cr":Landroid/content/ContentResolver;
    const/16 v16, 0x0

    .line 318
    .local v16, "phones":Landroid/database/Cursor;
    :try_start_0
    sget-object v5, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "contact_id = "

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v16

    .line 323
    :goto_0
    if-eqz v16, :cond_0

    .line 324
    :goto_1
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 348
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 351
    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/weirdvoice/ui/Tabfav;->nbPhones:I

    if-nez v2, :cond_3

    .line 352
    sget-object v2, Lcom/weirdvoice/ui/Tabfav;->LOGTAG:Ljava/lang/String;

    const-string v5, "no number"

    invoke-static {v2, v5}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    .end local v3    # "contactData":Landroid/net/Uri;
    .end local v4    # "cr":Landroid/content/ContentResolver;
    .end local v11    # "c":Landroid/database/Cursor;
    .end local v12    # "cn":Ljava/lang/String;
    .end local v14    # "n":Ljava/lang/String;
    .end local v16    # "phones":Landroid/database/Cursor;
    :cond_1
    :goto_2
    sget-object v2, Lcom/weirdvoice/ui/Tabfav;->LOGTAG:Ljava/lang/String;

    const-string v5, "onActivityResult() ends"

    invoke-static {v2, v5}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    return-void

    .line 320
    .restart local v3    # "contactData":Landroid/net/Uri;
    .restart local v4    # "cr":Landroid/content/ContentResolver;
    .restart local v11    # "c":Landroid/database/Cursor;
    .restart local v12    # "cn":Ljava/lang/String;
    .restart local v14    # "n":Ljava/lang/String;
    .restart local v16    # "phones":Landroid/database/Cursor;
    :catch_0
    move-exception v13

    .line 321
    .local v13, "e":Ljava/lang/Exception;
    const-string v2, "TabFav"

    const-string v5, "Exception while getting favorite phone number"

    invoke-static {v2, v5, v13}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 325
    .end local v13    # "e":Ljava/lang/Exception;
    :cond_2
    const-string v2, "data1"

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 326
    .local v15, "number":Ljava/lang/String;
    sget-object v2, Lcom/weirdvoice/ui/Tabfav;->LOGTAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "found: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    const-string v2, "data2"

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 328
    .local v18, "type":I
    packed-switch v18, :pswitch_data_0

    .line 342
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/weirdvoice/ui/Tabfav;->phonelist_num:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/weirdvoice/ui/Tabfav;->nbPhones:I

    aput-object v15, v2, v5

    .line 343
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/weirdvoice/ui/Tabfav;->phonelist_typ:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/weirdvoice/ui/Tabfav;->nbPhones:I

    invoke-virtual/range {p0 .. p0}, Lcom/weirdvoice/ui/Tabfav;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0266

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    .line 344
    :goto_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/weirdvoice/ui/Tabfav;->nbPhones:I

    add-int/lit8 v2, v2, 0x1

    .line 346
    move-object/from16 v0, p0

    iput v2, v0, Lcom/weirdvoice/ui/Tabfav;->nbPhones:I

    goto/16 :goto_1

    .line 330
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/weirdvoice/ui/Tabfav;->phonelist_num:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/weirdvoice/ui/Tabfav;->nbPhones:I

    aput-object v15, v2, v5

    .line 331
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/weirdvoice/ui/Tabfav;->phonelist_typ:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/weirdvoice/ui/Tabfav;->nbPhones:I

    invoke-virtual/range {p0 .. p0}, Lcom/weirdvoice/ui/Tabfav;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0264

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    goto :goto_3

    .line 334
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/weirdvoice/ui/Tabfav;->phonelist_num:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/weirdvoice/ui/Tabfav;->nbPhones:I

    aput-object v15, v2, v5

    .line 335
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/weirdvoice/ui/Tabfav;->phonelist_typ:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/weirdvoice/ui/Tabfav;->nbPhones:I

    invoke-virtual/range {p0 .. p0}, Lcom/weirdvoice/ui/Tabfav;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0208

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    goto :goto_3

    .line 338
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/weirdvoice/ui/Tabfav;->phonelist_num:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/weirdvoice/ui/Tabfav;->nbPhones:I

    aput-object v15, v2, v5

    .line 339
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/weirdvoice/ui/Tabfav;->phonelist_typ:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/weirdvoice/ui/Tabfav;->nbPhones:I

    invoke-virtual/range {p0 .. p0}, Lcom/weirdvoice/ui/Tabfav;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0265

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    goto :goto_3

    .line 353
    .end local v15    # "number":Ljava/lang/String;
    .end local v18    # "type":I
    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/weirdvoice/ui/Tabfav;->nbPhones:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_4

    .line 354
    sget-object v2, Lcom/weirdvoice/ui/Tabfav;->LOGTAG:Ljava/lang/String;

    const-string v5, "only 1 number"

    invoke-static {v2, v5}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/weirdvoice/ui/Tabfav;->phonelist_num:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v2, v2, v5

    invoke-static {v2}, Lcom/weirdvoice/toolbox/TelNumFormatter;->sanitizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 356
    .local v17, "sanitized":Ljava/lang/String;
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/weirdvoice/ui/Tabfav;->picked:Ljava/lang/String;

    .line 357
    invoke-direct/range {p0 .. p0}, Lcom/weirdvoice/ui/Tabfav;->editContact()V

    goto/16 :goto_2

    .line 359
    .end local v17    # "sanitized":Ljava/lang/String;
    :cond_4
    sget-object v2, Lcom/weirdvoice/ui/Tabfav;->LOGTAG:Ljava/lang/String;

    const-string v5, "more than 1 number"

    invoke-static {v2, v5}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    const v2, 0x7f0b0139

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/weirdvoice/ui/Tabfav;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 361
    .local v10, "but_ctcb":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/weirdvoice/ui/Tabfav;->registerForContextMenu(Landroid/view/View;)V

    .line 362
    invoke-virtual {v10}, Landroid/widget/ImageView;->showContextMenu()Z

    goto/16 :goto_2

    .line 328
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 14
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 372
    sget-object v1, Lcom/weirdvoice/ui/Tabfav;->LOGTAG:Ljava/lang/String;

    const-string v2, "onContextItemSelected()"

    invoke-static {v1, v2}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    iget v1, p0, Lcom/weirdvoice/ui/Tabfav;->nbPhones:I

    if-lt v9, v1, :cond_0

    .line 401
    :goto_1
    const/4 v1, 0x1

    return v1

    .line 374
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getOrder()I

    move-result v1

    add-int/lit16 v2, v9, 0x1b58

    if-ne v1, v2, :cond_6

    .line 375
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 376
    .local v11, "sp":Landroid/content/SharedPreferences;
    const-string v1, "isoctry"

    const-string v2, ""

    invoke-interface {v11, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 377
    .local v12, "userCtryIso":Ljava/lang/String;
    iget-object v1, p0, Lcom/weirdvoice/ui/Tabfav;->phonelist_num:[Ljava/lang/String;

    invoke-interface {p1}, Landroid/view/MenuItem;->getOrder()I

    move-result v2

    add-int/lit16 v2, v2, -0x1b58

    aget-object v7, v1, v2

    .line 378
    .local v7, "ctcNum":Ljava/lang/String;
    invoke-static {v7}, Lcom/weirdvoice/toolbox/TelNumFormatter;->sanitizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 380
    .local v10, "sanitized":Ljava/lang/String;
    const-string v1, "+"

    invoke-virtual {v7, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "CA"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "US"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 381
    :cond_1
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_3

    .line 382
    const-string v1, "1"

    invoke-virtual {v10, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "011"

    invoke-virtual {v10, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 383
    :cond_2
    sget-object v1, Lcom/weirdvoice/ui/Tabfav;->LOGTAG:Ljava/lang/String;

    const-string v2, "1 was not added to the number"

    invoke-static {v1, v2}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    :cond_3
    :goto_2
    iput-object v10, p0, Lcom/weirdvoice/ui/Tabfav;->picked:Ljava/lang/String;

    .line 397
    invoke-direct {p0}, Lcom/weirdvoice/ui/Tabfav;->editContact()V

    goto :goto_1

    .line 386
    :cond_4
    :try_start_0
    new-instance v0, Lcom/weirdvoice/toolbox/UpdateDB;

    invoke-direct {v0, p0}, Lcom/weirdvoice/toolbox/UpdateDB;-><init>(Landroid/content/Context;)V

    .line 387
    .local v0, "udb":Lcom/weirdvoice/toolbox/UpdateDB;
    const-string v1, "countryareacode"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "areaCode"

    aput-object v4, v2, v3

    const-string v3, "areaCode=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v13, 0x3

    invoke-virtual {v10, v6, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/weirdvoice/toolbox/UpdateDB;->getFieldValue(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 388
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 389
    goto :goto_2

    .line 390
    :cond_5
    sget-object v1, Lcom/weirdvoice/ui/Tabfav;->LOGTAG:Ljava/lang/String;

    const-string v2, "adding 1 to the number would not help"

    invoke-static {v1, v2}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 391
    .end local v0    # "udb":Lcom/weirdvoice/toolbox/UpdateDB;
    :catch_0
    move-exception v8

    .line 392
    .local v8, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/weirdvoice/ui/Tabfav;->LOGTAG:Ljava/lang/String;

    const-string v2, "exception while validating the number"

    invoke-static {v1, v2}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 373
    .end local v7    # "ctcNum":Ljava/lang/String;
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v10    # "sanitized":Ljava/lang/String;
    .end local v11    # "sp":Landroid/content/SharedPreferences;
    .end local v12    # "userCtryIso":Ljava/lang/String;
    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 69
    sget-object v9, Lcom/weirdvoice/ui/Tabfav;->LOGTAG:Ljava/lang/String;

    const-string v10, "create"

    invoke-static {v9, v10}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/weirdvoice/ui/Tabfav;->requestWindowFeature(I)Z

    .line 73
    const v9, 0x7f03005b

    invoke-virtual {p0, v9}, Lcom/weirdvoice/ui/Tabfav;->setContentView(I)V

    .line 79
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 80
    .local v8, "sp":Landroid/content/SharedPreferences;
    const-string v9, "fav1"

    const-string v10, ""

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 81
    .local v2, "fav1":Ljava/lang/String;
    const-string v9, "fav2"

    const-string v10, ""

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 82
    .local v3, "fav2":Ljava/lang/String;
    const-string v9, "fav3"

    const-string v10, ""

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 83
    .local v4, "fav3":Ljava/lang/String;
    const-string v9, "fav4"

    const-string v10, ""

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 84
    .local v5, "fav4":Ljava/lang/String;
    const-string v9, "fav5"

    const-string v10, ""

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 86
    .local v6, "fav5":Ljava/lang/String;
    const-string v9, ""

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 87
    invoke-direct {p0, v2}, Lcom/weirdvoice/ui/Tabfav;->addLine(Ljava/lang/String;)V

    .line 88
    :cond_0
    const-string v9, ""

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 89
    invoke-direct {p0, v3}, Lcom/weirdvoice/ui/Tabfav;->addLine(Ljava/lang/String;)V

    .line 90
    :cond_1
    const-string v9, ""

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 91
    invoke-direct {p0, v4}, Lcom/weirdvoice/ui/Tabfav;->addLine(Ljava/lang/String;)V

    .line 92
    :cond_2
    const-string v9, ""

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 93
    invoke-direct {p0, v5}, Lcom/weirdvoice/ui/Tabfav;->addLine(Ljava/lang/String;)V

    .line 94
    :cond_3
    const-string v9, ""

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 95
    invoke-direct {p0, v6}, Lcom/weirdvoice/ui/Tabfav;->addLine(Ljava/lang/String;)V

    .line 97
    :cond_4
    const v9, 0x7f0b013a

    invoke-virtual {p0, v9}, Lcom/weirdvoice/ui/Tabfav;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 98
    .local v0, "addctc":Landroid/widget/ImageView;
    new-instance v9, Lcom/weirdvoice/ui/Tabfav$1;

    invoke-direct {v9, p0}, Lcom/weirdvoice/ui/Tabfav$1;-><init>(Lcom/weirdvoice/ui/Tabfav;)V

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    const v9, 0x7f0b0139

    :try_start_0
    invoke-virtual {p0, v9}, Lcom/weirdvoice/ui/Tabfav;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 112
    .local v7, "img_ctc":Landroid/widget/ImageView;
    new-instance v9, Lcom/weirdvoice/ui/Tabfav$2;

    invoke-direct {v9, p0}, Lcom/weirdvoice/ui/Tabfav$2;-><init>(Lcom/weirdvoice/ui/Tabfav;)V

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    .end local v7    # "img_ctc":Landroid/widget/ImageView;
    :goto_0
    const v9, 0x7f0b0050

    invoke-virtual {p0, v9}, Lcom/weirdvoice/ui/Tabfav;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 124
    .local v1, "but_canc":Landroid/widget/Button;
    new-instance v9, Lcom/weirdvoice/ui/Tabfav$3;

    invoke-direct {v9, p0}, Lcom/weirdvoice/ui/Tabfav$3;-><init>(Lcom/weirdvoice/ui/Tabfav;)V

    invoke-virtual {v1, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    return-void

    .line 120
    .end local v1    # "but_canc":Landroid/widget/Button;
    :catch_0
    move-exception v9

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 6
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 406
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 407
    sget-object v1, Lcom/weirdvoice/ui/Tabfav;->LOGTAG:Ljava/lang/String;

    const-string v2, "onCreateContextMenu()"

    invoke-static {v1, v2}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    iget-object v1, p0, Lcom/weirdvoice/ui/Tabfav;->contactName:Ljava/lang/String;

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 409
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/weirdvoice/ui/Tabfav;->nbPhones:I

    if-lt v0, v1, :cond_0

    .line 412
    return-void

    .line 410
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v2

    add-int/lit16 v3, v0, 0x1b58

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/weirdvoice/ui/Tabfav;->phonelist_typ:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/weirdvoice/ui/Tabfav;->phonelist_num:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 409
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
