.class public Lcom/weirdvoice/ui/rates/TabRates;
.super Lcom/actionbarsherlock/app/SherlockFragmentActivity;
.source "TabRates.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/weirdvoice/ui/rates/TabRates$DownloadFileAsync;
    }
.end annotation


# static fields
.field public static final DIALOG_DOWNLOAD_PROGRESS:I


# instance fields
.field context:Landroid/content/Context;

.field private countryAdapter:Lcom/weirdvoice/ui/rates/CountryAdapter;

.field private countryArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/weirdvoice/ui/rates/ZeCountry;",
            ">;"
        }
    .end annotation
.end field

.field private countryList:Landroid/widget/ListView;

.field private mProgressDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;-><init>()V

    .line 33
    iput-object p0, p0, Lcom/weirdvoice/ui/rates/TabRates;->context:Landroid/content/Context;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/weirdvoice/ui/rates/TabRates;->countryArray:Ljava/util/ArrayList;

    .line 30
    return-void
.end method

.method static synthetic access$10(Lcom/weirdvoice/ui/rates/TabRates;)Lcom/weirdvoice/ui/rates/CountryAdapter;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/weirdvoice/ui/rates/TabRates;->countryAdapter:Lcom/weirdvoice/ui/rates/CountryAdapter;

    return-object v0
.end method

.method static synthetic access$5(Lcom/weirdvoice/ui/rates/TabRates;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/weirdvoice/ui/rates/TabRates;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$6(Lcom/weirdvoice/ui/rates/TabRates;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/weirdvoice/ui/rates/TabRates;->countryArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$7(Lcom/weirdvoice/ui/rates/TabRates;Lcom/weirdvoice/ui/rates/CountryAdapter;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/weirdvoice/ui/rates/TabRates;->countryAdapter:Lcom/weirdvoice/ui/rates/CountryAdapter;

    return-void
.end method

.method static synthetic access$8(Lcom/weirdvoice/ui/rates/TabRates;Landroid/widget/ListView;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/weirdvoice/ui/rates/TabRates;->countryList:Landroid/widget/ListView;

    return-void
.end method

.method static synthetic access$9(Lcom/weirdvoice/ui/rates/TabRates;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/weirdvoice/ui/rates/TabRates;->countryList:Landroid/widget/ListView;

    return-object v0
.end method

.method private startDownload()V
    .locals 5

    .prologue
    .line 97
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/weirdvoice/utils/CustomDistribution;->getRemoteServ()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/rat"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/weirdvoice/utils/CustomDistribution;->appid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".lst"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 98
    .local v1, "url":Ljava/lang/String;
    new-instance v2, Lcom/weirdvoice/ui/rates/TabRates$DownloadFileAsync;

    invoke-direct {v2, p0}, Lcom/weirdvoice/ui/rates/TabRates$DownloadFileAsync;-><init>(Lcom/weirdvoice/ui/rates/TabRates;)V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Lcom/weirdvoice/ui/rates/TabRates$DownloadFileAsync;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    .end local v1    # "url":Ljava/lang/String;
    :goto_0
    return-void

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Rates"

    const-string v3, "err downloading rates: "

    invoke-static {v2, v3}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 18
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 41
    invoke-super/range {p0 .. p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const v14, 0x7f030051

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/weirdvoice/ui/rates/TabRates;->setContentView(I)V

    .line 48
    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    .line 50
    .local v11, "ratesOK":Ljava/lang/Boolean;
    :try_start_0
    const-string v14, "rates"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/weirdvoice/ui/rates/TabRates;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v6

    .line 52
    .local v6, "instream":Ljava/io/InputStream;
    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 53
    .local v5, "inputreader":Ljava/io/InputStreamReader;
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 55
    .local v2, "buffreader":Ljava/io/BufferedReader;
    const-string v13, ""

    .line 56
    .local v13, "tmp":Ljava/lang/String;
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .local v8, "line":Ljava/lang/String;
    if-nez v8, :cond_1

    .line 63
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .end local v2    # "buffreader":Ljava/io/BufferedReader;
    .end local v5    # "inputreader":Ljava/io/InputStreamReader;
    .end local v6    # "instream":Ljava/io/InputStream;
    .end local v8    # "line":Ljava/lang/String;
    .end local v13    # "tmp":Ljava/lang/String;
    :goto_1
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 71
    new-instance v14, Lcom/weirdvoice/ui/rates/CountryAdapter;

    const v15, 0x7f03002d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/weirdvoice/ui/rates/TabRates;->countryArray:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v14, v0, v15, v1}, Lcom/weirdvoice/ui/rates/CountryAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/weirdvoice/ui/rates/TabRates;->countryAdapter:Lcom/weirdvoice/ui/rates/CountryAdapter;

    .line 72
    const v14, 0x7f0b0128

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/weirdvoice/ui/rates/TabRates;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ListView;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/weirdvoice/ui/rates/TabRates;->countryList:Landroid/widget/ListView;

    .line 73
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/weirdvoice/ui/rates/TabRates;->countryList:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/weirdvoice/ui/rates/TabRates;->countryAdapter:Lcom/weirdvoice/ui/rates/CountryAdapter;

    invoke-virtual {v14, v15}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 76
    invoke-virtual/range {p0 .. p0}, Lcom/weirdvoice/ui/rates/TabRates;->getBaseContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 77
    .local v10, "prefs":Landroid/content/SharedPreferences;
    const-string v14, "lastrateupdate"

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-interface {v10, v14, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 78
    .local v7, "lastRateUpdate":Ljava/lang/Long;
    new-instance v12, Ljava/util/Date;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    const-wide/32 v16, 0x240c8400

    add-long v14, v14, v16

    invoke-direct {v12, v14, v15}, Ljava/util/Date;-><init>(J)V

    .line 79
    .local v12, "thenPlusOneWeek":Ljava/util/Date;
    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    .line 80
    .local v9, "now":Ljava/util/Date;
    invoke-virtual {v12, v9}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 81
    invoke-direct/range {p0 .. p0}, Lcom/weirdvoice/ui/rates/TabRates;->startDownload()V

    .line 88
    .end local v7    # "lastRateUpdate":Ljava/lang/Long;
    .end local v9    # "now":Ljava/util/Date;
    .end local v10    # "prefs":Landroid/content/SharedPreferences;
    .end local v12    # "thenPlusOneWeek":Ljava/util/Date;
    :cond_0
    :goto_2
    return-void

    .line 57
    .restart local v2    # "buffreader":Ljava/io/BufferedReader;
    .restart local v5    # "inputreader":Ljava/io/InputStreamReader;
    .restart local v6    # "instream":Ljava/io/InputStream;
    .restart local v8    # "line":Ljava/lang/String;
    .restart local v13    # "tmp":Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string v14, "\\t"

    invoke-virtual {v8, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    aget-object v3, v14, v15

    .line 58
    .local v3, "country":Ljava/lang/String;
    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 59
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/weirdvoice/ui/rates/TabRates;->countryArray:Ljava/util/ArrayList;

    new-instance v15, Lcom/weirdvoice/ui/rates/ZeCountry;

    const-string v16, "\\t"

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x3

    aget-object v16, v16, v17

    move-object/from16 v0, v16

    invoke-direct {v15, v3, v0}, Lcom/weirdvoice/ui/rates/ZeCountry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 61
    :cond_2
    move-object v13, v3

    goto/16 :goto_0

    .line 65
    .end local v2    # "buffreader":Ljava/io/BufferedReader;
    .end local v3    # "country":Ljava/lang/String;
    .end local v5    # "inputreader":Ljava/io/InputStreamReader;
    .end local v6    # "instream":Ljava/io/InputStream;
    .end local v8    # "line":Ljava/lang/String;
    .end local v13    # "tmp":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 66
    .local v4, "e":Ljava/lang/Exception;
    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    .line 67
    const-string v14, "Rates"

    const-string v15, "err reading rates: "

    invoke-static {v14, v15}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 86
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/weirdvoice/ui/rates/TabRates;->startDownload()V

    goto :goto_2
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 106
    packed-switch p1, :pswitch_data_0

    .line 115
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 108
    :pswitch_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/weirdvoice/ui/rates/TabRates;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 109
    iget-object v0, p0, Lcom/weirdvoice/ui/rates/TabRates;->mProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f0c0272

    invoke-virtual {p0, v1}, Lcom/weirdvoice/ui/rates/TabRates;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v0, p0, Lcom/weirdvoice/ui/rates/TabRates;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 111
    iget-object v0, p0, Lcom/weirdvoice/ui/rates/TabRates;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 112
    iget-object v0, p0, Lcom/weirdvoice/ui/rates/TabRates;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 113
    iget-object v0, p0, Lcom/weirdvoice/ui/rates/TabRates;->mProgressDialog:Landroid/app/ProgressDialog;

    goto :goto_0

    .line 106
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
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

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 216
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/weirdvoice/ui/SipHome;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 217
    .local v0, "goNext":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/weirdvoice/ui/rates/TabRates;->startActivity(Landroid/content/Intent;)V

    .line 218
    invoke-virtual {p0}, Lcom/weirdvoice/ui/rates/TabRates;->finish()V

    .line 219
    const/4 v1, 0x1

    return v1
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 92
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onResume()V

    .line 93
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 210
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onStart()V

    .line 211
    invoke-virtual {p0}, Lcom/weirdvoice/ui/rates/TabRates;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 212
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
