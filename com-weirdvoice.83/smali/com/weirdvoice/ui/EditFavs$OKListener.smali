.class Lcom/weirdvoice/ui/EditFavs$OKListener;
.super Ljava/lang/Object;
.source "EditFavs.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/weirdvoice/ui/EditFavs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OKListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/weirdvoice/ui/EditFavs;


# direct methods
.method private constructor <init>(Lcom/weirdvoice/ui/EditFavs;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/weirdvoice/ui/EditFavs$OKListener;->this$0:Lcom/weirdvoice/ui/EditFavs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/weirdvoice/ui/EditFavs;Lcom/weirdvoice/ui/EditFavs$OKListener;)V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/weirdvoice/ui/EditFavs$OKListener;-><init>(Lcom/weirdvoice/ui/EditFavs;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 17
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 84
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/weirdvoice/ui/EditFavs$OKListener;->this$0:Lcom/weirdvoice/ui/EditFavs;

    const v14, 0x7f0b0046

    invoke-virtual {v13, v14}, Lcom/weirdvoice/ui/EditFavs;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 85
    .local v2, "edtFav1":Landroid/widget/EditText;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/weirdvoice/ui/EditFavs$OKListener;->this$0:Lcom/weirdvoice/ui/EditFavs;

    const v14, 0x7f0b0048

    invoke-virtual {v13, v14}, Lcom/weirdvoice/ui/EditFavs;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 86
    .local v3, "edtFav2":Landroid/widget/EditText;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/weirdvoice/ui/EditFavs$OKListener;->this$0:Lcom/weirdvoice/ui/EditFavs;

    const v14, 0x7f0b004a

    invoke-virtual {v13, v14}, Lcom/weirdvoice/ui/EditFavs;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 87
    .local v4, "edtFav3":Landroid/widget/EditText;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/weirdvoice/ui/EditFavs$OKListener;->this$0:Lcom/weirdvoice/ui/EditFavs;

    const v14, 0x7f0b004c

    invoke-virtual {v13, v14}, Lcom/weirdvoice/ui/EditFavs;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 88
    .local v5, "edtFav4":Landroid/widget/EditText;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/weirdvoice/ui/EditFavs$OKListener;->this$0:Lcom/weirdvoice/ui/EditFavs;

    const v14, 0x7f0b004e

    invoke-virtual {v13, v14}, Lcom/weirdvoice/ui/EditFavs;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    .line 90
    .local v6, "edtFav5":Landroid/widget/EditText;
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-interface {v13}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v8

    .line 91
    .local v8, "zenbr1":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-interface {v13}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v9

    .line 92
    .local v9, "zenbr2":Ljava/lang/String;
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-interface {v13}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v10

    .line 93
    .local v10, "zenbr3":Ljava/lang/String;
    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-interface {v13}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v11

    .line 94
    .local v11, "zenbr4":Ljava/lang/String;
    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-interface {v13}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v12

    .line 96
    .local v12, "zenbr5":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/weirdvoice/ui/EditFavs$OKListener;->this$0:Lcom/weirdvoice/ui/EditFavs;

    # getter for: Lcom/weirdvoice/ui/EditFavs;->context:Landroid/content/Context;
    invoke-static {v13}, Lcom/weirdvoice/ui/EditFavs;->access$0(Lcom/weirdvoice/ui/EditFavs;)Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 97
    .local v7, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 99
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v14, 0x6

    if-gt v13, v14, :cond_0

    const-string v13, ""

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 100
    :cond_0
    const-string v13, "fav1"

    invoke-interface {v1, v13, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 102
    :cond_1
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v14, 0x6

    if-gt v13, v14, :cond_2

    const-string v13, ""

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 103
    :cond_2
    const-string v13, "fav2"

    invoke-interface {v1, v13, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 105
    :cond_3
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v14, 0x6

    if-gt v13, v14, :cond_4

    const-string v13, ""

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 106
    :cond_4
    const-string v13, "fav3"

    invoke-interface {v1, v13, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 108
    :cond_5
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v14, 0x6

    if-gt v13, v14, :cond_6

    const-string v13, ""

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 109
    :cond_6
    const-string v13, "fav4"

    invoke-interface {v1, v13, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 111
    :cond_7
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v14, 0x6

    if-gt v13, v14, :cond_8

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 112
    :cond_8
    const-string v13, "fav5"

    invoke-interface {v1, v13, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 114
    :cond_9
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 116
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/weirdvoice/ui/EditFavs$OKListener;->this$0:Lcom/weirdvoice/ui/EditFavs;

    # getter for: Lcom/weirdvoice/ui/EditFavs;->context:Landroid/content/Context;
    invoke-static {v13}, Lcom/weirdvoice/ui/EditFavs;->access$0(Lcom/weirdvoice/ui/EditFavs;)Landroid/content/Context;

    move-result-object v13

    new-instance v14, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/weirdvoice/ui/EditFavs$OKListener;->this$0:Lcom/weirdvoice/ui/EditFavs;

    # getter for: Lcom/weirdvoice/ui/EditFavs;->context:Landroid/content/Context;
    invoke-static {v15}, Lcom/weirdvoice/ui/EditFavs;->access$0(Lcom/weirdvoice/ui/EditFavs;)Landroid/content/Context;

    move-result-object v15

    const-class v16, Lcom/weirdvoice/ui/Tabfav;

    invoke-direct/range {v14 .. v16}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v13, v14}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 117
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/weirdvoice/ui/EditFavs$OKListener;->this$0:Lcom/weirdvoice/ui/EditFavs;

    invoke-virtual {v13}, Lcom/weirdvoice/ui/EditFavs;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "edtFav1":Landroid/widget/EditText;
    .end local v3    # "edtFav2":Landroid/widget/EditText;
    .end local v4    # "edtFav3":Landroid/widget/EditText;
    .end local v5    # "edtFav4":Landroid/widget/EditText;
    .end local v6    # "edtFav5":Landroid/widget/EditText;
    .end local v7    # "sp":Landroid/content/SharedPreferences;
    .end local v8    # "zenbr1":Ljava/lang/String;
    .end local v9    # "zenbr2":Ljava/lang/String;
    .end local v10    # "zenbr3":Ljava/lang/String;
    .end local v11    # "zenbr4":Ljava/lang/String;
    .end local v12    # "zenbr5":Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/weirdvoice/ui/EditFavs$OKListener;->this$0:Lcom/weirdvoice/ui/EditFavs;

    invoke-virtual {v13}, Lcom/weirdvoice/ui/EditFavs;->dismiss()V

    .line 124
    return-void

    .line 119
    :catch_0
    move-exception v13

    goto :goto_0
.end method
