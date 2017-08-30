.class public Lcom/weirdvoice/splash/Splash;
.super Landroid/app/Activity;
.source "Splash.java"


# instance fields
.field private final LOGTAG:Ljava/lang/String;

.field final mHandler:Landroid/os/Handler;

.field final mUpdateResults:Ljava/lang/Runnable;

.field nbLaunches:I

.field private netcnx:Ljava/lang/Boolean;

.field private netinit:Landroid/widget/TextView;

.field prefsWrapper:Lcom/weirdvoice/utils/PreferencesWrapper;

.field private thiscontext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 60
    const-string v0, "Splash"

    iput-object v0, p0, Lcom/weirdvoice/splash/Splash;->LOGTAG:Ljava/lang/String;

    .line 61
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/weirdvoice/splash/Splash;->netcnx:Ljava/lang/Boolean;

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lcom/weirdvoice/splash/Splash;->nbLaunches:I

    .line 64
    iput-object p0, p0, Lcom/weirdvoice/splash/Splash;->thiscontext:Landroid/content/Context;

    .line 150
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/weirdvoice/splash/Splash;->mHandler:Landroid/os/Handler;

    .line 152
    new-instance v0, Lcom/weirdvoice/splash/Splash$1;

    invoke-direct {v0, p0}, Lcom/weirdvoice/splash/Splash$1;-><init>(Lcom/weirdvoice/splash/Splash;)V

    iput-object v0, p0, Lcom/weirdvoice/splash/Splash;->mUpdateResults:Ljava/lang/Runnable;

    .line 59
    return-void
.end method

.method static synthetic access$0(Lcom/weirdvoice/splash/Splash;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/weirdvoice/splash/Splash;->thiscontext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/weirdvoice/splash/Splash;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/weirdvoice/splash/Splash;->netcnx:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$2(Lcom/weirdvoice/splash/Splash;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/weirdvoice/splash/Splash;->netinit:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/weirdvoice/splash/Splash;Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/weirdvoice/splash/Splash;->netcnx:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 69
    invoke-static {}, Lcom/weirdvoice/utils/CustomDistribution;->getLogLevel()I

    move-result v1

    invoke-static {v1}, Lcom/weirdvoice/utils/Log;->setLogLevel(I)V

    .line 70
    const-string v1, "Splash"

    const-string v2, "onCreate()"

    invoke-static {v1, v2}, Lcom/weirdvoice/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    const v1, 0x7f03005a

    invoke-virtual {p0, v1}, Lcom/weirdvoice/splash/Splash;->setContentView(I)V

    .line 74
    const v1, 0x7f0b0132

    invoke-virtual {p0, v1}, Lcom/weirdvoice/splash/Splash;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/weirdvoice/splash/Splash;->netinit:Landroid/widget/TextView;

    .line 75
    const v1, 0x7f0b0131

    invoke-virtual {p0, v1}, Lcom/weirdvoice/splash/Splash;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 76
    .local v0, "logo":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/weirdvoice/splash/Splash;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Lcom/weirdvoice/utils/CustomDistribution;->getlogo()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 78
    const-string v1, "Splash"

    const-string v2, "onCreate() ends"

    invoke-static {v1, v2}, Lcom/weirdvoice/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method protected onResume()V
    .locals 13

    .prologue
    const v12, 0x7f0c0247

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 83
    const-string v8, "Splash"

    const-string v9, "onResume()"

    invoke-static {v8, v9}, Lcom/weirdvoice/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 87
    const-string v8, "connectivity"

    invoke-virtual {p0, v8}, Lcom/weirdvoice/splash/Splash;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 89
    .local v0, "conMan":Landroid/net/ConnectivityManager;
    const/4 v1, 0x0

    .line 90
    .local v1, "mobile":Landroid/net/NetworkInfo$State;
    invoke-virtual {v0, v10}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    .line 91
    .local v4, "netmobile":Landroid/net/NetworkInfo;
    if-eqz v4, :cond_0

    .line 92
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    .line 94
    :cond_0
    const/4 v7, 0x0

    .line 95
    .local v7, "wifi":Landroid/net/NetworkInfo$State;
    invoke-virtual {v0, v11}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    .line 96
    .local v5, "netwifi":Landroid/net/NetworkInfo;
    if-eqz v5, :cond_1

    .line 97
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v7

    .line 100
    :cond_1
    sget-object v8, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v1, v8, :cond_2

    sget-object v8, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v1, v8, :cond_5

    .line 102
    :cond_2
    invoke-virtual {v0, v10}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 103
    invoke-virtual {v0, v10}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v3

    .line 104
    .local v3, "net":I
    const/4 v8, 0x2

    if-eq v3, v8, :cond_3

    if-ne v3, v11, :cond_4

    .line 106
    :cond_3
    const-string v8, "Splash"

    const-string v9, "not good"

    invoke-static {v8, v9}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-static {p0, v12, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 108
    invoke-virtual {p0}, Lcom/weirdvoice/splash/Splash;->finish()V

    .line 122
    .end local v3    # "net":I
    :cond_4
    :goto_0
    iget-object v8, p0, Lcom/weirdvoice/splash/Splash;->thiscontext:Landroid/content/Context;

    invoke-static {v8}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 123
    .local v2, "nbl":Landroid/content/SharedPreferences;
    const-string v8, "tribapp_nb_launches"

    invoke-interface {v2, v8, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcom/weirdvoice/splash/Splash;->nbLaunches:I

    .line 124
    const-string v8, "Splash"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "nbl: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v10, p0, Lcom/weirdvoice/splash/Splash;->nbLaunches:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/weirdvoice/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    new-instance v8, Lcom/weirdvoice/utils/PreferencesWrapper;

    invoke-direct {v8, p0}, Lcom/weirdvoice/utils/PreferencesWrapper;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/weirdvoice/splash/Splash;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesWrapper;

    .line 128
    new-instance v6, Lcom/weirdvoice/splash/Splash$2;

    invoke-direct {v6, p0}, Lcom/weirdvoice/splash/Splash$2;-><init>(Lcom/weirdvoice/splash/Splash;)V

    .line 147
    .local v6, "t":Ljava/lang/Thread;
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 148
    return-void

    .line 112
    .end local v2    # "nbl":Landroid/content/SharedPreferences;
    .end local v6    # "t":Ljava/lang/Thread;
    :cond_5
    sget-object v8, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v7, v8, :cond_6

    sget-object v8, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v7, v8, :cond_7

    .line 114
    :cond_6
    const-string v8, "Splash"

    const-string v9, "good"

    invoke-static {v8, v9}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 117
    :cond_7
    const-string v8, "Splash"

    const-string v9, "no wifi no data"

    invoke-static {v8, v9}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-static {p0, v12, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 119
    invoke-virtual {p0}, Lcom/weirdvoice/splash/Splash;->finish()V

    goto :goto_0
.end method
