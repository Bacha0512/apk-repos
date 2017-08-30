.class public Lcom/rami_bar/fun_call/activities/ActivitySettings;
.super Landroid/app/Activity;
.source "ActivitySettings.java"


# instance fields
.field private cb_notification:Landroid/widget/CheckBox;

.field private plus_one_button:Lcom/google/android/gms/plus/PlusOneButton;

.field private tv_email_userid:Landroid/widget/TextView;

.field private tv_email_version:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private getActivity()Landroid/app/Activity;
    .locals 0

    .prologue
    .line 118
    return-object p0
.end method

.method private getViewsIds()V
    .locals 1

    .prologue
    .line 103
    const v0, 0x7f10011c

    invoke-virtual {p0, v0}, Lcom/rami_bar/fun_call/activities/ActivitySettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivitySettings;->cb_notification:Landroid/widget/CheckBox;

    .line 104
    const v0, 0x7f100105

    invoke-virtual {p0, v0}, Lcom/rami_bar/fun_call/activities/ActivitySettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivitySettings;->tv_email_userid:Landroid/widget/TextView;

    .line 105
    const v0, 0x7f100106

    invoke-virtual {p0, v0}, Lcom/rami_bar/fun_call/activities/ActivitySettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivitySettings;->tv_email_version:Landroid/widget/TextView;

    .line 106
    const v0, 0x7f10011d

    invoke-virtual {p0, v0}, Lcom/rami_bar/fun_call/activities/ActivitySettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/plus/PlusOneButton;

    iput-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivitySettings;->plus_one_button:Lcom/google/android/gms/plus/PlusOneButton;

    .line 107
    return-void
.end method

.method private setDataToViews()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 110
    sget-object v0, Lcom/rami_bar/fun_call/activities/ActivityMain;->json_get_caller_info:Lcom/rami_bar/fun_call/objects/receive/JsonGetCallerInfo;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivitySettings;->cb_notification:Landroid/widget/CheckBox;

    sget-object v1, Lcom/rami_bar/fun_call/activities/ActivityMain;->json_get_caller_info:Lcom/rami_bar/fun_call/objects/receive/JsonGetCallerInfo;

    iget-boolean v1, v1, Lcom/rami_bar/fun_call/objects/receive/JsonGetCallerInfo;->allow_push_noti:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivitySettings;->tv_email_userid:Landroid/widget/TextView;

    const v1, 0x7f0900d2

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/rami_bar/fun_call/utiles/SharedUser;->getInstance(Landroid/content/Context;)Lcom/rami_bar/fun_call/utiles/SharedUser;

    move-result-object v3

    invoke-virtual {v3}, Lcom/rami_bar/fun_call/utiles/SharedUser;->getEmail()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/rami_bar/fun_call/activities/ActivitySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivitySettings;->tv_email_version:Landroid/widget/TextView;

    const v1, 0x7f0900d3

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/rami_bar/fun_call/utiles/Functions;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/rami_bar/fun_call/activities/ActivitySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    return-void
.end method


# virtual methods
.method public onChangeNumber(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 80
    new-instance v0, Landroid/content/Intent;

    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/ActivitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/rami_bar/fun_call/activities/ActivitySettings;->startActivity(Landroid/content/Intent;)V

    .line 82
    sget-object v0, Lcom/rami_bar/fun_call/utiles/MyApp;->tracker:Lcom/google/android/gms/analytics/Tracker;

    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    const-string v2, "ChangeNumber"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    const-string v2, "click"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 83
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 27
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const v0, 0x7f04001f

    invoke-virtual {p0, v0}, Lcom/rami_bar/fun_call/activities/ActivitySettings;->setContentView(I)V

    .line 30
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/ActivitySettings;->getViewsIds()V

    .line 32
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/ActivitySettings;->setDataToViews()V

    .line 33
    return-void
.end method

.method public onInstructionsVideo(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/ActivitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0900d6

    invoke-virtual {p0, v1}, Lcom/rami_bar/fun_call/activities/ActivitySettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/rami_bar/fun_call/utiles/Functions;->openURL(Landroid/app/Activity;Ljava/lang/String;)V

    .line 70
    sget-object v0, Lcom/rami_bar/fun_call/utiles/MyApp;->tracker:Lcom/google/android/gms/analytics/Tracker;

    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    const-string v2, "Instructions"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    const-string v2, "click"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 71
    return-void
.end method

.method public onNotificationClicked(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivitySettings;->cb_notification:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1"

    :goto_0
    sput-object v0, Lcom/rami_bar/fun_call/activities/ActivityMain;->notificationAllow:Ljava/lang/String;

    .line 58
    sget-object v0, Lcom/rami_bar/fun_call/utiles/MyApp;->tracker:Lcom/google/android/gms/analytics/Tracker;

    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    const-string v2, "Notification"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    sget-object v2, Lcom/rami_bar/fun_call/activities/ActivityMain;->notificationAllow:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 59
    return-void

    .line 57
    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 36
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 37
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivitySettings;->plus_one_button:Lcom/google/android/gms/plus/PlusOneButton;

    const v1, 0x7f090097

    invoke-virtual {p0, v1}, Lcom/rami_bar/fun_call/activities/ActivitySettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1e

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/plus/PlusOneButton;->initialize(Ljava/lang/String;I)V

    .line 38
    return-void
.end method

.method public onShareOn(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 87
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 88
    .local v1, "i":Landroid/content/Intent;
    const-string v2, "text/plain"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    const-string v2, "android.intent.extra.SUBJECT"

    const v3, 0x7f0900d4

    invoke-virtual {p0, v3}, Lcom/rami_bar/fun_call/activities/ActivitySettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    const-string v2, "android.intent.extra.TEXT"

    const v3, 0x7f0900d9

    invoke-virtual {p0, v3}, Lcom/rami_bar/fun_call/activities/ActivitySettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    const v2, 0x7f0900ac

    invoke-virtual {p0, v2}, Lcom/rami_bar/fun_call/activities/ActivitySettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/rami_bar/fun_call/activities/ActivitySettings;->startActivity(Landroid/content/Intent;)V

    .line 93
    sget-object v2, Lcom/rami_bar/fun_call/utiles/MyApp;->tracker:Lcom/google/android/gms/analytics/Tracker;

    new-instance v3, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v3

    const-string v4, "ShareOn"

    invoke-virtual {v3, v4}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v3

    const-string v4, "click"

    invoke-virtual {v3, v4}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .end local v1    # "i":Landroid/content/Intent;
    :goto_0
    return-void

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 43
    invoke-static {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->reportActivityStart(Landroid/app/Activity;)V

    .line 44
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 48
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 49
    invoke-static {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->reportActivityStop(Landroid/app/Activity;)V

    .line 50
    return-void
.end method

.method public onSupport(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 74
    new-instance v0, Landroid/content/Intent;

    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/ActivitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/rami_bar/fun_call/activities/ActivityEmail;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/rami_bar/fun_call/activities/ActivitySettings;->startActivity(Landroid/content/Intent;)V

    .line 76
    sget-object v0, Lcom/rami_bar/fun_call/utiles/MyApp;->tracker:Lcom/google/android/gms/analytics/Tracker;

    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    const-string v2, "Support"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    const-string v2, "click"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 77
    return-void
.end method

.method public onTerms(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/ActivitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0900eb

    invoke-virtual {p0, v1}, Lcom/rami_bar/fun_call/activities/ActivitySettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0900da

    invoke-virtual {p0, v2}, Lcom/rami_bar/fun_call/activities/ActivitySettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/rami_bar/fun_call/utiles/Functions;->openWebDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    sget-object v0, Lcom/rami_bar/fun_call/utiles/MyApp;->tracker:Lcom/google/android/gms/analytics/Tracker;

    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    const-string v2, "Terms"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    const-string v2, "click"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 65
    return-void
.end method
