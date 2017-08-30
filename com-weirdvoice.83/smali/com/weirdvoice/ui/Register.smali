.class public Lcom/weirdvoice/ui/Register;
.super Landroid/app/Activity;
.source "Register.java"


# static fields
.field private static DEFAULT_ISO_COUNTRY:Ljava/lang/String; = null

.field private static LOGTAG:Ljava/lang/String; = null

.field private static final REQUEST_READ_PHONE_STATE:I = 0x1


# instance fields
.field private progDialog:Landroid/app/ProgressDialog;

.field private regCtryIso:Ljava/lang/String;

.field private thiscontext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-string v0, "Register"

    sput-object v0, Lcom/weirdvoice/ui/Register;->LOGTAG:Ljava/lang/String;

    .line 63
    const-string v0, "US"

    sput-object v0, Lcom/weirdvoice/ui/Register;->DEFAULT_ISO_COUNTRY:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 64
    iput-object p0, p0, Lcom/weirdvoice/ui/Register;->thiscontext:Landroid/content/Context;

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/weirdvoice/ui/Register;->progDialog:Landroid/app/ProgressDialog;

    .line 66
    const-string v0, ""

    iput-object v0, p0, Lcom/weirdvoice/ui/Register;->regCtryIso:Ljava/lang/String;

    .line 61
    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/weirdvoice/ui/Register;->LOGTAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/weirdvoice/ui/Register;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/weirdvoice/ui/Register;->progDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$2(Lcom/weirdvoice/ui/Register;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/weirdvoice/ui/Register;->thiscontext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3(Lcom/weirdvoice/ui/Register;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/weirdvoice/ui/Register;->regCtryIso:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/weirdvoice/ui/Register;Landroid/app/ProgressDialog;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/weirdvoice/ui/Register;->progDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method private askPermissions()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 223
    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 224
    .local v0, "permissionCheck":I
    if-eqz v0, :cond_0

    .line 225
    new-array v1, v4, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "android.permission.READ_PHONE_STATE"

    aput-object v3, v1, v2

    invoke-static {p0, v1, v4}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 227
    :cond_0
    return-void
.end method

.method private displayCountry()V
    .locals 12

    .prologue
    .line 240
    sget-object v1, Lcom/weirdvoice/ui/Register;->LOGTAG:Ljava/lang/String;

    const-string v2, "displayCountry()"

    invoke-static {v1, v2}, Lcom/weirdvoice/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const v1, 0x7f0b0106

    invoke-virtual {p0, v1}, Lcom/weirdvoice/ui/Register;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 243
    .local v9, "ima_ctryFlag":Landroid/widget/ImageView;
    const v1, 0x7f0b0108

    invoke-virtual {p0, v1}, Lcom/weirdvoice/ui/Register;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 246
    .local v11, "tex_ctryName":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/weirdvoice/ui/Register;->getIntent()Landroid/content/Intent;

    move-result-object v8

    .line 247
    .local v8, "i":Landroid/content/Intent;
    const-string v1, "isocountry"

    invoke-virtual {v8, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 248
    const-string v1, "isocountry"

    invoke-virtual {v8, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/weirdvoice/ui/Register;->regCtryIso:Ljava/lang/String;

    .line 250
    :cond_0
    iget-object v1, p0, Lcom/weirdvoice/ui/Register;->regCtryIso:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 251
    invoke-direct {p0}, Lcom/weirdvoice/ui/Register;->getDeviceIsoCountry()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/weirdvoice/ui/Register;->regCtryIso:Ljava/lang/String;

    .line 253
    :cond_1
    iget-object v1, p0, Lcom/weirdvoice/ui/Register;->regCtryIso:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 255
    :try_start_0
    new-instance v0, Lcom/weirdvoice/toolbox/UpdateDB;

    iget-object v1, p0, Lcom/weirdvoice/ui/Register;->thiscontext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/weirdvoice/toolbox/UpdateDB;-><init>(Landroid/content/Context;)V

    .line 256
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

    iget-object v6, p0, Lcom/weirdvoice/ui/Register;->regCtryIso:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/weirdvoice/toolbox/UpdateDB;->getFieldValue(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .line 257
    .local v7, "ctryName":Ljava/lang/String;
    invoke-virtual {v11, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    invoke-virtual {p0}, Lcom/weirdvoice/ui/Register;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "flag_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/weirdvoice/ui/Register;->regCtryIso:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

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

    invoke-virtual {v9, v1}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    .end local v0    # "udb":Lcom/weirdvoice/toolbox/UpdateDB;
    .end local v7    # "ctryName":Ljava/lang/String;
    :cond_2
    :goto_0
    new-instance v1, Lcom/weirdvoice/ui/Register$2;

    invoke-direct {v1, p0}, Lcom/weirdvoice/ui/Register$2;-><init>(Lcom/weirdvoice/ui/Register;)V

    invoke-virtual {v9, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    const v1, 0x7f0b0107

    invoke-virtual {p0, v1}, Lcom/weirdvoice/ui/Register;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 275
    .local v10, "ima_ctryInfo":Landroid/widget/ImageView;
    new-instance v1, Lcom/weirdvoice/ui/Register$3;

    invoke-direct {v1, p0}, Lcom/weirdvoice/ui/Register$3;-><init>(Lcom/weirdvoice/ui/Register;)V

    invoke-virtual {v10, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 289
    return-void

    .line 259
    .end local v10    # "ima_ctryInfo":Landroid/widget/ImageView;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private getDeviceIsoCountry()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x2

    .line 292
    sget-object v0, Lcom/weirdvoice/ui/Register;->DEFAULT_ISO_COUNTRY:Ljava/lang/String;

    .line 294
    .local v0, "devIsoCtry":Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lcom/weirdvoice/ui/Register;->thiscontext:Landroid/content/Context;

    const-string v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 295
    .local v4, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v3

    .line 297
    .local v3, "simCountry":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v5, v7, :cond_0

    .line 298
    sget-object v5, Lcom/weirdvoice/ui/Register;->LOGTAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "SIM country: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 318
    .end local v3    # "simCountry":Ljava/lang/String;
    .end local v4    # "tm":Landroid/telephony/TelephonyManager;
    :goto_0
    return-object v1

    .line 302
    .restart local v3    # "simCountry":Ljava/lang/String;
    .restart local v4    # "tm":Landroid/telephony/TelephonyManager;
    :cond_0
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v5

    if-eq v5, v7, :cond_1

    .line 303
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v2

    .line 304
    .local v2, "networkCountry":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v5, v7, :cond_1

    .line 305
    sget-object v5, Lcom/weirdvoice/ui/Register;->LOGTAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "NTW country: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 310
    .end local v2    # "networkCountry":Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/weirdvoice/ui/Register;->thiscontext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v5, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 311
    .local v1, "localCountry":Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v5, v7, :cond_2

    .line 312
    sget-object v5, Lcom/weirdvoice/ui/Register;->LOGTAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "LOC country: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 317
    .end local v1    # "localCountry":Ljava/lang/String;
    .end local v3    # "simCountry":Ljava/lang/String;
    .end local v4    # "tm":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v5

    :cond_2
    move-object v1, v0

    .line 318
    goto :goto_0
.end method

.method private installDatabase()V
    .locals 4

    .prologue
    .line 230
    sget-object v1, Lcom/weirdvoice/ui/Register;->LOGTAG:Ljava/lang/String;

    const-string v2, "installDatabase()"

    invoke-static {v1, v2}, Lcom/weirdvoice/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    :try_start_0
    const-string v1, "zipPrepoDB"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/data/data/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/weirdvoice/utils/CustomDistribution;->getRootPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/databases"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/weirdvoice/utils/CustomDistribution;->getPrepoDb()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v1, v2, v3}, Lcom/weirdvoice/toolbox/FileInstaller;->unzipAsset(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    :goto_0
    sget-object v1, Lcom/weirdvoice/ui/Register;->LOGTAG:Ljava/lang/String;

    const-string v2, "installDatabase() ends"

    invoke-static {v1, v2}, Lcom/weirdvoice/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    return-void

    .line 233
    :catch_0
    move-exception v0

    .line 234
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/weirdvoice/ui/Register;->LOGTAG:Ljava/lang/String;

    const-string v2, "cant create prepo db"

    invoke-static {v1, v2}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 71
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    sget-object v5, Lcom/weirdvoice/ui/Register;->LOGTAG:Ljava/lang/String;

    const-string v6, "onCreate()"

    invoke-static {v5, v6}, Lcom/weirdvoice/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-direct {p0}, Lcom/weirdvoice/ui/Register;->askPermissions()V

    .line 93
    const v5, 0x7f030053

    invoke-virtual {p0, v5}, Lcom/weirdvoice/ui/Register;->setContentView(I)V

    .line 94
    const v5, 0x7f0b012c

    invoke-virtual {p0, v5}, Lcom/weirdvoice/ui/Register;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 95
    .local v3, "img_logo":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/weirdvoice/ui/Register;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {}, Lcom/weirdvoice/utils/CustomDistribution;->getlogo()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 99
    const v5, 0x7f0b012b

    invoke-virtual {p0, v5}, Lcom/weirdvoice/ui/Register;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ScrollView;

    .line 100
    .local v4, "scr_main":Landroid/widget/ScrollView;
    if-eqz v4, :cond_0

    .line 101
    invoke-static {}, Lcom/weirdvoice/utils/CustomDistribution;->getBG()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ScrollView;->setBackgroundResource(I)V

    .line 103
    :cond_0
    const v5, 0x7f0b012e

    invoke-virtual {p0, v5}, Lcom/weirdvoice/ui/Register;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 107
    .local v0, "but_register":Landroid/widget/Button;
    new-instance v5, Lcom/weirdvoice/ui/Register$1;

    invoke-direct {v5, p0, v0}, Lcom/weirdvoice/ui/Register$1;-><init>(Lcom/weirdvoice/ui/Register;Landroid/widget/Button;)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "data"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "data"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/weirdvoice/utils/CustomDistribution;->getRootPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "databases"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 200
    .local v2, "currentDBPath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/weirdvoice/utils/CustomDistribution;->getPrepoDb()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    .local v1, "currentDB":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 203
    invoke-direct {p0}, Lcom/weirdvoice/ui/Register;->installDatabase()V

    .line 205
    :cond_1
    invoke-direct {p0}, Lcom/weirdvoice/ui/Register;->displayCountry()V

    .line 206
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 210
    packed-switch p1, :pswitch_data_0

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 212
    :pswitch_0
    array-length v0, p3

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget v0, p3, v0

    goto :goto_0

    .line 210
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
