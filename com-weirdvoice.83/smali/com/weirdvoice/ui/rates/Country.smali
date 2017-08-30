.class public Lcom/weirdvoice/ui/rates/Country;
.super Landroid/app/Activity;
.source "Country.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Activity;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/widget/AdapterView$OnItemSelectedListener;"
    }
.end annotation


# static fields
.field private static final REQUEST_SEND_LOGS:I


# instance fields
.field private LOGTAG:Ljava/lang/String;

.field private currencies:Ljava/lang/String;

.field private currency:Ljava/lang/String;

.field private exchange_rate:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 29
    const-string v0, "Country"

    iput-object v0, p0, Lcom/weirdvoice/ui/rates/Country;->LOGTAG:Ljava/lang/String;

    .line 32
    const-string v0, "USD"

    iput-object v0, p0, Lcom/weirdvoice/ui/rates/Country;->currency:Ljava/lang/String;

    .line 33
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/weirdvoice/ui/rates/Country;->exchange_rate:F

    .line 27
    return-void
.end method

.method private bindView()V
    .locals 25

    .prologue
    .line 75
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/ui/rates/Country;->LOGTAG:Ljava/lang/String;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "bindView() with "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/ui/rates/Country;->currency:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/weirdvoice/ui/rates/Country;->exchange_rate:F

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-virtual/range {p0 .. p0}, Lcom/weirdvoice/ui/rates/Country;->getIntent()Landroid/content/Intent;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v21

    const-string v22, "iso"

    invoke-virtual/range {v21 .. v22}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 78
    .local v11, "iso":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/weirdvoice/ui/rates/Country;->getIntent()Landroid/content/Intent;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v21

    const-string v22, "name"

    invoke-virtual/range {v21 .. v22}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 80
    .local v15, "name":Ljava/lang/String;
    const v21, 0x7f0b0090

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/weirdvoice/ui/rates/Country;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 81
    .local v4, "cname":Landroid/widget/TextView;
    invoke-virtual {v4, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    const v21, 0x7f0b008f

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/weirdvoice/ui/rates/Country;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 84
    .local v8, "img_flag":Landroid/widget/ImageView;
    invoke-virtual/range {p0 .. p0}, Lcom/weirdvoice/ui/rates/Country;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "ic_flag_"

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const-string v23, "drawable"

    const-string v24, "com.weirdvoice"

    invoke-virtual/range {v21 .. v24}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 89
    const-string v16, ""

    .line 92
    .local v16, "rates":Ljava/lang/String;
    :try_start_0
    const-string v21, "rates"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/weirdvoice/ui/rates/Country;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v10

    .line 94
    .local v10, "instream":Ljava/io/InputStream;
    new-instance v9, Ljava/io/InputStreamReader;

    invoke-direct {v9, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 95
    .local v9, "inputreader":Ljava/io/InputStreamReader;
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 97
    .local v3, "buffreader":Ljava/io/BufferedReader;
    invoke-virtual/range {p0 .. p0}, Lcom/weirdvoice/ui/rates/Country;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0c0274

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 98
    .local v6, "fixed_sub":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/weirdvoice/ui/rates/Country;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0c0208

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 100
    .local v14, "mobile_sub":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v13

    .local v13, "line":Ljava/lang/String;
    if-nez v13, :cond_1

    .line 118
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    .end local v3    # "buffreader":Ljava/io/BufferedReader;
    .end local v6    # "fixed_sub":Ljava/lang/String;
    .end local v9    # "inputreader":Ljava/io/InputStreamReader;
    .end local v10    # "instream":Ljava/io/InputStream;
    .end local v13    # "line":Ljava/lang/String;
    .end local v14    # "mobile_sub":Ljava/lang/String;
    :goto_1
    const v21, 0x7f0b0092

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/weirdvoice/ui/rates/Country;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    .line 124
    .local v20, "trates":Landroid/widget/TextView;
    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    return-void

    .line 101
    .end local v20    # "trates":Landroid/widget/TextView;
    .restart local v3    # "buffreader":Ljava/io/BufferedReader;
    .restart local v6    # "fixed_sub":Ljava/lang/String;
    .restart local v9    # "inputreader":Ljava/io/InputStreamReader;
    .restart local v10    # "instream":Ljava/io/InputStream;
    .restart local v13    # "line":Ljava/lang/String;
    .restart local v14    # "mobile_sub":Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string v21, "\\t"

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 102
    .local v19, "splits":[Ljava/lang/String;
    const/16 v21, 0x3

    aget-object v12, v19, v21

    .line 103
    .local v12, "iso2":Ljava/lang/String;
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_0

    .line 104
    const/16 v21, 0x1

    aget-object v21, v19, v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    .line 105
    .local v18, "route":Ljava/lang/String;
    const/16 v21, 0x2

    aget-object v17, v19, v21

    .line 107
    .local v17, "raw":Ljava/lang/String;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v22, " / "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const-string v22, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 108
    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v21

    const/high16 v22, 0x447a0000    # 1000.0f

    div-float v21, v21, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/weirdvoice/ui/rates/Country;->exchange_rate:F

    move/from16 v22, v0

    mul-float v21, v21, v22

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    .line 109
    .local v7, "frate":Ljava/lang/Float;
    const-string v21, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_2

    .line 110
    const-string v18, " fixed"

    .line 111
    :cond_2
    const-string v21, "landline"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 112
    const-string v21, "fixed"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 113
    const-string v21, "mobile"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 114
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ": \t"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "%.3f"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v7, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/ui/rates/Country;->currency:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {p0 .. p0}, Lcom/weirdvoice/ui/rates/Country;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f0c025c

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\n"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v16

    goto/16 :goto_0

    .line 119
    .end local v3    # "buffreader":Ljava/io/BufferedReader;
    .end local v6    # "fixed_sub":Ljava/lang/String;
    .end local v7    # "frate":Ljava/lang/Float;
    .end local v9    # "inputreader":Ljava/io/InputStreamReader;
    .end local v10    # "instream":Ljava/io/InputStream;
    .end local v12    # "iso2":Ljava/lang/String;
    .end local v13    # "line":Ljava/lang/String;
    .end local v14    # "mobile_sub":Ljava/lang/String;
    .end local v17    # "raw":Ljava/lang/String;
    .end local v18    # "route":Ljava/lang/String;
    .end local v19    # "splits":[Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 120
    .local v5, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/ui/rates/Country;->LOGTAG:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "err reading rates"

    invoke-static/range {v21 .. v22}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 133
    if-nez p1, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/weirdvoice/ui/rates/Country;->finish()V

    .line 138
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 139
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/weirdvoice/ui/rates/Country;->finish()V

    .line 130
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x0

    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-virtual {p0}, Lcom/weirdvoice/ui/rates/Country;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "currencies"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/weirdvoice/ui/rates/Country;->currencies:Ljava/lang/String;

    .line 39
    iget-object v6, p0, Lcom/weirdvoice/ui/rates/Country;->LOGTAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "onCreate() with "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/weirdvoice/ui/rates/Country;->currencies:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/weirdvoice/ui/rates/Country;->requestWindowFeature(I)Z

    .line 42
    const v6, 0x7f03002b

    invoke-virtual {p0, v6}, Lcom/weirdvoice/ui/rates/Country;->setContentView(I)V

    .line 45
    invoke-virtual {p0}, Lcom/weirdvoice/ui/rates/Country;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 46
    .local v2, "params":Landroid/view/ViewGroup$LayoutParams;
    const/4 v6, -0x1

    iput v6, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 47
    invoke-virtual {p0}, Lcom/weirdvoice/ui/rates/Country;->getWindow()Landroid/view/Window;

    move-result-object v6

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    .end local v2    # "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v6, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 53
    invoke-direct {p0}, Lcom/weirdvoice/ui/rates/Country;->bindView()V

    .line 55
    const v6, 0x7f0b0091

    invoke-virtual {p0, v6}, Lcom/weirdvoice/ui/rates/Country;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    .line 56
    .local v4, "spinner":Landroid/widget/Spinner;
    const v6, 0x7f0e0003

    const v7, 0x1090008

    invoke-static {p0, v6, v7}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 57
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v6, 0x1090009

    invoke-virtual {v0, v6}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 58
    invoke-virtual {v4, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 59
    invoke-virtual {v4, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 61
    invoke-virtual {p0}, Lcom/weirdvoice/ui/rates/Country;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 62
    .local v5, "zprefs":Landroid/content/SharedPreferences;
    const-string v6, "zecurrency"

    const-string v7, ""

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 64
    .local v3, "selcurr":Ljava/lang/String;
    :try_start_0
    const-string v6, ""

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 65
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/widget/Spinner;->setSelection(I)V

    .line 72
    :goto_0
    return-void

    .line 67
    :cond_0
    invoke-virtual {v0, v3}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/Spinner;->setSelection(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 68
    :catch_0
    move-exception v1

    .line 69
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v4, v9}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 16
    .param p2, "view"    # Landroid/view/View;
    .param p3, "pos"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 142
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/weirdvoice/ui/rates/Country;->currencies:Ljava/lang/String;

    const-string v14, "KO"

    if-ne v13, v14, :cond_0

    .line 143
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/weirdvoice/ui/rates/Country;->LOGTAG:Ljava/lang/String;

    const-string v14, "can\'t read currencies"

    invoke-static {v13, v14}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    :goto_0
    return-void

    .line 147
    :cond_0
    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 150
    .local v8, "newcurrency":Ljava/lang/String;
    const-string v13, "("

    invoke-virtual {v8, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 151
    .local v2, "a":I
    add-int/lit8 v13, v2, 0x1

    add-int/lit8 v14, v2, 0x4

    invoke-virtual {v8, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/weirdvoice/ui/rates/Country;->currency:Ljava/lang/String;

    .line 153
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/weirdvoice/ui/rates/Country;->LOGTAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "new currency: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/weirdvoice/ui/rates/Country;->currency:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " to look for in "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/weirdvoice/ui/rates/Country;->currencies:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    :try_start_0
    const-string v13, ":"

    invoke-static {v13}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/weirdvoice/ui/rates/Country;->currencies:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v12

    .line 157
    .local v12, "x":[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    array-length v13, v12

    if-lt v5, v13, :cond_2

    .line 165
    invoke-virtual/range {p0 .. p0}, Lcom/weirdvoice/ui/rates/Country;->getBaseContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 166
    .local v9, "prefs":Landroid/content/SharedPreferences;
    const-string v13, "zecurrency"

    const-string v14, "USD"

    invoke-interface {v9, v13, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 168
    .local v10, "selcurr":Ljava/lang/String;
    const-string v13, "("

    invoke-virtual {v10, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 169
    .local v3, "b":I
    add-int/lit8 v13, v3, 0x1

    add-int/lit8 v14, v3, 0x4

    invoke-virtual {v10, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v11

    .line 171
    .local v11, "selcurrShort":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/weirdvoice/ui/rates/Country;->currency:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 172
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 173
    .local v4, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v13, "zecurrency"

    invoke-interface {v4, v13, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 174
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    .end local v3    # "b":I
    .end local v4    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v5    # "i":I
    .end local v9    # "prefs":Landroid/content/SharedPreferences;
    .end local v10    # "selcurr":Ljava/lang/String;
    .end local v11    # "selcurrShort":Ljava/lang/String;
    .end local v12    # "x":[Ljava/lang/String;
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/weirdvoice/ui/rates/Country;->LOGTAG:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/weirdvoice/ui/rates/Country;->currency:Ljava/lang/String;

    invoke-static {v13, v14}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/weirdvoice/ui/rates/Country;->LOGTAG:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/weirdvoice/ui/rates/Country;->exchange_rate:F

    invoke-static {v14}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-direct/range {p0 .. p0}, Lcom/weirdvoice/ui/rates/Country;->bindView()V

    goto/16 :goto_0

    .line 158
    .restart local v5    # "i":I
    .restart local v12    # "x":[Ljava/lang/String;
    :cond_2
    :try_start_1
    aget-object v7, v12, v5

    .line 159
    .local v7, "line":Ljava/lang/String;
    const/4 v13, 0x0

    const/4 v14, 0x3

    invoke-virtual {v7, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/weirdvoice/ui/rates/Country;->currency:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 160
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/weirdvoice/ui/rates/Country;->LOGTAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "selected rate "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string v13, "/"

    invoke-static {v13}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v6

    .line 162
    .local v6, "item":[Ljava/lang/String;
    const/4 v13, 0x2

    aget-object v13, v6, v13

    invoke-static {v13}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/weirdvoice/ui/rates/Country;->exchange_rate:F
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 157
    .end local v6    # "item":[Ljava/lang/String;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 176
    .end local v5    # "i":I
    .end local v7    # "line":Ljava/lang/String;
    .end local v12    # "x":[Ljava/lang/String;
    :catch_0
    move-exception v13

    goto :goto_2
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 184
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
