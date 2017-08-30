.class public Lcom/rami_bar/fun_call/activities/ActivityDialer;
.super Landroid/app/Activity;
.source "ActivityDialer.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rami_bar/fun_call/activities/ActivityDialer$SendInCallSoundsInterface;
    }
.end annotation


# instance fields
.field private call_duration:I

.field private civ_call_image:Lcom/rami_bar/fun_call/utiles/CircularImageView;

.field private gv_sounds:Landroid/widget/GridView;

.field private ll_keyboard_holder:Landroid/widget/LinearLayout;

.field private mKeyboardOn:Z

.field private mProximity:Landroid/hardware/Sensor;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private rb_high:Landroid/widget/ImageButton;

.field private rb_highest:Landroid/widget/ImageButton;

.field private rb_low:Landroid/widget/ImageButton;

.field private rb_lowest:Landroid/widget/ImageButton;

.field private rb_normal:Landroid/widget/ImageButton;

.field private rl_proximity_cover:Landroid/widget/RelativeLayout;

.field private rl_sounds_holder:Landroid/widget/RelativeLayout;

.field private tb_keyboard:Landroid/widget/ImageButton;

.field private tb_speaker:Landroid/widget/ImageButton;

.field private tv_call_number:Landroid/widget/TextView;

.field private tv_call_timer:Landroid/widget/TextView;

.field private tv_high:Landroid/widget/TextView;

.field private tv_highest:Landroid/widget/TextView;

.field private tv_keyboard_text:Landroid/widget/TextView;

.field private tv_low:Landroid/widget/TextView;

.field private tv_lowest:Landroid/widget/TextView;

.field private tv_regular:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/rami_bar/fun_call/activities/ActivityDialer;->call_duration:I

    return-void
.end method

.method static synthetic access$000(Lcom/rami_bar/fun_call/activities/ActivityDialer;)V
    .locals 0
    .param p0, "x0"    # Lcom/rami_bar/fun_call/activities/ActivityDialer;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/ActivityDialer;->hangup()V

    return-void
.end method

.method static synthetic access$100(Lcom/rami_bar/fun_call/activities/ActivityDialer;Lcom/rami_bar/fun_call/objects/send/JsonSendSounds;)V
    .locals 0
    .param p0, "x0"    # Lcom/rami_bar/fun_call/activities/ActivityDialer;
    .param p1, "x1"    # Lcom/rami_bar/fun_call/objects/send/JsonSendSounds;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/rami_bar/fun_call/activities/ActivityDialer;->sendInCallSounds(Lcom/rami_bar/fun_call/objects/send/JsonSendSounds;)V

    return-void
.end method

.method private getActivity()Landroid/app/Activity;
    .locals 0

    .prologue
    .line 307
    return-object p0
.end method

.method private getViewsID()V
    .locals 1

    .prologue
    .line 230
    const v0, 0x7f1000e0

    invoke-virtual {p0, v0}, Lcom/rami_bar/fun_call/activities/ActivityDialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityDialer;->tv_call_timer:Landroid/widget/TextView;

    .line 231
    const v0, 0x7f1000df

    invoke-virtual {p0, v0}, Lcom/rami_bar/fun_call/activities/ActivityDialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityDialer;->tv_call_number:Landroid/widget/TextView;

    .line 232
    const v0, 0x7f100101

    invoke-virtual {p0, v0}, Lcom/rami_bar/fun_call/activities/ActivityDialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityDialer;->rl_proximity_cover:Landroid/widget/RelativeLayout;

    .line 233
    const v0, 0x7f1000e2

    invoke-virtual {p0, v0}, Lcom/rami_bar/fun_call/activities/ActivityDialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityDialer;->tb_keyboard:Landroid/widget/ImageButton;

    .line 234
    const v0, 0x7f1000e1

    invoke-virtual {p0, v0}, Lcom/rami_bar/fun_call/activities/ActivityDialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityDialer;->tb_speaker:Landroid/widget/ImageButton;

    .line 235
    const v0, 0x7f1000f2

    invoke-virtual {p0, v0}, Lcom/rami_bar/fun_call/activities/ActivityDialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityDialer;->gv_sounds:Landroid/widget/GridView;

    .line 237
    const v0, 0x7f1000e6

    invoke-virtual {p0, v0}, Lcom/rami_bar/fun_call/activities/ActivityDialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityDialer;->rb_lowest:Landroid/widget/ImageButton;

    .line 238
    const v0, 0x7f1000e7

    invoke-virtual {p0, v0}, Lcom/rami_bar/fun_call/activities/ActivityDialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityDialer;->rb_low:Landroid/widget/ImageButton;

    .line 239
    const v0, 0x7f1000e9

    invoke-virtual {p0, v0}, Lcom/rami_bar/fun_call/activities/ActivityDialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityDialer;->rb_high:Landroid/widget/ImageButton;

    .line 240
    const v0, 0x7f1000ea

    invoke-virtual {p0, v0}, Lcom/rami_bar/fun_call/activities/ActivityDialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityDialer;->rb_highest:Landroid/widget/ImageButton;

    .line 241
    const v0, 0x7f1000e8

    invoke-virtual {p0, v0}, Lcom/rami_bar/fun_call/activities/ActivityDialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityDialer;->rb_normal:Landroid/widget/ImageButton;

    .line 243
    const v0, 0x7f1000ec

    invoke-virtual {p0, v0}, Lcom/rami_bar/fun_call/activities/ActivityDialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityDialer;->tv_lowest:Landroid/widget/TextView;

    .line 244
    const v0, 0x7f1000ed

    invoke-virtual {p0, v0}, Lcom/rami_bar/fun_call/activities/ActivityDialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityDialer;->tv_low:Landroid/widget/TextView;

    .line 245
    const v0, 0x7f1000ee

    invoke-virtual {p0, v0}, Lcom/rami_bar/fun_call/activities/ActivityDialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityDialer;->tv_regular:Landroid/widget/TextView;

    .line 246
    const v0, 0x7f1000ef

    invoke-virtual {p0, v0}, Lcom/rami_bar/fun_call/activities/ActivityDialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityDialer;->tv_high:Landroid/widget/TextView;

    .line 247
    const v0, 0x7f1000f0

    invoke-virtual {p0, v0}, Lcom/rami_bar/fun_call/activities/ActivityDialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityDialer;->tv_highest:Landroid/widget/TextView;

    .line 249
    const v0, 0x7f1000de

    invoke-virtual {p0, v0}, Lcom/rami_bar/fun_call/activities/ActivityDialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/rami_bar/fun_call/utiles/CircularImageView;

    iput-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityDialer;->civ_call_image:Lcom/rami_bar/fun_call/utiles/CircularImageView;

    .line 250
    const v0, 0x7f1000f3

    invoke-virtual {p0, v0}, Lcom/rami_bar/fun_call/activities/ActivityDialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityDialer;->ll_keyboard_holder:Landroid/widget/LinearLayout;

    .line 251
    const v0, 0x7f1000e3

    invoke-virtual {p0, v0}, Lcom/rami_bar/fun_call/activities/ActivityDialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityDialer;->rl_sounds_holder:Landroid/widget/RelativeLayout;

    .line 252
    const v0, 0x7f1000f4

    invoke-virtual {p0, v0}, Lcom/rami_bar/fun_call/activities/ActivityDialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityDialer;->tv_keyboard_text:Landroid/widget/TextView;

    .line 253
    return-void
.end method

.method private handleInCallSounds()V
    .locals 3

    .prologue
    .line 311
    sget-object v1, Lcom/rami_bar/fun_call/activities/ActivityMain;->json_get_caller_info:Lcom/rami_bar/fun_call/objects/receive/JsonGetCallerInfo;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/rami_bar/fun_call/activities/ActivityMain;->json_get_caller_info:Lcom/rami_bar/fun_call/objects/receive/JsonGetCallerInfo;

    iget-object v1, v1, Lcom/rami_bar/fun_call/objects/receive/JsonGetCallerInfo;->incall_sounds:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/rami_bar/fun_call/activities/ActivityMain;->json_get_caller_info:Lcom/rami_bar/fun_call/objects/receive/JsonGetCallerInfo;

    iget-object v1, v1, Lcom/rami_bar/fun_call/objects/receive/JsonGetCallerInfo;->incall_sounds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 325
    :cond_0
    :goto_0
    return-void

    .line 314
    :cond_1
    new-instance v0, Lcom/rami_bar/fun_call/adapters/SoundsGridAdapter;

    sget-object v1, Lcom/rami_bar/fun_call/activities/ActivityMain;->json_get_caller_info:Lcom/rami_bar/fun_call/objects/receive/JsonGetCallerInfo;

    iget-object v1, v1, Lcom/rami_bar/fun_call/objects/receive/JsonGetCallerInfo;->incall_sounds:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lcom/rami_bar/fun_call/adapters/SoundsGridAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 315
    .local v0, "adapter":Lcom/rami_bar/fun_call/adapters/SoundsGridAdapter;
    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/ActivityDialer;->gv_sounds:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 316
    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/ActivityDialer;->gv_sounds:Landroid/widget/GridView;

    new-instance v2, Lcom/rami_bar/fun_call/activities/ActivityDialer$2;

    invoke-direct {v2, p0}, Lcom/rami_bar/fun_call/activities/ActivityDialer$2;-><init>(Lcom/rami_bar/fun_call/activities/ActivityDialer;)V

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0
.end method

.method private hangup()V
    .locals 2

    .prologue
    .line 428
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 429
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 430
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/rami_bar/fun_call/activities/ActivityDialer;->setResult(ILandroid/content/Intent;)V

    .line 431
    invoke-virtual {p0}, Lcom/rami_bar/fun_call/activities/ActivityDialer;->finish()V

    .line 432
    invoke-static {}, Lcom/rami_bar/fun_call/voip/VoipManager;->getInstance()Lcom/rami_bar/fun_call/voip/VoipManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/rami_bar/fun_call/voip/VoipManager;->hangup()V

    .line 433
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 434
    return-void
.end method

.method private sendInCallSounds(Lcom/rami_bar/fun_call/objects/send/JsonSendSounds;)V
    .locals 6
    .param p1, "send"    # Lcom/rami_bar/fun_call/objects/send/JsonSendSounds;

    .prologue
    .line 440
    new-instance v4, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v4}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    new-instance v5, Lcom/rami_bar/fun_call/utiles/EncryptionInterceptor;

    invoke-direct {v5}, Lcom/rami_bar/fun_call/utiles/EncryptionInterceptor;-><init>()V

    invoke-virtual {v4, v5}, Lokhttp3/OkHttpClient$Builder;->addNetworkInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v2

    .line 442
    .local v2, "client":Lokhttp3/OkHttpClient;
    new-instance v4, Lretrofit2/Retrofit$Builder;

    invoke-direct {v4}, Lretrofit2/Retrofit$Builder;-><init>()V

    sget-object v5, Lcom/rami_bar/fun_call/utiles/Constants;->API_VOIP:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v4

    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v5

    invoke-virtual {v4, v5}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v3

    .line 443
    .local v3, "retrofit":Lretrofit2/Retrofit;
    const-class v4, Lcom/rami_bar/fun_call/activities/ActivityDialer$SendInCallSoundsInterface;

    invoke-virtual {v3, v4}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rami_bar/fun_call/activities/ActivityDialer$SendInCallSoundsInterface;

    .line 444
    .local v0, "anInterface":Lcom/rami_bar/fun_call/activities/ActivityDialer$SendInCallSoundsInterface;
    invoke-interface {v0, p1}, Lcom/rami_bar/fun_call/activities/ActivityDialer$SendInCallSoundsInterface;->send(Lcom/rami_bar/fun_call/objects/send/JsonSendSounds;)Lretrofit2/Call;

    move-result-object v1

    .line 445
    .local v1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lokhttp3/ResponseBody;>;"
    new-instance v4, Lcom/rami_bar/fun_call/activities/ActivityDialer$3;

    invoke-direct {v4, p0}, Lcom/rami_bar/fun_call/activities/ActivityDialer$3;-><init>(Lcom/rami_bar/fun_call/activities/ActivityDialer;)V

    invoke-interface {v1, v4}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 454
    return-void
.end method

.method private sendPitch(Ljava/lang/String;)V
    .locals 2
    .param p1, "pitch"    # Ljava/lang/String;

    .prologue
    .line 328
    new-instance v0, Lcom/rami_bar/fun_call/objects/send/JsonSendSounds;

    invoke-direct {v0}, Lcom/rami_bar/fun_call/objects/send/JsonSendSounds;-><init>()V

    .line 329
    .local v0, "send":Lcom/rami_bar/fun_call/objects/send/JsonSendSounds;
    invoke-static {p0}, Lcom/rami_bar/fun_call/utiles/SharedUser;->getInstance(Landroid/content/Context;)Lcom/rami_bar/fun_call/utiles/SharedUser;

    move-result-object v1

    invoke-virtual {v1}, Lcom/rami_bar/fun_call/utiles/SharedUser;->getEmail()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/rami_bar/fun_call/objects/send/JsonSendSounds;->email:Ljava/lang/String;

    .line 330
    iput-object p1, v0, Lcom/rami_bar/fun_call/objects/send/JsonSendSounds;->set_pitch:Ljava/lang/String;

    .line 331
    invoke-direct {p0, v0}, Lcom/rami_bar/fun_call/activities/ActivityDialer;->sendInCallSounds(Lcom/rami_bar/fun_call/objects/send/JsonSendSounds;)V

    .line 332
    return-void
.end method

.method private setDataToViews()V
    .locals 6

    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/rami_bar/fun_call/activities/ActivityDialer;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "call_number"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 257
    .local v0, "callNumber":Ljava/lang/String;
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/ActivityDialer;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/rami_bar/fun_call/utiles/Functions;->getContactDisplayNameByNumber(Landroid/content/Context;Ljava/lang/String;)Lcom/rami_bar/fun_call/objects/CallingContact;

    move-result-object v1

    .line 259
    .local v1, "callingContact":Lcom/rami_bar/fun_call/objects/CallingContact;
    iget-object v2, p0, Lcom/rami_bar/fun_call/activities/ActivityDialer;->tv_call_timer:Landroid/widget/TextView;

    iget v3, p0, Lcom/rami_bar/fun_call/activities/ActivityDialer;->call_duration:I

    int-to-long v4, v3

    invoke-static {v4, v5}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    iget-object v2, v1, Lcom/rami_bar/fun_call/objects/CallingContact;->name:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 262
    iget-object v2, p0, Lcom/rami_bar/fun_call/activities/ActivityDialer;->tv_call_number:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/rami_bar/fun_call/objects/CallingContact;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    :goto_0
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/ActivityDialer;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    iget-object v3, v1, Lcom/rami_bar/fun_call/objects/CallingContact;->image:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/RequestManager;->load(Landroid/net/Uri;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v2

    const v3, 0x7f0201d0

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/DrawableTypeRequest;->error(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/rami_bar/fun_call/activities/ActivityDialer;->civ_call_image:Lcom/rami_bar/fun_call/utiles/CircularImageView;

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 269
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/ActivityDialer;->setStartingPitchSelected()V

    .line 271
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/ActivityDialer;->handleInCallSounds()V

    .line 273
    invoke-static {}, Lcom/rami_bar/fun_call/voip/VoipManager;->getInstance()Lcom/rami_bar/fun_call/voip/VoipManager;

    move-result-object v2

    new-instance v3, Lcom/rami_bar/fun_call/activities/ActivityDialer$1;

    invoke-direct {v3, p0}, Lcom/rami_bar/fun_call/activities/ActivityDialer$1;-><init>(Lcom/rami_bar/fun_call/activities/ActivityDialer;)V

    invoke-virtual {v2, v3}, Lcom/rami_bar/fun_call/voip/VoipManager;->addCallStatusListener(Lcom/rami_bar/fun_call/voip/VoipManager$OnCallStatusListener;)V

    .line 304
    return-void

    .line 264
    :cond_0
    iget-object v2, p0, Lcom/rami_bar/fun_call/activities/ActivityDialer;->tv_call_number:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/rami_bar/fun_call/objects/CallingContact;->phone:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setKeyboardOff()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 407
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityDialer;->tb_keyboard:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 408
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityDialer;->rl_sounds_holder:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 409
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityDialer;->ll_keyboard_holder:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 410
    iput-boolean v2, p0, Lcom/rami_bar/fun_call/activities/ActivityDialer;->mKeyboardOn:Z

    .line 411
    return-void
.end method

.method private setKeyboardOn()V
    .locals 2

    .prologue
    .line 400
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityDialer;->tb_keyboard:Landroid/widget/ImageButton;

    const v1, 0x7f0200d4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 401
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityDialer;->ll_keyboard_holder:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 402
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityDialer;->rl_sounds_holder:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 403
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rami_bar/fun_call/activities/ActivityDialer;->mKeyboardOn:Z

    .line 404
    return-void
.end method

.method private setSelectedVoice(Landroid/widget/ImageButton;)V
    .locals 5
    .param p1, "v"    # Landroid/widget/ImageButton;

    .prologue
    const/4 v4, 0x0

    .line 360
    invoke-virtual {p0}, Lcom/rami_bar/fun_call/activities/ActivityDialer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e002e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 361
    .local v0, "notSelectedColor":I
    iget-object v2, p0, Lcom/rami_bar/fun_call/activities/ActivityDialer;->rb_highest:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 362
    iget-object v2, p0, Lcom/rami_bar/fun_call/activities/ActivityDialer;->rb_high:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 363
    iget-object v2, p0, Lcom/rami_bar/fun_call/activities/ActivityDialer;->rb_normal:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 364
    iget-object v2, p0, Lcom/rami_bar/fun_call/activities/ActivityDialer;->rb_low:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 365
    iget-object v2, p0, Lcom/rami_bar/fun_call/activities/ActivityDialer;->rb_lowest:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 366
    iget-object v2, p0, Lcom/rami_bar/fun_call/activities/ActivityDialer;->tv_highest:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 367
    iget-object v2, p0, Lcom/rami_bar/fun_call/activities/ActivityDialer;->tv_high:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 368
    iget-object v2, p0, Lcom/rami_bar/fun_call/activities/ActivityDialer;->tv_regular:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 369
    iget-object v2, p0, Lcom/rami_bar/fun_call/activities/ActivityDialer;->tv_low:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 370
    iget-object v2, p0, Lcom/rami_bar/fun_call/activities/ActivityDialer;->tv_lowest:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 371
    iget-object v2, p0, Lcom/rami_bar/fun_call/activities/ActivityDialer;->rb_highest:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/rami_bar/fun_call/utiles/Functions;->setFilterColor(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    .line 372
    iget-object v2, p0, Lcom/rami_bar/fun_call/activities/ActivityDialer;->rb_high:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/rami_bar/fun_call/utiles/Functions;->setFilterColor(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    .line 373
    iget-object v2, p0, Lcom/rami_bar/fun_call/activities/ActivityDialer;->rb_normal:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/rami_bar/fun_call/utiles/Functions;->setFilterColor(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    .line 374
    iget-object v2, p0, Lcom/rami_bar/fun_call/activities/ActivityDialer;->rb_low:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/rami_bar/fun_call/utiles/Functions;->setFilterColor(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    .line 375
    iget-object v2, p0, Lcom/rami_bar/fun_call/activities/ActivityDialer;->rb_lowest:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/rami_bar/fun_call/utiles/Functions;->setFilterColor(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    .line 377
    invoke-virtual {p0}, Lcom/rami_bar/fun_call/activities/ActivityDialer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e002a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 378
    .local v1, "selectedColor":I
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 379
    invoke-virtual {p1}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/rami_bar/fun_call/utiles/Functions;->setFilterColor(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    .line 380
    invoke-virtual {p1}, Landroid/widget/ImageButton;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 397
    :goto_0
    return-void

    .line 382
    :pswitch_0
    iget-object v2, p0, Lcom/rami_bar/fun_call/activities/ActivityDialer;->tv_lowest:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 385
    :pswitch_1
    iget-object v2, p0, Lcom/rami_bar/fun_call/activities/ActivityDialer;->tv_low:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 388
    :pswitch_2
    iget-object v2, p0, Lcom/rami_bar/fun_call/activities/ActivityDialer;->tv_regular:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 391
    :pswitch_3
    iget-object v2, p0, Lcom/rami_bar/fun_call/activities/ActivityDialer;->tv_high:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 394
    :pswitch_4
    iget-object v2, p0, Lcom/rami_bar/fun_call/activities/ActivityDialer;->tv_highest:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 380
    nop

    :pswitch_data_0
    .packed-switch 0x7f1000e6
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private setSpeakerOff()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 421
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityDialer;->tb_speaker:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 422
    invoke-static {}, Lcom/rami_bar/fun_call/voip/VoipManager;->getInstance()Lcom/rami_bar/fun_call/voip/VoipManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/rami_bar/fun_call/voip/VoipManager;->setSpeakerOn(Z)V

    .line 424
    sget-object v0, Lcom/rami_bar/fun_call/utiles/MyApp;->tracker:Lcom/google/android/gms/analytics/Tracker;

    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    const-string v2, "Speaker"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    const-string v2, "off"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 425
    return-void
.end method

.method private setSpeakerOn()V
    .locals 3

    .prologue
    .line 414
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityDialer;->tb_speaker:Landroid/widget/ImageButton;

    const v1, 0x7f0200d4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 415
    invoke-static {}, Lcom/rami_bar/fun_call/voip/VoipManager;->getInstance()Lcom/rami_bar/fun_call/voip/VoipManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/rami_bar/fun_call/voip/VoipManager;->setSpeakerOn(Z)V

    .line 417
    sget-object v0, Lcom/rami_bar/fun_call/utiles/MyApp;->tracker:Lcom/google/android/gms/analytics/Tracker;

    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    const-string v2, "Speaker"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    const-string v2, "on"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 418
    return-void
.end method

.method private setStartingPitchSelected()V
    .locals 4

    .prologue
    .line 336
    sget-object v2, Lcom/rami_bar/fun_call/activities/ActivityMain;->starting_pitch:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 353
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityDialer;->rb_normal:Landroid/widget/ImageButton;

    .line 356
    .local v0, "selectedButton":Landroid/widget/ImageButton;
    :goto_1
    invoke-direct {p0, v0}, Lcom/rami_bar/fun_call/activities/ActivityDialer;->setSelectedVoice(Landroid/widget/ImageButton;)V

    .line 357
    return-void

    .line 336
    .end local v0    # "selectedButton":Landroid/widget/ImageButton;
    :sswitch_0
    const-string v3, "highest"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_1
    const-string v3, "high"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v3, "low"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string v3, "lowest"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_4
    const-string v3, "regular"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    .line 338
    :pswitch_0
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityDialer;->rb_highest:Landroid/widget/ImageButton;

    .line 339
    .restart local v0    # "selectedButton":Landroid/widget/ImageButton;
    goto :goto_1

    .line 341
    .end local v0    # "selectedButton":Landroid/widget/ImageButton;
    :pswitch_1
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityDialer;->rb_high:Landroid/widget/ImageButton;

    .line 342
    .restart local v0    # "selectedButton":Landroid/widget/ImageButton;
    goto :goto_1

    .line 344
    .end local v0    # "selectedButton":Landroid/widget/ImageButton;
    :pswitch_2
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityDialer;->rb_low:Landroid/widget/ImageButton;

    .line 345
    .restart local v0    # "selectedButton":Landroid/widget/ImageButton;
    goto :goto_1

    .line 347
    .end local v0    # "selectedButton":Landroid/widget/ImageButton;
    :pswitch_3
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityDialer;->rb_lowest:Landroid/widget/ImageButton;

    .line 348
    .restart local v0    # "selectedButton":Landroid/widget/ImageButton;
    goto :goto_1

    .line 350
    .end local v0    # "selectedButton":Landroid/widget/ImageButton;
    :pswitch_4
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityDialer;->rb_normal:Landroid/widget/ImageButton;

    .line 351
    .restart local v0    # "selectedButton":Landroid/widget/ImageButton;
    goto :goto_1

    .line 336
    :sswitch_data_0
    .sparse-switch
        -0x4160ca4e -> :sswitch_3
        0x1a354 -> :sswitch_2
        0x30dda2 -> :sswitch_1
        0x369130a4 -> :sswitch_0
        0x40c21f9c -> :sswitch_4
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public hangupCall(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 177
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/ActivityDialer;->hangup()V

    .line 179
    sget-object v0, Lcom/rami_bar/fun_call/utiles/MyApp;->tracker:Lcom/google/android/gms/analytics/Tracker;

    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    const-string v2, "hangupCall"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    const-string v2, "click"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 180
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "i"    # I

    .prologue
    .line 149
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 158
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 76
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    const v0, 0x7f04001c

    invoke-virtual {p0, v0}, Lcom/rami_bar/fun_call/activities/ActivityDialer;->setContentView(I)V

    .line 79
    sget-object v0, Lcom/rami_bar/fun_call/activities/ActivityMain;->json_get_call_result:Lcom/rami_bar/fun_call/objects/receive/JsonGetCallResult;

    if-eqz v0, :cond_0

    .line 80
    sget-object v0, Lcom/rami_bar/fun_call/activities/ActivityMain;->json_get_call_result:Lcom/rami_bar/fun_call/objects/receive/JsonGetCallResult;

    iget v0, v0, Lcom/rami_bar/fun_call/objects/receive/JsonGetCallResult;->max_call_time:I

    iput v0, p0, Lcom/rami_bar/fun_call/activities/ActivityDialer;->call_duration:I

    .line 85
    :goto_0
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Lcom/rami_bar/fun_call/activities/ActivityDialer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityDialer;->mSensorManager:Landroid/hardware/SensorManager;

    .line 86
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityDialer;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityDialer;->mProximity:Landroid/hardware/Sensor;

    .line 88
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/ActivityDialer;->getViewsID()V

    .line 90
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/ActivityDialer;->setDataToViews()V

    .line 92
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/ActivityDialer;->setSpeakerOff()V

    .line 93
    return-void

    .line 82
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/rami_bar/fun_call/activities/ActivityDialer;->call_duration:I

    goto :goto_0
.end method

.method public onDTMF(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 183
    move-object v1, p1

    check-cast v1, Landroid/widget/ImageButton;

    invoke-direct {p0, v1}, Lcom/rami_bar/fun_call/activities/ActivityDialer;->setSelectedVoice(Landroid/widget/ImageButton;)V

    .line 185
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 210
    :goto_0
    return-void

    .line 187
    :pswitch_0
    const-string v1, "highest"

    invoke-direct {p0, v1}, Lcom/rami_bar/fun_call/activities/ActivityDialer;->sendPitch(Ljava/lang/String;)V

    .line 188
    sget-object v1, Lcom/rami_bar/fun_call/utiles/MyApp;->tracker:Lcom/google/android/gms/analytics/Tracker;

    new-instance v2, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    const-string v3, "Voices"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    const-string v3, "highest"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 207
    :catch_0
    move-exception v0

    .line 208
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 191
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_1
    :try_start_1
    const-string v1, "high"

    invoke-direct {p0, v1}, Lcom/rami_bar/fun_call/activities/ActivityDialer;->sendPitch(Ljava/lang/String;)V

    .line 192
    sget-object v1, Lcom/rami_bar/fun_call/utiles/MyApp;->tracker:Lcom/google/android/gms/analytics/Tracker;

    new-instance v2, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    const-string v3, "Voices"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    const-string v3, "high"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    goto :goto_0

    .line 195
    :pswitch_2
    const-string v1, "low"

    invoke-direct {p0, v1}, Lcom/rami_bar/fun_call/activities/ActivityDialer;->sendPitch(Ljava/lang/String;)V

    .line 196
    sget-object v1, Lcom/rami_bar/fun_call/utiles/MyApp;->tracker:Lcom/google/android/gms/analytics/Tracker;

    new-instance v2, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    const-string v3, "Voices"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    const-string v3, "low"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    goto/16 :goto_0

    .line 199
    :pswitch_3
    const-string v1, "lowest"

    invoke-direct {p0, v1}, Lcom/rami_bar/fun_call/activities/ActivityDialer;->sendPitch(Ljava/lang/String;)V

    .line 200
    sget-object v1, Lcom/rami_bar/fun_call/utiles/MyApp;->tracker:Lcom/google/android/gms/analytics/Tracker;

    new-instance v2, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    const-string v3, "Voices"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    const-string v3, "lowest"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    goto/16 :goto_0

    .line 203
    :pswitch_4
    const-string v1, "regular"

    invoke-direct {p0, v1}, Lcom/rami_bar/fun_call/activities/ActivityDialer;->sendPitch(Ljava/lang/String;)V

    .line 204
    sget-object v1, Lcom/rami_bar/fun_call/utiles/MyApp;->tracker:Lcom/google/android/gms/analytics/Tracker;

    new-instance v2, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    const-string v3, "Voices"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    const-string v3, "regular"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 185
    :pswitch_data_0
    .packed-switch 0x7f1000e6
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 114
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 116
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/ActivityDialer;->setSpeakerOff()V

    .line 118
    invoke-static {}, Lcom/rami_bar/fun_call/voip/VoipManager;->getInstance()Lcom/rami_bar/fun_call/voip/VoipManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rami_bar/fun_call/voip/VoipManager;->hangup()V

    .line 119
    return-void
.end method

.method public onKeyboard(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 169
    iget-boolean v0, p0, Lcom/rami_bar/fun_call/activities/ActivityDialer;->mKeyboardOn:Z

    if-eqz v0, :cond_0

    .line 170
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/ActivityDialer;->setKeyboardOff()V

    .line 174
    :goto_0
    return-void

    .line 172
    :cond_0
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/ActivityDialer;->setKeyboardOn()V

    goto :goto_0
.end method

.method public onKeyboardKeyPress(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 213
    iget-object v2, p0, Lcom/rami_bar/fun_call/activities/ActivityDialer;->tv_keyboard_text:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "text":Ljava/lang/String;
    move-object v2, p1

    .line 214
    check-cast v2, Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 215
    .local v0, "charClicked":C
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f1000fe

    if-ne v2, v3, :cond_0

    .line 216
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 217
    const-string v2, "*"

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 221
    .end local p1    # "v":Landroid/view/View;
    :goto_0
    iget-object v2, p0, Lcom/rami_bar/fun_call/activities/ActivityDialer;->tv_keyboard_text:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    invoke-static {}, Lcom/rami_bar/fun_call/voip/VoipManager;->getInstance()Lcom/rami_bar/fun_call/voip/VoipManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/rami_bar/fun_call/voip/VoipManager;->sendDTMF(C)V

    .line 224
    return-void

    .line 219
    .restart local p1    # "v":Landroid/view/View;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    check-cast p1, Landroid/widget/Button;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 97
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 99
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityDialer;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityDialer;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 102
    :cond_0
    return-void
.end method

.method public onProximityShow(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityDialer;->rl_proximity_cover:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 153
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityDialer;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 154
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 106
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 107
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityDialer;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityDialer;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/ActivityDialer;->mProximity:Landroid/hardware/Sensor;

    const/4 v2, 0x3

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 110
    :cond_0
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4
    .param p1, "sensorEvent"    # Landroid/hardware/SensorEvent;

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 138
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 139
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v2

    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v1

    neg-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v2

    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityDialer;->rl_proximity_cover:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityDialer;->rl_proximity_cover:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public onSpeaker(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 161
    invoke-static {}, Lcom/rami_bar/fun_call/voip/VoipManager;->getInstance()Lcom/rami_bar/fun_call/voip/VoipManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rami_bar/fun_call/voip/VoipManager;->isSpeakerOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/ActivityDialer;->setSpeakerOff()V

    .line 166
    :goto_0
    return-void

    .line 164
    :cond_0
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/ActivityDialer;->setSpeakerOn()V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 123
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 124
    invoke-static {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->reportActivityStart(Landroid/app/Activity;)V

    .line 125
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 129
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 130
    invoke-static {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->reportActivityStop(Landroid/app/Activity;)V

    .line 131
    return-void
.end method
