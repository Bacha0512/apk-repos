.class public final Lcom/fyber/b/l;
.super Lcom/fyber/b/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fyber/b/l$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fyber/b/k",
        "<",
        "Lcom/fyber/b/l$a;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final b:Lcom/fyber/currency/a/a;


# instance fields
.field private final e:Lcom/fyber/requesters/VirtualCurrencyCallback;

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Landroid/content/Context;

.field private k:Landroid/os/Handler;

.field private l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/fyber/currency/a/a;

    invoke-direct {v0}, Lcom/fyber/currency/a/a;-><init>()V

    sput-object v0, Lcom/fyber/b/l;->b:Lcom/fyber/currency/a/a;

    return-void
.end method

.method private constructor <init>(Lcom/fyber/b/l;)V
    .locals 2

    iget-object v0, p1, Lcom/fyber/b/l;->d:Lcom/fyber/utils/u;

    iget-object v1, p1, Lcom/fyber/b/l;->a:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/fyber/b/k;-><init>(Lcom/fyber/utils/u;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fyber/b/l;->l:Z

    iget-object v0, p1, Lcom/fyber/b/l;->e:Lcom/fyber/requesters/VirtualCurrencyCallback;

    iput-object v0, p0, Lcom/fyber/b/l;->e:Lcom/fyber/requesters/VirtualCurrencyCallback;

    iget-object v0, p1, Lcom/fyber/b/l;->j:Landroid/content/Context;

    iput-object v0, p0, Lcom/fyber/b/l;->j:Landroid/content/Context;

    iget-boolean v0, p1, Lcom/fyber/b/l;->f:Z

    iput-boolean v0, p0, Lcom/fyber/b/l;->f:Z

    iget-object v0, p1, Lcom/fyber/b/l;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/fyber/b/l;->g:Ljava/lang/String;

    iget-object v0, p1, Lcom/fyber/b/l;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/fyber/b/l;->h:Ljava/lang/String;

    iget-object v0, p1, Lcom/fyber/b/l;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/fyber/b/l;->i:Ljava/lang/String;

    iget-object v0, p1, Lcom/fyber/b/l;->k:Landroid/os/Handler;

    iput-object v0, p0, Lcom/fyber/b/l;->k:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fyber/b/l;->l:Z

    return-void
.end method

.method public constructor <init>(Lcom/fyber/utils/u;Lcom/fyber/requesters/VirtualCurrencyCallback;Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1, p3}, Lcom/fyber/b/k;-><init>(Lcom/fyber/utils/u;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fyber/b/l;->l:Z

    iput-object p2, p0, Lcom/fyber/b/l;->e:Lcom/fyber/requesters/VirtualCurrencyCallback;

    invoke-virtual {p4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/b/l;->j:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/fyber/b/l;)Lcom/fyber/requesters/VirtualCurrencyCallback;
    .locals 1

    iget-object v0, p0, Lcom/fyber/b/l;->e:Lcom/fyber/requesters/VirtualCurrencyCallback;

    return-object v0
.end method

.method private a(Lcom/fyber/currency/VirtualCurrencyErrorResponse;)V
    .locals 1

    new-instance v0, Lcom/fyber/b/l$3;

    invoke-direct {v0, p0, p1}, Lcom/fyber/b/l$3;-><init>(Lcom/fyber/b/l;Lcom/fyber/currency/VirtualCurrencyErrorResponse;)V

    invoke-direct {p0, v0}, Lcom/fyber/b/l;->a(Lcom/fyber/utils/d;)V

    return-void
.end method

.method private a(Lcom/fyber/currency/VirtualCurrencyResponse;)V
    .locals 1

    new-instance v0, Lcom/fyber/b/l$4;

    invoke-direct {v0, p0, p1}, Lcom/fyber/b/l$4;-><init>(Lcom/fyber/b/l;Lcom/fyber/currency/VirtualCurrencyResponse;)V

    invoke-direct {p0, v0}, Lcom/fyber/b/l;->a(Lcom/fyber/utils/d;)V

    return-void
.end method

.method private a(Lcom/fyber/utils/d;)V
    .locals 1

    iget-object v0, p0, Lcom/fyber/b/l;->k:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fyber/b/l;->k:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/fyber/Fyber;->getConfigs()Lcom/fyber/Fyber$a;

    invoke-static {p1}, Lcom/fyber/Fyber$a;->a(Lcom/fyber/utils/d;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/fyber/b/l;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/fyber/b/l;->j:Landroid/content/Context;

    return-object v0
.end method

.method private static e(Ljava/lang/String;)Lcom/fyber/b/l$a;
    .locals 8

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "delta_of_coins"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    const-string v1, "latest_transaction_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "currency_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "currency_name"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v1, "is_default"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    new-instance v1, Lcom/fyber/currency/VirtualCurrencyResponse;

    invoke-direct/range {v1 .. v7}, Lcom/fyber/currency/VirtualCurrencyResponse;-><init>(DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v2, Lcom/fyber/currency/VirtualCurrencyErrorResponse$ErrorType;->ERROR_INVALID_RESPONSE:Lcom/fyber/currency/VirtualCurrencyErrorResponse$ErrorType;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/fyber/currency/VirtualCurrencyErrorResponse;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Lcom/fyber/currency/VirtualCurrencyErrorResponse;-><init>(Lcom/fyber/currency/VirtualCurrencyErrorResponse$ErrorType;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static f(Ljava/lang/String;)Lcom/fyber/currency/VirtualCurrencyErrorResponse;
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "code"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :try_start_1
    const-string v1, "message"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v1, Lcom/fyber/currency/VirtualCurrencyErrorResponse$ErrorType;->SERVER_RETURNED_ERROR:Lcom/fyber/currency/VirtualCurrencyErrorResponse$ErrorType;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    new-instance v3, Lcom/fyber/currency/VirtualCurrencyErrorResponse;

    invoke-direct {v3, v1, v0, v2}, Lcom/fyber/currency/VirtualCurrencyErrorResponse;-><init>(Lcom/fyber/currency/VirtualCurrencyErrorResponse$ErrorType;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :catch_0
    move-exception v0

    move-object v2, v0

    move-object v0, v1

    :goto_1
    const-string v1, "VirtualCurrencyNetworkOperation"

    const-string v3, "An exception was triggered while parsing error response"

    invoke-static {v1, v3, v2}, Lcom/fyber/utils/FyberLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    sget-object v1, Lcom/fyber/currency/VirtualCurrencyErrorResponse$ErrorType;->ERROR_OTHER:Lcom/fyber/currency/VirtualCurrencyErrorResponse$ErrorType;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v2, v1

    goto :goto_1
.end method


# virtual methods
.method public final a(Landroid/os/Handler;)Lcom/fyber/b/l;
    .locals 0

    iput-object p1, p0, Lcom/fyber/b/l;->k:Landroid/os/Handler;

    return-object p0
.end method

.method public final a(Ljava/util/Map;)Lcom/fyber/b/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/fyber/b/l;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fyber/b/l;->d:Lcom/fyber/utils/u;

    invoke-virtual {v0, p1}, Lcom/fyber/utils/u;->a(Ljava/util/Map;)Lcom/fyber/utils/u;

    return-object p0
.end method

.method public final a(Z)Lcom/fyber/b/l;
    .locals 0

    iput-boolean p1, p0, Lcom/fyber/b/l;->f:Z

    return-object p0
.end method

.method protected final synthetic a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    invoke-static {p1}, Lcom/fyber/b/l;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/fyber/b/l;->f(Ljava/lang/String;)Lcom/fyber/currency/VirtualCurrencyErrorResponse;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/fyber/currency/VirtualCurrencyErrorResponse;

    sget-object v1, Lcom/fyber/currency/VirtualCurrencyErrorResponse$ErrorType;->ERROR_INVALID_RESPONSE_SIGNATURE:Lcom/fyber/currency/VirtualCurrencyErrorResponse$ErrorType;

    const/4 v2, 0x0

    const-string v3, "The signature received in the request did not match the expected one"

    invoke-direct {v0, v1, v2, v3}, Lcom/fyber/currency/VirtualCurrencyErrorResponse;-><init>(Lcom/fyber/currency/VirtualCurrencyErrorResponse$ErrorType;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    const-wide/16 v2, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    check-cast p1, Lcom/fyber/b/l$a;

    instance-of v0, p1, Lcom/fyber/currency/VirtualCurrencyResponse;

    if-eqz v0, :cond_5

    check-cast p1, Lcom/fyber/currency/VirtualCurrencyResponse;

    iget-object v0, p0, Lcom/fyber/b/l;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/fyber/currency/a/b;->a(Landroid/content/Context;)Lcom/fyber/currency/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fyber/currency/a/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/fyber/currency/VirtualCurrencyResponse;->getCurrencyId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/fyber/b/l;->g:Ljava/lang/String;

    invoke-static {v5}, Lcom/fyber/utils/StringUtils;->nullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v0}, Lcom/fyber/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v9

    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {v1, v4}, Lcom/fyber/currency/a/b;->a(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lcom/fyber/currency/a/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/fyber/b/l;

    invoke-direct {v1, p0}, Lcom/fyber/b/l;-><init>(Lcom/fyber/b/l;)V

    invoke-virtual {v1, v0}, Lcom/fyber/b/l;->d(Ljava/lang/String;)Lcom/fyber/b/l;

    iget-object v0, v1, Lcom/fyber/b/l;->d:Lcom/fyber/utils/u;

    const-string v4, "currency_id"

    iget-object v5, p0, Lcom/fyber/b/l;->g:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lcom/fyber/utils/u;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/fyber/utils/u;

    invoke-static {}, Lcom/fyber/Fyber;->getConfigs()Lcom/fyber/Fyber$a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/fyber/Fyber$a;->a(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move v0, v8

    :goto_1
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fyber/b/l;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/fyber/currency/a/b;->a(Landroid/content/Context;)Lcom/fyber/currency/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/currency/a/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/fyber/currency/VirtualCurrencyResponse;->getCurrencyId()Ljava/lang/String;

    move-result-object v5

    new-instance v1, Lcom/fyber/currency/VirtualCurrencyResponse;

    invoke-virtual {p1}, Lcom/fyber/currency/VirtualCurrencyResponse;->getLatestTransactionId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/fyber/currency/VirtualCurrencyResponse;->getCurrencyName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/fyber/currency/VirtualCurrencyResponse;->isDefault()Z

    move-result v7

    invoke-direct/range {v1 .. v7}, Lcom/fyber/currency/VirtualCurrencyResponse;-><init>(DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v4, Lcom/fyber/b/l;->b:Lcom/fyber/currency/a/a;

    invoke-virtual {v4, v1, v5, v0}, Lcom/fyber/currency/a/a;->a(Lcom/fyber/b/l$a;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fyber/b/l;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/fyber/currency/a/b;->a(Landroid/content/Context;)Lcom/fyber/currency/a/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fyber/currency/a/b;->a(Lcom/fyber/currency/VirtualCurrencyResponse;)V

    invoke-virtual {p1}, Lcom/fyber/currency/VirtualCurrencyResponse;->getDeltaOfCoins()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/fyber/b/l;->f:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/fyber/currency/VirtualCurrencyResponse;->getCurrencyName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fyber/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_2
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    sget-object v2, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->VCS_COINS_NOTIFICATION:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    invoke-static {v2}, Lcom/fyber/utils/t;->a(Lcom/fyber/Fyber$Settings$UIStringIdentifier;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/fyber/currency/VirtualCurrencyResponse;->getDeltaOfCoins()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v8

    aput-object v0, v3, v9

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/fyber/b/l$2;

    invoke-direct {v1, p0, v0}, Lcom/fyber/b/l$2;-><init>(Lcom/fyber/b/l;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/fyber/b/l;->a(Lcom/fyber/utils/d;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/fyber/b/l;->a(Lcom/fyber/currency/VirtualCurrencyResponse;)V

    :cond_1
    :goto_3
    const/4 v0, 0x0

    return-object v0

    :cond_2
    move v0, v8

    goto/16 :goto_0

    :cond_3
    move v0, v9

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->VCS_DEFAULT_CURRENCY:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    invoke-static {v0}, Lcom/fyber/utils/t;->a(Lcom/fyber/Fyber$Settings$UIStringIdentifier;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    check-cast p1, Lcom/fyber/currency/VirtualCurrencyErrorResponse;

    iget-object v0, p0, Lcom/fyber/b/l;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/fyber/currency/a/b;->a(Landroid/content/Context;)Lcom/fyber/currency/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/currency/a/b;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/fyber/b/l;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/fyber/utils/StringUtils;->nullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    move-object v0, v1

    :goto_4
    sget-object v2, Lcom/fyber/b/l;->b:Lcom/fyber/currency/a/a;

    invoke-virtual {v2, p1, v0, v1}, Lcom/fyber/currency/a/a;->a(Lcom/fyber/b/l$a;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/fyber/b/l;->a(Lcom/fyber/currency/VirtualCurrencyErrorResponse;)V

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/fyber/b/l;->g:Ljava/lang/String;

    goto :goto_4
.end method

.method protected final synthetic a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Lcom/fyber/b/l;->e(Ljava/lang/String;)Lcom/fyber/b/l$a;

    move-result-object v0

    return-object v0
.end method

.method protected final a()Z
    .locals 4

    iget-boolean v0, p0, Lcom/fyber/b/l;->l:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/fyber/b/l;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/fyber/currency/a/b;->a(Landroid/content/Context;)Lcom/fyber/currency/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fyber/currency/a/b;->a()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/fyber/b/l;->b:Lcom/fyber/currency/a/a;

    iget-object v3, p0, Lcom/fyber/b/l;->g:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lcom/fyber/currency/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/fyber/b/l$a;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v2, Lcom/fyber/currency/a/a;->a:Lcom/fyber/currency/VirtualCurrencyErrorResponse;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    instance-of v1, v0, Lcom/fyber/currency/VirtualCurrencyResponse;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/fyber/currency/VirtualCurrencyResponse;

    invoke-direct {p0, v0}, Lcom/fyber/b/l;->a(Lcom/fyber/currency/VirtualCurrencyResponse;)V

    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_0
    check-cast v0, Lcom/fyber/currency/VirtualCurrencyErrorResponse;

    invoke-direct {p0, v0}, Lcom/fyber/b/l;->a(Lcom/fyber/currency/VirtualCurrencyErrorResponse;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/fyber/b/l;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/fyber/utils/StringUtils;->nullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/fyber/b/l;->g:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/fyber/currency/a/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    iget-object v1, p0, Lcom/fyber/b/l;->d:Lcom/fyber/utils/u;

    const-string v2, "ltid"

    invoke-virtual {v1, v2, v0}, Lcom/fyber/utils/u;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/fyber/utils/u;

    :cond_3
    const/4 v0, 0x1

    goto :goto_1
.end method

.method protected final a_()Ljava/lang/String;
    .locals 1

    const-string v0, "VirtualCurrencyNetworkOperation"

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Lcom/fyber/b/l;
    .locals 2

    invoke-static {p1}, Lcom/fyber/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/fyber/b/l;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/fyber/b/l;->d:Lcom/fyber/utils/u;

    const-string v1, "currency_id"

    invoke-virtual {v0, v1, p1}, Lcom/fyber/utils/u;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/fyber/utils/u;

    :cond_0
    return-object p0
.end method

.method protected final synthetic b(Ljava/io/IOException;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/fyber/b/l$1;

    invoke-direct {v0, p0}, Lcom/fyber/b/l$1;-><init>(Lcom/fyber/b/l;)V

    invoke-direct {p0, v0}, Lcom/fyber/b/l;->a(Lcom/fyber/utils/d;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final c(Ljava/lang/String;)Lcom/fyber/b/l;
    .locals 1

    iput-object p1, p0, Lcom/fyber/b/l;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/fyber/b/l;->d:Lcom/fyber/utils/u;

    invoke-virtual {v0, p1}, Lcom/fyber/utils/u;->b(Ljava/lang/String;)Lcom/fyber/utils/u;

    return-object p0
.end method

.method public final d(Ljava/lang/String;)Lcom/fyber/b/l;
    .locals 2

    iput-object p1, p0, Lcom/fyber/b/l;->i:Ljava/lang/String;

    iget-object v0, p0, Lcom/fyber/b/l;->d:Lcom/fyber/utils/u;

    const-string v1, "ltid"

    invoke-virtual {v0, v1, p1}, Lcom/fyber/utils/u;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/fyber/utils/u;

    return-object p0
.end method
