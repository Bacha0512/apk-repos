.class public Lcom/weirdvoice/ui/CountryCode;
.super Landroid/app/Activity;
.source "CountryCode.java"


# static fields
.field private static final COUNTRY_URI_S:Ljava/lang/String;

.field private static LOGTAG:Ljava/lang/String;

.field private static allCountries:[[Ljava/lang/String;

.field private static countryCode:Ljava/lang/String;

.field private static from:Ljava/lang/String;


# instance fields
.field private udb:Lcom/weirdvoice/toolbox/UpdateDB;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    const-string v0, "CountryCode"

    sput-object v0, Lcom/weirdvoice/ui/CountryCode;->LOGTAG:Ljava/lang/String;

    .line 44
    const/4 v0, 0x0

    sput-object v0, Lcom/weirdvoice/ui/CountryCode;->allCountries:[[Ljava/lang/String;

    .line 46
    const-string v0, "unknown"

    sput-object v0, Lcom/weirdvoice/ui/CountryCode;->from:Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "content://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/weirdvoice/utils/CustomDistribution;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/country"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/weirdvoice/ui/CountryCode;->COUNTRY_URI_S:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/weirdvoice/ui/CountryCode;->from:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    .prologue
    .line 154
    sget-object v1, Lcom/weirdvoice/ui/CountryCode;->from:Ljava/lang/String;

    const-string v2, "Register"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/weirdvoice/ui/Register;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 156
    .local v0, "goNext":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/weirdvoice/ui/CountryCode;->startActivity(Landroid/content/Intent;)V

    .line 158
    .end local v0    # "goNext":Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0}, Lcom/weirdvoice/ui/CountryCode;->finish()V

    .line 159
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 25
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 51
    sget-object v4, Lcom/weirdvoice/ui/CountryCode;->LOGTAG:Ljava/lang/String;

    const-string v7, "create"

    invoke-static {v4, v7}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const v4, 0x7f03002c

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/weirdvoice/ui/CountryCode;->setContentView(I)V

    .line 55
    invoke-virtual/range {p0 .. p0}, Lcom/weirdvoice/ui/CountryCode;->getIntent()Landroid/content/Intent;

    move-result-object v15

    .line 56
    .local v15, "i":Landroid/content/Intent;
    const-string v4, "from"

    invoke-virtual {v15, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 57
    const-string v4, "from"

    invoke-virtual {v15, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/weirdvoice/ui/CountryCode;->from:Ljava/lang/String;

    .line 59
    :cond_0
    const v4, 0x7f0b0094

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/weirdvoice/ui/CountryCode;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TableLayout;

    .line 61
    .local v19, "tl":Landroid/widget/TableLayout;
    new-instance v4, Lcom/weirdvoice/toolbox/UpdateDB;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/weirdvoice/toolbox/UpdateDB;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/weirdvoice/ui/CountryCode;->udb:Lcom/weirdvoice/toolbox/UpdateDB;

    .line 62
    invoke-virtual {v15}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v7, "letter"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 63
    .local v13, "firstLetter":Ljava/lang/String;
    sget-object v4, Lcom/weirdvoice/ui/CountryCode;->COUNTRY_URI_S:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 64
    .local v5, "countryUri":Landroid/net/Uri;
    const/4 v4, 0x3

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v7, "name"

    aput-object v7, v6, v4

    const/4 v4, 0x1

    const-string v7, "ISOCode"

    aput-object v7, v6, v4

    const/4 v4, 0x2

    const-string v7, "telephonyCode"

    aput-object v7, v6, v4

    .line 65
    .local v6, "columns":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/weirdvoice/ui/CountryCode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "name like \'"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "%\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const-string v9, "name"

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 66
    .local v12, "curs":Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/weirdvoice/ui/CountryCode;->udb:Lcom/weirdvoice/toolbox/UpdateDB;

    invoke-virtual {v4, v12, v6}, Lcom/weirdvoice/toolbox/UpdateDB;->getDataFromCursor(Landroid/database/Cursor;[Ljava/lang/String;)[[Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/weirdvoice/ui/CountryCode;->allCountries:[[Ljava/lang/String;

    .line 68
    sget-object v4, Lcom/weirdvoice/ui/CountryCode;->allCountries:[[Ljava/lang/String;

    if-nez v4, :cond_2

    .line 69
    sget-object v4, Lcom/weirdvoice/ui/CountryCode;->LOGTAG:Ljava/lang/String;

    const-string v7, "allCountries is null, very bad"

    invoke-static {v4, v7}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    :cond_1
    return-void

    .line 73
    :cond_2
    const-string v17, ""

    .line 76
    .local v17, "prevcountry":Ljava/lang/String;
    sget-object v7, Lcom/weirdvoice/ui/CountryCode;->allCountries:[[Ljava/lang/String;

    array-length v8, v7

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v8, :cond_1

    aget-object v10, v7, v4

    .line 77
    .local v10, "allCountrie":[Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v22, "flag_"

    move-object/from16 v0, v22

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v22, 0x1

    aget-object v22, v10, v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v22, "48"

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 78
    .local v14, "flag":Ljava/lang/String;
    const/4 v9, 0x0

    aget-object v11, v10, v9

    .line 79
    .local v11, "country":Ljava/lang/String;
    const/4 v9, 0x2

    aget-object v9, v10, v9

    sput-object v9, Lcom/weirdvoice/ui/CountryCode;->countryCode:Ljava/lang/String;

    .line 82
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 83
    new-instance v20, Landroid/widget/TableRow;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 84
    .local v20, "tr":Landroid/widget/TableRow;
    new-instance v9, Landroid/widget/TableRow$LayoutParams;

    const/16 v22, -0x1

    const/16 v23, -0x2

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-direct {v9, v0, v1}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Landroid/widget/TableRow;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    const/16 v9, 0x10

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Landroid/widget/TableRow;->setGravity(I)V

    .line 87
    new-instance v16, Landroid/widget/ImageView;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 88
    .local v16, "ima":Landroid/widget/ImageView;
    invoke-virtual/range {p0 .. p0}, Lcom/weirdvoice/ui/CountryCode;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const-string v22, "drawable"

    invoke-virtual/range {p0 .. p0}, Lcom/weirdvoice/ui/CountryCode;->getPackageName()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v9, v14, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    .line 89
    .local v18, "res_flag":I
    if-nez v18, :cond_3

    .line 90
    const v18, 0x7f020083

    .line 91
    :cond_3
    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 92
    new-instance v9, Landroid/widget/TableRow$LayoutParams;

    const/16 v22, -0x1

    const/16 v23, -0x2

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-direct {v9, v0, v1}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    sget-object v9, Lcom/weirdvoice/ui/CountryCode;->countryCode:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 95
    new-instance v9, Lcom/weirdvoice/ui/CountryCode$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v9, v0, v10, v1}, Lcom/weirdvoice/ui/CountryCode$1;-><init>(Lcom/weirdvoice/ui/CountryCode;[Ljava/lang/String;Landroid/widget/ImageView;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 115
    new-instance v21, Landroid/widget/TextView;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 116
    .local v21, "txt":Landroid/widget/TextView;
    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    const/4 v9, -0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 118
    const/high16 v9, 0x41900000    # 18.0f

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 119
    const/16 v9, 0xf

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v9, v1, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 120
    new-instance v9, Landroid/widget/TableRow$LayoutParams;

    const/16 v22, -0x1

    const/16 v23, -0x2

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-direct {v9, v0, v1}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    sget-object v9, Lcom/weirdvoice/ui/CountryCode;->countryCode:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 123
    new-instance v9, Lcom/weirdvoice/ui/CountryCode$2;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v9, v0, v10, v1}, Lcom/weirdvoice/ui/CountryCode$2;-><init>(Lcom/weirdvoice/ui/CountryCode;[Ljava/lang/String;Landroid/widget/ImageView;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    invoke-virtual/range {v20 .. v21}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 141
    new-instance v9, Landroid/widget/TableLayout$LayoutParams;

    const/16 v22, -0x1

    const/16 v23, -0x2

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-direct {v9, v0, v1}, Landroid/widget/TableLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v9}, Landroid/widget/TableLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    .end local v16    # "ima":Landroid/widget/ImageView;
    .end local v18    # "res_flag":I
    .end local v20    # "tr":Landroid/widget/TableRow;
    .end local v21    # "txt":Landroid/widget/TextView;
    :cond_4
    new-instance v20, Landroid/widget/TableRow;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 145
    .restart local v20    # "tr":Landroid/widget/TableRow;
    new-instance v9, Landroid/widget/TableRow$LayoutParams;

    const/16 v22, -0x1

    const/16 v23, -0x2

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-direct {v9, v0, v1}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Landroid/widget/TableRow;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 147
    new-instance v16, Landroid/widget/ImageView;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 148
    .restart local v16    # "ima":Landroid/widget/ImageView;
    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 149
    move-object/from16 v17, v11

    .line 76
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0
.end method
