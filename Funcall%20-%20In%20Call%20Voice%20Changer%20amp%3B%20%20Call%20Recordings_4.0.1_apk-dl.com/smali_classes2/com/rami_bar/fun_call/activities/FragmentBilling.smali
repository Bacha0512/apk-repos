.class public Lcom/rami_bar/fun_call/activities/FragmentBilling;
.super Landroid/support/v4/app/Fragment;
.source "FragmentBilling.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rami_bar/fun_call/activities/FragmentBilling$SendPurchaseInterface;
    }
.end annotation


# static fields
.field public static final BILLING_REQUEST:I = 0x3e9

.field private static final PLAY_SERVICES_RESOLUTION_REQUEST:I = 0x3ea

.field private static final SKU_0:Ljava/lang/String; = "code_0"

.field private static final SKU_1:Ljava/lang/String; = "code_1"

.field private static final SKU_2:Ljava/lang/String; = "code_2"

.field private static final SKU_3:Ljava/lang/String; = "code_3"

.field private static final SKU_4:Ljava/lang/String; = "code_4"

.field private static final SKU_5:Ljava/lang/String; = "code_5"

.field private static final SKU_6:Ljava/lang/String; = "record_code_0"

.field private static final SKU_7:Ljava/lang/String; = "record_code_1"

.field private static final SKU_8:Ljava/lang/String; = "record_code_2"


# instance fields
.field private lv_billing:Landroid/widget/ListView;

.field mConsumeFinishedListener:Lcom/android/vending/billing/util/IabHelper$OnConsumeFinishedListener;

.field mGotInventoryListener:Lcom/android/vending/billing/util/IabHelper$QueryInventoryFinishedListener;

.field mHelper:Lcom/android/vending/billing/util/IabHelper;

.field private skuList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private swipe_refresh:Landroid/support/v4/widget/SwipeRefreshLayout;

.field private tv_billing_help:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 265
    new-instance v0, Lcom/rami_bar/fun_call/activities/FragmentBilling$4;

    invoke-direct {v0, p0}, Lcom/rami_bar/fun_call/activities/FragmentBilling$4;-><init>(Lcom/rami_bar/fun_call/activities/FragmentBilling;)V

    iput-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentBilling;->mGotInventoryListener:Lcom/android/vending/billing/util/IabHelper$QueryInventoryFinishedListener;

    .line 324
    new-instance v0, Lcom/rami_bar/fun_call/activities/FragmentBilling$5;

    invoke-direct {v0, p0}, Lcom/rami_bar/fun_call/activities/FragmentBilling$5;-><init>(Lcom/rami_bar/fun_call/activities/FragmentBilling;)V

    iput-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentBilling;->mConsumeFinishedListener:Lcom/android/vending/billing/util/IabHelper$OnConsumeFinishedListener;

    return-void
.end method

.method static synthetic access$000(Lcom/rami_bar/fun_call/activities/FragmentBilling;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/rami_bar/fun_call/activities/FragmentBilling;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentBilling;->tv_billing_help:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/rami_bar/fun_call/activities/FragmentBilling;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/rami_bar/fun_call/activities/FragmentBilling;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentBilling;->skuList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/rami_bar/fun_call/activities/FragmentBilling;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/rami_bar/fun_call/activities/FragmentBilling;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/rami_bar/fun_call/activities/FragmentBilling;->setBillingListView(Ljava/util/ArrayList;)V

    return-void
.end method

.method private checkPlayServices()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 247
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v1

    .line 248
    .local v1, "googleAPI":Lcom/google/android/gms/common/GoogleApiAvailability;
    invoke-virtual {p0}, Lcom/rami_bar/fun_call/activities/FragmentBilling;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v2

    .line 249
    .local v2, "result":I
    if-eqz v2, :cond_1

    .line 250
    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/GoogleApiAvailability;->isUserResolvableError(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 251
    invoke-virtual {p0}, Lcom/rami_bar/fun_call/activities/FragmentBilling;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const/16 v5, 0x3ea

    invoke-virtual {v1, v4, v2, v5}, Lcom/google/android/gms/common/GoogleApiAvailability;->getErrorDialog(Landroid/app/Activity;II)Landroid/app/Dialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    .end local v1    # "googleAPI":Lcom/google/android/gms/common/GoogleApiAvailability;
    .end local v2    # "result":I
    :cond_0
    :goto_0
    return v3

    .line 255
    .restart local v1    # "googleAPI":Lcom/google/android/gms/common/GoogleApiAvailability;
    .restart local v2    # "result":I
    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    .line 256
    .end local v1    # "googleAPI":Lcom/google/android/gms/common/GoogleApiAvailability;
    .end local v2    # "result":I
    :catch_0
    move-exception v0

    .line 257
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private getViewsIds(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 115
    const v0, 0x7f100164

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentBilling;->tv_billing_help:Landroid/widget/TextView;

    .line 116
    const v0, 0x7f10010a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SwipeRefreshLayout;

    iput-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentBilling;->swipe_refresh:Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 117
    const v0, 0x7f100165

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentBilling;->lv_billing:Landroid/widget/ListView;

    .line 118
    return-void
.end method

.method private handleCallbacks()V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentBilling;->tv_billing_help:Landroid/widget/TextView;

    new-instance v1, Lcom/rami_bar/fun_call/activities/FragmentBilling$1;

    invoke-direct {v1, p0}, Lcom/rami_bar/fun_call/activities/FragmentBilling$1;-><init>(Lcom/rami_bar/fun_call/activities/FragmentBilling;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    return-void
.end method

.method private handleIAP()V
    .locals 3

    .prologue
    .line 200
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/rami_bar/fun_call/activities/FragmentBilling;->skuList:Ljava/util/ArrayList;

    .line 202
    sget-object v1, Lcom/rami_bar/fun_call/activities/ActivityMain;->json_get_caller_info:Lcom/rami_bar/fun_call/objects/receive/JsonGetCallerInfo;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/rami_bar/fun_call/activities/ActivityMain;->json_get_caller_info:Lcom/rami_bar/fun_call/objects/receive/JsonGetCallerInfo;

    iget-object v1, v1, Lcom/rami_bar/fun_call/objects/receive/JsonGetCallerInfo;->purchase_options:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/rami_bar/fun_call/activities/ActivityMain;->json_get_caller_info:Lcom/rami_bar/fun_call/objects/receive/JsonGetCallerInfo;

    iget-object v1, v1, Lcom/rami_bar/fun_call/objects/receive/JsonGetCallerInfo;->purchase_options:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 203
    :cond_0
    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/FragmentBilling;->skuList:Ljava/util/ArrayList;

    const-string v2, "code_5"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/FragmentBilling;->skuList:Ljava/util/ArrayList;

    const-string v2, "code_4"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/FragmentBilling;->skuList:Ljava/util/ArrayList;

    const-string v2, "code_3"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/FragmentBilling;->skuList:Ljava/util/ArrayList;

    const-string v2, "code_2"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/FragmentBilling;->skuList:Ljava/util/ArrayList;

    const-string v2, "code_1"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/FragmentBilling;->skuList:Ljava/util/ArrayList;

    const-string v2, "code_0"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/FragmentBilling;->skuList:Ljava/util/ArrayList;

    const-string v2, "record_code_0"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/FragmentBilling;->skuList:Ljava/util/ArrayList;

    const-string v2, "record_code_1"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/FragmentBilling;->skuList:Ljava/util/ArrayList;

    const-string v2, "record_code_2"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f090079

    invoke-virtual {p0, v2}, Lcom/rami_bar/fun_call/activities/FragmentBilling;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f09008f

    invoke-virtual {p0, v2}, Lcom/rami_bar/fun_call/activities/FragmentBilling;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, "base64EncodedPublicKey":Ljava/lang/String;
    new-instance v1, Lcom/android/vending/billing/util/IabHelper;

    invoke-virtual {p0}, Lcom/rami_bar/fun_call/activities/FragmentBilling;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/vending/billing/util/IabHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/rami_bar/fun_call/activities/FragmentBilling;->mHelper:Lcom/android/vending/billing/util/IabHelper;

    .line 221
    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/FragmentBilling;->mHelper:Lcom/android/vending/billing/util/IabHelper;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/vending/billing/util/IabHelper;->enableDebugLogging(Z)V

    .line 224
    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/FragmentBilling;->mHelper:Lcom/android/vending/billing/util/IabHelper;

    new-instance v2, Lcom/rami_bar/fun_call/activities/FragmentBilling$3;

    invoke-direct {v2, p0}, Lcom/rami_bar/fun_call/activities/FragmentBilling$3;-><init>(Lcom/rami_bar/fun_call/activities/FragmentBilling;)V

    invoke-virtual {v1, v2}, Lcom/android/vending/billing/util/IabHelper;->startSetup(Lcom/android/vending/billing/util/IabHelper$OnIabSetupFinishedListener;)V

    .line 243
    return-void

    .line 213
    .end local v0    # "base64EncodedPublicKey":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/FragmentBilling;->skuList:Ljava/util/ArrayList;

    sget-object v2, Lcom/rami_bar/fun_call/activities/ActivityMain;->json_get_caller_info:Lcom/rami_bar/fun_call/objects/receive/JsonGetCallerInfo;

    iget-object v2, v2, Lcom/rami_bar/fun_call/objects/receive/JsonGetCallerInfo;->purchase_options:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public static sendPurchase(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "order_json"    # Ljava/lang/String;
    .param p2, "signature"    # Ljava/lang/String;

    .prologue
    .line 361
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 409
    :cond_0
    :goto_0
    return-void

    .line 365
    :cond_1
    const v5, 0x7f0900a0

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {p0, v5, v6}, Lcom/rami_bar/fun_call/utiles/Functions;->startProgressDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 367
    new-instance v4, Lcom/rami_bar/fun_call/objects/send/JsonSendPurchase;

    invoke-direct {v4}, Lcom/rami_bar/fun_call/objects/send/JsonSendPurchase;-><init>()V

    .line 368
    .local v4, "send":Lcom/rami_bar/fun_call/objects/send/JsonSendPurchase;
    invoke-static {p0}, Lcom/rami_bar/fun_call/utiles/SharedUser;->getInstance(Landroid/content/Context;)Lcom/rami_bar/fun_call/utiles/SharedUser;

    move-result-object v5

    invoke-virtual {v5}, Lcom/rami_bar/fun_call/utiles/SharedUser;->getEmail()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/rami_bar/fun_call/objects/send/JsonSendPurchase;->email:Ljava/lang/String;

    .line 369
    iput-object p1, v4, Lcom/rami_bar/fun_call/objects/send/JsonSendPurchase;->order_json:Ljava/lang/String;

    .line 370
    iput-object p2, v4, Lcom/rami_bar/fun_call/objects/send/JsonSendPurchase;->signature:Ljava/lang/String;

    .line 372
    new-instance v5, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v5}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    new-instance v6, Lcom/rami_bar/fun_call/utiles/EncryptionInterceptor;

    invoke-direct {v6}, Lcom/rami_bar/fun_call/utiles/EncryptionInterceptor;-><init>()V

    invoke-virtual {v5, v6}, Lokhttp3/OkHttpClient$Builder;->addNetworkInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v2

    .line 374
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

    .line 375
    .local v3, "retrofit":Lretrofit2/Retrofit;
    const-class v5, Lcom/rami_bar/fun_call/activities/FragmentBilling$SendPurchaseInterface;

    invoke-virtual {v3, v5}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rami_bar/fun_call/activities/FragmentBilling$SendPurchaseInterface;

    .line 376
    .local v0, "anInterface":Lcom/rami_bar/fun_call/activities/FragmentBilling$SendPurchaseInterface;
    invoke-interface {v0, v4}, Lcom/rami_bar/fun_call/activities/FragmentBilling$SendPurchaseInterface;->send(Lcom/rami_bar/fun_call/objects/send/JsonSendPurchase;)Lretrofit2/Call;

    move-result-object v1

    .line 377
    .local v1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lokhttp3/ResponseBody;>;"
    new-instance v5, Lcom/rami_bar/fun_call/activities/FragmentBilling$6;

    invoke-direct {v5, p0}, Lcom/rami_bar/fun_call/activities/FragmentBilling$6;-><init>(Landroid/app/Activity;)V

    invoke-interface {v1, v5}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    goto :goto_0
.end method

.method private setBillingListView(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/rami_bar/fun_call/objects/receive/Billing;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 147
    .local p1, "billing_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/rami_bar/fun_call/objects/receive/Billing;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_0

    .line 197
    :goto_0
    return-void

    .line 151
    :cond_0
    new-instance v0, Lcom/rami_bar/fun_call/adapters/BillingAdapter;

    invoke-virtual {p0}, Lcom/rami_bar/fun_call/activities/FragmentBilling;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f040077

    invoke-direct {v0, v1, v2, p1}, Lcom/rami_bar/fun_call/adapters/BillingAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    .line 152
    .local v0, "billing_adapter":Lcom/rami_bar/fun_call/adapters/BillingAdapter;
    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/FragmentBilling;->lv_billing:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 153
    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/FragmentBilling;->lv_billing:Landroid/widget/ListView;

    new-instance v2, Lcom/rami_bar/fun_call/activities/FragmentBilling$2;

    invoke-direct {v2, p0}, Lcom/rami_bar/fun_call/activities/FragmentBilling$2;-><init>(Lcom/rami_bar/fun_call/activities/FragmentBilling;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 196
    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/FragmentBilling;->swipe_refresh:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    goto :goto_0
.end method

.method private setDataToViews()V
    .locals 1

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/FragmentBilling;->startLoadingRefresh()V

    .line 123
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/FragmentBilling;->checkPlayServices()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/FragmentBilling;->handleIAP()V

    .line 126
    :cond_0
    return-void
.end method

.method public static showViewFromBottom(Landroid/view/View;)V
    .locals 9
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 129
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 130
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v6, 0x40000000    # 2.0f

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 132
    .local v0, "animation":Landroid/view/animation/Animation;
    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 133
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 134
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 136
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 137
    return-void
.end method

.method private startLoadingRefresh()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 140
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentBilling;->swipe_refresh:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0, v3}, Landroid/support/v4/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 141
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentBilling;->swipe_refresh:Landroid/support/v4/widget/SwipeRefreshLayout;

    new-array v1, v4, [I

    const v2, 0x7f0e002a

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorSchemeResources([I)V

    .line 142
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentBilling;->swipe_refresh:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/16 v1, 0x64

    invoke-virtual {v0, v3, v3, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setProgressViewOffset(ZII)V

    .line 143
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentBilling;->swipe_refresh:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0, v4}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 144
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 335
    packed-switch p1, :pswitch_data_0

    .line 355
    :goto_0
    return-void

    .line 337
    :pswitch_0
    iget-object v2, p0, Lcom/rami_bar/fun_call/activities/FragmentBilling;->mHelper:Lcom/android/vending/billing/util/IabHelper;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/rami_bar/fun_call/activities/FragmentBilling;->mHelper:Lcom/android/vending/billing/util/IabHelper;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/vending/billing/util/IabHelper;->handleActivityResult(IILandroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 338
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 339
    :cond_0
    if-eqz p3, :cond_1

    .line 340
    const-string v2, "INAPP_PURCHASE_DATA"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 341
    .local v0, "order_json":Ljava/lang/String;
    const-string v2, "INAPP_DATA_SIGNATURE"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 342
    .local v1, "signature":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/rami_bar/fun_call/activities/FragmentBilling;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/rami_bar/fun_call/utiles/SharedUser;->getInstance(Landroid/content/Context;)Lcom/rami_bar/fun_call/utiles/SharedUser;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/rami_bar/fun_call/utiles/SharedUser;->setOrderJson(Ljava/lang/String;)V

    .line 343
    invoke-virtual {p0}, Lcom/rami_bar/fun_call/activities/FragmentBilling;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/rami_bar/fun_call/utiles/SharedUser;->getInstance(Landroid/content/Context;)Lcom/rami_bar/fun_call/utiles/SharedUser;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/rami_bar/fun_call/utiles/SharedUser;->setSignature(Ljava/lang/String;)V

    .line 344
    invoke-virtual {p0}, Lcom/rami_bar/fun_call/activities/FragmentBilling;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/rami_bar/fun_call/activities/FragmentBilling;->sendPurchase(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/FragmentBilling;->handleIAP()V

    goto :goto_0

    .line 348
    .end local v0    # "order_json":Ljava/lang/String;
    .end local v1    # "signature":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/rami_bar/fun_call/activities/FragmentBilling;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f09007a

    invoke-virtual {p0, v3}, Lcom/rami_bar/fun_call/activities/FragmentBilling;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 350
    sget-object v2, Lcom/rami_bar/fun_call/utiles/MyApp;->tracker:Lcom/google/android/gms/analytics/Tracker;

    new-instance v3, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v3

    const-string v4, "error"

    invoke-virtual {v3, v4}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v3

    const-string v4, "onActivityResult"

    invoke-virtual {v3, v4}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 351
    iget-object v2, p0, Lcom/rami_bar/fun_call/activities/FragmentBilling;->tv_billing_help:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/rami_bar/fun_call/activities/FragmentBilling;->showViewFromBottom(Landroid/view/View;)V

    goto :goto_0

    .line 335
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 74
    const v1, 0x7f04003c

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 76
    .local v0, "v":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/rami_bar/fun_call/activities/FragmentBilling;->getViewsIds(Landroid/view/View;)V

    .line 78
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/FragmentBilling;->setDataToViews()V

    .line 80
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/FragmentBilling;->handleCallbacks()V

    .line 82
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 87
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 88
    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/FragmentBilling;->mHelper:Lcom/android/vending/billing/util/IabHelper;

    if-eqz v1, :cond_0

    .line 90
    :try_start_0
    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/FragmentBilling;->mHelper:Lcom/android/vending/billing/util/IabHelper;

    invoke-virtual {v1}, Lcom/android/vending/billing/util/IabHelper;->disposeWhenFinished()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/rami_bar/fun_call/activities/FragmentBilling;->mHelper:Lcom/android/vending/billing/util/IabHelper;

    .line 96
    :cond_0
    return-void

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method verifyDeveloperPayload(Lcom/android/vending/billing/util/Purchase;)Z
    .locals 2
    .param p1, "p"    # Lcom/android/vending/billing/util/Purchase;

    .prologue
    .line 319
    invoke-virtual {p1}, Lcom/android/vending/billing/util/Purchase;->getDeveloperPayload()Ljava/lang/String;

    move-result-object v0

    .line 320
    .local v0, "payload":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/rami_bar/fun_call/activities/FragmentBilling;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/rami_bar/fun_call/utiles/SharedUser;->getInstance(Landroid/content/Context;)Lcom/rami_bar/fun_call/utiles/SharedUser;

    move-result-object v1

    invoke-virtual {v1}, Lcom/rami_bar/fun_call/utiles/SharedUser;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method
