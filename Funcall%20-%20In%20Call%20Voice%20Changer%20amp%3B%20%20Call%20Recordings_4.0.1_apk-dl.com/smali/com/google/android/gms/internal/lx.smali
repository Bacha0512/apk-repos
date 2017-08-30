.class final Lcom/google/android/gms/internal/lx;
.super Ljava/lang/Object;


# direct methods
.method private static zze(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, Lorg/json/JSONArray;

    if-eqz v3, :cond_1

    check-cast v0, Lorg/json/JSONArray;

    invoke-static {v0}, Lcom/google/android/gms/internal/lx;->zze(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    :cond_0
    :goto_1
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    instance-of v3, v0, Lorg/json/JSONObject;

    if-eqz v3, :cond_0

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/google/android/gms/internal/lx;->zzq(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v0

    goto :goto_1

    :cond_2
    return-object v2
.end method

.method public static zzgx(Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget-object v2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-eq v1, v2, :cond_0

    invoke-static {v1}, Lcom/google/android/gms/internal/lx;->zzq(Lorg/json/JSONObject;)Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "RawUserInfoParser"

    const-string v2, "Failed to parse JSONObject into Map."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/google/android/gms/internal/ip;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ip;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static zzq(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v2, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v2}, Landroid/support/v4/util/ArrayMap;-><init>()V

    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v4, v1, Lorg/json/JSONArray;

    if-eqz v4, :cond_1

    check-cast v1, Lorg/json/JSONArray;

    invoke-static {v1}, Lcom/google/android/gms/internal/lx;->zze(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v1

    :cond_0
    :goto_1
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    instance-of v4, v1, Lorg/json/JSONObject;

    if-eqz v4, :cond_0

    check-cast v1, Lorg/json/JSONObject;

    invoke-static {v1}, Lcom/google/android/gms/internal/lx;->zzq(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v1

    goto :goto_1

    :cond_2
    return-object v2
.end method
