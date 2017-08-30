.class public Lcom/weirdvoice/ui/EditFavs;
.super Landroid/app/Dialog;
.source "EditFavs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/weirdvoice/ui/EditFavs$DelListener;,
        Lcom/weirdvoice/ui/EditFavs$KOListener;,
        Lcom/weirdvoice/ui/EditFavs$OKListener;,
        Lcom/weirdvoice/ui/EditFavs$ReadyListener;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 27
    iput-object p1, p0, Lcom/weirdvoice/ui/EditFavs;->context:Landroid/content/Context;

    .line 29
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/weirdvoice/ui/EditFavs;->requestWindowFeature(I)Z

    .line 30
    return-void
.end method

.method static synthetic access$0(Lcom/weirdvoice/ui/EditFavs;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/weirdvoice/ui/EditFavs;->context:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 23
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 34
    invoke-super/range {p0 .. p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const v21, 0x7f03001d

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/weirdvoice/ui/EditFavs;->setContentView(I)V

    .line 37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/ui/EditFavs;->context:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v20

    .line 38
    .local v20, "sp":Landroid/content/SharedPreferences;
    const-string v21, "fav1"

    const-string v22, ""

    invoke-interface/range {v20 .. v22}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 39
    .local v15, "fav1":Ljava/lang/String;
    const-string v21, "fav2"

    const-string v22, ""

    invoke-interface/range {v20 .. v22}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 40
    .local v16, "fav2":Ljava/lang/String;
    const-string v21, "fav3"

    const-string v22, ""

    invoke-interface/range {v20 .. v22}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 41
    .local v17, "fav3":Ljava/lang/String;
    const-string v21, "fav4"

    const-string v22, ""

    invoke-interface/range {v20 .. v22}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 42
    .local v18, "fav4":Ljava/lang/String;
    const-string v21, "fav5"

    const-string v22, ""

    invoke-interface/range {v20 .. v22}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 44
    .local v19, "fav5":Ljava/lang/String;
    const v21, 0x7f0b0051

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/weirdvoice/ui/EditFavs;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    .line 45
    .local v9, "buttonOK":Landroid/widget/Button;
    new-instance v21, Lcom/weirdvoice/ui/EditFavs$OKListener;

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/weirdvoice/ui/EditFavs$OKListener;-><init>(Lcom/weirdvoice/ui/EditFavs;Lcom/weirdvoice/ui/EditFavs$OKListener;)V

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    const v21, 0x7f0b0050

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/weirdvoice/ui/EditFavs;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    .line 47
    .local v8, "buttonKO":Landroid/widget/Button;
    new-instance v21, Lcom/weirdvoice/ui/EditFavs$KOListener;

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/weirdvoice/ui/EditFavs$KOListener;-><init>(Lcom/weirdvoice/ui/EditFavs;Lcom/weirdvoice/ui/EditFavs$KOListener;)V

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    const v21, 0x7f0b0047

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/weirdvoice/ui/EditFavs;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 50
    .local v3, "butDel1":Landroid/widget/ImageView;
    const v21, 0x7f0b0049

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/weirdvoice/ui/EditFavs;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 51
    .local v4, "butDel2":Landroid/widget/ImageView;
    const v21, 0x7f0b004b

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/weirdvoice/ui/EditFavs;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 52
    .local v5, "butDel3":Landroid/widget/ImageView;
    const v21, 0x7f0b004d

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/weirdvoice/ui/EditFavs;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 53
    .local v6, "butDel4":Landroid/widget/ImageView;
    const v21, 0x7f0b004f

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/weirdvoice/ui/EditFavs;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 54
    .local v7, "butDel5":Landroid/widget/ImageView;
    new-instance v21, Lcom/weirdvoice/ui/EditFavs$DelListener;

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/weirdvoice/ui/EditFavs$DelListener;-><init>(Lcom/weirdvoice/ui/EditFavs;Lcom/weirdvoice/ui/EditFavs$DelListener;)V

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    new-instance v21, Lcom/weirdvoice/ui/EditFavs$DelListener;

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/weirdvoice/ui/EditFavs$DelListener;-><init>(Lcom/weirdvoice/ui/EditFavs;Lcom/weirdvoice/ui/EditFavs$DelListener;)V

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    new-instance v21, Lcom/weirdvoice/ui/EditFavs$DelListener;

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/weirdvoice/ui/EditFavs$DelListener;-><init>(Lcom/weirdvoice/ui/EditFavs;Lcom/weirdvoice/ui/EditFavs$DelListener;)V

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    new-instance v21, Lcom/weirdvoice/ui/EditFavs$DelListener;

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/weirdvoice/ui/EditFavs$DelListener;-><init>(Lcom/weirdvoice/ui/EditFavs;Lcom/weirdvoice/ui/EditFavs$DelListener;)V

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    new-instance v21, Lcom/weirdvoice/ui/EditFavs$DelListener;

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/weirdvoice/ui/EditFavs$DelListener;-><init>(Lcom/weirdvoice/ui/EditFavs;Lcom/weirdvoice/ui/EditFavs$DelListener;)V

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    const v21, 0x7f0b0046

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/weirdvoice/ui/EditFavs;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/EditText;

    .line 61
    .local v10, "edtFav1":Landroid/widget/EditText;
    const v21, 0x7f0b0048

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/weirdvoice/ui/EditFavs;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    .line 62
    .local v11, "edtFav2":Landroid/widget/EditText;
    const v21, 0x7f0b004a

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/weirdvoice/ui/EditFavs;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/EditText;

    .line 63
    .local v12, "edtFav3":Landroid/widget/EditText;
    const v21, 0x7f0b004c

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/weirdvoice/ui/EditFavs;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/EditText;

    .line 64
    .local v13, "edtFav4":Landroid/widget/EditText;
    const v21, 0x7f0b004e

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/weirdvoice/ui/EditFavs;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/EditText;

    .line 66
    .local v14, "edtFav5":Landroid/widget/EditText;
    invoke-virtual {v10, v15}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 67
    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 68
    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 69
    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 70
    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 71
    return-void
.end method
