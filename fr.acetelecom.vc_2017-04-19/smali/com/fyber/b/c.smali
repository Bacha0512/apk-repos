.class public abstract Lcom/fyber/b/c;
.super Lcom/fyber/b/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Lcom/fyber/ads/internal/InternalAd",
        "<TV;*>;>",
        "Lcom/fyber/b/h",
        "<",
        "Ljava/util/List",
        "<TV;>;>;"
    }
.end annotation


# instance fields
.field protected a:Z

.field protected final b:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/fyber/utils/u;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/fyber/b/h;-><init>(Lcom/fyber/utils/u;)V

    iput-boolean v0, p0, Lcom/fyber/b/c;->a:Z

    iput-object p2, p0, Lcom/fyber/b/c;->b:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/fyber/b/c;->c:Z

    return-void
.end method

.method private a(Lcom/fyber/utils/i;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fyber/utils/i;",
            ")",
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v2, 0x0

    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {p1}, Lcom/fyber/utils/i;->b()I

    move-result v0

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    const/16 v1, 0x12b

    if-le v0, v1, :cond_1

    :cond_0
    new-instance v1, Lcom/fyber/exceptions/a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "server_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ERROR - Status code returned by the server - "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/fyber/exceptions/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-virtual {p1}, Lcom/fyber/utils/i;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/fyber/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x0

    iget-boolean v3, p0, Lcom/fyber/b/c;->a:Z

    if-eqz v3, :cond_7

    invoke-static {}, Lcom/fyber/Fyber;->getConfigs()Lcom/fyber/Fyber$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fyber/Fyber$a;->a()Lcom/fyber/utils/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fyber/utils/h;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/fyber/utils/h;->d()I

    move-result v1

    :goto_0
    invoke-virtual {p0}, Lcom/fyber/b/c;->a_()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Parsing ads response\n"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "ads"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    move v4, v2

    :goto_1
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v4, v0, :cond_6

    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v0, "provider_type"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v8, "ad_id"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v0, v8}, Lcom/fyber/b/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/fyber/ads/internal/InternalAd;

    move-result-object v8

    const-string v0, "tracking_params"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v8, v0}, Lcom/fyber/b/c;->a(Lcom/fyber/ads/internal/InternalAd;Lorg/json/JSONObject;)V

    invoke-virtual {v7}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v9

    move v0, v2

    :goto_2
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v0, v10, :cond_3

    invoke-virtual {v9, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "ad_id"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    const-string v11, "provider_type"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    const-string v11, "tracking_params"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Lcom/fyber/ads/internal/InternalAd;->addRawContextData(Ljava/lang/String;Ljava/lang/Object;)Lcom/fyber/ads/internal/InternalAd;

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    iget-boolean v0, p0, Lcom/fyber/b/c;->a:Z

    if-eqz v0, :cond_5

    invoke-virtual {v8}, Lcom/fyber/ads/internal/InternalAd;->getContextData()Ljava/util/Map;

    move-result-object v0

    const-string v7, "orientation"

    invoke-interface {v0, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "orientation"

    invoke-virtual {v8, v0, v3}, Lcom/fyber/ads/internal/InternalAd;->addRawContextData(Ljava/lang/String;Ljava/lang/Object;)Lcom/fyber/ads/internal/InternalAd;

    :cond_4
    const-string v0, "rotation"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v0, v7}, Lcom/fyber/ads/internal/InternalAd;->addRawContextData(Ljava/lang/String;Ljava/lang/Object;)Lcom/fyber/ads/internal/InternalAd;

    :cond_5
    invoke-virtual {v5, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/fyber/b/c;->a_()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/fyber/utils/FyberLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    new-instance v1, Lcom/fyber/exceptions/a;

    const-string v2, "json_parsing"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/fyber/exceptions/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    :cond_6
    return-object v5

    :cond_7
    move-object v3, v1

    move v1, v2

    goto/16 :goto_0
.end method

.method private a(Lcom/fyber/ads/internal/InternalAd;Lorg/json/JSONObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_0
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/fyber/ads/internal/InternalAd;->addTrackingParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/fyber/ads/internal/InternalAd;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/fyber/b/c;->a_()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/fyber/utils/FyberLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method protected abstract a(Ljava/lang/String;Ljava/lang/String;)Lcom/fyber/ads/internal/InternalAd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TV;"
        }
    .end annotation
.end method

.method protected final synthetic b(Lcom/fyber/utils/i;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/fyber/b/c;->a(Lcom/fyber/utils/i;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
