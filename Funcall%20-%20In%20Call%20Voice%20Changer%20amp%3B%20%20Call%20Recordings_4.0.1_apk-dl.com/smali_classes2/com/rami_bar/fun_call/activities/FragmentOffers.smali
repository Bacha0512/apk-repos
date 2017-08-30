.class public Lcom/rami_bar/fun_call/activities/FragmentOffers;
.super Landroid/support/v4/app/Fragment;
.source "FragmentOffers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rami_bar/fun_call/activities/FragmentOffers$RewardedVideo;,
        Lcom/rami_bar/fun_call/activities/FragmentOffers$RewardedVideoInterface;
    }
.end annotation


# static fields
.field public static final IRONSOURCE_OFFERWALL:Ljava/lang/String; = "ironsource_offerwall"

.field public static final IRONSOURCE_VIDEO:Ljava/lang/String; = "ironsource_videos"

.field public static final TAPJOY_OFFERWALL:Ljava/lang/String; = "tapjoy_offerwall"

.field public static final ssAppKey:Ljava/lang/String; = "2f295c21"

.field public static final tapjoyKey:Ljava/lang/String; = "CFa-_F6jTkOTB0GxMOCPmwECIjOoRDr9mjyeVFZOPo2QyPn-0M54knTDHbrj"


# instance fields
.field private ib_offerwall_help:Landroid/widget/ImageButton;

.field private lv_ads:Landroid/widget/ListView;

.field private mAdsAdapter:Lcom/rami_bar/fun_call/adapters/AdsAdapter;

.field private mRewardedVideoAvailable:Z

.field private mTapjoyRequested:Z

.field private tjPlacement:Lcom/tapjoy/TJPlacement;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/rami_bar/fun_call/activities/FragmentOffers;)V
    .locals 0
    .param p0, "x0"    # Lcom/rami_bar/fun_call/activities/FragmentOffers;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/FragmentOffers;->onTapJoyOfferwall()V

    return-void
.end method

.method static synthetic access$100(Lcom/rami_bar/fun_call/activities/FragmentOffers;)V
    .locals 0
    .param p0, "x0"    # Lcom/rami_bar/fun_call/activities/FragmentOffers;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/FragmentOffers;->onIronsourceOfferwall()V

    return-void
.end method

.method static synthetic access$200(Lcom/rami_bar/fun_call/activities/FragmentOffers;)V
    .locals 0
    .param p0, "x0"    # Lcom/rami_bar/fun_call/activities/FragmentOffers;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/FragmentOffers;->onIronsourceVideo()V

    return-void
.end method

.method static synthetic access$300(Lcom/rami_bar/fun_call/activities/FragmentOffers;)Lcom/tapjoy/TJPlacement;
    .locals 1
    .param p0, "x0"    # Lcom/rami_bar/fun_call/activities/FragmentOffers;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentOffers;->tjPlacement:Lcom/tapjoy/TJPlacement;

    return-object v0
.end method

.method static synthetic access$302(Lcom/rami_bar/fun_call/activities/FragmentOffers;Lcom/tapjoy/TJPlacement;)Lcom/tapjoy/TJPlacement;
    .locals 0
    .param p0, "x0"    # Lcom/rami_bar/fun_call/activities/FragmentOffers;
    .param p1, "x1"    # Lcom/tapjoy/TJPlacement;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/rami_bar/fun_call/activities/FragmentOffers;->tjPlacement:Lcom/tapjoy/TJPlacement;

    return-object p1
.end method

.method static synthetic access$400(Lcom/rami_bar/fun_call/activities/FragmentOffers;)Z
    .locals 1
    .param p0, "x0"    # Lcom/rami_bar/fun_call/activities/FragmentOffers;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/rami_bar/fun_call/activities/FragmentOffers;->mTapjoyRequested:Z

    return v0
.end method

.method static synthetic access$402(Lcom/rami_bar/fun_call/activities/FragmentOffers;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/rami_bar/fun_call/activities/FragmentOffers;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/rami_bar/fun_call/activities/FragmentOffers;->mTapjoyRequested:Z

    return p1
.end method

.method static synthetic access$502(Lcom/rami_bar/fun_call/activities/FragmentOffers;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/rami_bar/fun_call/activities/FragmentOffers;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/rami_bar/fun_call/activities/FragmentOffers;->mRewardedVideoAvailable:Z

    return p1
.end method

.method static synthetic access$600(Lcom/rami_bar/fun_call/activities/FragmentOffers;)V
    .locals 0
    .param p0, "x0"    # Lcom/rami_bar/fun_call/activities/FragmentOffers;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/FragmentOffers;->setAdsListView()V

    return-void
.end method

.method private getViewsIds(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 134
    const v0, 0x7f100161

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentOffers;->lv_ads:Landroid/widget/ListView;

    .line 135
    const v0, 0x7f100162

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentOffers;->ib_offerwall_help:Landroid/widget/ImageButton;

    .line 136
    return-void
.end method

.method private handleCallbacks()V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentOffers;->lv_ads:Landroid/widget/ListView;

    new-instance v1, Lcom/rami_bar/fun_call/activities/FragmentOffers$1;

    invoke-direct {v1, p0}, Lcom/rami_bar/fun_call/activities/FragmentOffers$1;-><init>(Lcom/rami_bar/fun_call/activities/FragmentOffers;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 121
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentOffers;->ib_offerwall_help:Landroid/widget/ImageButton;

    new-instance v1, Lcom/rami_bar/fun_call/activities/FragmentOffers$2;

    invoke-direct {v1, p0}, Lcom/rami_bar/fun_call/activities/FragmentOffers$2;-><init>(Lcom/rami_bar/fun_call/activities/FragmentOffers;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    return-void
.end method

.method private handleRewardedVideo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "advertiser"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 326
    new-instance v4, Lcom/rami_bar/fun_call/activities/FragmentOffers$RewardedVideo;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/rami_bar/fun_call/activities/FragmentOffers$RewardedVideo;-><init>(Lcom/rami_bar/fun_call/activities/FragmentOffers;Lcom/rami_bar/fun_call/activities/FragmentOffers$1;)V

    .line 327
    .local v4, "send":Lcom/rami_bar/fun_call/activities/FragmentOffers$RewardedVideo;
    iput-object p1, v4, Lcom/rami_bar/fun_call/activities/FragmentOffers$RewardedVideo;->advertiser:Ljava/lang/String;

    .line 328
    iput-object p2, v4, Lcom/rami_bar/fun_call/activities/FragmentOffers$RewardedVideo;->type:Ljava/lang/String;

    .line 330
    new-instance v5, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v5}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    new-instance v6, Lcom/rami_bar/fun_call/utiles/EncryptionInterceptor;

    invoke-direct {v6}, Lcom/rami_bar/fun_call/utiles/EncryptionInterceptor;-><init>()V

    invoke-virtual {v5, v6}, Lokhttp3/OkHttpClient$Builder;->addNetworkInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v2

    .line 332
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

    .line 333
    .local v3, "retrofit":Lretrofit2/Retrofit;
    const-class v5, Lcom/rami_bar/fun_call/activities/FragmentOffers$RewardedVideoInterface;

    invoke-virtual {v3, v5}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rami_bar/fun_call/activities/FragmentOffers$RewardedVideoInterface;

    .line 334
    .local v0, "anInterface":Lcom/rami_bar/fun_call/activities/FragmentOffers$RewardedVideoInterface;
    invoke-interface {v0, v4}, Lcom/rami_bar/fun_call/activities/FragmentOffers$RewardedVideoInterface;->send(Lcom/rami_bar/fun_call/activities/FragmentOffers$RewardedVideo;)Lretrofit2/Call;

    move-result-object v1

    .line 335
    .local v1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lokhttp3/ResponseBody;>;"
    new-instance v5, Lcom/rami_bar/fun_call/activities/FragmentOffers$5;

    invoke-direct {v5, p0}, Lcom/rami_bar/fun_call/activities/FragmentOffers$5;-><init>(Lcom/rami_bar/fun_call/activities/FragmentOffers;)V

    invoke-interface {v1, v5}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 348
    return-void
.end method

.method private initAdsSdks()V
    .locals 0

    .prologue
    .line 171
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/FragmentOffers;->ironsourceConnect()V

    .line 173
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/FragmentOffers;->tapjoyConnect()V

    .line 174
    return-void
.end method

.method private ironsourceConnect()V
    .locals 5

    .prologue
    .line 275
    invoke-virtual {p0}, Lcom/rami_bar/fun_call/activities/FragmentOffers;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/rami_bar/fun_call/utiles/SharedUser;->getInstance(Landroid/content/Context;)Lcom/rami_bar/fun_call/utiles/SharedUser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rami_bar/fun_call/utiles/SharedUser;->getEmail()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/mediationsdk/IronSource;->setUserId(Ljava/lang/String;)V

    .line 276
    invoke-virtual {p0}, Lcom/rami_bar/fun_call/activities/FragmentOffers;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "2f295c21"

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    const/4 v3, 0x0

    sget-object v4, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->OFFERWALL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/ironsource/mediationsdk/IronSource;->init(Landroid/app/Activity;Ljava/lang/String;[Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V

    .line 278
    new-instance v0, Lcom/rami_bar/fun_call/activities/FragmentOffers$4;

    invoke-direct {v0, p0}, Lcom/rami_bar/fun_call/activities/FragmentOffers$4;-><init>(Lcom/rami_bar/fun_call/activities/FragmentOffers;)V

    invoke-static {v0}, Lcom/ironsource/mediationsdk/IronSource;->setRewardedVideoListener(Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;)V

    .line 320
    return-void
.end method

.method private onIronsourceOfferwall()V
    .locals 4

    .prologue
    .line 178
    :try_start_0
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSource;->showOfferwall()V

    .line 180
    sget-object v1, Lcom/rami_bar/fun_call/utiles/MyApp;->tracker:Lcom/google/android/gms/analytics/Tracker;

    new-instance v2, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    const-string v3, "Ironsource"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    const-string v3, "click"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :goto_0
    return-void

    .line 181
    :catch_0
    move-exception v0

    .line 182
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/rami_bar/fun_call/utiles/MyApp;->tracker:Lcom/google/android/gms/analytics/Tracker;

    new-instance v2, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    const-string v3, "Ironsource"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    const-string v3, "error"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 183
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private onIronsourceVideo()V
    .locals 4

    .prologue
    .line 189
    :try_start_0
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSource;->showRewardedVideo()V

    .line 191
    sget-object v1, Lcom/rami_bar/fun_call/utiles/MyApp;->tracker:Lcom/google/android/gms/analytics/Tracker;

    new-instance v2, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    const-string v3, "Ironsource Video"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    const-string v3, "click"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    :goto_0
    return-void

    .line 192
    :catch_0
    move-exception v0

    .line 193
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/rami_bar/fun_call/utiles/MyApp;->tracker:Lcom/google/android/gms/analytics/Tracker;

    new-instance v2, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    const-string v3, "Ironsource Video"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    const-string v3, "error"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 194
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private onTapJoyOfferwall()V
    .locals 4

    .prologue
    .line 200
    :try_start_0
    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/FragmentOffers;->tjPlacement:Lcom/tapjoy/TJPlacement;

    invoke-virtual {v1}, Lcom/tapjoy/TJPlacement;->isContentReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 201
    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/FragmentOffers;->tjPlacement:Lcom/tapjoy/TJPlacement;

    invoke-virtual {v1}, Lcom/tapjoy/TJPlacement;->showContent()V

    .line 207
    :goto_0
    sget-object v1, Lcom/rami_bar/fun_call/utiles/MyApp;->tracker:Lcom/google/android/gms/analytics/Tracker;

    new-instance v2, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    const-string v3, "Tapjoy"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    const-string v3, "click"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 212
    :goto_1
    return-void

    .line 203
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/rami_bar/fun_call/activities/FragmentOffers;->mTapjoyRequested:Z

    .line 204
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/FragmentOffers;->tapjoyConnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 208
    :catch_0
    move-exception v0

    .line 209
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/rami_bar/fun_call/utiles/MyApp;->tracker:Lcom/google/android/gms/analytics/Tracker;

    new-instance v2, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    const-string v3, "Tapjoy"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    const-string v3, "error"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 210
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private setAdsListView()V
    .locals 4

    .prologue
    .line 148
    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/FragmentOffers;->mAdsAdapter:Lcom/rami_bar/fun_call/adapters/AdsAdapter;

    invoke-virtual {v1}, Lcom/rami_bar/fun_call/adapters/AdsAdapter;->clear()V

    .line 150
    sget-object v1, Lcom/rami_bar/fun_call/activities/ActivityMain;->json_get_caller_info:Lcom/rami_bar/fun_call/objects/receive/JsonGetCallerInfo;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/rami_bar/fun_call/activities/ActivityMain;->json_get_caller_info:Lcom/rami_bar/fun_call/objects/receive/JsonGetCallerInfo;

    iget-object v1, v1, Lcom/rami_bar/fun_call/objects/receive/JsonGetCallerInfo;->offers:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    sget-object v1, Lcom/rami_bar/fun_call/activities/ActivityMain;->json_get_caller_info:Lcom/rami_bar/fun_call/objects/receive/JsonGetCallerInfo;

    iget-object v1, v1, Lcom/rami_bar/fun_call/objects/receive/JsonGetCallerInfo;->offers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 168
    :cond_0
    return-void

    .line 154
    :cond_1
    invoke-virtual {p0}, Lcom/rami_bar/fun_call/activities/FragmentOffers;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 158
    sget-object v1, Lcom/rami_bar/fun_call/activities/ActivityMain;->json_get_caller_info:Lcom/rami_bar/fun_call/objects/receive/JsonGetCallerInfo;

    iget-object v1, v1, Lcom/rami_bar/fun_call/objects/receive/JsonGetCallerInfo;->offers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rami_bar/fun_call/objects/receive/JsonGetCallerInfo$Offer;

    .line 159
    .local v0, "offer":Lcom/rami_bar/fun_call/objects/receive/JsonGetCallerInfo$Offer;
    const-string v2, "ironsource_videos"

    iget-object v3, v0, Lcom/rami_bar/fun_call/objects/receive/JsonGetCallerInfo$Offer;->action:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 160
    iget-boolean v2, p0, Lcom/rami_bar/fun_call/activities/FragmentOffers;->mRewardedVideoAvailable:Z

    if-eqz v2, :cond_2

    .line 161
    iget-object v2, p0, Lcom/rami_bar/fun_call/activities/FragmentOffers;->mAdsAdapter:Lcom/rami_bar/fun_call/adapters/AdsAdapter;

    invoke-virtual {v2, v0}, Lcom/rami_bar/fun_call/adapters/AdsAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 166
    :cond_3
    iget-object v2, p0, Lcom/rami_bar/fun_call/activities/FragmentOffers;->mAdsAdapter:Lcom/rami_bar/fun_call/adapters/AdsAdapter;

    invoke-virtual {v2, v0}, Lcom/rami_bar/fun_call/adapters/AdsAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private setDataToViews()V
    .locals 4

    .prologue
    .line 139
    new-instance v0, Lcom/rami_bar/fun_call/adapters/AdsAdapter;

    invoke-virtual {p0}, Lcom/rami_bar/fun_call/activities/FragmentOffers;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f04007a

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1, v2, v3}, Lcom/rami_bar/fun_call/adapters/AdsAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentOffers;->mAdsAdapter:Lcom/rami_bar/fun_call/adapters/AdsAdapter;

    .line 140
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentOffers;->lv_ads:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/FragmentOffers;->mAdsAdapter:Lcom/rami_bar/fun_call/adapters/AdsAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 142
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/FragmentOffers;->initAdsSdks()V

    .line 144
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/FragmentOffers;->setAdsListView()V

    .line 145
    return-void
.end method

.method private tapjoyConnect()V
    .locals 4

    .prologue
    .line 215
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 216
    .local v0, "connectFlags":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "TJC_OPTION_ENABLE_LOGGING"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    const-string v1, "TJC_OPTION_DISABLE_PERSISTENT_IDS"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    invoke-virtual {p0}, Lcom/rami_bar/fun_call/activities/FragmentOffers;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "CFa-_F6jTkOTB0GxMOCPmwECIjOoRDr9mjyeVFZOPo2QyPn-0M54knTDHbrj"

    new-instance v3, Lcom/rami_bar/fun_call/activities/FragmentOffers$3;

    invoke-direct {v3, p0}, Lcom/rami_bar/fun_call/activities/FragmentOffers$3;-><init>(Lcom/rami_bar/fun_call/activities/FragmentOffers;)V

    invoke-static {v1, v2, v0, v3}, Lcom/tapjoy/Tapjoy;->connect(Landroid/content/Context;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/TJConnectListener;)Z

    .line 272
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 65
    const v1, 0x7f04003b

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 67
    .local v0, "v":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/rami_bar/fun_call/activities/FragmentOffers;->getViewsIds(Landroid/view/View;)V

    .line 69
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/FragmentOffers;->setDataToViews()V

    .line 71
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/FragmentOffers;->handleCallbacks()V

    .line 73
    return-object v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 95
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 96
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 78
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 79
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 83
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 84
    invoke-virtual {p0}, Lcom/rami_bar/fun_call/activities/FragmentOffers;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/Tapjoy;->onActivityStart(Landroid/app/Activity;)V

    .line 85
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/rami_bar/fun_call/activities/FragmentOffers;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/Tapjoy;->onActivityStop(Landroid/app/Activity;)V

    .line 90
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 91
    return-void
.end method
