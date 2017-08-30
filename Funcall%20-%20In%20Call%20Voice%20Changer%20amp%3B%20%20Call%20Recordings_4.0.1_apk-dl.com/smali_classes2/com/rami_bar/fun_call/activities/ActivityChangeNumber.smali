.class public Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;
.super Landroid/app/Activity;
.source "ActivityChangeNumber.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rami_bar/fun_call/activities/ActivityChangeNumber$RegisterInterface;
    }
.end annotation


# instance fields
.field private counter:I

.field private country_list_adapter:Lcom/rami_bar/fun_call/adapters/CountriesListAdapter;

.field private et_change_number_code_register:Landroid/widget/EditText;

.field private et_change_number_register:Landroid/widget/EditText;

.field private iv_country:Landroid/widget/ImageView;

.field private iv_register_send:Landroid/widget/ImageView;

.field private mCountryCodesList:[Ljava/lang/String;

.field private rb_default_number:Landroid/widget/RadioButton;

.field private rb_my_number:Landroid/widget/RadioButton;

.field private rl_change_number_register_code_send:Landroid/widget/RelativeLayout;

.field private sp_country:Landroid/widget/Spinner;

.field private tv_change_number_register_explain:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;->getCountryFromPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;->setCountryToCall(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;)Lcom/rami_bar/fun_call/adapters/CountriesListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;->country_list_adapter:Lcom/rami_bar/fun_call/adapters/CountriesListAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;->iv_country:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;->rl_change_number_register_code_send:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;->setMyNumberRadioButton(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;)Landroid/widget/RadioButton;
    .locals 1
    .param p0, "x0"    # Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;->rb_my_number:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$702(Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;I)I
    .locals 0
    .param p0, "x0"    # Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;
    .param p1, "x1"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;->counter:I

    return p1
.end method

.method private getAndSetCallToCountry()V
    .locals 3

    .prologue
    .line 244
    invoke-static {p0}, Lcom/rami_bar/fun_call/utiles/Functions;->getMyCountryCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 245
    .local v1, "country_code":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_0

    .line 246
    const-string v1, "zz"

    .line 249
    :cond_0
    invoke-static {p0}, Lcom/rami_bar/fun_call/utiles/SharedUser;->getInstance(Landroid/content/Context;)Lcom/rami_bar/fun_call/utiles/SharedUser;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/rami_bar/fun_call/utiles/SharedUser;->getCallingCountry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 251
    .local v0, "calling_country":Ljava/lang/String;
    const-string v2, "zz"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 252
    const-string v2, "us"

    invoke-direct {p0, v2}, Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;->setCountryToCall(Ljava/lang/String;)V

    .line 256
    :goto_0
    return-void

    .line 254
    :cond_1
    invoke-direct {p0, v0}, Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;->setCountryToCall(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getCountryFromPhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x4

    const/4 v7, 0x0

    .line 259
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    if-ge v2, v6, :cond_2

    if-ge v2, v12, :cond_2

    .line 260
    invoke-virtual {p1, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 262
    .local v4, "numberCut":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v6, v12, :cond_1

    .line 263
    iget-object v8, p0, Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;->mCountryCodesList:[Ljava/lang/String;

    array-length v9, v8

    move v6, v7

    :goto_1
    if-ge v6, v9, :cond_1

    aget-object v3, v8, v6

    .line 264
    .local v3, "line":Ljava/lang/String;
    const-string v10, ","

    invoke-virtual {v3, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 265
    .local v1, "g":[Ljava/lang/String;
    aget-object v10, v1, v7

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v10, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 266
    .local v5, "phoneCode":Ljava/lang/String;
    const/4 v10, 0x1

    aget-object v10, v1, v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v10, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 267
    .local v0, "countyCode":Ljava/lang/String;
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 273
    .end local v0    # "countyCode":Ljava/lang/String;
    .end local v1    # "g":[Ljava/lang/String;
    .end local v3    # "line":Ljava/lang/String;
    .end local v4    # "numberCut":Ljava/lang/String;
    .end local v5    # "phoneCode":Ljava/lang/String;
    :goto_2
    return-object v0

    .line 263
    .restart local v0    # "countyCode":Ljava/lang/String;
    .restart local v1    # "g":[Ljava/lang/String;
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v4    # "numberCut":Ljava/lang/String;
    .restart local v5    # "phoneCode":Ljava/lang/String;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 259
    .end local v0    # "countyCode":Ljava/lang/String;
    .end local v1    # "g":[Ljava/lang/String;
    .end local v3    # "line":Ljava/lang/String;
    .end local v5    # "phoneCode":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 273
    .end local v4    # "numberCut":Ljava/lang/String;
    :cond_2
    const-string v0, ""

    goto :goto_2
.end method

.method private getCountryIndex([Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "recourseList"    # [Ljava/lang/String;
    .param p2, "country_code"    # Ljava/lang/String;

    .prologue
    .line 277
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 278
    aget-object v1, p1, v0

    invoke-virtual {v1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 282
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 277
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 282
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private getSelectedCountryCode()Ljava/lang/String;
    .locals 3

    .prologue
    .line 286
    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;->sp_country:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 287
    .local v0, "split":[Ljava/lang/String;
    const/4 v1, 0x1

    aget-object v1, v0, v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getViewsIds()V
    .locals 1

    .prologue
    .line 189
    const v0, 0x7f1000d0

    invoke-virtual {p0, v0}, Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;->rb_default_number:Landroid/widget/RadioButton;

    .line 190
    const v0, 0x7f1000d1

    invoke-virtual {p0, v0}, Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;->rb_my_number:Landroid/widget/RadioButton;

    .line 191
    const v0, 0x7f1000d8

    invoke-virtual {p0, v0}, Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;->et_change_number_register:Landroid/widget/EditText;

    .line 192
    const v0, 0x7f1000dc

    invoke-virtual {p0, v0}, Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;->et_change_number_code_register:Landroid/widget/EditText;

    .line 193
    const v0, 0x7f1000d6

    invoke-virtual {p0, v0}, Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;->sp_country:Landroid/widget/Spinner;

    .line 194
    const v0, 0x7f1000d7

    invoke-virtual {p0, v0}, Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;->iv_country:Landroid/widget/ImageView;

    .line 195
    const v0, 0x7f1000da

    invoke-virtual {p0, v0}, Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;->rl_change_number_register_code_send:Landroid/widget/RelativeLayout;

    .line 196
    const v0, 0x7f1000d9

    invoke-virtual {p0, v0}, Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;->iv_register_send:Landroid/widget/ImageView;

    .line 197
    const v0, 0x7f1000d3

    invoke-virtual {p0, v0}, Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;->tv_change_number_register_explain:Landroid/widget/TextView;

    .line 198
    return-void
.end method

.method private sendCallRequestToServer(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "code"    # Ljava/lang/String;

    .prologue
    .line 294
    const-string v5, ""

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {p0, v5, v6}, Lcom/rami_bar/fun_call/utiles/Functions;->startProgressDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 296
    new-instance v4, Lcom/rami_bar/fun_call/objects/send/JsonRegisterCode;

    invoke-direct {v4}, Lcom/rami_bar/fun_call/objects/send/JsonRegisterCode;-><init>()V

    .line 297
    .local v4, "send":Lcom/rami_bar/fun_call/objects/send/JsonRegisterCode;
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;->getSelectedCountryCode()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/rami_bar/fun_call/objects/send/JsonRegisterCode;->country:Ljava/lang/String;

    .line 298
    invoke-static {p0}, Lcom/rami_bar/fun_call/utiles/SharedUser;->getInstance(Landroid/content/Context;)Lcom/rami_bar/fun_call/utiles/SharedUser;

    move-result-object v5

    invoke-virtual {v5}, Lcom/rami_bar/fun_call/utiles/SharedUser;->getEmail()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/rami_bar/fun_call/objects/send/JsonRegisterCode;->email:Ljava/lang/String;

    .line 299
    iput-object p1, v4, Lcom/rami_bar/fun_call/objects/send/JsonRegisterCode;->number:Ljava/lang/String;

    .line 300
    iput-object p2, v4, Lcom/rami_bar/fun_call/objects/send/JsonRegisterCode;->register_code:Ljava/lang/String;

    .line 302
    new-instance v5, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v5}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    new-instance v6, Lcom/rami_bar/fun_call/utiles/EncryptionInterceptor;

    invoke-direct {v6}, Lcom/rami_bar/fun_call/utiles/EncryptionInterceptor;-><init>()V

    invoke-virtual {v5, v6}, Lokhttp3/OkHttpClient$Builder;->addNetworkInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v2

    .line 304
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

    .line 305
    .local v3, "retrofit":Lretrofit2/Retrofit;
    const-class v5, Lcom/rami_bar/fun_call/activities/ActivityChangeNumber$RegisterInterface;

    invoke-virtual {v3, v5}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rami_bar/fun_call/activities/ActivityChangeNumber$RegisterInterface;

    .line 306
    .local v0, "anInterface":Lcom/rami_bar/fun_call/activities/ActivityChangeNumber$RegisterInterface;
    invoke-interface {v0, v4}, Lcom/rami_bar/fun_call/activities/ActivityChangeNumber$RegisterInterface;->send(Lcom/rami_bar/fun_call/objects/send/JsonRegisterCode;)Lretrofit2/Call;

    move-result-object v1

    .line 307
    .local v1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/rami_bar/fun_call/objects/receive/RegisterReceived;>;"
    new-instance v5, Lcom/rami_bar/fun_call/activities/ActivityChangeNumber$3;

    invoke-direct {v5, p0}, Lcom/rami_bar/fun_call/activities/ActivityChangeNumber$3;-><init>(Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;)V

    invoke-interface {v1, v5}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 350
    return-void
.end method

.method private setCountryToCall(Ljava/lang/String;)V
    .locals 4
    .param p1, "country_iso"    # Ljava/lang/String;

    .prologue
    .line 211
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_0

    .line 241
    :goto_0
    return-void

    .line 214
    :cond_0
    new-instance v2, Lcom/rami_bar/fun_call/adapters/CountriesListAdapter;

    iget-object v3, p0, Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;->mCountryCodesList:[Ljava/lang/String;

    invoke-direct {v2, p0, v3}, Lcom/rami_bar/fun_call/adapters/CountriesListAdapter;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    iput-object v2, p0, Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;->country_list_adapter:Lcom/rami_bar/fun_call/adapters/CountriesListAdapter;

    .line 215
    iget-object v2, p0, Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;->sp_country:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;->country_list_adapter:Lcom/rami_bar/fun_call/adapters/CountriesListAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 217
    iget-object v2, p0, Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;->mCountryCodesList:[Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;->getCountryIndex([Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 218
    .local v1, "index_country":I
    if-ltz v1, :cond_1

    .line 219
    iget-object v2, p0, Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;->sp_country:Landroid/widget/Spinner;

    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 221
    iget-object v2, p0, Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;->country_list_adapter:Lcom/rami_bar/fun_call/adapters/CountriesListAdapter;

    invoke-virtual {v2, v1}, Lcom/rami_bar/fun_call/adapters/CountriesListAdapter;->getCountryImageResource(I)I

    move-result v0

    .line 222
    .local v0, "img":I
    if-lez v0, :cond_1

    .line 223
    iget-object v2, p0, Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;->iv_country:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 227
    .end local v0    # "img":I
    :cond_1
    iget-object v2, p0, Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;->sp_country:Landroid/widget/Spinner;

    new-instance v3, Lcom/rami_bar/fun_call/activities/ActivityChangeNumber$2;

    invoke-direct {v3, p0}, Lcom/rami_bar/fun_call/activities/ActivityChangeNumber$2;-><init>(Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;)V

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    goto :goto_0
.end method

.method private setDataToViews()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 142
    sget-object v0, Lcom/rami_bar/fun_call/activities/ActivityMain;->json_get_caller_info:Lcom/rami_bar/fun_call/objects/receive/JsonGetCallerInfo;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/rami_bar/fun_call/activities/ActivityMain;->json_get_caller_info:Lcom/rami_bar/fun_call/objects/receive/JsonGetCallerInfo;

    iget-object v0, v0, Lcom/rami_bar/fun_call/objects/receive/JsonGetCallerInfo;->register_callerid:Lcom/rami_bar/fun_call/objects/receive/JsonGetCallerInfo$registerCallerId;

    if-nez v0, :cond_1

    .line 143
    :cond_0
    invoke-virtual {p0}, Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;->finish()V

    .line 186
    :goto_0
    return-void

    .line 147
    :cond_1
    sget-object v3, Lcom/rami_bar/fun_call/activities/ActivityMain;->callerIdType:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_2
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 156
    :goto_2
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;->et_change_number_register:Landroid/widget/EditText;

    new-instance v3, Lcom/rami_bar/fun_call/activities/ActivityChangeNumber$1;

    invoke-direct {v3, p0}, Lcom/rami_bar/fun_call/activities/ActivityChangeNumber$1;-><init>(Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;)V

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 181
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;->getAndSetCallToCountry()V

    .line 183
    sget-object v0, Lcom/rami_bar/fun_call/activities/ActivityMain;->json_get_caller_info:Lcom/rami_bar/fun_call/objects/receive/JsonGetCallerInfo;

    iget-object v0, v0, Lcom/rami_bar/fun_call/objects/receive/JsonGetCallerInfo;->register_callerid:Lcom/rami_bar/fun_call/objects/receive/JsonGetCallerInfo$registerCallerId;

    iget-object v0, v0, Lcom/rami_bar/fun_call/objects/receive/JsonGetCallerInfo$registerCallerId;->user_number:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;->setMyNumberRadioButton(Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;->tv_change_number_register_explain:Landroid/widget/TextView;

    const v3, 0x7f0900cd

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v4, Lcom/rami_bar/fun_call/activities/ActivityMain;->json_get_caller_info:Lcom/rami_bar/fun_call/objects/receive/JsonGetCallerInfo;

    iget-object v4, v4, Lcom/rami_bar/fun_call/objects/receive/JsonGetCallerInfo;->register_callerid:Lcom/rami_bar/fun_call/objects/receive/JsonGetCallerInfo$registerCallerId;

    iget-object v4, v4, Lcom/rami_bar/fun_call/objects/receive/JsonGetCallerInfo$registerCallerId;->register_price:Ljava/lang/String;

    aput-object v4, v2, v1

    invoke-virtual {p0, v3, v2}, Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 147
    :sswitch_0
    const-string v4, "my_number"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    goto :goto_1

    :sswitch_1
    const-string v4, "default"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v2

    goto :goto_1

    .line 149
    :pswitch_0
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;->rb_my_number:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_2

    .line 152
    :pswitch_1
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;->rb_default_number:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_2

    .line 147
    :sswitch_data_0
    .sparse-switch
        -0x61a5aec4 -> :sswitch_0
        0x5c13d641 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setMyNumberRadioButton(Ljava/lang/String;)V
    .locals 2
    .param p1, "userNumber"    # Ljava/lang/String;

    .prologue
    .line 201
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;->rb_my_number:Landroid/widget/RadioButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 203
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;->rb_my_number:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 208
    :goto_0
    return-void

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;->rb_my_number:Landroid/widget/RadioButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 206
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;->rb_my_number:Landroid/widget/RadioButton;

    const v1, 0x7f09008a

    invoke-virtual {p0, v1}, Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public onChangeNumberDefault(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 88
    const-string v0, "default"

    sput-object v0, Lcom/rami_bar/fun_call/activities/ActivityMain;->callerIdType:Ljava/lang/String;

    .line 90
    sget-object v0, Lcom/rami_bar/fun_call/utiles/MyApp;->tracker:Lcom/google/android/gms/analytics/Tracker;

    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    const-string v2, "NumberTypeSelected"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    const-string v2, "Default"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 91
    return-void
.end method

.method public onChangeNumberMy(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 94
    const-string v0, "my_number"

    sput-object v0, Lcom/rami_bar/fun_call/activities/ActivityMain;->callerIdType:Ljava/lang/String;

    .line 96
    sget-object v0, Lcom/rami_bar/fun_call/utiles/MyApp;->tracker:Lcom/google/android/gms/analytics/Tracker;

    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    const-string v2, "NumberTypeSelected"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    const-string v2, "My"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 97
    return-void
.end method

.method public onCountrySpinner(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;->sp_country:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->performClick()Z

    .line 102
    sget-object v0, Lcom/rami_bar/fun_call/utiles/MyApp;->tracker:Lcom/google/android/gms/analytics/Tracker;

    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    const-string v2, "Country"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    const-string v2, "click"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 104
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const v0, 0x7f04001b

    invoke-virtual {p0, v0}, Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;->setContentView(I)V

    .line 61
    invoke-virtual {p0}, Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;->mCountryCodesList:[Ljava/lang/String;

    .line 63
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;->getViewsIds()V

    .line 65
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;->setDataToViews()V

    .line 66
    return-void
.end method

.method public onSendCode(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x1

    .line 120
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;->et_change_number_code_register:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 121
    const v0, 0x7f0900a3

    invoke-virtual {p0, v0}, Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 136
    :goto_0
    return-void

    .line 125
    :cond_0
    const-string v0, ""

    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;->et_change_number_code_register:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;->sendCallRequestToServer(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget v0, p0, Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;->counter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;->counter:I

    .line 129
    iget v0, p0, Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;->counter:I

    if-ne v0, v3, :cond_2

    .line 130
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;->rl_change_number_register_code_send:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 135
    :cond_1
    :goto_1
    sget-object v0, Lcom/rami_bar/fun_call/utiles/MyApp;->tracker:Lcom/google/android/gms/analytics/Tracker;

    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    const-string v2, "CodeSend"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    const-string v2, "click"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    goto :goto_0

    .line 131
    :cond_2
    iget v0, p0, Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;->counter:I

    if-le v0, v3, :cond_1

    .line 132
    invoke-virtual {p0}, Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0900cc

    invoke-virtual {p0, v1}, Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method public onSendRegister(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;->et_change_number_register:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    .line 108
    const v0, 0x7f0900a3

    invoke-virtual {p0, v0}, Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 117
    :goto_0
    return-void

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;->iv_register_send:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 114
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;->et_change_number_register:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;->sendCallRequestToServer(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    sget-object v0, Lcom/rami_bar/fun_call/utiles/MyApp;->tracker:Lcom/google/android/gms/analytics/Tracker;

    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    const-string v2, "Register"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    const-string v2, "click"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 70
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 71
    invoke-static {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->reportActivityStart(Landroid/app/Activity;)V

    .line 73
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;->iv_register_send:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/ActivityChangeNumber;->iv_register_send:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 76
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 80
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 81
    invoke-static {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->reportActivityStop(Landroid/app/Activity;)V

    .line 82
    return-void
.end method
