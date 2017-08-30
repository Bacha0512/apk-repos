.class public Lcom/rami_bar/fun_call/activities/FragmentDailyBonus;
.super Landroid/support/v4/app/Fragment;
.source "FragmentDailyBonus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rami_bar/fun_call/activities/FragmentDailyBonus$DailyBonusInterface;
    }
.end annotation


# static fields
.field public static final BONUS_READY:Ljava/lang/String; = "ready"

.field public static final BONUS_WAIT:Ljava/lang/String; = "wait"


# instance fields
.field private bt_bonus_approve:Landroid/widget/Button;

.field private cb_notify_approve:Landroid/widget/Switch;

.field private rl_bonus_ready:Landroid/widget/RelativeLayout;

.field private rl_bonus_wait:Landroid/widget/RelativeLayout;

.field private tv_bonus_wait_time:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/rami_bar/fun_call/activities/FragmentDailyBonus;)V
    .locals 0
    .param p0, "x0"    # Lcom/rami_bar/fun_call/activities/FragmentDailyBonus;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/FragmentDailyBonus;->getDailyBonus()V

    return-void
.end method

.method static synthetic access$100(Lcom/rami_bar/fun_call/activities/FragmentDailyBonus;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/rami_bar/fun_call/activities/FragmentDailyBonus;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentDailyBonus;->tv_bonus_wait_time:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/rami_bar/fun_call/activities/FragmentDailyBonus;)V
    .locals 0
    .param p0, "x0"    # Lcom/rami_bar/fun_call/activities/FragmentDailyBonus;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/FragmentDailyBonus;->setBonusReady()V

    return-void
.end method

.method static synthetic access$300(Lcom/rami_bar/fun_call/activities/FragmentDailyBonus;J)V
    .locals 1
    .param p0, "x0"    # Lcom/rami_bar/fun_call/activities/FragmentDailyBonus;
    .param p1, "x1"    # J

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/rami_bar/fun_call/activities/FragmentDailyBonus;->setBonusWait(J)V

    return-void
.end method

.method private static convert(Ljava/lang/String;)J
    .locals 10
    .param p0, "time"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x2

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    .line 99
    const-string v4, ":"

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 101
    .local v3, "times":[Ljava/lang/String;
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 102
    .local v0, "hour":Ljava/lang/Long;
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 103
    .local v1, "min":Ljava/lang/Long;
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 104
    .local v2, "sec":Ljava/lang/Long;
    array-length v4, v3

    if-lez v4, :cond_0

    .line 105
    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 107
    array-length v4, v3

    if-le v4, v5, :cond_0

    .line 108
    aget-object v4, v3, v5

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    .line 109
    array-length v4, v3

    if-le v4, v8, :cond_0

    .line 110
    aget-object v4, v3, v8

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    .line 115
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0xe10

    mul-long/2addr v4, v6

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x3c

    mul-long/2addr v6, v8

    add-long/2addr v4, v6

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    add-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    return-wide v4
.end method

.method private getDailyBonus()V
    .locals 8

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/rami_bar/fun_call/activities/FragmentDailyBonus;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const v6, 0x7f0900a0

    invoke-virtual {p0, v6}, Lcom/rami_bar/fun_call/activities/FragmentDailyBonus;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/rami_bar/fun_call/utiles/Functions;->startProgressDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 148
    new-instance v4, Lcom/rami_bar/fun_call/objects/send/JsonSendDailyBonus;

    invoke-direct {v4}, Lcom/rami_bar/fun_call/objects/send/JsonSendDailyBonus;-><init>()V

    .line 149
    .local v4, "send":Lcom/rami_bar/fun_call/objects/send/JsonSendDailyBonus;
    invoke-virtual {p0}, Lcom/rami_bar/fun_call/activities/FragmentDailyBonus;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/rami_bar/fun_call/utiles/SharedUser;->getInstance(Landroid/content/Context;)Lcom/rami_bar/fun_call/utiles/SharedUser;

    move-result-object v5

    invoke-virtual {v5}, Lcom/rami_bar/fun_call/utiles/SharedUser;->getEmail()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/rami_bar/fun_call/objects/send/JsonSendDailyBonus;->email:Ljava/lang/String;

    .line 150
    iget-object v5, p0, Lcom/rami_bar/fun_call/activities/FragmentDailyBonus;->cb_notify_approve:Landroid/widget/Switch;

    invoke-virtual {v5}, Landroid/widget/Switch;->isChecked()Z

    move-result v5

    iput-boolean v5, v4, Lcom/rami_bar/fun_call/objects/send/JsonSendDailyBonus;->send_push:Z

    .line 152
    new-instance v5, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v5}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    new-instance v6, Lcom/rami_bar/fun_call/utiles/EncryptionInterceptor;

    invoke-direct {v6}, Lcom/rami_bar/fun_call/utiles/EncryptionInterceptor;-><init>()V

    invoke-virtual {v5, v6}, Lokhttp3/OkHttpClient$Builder;->addNetworkInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v2

    .line 154
    .local v2, "client":Lokhttp3/OkHttpClient;
    new-instance v5, Lretrofit2/Retrofit$Builder;

    invoke-direct {v5}, Lretrofit2/Retrofit$Builder;-><init>()V

    sget-object v6, Lcom/rami_bar/fun_call/utiles/Constants;->API_VOIP:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v5

    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v6

    invoke-virtual {v5, v6}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v5

    invoke-virtual {v5, v2}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v3

    .line 155
    .local v3, "retrofit":Lretrofit2/Retrofit;
    const-class v5, Lcom/rami_bar/fun_call/activities/FragmentDailyBonus$DailyBonusInterface;

    invoke-virtual {v3, v5}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rami_bar/fun_call/activities/FragmentDailyBonus$DailyBonusInterface;

    .line 156
    .local v0, "anInterface":Lcom/rami_bar/fun_call/activities/FragmentDailyBonus$DailyBonusInterface;
    invoke-interface {v0, v4}, Lcom/rami_bar/fun_call/activities/FragmentDailyBonus$DailyBonusInterface;->send(Lcom/rami_bar/fun_call/objects/send/JsonSendDailyBonus;)Lretrofit2/Call;

    move-result-object v1

    .line 157
    .local v1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lokhttp3/ResponseBody;>;"
    new-instance v5, Lcom/rami_bar/fun_call/activities/FragmentDailyBonus$3;

    invoke-direct {v5, p0}, Lcom/rami_bar/fun_call/activities/FragmentDailyBonus$3;-><init>(Lcom/rami_bar/fun_call/activities/FragmentDailyBonus;)V

    invoke-interface {v1, v5}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 184
    return-void
.end method

.method private getViewsIDs(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 74
    const v0, 0x7f100167

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentDailyBonus;->cb_notify_approve:Landroid/widget/Switch;

    .line 75
    const v0, 0x7f100168

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentDailyBonus;->bt_bonus_approve:Landroid/widget/Button;

    .line 76
    const v0, 0x7f100169

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentDailyBonus;->rl_bonus_wait:Landroid/widget/RelativeLayout;

    .line 77
    const v0, 0x7f100166

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentDailyBonus;->rl_bonus_ready:Landroid/widget/RelativeLayout;

    .line 78
    const v0, 0x7f10016c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentDailyBonus;->tv_bonus_wait_time:Landroid/widget/TextView;

    .line 79
    return-void
.end method

.method private handleCallbacks()V
    .locals 3

    .prologue
    .line 64
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentDailyBonus;->bt_bonus_approve:Landroid/widget/Button;

    new-instance v1, Lcom/rami_bar/fun_call/activities/FragmentDailyBonus$1;

    invoke-direct {v1, p0}, Lcom/rami_bar/fun_call/activities/FragmentDailyBonus$1;-><init>(Lcom/rami_bar/fun_call/activities/FragmentDailyBonus;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

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

    const-string v2, "Approve"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    const-string v2, "clicked"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 71
    return-void
.end method

.method private setBonusReady()V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentDailyBonus;->rl_bonus_wait:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 142
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentDailyBonus;->rl_bonus_ready:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 143
    return-void
.end method

.method private setBonusWait(J)V
    .locals 7
    .param p1, "millisInFuture"    # J

    .prologue
    .line 119
    new-instance v0, Lcom/rami_bar/fun_call/activities/FragmentDailyBonus$2;

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    move-wide v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/rami_bar/fun_call/activities/FragmentDailyBonus$2;-><init>(Lcom/rami_bar/fun_call/activities/FragmentDailyBonus;JJ)V

    .line 135
    .local v0, "countDownTimer":Landroid/os/CountDownTimer;
    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/FragmentDailyBonus;->rl_bonus_wait:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 136
    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/FragmentDailyBonus;->rl_bonus_ready:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 137
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 138
    return-void
.end method

.method private setDataToViews()V
    .locals 4

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/rami_bar/fun_call/activities/FragmentDailyBonus;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "suggestion"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/rami_bar/fun_call/objects/receive/Suggestion;

    .line 84
    .local v0, "suggestion":Lcom/rami_bar/fun_call/objects/receive/Suggestion;
    if-nez v0, :cond_0

    .line 96
    :goto_0
    return-void

    .line 88
    :cond_0
    iget-object v2, v0, Lcom/rami_bar/fun_call/objects/receive/Suggestion;->action_data:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 90
    :pswitch_0
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/FragmentDailyBonus;->setBonusReady()V

    goto :goto_0

    .line 88
    :sswitch_0
    const-string v3, "ready"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_1
    const-string v3, "wait"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    .line 93
    :pswitch_1
    iget-object v1, v0, Lcom/rami_bar/fun_call/objects/receive/Suggestion;->text:Ljava/lang/String;

    invoke-static {v1}, Lcom/rami_bar/fun_call/activities/FragmentDailyBonus;->convert(Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/rami_bar/fun_call/activities/FragmentDailyBonus;->setBonusWait(J)V

    goto :goto_0

    .line 88
    nop

    :sswitch_data_0
    .sparse-switch
        0x379175 -> :sswitch_1
        0x675d9a3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 52
    const v1, 0x7f04003d

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 54
    .local v0, "v":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/rami_bar/fun_call/activities/FragmentDailyBonus;->getViewsIDs(Landroid/view/View;)V

    .line 56
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/FragmentDailyBonus;->setDataToViews()V

    .line 58
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/FragmentDailyBonus;->handleCallbacks()V

    .line 60
    return-object v0
.end method
