.class public Lcom/weirdvoice/ui/Myaccount;
.super Lcom/actionbarsherlock/app/SherlockFragmentActivity;
.source "Myaccount.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/weirdvoice/ui/Myaccount$CurrTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/actionbarsherlock/app/SherlockFragmentActivity;",
        "Landroid/widget/AdapterView$OnItemSelectedListener;"
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "MyAccount"


# instance fields
.field private chipmunkv:Landroid/widget/RadioButton;

.field private ctryIso:Ljava/lang/String;

.field private currencies:Ljava/lang/String;

.field private currency:Ljava/lang/String;

.field private deepv:Landroid/widget/RadioButton;

.field private exchange_rate:F

.field private funnyv:Landroid/widget/RadioButton;

.field private hiddenv:Landroid/widget/RadioButton;

.field private normalv:Landroid/widget/RadioButton;

.field private oldCtryIso:Ljava/lang/String;

.field private radioVoiceGroup:Landroid/widget/RadioGroup;

.field private scarryv:Landroid/widget/RadioButton;

.field private spinner:Landroid/widget/Spinner;

.field private thisContext:Landroid/content/Context;

.field voiceOptionOnClickListener:Landroid/view/View$OnClickListener;

.field private voiceSeekBar:Landroid/widget/SeekBar;

.field private zprefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;-><init>()V

    .line 50
    iput-object p0, p0, Lcom/weirdvoice/ui/Myaccount;->thisContext:Landroid/content/Context;

    .line 52
    iput-object v1, p0, Lcom/weirdvoice/ui/Myaccount;->currencies:Ljava/lang/String;

    .line 53
    const-string v0, "USD"

    iput-object v0, p0, Lcom/weirdvoice/ui/Myaccount;->currency:Ljava/lang/String;

    .line 54
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/weirdvoice/ui/Myaccount;->exchange_rate:F

    .line 56
    iput-object v1, p0, Lcom/weirdvoice/ui/Myaccount;->voiceSeekBar:Landroid/widget/SeekBar;

    .line 60
    const-string v0, ""

    iput-object v0, p0, Lcom/weirdvoice/ui/Myaccount;->ctryIso:Ljava/lang/String;

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lcom/weirdvoice/ui/Myaccount;->oldCtryIso:Ljava/lang/String;

    .line 337
    new-instance v0, Lcom/weirdvoice/ui/Myaccount$1;

    invoke-direct {v0, p0}, Lcom/weirdvoice/ui/Myaccount$1;-><init>(Lcom/weirdvoice/ui/Myaccount;)V

    iput-object v0, p0, Lcom/weirdvoice/ui/Myaccount;->voiceOptionOnClickListener:Landroid/view/View$OnClickListener;

    .line 47
    return-void
.end method

.method static synthetic access$10(Lcom/weirdvoice/ui/Myaccount;)Landroid/widget/RadioButton;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/weirdvoice/ui/Myaccount;->funnyv:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$11(Lcom/weirdvoice/ui/Myaccount;)Landroid/widget/RadioButton;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/weirdvoice/ui/Myaccount;->chipmunkv:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$12(Lcom/weirdvoice/ui/Myaccount;)Landroid/widget/SeekBar;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/weirdvoice/ui/Myaccount;->voiceSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$13(Lcom/weirdvoice/ui/Myaccount;I)F
    .locals 1

    .prologue
    .line 362
    invoke-direct {p0, p1}, Lcom/weirdvoice/ui/Myaccount;->getVoiceValue(I)F

    move-result v0

    return v0
.end method

.method static synthetic access$14(Lcom/weirdvoice/ui/Myaccount;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/weirdvoice/ui/Myaccount;->currencies:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$15(Lcom/weirdvoice/ui/Myaccount;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/weirdvoice/ui/Myaccount;->currencies:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$16(Lcom/weirdvoice/ui/Myaccount;)Landroid/widget/Spinner;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/weirdvoice/ui/Myaccount;->spinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$17(Lcom/weirdvoice/ui/Myaccount;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 443
    invoke-direct {p0, p1}, Lcom/weirdvoice/ui/Myaccount;->formatBalance(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$18(Lcom/weirdvoice/ui/Myaccount;)V
    .locals 0

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/weirdvoice/ui/Myaccount;->deleteAllCalls()V

    return-void
.end method

.method static synthetic access$19(Lcom/weirdvoice/ui/Myaccount;)Landroid/widget/RadioButton;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/weirdvoice/ui/Myaccount;->deepv:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$20(Lcom/weirdvoice/ui/Myaccount;)Landroid/widget/RadioButton;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/weirdvoice/ui/Myaccount;->hiddenv:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$5(Lcom/weirdvoice/ui/Myaccount;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/weirdvoice/ui/Myaccount;->thisContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6(Lcom/weirdvoice/ui/Myaccount;Landroid/content/SharedPreferences;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/weirdvoice/ui/Myaccount;->zprefs:Landroid/content/SharedPreferences;

    return-void
.end method

.method static synthetic access$7(Lcom/weirdvoice/ui/Myaccount;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/weirdvoice/ui/Myaccount;->zprefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$8(Lcom/weirdvoice/ui/Myaccount;)Landroid/widget/RadioButton;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/weirdvoice/ui/Myaccount;->scarryv:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$9(Lcom/weirdvoice/ui/Myaccount;)Landroid/widget/RadioButton;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/weirdvoice/ui/Myaccount;->normalv:Landroid/widget/RadioButton;

    return-object v0
.end method

.method private deleteAllCalls()V
    .locals 5

    .prologue
    .line 140
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/weirdvoice/ui/Myaccount;->thisContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 141
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    const v2, 0x7f0c0204

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 142
    const v2, 0x7f0c0205

    invoke-virtual {p0, v2}, Lcom/weirdvoice/ui/Myaccount;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 143
    const/4 v2, -0x1

    const v3, 0x7f0c0206

    invoke-virtual {p0, v3}, Lcom/weirdvoice/ui/Myaccount;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 144
    new-instance v4, Lcom/weirdvoice/ui/Myaccount$4;

    invoke-direct {v4, p0}, Lcom/weirdvoice/ui/Myaccount$4;-><init>(Lcom/weirdvoice/ui/Myaccount;)V

    .line 143
    invoke-virtual {v0, v2, v3, v4}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 201
    const/4 v2, -0x2

    const v3, 0x7f0c0207

    invoke-virtual {p0, v3}, Lcom/weirdvoice/ui/Myaccount;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 202
    const/4 v4, 0x0

    .line 201
    invoke-virtual {v0, v2, v3, v4}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 204
    :try_start_0
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    :goto_0
    return-void

    .line 205
    :catch_0
    move-exception v1

    .line 206
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "MyAccount"

    const-string v3, "error while trying to show deletion yes/no dialog"

    invoke-static {v2, v3}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private displayCountry()V
    .locals 14

    .prologue
    .line 211
    const-string v1, "MyAccount"

    const-string v2, "displayCountry()"

    invoke-static {v1, v2}, Lcom/weirdvoice/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const-string v7, ""

    .line 213
    .local v7, "ctryIsoToSet":Ljava/lang/String;
    const v1, 0x7f0b0106

    invoke-virtual {p0, v1}, Lcom/weirdvoice/ui/Myaccount;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .line 214
    .local v11, "ima_ctryFlag":Landroid/widget/ImageView;
    const v1, 0x7f0b0108

    invoke-virtual {p0, v1}, Lcom/weirdvoice/ui/Myaccount;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 217
    .local v13, "tex_ctryName":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/weirdvoice/ui/Myaccount;->getIntent()Landroid/content/Intent;

    move-result-object v10

    .line 218
    .local v10, "i":Landroid/content/Intent;
    const-string v1, "isocountry"

    invoke-virtual {v10, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 219
    const-string v1, "isocountry"

    invoke-virtual {v10, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/weirdvoice/ui/Myaccount;->ctryIso:Ljava/lang/String;

    .line 221
    :cond_0
    iget-object v1, p0, Lcom/weirdvoice/ui/Myaccount;->ctryIso:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 222
    iget-object v7, p0, Lcom/weirdvoice/ui/Myaccount;->oldCtryIso:Ljava/lang/String;

    .line 226
    :goto_0
    const-string v1, ""

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 228
    :try_start_0
    new-instance v0, Lcom/weirdvoice/toolbox/UpdateDB;

    iget-object v1, p0, Lcom/weirdvoice/ui/Myaccount;->thisContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/weirdvoice/toolbox/UpdateDB;-><init>(Landroid/content/Context;)V

    .line 229
    .local v0, "udb":Lcom/weirdvoice/toolbox/UpdateDB;
    const-string v1, "country"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "name"

    aput-object v4, v2, v3

    const-string v3, "ISOCode=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v7, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/weirdvoice/toolbox/UpdateDB;->getFieldValue(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    .line 230
    .local v8, "ctryName":Ljava/lang/String;
    invoke-virtual {v13, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    invoke-virtual {p0}, Lcom/weirdvoice/ui/Myaccount;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "flag_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "48"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "drawable"

    const-string v4, "com.weirdvoice"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v11, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 233
    iget-object v1, p0, Lcom/weirdvoice/ui/Myaccount;->zprefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    .line 234
    .local v9, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "isoctry"

    invoke-interface {v9, v1, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 235
    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    .end local v0    # "udb":Lcom/weirdvoice/toolbox/UpdateDB;
    .end local v8    # "ctryName":Ljava/lang/String;
    .end local v9    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    :goto_1
    new-instance v1, Lcom/weirdvoice/ui/Myaccount$5;

    invoke-direct {v1, p0}, Lcom/weirdvoice/ui/Myaccount$5;-><init>(Lcom/weirdvoice/ui/Myaccount;)V

    invoke-virtual {v11, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    const v1, 0x7f0b0107

    invoke-virtual {p0, v1}, Lcom/weirdvoice/ui/Myaccount;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    .line 251
    .local v12, "ima_ctryInfo":Landroid/widget/ImageView;
    new-instance v1, Lcom/weirdvoice/ui/Myaccount$6;

    invoke-direct {v1, p0}, Lcom/weirdvoice/ui/Myaccount$6;-><init>(Lcom/weirdvoice/ui/Myaccount;)V

    invoke-virtual {v12, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    return-void

    .line 224
    .end local v12    # "ima_ctryInfo":Landroid/widget/ImageView;
    :cond_2
    iget-object v7, p0, Lcom/weirdvoice/ui/Myaccount;->ctryIso:Ljava/lang/String;

    goto :goto_0

    .line 236
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private displayWeird()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 268
    const v2, 0x7f0b010e

    invoke-virtual {p0, v2}, Lcom/weirdvoice/ui/Myaccount;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioGroup;

    iput-object v2, p0, Lcom/weirdvoice/ui/Myaccount;->radioVoiceGroup:Landroid/widget/RadioGroup;

    .line 269
    const v2, 0x7f0b010f

    invoke-virtual {p0, v2}, Lcom/weirdvoice/ui/Myaccount;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/weirdvoice/ui/Myaccount;->deepv:Landroid/widget/RadioButton;

    .line 270
    const v2, 0x7f0b0110

    invoke-virtual {p0, v2}, Lcom/weirdvoice/ui/Myaccount;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/weirdvoice/ui/Myaccount;->scarryv:Landroid/widget/RadioButton;

    .line 271
    const v2, 0x7f0b0111

    invoke-virtual {p0, v2}, Lcom/weirdvoice/ui/Myaccount;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/weirdvoice/ui/Myaccount;->normalv:Landroid/widget/RadioButton;

    .line 272
    const v2, 0x7f0b0112

    invoke-virtual {p0, v2}, Lcom/weirdvoice/ui/Myaccount;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/weirdvoice/ui/Myaccount;->funnyv:Landroid/widget/RadioButton;

    .line 273
    const v2, 0x7f0b0113

    invoke-virtual {p0, v2}, Lcom/weirdvoice/ui/Myaccount;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/weirdvoice/ui/Myaccount;->chipmunkv:Landroid/widget/RadioButton;

    .line 274
    const v2, 0x7f0b0114

    invoke-virtual {p0, v2}, Lcom/weirdvoice/ui/Myaccount;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/weirdvoice/ui/Myaccount;->hiddenv:Landroid/widget/RadioButton;

    .line 276
    const v2, 0x7f0b010d

    invoke-virtual {p0, v2}, Lcom/weirdvoice/ui/Myaccount;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    iput-object v2, p0, Lcom/weirdvoice/ui/Myaccount;->voiceSeekBar:Landroid/widget/SeekBar;

    .line 277
    const v2, 0x7f0b010c

    invoke-virtual {p0, v2}, Lcom/weirdvoice/ui/Myaccount;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 278
    .local v1, "voicetxt":Landroid/widget/TextView;
    invoke-static {}, Lcom/weirdvoice/utils/CustomDistribution;->isWeirdApp()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 279
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 280
    iget-object v2, p0, Lcom/weirdvoice/ui/Myaccount;->voiceSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v4}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 281
    iget-object v2, p0, Lcom/weirdvoice/ui/Myaccount;->radioVoiceGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v2, v4}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 282
    iget-object v2, p0, Lcom/weirdvoice/ui/Myaccount;->hiddenv:Landroid/widget/RadioButton;

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 284
    iget-object v2, p0, Lcom/weirdvoice/ui/Myaccount;->deepv:Landroid/widget/RadioButton;

    iget-object v3, p0, Lcom/weirdvoice/ui/Myaccount;->voiceOptionOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    iget-object v2, p0, Lcom/weirdvoice/ui/Myaccount;->scarryv:Landroid/widget/RadioButton;

    iget-object v3, p0, Lcom/weirdvoice/ui/Myaccount;->voiceOptionOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    iget-object v2, p0, Lcom/weirdvoice/ui/Myaccount;->normalv:Landroid/widget/RadioButton;

    iget-object v3, p0, Lcom/weirdvoice/ui/Myaccount;->voiceOptionOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 287
    iget-object v2, p0, Lcom/weirdvoice/ui/Myaccount;->funnyv:Landroid/widget/RadioButton;

    iget-object v3, p0, Lcom/weirdvoice/ui/Myaccount;->voiceOptionOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    iget-object v2, p0, Lcom/weirdvoice/ui/Myaccount;->chipmunkv:Landroid/widget/RadioButton;

    iget-object v3, p0, Lcom/weirdvoice/ui/Myaccount;->voiceOptionOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 290
    iget-object v2, p0, Lcom/weirdvoice/ui/Myaccount;->voiceSeekBar:Landroid/widget/SeekBar;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 293
    :try_start_0
    iget-object v2, p0, Lcom/weirdvoice/ui/Myaccount;->voiceSeekBar:Landroid/widget/SeekBar;

    new-instance v3, Lcom/weirdvoice/ui/Myaccount$7;

    invoke-direct {v3, p0}, Lcom/weirdvoice/ui/Myaccount$7;-><init>(Lcom/weirdvoice/ui/Myaccount;)V

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    :goto_0
    iget-object v2, p0, Lcom/weirdvoice/ui/Myaccount;->thisContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/weirdvoice/ui/Myaccount;->zprefs:Landroid/content/SharedPreferences;

    .line 326
    iget-object v2, p0, Lcom/weirdvoice/ui/Myaccount;->zprefs:Landroid/content/SharedPreferences;

    const-string v3, "skbProgr"

    const/16 v4, 0x258

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 327
    .local v0, "skbProgr":I
    iget-object v2, p0, Lcom/weirdvoice/ui/Myaccount;->voiceSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 335
    .end local v0    # "skbProgr":I
    :goto_1
    return-void

    .line 330
    :cond_0
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 331
    iget-object v2, p0, Lcom/weirdvoice/ui/Myaccount;->voiceSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 332
    iget-object v2, p0, Lcom/weirdvoice/ui/Myaccount;->radioVoiceGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 333
    iget-object v2, p0, Lcom/weirdvoice/ui/Myaccount;->hiddenv:Landroid/widget/RadioButton;

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setVisibility(I)V

    goto :goto_1

    .line 322
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private formatBalance(Ljava/lang/String;)V
    .locals 16
    .param p1, "newbal"    # Ljava/lang/String;

    .prologue
    .line 444
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/weirdvoice/ui/Myaccount;->currencies:Ljava/lang/String;

    if-nez v11, :cond_0

    .line 485
    :goto_0
    return-void

    .line 446
    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/weirdvoice/ui/Myaccount;->currencies:Ljava/lang/String;

    const-string v12, "KO"

    if-ne v11, v12, :cond_1

    .line 447
    const-string v11, "MyAccount"

    const-string v12, "curr KO"

    invoke-static {v11, v12}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 451
    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/weirdvoice/ui/Myaccount;->spinner:Landroid/widget/Spinner;

    invoke-virtual {v11}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 454
    .local v7, "newcurrency":Ljava/lang/String;
    const-string v11, "("

    invoke-virtual {v7, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 455
    .local v1, "a":I
    add-int/lit8 v11, v1, 0x1

    add-int/lit8 v12, v1, 0x4

    invoke-virtual {v7, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/weirdvoice/ui/Myaccount;->currency:Ljava/lang/String;

    .line 459
    const-string v11, ":"

    invoke-static {v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/weirdvoice/ui/Myaccount;->currencies:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v10

    .line 460
    .local v10, "x":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v11, v10

    if-lt v4, v11, :cond_2

    .line 474
    const v11, 0x7f0b0109

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/weirdvoice/ui/Myaccount;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 477
    .local v8, "piggy_balance":Landroid/widget/TextView;
    :try_start_0
    const-string v11, ","

    const-string v12, "."

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 478
    .local v9, "tmpbalance":Ljava/lang/String;
    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 480
    .local v3, "f":F
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "%.2f"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/weirdvoice/ui/Myaccount;->exchange_rate:F

    mul-float/2addr v15, v3

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/weirdvoice/ui/Myaccount;->currency:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 482
    .end local v3    # "f":F
    .end local v9    # "tmpbalance":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 483
    .local v2, "e":Ljava/lang/Exception;
    const-string v11, "MyAccount"

    const-string v12, "can\'t format bal"

    invoke-static {v11, v12}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 461
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v8    # "piggy_balance":Landroid/widget/TextView;
    :cond_2
    aget-object v6, v10, v4

    .line 462
    .local v6, "line":Ljava/lang/String;
    const/4 v11, 0x0

    const/4 v12, 0x3

    invoke-virtual {v6, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/weirdvoice/ui/Myaccount;->currency:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 464
    const-string v11, "/"

    invoke-static {v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v5

    .line 465
    .local v5, "item":[Ljava/lang/String;
    const/4 v11, 0x2

    aget-object v11, v5, v11

    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/weirdvoice/ui/Myaccount;->exchange_rate:F

    .line 460
    .end local v5    # "item":[Ljava/lang/String;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1
.end method

.method private getVoiceValue(I)F
    .locals 4
    .param p1, "progress"    # I

    .prologue
    const v3, 0x3b449ba6    # 0.003f

    const v2, 0x3a83126f    # 0.001f

    .line 363
    const/16 v0, 0x64

    if-ge p1, v0, :cond_0

    .line 364
    int-to-float v0, p1

    mul-float/2addr v0, v3

    const v1, 0x3dcccccd    # 0.1f

    add-float/2addr v0, v1

    .line 383
    :goto_0
    return v0

    .line 365
    :cond_0
    const/16 v0, 0xc8

    if-ge p1, v0, :cond_1

    .line 366
    int-to-float v0, p1

    const/high16 v1, 0x42c80000    # 100.0f

    sub-float/2addr v0, v1

    mul-float/2addr v0, v3

    const v1, 0x3ecccccd    # 0.4f

    add-float/2addr v0, v1

    goto :goto_0

    .line 367
    :cond_1
    const/16 v0, 0x12c

    if-ge p1, v0, :cond_2

    .line 368
    int-to-float v0, p1

    const/high16 v1, 0x43480000    # 200.0f

    sub-float/2addr v0, v1

    mul-float/2addr v0, v2

    const v1, 0x3f333333    # 0.7f

    add-float/2addr v0, v1

    goto :goto_0

    .line 369
    :cond_2
    const/16 v0, 0x190

    if-ge p1, v0, :cond_3

    .line 370
    int-to-float v0, p1

    const/high16 v1, 0x43960000    # 300.0f

    sub-float/2addr v0, v1

    mul-float/2addr v0, v2

    const v1, 0x3f4ccccd    # 0.8f

    add-float/2addr v0, v1

    goto :goto_0

    .line 371
    :cond_3
    const/16 v0, 0x1f4

    if-ge p1, v0, :cond_4

    .line 372
    int-to-float v0, p1

    const/high16 v1, 0x43c80000    # 400.0f

    sub-float/2addr v0, v1

    mul-float/2addr v0, v2

    const v1, 0x3f666666    # 0.9f

    add-float/2addr v0, v1

    goto :goto_0

    .line 373
    :cond_4
    const/16 v0, 0x258

    if-ge p1, v0, :cond_5

    .line 374
    int-to-float v0, p1

    const/high16 v1, 0x43fa0000    # 500.0f

    sub-float/2addr v0, v1

    mul-float/2addr v0, v3

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    goto :goto_0

    .line 375
    :cond_5
    const/16 v0, 0x2bc

    if-ge p1, v0, :cond_6

    .line 376
    int-to-float v0, p1

    const/high16 v1, 0x44160000    # 600.0f

    sub-float/2addr v0, v1

    const v1, 0x3b9374bc    # 0.0045f

    mul-float/2addr v0, v1

    const v1, 0x3fa66666    # 1.3f

    add-float/2addr v0, v1

    goto :goto_0

    .line 377
    :cond_6
    const/16 v0, 0x320

    if-ge p1, v0, :cond_7

    .line 378
    int-to-float v0, p1

    const/high16 v1, 0x442f0000    # 700.0f

    sub-float/2addr v0, v1

    const v1, 0x3bc49ba6    # 0.006f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3fe00000    # 1.75f

    add-float/2addr v0, v1

    goto :goto_0

    .line 379
    :cond_7
    const/16 v0, 0x384

    if-ge p1, v0, :cond_8

    .line 380
    int-to-float v0, p1

    const/high16 v1, 0x44480000    # 800.0f

    sub-float/2addr v0, v1

    const v1, 0x3bf5c28f    # 0.0075f

    mul-float/2addr v0, v1

    const v1, 0x40166666    # 2.35f

    add-float/2addr v0, v1

    goto :goto_0

    .line 381
    :cond_8
    const/16 v0, 0x3e8

    if-ge p1, v0, :cond_9

    .line 382
    int-to-float v0, p1

    const/high16 v1, 0x44610000    # 900.0f

    sub-float/2addr v0, v1

    const v1, 0x3c1374bc    # 0.009f

    mul-float/2addr v0, v1

    const v1, 0x40466666    # 3.1f

    add-float/2addr v0, v1

    goto/16 :goto_0

    .line 383
    :cond_9
    const/high16 v0, 0x40800000    # 4.0f

    goto/16 :goto_0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    .prologue
    .line 567
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/weirdvoice/ui/Myaccount;->thisContext:Landroid/content/Context;

    const-class v2, Lcom/weirdvoice/ui/SipHome;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 568
    .local v0, "goNext":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/weirdvoice/ui/Myaccount;->startActivity(Landroid/content/Intent;)V

    .line 569
    invoke-virtual {p0}, Lcom/weirdvoice/ui/Myaccount;->finish()V

    .line 570
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    const v3, 0x7f03004b

    invoke-virtual {p0, v3}, Lcom/weirdvoice/ui/Myaccount;->setContentView(I)V

    .line 72
    const v3, 0x7f0b0091

    invoke-virtual {p0, v3}, Lcom/weirdvoice/ui/Myaccount;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    iput-object v3, p0, Lcom/weirdvoice/ui/Myaccount;->spinner:Landroid/widget/Spinner;

    .line 73
    const v3, 0x7f0e0003

    const v4, 0x1090008

    invoke-static {p0, v3, v4}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 74
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v3, 0x1090009

    invoke-virtual {v0, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 75
    iget-object v3, p0, Lcom/weirdvoice/ui/Myaccount;->spinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 76
    iget-object v3, p0, Lcom/weirdvoice/ui/Myaccount;->spinner:Landroid/widget/Spinner;

    invoke-virtual {v3, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 78
    const v3, 0x7f0b010a

    invoke-virtual {p0, v3}, Lcom/weirdvoice/ui/Myaccount;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 79
    .local v2, "order":Landroid/widget/Button;
    new-instance v3, Lcom/weirdvoice/ui/Myaccount$2;

    invoke-direct {v3, p0}, Lcom/weirdvoice/ui/Myaccount$2;-><init>(Lcom/weirdvoice/ui/Myaccount;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    const v3, 0x7f0b010b

    invoke-virtual {p0, v3}, Lcom/weirdvoice/ui/Myaccount;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 118
    .local v1, "delCalls":Landroid/widget/Button;
    new-instance v3, Lcom/weirdvoice/ui/Myaccount$3;

    invoke-direct {v3, p0}, Lcom/weirdvoice/ui/Myaccount$3;-><init>(Lcom/weirdvoice/ui/Myaccount;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    new-instance v3, Lcom/weirdvoice/ui/Myaccount$CurrTask;

    invoke-direct {v3, p0}, Lcom/weirdvoice/ui/Myaccount$CurrTask;-><init>(Lcom/weirdvoice/ui/Myaccount;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, ""

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Lcom/weirdvoice/ui/Myaccount$CurrTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 127
    iget-object v3, p0, Lcom/weirdvoice/ui/Myaccount;->thisContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/weirdvoice/ui/Myaccount;->zprefs:Landroid/content/SharedPreferences;

    .line 129
    iget-object v3, p0, Lcom/weirdvoice/ui/Myaccount;->zprefs:Landroid/content/SharedPreferences;

    const-string v4, "isoctry"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/weirdvoice/ui/Myaccount;->oldCtryIso:Ljava/lang/String;

    .line 131
    iget-object v3, p0, Lcom/weirdvoice/ui/Myaccount;->oldCtryIso:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 132
    const-string v3, ""

    iput-object v3, p0, Lcom/weirdvoice/ui/Myaccount;->oldCtryIso:Ljava/lang/String;

    .line 134
    :cond_0
    invoke-direct {p0}, Lcom/weirdvoice/ui/Myaccount;->displayCountry()V

    .line 135
    invoke-direct {p0}, Lcom/weirdvoice/ui/Myaccount;->displayWeird()V

    .line 137
    return-void
.end method

.method public bridge synthetic onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 20
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
    .line 388
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/weirdvoice/ui/Myaccount;->currencies:Ljava/lang/String;

    if-nez v15, :cond_1

    .line 441
    :cond_0
    :goto_0
    return-void

    .line 390
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/weirdvoice/ui/Myaccount;->currencies:Ljava/lang/String;

    const-string v16, "KO"

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_2

    .line 391
    const-string v15, "MyAccount"

    const-string v16, "can\'t read curr"

    invoke-static/range {v15 .. v16}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 395
    :cond_2
    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 398
    .local v9, "newcurrency":Ljava/lang/String;
    const-string v15, "("

    invoke-virtual {v9, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 399
    .local v2, "a":I
    add-int/lit8 v15, v2, 0x1

    add-int/lit8 v16, v2, 0x4

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/weirdvoice/ui/Myaccount;->currency:Ljava/lang/String;

    .line 403
    const-string v15, ":"

    invoke-static {v15}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/ui/Myaccount;->currencies:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v14

    .line 404
    .local v14, "x":[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    array-length v15, v14

    if-lt v6, v15, :cond_3

    .line 418
    const v15, 0x7f0b0109

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/weirdvoice/ui/Myaccount;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 421
    .local v10, "piggy_balance":Landroid/widget/TextView;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/weirdvoice/ui/Myaccount;->thisContext:Landroid/content/Context;

    invoke-static {v15}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/weirdvoice/ui/Myaccount;->zprefs:Landroid/content/SharedPreferences;

    .line 422
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/weirdvoice/ui/Myaccount;->zprefs:Landroid/content/SharedPreferences;

    const-string v16, "lastbal"

    const-string v17, "0"

    invoke-interface/range {v15 .. v17}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 423
    .local v13, "tmpbalance":Ljava/lang/String;
    const-string v15, ","

    const-string v16, "."

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 424
    invoke-static {v13}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    .line 426
    .local v5, "f":F
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "%.2f"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/weirdvoice/ui/Myaccount;->exchange_rate:F

    move/from16 v19, v0

    mul-float v19, v19, v5

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/ui/Myaccount;->currency:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 428
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/weirdvoice/ui/Myaccount;->thisContext:Landroid/content/Context;

    invoke-static {v15}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/weirdvoice/ui/Myaccount;->zprefs:Landroid/content/SharedPreferences;

    .line 429
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/weirdvoice/ui/Myaccount;->zprefs:Landroid/content/SharedPreferences;

    const-string v16, "zecurrency"

    const-string v17, "USD"

    invoke-interface/range {v15 .. v17}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 431
    .local v11, "selcurr":Ljava/lang/String;
    const-string v15, "("

    invoke-virtual {v11, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 432
    .local v3, "b":I
    add-int/lit8 v15, v3, 0x1

    add-int/lit8 v16, v3, 0x4

    move/from16 v0, v16

    invoke-virtual {v11, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v12

    .line 434
    .local v12, "selcurrShort":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/weirdvoice/ui/Myaccount;->currency:Ljava/lang/String;

    invoke-virtual {v12, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 435
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/weirdvoice/ui/Myaccount;->zprefs:Landroid/content/SharedPreferences;

    invoke-interface {v15}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 436
    .local v4, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v15, "zecurrency"

    invoke-interface {v4, v15, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 437
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 439
    .end local v3    # "b":I
    .end local v4    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v5    # "f":F
    .end local v11    # "selcurr":Ljava/lang/String;
    .end local v12    # "selcurrShort":Ljava/lang/String;
    .end local v13    # "tmpbalance":Ljava/lang/String;
    :catch_0
    move-exception v15

    goto/16 :goto_0

    .line 405
    .end local v10    # "piggy_balance":Landroid/widget/TextView;
    :cond_3
    aget-object v8, v14, v6

    .line 406
    .local v8, "line":Ljava/lang/String;
    const/4 v15, 0x0

    const/16 v16, 0x3

    move/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/ui/Myaccount;->currency:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 408
    const-string v15, "/"

    invoke-static {v15}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v7

    .line 409
    .local v7, "item":[Ljava/lang/String;
    const/4 v15, 0x2

    aget-object v15, v7, v15

    invoke-static {v15}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/weirdvoice/ui/Myaccount;->exchange_rate:F

    .line 404
    .end local v7    # "item":[Ljava/lang/String;
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1
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
    .line 489
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 580
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/weirdvoice/ui/Myaccount;->thisContext:Landroid/content/Context;

    const-class v2, Lcom/weirdvoice/ui/SipHome;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 581
    .local v0, "goNext":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/weirdvoice/ui/Myaccount;->startActivity(Landroid/content/Intent;)V

    .line 582
    invoke-virtual {p0}, Lcom/weirdvoice/ui/Myaccount;->finish()V

    .line 583
    const/4 v1, 0x1

    return v1
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 574
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onStart()V

    .line 575
    invoke-virtual {p0}, Lcom/weirdvoice/ui/Myaccount;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 576
    return-void
.end method

.method public bridge synthetic startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-super/range {p0 .. p6}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    return-void
.end method

.method public bridge synthetic startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-super/range {p0 .. p7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void
.end method
