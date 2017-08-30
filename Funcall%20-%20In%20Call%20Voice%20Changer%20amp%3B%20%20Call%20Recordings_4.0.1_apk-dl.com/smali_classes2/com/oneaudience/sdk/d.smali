.class Lcom/oneaudience/sdk/d;
.super Lcom/oneaudience/sdk/e;


# static fields
.field private static final d:Ljava/lang/String;

.field private static final e:Landroid/net/Uri;


# instance fields
.field private f:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/oneaudience/sdk/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneaudience/sdk/d;->d:Ljava/lang/String;

    const-string v0, "https://api.oneaudience.com/api"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oneaudience/sdk/d;->e:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneaudience/sdk/d;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    invoke-direct {p0}, Lcom/oneaudience/sdk/e;-><init>()V

    sget-object v0, Lcom/oneaudience/sdk/d;->e:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "devices"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    if-eqz p1, :cond_0

    const-string v1, "optout"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/oneaudience/sdk/d;->f:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/content/SharedPreferences;)Lcom/oneaudience/sdk/b/a/c;
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/oneaudience/sdk/d;->b(Landroid/content/Context;Landroid/content/SharedPreferences;)Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    :goto_0
    :try_start_1
    const-string v0, "facebook_json"

    const-string v2, ""

    invoke-interface {p2, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "facebook_json"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    const-string v0, "oneAudienceId"

    const-string v2, ""

    invoke-interface {p2, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oneaudience/sdk/b/b/e;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "id"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v0, "email"

    const-string v2, ""

    invoke-interface {p2, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "email"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v0, "lastOpenDate"

    const-wide/16 v2, 0x0

    invoke-interface {p2, v0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    const-string v0, "lastOpenDate"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_2
    const-string v0, "events"

    const-string v2, "[]"

    invoke-interface {p2, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const-string v0, "events"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Lcom/oneaudience/sdk/b/a/c;

    iget-object v3, p0, Lcom/oneaudience/sdk/d;->f:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0, v1}, Lcom/oneaudience/sdk/b/a/c;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Object;)V

    return-object v2

    :catch_0
    move-exception v1

    sget-object v2, Lcom/oneaudience/sdk/d;->d:Ljava/lang/String;

    const-string v3, "Error getting basic parameters"

    invoke-static {v2, v3, v1}, Lcom/oneaudience/sdk/b/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p1, p2, v1}, Lcom/oneaudience/sdk/f;->a(Landroid/content/Context;Landroid/content/SharedPreferences;Ljava/lang/Object;)V

    move-object v1, v0

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v2, Lcom/oneaudience/sdk/d;->d:Ljava/lang/String;

    const-string v3, "Error getting facebook Json"

    invoke-static {v2, v3, v0}, Lcom/oneaudience/sdk/b/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p1, p2, v0}, Lcom/oneaudience/sdk/f;->a(Landroid/content/Context;Landroid/content/SharedPreferences;Ljava/lang/Object;)V

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-static {p1, p2, v0}, Lcom/oneaudience/sdk/f;->a(Landroid/content/Context;Landroid/content/SharedPreferences;Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public a(Landroid/content/Context;Landroid/content/SharedPreferences;Lcom/oneaudience/sdk/a;Ljava/lang/String;)Lcom/oneaudience/sdk/b/a/c;
    .locals 6

    invoke-virtual {p0, p1, p2}, Lcom/oneaudience/sdk/d;->a(Landroid/content/Context;Landroid/content/SharedPreferences;)Lcom/oneaudience/sdk/b/a/c;

    move-result-object v3

    iget-object v0, v3, Lcom/oneaudience/sdk/b/a/c;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    :try_start_0
    const-string v1, "appKey"

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    const-string v1, ""

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/oneaudience/sdk/a;->b()Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p3}, Lcom/oneaudience/sdk/a;->b()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v1

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-static {p1, p2, v1}, Lcom/oneaudience/sdk/f;->a(Landroid/content/Context;Landroid/content/SharedPreferences;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    :try_start_2
    invoke-virtual {p3}, Lcom/oneaudience/sdk/a;->b()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_1
    :goto_2
    const-string v2, "packageNames"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    return-object v3

    :catch_1
    move-exception v0

    invoke-static {p1, p2, v0}, Lcom/oneaudience/sdk/f;->a(Landroid/content/Context;Landroid/content/SharedPreferences;Ljava/lang/Object;)V

    goto :goto_3

    :cond_2
    move-object v1, v2

    goto :goto_2
.end method

.method public a(Landroid/content/Context;Landroid/content/SharedPreferences;Lcom/oneaudience/sdk/b/a/d;)V
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p3, Lcom/oneaudience/sdk/b/a/d;->c:Ljava/lang/Object;

    instance-of v0, v0, Ljava/util/Map;

    if-nez v0, :cond_1

    sget-object v0, Lcom/oneaudience/sdk/d;->d:Ljava/lang/String;

    const-string v1, "Something is wrong didn\'t get a map from the server"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p3, Lcom/oneaudience/sdk/b/a/d;->c:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "Configuration Response Got: %s"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Object;

    iget-object v0, p3, Lcom/oneaudience/sdk/b/a/d;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/oneaudience/sdk/f;->a(Landroid/content/Context;Landroid/content/SharedPreferences;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/oneaudience/sdk/d;->d:Ljava/lang/String;

    const-string v1, "Got Map from the server"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p3, Lcom/oneaudience/sdk/b/a/d;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "report_error_url"

    const-string v3, "http://robocop.oneaudience.com/reporterror"

    invoke-static {v0, v2, v3}, Lcom/oneaudience/sdk/b/b/d;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "report_error_url"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "oneAudienceId"

    const-string v3, ""

    invoke-static {v0, v2, v3}, Lcom/oneaudience/sdk/b/b/d;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "interval"

    const-wide/32 v4, 0x5265c00

    invoke-static {v0, v3, v4, v5}, Lcom/oneaudience/sdk/b/b/d;->a(Ljava/util/Map;Ljava/lang/String;J)J

    move-result-wide v4

    const-string v3, "optout"

    invoke-static {v0, v3, v6}, Lcom/oneaudience/sdk/b/b/d;->a(Ljava/util/Map;Ljava/lang/String;Z)Z

    move-result v3

    const-string v6, "oneAudienceId"

    invoke-interface {v1, v6, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "interval"

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v2, "optout"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v2, "opt_out_reported"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :try_start_0
    sget-object v1, Lcom/oneaudience/sdk/d;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/oneaudience/sdk/b/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oneaudience/sdk/b/d;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
